package § G§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §5$8§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §&#y§:Dictionary = new Dictionary();
      
      private static const §3!f§:Dictionary = new Dictionary();
      
      private static const §`F§:Dictionary = new Dictionary();
      
      private static const §9$$§:int = 4;
      
      private static const §,!U§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!#@§:uint = 8;
      
      private static const §3$>§:uint = 12;
      
      private static const §'#M§:uint = 16;
      
      private static const §#!j§:uint = 20;
      
      private static const §8#J§:uint = 24;
      
      private static const §1#G§:uint = 28;
      
      private static const §9U§:uint = 1;
      
      private static const §9"'§:uint = 2;
      
      private static const §5#;§:uint = 32;
      
      private static const §-#U§:uint = 64;
      
      private static const §##4§:uint = 1;
      
      private static const §]!]§:uint = 8;
      
      private static const §%$,§:uint = 16;
      
      private static const §0P§:uint = 32;
      
      private static const §=!z§:uint = 64;
      
      private static const §4"0§:uint = 128;
      
      private static const §;,§:uint = 256;
      
      private static const §#C§:uint = 512;
      
      private static const § $&§:uint = 1024;
      
      private static const §9w§:String = "mov";
      
      private static const §!6§:String = "add";
      
      private static const §!"M§:String = "sub";
      
      private static const §8"j§:String = "mul";
      
      private static const §="k§:String = "div";
      
      private static const §1#<§:String = "rcp";
      
      private static const §,"C§:String = "min";
      
      private static const §;!8§:String = "max";
      
      private static const §]"Y§:String = "frc";
      
      private static const §-#,§:String = "sqt";
      
      private static const §9!i§:String = "rsq";
      
      private static const §9!S§:String = "pow";
      
      private static const §`!^§:String = "log";
      
      private static const §0!k§:String = "exp";
      
      private static const §0"]§:String = "nrm";
      
      private static const §%!f§:String = "sin";
      
      private static const §]#§:String = "cos";
      
      private static const §6!%§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §8!w§:String = "abs";
      
      private static const §6#@§:String = "neg";
      
      private static const §7#N§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §5n§:String = "ddx";
      
      private static const §4H§:String = "ddy";
      
      private static const §7!_§:String = "ife";
      
      private static const §+!F§:String = "ine";
      
      private static const §,!c§:String = "ifg";
      
      private static const §9L§:String = "ifl";
      
      private static const §4!8§:String = "els";
      
      private static const §[#$§:String = "eif";
      
      private static const §-^§:String = "ted";
      
      private static const §while§:String = "kil";
      
      private static const §?!W§:String = "tex";
      
      private static const §##G§:String = "sge";
      
      private static const §!F§:String = "slt";
      
      private static const §?# §:String = "sgn";
      
      private static const §<"3§:String = "seq";
      
      private static const §@O§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §&!,§:String = "vt";
      
      private static const §3"4§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const §`" §:String = "fc";
      
      private static const §%#F§:String = "ft";
      
      private static const §5!w§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §>#C§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&#-§:String = "cube";
      
      private static const §;"n§:String = "mipnearest";
      
      private static const §5#P§:String = "miplinear";
      
      private static const §6#f§:String = "mipnone";
      
      private static const §;7§:String = "nomip";
      
      private static const §]"u§:String = "nearest";
      
      private static const §@#m§:String = "linear";
      
      private static const §;$'§:String = "centroid";
      
      private static const §^Y§:String = "single";
      
      private static const §+!1§:String = "ignoresampler";
      
      private static const §7#y§:String = "repeat";
      
      private static const §]!8§:String = "wrap";
      
      private static const §4$7§:String = "clamp";
      
      private static const §,"x§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §6"K§:String = "video";
       
      
      private var §!"Z§:ByteArray = null;
      
      private var §60§:String = "";
      
      private var §##u§:Boolean = false;
      
      public var §<$#§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§##u§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §&#y§[§9w§] = new OpCode(§9w§,2,0,0);
         §&#y§[§!6§] = new OpCode(§!6§,3,1,0);
         §&#y§[§!"M§] = new OpCode(§!"M§,3,2,0);
         §&#y§[§8"j§] = new OpCode(§8"j§,3,3,0);
         §&#y§[§="k§] = new OpCode(§="k§,3,4,0);
         §&#y§[§1#<§] = new OpCode(§1#<§,2,5,0);
         §&#y§[§,"C§] = new OpCode(§,"C§,3,6,0);
         §&#y§[§;!8§] = new OpCode(§;!8§,3,7,0);
         §&#y§[§]"Y§] = new OpCode(§]"Y§,2,8,0);
         §&#y§[§-#,§] = new OpCode(§-#,§,2,9,0);
         §&#y§[§9!i§] = new OpCode(§9!i§,2,10,0);
         §&#y§[§9!S§] = new OpCode(§9!S§,3,11,0);
         §&#y§[§`!^§] = new OpCode(§`!^§,2,12,0);
         §&#y§[§0!k§] = new OpCode(§0!k§,2,13,0);
         §&#y§[§0"]§] = new OpCode(§0"]§,2,14,0);
         §&#y§[§%!f§] = new OpCode(§%!f§,2,15,0);
         §&#y§[§]#§] = new OpCode(§]#§,2,16,0);
         §&#y§[§6!%§] = new OpCode(§6!%§,3,17,0);
         §&#y§[DP3] = new OpCode(DP3,3,18,0);
         §&#y§[DP4] = new OpCode(DP4,3,19,0);
         §&#y§[§8!w§] = new OpCode(§8!w§,2,20,0);
         §&#y§[§6#@§] = new OpCode(§6#@§,2,21,0);
         §&#y§[§7#N§] = new OpCode(§7#N§,2,22,0);
         §&#y§[M33] = new OpCode(M33,3,23,§%$,§);
         §&#y§[M44] = new OpCode(M44,3,24,§%$,§);
         §&#y§[M34] = new OpCode(M34,3,25,§%$,§);
         §&#y§[§5n§] = new OpCode(§5n§,2,26,§;,§ | §0P§);
         §&#y§[§4H§] = new OpCode(§4H§,2,27,§;,§ | §0P§);
         §&#y§[§7!_§] = new OpCode(§7!_§,2,28,§4"0§ | §;,§ | §#C§ | §##4§);
         §&#y§[§+!F§] = new OpCode(§+!F§,2,29,§4"0§ | §;,§ | §#C§ | §##4§);
         §&#y§[§,!c§] = new OpCode(§,!c§,2,30,§4"0§ | §;,§ | §#C§ | §##4§);
         §&#y§[§9L§] = new OpCode(§9L§,2,31,§4"0§ | §;,§ | §#C§ | §##4§);
         §&#y§[§4!8§] = new OpCode(§4!8§,0,32,§4"0§ | §;,§ | §#C§ | § $&§ | §##4§);
         §&#y§[§[#$§] = new OpCode(§[#$§,0,33,§4"0§ | §;,§ | § $&§ | §##4§);
         §&#y§[§-^§] = new OpCode(§-^§,3,38,§0P§ | §]!]§ | §;,§);
         §&#y§[§while§] = new OpCode(§while§,1,39,§4"0§ | §0P§);
         §&#y§[§?!W§] = new OpCode(§?!W§,3,40,§0P§ | §]!]§);
         §&#y§[§##G§] = new OpCode(§##G§,3,41,0);
         §&#y§[§!F§] = new OpCode(§!F§,3,42,0);
         §&#y§[§?# §] = new OpCode(§?# §,2,43,0);
         §&#y§[§<"3§] = new OpCode(§<"3§,3,44,0);
         §&#y§[§@O§] = new OpCode(§@O§,3,45,0);
         §`F§[§,"x§] = new Sampler(§,"x§,§!#@§,0);
         §`F§[DXT1] = new Sampler(DXT1,§!#@§,1);
         §`F§[DXT5] = new Sampler(DXT5,§!#@§,2);
         §`F§[§6"K§] = new Sampler(§6"K§,§!#@§,3);
         §`F§[D2] = new Sampler(D2,§3$>§,0);
         §`F§[D3] = new Sampler(D3,§3$>§,2);
         §`F§[§&#-§] = new Sampler(§&#-§,§3$>§,1);
         §`F§[§;"n§] = new Sampler(§;"n§,§8#J§,1);
         §`F§[§5#P§] = new Sampler(§5#P§,§8#J§,2);
         §`F§[§6#f§] = new Sampler(§6#f§,§8#J§,0);
         §`F§[§;7§] = new Sampler(§;7§,§8#J§,0);
         §`F§[§]"u§] = new Sampler(§]"u§,§1#G§,0);
         §`F§[§@#m§] = new Sampler(§@#m§,§1#G§,1);
         §`F§[§;$'§] = new Sampler(§;$'§,§'#M§,1 << 0);
         §`F§[§^Y§] = new Sampler(§^Y§,§'#M§,1 << 1);
         §`F§[§+!1§] = new Sampler(§+!1§,§'#M§,1 << 2);
         §`F§[§7#y§] = new Sampler(§7#y§,§#!j§,1);
         §`F§[§]!8§] = new Sampler(§]!8§,§#!j§,1);
         §`F§[§4$7§] = new Sampler(§4$7§,§#!j§,0);
      }
      
      public function get error() : String
      {
         return this.§60§;
      }
      
      public function get §;$D§() : ByteArray
      {
         return this.§!"Z§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§6$!§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§6$!§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §6$!§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
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
         this.§!"Z§ = new ByteArray();
         this.§60§ = "";
         var _loc6_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc6_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§60§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§;$D§.endian = Endian.LITTLE_ENDIAN;
         this.§;$D§.writeByte(160);
         this.§;$D§.writeUnsignedInt(param3);
         this.§;$D§.writeByte(161);
         this.§;$D§.writeByte(!!_loc6_ ? 1 : 0);
         this.§!"N§(param3,param4);
         var _loc7_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc9_:int = 0;
         var _loc11_:int = _loc7_.length;
         _loc10_ = 0;
         while(_loc10_ < _loc11_ && this.§60§ == "")
         {
            if((_loc13_ = (_loc12_ = (_loc12_ = new String(_loc7_[_loc10_])).replace(§5$8§,"")).search("//")) != -1)
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
               _loc17_ = §&#y§[_loc16_[0]];
               if(!this.§##u§)
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
                  if(_loc17_.flags & §;,§ && param3 < 2)
                  {
                     this.§60§ = "error: opcode requires version 2.";
                     break;
                  }
                  if(_loc17_.flags & §=!z§ && _loc6_)
                  {
                     this.§60§ = "error: opcode is only allowed in vertex programs.";
                     break;
                  }
                  if(_loc17_.flags & §0P§ && !_loc6_)
                  {
                     this.§60§ = "error: opcode is only allowed in fragment programs.";
                     break;
                  }
                  if(!this.§<$#§)
                  {
                  }
                  this.§;$D§.writeUnsignedInt(_loc17_.emitCode);
                  _loc9_++;
                  if(_loc9_ > §,!U§)
                  {
                     this.§60§ = "error: too many opcodes. maximum is " + §,!U§ + ".";
                     break;
                  }
                  if(!(_loc18_ = _loc12_.match(/vc\[([vof][acostdip]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][acostdip]?)(\d*)?(\.[xyzw]{1,4})?/gi)) || _loc18_.length != _loc17_.numRegister)
                  {
                     this.§60§ = "error: wrong number of operands. found " + _loc18_.length + " but expected " + _loc17_.numRegister + ".";
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
                        if(!this.§<$#§)
                        {
                        }
                        _loc23_ = true;
                     }
                     if(!(_loc25_ = _loc18_[_loc22_].match(/^\b[A-Za-z]{1,2}/ig)))
                     {
                        this.§60§ = "error: could not parse operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     _loc26_ = §3!f§[_loc25_[0]];
                     if(!this.§##u§)
                     {
                     }
                     if(_loc26_ == null)
                     {
                        this.§60§ = "error: could not find register name for operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc26_.flags & §5#;§))
                        {
                           this.§60§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in vertex programs.";
                           _loc19_ = true;
                           break;
                        }
                        if(_loc23_)
                        {
                           this.§60§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") relative adressing not allowed in fragment programs.";
                           _loc19_ = true;
                           break;
                        }
                     }
                     else if(!(_loc26_.flags & §-#U§))
                     {
                        this.§60§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in fragment programs.";
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
                        this.§60§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") index exceeds limit of " + (_loc26_.range + 1) + ".";
                        _loc19_ = true;
                        break;
                     }
                     _loc29_ = 0;
                     _loc30_ = _loc18_[_loc22_].match(/(\.[xyzw]{1,4})/);
                     _loc31_ = _loc22_ == 0 && !(_loc17_.flags & §4"0§);
                     _loc32_ = _loc22_ == 2 && _loc17_.flags & §]!]§;
                     _loc33_ = 0;
                     _loc34_ = 0;
                     _loc35_ = 0;
                     if(_loc31_ && _loc23_)
                     {
                        this.§60§ = "error: relative can not be destination";
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
                        if((_loc40_ = §3!f§[_loc39_[0]]) == null)
                        {
                           this.§60§ = "error: bad index register";
                           _loc19_ = true;
                           break;
                        }
                        _loc33_ = _loc40_.emitCode;
                        if((_loc41_ = _loc24_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                        {
                           this.§60§ = "error: bad index register select";
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
                           this.§60§ = "error: index offset " + _loc35_ + " out of bounds. [0..255]";
                           _loc19_ = true;
                           break;
                        }
                        if(!this.§<$#§)
                        {
                        }
                     }
                     if(!this.§<$#§)
                     {
                     }
                     if(_loc31_)
                     {
                        this.§;$D§.writeShort(_loc28_);
                        this.§;$D§.writeByte(_loc29_);
                        this.§;$D§.writeByte(_loc26_.emitCode);
                        _loc20_ -= 32;
                     }
                     else if(_loc32_)
                     {
                        if(!this.§<$#§)
                        {
                        }
                        _loc43_ = 5;
                        _loc44_ = _loc15_ == null ? uint(0) : uint(_loc15_.length);
                        _loc45_ = 0;
                        _loc38_ = 0;
                        while(_loc38_ < _loc44_)
                        {
                           if(!this.§<$#§)
                           {
                           }
                           if((_loc46_ = §`F§[_loc15_[_loc38_]]) == null)
                           {
                              _loc45_ = Number(_loc15_[_loc38_]);
                              if(!this.§<$#§)
                              {
                              }
                           }
                           else
                           {
                              if(_loc46_.flag != §'#M§)
                              {
                                 _loc43_ &= ~(15 << _loc46_.flag);
                              }
                              _loc43_ |= uint(_loc46_.mask) << uint(_loc46_.flag);
                           }
                           _loc38_++;
                        }
                        this.§;$D§.writeShort(_loc28_);
                        this.§;$D§.writeByte(int(_loc45_ * 8));
                        this.§;$D§.writeByte(0);
                        this.§;$D§.writeUnsignedInt(_loc43_);
                        if(!this.§<$#§)
                        {
                        }
                        _loc20_ -= 64;
                     }
                     else
                     {
                        if(_loc22_ == 0)
                        {
                           this.§;$D§.writeUnsignedInt(0);
                           _loc20_ -= 32;
                        }
                        this.§;$D§.writeShort(_loc28_);
                        this.§;$D§.writeByte(_loc35_);
                        this.§;$D§.writeByte(_loc29_);
                        this.§;$D§.writeByte(_loc26_.emitCode);
                        this.§;$D§.writeByte(_loc33_);
                        this.§;$D§.writeShort(!!_loc23_ ? _loc34_ | 1 << 15 : 0);
                        _loc20_ -= 64;
                     }
                     _loc22_++;
                  }
                  _loc22_ = 0;
                  while(_loc22_ < _loc20_)
                  {
                     this.§;$D§.writeByte(0);
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
         if(this.§60§ != "")
         {
            this.§60§ += "\n  at line " + _loc10_ + " " + _loc7_[_loc10_];
            this.§;$D§.length = 0;
         }
         if(this.§##u§)
         {
            _loc47_ = "generated bytecode:";
            _loc48_ = this.§;$D§.length;
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
               if((_loc50_ = this.§;$D§[_loc49_].toString(16)).length < 2)
               {
                  _loc50_ = "0" + _loc50_;
               }
               _loc47_ += _loc50_;
               _loc49_++;
            }
         }
         if(!this.§<$#§)
         {
         }
         return this.§;$D§;
      }
      
      private function §!"N§(param1:uint, param2:Boolean) : void
      {
         §3!f§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§-#U§ | §9"'§);
         §3!f§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§-#U§ | §9"'§);
         §3!f§[§&!,§] = new Register(§&!,§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§-#U§ | §9U§ | §9"'§);
         §3!f§[§3"4§] = new Register(§3"4§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§-#U§ | §9U§);
         §3!f§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§-#U§ | §5#;§ | §9"'§ | §9U§);
         §3!f§[§`" §] = new Register(§`" §,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§5#;§ | §9"'§);
         §3!f§[§%#F§] = new Register(§%#F§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§5#;§ | §9U§ | §9"'§);
         §3!f§[§5!w§] = new Register(§5!w§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§5#;§ | §9"'§);
         §3!f§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§5#;§ | §9U§);
         §3!f§[§>#C§] = new Register(§>#C§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§5#;§ | §9U§);
         §3!f§["op"] = §3!f§[§3"4§];
         §3!f§["i"] = §3!f§[VI];
         §3!f§["v"] = §3!f§[VI];
         §3!f§["oc"] = §3!f§[FO];
         §3!f§["od"] = §3!f§[§>#C§];
         §3!f§["fi"] = §3!f§[VI];
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
