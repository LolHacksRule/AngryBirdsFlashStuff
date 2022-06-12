package §9#U§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §#"I§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §5#F§:Dictionary = new Dictionary();
      
      private static const §;#7§:Dictionary = new Dictionary();
      
      private static const § !2§:Dictionary = new Dictionary();
      
      private static const §9!'§:int = 4;
      
      private static const §2#P§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §`#5§:uint = 8;
      
      private static const §8#]§:uint = 12;
      
      private static const §["k§:uint = 16;
      
      private static const §>'§:uint = 20;
      
      private static const §;!J§:uint = 24;
      
      private static const §@!W§:uint = 28;
      
      private static const §@"X§:uint = 1;
      
      private static const §&l§:uint = 2;
      
      private static const §&#D§:uint = 32;
      
      private static const §,#C§:uint = 64;
      
      private static const §-"g§:uint = 1;
      
      private static const §8"8§:uint = 8;
      
      private static const §<"r§:uint = 16;
      
      private static const §!$+§:uint = 32;
      
      private static const §%!B§:uint = 64;
      
      private static const §%!3§:uint = 128;
      
      private static const §'!A§:uint = 256;
      
      private static const §;^§:uint = 512;
      
      private static const §4#o§:uint = 1024;
      
      private static const §6#^§:String = "mov";
      
      private static const §+"]§:String = "add";
      
      private static const §#!l§:String = "sub";
      
      private static const §@#g§:String = "mul";
      
      private static const §@#0§:String = "div";
      
      private static const §,#Z§:String = "rcp";
      
      private static const §^#g§:String = "min";
      
      private static const §'4§:String = "max";
      
      private static const §?E§:String = "frc";
      
      private static const §`$-§:String = "sqt";
      
      private static const §,#z§:String = "rsq";
      
      private static const §-"_§:String = "pow";
      
      private static const §&!H§:String = "log";
      
      private static const §=!q§:String = "exp";
      
      private static const §""k§:String = "nrm";
      
      private static const §]"P§:String = "sin";
      
      private static const §@#E§:String = "cos";
      
      private static const §^!z§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §&z§:String = "abs";
      
      private static const §?#S§:String = "neg";
      
      private static const §6]§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const § !c§:String = "ddx";
      
      private static const §9"s§:String = "ddy";
      
      private static const §'#u§:String = "ife";
      
      private static const §]#A§:String = "ine";
      
      private static const §!!'§:String = "ifg";
      
      private static const §`"F§:String = "ifl";
      
      private static const §5#t§:String = "els";
      
      private static const §;#q§:String = "eif";
      
      private static const §+"m§:String = "ted";
      
      private static const §@#b§:String = "kil";
      
      private static const §;>§:String = "tex";
      
      private static const §[L§:String = "sge";
      
      private static const §2#r§:String = "slt";
      
      private static const § !s§:String = "sgn";
      
      private static const §<#&§:String = "seq";
      
      private static const §>#m§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §6u§:String = "vt";
      
      private static const §4!_§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const § $"§:String = "fc";
      
      private static const §["t§:String = "ft";
      
      private static const §7u§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §"#&§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §!#L§:String = "cube";
      
      private static const §3p§:String = "mipnearest";
      
      private static const §`+§:String = "miplinear";
      
      private static const §%"?§:String = "mipnone";
      
      private static const §%E§:String = "nomip";
      
      private static const §>#Q§:String = "nearest";
      
      private static const §"#9§:String = "linear";
      
      private static const §?!q§:String = "centroid";
      
      private static const §!#o§:String = "single";
      
      private static const §+![§:String = "ignoresampler";
      
      private static const §@w§:String = "repeat";
      
      private static const §;F§:String = "wrap";
      
      private static const §=k§:String = "clamp";
      
      private static const §+"@§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §2"w§:String = "video";
       
      
      private var §1#x§:ByteArray = null;
      
      private var §5!Z§:String = "";
      
      private var §^!"§:Boolean = false;
      
      public var §?!t§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§^!"§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §5#F§[§6#^§] = new OpCode(§6#^§,2,0,0);
         §5#F§[§+"]§] = new OpCode(§+"]§,3,1,0);
         §5#F§[§#!l§] = new OpCode(§#!l§,3,2,0);
         §5#F§[§@#g§] = new OpCode(§@#g§,3,3,0);
         §5#F§[§@#0§] = new OpCode(§@#0§,3,4,0);
         §5#F§[§,#Z§] = new OpCode(§,#Z§,2,5,0);
         §5#F§[§^#g§] = new OpCode(§^#g§,3,6,0);
         §5#F§[§'4§] = new OpCode(§'4§,3,7,0);
         §5#F§[§?E§] = new OpCode(§?E§,2,8,0);
         §5#F§[§`$-§] = new OpCode(§`$-§,2,9,0);
         §5#F§[§,#z§] = new OpCode(§,#z§,2,10,0);
         §5#F§[§-"_§] = new OpCode(§-"_§,3,11,0);
         §5#F§[§&!H§] = new OpCode(§&!H§,2,12,0);
         §5#F§[§=!q§] = new OpCode(§=!q§,2,13,0);
         §5#F§[§""k§] = new OpCode(§""k§,2,14,0);
         §5#F§[§]"P§] = new OpCode(§]"P§,2,15,0);
         §5#F§[§@#E§] = new OpCode(§@#E§,2,16,0);
         §5#F§[§^!z§] = new OpCode(§^!z§,3,17,0);
         §5#F§[DP3] = new OpCode(DP3,3,18,0);
         §5#F§[DP4] = new OpCode(DP4,3,19,0);
         §5#F§[§&z§] = new OpCode(§&z§,2,20,0);
         §5#F§[§?#S§] = new OpCode(§?#S§,2,21,0);
         §5#F§[§6]§] = new OpCode(§6]§,2,22,0);
         §5#F§[M33] = new OpCode(M33,3,23,§<"r§);
         §5#F§[M44] = new OpCode(M44,3,24,§<"r§);
         §5#F§[M34] = new OpCode(M34,3,25,§<"r§);
         §5#F§[§ !c§] = new OpCode(§ !c§,2,26,§'!A§ | §!$+§);
         §5#F§[§9"s§] = new OpCode(§9"s§,2,27,§'!A§ | §!$+§);
         §5#F§[§'#u§] = new OpCode(§'#u§,2,28,§%!3§ | §'!A§ | §;^§ | §-"g§);
         §5#F§[§]#A§] = new OpCode(§]#A§,2,29,§%!3§ | §'!A§ | §;^§ | §-"g§);
         §5#F§[§!!'§] = new OpCode(§!!'§,2,30,§%!3§ | §'!A§ | §;^§ | §-"g§);
         §5#F§[§`"F§] = new OpCode(§`"F§,2,31,§%!3§ | §'!A§ | §;^§ | §-"g§);
         §5#F§[§5#t§] = new OpCode(§5#t§,0,32,§%!3§ | §'!A§ | §;^§ | §4#o§ | §-"g§);
         §5#F§[§;#q§] = new OpCode(§;#q§,0,33,§%!3§ | §'!A§ | §4#o§ | §-"g§);
         §5#F§[§+"m§] = new OpCode(§+"m§,3,38,§!$+§ | §8"8§ | §'!A§);
         §5#F§[§@#b§] = new OpCode(§@#b§,1,39,§%!3§ | §!$+§);
         §5#F§[§;>§] = new OpCode(§;>§,3,40,§!$+§ | §8"8§);
         §5#F§[§[L§] = new OpCode(§[L§,3,41,0);
         §5#F§[§2#r§] = new OpCode(§2#r§,3,42,0);
         §5#F§[§ !s§] = new OpCode(§ !s§,2,43,0);
         §5#F§[§<#&§] = new OpCode(§<#&§,3,44,0);
         §5#F§[§>#m§] = new OpCode(§>#m§,3,45,0);
         § !2§[§+"@§] = new Sampler(§+"@§,§`#5§,0);
         § !2§[DXT1] = new Sampler(DXT1,§`#5§,1);
         § !2§[DXT5] = new Sampler(DXT5,§`#5§,2);
         § !2§[§2"w§] = new Sampler(§2"w§,§`#5§,3);
         § !2§[D2] = new Sampler(D2,§8#]§,0);
         § !2§[D3] = new Sampler(D3,§8#]§,2);
         § !2§[§!#L§] = new Sampler(§!#L§,§8#]§,1);
         § !2§[§3p§] = new Sampler(§3p§,§;!J§,1);
         § !2§[§`+§] = new Sampler(§`+§,§;!J§,2);
         § !2§[§%"?§] = new Sampler(§%"?§,§;!J§,0);
         § !2§[§%E§] = new Sampler(§%E§,§;!J§,0);
         § !2§[§>#Q§] = new Sampler(§>#Q§,§@!W§,0);
         § !2§[§"#9§] = new Sampler(§"#9§,§@!W§,1);
         § !2§[§?!q§] = new Sampler(§?!q§,§["k§,1 << 0);
         § !2§[§!#o§] = new Sampler(§!#o§,§["k§,1 << 1);
         § !2§[§+![§] = new Sampler(§+![§,§["k§,1 << 2);
         § !2§[§@w§] = new Sampler(§@w§,§>'§,1);
         § !2§[§;F§] = new Sampler(§;F§,§>'§,1);
         § !2§[§=k§] = new Sampler(§=k§,§>'§,0);
      }
      
      public function get error() : String
      {
         return this.§5!Z§;
      }
      
      public function get §-$!§() : ByteArray
      {
         return this.§1#x§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§@_§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§@_§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §@_§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
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
         uint(getTimer());
         this.§1#x§ = new ByteArray();
         this.§5!Z§ = "";
         var _loc6_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc6_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5!Z§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§-$!§.endian = Endian.LITTLE_ENDIAN;
         this.§-$!§.writeByte(160);
         this.§-$!§.writeUnsignedInt(param3);
         this.§-$!§.writeByte(161);
         this.§-$!§.writeByte(!!_loc6_ ? 1 : 0);
         this.§0C§(param3,param4);
         var _loc7_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc9_:int = 0;
         var _loc11_:int = _loc7_.length;
         _loc10_ = 0;
         while(_loc10_ < _loc11_ && this.§5!Z§ == "")
         {
            if((_loc13_ = (_loc12_ = (_loc12_ = new String(_loc7_[_loc10_])).replace(§#"I§,"")).search("//")) != -1)
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
               _loc17_ = §5#F§[_loc16_[0]];
               if(!this.§^!"§)
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
                  if(_loc17_.flags & §'!A§ && param3 < 2)
                  {
                     this.§5!Z§ = "error: opcode requires version 2.";
                     break;
                  }
                  if(_loc17_.flags & §%!B§ && _loc6_)
                  {
                     this.§5!Z§ = "error: opcode is only allowed in vertex programs.";
                     break;
                  }
                  if(_loc17_.flags & §!$+§ && !_loc6_)
                  {
                     this.§5!Z§ = "error: opcode is only allowed in fragment programs.";
                     break;
                  }
                  if(!this.§?!t§)
                  {
                  }
                  this.§-$!§.writeUnsignedInt(_loc17_.emitCode);
                  _loc9_++;
                  if(_loc9_ > §2#P§)
                  {
                     this.§5!Z§ = "error: too many opcodes. maximum is " + §2#P§ + ".";
                     break;
                  }
                  if(!(_loc18_ = _loc12_.match(/vc\[([vof][acostdip]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][acostdip]?)(\d*)?(\.[xyzw]{1,4})?/gi)) || _loc18_.length != _loc17_.numRegister)
                  {
                     this.§5!Z§ = "error: wrong number of operands. found " + _loc18_.length + " but expected " + _loc17_.numRegister + ".";
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
                        if(!this.§?!t§)
                        {
                        }
                        _loc23_ = true;
                     }
                     if(!(_loc25_ = _loc18_[_loc22_].match(/^\b[A-Za-z]{1,2}/ig)))
                     {
                        this.§5!Z§ = "error: could not parse operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     _loc26_ = §;#7§[_loc25_[0]];
                     if(!this.§^!"§)
                     {
                     }
                     if(_loc26_ == null)
                     {
                        this.§5!Z§ = "error: could not find register name for operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc26_.flags & §&#D§))
                        {
                           this.§5!Z§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in vertex programs.";
                           _loc19_ = true;
                           break;
                        }
                        if(_loc23_)
                        {
                           this.§5!Z§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") relative adressing not allowed in fragment programs.";
                           _loc19_ = true;
                           break;
                        }
                     }
                     else if(!(_loc26_.flags & §,#C§))
                     {
                        this.§5!Z§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in fragment programs.";
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
                        this.§5!Z§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") index exceeds limit of " + (_loc26_.range + 1) + ".";
                        _loc19_ = true;
                        break;
                     }
                     _loc29_ = 0;
                     _loc30_ = _loc18_[_loc22_].match(/(\.[xyzw]{1,4})/);
                     _loc31_ = _loc22_ == 0 && !(_loc17_.flags & §%!3§);
                     _loc32_ = _loc22_ == 2 && _loc17_.flags & §8"8§;
                     _loc33_ = 0;
                     _loc34_ = 0;
                     _loc35_ = 0;
                     if(_loc31_ && _loc23_)
                     {
                        this.§5!Z§ = "error: relative can not be destination";
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
                        if((_loc40_ = §;#7§[_loc39_[0]]) == null)
                        {
                           this.§5!Z§ = "error: bad index register";
                           _loc19_ = true;
                           break;
                        }
                        _loc33_ = _loc40_.emitCode;
                        if((_loc41_ = _loc24_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                        {
                           this.§5!Z§ = "error: bad index register select";
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
                           this.§5!Z§ = "error: index offset " + _loc35_ + " out of bounds. [0..255]";
                           _loc19_ = true;
                           break;
                        }
                        if(!this.§?!t§)
                        {
                        }
                     }
                     if(!this.§?!t§)
                     {
                     }
                     if(_loc31_)
                     {
                        this.§-$!§.writeShort(_loc28_);
                        this.§-$!§.writeByte(_loc29_);
                        this.§-$!§.writeByte(_loc26_.emitCode);
                        _loc20_ -= 32;
                     }
                     else if(_loc32_)
                     {
                        if(!this.§?!t§)
                        {
                        }
                        _loc43_ = 5;
                        _loc44_ = _loc15_ == null ? uint(0) : uint(_loc15_.length);
                        _loc45_ = 0;
                        _loc38_ = 0;
                        while(_loc38_ < _loc44_)
                        {
                           if(!this.§?!t§)
                           {
                           }
                           if((_loc46_ = § !2§[_loc15_[_loc38_]]) == null)
                           {
                              _loc45_ = Number(_loc15_[_loc38_]);
                              if(!this.§?!t§)
                              {
                              }
                           }
                           else
                           {
                              if(_loc46_.flag != §["k§)
                              {
                                 _loc43_ &= ~(15 << _loc46_.flag);
                              }
                              _loc43_ |= uint(_loc46_.mask) << uint(_loc46_.flag);
                           }
                           _loc38_++;
                        }
                        this.§-$!§.writeShort(_loc28_);
                        this.§-$!§.writeByte(int(_loc45_ * 8));
                        this.§-$!§.writeByte(0);
                        this.§-$!§.writeUnsignedInt(_loc43_);
                        if(!this.§?!t§)
                        {
                        }
                        _loc20_ -= 64;
                     }
                     else
                     {
                        if(_loc22_ == 0)
                        {
                           this.§-$!§.writeUnsignedInt(0);
                           _loc20_ -= 32;
                        }
                        this.§-$!§.writeShort(_loc28_);
                        this.§-$!§.writeByte(_loc35_);
                        this.§-$!§.writeByte(_loc29_);
                        this.§-$!§.writeByte(_loc26_.emitCode);
                        this.§-$!§.writeByte(_loc33_);
                        this.§-$!§.writeShort(!!_loc23_ ? _loc34_ | 1 << 15 : 0);
                        _loc20_ -= 64;
                     }
                     _loc22_++;
                  }
                  _loc22_ = 0;
                  while(_loc22_ < _loc20_)
                  {
                     this.§-$!§.writeByte(0);
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
         if(this.§5!Z§ != "")
         {
            this.§5!Z§ += "\n  at line " + _loc10_ + " " + _loc7_[_loc10_];
            this.§-$!§.length = 0;
         }
         if(this.§^!"§)
         {
            _loc47_ = "generated bytecode:";
            _loc48_ = this.§-$!§.length;
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
               if((_loc50_ = this.§-$!§[_loc49_].toString(16)).length < 2)
               {
                  _loc50_ = "0" + _loc50_;
               }
               _loc47_ += _loc50_;
               _loc49_++;
            }
         }
         if(!this.§?!t§)
         {
         }
         return this.§-$!§;
      }
      
      private function §0C§(param1:uint, param2:Boolean) : void
      {
         §;#7§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§,#C§ | §&l§);
         §;#7§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§,#C§ | §&l§);
         §;#7§[§6u§] = new Register(§6u§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§,#C§ | §@"X§ | §&l§);
         §;#7§[§4!_§] = new Register(§4!_§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§,#C§ | §@"X§);
         §;#7§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§,#C§ | §&#D§ | §&l§ | §@"X§);
         §;#7§[§ $"§] = new Register(§ $"§,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§&#D§ | §&l§);
         §;#7§[§["t§] = new Register(§["t§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§&#D§ | §@"X§ | §&l§);
         §;#7§[§7u§] = new Register(§7u§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§&#D§ | §&l§);
         §;#7§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§&#D§ | §@"X§);
         §;#7§[§"#&§] = new Register(§"#&§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§&#D§ | §@"X§);
         §;#7§["op"] = §;#7§[§4!_§];
         §;#7§["i"] = §;#7§[VI];
         §;#7§["v"] = §;#7§[VI];
         §;#7§["oc"] = §;#7§[FO];
         §;#7§["od"] = §;#7§[§"#&§];
         §;#7§["fi"] = §;#7§[VI];
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
