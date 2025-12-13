; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [204 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [402 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 9073660, ; 1: MonoGame.IMEHelper.Common => 0x8a73fc => 190
	i32 10166715, ; 2: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 34839235, ; 4: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 5: Newtonsoft.Json.dll => 0x254c520 => 193
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 9: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 82292897, ; 10: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 90753057, ; 11: Lawn.dll => 0x568c821 => 0
	i32 117431740, ; 12: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 122350210, ; 13: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 127363243, ; 14: ICSharpCode.SharpZipLib => 0x79768ab => 194
	i32 136760028, ; 15: MonoMod.Utils => 0x826cadc => 192
	i32 142721839, ; 16: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 17: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 18: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 176265551, ; 19: System.ServiceProcess => 0xa81994f => 132
	i32 184328833, ; 20: System.ValueTuple.dll => 0xafca281 => 151
	i32 186815484, ; 21: Mono.Cecil => 0xb2293fc => 187
	i32 205061960, ; 22: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 23: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230752869, ; 24: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 25: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 26: System.Globalization => 0xdd133ce => 42
	i32 246288140, ; 27: Mono.Unix.dll => 0xeae0f0c => 188
	i32 246610117, ; 28: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 276479776, ; 29: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 291076382, ; 30: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 31: System.Net.Ping.dll => 0x11d123fd => 69
	i32 321597661, ; 32: System.Numerics => 0x132b30dd => 83
	i32 360082299, ; 33: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 34: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 35: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 36: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 37: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 38: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 39: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 40: _Microsoft.Android.Resource.Designer => 0x17969339 => 200
	i32 403441872, ; 41: WindowsBase => 0x180c08d0 => 165
	i32 442565967, ; 42: System.Collections => 0x1a61054f => 12
	i32 451504562, ; 43: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 44: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 45: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 46: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 47: System.dll => 0x1bff388e => 164
	i32 498788369, ; 48: System.ObjectModel => 0x1dbae811 => 84
	i32 507640256, ; 49: MonoGame.Framework => 0x1e41f9c0 => 189
	i32 526420162, ; 50: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 51: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 540030774, ; 52: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 53: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 54: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 55: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 566059857, ; 56: Mono.Cecil.Pdb => 0x21bd6351 => 185
	i32 577335427, ; 57: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 58: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 59: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 60: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 643868501, ; 61: System.Net => 0x2660a755 => 81
	i32 662205335, ; 62: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 664182736, ; 63: IronPython => 0x27969fd0 => 183
	i32 672442732, ; 64: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 65: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 66: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 693804605, ; 67: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 68: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700358131, ; 69: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 713429907, ; 70: WebSocketSharp.NetCore => 0x2a861393 => 198
	i32 717085101, ; 71: Mono.Cecil.dll => 0x2abdd9ad => 187
	i32 722857257, ; 72: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 73: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 74: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 759454413, ; 75: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 76: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 77: System.IO.Compression => 0x2e394f87 => 46
	i32 804715423, ; 78: System.Data.Common => 0x2ff6fb9f => 22
	i32 806619828, ; 79: MonoMod.Utils.dll => 0x30140ab4 => 192
	i32 823281589, ; 80: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 81: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 82: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 83: System.Net.Quic => 0x31b69d60 => 71
	i32 873119928, ; 84: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 85: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 86: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 87: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 88: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 952186615, ; 89: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 90: Newtonsoft.Json => 0x38f24a24 => 193
	i32 975236339, ; 91: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 92: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 93: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 94: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 95: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 96: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 97: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1019214401, ; 98: System.Drawing => 0x3cbffa41 => 36
	i32 1036536393, ; 99: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 100: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1067653374, ; 101: Mono.Cecil.Rocks.dll => 0x3fa318fe => 186
	i32 1082857460, ; 102: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1097425238, ; 103: Cyotek.Drawing.BitmapFont.dll => 0x41696156 => 173
	i32 1098259244, ; 104: System => 0x41761b2c => 164
	i32 1133953938, ; 105: Microsoft.Dynamic => 0x4396c392 => 174
	i32 1163717358, ; 106: MonoMod.RuntimeDetour => 0x455ceaee => 191
	i32 1170634674, ; 107: System.Web.dll => 0x45c677b2 => 153
	i32 1203136968, ; 108: StbTrueTypeSharp => 0x47b669c8 => 196
	i32 1208641965, ; 109: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 110: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1250767539, ; 111: Mono.Cecil.Pdb.dll => 0x4a8d32b3 => 185
	i32 1253011324, ; 112: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1309188875, ; 113: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1324164729, ; 114: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 115: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1358123493, ; 116: IronPython.Wpf => 0x50f351e5 => 182
	i32 1364015309, ; 117: System.IO => 0x514d38cd => 57
	i32 1379779777, ; 118: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 119: System.Configuration.dll => 0x53936ab4 => 19
	i32 1408764838, ; 120: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 121: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 122: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 123: System.Runtime.Handles => 0x557b5293 => 104
	i32 1439761251, ; 124: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 125: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 126: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 127: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 128: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 129: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 130: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 131: System.IO.Compression.dll => 0x57261233 => 46
	i32 1464671650, ; 132: Microsoft.Scripting.Metadata => 0x574d1da2 => 175
	i32 1479771757, ; 133: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 134: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 135: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1536373174, ; 136: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 137: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 138: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 139: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 140: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 141: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 142: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 143: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1592978981, ; 144: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1601112923, ; 145: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 146: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 147: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622358360, ; 148: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1639515021, ; 149: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 150: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 151: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 152: System.Runtime => 0x62c6282e => 116
	i32 1661014245, ; 153: Microsoft.Scripting.dll => 0x630110e5 => 176
	i32 1675553242, ; 154: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 155: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 156: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 157: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 158: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 159: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 160: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1714278922, ; 161: MonoMod.RuntimeDetour.dll => 0x662dd20a => 191
	i32 1726116996, ; 162: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 163: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1744735666, ; 164: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 165: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 166: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 167: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760350625, ; 168: FontStashSharp.Rasterizers.StbTrueTypeSharp => 0x68ecd1a1 => 179
	i32 1763938596, ; 169: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 170: System.Reflection.Extensions => 0x6942234e => 93
	i32 1776026572, ; 171: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 172: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 173: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1781883352, ; 174: StbTrueTypeSharp.dll => 0x6a3561d8 => 196
	i32 1818787751, ; 175: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 176: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 177: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1844781500, ; 178: StbImageSharp.dll => 0x6df521bc => 195
	i32 1858542181, ; 179: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1860652673, ; 180: Mono.Cecil.Mdb => 0x6ee74e81 => 184
	i32 1870277092, ; 181: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 182: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1888955245, ; 183: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 184: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 185: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 186: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 187: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1927897671, ; 188: System.CodeDom.dll => 0x72e96247 => 197
	i32 1939592360, ; 189: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 190: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1966065150, ; 191: Mono.Unix => 0x752fc5fe => 188
	i32 1977015694, ; 192: Mono.Cecil.Mdb.dll => 0x75d6dd8e => 184
	i32 2011961780, ; 193: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2045470958, ; 194: System.Private.Xml => 0x79eb68ee => 88
	i32 2060060697, ; 195: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 196: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 197: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 198: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 199: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 200: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 201: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 202: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2178612968, ; 203: System.CodeDom => 0x81dafee8 => 197
	i32 2193016926, ; 204: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201231467, ; 205: System.Net.Http => 0x8334206b => 64
	i32 2222056684, ; 206: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2252106437, ; 207: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 208: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 209: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2293034957, ; 210: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 211: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 212: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 213: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2320631194, ; 214: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 215: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 216: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 217: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 218: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2372403086, ; 219: IronPython.dll => 0x8d67ff8e => 183
	i32 2378619854, ; 220: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 221: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 222: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2421380589, ; 223: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2435356389, ; 224: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 225: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 226: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 227: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 228: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2471841756, ; 229: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 230: Java.Interop.dll => 0x93918882 => 168
	i32 2483903535, ; 231: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 232: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 233: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 234: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2538310050, ; 235: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 236: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 237: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2585220780, ; 238: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 239: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 240: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2591425055, ; 241: IronPython.SQLite.dll => 0x9a76021f => 181
	i32 2617129537, ; 242: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 243: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2627185994, ; 244: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 245: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2638131321, ; 246: MonoGame.IMEHelper.Common.dll => 0x9d3eb079 => 190
	i32 2663698177, ; 247: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 248: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 249: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 250: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2681462545, ; 251: Microsoft.Scripting => 0x9fd3df11 => 176
	i32 2686887180, ; 252: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2689188960, ; 253: Lawn => 0xa049c460 => 0
	i32 2693849962, ; 254: System.IO.dll => 0xa090e36a => 57
	i32 2715334215, ; 255: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 256: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 257: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 258: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2735172069, ; 259: System.Threading.Channels => 0xa30769e5 => 139
	i32 2740948882, ; 260: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 261: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2759820208, ; 262: Microsoft.Dynamic.dll => 0xa47f83b0 => 174
	i32 2765824710, ; 263: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2803228030, ; 264: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2819470561, ; 265: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 266: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2824502124, ; 267: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2849599387, ; 268: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2861098320, ; 269: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2875220617, ; 270: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2887636118, ; 271: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 272: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 273: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 274: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 275: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 276: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2919462931, ; 277: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2936416060, ; 278: System.Resources.Reader => 0xaf06273c => 98
	i32 2936526781, ; 279: BuglyBinding => 0xaf07d7bd => 199
	i32 2940926066, ; 280: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 281: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944311806, ; 282: FontStashSharp.Base => 0xaf7ea1fe => 177
	i32 2959614098, ; 283: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 284: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 285: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 3012852926, ; 286: IronPython.Modules => 0xb3947cbe => 180
	i32 3023353419, ; 287: WindowsBase.dll => 0xb434b64b => 165
	i32 3025919916, ; 288: Mono.Cecil.Rocks => 0xb45bdfac => 186
	i32 3038032645, ; 289: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 200
	i32 3054374654, ; 290: Microsoft.Scripting.Metadata.dll => 0xb60e0efe => 175
	i32 3059408633, ; 291: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 292: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 293: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 294: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 295: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3102561807, ; 296: Cyotek.Drawing.BitmapFont => 0xb8ed560f => 173
	i32 3103600923, ; 297: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 298: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 299: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 300: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 301: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3135029042, ; 302: ICSharpCode.SharpZipLib.dll => 0xbadcbf32 => 194
	i32 3147165239, ; 303: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3159123045, ; 304: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 305: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3192346100, ; 306: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 307: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 308: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 309: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3212844159, ; 310: IronPython.Wpf.dll => 0xbf801c7f => 182
	i32 3219444048, ; 311: IronPython.SQLite => 0xbfe4d150 => 181
	i32 3220365878, ; 312: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 313: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 314: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3265493905, ; 315: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 316: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 317: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 318: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 319: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 320: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 321: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 322: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 323: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317144872, ; 324: System.Data => 0xc5b79d28 => 24
	i32 3358260929, ; 325: System.Text.Json => 0xc82afec1 => 137
	i32 3366347497, ; 326: Java.Interop => 0xc8a662e9 => 168
	i32 3395150330, ; 327: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 328: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3429136800, ; 329: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 330: netstandard => 0xcc7d82b4 => 167
	i32 3434436242, ; 331: StbImageSharp => 0xccb55692 => 195
	i32 3445260447, ; 332: System.Formats.Tar => 0xcd5a809f => 39
	i32 3471940407, ; 333: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 334: Mono.Android => 0xcf3163e6 => 171
	i32 3485117614, ; 335: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 336: System.Transactions => 0xcfd0c798 => 150
	i32 3498898171, ; 337: FontStashSharp.MonoGame => 0xd08cf2fb => 178
	i32 3509114376, ; 338: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 339: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 340: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 341: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 342: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 343: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3598340787, ; 344: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3601317578, ; 345: BuglyBinding.dll => 0xd6a7beca => 199
	i32 3608519521, ; 346: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 347: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3638274909, ; 348: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3645089577, ; 349: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3660523487, ; 350: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 351: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3700866549, ; 352: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3711190600, ; 353: FontStashSharp.MonoGame.dll => 0xdd344648 => 178
	i32 3716563718, ; 354: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3732100267, ; 355: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 356: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3740483818, ; 357: IronPython.Modules.dll => 0xdef340ea => 180
	i32 3748608112, ; 358: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 359: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786368326, ; 360: FontStashSharp.Base.dll => 0xe1af6546 => 177
	i32 3792276235, ; 361: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3799897148, ; 362: FontStashSharp.Rasterizers.StbTrueTypeSharp.dll => 0xe27dd43c => 179
	i32 3802395368, ; 363: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 364: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 365: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 366: System.Numerics.dll => 0xe4436460 => 83
	i32 3831343120, ; 367: MonoGame.Framework.dll => 0xe45da810 => 189
	i32 3844307129, ; 368: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 369: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 370: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 371: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 372: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 373: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3896106733, ; 374: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3901907137, ; 375: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 376: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3928044579, ; 377: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 378: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3945713374, ; 379: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 380: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3966331811, ; 381: WebSocketSharp.NetCore.dll => 0xec696ba3 => 198
	i32 4003436829, ; 382: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4025784931, ; 383: System.Memory => 0xeff49a63 => 62
	i32 4054681211, ; 384: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 385: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 386: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4099507663, ; 387: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 388: System.Private.Uri => 0xf462c30d => 86
	i32 4127667938, ; 389: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 390: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 391: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 392: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 393: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 394: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 395: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 396: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4185676441, ; 397: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 398: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 399: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4260525087, ; 400: System.Buffers => 0xfdf2741f => 7
	i32 4274976490 ; 401: System.Runtime.Numerics => 0xfecef6ea => 110
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [402 x i32] [
	i32 68, ; 0
	i32 190, ; 1
	i32 67, ; 2
	i32 108, ; 3
	i32 48, ; 4
	i32 193, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 124, ; 9
	i32 102, ; 10
	i32 0, ; 11
	i32 107, ; 12
	i32 139, ; 13
	i32 194, ; 14
	i32 192, ; 15
	i32 77, ; 16
	i32 124, ; 17
	i32 13, ; 18
	i32 132, ; 19
	i32 151, ; 20
	i32 187, ; 21
	i32 18, ; 22
	i32 26, ; 23
	i32 1, ; 24
	i32 59, ; 25
	i32 42, ; 26
	i32 188, ; 27
	i32 91, ; 28
	i32 147, ; 29
	i32 54, ; 30
	i32 69, ; 31
	i32 83, ; 32
	i32 131, ; 33
	i32 55, ; 34
	i32 149, ; 35
	i32 74, ; 36
	i32 145, ; 37
	i32 62, ; 38
	i32 146, ; 39
	i32 200, ; 40
	i32 165, ; 41
	i32 12, ; 42
	i32 125, ; 43
	i32 152, ; 44
	i32 113, ; 45
	i32 166, ; 46
	i32 164, ; 47
	i32 84, ; 48
	i32 189, ; 49
	i32 150, ; 50
	i32 60, ; 51
	i32 51, ; 52
	i32 103, ; 53
	i32 114, ; 54
	i32 40, ; 55
	i32 185, ; 56
	i32 120, ; 57
	i32 52, ; 58
	i32 44, ; 59
	i32 119, ; 60
	i32 81, ; 61
	i32 136, ; 62
	i32 183, ; 63
	i32 8, ; 64
	i32 73, ; 65
	i32 155, ; 66
	i32 154, ; 67
	i32 92, ; 68
	i32 45, ; 69
	i32 198, ; 70
	i32 187, ; 71
	i32 109, ; 72
	i32 129, ; 73
	i32 25, ; 74
	i32 72, ; 75
	i32 55, ; 76
	i32 46, ; 77
	i32 22, ; 78
	i32 192, ; 79
	i32 86, ; 80
	i32 43, ; 81
	i32 160, ; 82
	i32 71, ; 83
	i32 3, ; 84
	i32 42, ; 85
	i32 63, ; 86
	i32 16, ; 87
	i32 53, ; 88
	i32 105, ; 89
	i32 193, ; 90
	i32 34, ; 91
	i32 158, ; 92
	i32 85, ; 93
	i32 32, ; 94
	i32 12, ; 95
	i32 51, ; 96
	i32 56, ; 97
	i32 36, ; 98
	i32 35, ; 99
	i32 58, ; 100
	i32 186, ; 101
	i32 17, ; 102
	i32 173, ; 103
	i32 164, ; 104
	i32 174, ; 105
	i32 191, ; 106
	i32 153, ; 107
	i32 196, ; 108
	i32 29, ; 109
	i32 52, ; 110
	i32 185, ; 111
	i32 5, ; 112
	i32 85, ; 113
	i32 61, ; 114
	i32 112, ; 115
	i32 182, ; 116
	i32 57, ; 117
	i32 99, ; 118
	i32 19, ; 119
	i32 111, ; 120
	i32 101, ; 121
	i32 102, ; 122
	i32 104, ; 123
	i32 71, ; 124
	i32 38, ; 125
	i32 32, ; 126
	i32 103, ; 127
	i32 73, ; 128
	i32 9, ; 129
	i32 123, ; 130
	i32 46, ; 131
	i32 175, ; 132
	i32 9, ; 133
	i32 43, ; 134
	i32 4, ; 135
	i32 31, ; 136
	i32 138, ; 137
	i32 92, ; 138
	i32 93, ; 139
	i32 49, ; 140
	i32 141, ; 141
	i32 112, ; 142
	i32 140, ; 143
	i32 115, ; 144
	i32 157, ; 145
	i32 76, ; 146
	i32 79, ; 147
	i32 37, ; 148
	i32 64, ; 149
	i32 138, ; 150
	i32 15, ; 151
	i32 116, ; 152
	i32 176, ; 153
	i32 48, ; 154
	i32 70, ; 155
	i32 80, ; 156
	i32 126, ; 157
	i32 94, ; 158
	i32 121, ; 159
	i32 26, ; 160
	i32 191, ; 161
	i32 97, ; 162
	i32 28, ; 163
	i32 149, ; 164
	i32 169, ; 165
	i32 4, ; 166
	i32 98, ; 167
	i32 179, ; 168
	i32 33, ; 169
	i32 93, ; 170
	i32 21, ; 171
	i32 41, ; 172
	i32 170, ; 173
	i32 196, ; 174
	i32 2, ; 175
	i32 134, ; 176
	i32 111, ; 177
	i32 195, ; 178
	i32 58, ; 179
	i32 184, ; 180
	i32 95, ; 181
	i32 39, ; 182
	i32 25, ; 183
	i32 94, ; 184
	i32 89, ; 185
	i32 99, ; 186
	i32 10, ; 187
	i32 197, ; 188
	i32 87, ; 189
	i32 100, ; 190
	i32 188, ; 191
	i32 184, ; 192
	i32 7, ; 193
	i32 88, ; 194
	i32 154, ; 195
	i32 33, ; 196
	i32 116, ; 197
	i32 82, ; 198
	i32 20, ; 199
	i32 11, ; 200
	i32 162, ; 201
	i32 3, ; 202
	i32 197, ; 203
	i32 84, ; 204
	i32 64, ; 205
	i32 143, ; 206
	i32 157, ; 207
	i32 41, ; 208
	i32 117, ; 209
	i32 131, ; 210
	i32 75, ; 211
	i32 66, ; 212
	i32 172, ; 213
	i32 143, ; 214
	i32 106, ; 215
	i32 151, ; 216
	i32 70, ; 217
	i32 156, ; 218
	i32 183, ; 219
	i32 121, ; 220
	i32 127, ; 221
	i32 152, ; 222
	i32 141, ; 223
	i32 20, ; 224
	i32 14, ; 225
	i32 135, ; 226
	i32 75, ; 227
	i32 59, ; 228
	i32 167, ; 229
	i32 168, ; 230
	i32 15, ; 231
	i32 74, ; 232
	i32 6, ; 233
	i32 23, ; 234
	i32 91, ; 235
	i32 1, ; 236
	i32 136, ; 237
	i32 134, ; 238
	i32 69, ; 239
	i32 146, ; 240
	i32 181, ; 241
	i32 88, ; 242
	i32 96, ; 243
	i32 31, ; 244
	i32 45, ; 245
	i32 190, ; 246
	i32 109, ; 247
	i32 158, ; 248
	i32 35, ; 249
	i32 22, ; 250
	i32 176, ; 251
	i32 114, ; 252
	i32 0, ; 253
	i32 57, ; 254
	i32 144, ; 255
	i32 118, ; 256
	i32 120, ; 257
	i32 110, ; 258
	i32 139, ; 259
	i32 54, ; 260
	i32 105, ; 261
	i32 174, ; 262
	i32 133, ; 263
	i32 159, ; 264
	i32 163, ; 265
	i32 132, ; 266
	i32 161, ; 267
	i32 140, ; 268
	i32 169, ; 269
	i32 40, ; 270
	i32 81, ; 271
	i32 56, ; 272
	i32 37, ; 273
	i32 97, ; 274
	i32 166, ; 275
	i32 172, ; 276
	i32 82, ; 277
	i32 98, ; 278
	i32 199, ; 279
	i32 30, ; 280
	i32 159, ; 281
	i32 177, ; 282
	i32 18, ; 283
	i32 127, ; 284
	i32 119, ; 285
	i32 180, ; 286
	i32 165, ; 287
	i32 186, ; 288
	i32 200, ; 289
	i32 175, ; 290
	i32 170, ; 291
	i32 16, ; 292
	i32 144, ; 293
	i32 125, ; 294
	i32 118, ; 295
	i32 173, ; 296
	i32 38, ; 297
	i32 115, ; 298
	i32 47, ; 299
	i32 142, ; 300
	i32 117, ; 301
	i32 194, ; 302
	i32 34, ; 303
	i32 95, ; 304
	i32 53, ; 305
	i32 129, ; 306
	i32 153, ; 307
	i32 24, ; 308
	i32 161, ; 309
	i32 182, ; 310
	i32 181, ; 311
	i32 148, ; 312
	i32 104, ; 313
	i32 89, ; 314
	i32 60, ; 315
	i32 142, ; 316
	i32 100, ; 317
	i32 5, ; 318
	i32 13, ; 319
	i32 122, ; 320
	i32 135, ; 321
	i32 28, ; 322
	i32 72, ; 323
	i32 24, ; 324
	i32 137, ; 325
	i32 168, ; 326
	i32 101, ; 327
	i32 123, ; 328
	i32 163, ; 329
	i32 167, ; 330
	i32 195, ; 331
	i32 39, ; 332
	i32 17, ; 333
	i32 171, ; 334
	i32 137, ; 335
	i32 150, ; 336
	i32 178, ; 337
	i32 155, ; 338
	i32 130, ; 339
	i32 19, ; 340
	i32 65, ; 341
	i32 147, ; 342
	i32 47, ; 343
	i32 79, ; 344
	i32 199, ; 345
	i32 61, ; 346
	i32 106, ; 347
	i32 49, ; 348
	i32 14, ; 349
	i32 68, ; 350
	i32 171, ; 351
	i32 78, ; 352
	i32 178, ; 353
	i32 108, ; 354
	i32 67, ; 355
	i32 63, ; 356
	i32 180, ; 357
	i32 27, ; 358
	i32 160, ; 359
	i32 177, ; 360
	i32 10, ; 361
	i32 179, ; 362
	i32 11, ; 363
	i32 78, ; 364
	i32 126, ; 365
	i32 83, ; 366
	i32 189, ; 367
	i32 66, ; 368
	i32 107, ; 369
	i32 65, ; 370
	i32 128, ; 371
	i32 122, ; 372
	i32 77, ; 373
	i32 8, ; 374
	i32 2, ; 375
	i32 44, ; 376
	i32 156, ; 377
	i32 128, ; 378
	i32 23, ; 379
	i32 133, ; 380
	i32 198, ; 381
	i32 29, ; 382
	i32 62, ; 383
	i32 90, ; 384
	i32 87, ; 385
	i32 148, ; 386
	i32 36, ; 387
	i32 86, ; 388
	i32 50, ; 389
	i32 6, ; 390
	i32 90, ; 391
	i32 21, ; 392
	i32 162, ; 393
	i32 96, ; 394
	i32 50, ; 395
	i32 113, ; 396
	i32 130, ; 397
	i32 76, ; 398
	i32 27, ; 399
	i32 7, ; 400
	i32 110 ; 401
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
