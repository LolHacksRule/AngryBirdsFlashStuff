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
         var _loc10_:int = 0;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Array = null;
         var _loc16_:Array = null;
         var _loc17_:OpCode = null;
         var _loc18_:Array = null;
         var _loc19_:Boolean = false;
         var _loc20_:uint = 0;
         var _loc21_:uint = 0;
         var _loc22_:int = 0;
         var _loc23_:Boolean = false;
         var _loc24_:Array = null;
         var _loc25_:Array = null;
         var _loc26_:Register = null;
         var _loc27_:Array = null;
         var _loc28_:uint = 0;
         var _loc29_:uint = 0;
         var _loc30_:Array = null;
         var _loc31_:Boolean = false;
         var _loc32_:Boolean = false;
         var _loc33_:uint = 0;
         var _loc34_:uint = 0;
         var _loc35_:int = 0;
         var _loc36_:uint = 0;
         var _loc37_:uint = 0;
         var _loc38_:int = 0;
         var _loc39_:Array = null;
         var _loc40_:Register = null;
         var _loc41_:Array = null;
         var _loc42_:Array = null;
         var _loc43_:uint = 0;
         var _loc44_:uint = 0;
         var _loc45_:Number = NaN;
         var _loc46_:Sampler = null;
         var _loc47_:* = null;
         var _loc48_:uint = 0;
         var _loc49_:uint = 0;
         var _loc50_:String = null;
         var _loc5_:uint = getTimer();
         this.§9#g§ = new ByteArray();
         this.§5!E§ = "";
         var _loc6_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc6_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5!E§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§&#j§.endian = Endian.LITTLE_ENDIAN;
         this.§&#j§.writeByte(160);
         this.§&#j§.writeUnsignedInt(param3);
         this.§&#j§.writeByte(161);
         this.§&#j§.writeByte(!!_loc6_ ? 1 : 0);
         this.§`"f§(param3,param4);
         var _loc7_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc9_:int = 0;
         var _loc11_:int = _loc7_.length;
         _loc10_ = 0;
         while(_loc10_ < _loc11_ && this.§5!E§ == "")
         {
            if((_loc13_ = (_loc12_ = (_loc12_ = new String(_loc7_[_loc10_])).replace(§@#6§,"")).search("//")) != -1)
            {
               _loc12_ = _loc12_.slice(0,_loc13_);
            }
            if((_loc14_ = _loc12_.search(/<.*>/g)) != -1)
            {
               _loc15_ = _loc12_.slice(_loc14_).match(/([\w\.\-\+]+)/gi);
               _loc12_ = _loc12_.slice(0,_loc14_);
            }
            if(!(_loc16_ = _loc12_.match(/^\w{3}/ig)))
            {
               if(_loc12_.length >= 3)
               {
               }
            }
            else
            {
               _loc17_ = §^"1§[_loc16_[0]];
               if(!this.§3"C§)
               {
               }
               if(_loc17_ == null)
               {
                  if(_loc12_.length >= 3)
                  {
                  }
               }
               else
               {
                  _loc12_ = _loc12_.slice(_loc12_.search(_loc17_.name) + _loc17_.name.length);
                  if(_loc17_.flags & §##T§ && param3 < 2)
                  {
                     this.§5!E§ = "error: opcode requires version 2.";
                     break;
                  }
                  if(_loc17_.flags & §6#]§ && _loc6_)
                  {
                     this.§5!E§ = "error: opcode is only allowed in vertex programs.";
                     break;
                  }
                  if(_loc17_.flags & §5$B§ && !_loc6_)
                  {
                     this.§5!E§ = "error: opcode is only allowed in fragment programs.";
                     break;
                  }
                  if(!this.§>!p§)
                  {
                  }
                  this.§&#j§.writeUnsignedInt(_loc17_.emitCode);
                  _loc9_++;
                  if(_loc9_ > §#"3§)
                  {
                     this.§5!E§ = "error: too many opcodes. maximum is " + §#"3§ + ".";
                     break;
                  }
                  if(!(_loc18_ = _loc12_.match(/vc\[([vof][acostdip]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][acostdip]?)(\d*)?(\.[xyzw]{1,4})?/gi)) || _loc18_.length != _loc17_.numRegister)
                  {
                     this.§5!E§ = "error: wrong number of operands. found " + _loc18_.length + " but expected " + _loc17_.numRegister + ".";
                     break;
                  }
                  _loc19_ = false;
                  _loc20_ = 64 + 64 + 32;
                  _loc21_ = _loc18_.length;
                  _loc22_ = 0;
                  while(_loc22_ < _loc21_)
                  {
                     _loc23_ = false;
                     if((_loc24_ = _loc18_[_loc22_].match(/\[.*\]/ig)) && _loc24_.length > 0)
                     {
                        _loc18_[_loc22_] = _loc18_[_loc22_].replace(_loc24_[0],"0");
                        if(!this.§>!p§)
                        {
                        }
                        _loc23_ = true;
                     }
                     if(!(_loc25_ = _loc18_[_loc22_].match(/^\b[A-Za-z]{1,2}/ig)))
                     {
                        this.§5!E§ = "error: could not parse operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     _loc26_ = §2#9§[_loc25_[0]];
                     if(!this.§3"C§)
                     {
                     }
                     if(_loc26_ == null)
                     {
                        this.§5!E§ = "error: could not find register name for operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc26_.flags & §<!H§))
                        {
                           this.§5!E§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in vertex programs.";
                           _loc19_ = true;
                           break;
                        }
                        if(_loc23_)
                        {
                           this.§5!E§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") relative adressing not allowed in fragment programs.";
                           _loc19_ = true;
                           break;
                        }
                     }
                     else if(!(_loc26_.flags & §?x§))
                     {
                        this.§5!E§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in fragment programs.";
                        _loc19_ = true;
                        break;
                     }
                     _loc18_[_loc22_] = _loc18_[_loc22_].slice(_loc18_[_loc22_].search(_loc26_.name) + _loc26_.name.length);
                     _loc27_ = !!_loc23_ ? _loc24_[0].match(/\d+/) : _loc18_[_loc22_].match(/\d+/);
                     _loc28_ = 0;
                     if(_loc27_)
                     {
                        _loc28_ = uint(_loc27_[0]);
                     }
                     if(_loc26_.range < _loc28_)
                     {
                        this.§5!E§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") index exceeds limit of " + (_loc26_.range + 1) + ".";
                        _loc19_ = true;
                        break;
                     }
                     _loc29_ = 0;
                     _loc30_ = _loc18_[_loc22_].match(/(\.[xyzw]{1,4})/);
                     _loc31_ = _loc22_ == 0 && !(_loc17_.flags & §>!4§);
                     _loc32_ = _loc22_ == 2 && _loc17_.flags & §`!,§;
                     _loc33_ = 0;
                     _loc34_ = 0;
                     _loc35_ = 0;
                     if(_loc31_ && _loc23_)
                     {
                        this.§5!E§ = "error: relative can not be destination";
                        _loc19_ = true;
                        break;
                     }
                     if(_loc30_)
                     {
                        _loc29_ = 0;
                        _loc37_ = _loc30_[0].length;
                        _loc38_ = 1;
                        while(_loc38_ < _loc37_)
                        {
                           if((_loc36_ = _loc30_[0].charCodeAt(_loc38_) - "x".charCodeAt(0)) > 2)
                           {
                              _loc36_ = 3;
                           }
                           if(_loc31_)
                           {
                              _loc29_ |= 1 << _loc36_;
                           }
                           else
                           {
                              _loc29_ |= _loc36_ << (_loc38_ - 1 << 1);
                           }
                           _loc38_++;
                        }
                        if(!_loc31_)
                        {
                           while(_loc38_ <= 4)
                           {
                              _loc29_ |= _loc36_ << (_loc38_ - 1 << 1);
                              _loc38_++;
                           }
                        }
                     }
                     else
                     {
                        _loc29_ = !!_loc31_ ? uint(15) : uint(228);
                     }
                     if(_loc23_)
                     {
                        _loc39_ = _loc24_[0].match(/[A-Za-z]{1,2}/ig);
                        if((_loc40_ = §2#9§[_loc39_[0]]) == null)
                        {
                           this.§5!E§ = "error: bad index register";
                           _loc19_ = true;
                           break;
                        }
                        _loc33_ = _loc40_.emitCode;
                        if((_loc41_ = _loc24_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                        {
                           this.§5!E§ = "error: bad index register select";
                           _loc19_ = true;
                           break;
                        }
                        if((_loc34_ = _loc41_[0].charCodeAt(1) - "x".charCodeAt(0)) > 2)
                        {
                           _loc34_ = 3;
                        }
                        if((_loc42_ = _loc24_[0].match(/\+\d{1,3}/ig)).length > 0)
                        {
                           _loc35_ = _loc42_[0];
                        }
                        if(_loc35_ < 0 || _loc35_ > 255)
                        {
                           this.§5!E§ = "error: index offset " + _loc35_ + " out of bounds. [0..255]";
                           _loc19_ = true;
                           break;
                        }
                        if(!this.§>!p§)
                        {
                        }
                     }
                     if(!this.§>!p§)
                     {
                     }
                     if(_loc31_)
                     {
                        this.§&#j§.writeShort(_loc28_);
                        this.§&#j§.writeByte(_loc29_);
                        this.§&#j§.writeByte(_loc26_.emitCode);
                        _loc20_ -= 32;
                     }
                     else if(_loc32_)
                     {
                        if(!this.§>!p§)
                        {
                        }
                        _loc43_ = 5;
                        _loc44_ = _loc15_ == null ? uint(0) : uint(_loc15_.length);
                        _loc45_ = 0;
                        _loc38_ = 0;
                        while(_loc38_ < _loc44_)
                        {
                           if(!this.§>!p§)
                           {
                           }
                           if((_loc46_ = §&"m§[_loc15_[_loc38_]]) == null)
                           {
                              _loc45_ = Number(_loc15_[_loc38_]);
                              if(!this.§>!p§)
                              {
                              }
                           }
                           else
                           {
                              if(_loc46_.flag != §8#u§)
                              {
                                 _loc43_ &= ~(15 << _loc46_.flag);
                              }
                              _loc43_ |= uint(_loc46_.mask) << uint(_loc46_.flag);
                           }
                           _loc38_++;
                        }
                        this.§&#j§.writeShort(_loc28_);
                        this.§&#j§.writeByte(int(_loc45_ * 8));
                        this.§&#j§.writeByte(0);
                        this.§&#j§.writeUnsignedInt(_loc43_);
                        if(!this.§>!p§)
                        {
                        }
                        _loc20_ -= 64;
                     }
                     else
                     {
                        if(_loc22_ == 0)
                        {
                           this.§&#j§.writeUnsignedInt(0);
                           _loc20_ -= 32;
                        }
                        this.§&#j§.writeShort(_loc28_);
                        this.§&#j§.writeByte(_loc35_);
                        this.§&#j§.writeByte(_loc29_);
                        this.§&#j§.writeByte(_loc26_.emitCode);
                        this.§&#j§.writeByte(_loc33_);
                        this.§&#j§.writeShort(!!_loc23_ ? _loc34_ | 1 << 15 : 0);
                        _loc20_ -= 64;
                     }
                     _loc22_++;
                  }
                  _loc22_ = 0;
                  while(_loc22_ < _loc20_)
                  {
                     this.§&#j§.writeByte(0);
                     _loc22_ += 8;
                  }
                  if(_loc19_)
                  {
                     break;
                  }
               }
            }
            _loc10_++;
         }
         if(this.§5!E§ != "")
         {
            this.§5!E§ += "\n  at line " + _loc10_ + " " + _loc7_[_loc10_];
            this.§&#j§.length = 0;
         }
         if(this.§3"C§)
         {
            _loc47_ = "generated bytecode:";
            _loc48_ = this.§&#j§.length;
            _loc49_ = 0;
            while(_loc49_ < _loc48_)
            {
               if(!(_loc49_ % 16))
               {
                  _loc47_ += "\n";
               }
               if(!(_loc49_ % 4))
               {
                  _loc47_ += " ";
               }
               if((_loc50_ = this.§&#j§[_loc49_].toString(16)).length < 2)
               {
                  _loc50_ = "0" + _loc50_;
               }
               _loc47_ += _loc50_;
               _loc49_++;
            }
         }
         if(!this.§>!p§)
         {
         }
         return this.§&#j§;
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
