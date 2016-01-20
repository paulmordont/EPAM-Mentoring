using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Module1
{
    using System.Collections.Concurrent;
    using System.Diagnostics;
    using System.IO;
    using System.Numerics;
    using System.Reflection;
    using System.Threading;

    class Program
    {
        private static readonly string OutputPath = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "Output");

        private static readonly string InputPath = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "Input");

        private const int MaxPrimitiveNumbersCountBeforeStop = 3;

        static void Main(string[] args)
        {
            Directory.CreateDirectory(OutputPath);
            Directory.CreateDirectory(InputPath);

            if (!EnumerateFiles().Any())
            {
                GenerateInput(1000, new[] { 35, 89, 7800 });
            }

            RunSync();
            RunParallel();
            RunPipeline();
            Console.WriteLine("done");
            Console.ReadLine();
        }

        private static void WriteToFile(int index, BigInteger number)
        {
            var fileName = "s" + index + ".txt";
            File.WriteAllText(Path.Combine(OutputPath, fileName), number.ToString());
            Console.WriteLine(fileName + " " + number);
        }

        private static string ReadFromFile(string file)
        {
            string text = File.ReadAllText(file);
            Console.WriteLine("   " + Path.GetFileName(file) + " " + text);
            return text;
        }

        private static IEnumerable<string> EnumerateFiles()
        {
            return Directory.EnumerateFiles(InputPath).OrderBy(Path.GetFileName);
        }

        public static bool IsPrimitive(BigInteger bigInteger)
        {
            bool result = true;

            for (var i = 2; i < bigInteger - 1; i++)
            {
                if (bigInteger % i == 0)
                {
                    result = false;
                    break;
                }
            }

            Console.WriteLine("        checked " + bigInteger);
            return result;
        }

        public static bool IsPrimitive(BigInteger bigInteger, CancellationToken token, bool throwIfCancelled = false)
        {
            try
            {
                bool result = true;

                for (var i = 2; i < bigInteger - 1; i++)
                {
                    token.ThrowIfCancellationRequested();

                    if (bigInteger % i == 0)
                    {
                        result = false;
                        break;
                    }
                }

                Console.WriteLine("        checked " + bigInteger);
                return result;
            }
            catch (OperationCanceledException ex)
            {
                if (throwIfCancelled)
                {
                    throw;
                }
            }

            return false;
        }

        private static void GenerateInput(int filesCount, int[] indexes)
        {
            Random r = new Random();

            string[] numbers = { " 1046527", "16769023", "919393", "393919" };

            for (int i = 1; i <= filesCount; i++)
            {
                bool inIndex = indexes.Any(i1 => i % i1 == 0);

                if (inIndex)
                {
                    File.WriteAllText(
                        Path.Combine(InputPath, Guid.NewGuid().ToString("N").Substring(0, 8) + ".txt"),
                        numbers[r.Next(0, numbers.Length - 1)]);
                    continue;
                }

                string text =
                    (BigInteger.Parse(numbers[r.Next(0, numbers.Length - 1)])
                     * BigInteger.Parse(numbers[r.Next(1, numbers.Length - 1)])).ToString();

                File.WriteAllText(Path.Combine(InputPath, Guid.NewGuid().ToString("N").Substring(0, 8) + ".txt"), text);
            }

            Console.WriteLine("generated");
        }

        private static void RunSync()
        {
            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
            Console.WriteLine("RunSync()");

            IEnumerable<string> files = EnumerateFiles();
            int i = 1;

            foreach (string file in files)
            {
                string text = ReadFromFile(file);
                BigInteger number = BigInteger.Parse(text);

                if (IsPrimitive(number))
                {
                    WriteToFile(i, number);

                    if (i == MaxPrimitiveNumbersCountBeforeStop)
                    {
                        break;
                    }

                    i++;
                }
            }

            Console.WriteLine("Sync " + stopwatch.Elapsed);
        }

        private static void RunParallel()
        {
            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
            Console.WriteLine("RunParallel()");

            IEnumerable<string> files = EnumerateFiles();
            int i = 1;
            object lockObject = new object();
            var cts = new CancellationTokenSource();
            var po = new ParallelOptions();
            po.CancellationToken = cts.Token;

            try
            {
                Parallel.ForEach(
                    files,
                    po,
                    (file, state) =>
                        {
                            po.CancellationToken.ThrowIfCancellationRequested();
                            string text = ReadFromFile(file);
                            BigInteger number = BigInteger.Parse(text);

                            if (IsPrimitive(number, po.CancellationToken))
                            {
                                lock (lockObject)
                                {
                                    WriteToFile(i, number);

                                    if (i == MaxPrimitiveNumbersCountBeforeStop)
                                    {
                                        cts.Cancel();
                                    }

                                    i++;
                                }
                            }
                        });
            }
            catch (OperationCanceledException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                cts.Dispose();
            }

            Console.WriteLine("Parallel " + stopwatch.Elapsed);
        }
        
        private static void RunPipeline()
        {
            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
            Console.WriteLine("RunPipeline()");

            IEnumerable<string> files = EnumerateFiles();
            int i = 1;

            BlockingCollection<BigInteger> numbers = new BlockingCollection<BigInteger>(MaxPrimitiveNumbersCountBeforeStop);
            BlockingCollection<BigInteger> primitiveNumbers = new BlockingCollection<BigInteger>(MaxPrimitiveNumbersCountBeforeStop);
            CancellationTokenSource cts = new CancellationTokenSource();
            try
            {
                var t1 = Task.Factory.StartNew(() => ReadNumber(files, numbers, cts.Token));
                var t2 = Task.Factory.StartNew(() => CheckForPrimitive(numbers, primitiveNumbers, cts.Token));
                var t21 = Task.Factory.StartNew(() => CheckForPrimitive(numbers, primitiveNumbers, cts.Token));
                var t212 = Task.Factory.StartNew(() => CheckForPrimitive(numbers, primitiveNumbers, cts.Token));
                var t2123 = Task.Factory.StartNew(() => CheckForPrimitive(numbers, primitiveNumbers, cts.Token));
                var t3 = Task.Factory.StartNew(() => WritePrimitive(primitiveNumbers, ref i, cts));

                Task.WaitAll(new[] { t1, t2, t21, t212,t2123, t3 });
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                cts.Dispose();
                Console.WriteLine("Pipeline " + stopwatch.Elapsed);
            }
        }
        
        private static void ReadNumber(
            IEnumerable<string> files,
            BlockingCollection<BigInteger> numbers,
            CancellationToken token)
        {
            try
            {
                foreach (string file in files)
                {
                    if (token.IsCancellationRequested)
                    {
                        break;
                    }
                    string text = ReadFromFile(file);
                    BigInteger number = BigInteger.Parse(text);
                    numbers.Add(number, token);
                }
            }
            catch (OperationCanceledException ex)
            {
            }
            finally
            {
                numbers.CompleteAdding();
            }
        }

        private static void CheckForPrimitive(
            BlockingCollection<BigInteger> numbers,
            BlockingCollection<BigInteger> primitiveNumbers,
            CancellationToken token)
        {
            try
            {
                foreach (BigInteger number in numbers.GetConsumingEnumerable())
                {
                    if (token.IsCancellationRequested)
                    {
                        break;
                    }
                    if (IsPrimitive(number, token, true))
                    {
                        primitiveNumbers.Add(number, token);
                    }
                }
            }
            catch (OperationCanceledException ex)
            {
            }
            finally
            {
                primitiveNumbers.CompleteAdding();
            }
        }

        private static void WritePrimitive(BlockingCollection<BigInteger> primitiveNumbers, ref int i, CancellationTokenSource cts)
        {
            try
            {
                foreach (BigInteger number in primitiveNumbers.GetConsumingEnumerable())
                {
                    WriteToFile(i, number);

                    if (i >= MaxPrimitiveNumbersCountBeforeStop)
                    {
                        cts.Cancel();
                    }

                    i++;
                }

            }
            catch (OperationCanceledException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
