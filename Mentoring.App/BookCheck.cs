namespace Mentoring.App
{
    using System;
    using System.IO;
    using System.Reflection;
    using System.Xml.Linq;
    using System.Xml.Schema;

    public static class BookCheck
    {
        public static void Run()
        {
            while (true)
            {
                bool error = true;
                string path = string.Empty;
                while (error)
                {
                    Console.WriteLine("Path to xml: ");
                    path = Console.ReadLine();

                    if (string.IsNullOrWhiteSpace(path) || !File.Exists(path))
                    {
                        Console.WriteLine("Incorrect path!\n");
                    }
                    else
                    {
                        error = false;
                    }
                }
                bool validationErrors = false;
                using (var fs = File.OpenRead(path))
                using (Stream schemaStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("Mentoring.App.BooksSchema.xsd"))
                {
                    XDocument doc = XDocument.Load(fs);
                    XmlSchema schema = XmlSchema.Read(schemaStream, null);
                    XmlSchemaSet schemas = new XmlSchemaSet();
                    schemas.Add(schema);
                    doc.Validate(schemas,
                        (object sender, ValidationEventArgs e) =>
                        {
                            Console.WriteLine(e.Message);
                            validationErrors = true;
                        });
                }

                Console.WriteLine("Validation ended with {0}", (validationErrors) ? "errors" : "no errors");
            }
            
        }
    }
}
