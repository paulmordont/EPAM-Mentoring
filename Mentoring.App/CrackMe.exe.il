
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.33440
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v2.0.50727
.assembly extern System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern System.Core
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 3:5:0:0
}
.assembly extern System.Drawing
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 2:0:0:0
}
.assembly CrackMe
{
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 36 00 00 )                            //  2016..
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 38 30 30 30 34 65 35 65 2D 61 63 65 36   // ..$80004e5e-ace6
                                                                                                  2D 34 31 30 39 2D 61 39 38 61 2D 35 64 32 38 65   // -4109-a98a-5d28e
                                                                                                  61 65 34 39 62 61 31 00 00 )                      // ae49ba1..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 6C 43 72 61 63 6B 4D 65 20 4F 62 66 75 73   // ..lCrackMe Obfus
                                                                                              63 61 74 65 64 20 77 69 74 68 20 44 6F 74 66 75   // cated with Dotfu
                                                                                              73 63 61 74 6F 72 20 50 72 6F 66 65 73 73 69 6F   // scator Professio
                                                                                              6E 61 6C 20 45 76 61 6C 75 61 74 69 6F 6E 2E 20   // nal Evaluation. 
                                                                                              49 6C 6C 65 67 61 6C 20 74 6F 20 75 73 65 20 6F   // Illegal to use o
                                                                                              6E 20 73 6F 66 74 77 61 72 65 20 66 6F 72 20 67   // n software for g
                                                                                              65 6E 65 72 61 6C 20 72 65 6C 65 61 73 65 2E 00   // eneral release..
                                                                                              00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 07 43 72 61 63 6B 4D 65 00 00 )             // ...CrackMe..
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.mresource public CrackMe.Form1.resources
{
  // Offset: 0x00000000 Length: 0x000000B4
  // WARNING: managed resource file CrackMe.Form1.resources created
}
.mresource public CrackMe.Properties.Resources.resources
{
  // Offset: 0x000000B8 Length: 0x000000B4
  // WARNING: managed resource file CrackMe.Properties.Resources.resources created
}
.module CrackMe.exe
// MVID: {E929FEB7-F3DD-449F-99CD-83285EA760B5}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0002       // WINDOWS_GUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x001F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit CrackMe.Form1
       extends [System.Windows.Forms]System.Windows.Forms.Form
{
  .class auto ansi sealed nested private beforefieldinit Class0
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public uint8[] byte_0
    .field public int32[] int_0
    .field privatescope notserialized string string_0$PST0400000A = uint8(0x20)
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Class0::.ctor

    .method assembly hidebysig instance int32 
            method_0(uint8 byte_1,
                     int32 int_1) cil managed
    {
      // Code size       91 (0x5b)
      .maxstack  3
      .locals init (int32 V_0)
      IL_0000:  ldc.i4     0x1e8f
      IL_0005:  stloc      V_0
      IL_0009:  ldloca     V_0
      IL_000d:  ldind.i4
      IL_000e:  ldc.i4     0x1e8f
      IL_0013:  stloc      V_0
      IL_0017:  ldloca     V_0
      IL_001b:  ldind.i4
      IL_001c:  ceq
      IL_001e:  switch     ( 
                            IL_002f,
                            IL_002f,
                            IL_002f)
      IL_002f:  ldc.i4     0x1
      IL_0034:  stloc      V_0
      IL_0038:  ldloca     V_0
      IL_003c:  ldind.i4
      IL_003d:  brtrue.s   IL_003f

      IL_003f:  ldc.i4.0
      IL_0040:  stloc      V_0
      IL_0044:  ldloca     V_0
      IL_0048:  ldind.i4
      IL_0049:  brtrue.s   IL_004b

      IL_004b:  ldc.i4.0
      IL_004c:  stloc      V_0
      IL_0050:  ldarg.1
      IL_0051:  ldarg.0
      IL_0052:  ldfld      uint8[] CrackMe.Form1/Class0::byte_0
      IL_0057:  ldarg.2
      IL_0058:  ldelem.u1
      IL_0059:  xor
      IL_005a:  ret
    } // end of method Class0::method_0

    .method assembly hidebysig instance int32 
            method_1(int32 int_1,
                     int32 int_2) cil managed
    {
      // Code size       91 (0x5b)
      .maxstack  3
      .locals init (int32 V_0)
      IL_0000:  ldc.i4     0xffffb7d4
      IL_0005:  stloc      V_0
      IL_0009:  ldloca     V_0
      IL_000d:  ldind.i4
      IL_000e:  ldc.i4     0xffffb7d4
      IL_0013:  stloc      V_0
      IL_0017:  ldloca     V_0
      IL_001b:  ldind.i4
      IL_001c:  ceq
      IL_001e:  switch     ( 
                            IL_002f,
                            IL_002f,
                            IL_002f)
      IL_002f:  ldc.i4     0x1
      IL_0034:  stloc      V_0
      IL_0038:  ldloca     V_0
      IL_003c:  ldind.i4
      IL_003d:  brtrue.s   IL_003f

      IL_003f:  ldc.i4.0
      IL_0040:  stloc      V_0
      IL_0044:  ldloca     V_0
      IL_0048:  ldind.i4
      IL_0049:  brtrue.s   IL_004b

      IL_004b:  ldc.i4.0
      IL_004c:  stloc      V_0
      IL_0050:  ldarg.1
      IL_0051:  ldarg.0
      IL_0052:  ldfld      int32[] CrackMe.Form1/Class0::int_0
      IL_0057:  ldarg.2
      IL_0058:  ldelem.i4
      IL_0059:  sub
      IL_005a:  ret
    } // end of method Class0::method_1

  } // end of class Class0

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class CrackMe.Form1/'<>c' '<>9'
    .field public static class [System.Core]System.Func`2<int32,int32> '<>9__3_1'
    .field public static class [System.Core]System.Func`2<int32,bool> '<>9__3_3'
    .field privatescope notserialized string string_0$PST0400000E = uint8(0x20)
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       91 (0x5b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldc.i4     0x791c
      IL_0005:  stloc      V_0
      IL_0009:  ldloca     V_0
      IL_000d:  ldind.i4
      IL_000e:  ldc.i4     0x791c
      IL_0013:  stloc      V_0
      IL_0017:  ldloca     V_0
      IL_001b:  ldind.i4
      IL_001c:  ceq
      IL_001e:  switch     ( 
                            IL_002f,
                            IL_002f,
                            IL_002f)
      IL_002f:  ldc.i4     0x1
      IL_0034:  stloc      V_0
      IL_0038:  ldloca     V_0
      IL_003c:  ldind.i4
      IL_003d:  brtrue.s   IL_003f

      IL_003f:  ldc.i4.0
      IL_0040:  stloc      V_0
      IL_0044:  ldloca     V_0
      IL_0048:  ldind.i4
      IL_0049:  brtrue.s   IL_004b

      IL_004b:  ldc.i4.0
      IL_004c:  stloc      V_0
      IL_0050:  newobj     instance void CrackMe.Form1/'<>c'::.ctor()
      IL_0055:  stsfld     class CrackMe.Form1/'<>c' CrackMe.Form1/'<>c'::'<>9'
      IL_005a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            method_0(int32 int_0) cil managed
    {
      // Code size       95 (0x5f)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4     0x3e7
      IL_0006:  bgt.s      IL_005d

      IL_0008:  ldc.i4     0x43d1
      IL_000d:  stloc      V_0
      IL_0011:  ldloca     V_0
      IL_0015:  ldind.i4
      IL_0016:  ldc.i4     0x43d1
      IL_001b:  stloc      V_0
      IL_001f:  ldloca     V_0
      IL_0023:  ldind.i4
      IL_0024:  ceq
      IL_0026:  switch     ( 
                            IL_005d,
                            IL_0037,
                            IL_005d)
      IL_0037:  ldc.i4.0
      IL_0038:  stloc      V_0
      IL_003c:  ldloca     V_0
      IL_0040:  ldind.i4
      IL_0041:  brtrue.s   IL_0043

      IL_0043:  ldc.i4.0
      IL_0044:  stloc      V_0
      IL_0048:  ldc.i4     0x1
      IL_004d:  stloc      V_0
      IL_0051:  ldloca     V_0
      IL_0055:  ldind.i4
      IL_0056:  brtrue.s   IL_0058

      IL_0058:  ldarg.1
      IL_0059:  ldc.i4.s   10
      IL_005b:  mul
      IL_005c:  ret

      IL_005d:  ldarg.1
      IL_005e:  ret
    } // end of method '<>c'::method_0

    .method assembly hidebysig instance bool 
            method_1(int32 int_0) cil managed
    {
      // Code size       85 (0x55)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldc.i4     0x35e
      IL_0005:  stloc      V_0
      IL_0009:  ldloca     V_0
      IL_000d:  ldind.i4
      IL_000e:  ldc.i4     0x35e
      IL_0013:  stloc      V_0
      IL_0017:  ldloca     V_0
      IL_001b:  ldind.i4
      IL_001c:  ceq
      IL_001e:  switch     ( 
                            IL_002f,
                            IL_002f,
                            IL_002f)
      IL_002f:  ldc.i4     0x1
      IL_0034:  stloc      V_0
      IL_0038:  ldloca     V_0
      IL_003c:  ldind.i4
      IL_003d:  brtrue.s   IL_003f

      IL_003f:  ldc.i4.0
      IL_0040:  stloc      V_0
      IL_0044:  ldloca     V_0
      IL_0048:  ldind.i4
      IL_0049:  brtrue.s   IL_004b

      IL_004b:  ldc.i4.0
      IL_004c:  stloc      V_0
      IL_0050:  ldarg.1
      IL_0051:  ldc.i4.0
      IL_0052:  ceq
      IL_0054:  ret
    } // end of method '<>c'::method_1

  } // end of class '<>c'

  .field private string[] string_0
  .field private class [System]System.ComponentModel.IContainer icontainer_0
  .field private class [System.Windows.Forms]System.Windows.Forms.Button bt_check
  .field private class [System.Windows.Forms]System.Windows.Forms.TextBox tb_key
  .field private class [System.Windows.Forms]System.Windows.Forms.Label label1
  .field private class [System.Windows.Forms]System.Windows.Forms.Label lb_status
  .field privatescope notserialized string string_1$PST04000007 = uint8(0x20)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Windows.Forms]System.Windows.Forms.Form::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  call       instance void CrackMe.Form1::InitializeComponent()
    IL_000c:  ret
  } // end of method Form1::.ctor

  .method private hidebysig instance void 
          bt_check_Click(object sender,
                         class [mscorlib]System.EventArgs e) cil managed
  {
    // Code size       271 (0x10f)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc      V_1
    IL_0005:  ldloca     V_1
    IL_0009:  ldind.i4
    IL_000a:  stloc.0
    IL_000b:  br         IL_00ac

    IL_0010:  ldc.i4     0x1
    IL_0015:  stloc      V_1
    IL_0019:  ldloca     V_1
    IL_001d:  ldind.i4
    IL_001e:  brtrue.s   IL_0020

    IL_0020:  ldc.i4.0
    IL_0021:  stloc      V_1
    IL_0025:  ldc.i4     0xffff987c
    IL_002a:  stloc      V_1
    IL_002e:  ldloca     V_1
    IL_0032:  ldind.i4
    IL_0033:  ldc.i4     0xffff987c
    IL_0038:  stloc      V_1
    IL_003c:  ldloca     V_1
    IL_0040:  ldind.i4
    IL_0041:  ceq
    IL_0043:  switch     ( 
                          IL_0059,
                          IL_00f2,
                          IL_0059)
    IL_0054:  br         IL_00f2

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_005f:  callvirt   instance string [System.Windows.Forms]System.Windows.Forms.Control::get_Text()
    IL_0064:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_0069:  brfalse.s  IL_007c

    IL_006b:  ldc.i4     0x2
    IL_0070:  stloc      V_1
    IL_0074:  ldloca     V_1
    IL_0078:  ldind.i4
    IL_0079:  stloc.0
    IL_007a:  br.s       IL_00ac

    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_0083:  callvirt   instance string [System.Windows.Forms]System.Windows.Forms.Control::get_Text()
    IL_0088:  ldc.i4.1
    IL_0089:  newarr     [mscorlib]System.Char
    IL_008e:  dup
    IL_008f:  ldc.i4.0
    IL_0090:  ldc.i4.s   45
    IL_0092:  stelem.i2
    IL_0093:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_0098:  stfld      string[] CrackMe.Form1::string_0
    IL_009d:  ldc.i4     0x1
    IL_00a2:  stloc      V_1
    IL_00a6:  ldloca     V_1
    IL_00aa:  ldind.i4
    IL_00ab:  stloc.0
    IL_00ac:  ldloc.0
    IL_00ad:  switch     ( 
                          IL_0059,
                          IL_00c0,
                          IL_0010)
    IL_00be:  br.s       IL_0059

    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      string[] CrackMe.Form1::string_0
    IL_00cd:  call       instance bool CrackMe.Form1::method_0(string[])
    IL_00d2:  brtrue.s   IL_00db

    IL_00d4:  ldstr      "Wrong key"
    IL_00d9:  br.s       IL_00e0

    IL_00db:  ldstr      "Correct key"
    IL_00e0:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Text(string)
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_00eb:  ldc.i4.1
    IL_00ec:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Visible(bool)
    IL_00f1:  ret

    IL_00f2:  ldc.i4.0
    IL_00f3:  stloc      V_1
    IL_00f7:  ldloca     V_1
    IL_00fb:  ldind.i4
    IL_00fc:  brtrue.s   IL_00fe

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_0104:  ldstr      "Key cannot be empty"
    IL_0109:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Text(string)
    IL_010e:  ret
  } // end of method Form1::bt_check_Click

  .method private hidebysig instance bool 
          method_0(string[] string_2) cil managed
  {
    // Code size       376 (0x178)
    .maxstack  5
    .locals init (class CrackMe.Form1/Class0 V_0,
             class [System]System.Net.NetworkInformation.NetworkInterface V_1,
             valuetype [mscorlib]System.DateTime V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  br         IL_009b

    IL_0006:  ldc.i4     0x3
    IL_000b:  stloc      V_4
    IL_000f:  ldloca     V_4
    IL_0013:  ldind.i4
    IL_0014:  stloc.3
    IL_0015:  br.s       IL_0085

    IL_0017:  ldc.i4     0xffffa9db
    IL_001c:  stloc      V_4
    IL_0020:  ldloca     V_4
    IL_0024:  ldind.i4
    IL_0025:  ldc.i4     0xffffa9db
    IL_002a:  stloc      V_4
    IL_002e:  ldloca     V_4
    IL_0032:  ldind.i4
    IL_0033:  ceq
    IL_0035:  switch     ( 
                          IL_0006,
                          IL_0046,
                          IL_0006)
    IL_0046:  ldc.i4     0x1
    IL_004b:  stloc      V_4
    IL_004f:  ldloca     V_4
    IL_0053:  ldind.i4
    IL_0054:  brtrue.s   IL_0056

    IL_0056:  ldc.i4.0
    IL_0057:  stloc      V_4
    IL_005b:  ldloca     V_4
    IL_005f:  ldind.i4
    IL_0060:  brtrue.s   IL_0062

    IL_0062:  ldloc.1
    IL_0063:  brtrue.s   IL_0076

    IL_0065:  ldc.i4     0x2
    IL_006a:  stloc      V_4
    IL_006e:  ldloca     V_4
    IL_0072:  ldind.i4
    IL_0073:  stloc.3
    IL_0074:  br.s       IL_0085

    IL_0076:  ldc.i4     0x1
    IL_007b:  stloc      V_4
    IL_007f:  ldloca     V_4
    IL_0083:  ldind.i4
    IL_0084:  stloc.3
    IL_0085:  ldloc.3
    IL_0086:  switch     ( 
                          IL_0017,
                          IL_00b9,
                          IL_0006,
                          IL_0176)
    IL_009b:  newobj     instance void CrackMe.Form1/Class0::.ctor()
    IL_00a0:  stloc.0
    IL_00a1:  call       class [System]System.Net.NetworkInformation.NetworkInterface[] [System]System.Net.NetworkInformation.NetworkInterface::GetAllNetworkInterfaces()
    IL_00a6:  call       !!0 [System.Core]System.Linq.Enumerable::FirstOrDefault<class [System]System.Net.NetworkInformation.NetworkInterface>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00ab:  stloc.1
    IL_00ac:  ldc.i4.0
    IL_00ad:  stloc      V_4
    IL_00b1:  ldloca     V_4
    IL_00b5:  ldind.i4
    IL_00b6:  stloc.3
    IL_00b7:  br.s       IL_0085

    IL_00b9:  ldc.i4.0
    IL_00ba:  stloc      V_4
    IL_00be:  ldloc.1
    IL_00bf:  callvirt   instance class [System]System.Net.NetworkInformation.PhysicalAddress [System]System.Net.NetworkInformation.NetworkInterface::GetPhysicalAddress()
    IL_00c4:  callvirt   instance uint8[] [System]System.Net.NetworkInformation.PhysicalAddress::GetAddressBytes()
    IL_00c9:  ldloc.0
    IL_00ca:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_00cf:  stloc.2
    IL_00d0:  ldloca.s   V_2
    IL_00d2:  call       instance valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Date()
    IL_00d7:  stloc.2
    IL_00d8:  ldloca.s   V_2
    IL_00da:  call       instance int64 [mscorlib]System.DateTime::ToBinary()
    IL_00df:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int64)
    IL_00e4:  stfld      uint8[] CrackMe.Form1/Class0::byte_0
    IL_00e9:  ldloc.0
    IL_00ea:  ldftn      instance int32 CrackMe.Form1/Class0::method_0(uint8,
                                                                       int32)
    IL_00f0:  newobj     instance void class [System.Core]System.Func`3<uint8,int32,int32>::.ctor(object,
                                                                                                  native int)
    IL_00f5:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> [System.Core]System.Linq.Enumerable::Select<uint8,int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Core]System.Func`3<!!0,int32,!!1>)
    IL_00fa:  ldsfld     class [System.Core]System.Func`2<int32,int32> CrackMe.Form1/'<>c'::'<>9__3_1'
    IL_00ff:  dup
    IL_0100:  brtrue.s   IL_0119

    IL_0102:  pop
    IL_0103:  ldsfld     class CrackMe.Form1/'<>c' CrackMe.Form1/'<>c'::'<>9'
    IL_0108:  ldftn      instance int32 CrackMe.Form1/'<>c'::method_0(int32)
    IL_010e:  newobj     instance void class [System.Core]System.Func`2<int32,int32>::.ctor(object,
                                                                                            native int)
    IL_0113:  dup
    IL_0114:  stsfld     class [System.Core]System.Func`2<int32,int32> CrackMe.Form1/'<>c'::'<>9__3_1'
    IL_0119:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> [System.Core]System.Linq.Enumerable::Select<int32,int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Core]System.Func`2<!!0,!!1>)
    IL_011e:  call       !!0[] [System.Core]System.Linq.Enumerable::ToArray<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0123:  ldloc.0
    IL_0124:  ldarg.1
    IL_0125:  ldnull
    IL_0126:  ldftn      int32 [mscorlib]System.Int32::Parse(string)
    IL_012c:  newobj     instance void class [System.Core]System.Func`2<string,int32>::.ctor(object,
                                                                                             native int)
    IL_0131:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> [System.Core]System.Linq.Enumerable::Select<string,int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                 class [System.Core]System.Func`2<!!0,!!1>)
    IL_0136:  call       !!0[] [System.Core]System.Linq.Enumerable::ToArray<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_013b:  stfld      int32[] CrackMe.Form1/Class0::int_0
    IL_0140:  ldloc.0
    IL_0141:  ldftn      instance int32 CrackMe.Form1/Class0::method_1(int32,
                                                                       int32)
    IL_0147:  newobj     instance void class [System.Core]System.Func`3<int32,int32,int32>::.ctor(object,
                                                                                                  native int)
    IL_014c:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> [System.Core]System.Linq.Enumerable::Select<int32,int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Core]System.Func`3<!!0,int32,!!1>)
    IL_0151:  ldsfld     class [System.Core]System.Func`2<int32,bool> CrackMe.Form1/'<>c'::'<>9__3_3'
    IL_0156:  dup
    IL_0157:  brtrue.s   IL_0170

    IL_0159:  pop
    IL_015a:  ldsfld     class CrackMe.Form1/'<>c' CrackMe.Form1/'<>c'::'<>9'
    IL_015f:  ldftn      instance bool CrackMe.Form1/'<>c'::method_1(int32)
    IL_0165:  newobj     instance void class [System.Core]System.Func`2<int32,bool>::.ctor(object,
                                                                                           native int)
    IL_016a:  dup
    IL_016b:  stsfld     class [System.Core]System.Func`2<int32,bool> CrackMe.Form1/'<>c'::'<>9__3_3'
    IL_0170:  call       bool [System.Core]System.Linq.Enumerable::All<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                              class [System.Core]System.Func`2<!!0,bool>)
    IL_0175:  ret

    IL_0176:  ldc.i4.0
    IL_0177:  ret
  } // end of method Form1::method_0

  .method family hidebysig virtual instance void 
          Dispose(bool disposing) cil managed
  {
    // Code size       223 (0xdf)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4     0x2
    IL_0005:  stloc      V_1
    IL_0009:  ldloca     V_1
    IL_000d:  ldind.i4
    IL_000e:  stloc.0
    IL_000f:  br         IL_00b6

    IL_0014:  ldc.i4     0x1
    IL_0019:  stloc      V_1
    IL_001d:  ldloca     V_1
    IL_0021:  ldind.i4
    IL_0022:  brtrue.s   IL_0024

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [System]System.ComponentModel.IContainer CrackMe.Form1::icontainer_0
    IL_002a:  brfalse    IL_00d7

    IL_002f:  ldc.i4     0x3
    IL_0034:  stloc      V_1
    IL_0038:  ldloca     V_1
    IL_003c:  ldind.i4
    IL_003d:  stloc.0
    IL_003e:  br.s       IL_00b6

    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System]System.ComponentModel.IContainer CrackMe.Form1::icontainer_0
    IL_0046:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
    IL_004b:  ldc.i4     0x1
    IL_0050:  stloc      V_1
    IL_0054:  ldloca     V_1
    IL_0058:  ldind.i4
    IL_0059:  stloc.0
    IL_005a:  br.s       IL_00b6

    IL_005c:  ldarg.1
    IL_005d:  brfalse.s  IL_00d7

    IL_005f:  ldc.i4     0x34b2
    IL_0064:  stloc      V_1
    IL_0068:  ldloca     V_1
    IL_006c:  ldind.i4
    IL_006d:  ldc.i4     0x34b2
    IL_0072:  stloc      V_1
    IL_0076:  ldloca     V_1
    IL_007a:  ldind.i4
    IL_007b:  ceq
    IL_007d:  switch     ( 
                          IL_0040,
                          IL_008e,
                          IL_0040)
    IL_008e:  ldc.i4.0
    IL_008f:  stloc      V_1
    IL_0093:  ldloca     V_1
    IL_0097:  ldind.i4
    IL_0098:  brtrue.s   IL_009a

    IL_009a:  ldc.i4.0
    IL_009b:  stloc      V_1
    IL_009f:  ldloca     V_1
    IL_00a3:  ldind.i4
    IL_00a4:  stloc.0
    IL_00a5:  br.s       IL_00b6

    IL_00a7:  ldc.i4     0x4
    IL_00ac:  stloc      V_1
    IL_00b0:  ldloca     V_1
    IL_00b4:  ldind.i4
    IL_00b5:  stloc.0
    IL_00b6:  ldc.i4.0
    IL_00b7:  stloc      V_1
    IL_00bb:  ldloc.0
    IL_00bc:  switch     ( 
                          IL_00a7,
                          IL_00d7,
                          IL_005c,
                          IL_0040,
                          IL_0014)
    IL_00d5:  br.s       IL_005c

    IL_00d7:  ldarg.0
    IL_00d8:  ldarg.1
    IL_00d9:  call       instance void [System.Windows.Forms]System.Windows.Forms.Form::Dispose(bool)
    IL_00de:  ret
  } // end of method Form1::Dispose

  .method private hidebysig instance void 
          InitializeComponent() cil managed
  {
    // Code size       677 (0x2a5)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0x3b79
    IL_0005:  stloc      V_0
    IL_0009:  ldloca     V_0
    IL_000d:  ldind.i4
    IL_000e:  ldc.i4     0x3b79
    IL_0013:  stloc      V_0
    IL_0017:  ldloca     V_0
    IL_001b:  ldind.i4
    IL_001c:  ceq
    IL_001e:  switch     ( 
                          IL_002f,
                          IL_002f,
                          IL_002f)
    IL_002f:  ldc.i4.0
    IL_0030:  stloc      V_0
    IL_0034:  ldloca     V_0
    IL_0038:  ldind.i4
    IL_0039:  brtrue.s   IL_003b

    IL_003b:  ldc.i4     0x1
    IL_0040:  stloc      V_0
    IL_0044:  ldloca     V_0
    IL_0048:  ldind.i4
    IL_0049:  brtrue.s   IL_004b

    IL_004b:  ldc.i4.0
    IL_004c:  stloc      V_0
    IL_0050:  ldarg.0
    IL_0051:  newobj     instance void [System.Windows.Forms]System.Windows.Forms.Button::.ctor()
    IL_0056:  stfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_005b:  ldarg.0
    IL_005c:  newobj     instance void [System.Windows.Forms]System.Windows.Forms.TextBox::.ctor()
    IL_0061:  stfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_0066:  ldarg.0
    IL_0067:  newobj     instance void [System.Windows.Forms]System.Windows.Forms.Label::.ctor()
    IL_006c:  stfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_0071:  ldarg.0
    IL_0072:  newobj     instance void [System.Windows.Forms]System.Windows.Forms.Label::.ctor()
    IL_0077:  stfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_007c:  ldarg.0
    IL_007d:  call       instance void [System.Windows.Forms]System.Windows.Forms.Control::SuspendLayout()
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_0088:  ldc.i4     0x10c
    IL_008d:  ldc.i4.s   51
    IL_008f:  newobj     instance void [System.Drawing]System.Drawing.Point::.ctor(int32,
                                                                                   int32)
    IL_0094:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Location(valuetype [System.Drawing]System.Drawing.Point)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_009f:  ldstr      "bt_check"
    IL_00a4:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Name(string)
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_00af:  ldc.i4.s   75
    IL_00b1:  ldc.i4.s   23
    IL_00b3:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_00b8:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Size(valuetype [System.Drawing]System.Drawing.Size)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_00c3:  ldc.i4.0
    IL_00c4:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_TabIndex(int32)
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_00cf:  ldstr      "Check"
    IL_00d4:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Text(string)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_00df:  ldc.i4.1
    IL_00e0:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.ButtonBase::set_UseVisualStyleBackColor(bool)
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_00eb:  ldarg.0
    IL_00ec:  ldftn      instance void CrackMe.Form1::bt_check_Click(object,
                                                                     class [mscorlib]System.EventArgs)
    IL_00f2:  newobj     instance void [mscorlib]System.EventHandler::.ctor(object,
                                                                            native int)
    IL_00f7:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::add_Click(class [mscorlib]System.EventHandler)
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_0102:  ldc.i4.s   35
    IL_0104:  ldc.i4.s   25
    IL_0106:  newobj     instance void [System.Drawing]System.Drawing.Point::.ctor(int32,
                                                                                   int32)
    IL_010b:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Location(valuetype [System.Drawing]System.Drawing.Point)
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_0116:  ldstr      "tb_key"
    IL_011b:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Name(string)
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_0126:  ldc.i4     0x134
    IL_012b:  ldc.i4.s   20
    IL_012d:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_0132:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Size(valuetype [System.Drawing]System.Drawing.Size)
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_013d:  ldc.i4.1
    IL_013e:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_TabIndex(int32)
    IL_0143:  ldarg.0
    IL_0144:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_0149:  ldc.i4.1
    IL_014a:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_AutoSize(bool)
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_0155:  ldc.i4.s   32
    IL_0157:  ldc.i4.s   9
    IL_0159:  newobj     instance void [System.Drawing]System.Drawing.Point::.ctor(int32,
                                                                                   int32)
    IL_015e:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Location(valuetype [System.Drawing]System.Drawing.Point)
    IL_0163:  ldarg.0
    IL_0164:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_0169:  ldstr      "label1"
    IL_016e:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Name(string)
    IL_0173:  ldarg.0
    IL_0174:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_0179:  ldc.i4.s   107
    IL_017b:  ldc.i4.s   13
    IL_017d:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_0182:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Size(valuetype [System.Drawing]System.Drawing.Size)
    IL_0187:  ldarg.0
    IL_0188:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_018d:  ldc.i4.2
    IL_018e:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_TabIndex(int32)
    IL_0193:  ldarg.0
    IL_0194:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_0199:  ldstr      "Please, enter the key"
    IL_019e:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Text(string)
    IL_01a3:  ldarg.0
    IL_01a4:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_01a9:  ldc.i4.1
    IL_01aa:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_AutoSize(bool)
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_01b5:  ldc.i4.s   35
    IL_01b7:  ldc.i4.s   52
    IL_01b9:  newobj     instance void [System.Drawing]System.Drawing.Point::.ctor(int32,
                                                                                   int32)
    IL_01be:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Location(valuetype [System.Drawing]System.Drawing.Point)
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_01c9:  ldstr      "lb_status"
    IL_01ce:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Name(string)
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_01d9:  ldc.i4.s   35
    IL_01db:  ldc.i4.s   13
    IL_01dd:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_01e2:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Size(valuetype [System.Drawing]System.Drawing.Size)
    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_01ed:  ldc.i4.3
    IL_01ee:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_TabIndex(int32)
    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_01f9:  ldstr      "label2"
    IL_01fe:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Text(string)
    IL_0203:  ldarg.0
    IL_0204:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_0209:  ldc.i4.0
    IL_020a:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Visible(bool)
    IL_020f:  ldarg.0
    IL_0210:  ldc.r4     6.
    IL_0215:  ldc.r4     13.
    IL_021a:  newobj     instance void [System.Drawing]System.Drawing.SizeF::.ctor(float32,
                                                                                   float32)
    IL_021f:  call       instance void [System.Windows.Forms]System.Windows.Forms.ContainerControl::set_AutoScaleDimensions(valuetype [System.Drawing]System.Drawing.SizeF)
    IL_0224:  ldarg.0
    IL_0225:  ldc.i4.1
    IL_0226:  call       instance void [System.Windows.Forms]System.Windows.Forms.ContainerControl::set_AutoScaleMode(valuetype [System.Windows.Forms]System.Windows.Forms.AutoScaleMode)
    IL_022b:  ldarg.0
    IL_022c:  ldc.i4     0x171
    IL_0231:  ldc.i4.s   86
    IL_0233:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_0238:  call       instance void [System.Windows.Forms]System.Windows.Forms.Form::set_ClientSize(valuetype [System.Drawing]System.Drawing.Size)
    IL_023d:  ldarg.0
    IL_023e:  call       instance class [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection [System.Windows.Forms]System.Windows.Forms.Control::get_Controls()
    IL_0243:  ldarg.0
    IL_0244:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::lb_status
    IL_0249:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection::Add(class [System.Windows.Forms]System.Windows.Forms.Control)
    IL_024e:  ldarg.0
    IL_024f:  call       instance class [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection [System.Windows.Forms]System.Windows.Forms.Control::get_Controls()
    IL_0254:  ldarg.0
    IL_0255:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Label CrackMe.Form1::label1
    IL_025a:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection::Add(class [System.Windows.Forms]System.Windows.Forms.Control)
    IL_025f:  ldarg.0
    IL_0260:  call       instance class [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection [System.Windows.Forms]System.Windows.Forms.Control::get_Controls()
    IL_0265:  ldarg.0
    IL_0266:  ldfld      class [System.Windows.Forms]System.Windows.Forms.TextBox CrackMe.Form1::tb_key
    IL_026b:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection::Add(class [System.Windows.Forms]System.Windows.Forms.Control)
    IL_0270:  ldarg.0
    IL_0271:  call       instance class [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection [System.Windows.Forms]System.Windows.Forms.Control::get_Controls()
    IL_0276:  ldarg.0
    IL_0277:  ldfld      class [System.Windows.Forms]System.Windows.Forms.Button CrackMe.Form1::bt_check
    IL_027c:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control/ControlCollection::Add(class [System.Windows.Forms]System.Windows.Forms.Control)
    IL_0281:  ldarg.0
    IL_0282:  ldstr      "Form1"
    IL_0287:  call       instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Name(string)
    IL_028c:  ldarg.0
    IL_028d:  ldstr      "Crack me"
    IL_0292:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Control::set_Text(string)
    IL_0297:  ldarg.0
    IL_0298:  ldc.i4.0
    IL_0299:  call       instance void [System.Windows.Forms]System.Windows.Forms.Control::ResumeLayout(bool)
    IL_029e:  ldarg.0
    IL_029f:  call       instance void [System.Windows.Forms]System.Windows.Forms.Control::PerformLayout()
    IL_02a4:  ret
  } // end of method Form1::InitializeComponent

} // end of class CrackMe.Form1

.class private abstract auto ansi sealed beforefieldinit Class1
       extends [mscorlib]System.Object
{
  .field private notserialized string string_0 = uint8(0x20)
  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    .custom instance void [mscorlib]System.STAThreadAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       102 (0x66)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0xffff82be
    IL_0005:  stloc      V_0
    IL_0009:  ldloca     V_0
    IL_000d:  ldind.i4
    IL_000e:  ldc.i4     0xffff82be
    IL_0013:  stloc      V_0
    IL_0017:  ldloca     V_0
    IL_001b:  ldind.i4
    IL_001c:  ceq
    IL_001e:  switch     ( 
                          IL_002f,
                          IL_002f,
                          IL_002f)
    IL_002f:  ldc.i4.0
    IL_0030:  stloc      V_0
    IL_0034:  ldloca     V_0
    IL_0038:  ldind.i4
    IL_0039:  brfalse.s  IL_003b

    IL_003b:  ldc.i4     0x1
    IL_0040:  stloc      V_0
    IL_0044:  ldloca     V_0
    IL_0048:  ldind.i4
    IL_0049:  brfalse.s  IL_004b

    IL_004b:  ldc.i4.0
    IL_004c:  stloc      V_0
    IL_0050:  call       void [System.Windows.Forms]System.Windows.Forms.Application::EnableVisualStyles()
    IL_0055:  ldc.i4.0
    IL_0056:  call       void [System.Windows.Forms]System.Windows.Forms.Application::SetCompatibleTextRenderingDefault(bool)
    IL_005b:  newobj     instance void CrackMe.Form1::.ctor()
    IL_0060:  call       void [System.Windows.Forms]System.Windows.Forms.Application::Run(class [System.Windows.Forms]System.Windows.Forms.Form)
    IL_0065:  ret
  } // end of method Class1::Main

} // end of class Class1

.class private auto ansi beforefieldinit CrackMe.Properties.Resources
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 33 53 79 73 74 65 6D 2E 52 65 73 6F 75 72   // ..3System.Resour
                                                                                                  63 65 73 2E 54 6F 6F 6C 73 2E 53 74 72 6F 6E 67   // ces.Tools.Strong
                                                                                                  6C 79 54 79 70 65 64 52 65 73 6F 75 72 63 65 42   // lyTypedResourceB
                                                                                                  75 69 6C 64 65 72 07 34 2E 30 2E 30 2E 30 00 00 ) // uilder.4.0.0.0..
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Resources.ResourceManager resourceManager_0
  .field private static class [mscorlib]System.Globalization.CultureInfo cultureInfo_0
  .field private notserialized string string_0 = uint8(0x20)
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Resources::.ctor

  .method assembly hidebysig specialname static 
          class [mscorlib]System.Resources.ResourceManager 
          get_ResourceManager() cil managed
  {
    // Code size       194 (0xc2)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4     0x2
    IL_0005:  stloc      V_1
    IL_0009:  ldloca     V_1
    IL_000d:  ldind.i4
    IL_000e:  stloc.0
    IL_000f:  br         IL_00a5

    IL_0014:  ldc.i4     0x1
    IL_0019:  stloc      V_1
    IL_001d:  ldloca     V_1
    IL_0021:  ldind.i4
    IL_0022:  brtrue.s   IL_0024

    IL_0024:  ldc.i4     0x52ef
    IL_0029:  stloc      V_1
    IL_002d:  ldloca     V_1
    IL_0031:  ldind.i4
    IL_0032:  ldc.i4     0x52ef
    IL_0037:  stloc      V_1
    IL_003b:  ldloca     V_1
    IL_003f:  ldind.i4
    IL_0040:  ceq
    IL_0042:  switch     ( 
                          IL_007c,
                          IL_0053,
                          IL_007c)
    IL_0053:  ldc.i4.0
    IL_0054:  stloc      V_1
    IL_0058:  ldloca     V_1
    IL_005c:  ldind.i4
    IL_005d:  brtrue.s   IL_005f

    IL_005f:  ldc.i4.0
    IL_0060:  stloc      V_1
    IL_0064:  ldsfld     class [mscorlib]System.Resources.ResourceManager CrackMe.Properties.Resources::resourceManager_0
    IL_0069:  brtrue.s   IL_00bc

    IL_006b:  ldc.i4     0x1
    IL_0070:  stloc      V_1
    IL_0074:  ldloca     V_1
    IL_0078:  ldind.i4
    IL_0079:  stloc.0
    IL_007a:  br.s       IL_00a5

    IL_007c:  ldstr      "CrackMe.Properties.Resources"
    IL_0081:  ldtoken    CrackMe.Properties.Resources
    IL_0086:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_008b:  callvirt   instance class [mscorlib]System.Reflection.Assembly [mscorlib]System.Type::get_Assembly()
    IL_0090:  newobj     instance void [mscorlib]System.Resources.ResourceManager::.ctor(string,
                                                                                         class [mscorlib]System.Reflection.Assembly)
    IL_0095:  stsfld     class [mscorlib]System.Resources.ResourceManager CrackMe.Properties.Resources::resourceManager_0
    IL_009a:  ldc.i4.0
    IL_009b:  stloc      V_1
    IL_009f:  ldloca     V_1
    IL_00a3:  ldind.i4
    IL_00a4:  stloc.0
    IL_00a5:  ldloc.0
    IL_00a6:  switch     ( 
                          IL_00bc,
                          IL_007c,
                          IL_0014)
    IL_00b7:  br         IL_0024

    IL_00bc:  ldsfld     class [mscorlib]System.Resources.ResourceManager CrackMe.Properties.Resources::resourceManager_0
    IL_00c1:  ret
  } // end of method Resources::get_ResourceManager

  .method assembly hidebysig specialname static 
          class [mscorlib]System.Globalization.CultureInfo 
          get_Culture() cil managed
  {
    // Code size       86 (0x56)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0xffffbc7c
    IL_0005:  stloc      V_0
    IL_0009:  ldloca     V_0
    IL_000d:  ldind.i4
    IL_000e:  ldc.i4     0xffffbc7c
    IL_0013:  stloc      V_0
    IL_0017:  ldloca     V_0
    IL_001b:  ldind.i4
    IL_001c:  ceq
    IL_001e:  switch     ( 
                          IL_002f,
                          IL_0034,
                          IL_002f)
    IL_002f:  ldc.i4.0
    IL_0030:  stloc      V_0
    IL_0034:  ldc.i4     0x1
    IL_0039:  stloc      V_0
    IL_003d:  ldloca     V_0
    IL_0041:  ldind.i4
    IL_0042:  brtrue.s   IL_0044

    IL_0044:  ldc.i4.0
    IL_0045:  stloc      V_0
    IL_0049:  ldloca     V_0
    IL_004d:  ldind.i4
    IL_004e:  brtrue.s   IL_0050

    IL_0050:  ldsfld     class [mscorlib]System.Globalization.CultureInfo CrackMe.Properties.Resources::cultureInfo_0
    IL_0055:  ret
  } // end of method Resources::get_Culture

  .method assembly hidebysig specialname static 
          void  set_Culture(class [mscorlib]System.Globalization.CultureInfo 'value') cil managed
  {
    // Code size       87 (0x57)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0x81f
    IL_0005:  stloc      V_0
    IL_0009:  ldloca     V_0
    IL_000d:  ldind.i4
    IL_000e:  ldc.i4     0x81f
    IL_0013:  stloc      V_0
    IL_0017:  ldloca     V_0
    IL_001b:  ldind.i4
    IL_001c:  ceq
    IL_001e:  switch     ( 
                          IL_002f,
                          IL_0034,
                          IL_002f)
    IL_002f:  ldc.i4.0
    IL_0030:  stloc      V_0
    IL_0034:  ldc.i4     0x1
    IL_0039:  stloc      V_0
    IL_003d:  ldloca     V_0
    IL_0041:  ldind.i4
    IL_0042:  brtrue.s   IL_0044

    IL_0044:  ldc.i4.0
    IL_0045:  stloc      V_0
    IL_0049:  ldloca     V_0
    IL_004d:  ldind.i4
    IL_004e:  brtrue.s   IL_0050

    IL_0050:  ldarg.0
    IL_0051:  stsfld     class [mscorlib]System.Globalization.CultureInfo CrackMe.Properties.Resources::cultureInfo_0
    IL_0056:  ret
  } // end of method Resources::set_Culture

  .property class [mscorlib]System.Resources.ResourceManager
          ResourceManager()
  {
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 02 00 00 00 00 00 ) 
    .get class [mscorlib]System.Resources.ResourceManager CrackMe.Properties.Resources::get_ResourceManager()
  } // end of property Resources::ResourceManager
  .property class [mscorlib]System.Globalization.CultureInfo
          Culture()
  {
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 02 00 00 00 00 00 ) 
    .set void CrackMe.Properties.Resources::set_Culture(class [mscorlib]System.Globalization.CultureInfo)
    .get class [mscorlib]System.Globalization.CultureInfo CrackMe.Properties.Resources::get_Culture()
  } // end of property Resources::Culture
} // end of class CrackMe.Properties.Resources

