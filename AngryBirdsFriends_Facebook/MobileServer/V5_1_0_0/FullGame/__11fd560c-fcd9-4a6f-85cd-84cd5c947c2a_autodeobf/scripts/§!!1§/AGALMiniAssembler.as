package §!!1§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §5"?§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §9!'§:Dictionary = new Dictionary();
      
      private static const §<!w§:Dictionary = new Dictionary();
      
      private static const §9"V§:Dictionary = new Dictionary();
      
      private static const §9"!§:int = 4;
      
      private static const §#j§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §>"k§:uint = 8;
      
      private static const §2"1§:uint = 12;
      
      private static const §!#o§:uint = 16;
      
      private static const §@5§:uint = 20;
      
      private static const §0!$§:uint = 24;
      
      private static const §@e§:uint = 28;
      
      private static const §9#r§:uint = 1;
      
      private static const §[!t§:uint = 2;
      
      private static const §1"a§:uint = 32;
      
      private static const §0"z§:uint = 64;
      
      private static const §>!+§:uint = 1;
      
      private static const §-$A§:uint = 8;
      
      private static const §]"n§:uint = 16;
      
      private static const § $?§:uint = 32;
      
      private static const §5!n§:uint = 64;
      
      private static const §,S§:uint = 128;
      
      private static const §[!=§:uint = 256;
      
      private static const §@$%§:uint = 512;
      
      private static const §6#'§:uint = 1024;
      
      private static const §&#l§:String = "mov";
      
      private static const §?#+§:String = "add";
      
      private static const §2!3§:String = "sub";
      
      private static const §&$?§:String = "mul";
      
      private static const §+#j§:String = "div";
      
      private static const §;"l§:String = "rcp";
      
      private static const §=4§:String = "min";
      
      private static const §<C§:String = "max";
      
      private static const §,"v§:String = "frc";
      
      private static const §1$-§:String = "sqt";
      
      private static const §!<§:String = "rsq";
      
      private static const §9!?§:String = "pow";
      
      private static const §1"'§:String = "log";
      
      private static const §@"B§:String = "exp";
      
      private static const §4"M§:String = "nrm";
      
      private static const §[;§:String = "sin";
      
      private static const §-"]§:String = "cos";
      
      private static const §+!<§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §,#3§:String = "abs";
      
      private static const §7";§:String = "neg";
      
      private static const §=L§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §,"l§:String = "ddx";
      
      private static const §'!v§:String = "ddy";
      
      private static const §'$0§:String = "ife";
      
      private static const §4"A§:String = "ine";
      
      private static const §&$4§:String = "ifg";
      
      private static const §7&§:String = "ifl";
      
      private static const §3"g§:String = "els";
      
      private static const §]?§:String = "eif";
      
      private static const §'$5§:String = "ted";
      
      private static const §1#I§:String = "kil";
      
      private static const §<"Z§:String = "tex";
      
      private static const §0!u§:String = "sge";
      
      private static const §,#X§:String = "slt";
      
      private static const §,# §:String = "sgn";
      
      private static const §=^§:String = "seq";
      
      private static const § #n§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §4x§:String = "vt";
      
      private static const §5!I§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const §<;§:String = "fc";
      
      private static const §4"$§:String = "ft";
      
      private static const §+#K§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §##<§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §,`§:String = "cube";
      
      private static const §'!n§:String = "mipnearest";
      
      private static const §8#N§:String = "miplinear";
      
      private static const §]#>§:String = "mipnone";
      
      private static const §^"v§:String = "nomip";
      
      private static const §'&§:String = "nearest";
      
      private static const §'"X§:String = "linear";
      
      private static const §,!F§:String = "centroid";
      
      private static const §"J§:String = "single";
      
      private static const §""?§:String = "ignoresampler";
      
      private static const §,"6§:String = "repeat";
      
      private static const §`$§:String = "wrap";
      
      private static const §[#z§:String = "clamp";
      
      private static const §7"W§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §&o§:String = "video";
       
      
      private var §^!J§:ByteArray = null;
      
      private var §^!%§:String = "";
      
      private var §7v§:Boolean = false;
      
      public var §0H§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§7v§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §9!'§[§&#l§] = new OpCode(§&#l§,2,0,0);
         §9!'§[§?#+§] = new OpCode(§?#+§,3,1,0);
         §9!'§[§2!3§] = new OpCode(§2!3§,3,2,0);
         §9!'§[§&$?§] = new OpCode(§&$?§,3,3,0);
         §9!'§[§+#j§] = new OpCode(§+#j§,3,4,0);
         §9!'§[§;"l§] = new OpCode(§;"l§,2,5,0);
         §9!'§[§=4§] = new OpCode(§=4§,3,6,0);
         §9!'§[§<C§] = new OpCode(§<C§,3,7,0);
         §9!'§[§,"v§] = new OpCode(§,"v§,2,8,0);
         §9!'§[§1$-§] = new OpCode(§1$-§,2,9,0);
         §9!'§[§!<§] = new OpCode(§!<§,2,10,0);
         §9!'§[§9!?§] = new OpCode(§9!?§,3,11,0);
         §9!'§[§1"'§] = new OpCode(§1"'§,2,12,0);
         §9!'§[§@"B§] = new OpCode(§@"B§,2,13,0);
         §9!'§[§4"M§] = new OpCode(§4"M§,2,14,0);
         §9!'§[§[;§] = new OpCode(§[;§,2,15,0);
         §9!'§[§-"]§] = new OpCode(§-"]§,2,16,0);
         §9!'§[§+!<§] = new OpCode(§+!<§,3,17,0);
         §9!'§[DP3] = new OpCode(DP3,3,18,0);
         §9!'§[DP4] = new OpCode(DP4,3,19,0);
         §9!'§[§,#3§] = new OpCode(§,#3§,2,20,0);
         §9!'§[§7";§] = new OpCode(§7";§,2,21,0);
         §9!'§[§=L§] = new OpCode(§=L§,2,22,0);
         §9!'§[M33] = new OpCode(M33,3,23,§]"n§);
         §9!'§[M44] = new OpCode(M44,3,24,§]"n§);
         §9!'§[M34] = new OpCode(M34,3,25,§]"n§);
         §9!'§[§,"l§] = new OpCode(§,"l§,2,26,§[!=§ | § $?§);
         §9!'§[§'!v§] = new OpCode(§'!v§,2,27,§[!=§ | § $?§);
         §9!'§[§'$0§] = new OpCode(§'$0§,2,28,§,S§ | §[!=§ | §@$%§ | §>!+§);
         §9!'§[§4"A§] = new OpCode(§4"A§,2,29,§,S§ | §[!=§ | §@$%§ | §>!+§);
         §9!'§[§&$4§] = new OpCode(§&$4§,2,30,§,S§ | §[!=§ | §@$%§ | §>!+§);
         §9!'§[§7&§] = new OpCode(§7&§,2,31,§,S§ | §[!=§ | §@$%§ | §>!+§);
         §9!'§[§3"g§] = new OpCode(§3"g§,0,32,§,S§ | §[!=§ | §@$%§ | §6#'§ | §>!+§);
         §9!'§[§]?§] = new OpCode(§]?§,0,33,§,S§ | §[!=§ | §6#'§ | §>!+§);
         §9!'§[§'$5§] = new OpCode(§'$5§,3,38,§ $?§ | §-$A§ | §[!=§);
         §9!'§[§1#I§] = new OpCode(§1#I§,1,39,§,S§ | § $?§);
         §9!'§[§<"Z§] = new OpCode(§<"Z§,3,40,§ $?§ | §-$A§);
         §9!'§[§0!u§] = new OpCode(§0!u§,3,41,0);
         §9!'§[§,#X§] = new OpCode(§,#X§,3,42,0);
         §9!'§[§,# §] = new OpCode(§,# §,2,43,0);
         §9!'§[§=^§] = new OpCode(§=^§,3,44,0);
         §9!'§[§ #n§] = new OpCode(§ #n§,3,45,0);
         §9"V§[§7"W§] = new Sampler(§7"W§,§>"k§,0);
         §9"V§[DXT1] = new Sampler(DXT1,§>"k§,1);
         §9"V§[DXT5] = new Sampler(DXT5,§>"k§,2);
         §9"V§[§&o§] = new Sampler(§&o§,§>"k§,3);
         §9"V§[D2] = new Sampler(D2,§2"1§,0);
         §9"V§[D3] = new Sampler(D3,§2"1§,2);
         §9"V§[§,`§] = new Sampler(§,`§,§2"1§,1);
         §9"V§[§'!n§] = new Sampler(§'!n§,§0!$§,1);
         §9"V§[§8#N§] = new Sampler(§8#N§,§0!$§,2);
         §9"V§[§]#>§] = new Sampler(§]#>§,§0!$§,0);
         §9"V§[§^"v§] = new Sampler(§^"v§,§0!$§,0);
         §9"V§[§'&§] = new Sampler(§'&§,§@e§,0);
         §9"V§[§'"X§] = new Sampler(§'"X§,§@e§,1);
         §9"V§[§,!F§] = new Sampler(§,!F§,§!#o§,1 << 0);
         §9"V§[§"J§] = new Sampler(§"J§,§!#o§,1 << 1);
         §9"V§[§""?§] = new Sampler(§""?§,§!#o§,1 << 2);
         §9"V§[§,"6§] = new Sampler(§,"6§,§@5§,1);
         §9"V§[§`$§] = new Sampler(§`$§,§@5§,1);
         §9"V§[§[#z§] = new Sampler(§[#z§,§@5§,0);
      }
      
      public function get error() : String
      {
         return this.§^!%§;
      }
      
      public function get §4"z§() : ByteArray
      {
         return this.§^!J§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§2#1§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§2#1§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §2#1§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3573
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function §,9§(param1:uint, param2:Boolean) : void
      {
         §<!w§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§0"z§ | §[!t§);
         §<!w§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§0"z§ | §[!t§);
         §<!w§[§4x§] = new Register(§4x§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§0"z§ | §9#r§ | §[!t§);
         §<!w§[§5!I§] = new Register(§5!I§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§0"z§ | §9#r§);
         §<!w§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§0"z§ | §1"a§ | §[!t§ | §9#r§);
         §<!w§[§<;§] = new Register(§<;§,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§1"a§ | §[!t§);
         §<!w§[§4"$§] = new Register(§4"$§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§1"a§ | §9#r§ | §[!t§);
         §<!w§[§+#K§] = new Register(§+#K§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§1"a§ | §[!t§);
         §<!w§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§1"a§ | §9#r§);
         §<!w§[§##<§] = new Register(§##<§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§1"a§ | §9#r§);
         §<!w§["op"] = §<!w§[§5!I§];
         §<!w§["i"] = §<!w§[VI];
         §<!w§["v"] = §<!w§[VI];
         §<!w§["oc"] = §<!w§[FO];
         §<!w§["od"] = §<!w§[§##<§];
         §<!w§["fi"] = §<!w§[VI];
      }
   }
}

class OpCode
{
    
   
   private var _emitCode:uint;
   
   private var _flags:uint;
   
   private var _name:String;
   
   private var _numRegister:uint;
   
   function OpCode(param1:String, param2:uint, param3:uint, param4:uint)
   {
      super();
      this._name = param1;
      this._numRegister = param2;
      this._emitCode = param3;
      this._flags = param4;
   }
   
   public function get emitCode() : uint
   {
      return this._emitCode;
   }
   
   public function get flags() : uint
   {
      return this._flags;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function get numRegister() : uint
   {
      return this._numRegister;
   }
   
   public function toString() : String
   {
      return "[OpCode name=\"" + this._name + "\", numRegister=" + this._numRegister + ", emitCode=" + this._emitCode + ", flags=" + this._flags + "]";
   }
}

class Register
{
    
   
   private var _emitCode:uint;
   
   private var _name:String;
   
   private var _longName:String;
   
   private var _flags:uint;
   
   private var _range:uint;
   
   function Register(param1:String, param2:String, param3:uint, param4:uint, param5:uint)
   {
      super();
      this._name = param1;
      this._longName = param2;
      this._emitCode = param3;
      this._range = param4;
      this._flags = param5;
   }
   
   public function get emitCode() : uint
   {
      return this._emitCode;
   }
   
   public function get longName() : String
   {
      return this._longName;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function get flags() : uint
   {
      return this._flags;
   }
   
   public function get range() : uint
   {
      return this._range;
   }
   
   public function toString() : String
   {
      return "[Register name=\"" + this._name + "\", longName=\"" + this._longName + "\", emitCode=" + this._emitCode + ", range=" + this._range + ", flags=" + this._flags + "]";
   }
}

class Sampler
{
    
   
   private var _flag:uint;
   
   private var _mask:uint;
   
   private var _name:String;
   
   function Sampler(param1:String, param2:uint, param3:uint)
   {
      super();
      this._name = param1;
      this._flag = param2;
      this._mask = param3;
   }
   
   public function get flag() : uint
   {
      return this._flag;
   }
   
   public function get mask() : uint
   {
      return this._mask;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function toString() : String
   {
      return "[Sampler name=\"" + this._name + "\", flag=\"" + this._flag + "\", mask=" + this.mask + "]";
   }
}
