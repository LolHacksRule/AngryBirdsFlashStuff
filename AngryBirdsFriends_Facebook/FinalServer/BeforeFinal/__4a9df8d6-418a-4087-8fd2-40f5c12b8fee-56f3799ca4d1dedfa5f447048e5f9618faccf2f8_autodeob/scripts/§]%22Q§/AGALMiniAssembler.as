package §]"Q§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §@#6§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §^"1§:Dictionary = new Dictionary();
      
      private static const §2#9§:Dictionary = new Dictionary();
      
      private static const §&"m§:Dictionary = new Dictionary();
      
      private static const §[q§:int = 4;
      
      private static const §#"3§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §-"4§:uint = 8;
      
      private static const §7"#§:uint = 12;
      
      private static const §8#u§:uint = 16;
      
      private static const §3$<§:uint = 20;
      
      private static const §^#e§:uint = 24;
      
      private static const §6#x§:uint = 28;
      
      private static const §%"v§:uint = 1;
      
      private static const §8#N§:uint = 2;
      
      private static const §<!H§:uint = 32;
      
      private static const §?x§:uint = 64;
      
      private static const §<"l§:uint = 1;
      
      private static const §`!,§:uint = 8;
      
      private static const §1#K§:uint = 16;
      
      private static const §5$B§:uint = 32;
      
      private static const §6#]§:uint = 64;
      
      private static const §>!4§:uint = 128;
      
      private static const §##T§:uint = 256;
      
      private static const §+#I§:uint = 512;
      
      private static const §]!R§:uint = 1024;
      
      private static const §="A§:String = "mov";
      
      private static const §'!_§:String = "add";
      
      private static const §<!<§:String = "sub";
      
      private static const §^"x§:String = "mul";
      
      private static const §]!j§:String = "div";
      
      private static const §@# §:String = "rcp";
      
      private static const §-!M§:String = "min";
      
      private static const §<"z§:String = "max";
      
      private static const §9$1§:String = "frc";
      
      private static const §case§:String = "sqt";
      
      private static const §,!p§:String = "rsq";
      
      private static const §1"Z§:String = "pow";
      
      private static const §'F§:String = "log";
      
      private static const §#!^§:String = "exp";
      
      private static const §2!u§:String = "nrm";
      
      private static const §5"o§:String = "sin";
      
      private static const §3#q§:String = "cos";
      
      private static const §]!S§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §##O§:String = "abs";
      
      private static const §9#w§:String = "neg";
      
      private static const §,"x§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §@#&§:String = "ddx";
      
      private static const §-#2§:String = "ddy";
      
      private static const §`#<§:String = "ife";
      
      private static const §##C§:String = "ine";
      
      private static const §6!z§:String = "ifg";
      
      private static const §@#N§:String = "ifl";
      
      private static const §"$#§:String = "els";
      
      private static const §%"K§:String = "eif";
      
      private static const §8"C§:String = "ted";
      
      private static const §7&§:String = "kil";
      
      private static const §5#,§:String = "tex";
      
      private static const §3"7§:String = "sge";
      
      private static const §;"c§:String = "slt";
      
      private static const §]$D§:String = "sgn";
      
      private static const §%#;§:String = "seq";
      
      private static const §%"a§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §6!%§:String = "vt";
      
      private static const §+"4§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const §7!E§:String = "fc";
      
      private static const §,#P§:String = "ft";
      
      private static const §'!1§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §=^§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §<#v§:String = "cube";
      
      private static const §<+§:String = "mipnearest";
      
      private static const §1"-§:String = "miplinear";
      
      private static const §!# §:String = "mipnone";
      
      private static const §!!V§:String = "nomip";
      
      private static const §9#V§:String = "nearest";
      
      private static const §8!F§:String = "linear";
      
      private static const §3$%§:String = "centroid";
      
      private static const §1!U§:String = "single";
      
      private static const §^#]§:String = "ignoresampler";
      
      private static const §3"o§:String = "repeat";
      
      private static const §!#]§:String = "wrap";
      
      private static const §[$?§:String = "clamp";
      
      private static const §8S§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §+<§:String = "video";
       
      
      private var §9#g§:ByteArray = null;
      
      private var §5!E§:String = "";
      
      private var §3"C§:Boolean = false;
      
      public var §>!p§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§3"C§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §^"1§[§="A§] = new OpCode(§="A§,2,0,0);
         §^"1§[§'!_§] = new OpCode(§'!_§,3,1,0);
         §^"1§[§<!<§] = new OpCode(§<!<§,3,2,0);
         §^"1§[§^"x§] = new OpCode(§^"x§,3,3,0);
         §^"1§[§]!j§] = new OpCode(§]!j§,3,4,0);
         §^"1§[§@# §] = new OpCode(§@# §,2,5,0);
         §^"1§[§-!M§] = new OpCode(§-!M§,3,6,0);
         §^"1§[§<"z§] = new OpCode(§<"z§,3,7,0);
         §^"1§[§9$1§] = new OpCode(§9$1§,2,8,0);
         §^"1§[§case§] = new OpCode(§case§,2,9,0);
         §^"1§[§,!p§] = new OpCode(§,!p§,2,10,0);
         §^"1§[§1"Z§] = new OpCode(§1"Z§,3,11,0);
         §^"1§[§'F§] = new OpCode(§'F§,2,12,0);
         §^"1§[§#!^§] = new OpCode(§#!^§,2,13,0);
         §^"1§[§2!u§] = new OpCode(§2!u§,2,14,0);
         §^"1§[§5"o§] = new OpCode(§5"o§,2,15,0);
         §^"1§[§3#q§] = new OpCode(§3#q§,2,16,0);
         §^"1§[§]!S§] = new OpCode(§]!S§,3,17,0);
         §^"1§[DP3] = new OpCode(DP3,3,18,0);
         §^"1§[DP4] = new OpCode(DP4,3,19,0);
         §^"1§[§##O§] = new OpCode(§##O§,2,20,0);
         §^"1§[§9#w§] = new OpCode(§9#w§,2,21,0);
         §^"1§[§,"x§] = new OpCode(§,"x§,2,22,0);
         §^"1§[M33] = new OpCode(M33,3,23,§1#K§);
         §^"1§[M44] = new OpCode(M44,3,24,§1#K§);
         §^"1§[M34] = new OpCode(M34,3,25,§1#K§);
         §^"1§[§@#&§] = new OpCode(§@#&§,2,26,§##T§ | §5$B§);
         §^"1§[§-#2§] = new OpCode(§-#2§,2,27,§##T§ | §5$B§);
         §^"1§[§`#<§] = new OpCode(§`#<§,2,28,§>!4§ | §##T§ | §+#I§ | §<"l§);
         §^"1§[§##C§] = new OpCode(§##C§,2,29,§>!4§ | §##T§ | §+#I§ | §<"l§);
         §^"1§[§6!z§] = new OpCode(§6!z§,2,30,§>!4§ | §##T§ | §+#I§ | §<"l§);
         §^"1§[§@#N§] = new OpCode(§@#N§,2,31,§>!4§ | §##T§ | §+#I§ | §<"l§);
         §^"1§[§"$#§] = new OpCode(§"$#§,0,32,§>!4§ | §##T§ | §+#I§ | §]!R§ | §<"l§);
         §^"1§[§%"K§] = new OpCode(§%"K§,0,33,§>!4§ | §##T§ | §]!R§ | §<"l§);
         §^"1§[§8"C§] = new OpCode(§8"C§,3,38,§5$B§ | §`!,§ | §##T§);
         §^"1§[§7&§] = new OpCode(§7&§,1,39,§>!4§ | §5$B§);
         §^"1§[§5#,§] = new OpCode(§5#,§,3,40,§5$B§ | §`!,§);
         §^"1§[§3"7§] = new OpCode(§3"7§,3,41,0);
         §^"1§[§;"c§] = new OpCode(§;"c§,3,42,0);
         §^"1§[§]$D§] = new OpCode(§]$D§,2,43,0);
         §^"1§[§%#;§] = new OpCode(§%#;§,3,44,0);
         §^"1§[§%"a§] = new OpCode(§%"a§,3,45,0);
         §&"m§[§8S§] = new Sampler(§8S§,§-"4§,0);
         §&"m§[DXT1] = new Sampler(DXT1,§-"4§,1);
         §&"m§[DXT5] = new Sampler(DXT5,§-"4§,2);
         §&"m§[§+<§] = new Sampler(§+<§,§-"4§,3);
         §&"m§[D2] = new Sampler(D2,§7"#§,0);
         §&"m§[D3] = new Sampler(D3,§7"#§,2);
         §&"m§[§<#v§] = new Sampler(§<#v§,§7"#§,1);
         §&"m§[§<+§] = new Sampler(§<+§,§^#e§,1);
         §&"m§[§1"-§] = new Sampler(§1"-§,§^#e§,2);
         §&"m§[§!# §] = new Sampler(§!# §,§^#e§,0);
         §&"m§[§!!V§] = new Sampler(§!!V§,§^#e§,0);
         §&"m§[§9#V§] = new Sampler(§9#V§,§6#x§,0);
         §&"m§[§8!F§] = new Sampler(§8!F§,§6#x§,1);
         §&"m§[§3$%§] = new Sampler(§3$%§,§8#u§,1 << 0);
         §&"m§[§1!U§] = new Sampler(§1!U§,§8#u§,1 << 1);
         §&"m§[§^#]§] = new Sampler(§^#]§,§8#u§,1 << 2);
         §&"m§[§3"o§] = new Sampler(§3"o§,§3$<§,1);
         §&"m§[§!#]§] = new Sampler(§!#]§,§3$<§,1);
         §&"m§[§[$?§] = new Sampler(§[$?§,§3$<§,0);
      }
      
      public function get error() : String
      {
         return this.§5!E§;
      }
      
      public function get §&#j§() : ByteArray
      {
         return this.§9#g§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§5#?§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§5#?§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §5#?§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3629
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function §`"f§(param1:uint, param2:Boolean) : void
      {
         §2#9§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§?x§ | §8#N§);
         §2#9§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§?x§ | §8#N§);
         §2#9§[§6!%§] = new Register(§6!%§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§?x§ | §%"v§ | §8#N§);
         §2#9§[§+"4§] = new Register(§+"4§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§?x§ | §%"v§);
         §2#9§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§?x§ | §<!H§ | §8#N§ | §%"v§);
         §2#9§[§7!E§] = new Register(§7!E§,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§<!H§ | §8#N§);
         §2#9§[§,#P§] = new Register(§,#P§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§<!H§ | §%"v§ | §8#N§);
         §2#9§[§'!1§] = new Register(§'!1§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§<!H§ | §8#N§);
         §2#9§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§<!H§ | §%"v§);
         §2#9§[§=^§] = new Register(§=^§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§<!H§ | §%"v§);
         §2#9§["op"] = §2#9§[§+"4§];
         §2#9§["i"] = §2#9§[VI];
         §2#9§["v"] = §2#9§[VI];
         §2#9§["oc"] = §2#9§[FO];
         §2#9§["od"] = §2#9§[§=^§];
         §2#9§["fi"] = §2#9§[VI];
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