.class private auto ansi sealed beforefieldinit CrackMe.Properties.Settings
       extends [System]System.Configuration.ApplicationSettingsBase
{
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 4B 4D 69 63 72 6F 73 6F 66 74 2E 56 69 73   // ..KMicrosoft.Vis
                                                                                                  75 61 6C 53 74 75 64 69 6F 2E 45 64 69 74 6F 72   // ualStudio.Editor
                                                                                                  73 2E 53 65 74 74 69 6E 67 73 44 65 73 69 67 6E   // s.SettingsDesign
                                                                                                  65 72 2E 53 65 74 74 69 6E 67 73 53 69 6E 67 6C   // er.SettingsSingl
                                                                                                  65 46 69 6C 65 47 65 6E 65 72 61 74 6F 72 08 31   // eFileGenerator.1
                                                                                                  31 2E 30 2E 30 2E 30 00 00 )                      // 1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class CrackMe.Properties.Settings settings_0
  .field private notserialized string string_0 = uint8(0x20)
  .method public hidebysig specialname static 
          class CrackMe.Properties.Settings 
          get_Default() cil managed
  {
    // Code size       86 (0x56)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0xffffdc28
    IL_0005:  stloc      V_0
    IL_0009:  ldloca     V_0
    IL_000d:  ldind.i4
    IL_000e:  ldc.i4     0xffffdc28
    IL_0013:  stloc      V_0
    IL_0017:  ldloca     V_0
    IL_001b:  ldind.i4
    IL_001c:  ceq
    IL_001e:  switch     ( 
                          IL_002f,
                          IL_0034,
                          IL_002f)
    IL_002f:  ldc.i4.0
    IL_0030:  stloc      V_0
    IL_0034:  ldc.i4     0x1
    IL_0039:  stloc      V_0
    IL_003d:  ldloca     V_0
    IL_0041:  ldind.i4
    IL_0042:  brtrue.s   IL_0044

    IL_0044:  ldc.i4.0
    IL_0045:  stloc      V_0
    IL_0049:  ldloca     V_0
    IL_004d:  ldind.i4
    IL_004e:  brtrue.s   IL_0050

    IL_0050:  ldsfld     class CrackMe.Properties.Settings CrackMe.Properties.Settings::settings_0
    IL_0055:  ret
  } // end of method Settings::get_Default

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System]System.Configuration.ApplicationSettingsBase::.ctor()
    IL_0006:  ret
  } // end of method Settings::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       101 (0x65)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0xffffce43
    IL_0005:  stloc      V_0
    IL_0009:  ldloca     V_0
    IL_000d:  ldind.i4
    IL_000e:  ldc.i4     0xffffce43
    IL_0013:  stloc      V_0
    IL_0017:  ldloca     V_0
    IL_001b:  ldind.i4
    IL_001c:  ceq
    IL_001e:  switch     ( 
                          IL_002f,
                          IL_0034,
                          IL_002f)
    IL_002f:  ldc.i4.0
    IL_0030:  stloc      V_0
    IL_0034:  ldc.i4     0x1
    IL_0039:  stloc      V_0
    IL_003d:  ldloca     V_0
    IL_0041:  ldind.i4
    IL_0042:  brtrue.s   IL_0044

    IL_0044:  ldc.i4.0
    IL_0045:  stloc      V_0
    IL_0049:  ldloca     V_0
    IL_004d:  ldind.i4
    IL_004e:  brtrue.s   IL_0050

    IL_0050:  newobj     instance void CrackMe.Properties.Settings::.ctor()
    IL_0055:  call       class [System]System.Configuration.SettingsBase [System]System.Configuration.SettingsBase::Synchronized(class [System]System.Configuration.SettingsBase)
    IL_005a:  castclass  CrackMe.Properties.Settings
    IL_005f:  stsfld     class CrackMe.Properties.Settings CrackMe.Properties.Settings::settings_0
    IL_0064:  ret
  } // end of method Settings::.cctor

  .property class CrackMe.Properties.Settings
          Default()
  {
    .get class CrackMe.Properties.Settings CrackMe.Properties.Settings::get_Default()
  } // end of property Settings::Default
} // end of class CrackMe.Properties.Settings


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file D:\mentoring\epamMentoring\CrackMe.exe.res
