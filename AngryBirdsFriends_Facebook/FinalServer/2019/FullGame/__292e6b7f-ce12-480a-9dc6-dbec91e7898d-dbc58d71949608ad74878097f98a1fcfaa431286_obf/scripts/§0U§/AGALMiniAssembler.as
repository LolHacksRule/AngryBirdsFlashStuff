package §0U§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §>#Q§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §3#8§:Dictionary = new Dictionary();
      
      private static const §0#d§:Dictionary = new Dictionary();
      
      private static const §0!K§:Dictionary = new Dictionary();
      
      private static const §<"y§:int = 4;
      
      private static const §-"!§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §`#H§:uint = 8;
      
      private static const §8!H§:uint = 12;
      
      private static const §else §:uint = 16;
      
      private static const §?"v§:uint = 20;
      
      private static const § "§:uint = 24;
      
      private static const §+7§:uint = 28;
      
      private static const §@§:uint = 1;
      
      private static const §5#C§:uint = 2;
      
      private static const §8",§:uint = 32;
      
      private static const §7"a§:uint = 64;
      
      private static const §^!0§:uint = 1;
      
      private static const §,"=§:uint = 8;
      
      private static const §"h§:uint = 16;
      
      private static const §+"%§:uint = 32;
      
      private static const §%c§:uint = 64;
      
      private static const §`#j§:uint = 128;
      
      private static const §<t§:uint = 256;
      
      private static const §@!!§:uint = 512;
      
      private static const §>"?§:uint = 1024;
      
      private static const §6#S§:String = "mov";
      
      private static const §"-§:String = "add";
      
      private static const §0!m§:String = "sub";
      
      private static const §3!k§:String = "mul";
      
      private static const §]""§:String = "div";
      
      private static const §?#2§:String = "rcp";
      
      private static const §&#>§:String = "min";
      
      private static const §'!L§:String = "max";
      
      private static const § #^§:String = "frc";
      
      private static const §9"k§:String = "sqt";
      
      private static const §&",§:String = "rsq";
      
      private static const §3!2§:String = "pow";
      
      private static const §+#c§:String = "log";
      
      private static const §8!8§:String = "exp";
      
      private static const §6i§:String = "nrm";
      
      private static const §;#u§:String = "sin";
      
      private static const §5%§:String = "cos";
      
      private static const §#"?§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6$!§:String = "abs";
      
      private static const §,#u§:String = "neg";
      
      private static const §6!W§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §'$9§:String = "ddx";
      
      private static const §%e§:String = "ddy";
      
      private static const §6#,§:String = "ife";
      
      private static const §9"0§:String = "ine";
      
      private static const §<"$§:String = "ifg";
      
      private static const §^§:String = "ifl";
      
      private static const §2!%§:String = "els";
      
      private static const §2$D§:String = "eif";
      
      private static const §="A§:String = "ted";
      
      private static const §!"6§:String = "kil";
      
      private static const §[4§:String = "tex";
      
      private static const §<!§:String = "sge";
      
      private static const §+#p§:String = "slt";
      
      private static const §5"r§:String = "sgn";
      
      private static const §@#X§:String = "seq";
      
      private static const §4#3§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §3"e§:String = "vt";
      
      private static const §,#O§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const §00§:String = "fc";
      
      private static const §&!G§:String = "ft";
      
      private static const §9"j§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §+;§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §+#S§:String = "cube";
      
      private static const §0#<§:String = "mipnearest";
      
      private static const §6!m§:String = "miplinear";
      
      private static const §7!4§:String = "mipnone";
      
      private static const §>a§:String = "nomip";
      
      private static const §]"L§:String = "nearest";
      
      private static const §6#g§:String = "linear";
      
      private static const §0!d§:String = "centroid";
      
      private static const §3!N§:String = "single";
      
      private static const §`#P§:String = "ignoresampler";
      
      private static const § $A§:String = "repeat";
      
      private static const §="y§:String = "wrap";
      
      private static const §@_§:String = "clamp";
      
      private static const §4!l§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §+!1§:String = "video";
       
      
      private var §`#3§:ByteArray = null;
      
      private var §"#_§:String = "";
      
      private var §<"e§:Boolean = false;
      
      public var §;"`§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§<"e§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §3#8§[§6#S§] = new OpCode(§6#S§,2,0,0);
         §3#8§[§"-§] = new OpCode(§"-§,3,1,0);
         §3#8§[§0!m§] = new OpCode(§0!m§,3,2,0);
         §3#8§[§3!k§] = new OpCode(§3!k§,3,3,0);
         §3#8§[§]""§] = new OpCode(§]""§,3,4,0);
         §3#8§[§?#2§] = new OpCode(§?#2§,2,5,0);
         §3#8§[§&#>§] = new OpCode(§&#>§,3,6,0);
         §3#8§[§'!L§] = new OpCode(§'!L§,3,7,0);
         §3#8§[§ #^§] = new OpCode(§ #^§,2,8,0);
         §3#8§[§9"k§] = new OpCode(§9"k§,2,9,0);
         §3#8§[§&",§] = new OpCode(§&",§,2,10,0);
         §3#8§[§3!2§] = new OpCode(§3!2§,3,11,0);
         §3#8§[§+#c§] = new OpCode(§+#c§,2,12,0);
         §3#8§[§8!8§] = new OpCode(§8!8§,2,13,0);
         §3#8§[§6i§] = new OpCode(§6i§,2,14,0);
         §3#8§[§;#u§] = new OpCode(§;#u§,2,15,0);
         §3#8§[§5%§] = new OpCode(§5%§,2,16,0);
         §3#8§[§#"?§] = new OpCode(§#"?§,3,17,0);
         §3#8§[DP3] = new OpCode(DP3,3,18,0);
         §3#8§[DP4] = new OpCode(DP4,3,19,0);
         §3#8§[§6$!§] = new OpCode(§6$!§,2,20,0);
         §3#8§[§,#u§] = new OpCode(§,#u§,2,21,0);
         §3#8§[§6!W§] = new OpCode(§6!W§,2,22,0);
         §3#8§[M33] = new OpCode(M33,3,23,§"h§);
         §3#8§[M44] = new OpCode(M44,3,24,§"h§);
         §3#8§[M34] = new OpCode(M34,3,25,§"h§);
         §3#8§[§'$9§] = new OpCode(§'$9§,2,26,§<t§ | §+"%§);
         §3#8§[§%e§] = new OpCode(§%e§,2,27,§<t§ | §+"%§);
         §3#8§[§6#,§] = new OpCode(§6#,§,2,28,§`#j§ | §<t§ | §@!!§ | §^!0§);
         §3#8§[§9"0§] = new OpCode(§9"0§,2,29,§`#j§ | §<t§ | §@!!§ | §^!0§);
         §3#8§[§<"$§] = new OpCode(§<"$§,2,30,§`#j§ | §<t§ | §@!!§ | §^!0§);
         §3#8§[§^§] = new OpCode(§^§,2,31,§`#j§ | §<t§ | §@!!§ | §^!0§);
         §3#8§[§2!%§] = new OpCode(§2!%§,0,32,§`#j§ | §<t§ | §@!!§ | §>"?§ | §^!0§);
         §3#8§[§2$D§] = new OpCode(§2$D§,0,33,§`#j§ | §<t§ | §>"?§ | §^!0§);
         §3#8§[§="A§] = new OpCode(§="A§,3,38,§+"%§ | §,"=§ | §<t§);
         §3#8§[§!"6§] = new OpCode(§!"6§,1,39,§`#j§ | §+"%§);
         §3#8§[§[4§] = new OpCode(§[4§,3,40,§+"%§ | §,"=§);
         §3#8§[§<!§] = new OpCode(§<!§,3,41,0);
         §3#8§[§+#p§] = new OpCode(§+#p§,3,42,0);
         §3#8§[§5"r§] = new OpCode(§5"r§,2,43,0);
         §3#8§[§@#X§] = new OpCode(§@#X§,3,44,0);
         §3#8§[§4#3§] = new OpCode(§4#3§,3,45,0);
         §0!K§[§4!l§] = new Sampler(§4!l§,§`#H§,0);
         §0!K§[DXT1] = new Sampler(DXT1,§`#H§,1);
         §0!K§[DXT5] = new Sampler(DXT5,§`#H§,2);
         §0!K§[§+!1§] = new Sampler(§+!1§,§`#H§,3);
         §0!K§[D2] = new Sampler(D2,§8!H§,0);
         §0!K§[D3] = new Sampler(D3,§8!H§,2);
         §0!K§[§+#S§] = new Sampler(§+#S§,§8!H§,1);
         §0!K§[§0#<§] = new Sampler(§0#<§,§ "§,1);
         §0!K§[§6!m§] = new Sampler(§6!m§,§ "§,2);
         §0!K§[§7!4§] = new Sampler(§7!4§,§ "§,0);
         §0!K§[§>a§] = new Sampler(§>a§,§ "§,0);
         §0!K§[§]"L§] = new Sampler(§]"L§,§+7§,0);
         §0!K§[§6#g§] = new Sampler(§6#g§,§+7§,1);
         §0!K§[§0!d§] = new Sampler(§0!d§,§else §,1 << 0);
         §0!K§[§3!N§] = new Sampler(§3!N§,§else §,1 << 1);
         §0!K§[§`#P§] = new Sampler(§`#P§,§else §,1 << 2);
         §0!K§[§ $A§] = new Sampler(§ $A§,§?"v§,1);
         §0!K§[§="y§] = new Sampler(§="y§,§?"v§,1);
         §0!K§[§@_§] = new Sampler(§@_§,§?"v§,0);
      }
      
      public function get error() : String
      {
         return this.§"#_§;
      }
      
      public function get §&#I§() : ByteArray
      {
         return this.§`#3§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§,#q§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§,#q§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §,#q§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3629
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function §%$>§(param1:uint, param2:Boolean) : void
      {
         §0#d§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§7"a§ | §5#C§);
         §0#d§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§7"a§ | §5#C§);
         §0#d§[§3"e§] = new Register(§3"e§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§7"a§ | §@§ | §5#C§);
         §0#d§[§,#O§] = new Register(§,#O§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§7"a§ | §@§);
         §0#d§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§7"a§ | §8",§ | §5#C§ | §@§);
         §0#d§[§00§] = new Register(§00§,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§8",§ | §5#C§);
         §0#d§[§&!G§] = new Register(§&!G§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§8",§ | §@§ | §5#C§);
         §0#d§[§9"j§] = new Register(§9"j§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§8",§ | §5#C§);
         §0#d§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§8",§ | §@§);
         §0#d§[§+;§] = new Register(§+;§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§8",§ | §@§);
         §0#d§["op"] = §0#d§[§,#O§];
         §0#d§["i"] = §0#d§[VI];
         §0#d§["v"] = §0#d§[VI];
         §0#d§["oc"] = §0#d§[FO];
         §0#d§["od"] = §0#d§[§+;§];
         §0#d§["fi"] = §0#d§[VI];
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
