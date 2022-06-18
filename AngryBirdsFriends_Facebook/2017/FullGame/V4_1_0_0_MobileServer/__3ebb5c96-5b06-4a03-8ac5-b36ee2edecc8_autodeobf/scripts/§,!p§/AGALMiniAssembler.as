package §,!p§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §?"s§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §%[§:Dictionary = new Dictionary();
      
      private static const §-!0§:Dictionary = new Dictionary();
      
      private static const §-"w§:Dictionary = new Dictionary();
      
      private static const §7"_§:int = 4;
      
      private static const §&$$§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!c§:uint = 8;
      
      private static const §-$%§:uint = 12;
      
      private static const §1#S§:uint = 16;
      
      private static const §%"q§:uint = 20;
      
      private static const §4l§:uint = 24;
      
      private static const §<#b§:uint = 28;
      
      private static const §,$;§:uint = 1;
      
      private static const §2!y§:uint = 2;
      
      private static const §6o§:uint = 32;
      
      private static const §4"=§:uint = 64;
      
      private static const §<"h§:uint = 1;
      
      private static const §0!x§:uint = 8;
      
      private static const §@$>§:uint = 16;
      
      private static const §0#E§:uint = 32;
      
      private static const §?"-§:uint = 64;
      
      private static const §2j§:uint = 128;
      
      private static const §9$5§:uint = 256;
      
      private static const §=#d§:uint = 512;
      
      private static const §8!%§:uint = 1024;
      
      private static const §1!!§:String = "mov";
      
      private static const §;#5§:String = "add";
      
      private static const § r§:String = "sub";
      
      private static const §0"g§:String = "mul";
      
      private static const §4!d§:String = "div";
      
      private static const §6"+§:String = "rcp";
      
      private static const §[v§:String = "min";
      
      private static const §9y§:String = "max";
      
      private static const §?@§:String = "frc";
      
      private static const §>_§:String = "sqt";
      
      private static const §-!D§:String = "rsq";
      
      private static const §=#p§:String = "pow";
      
      private static const §3![§:String = "log";
      
      private static const §2C§:String = "exp";
      
      private static const §]!=§:String = "nrm";
      
      private static const §>#+§:String = "sin";
      
      private static const §>#!§:String = "cos";
      
      private static const § q§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §?"=§:String = "abs";
      
      private static const §!$'§:String = "neg";
      
      private static const §9]§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §;!T§:String = "ddx";
      
      private static const §0D§:String = "ddy";
      
      private static const §^&§:String = "ife";
      
      private static const §;!3§:String = "ine";
      
      private static const §]"2§:String = "ifg";
      
      private static const §%#S§:String = "ifl";
      
      private static const §@7§:String = "els";
      
      private static const §1#U§:String = "eif";
      
      private static const §-!E§:String = "ted";
      
      private static const §3"s§:String = "kil";
      
      private static const §#"0§:String = "tex";
      
      private static const §4$,§:String = "sge";
      
      private static const §[#K§:String = "slt";
      
      private static const §1";§:String = "sgn";
      
      private static const §]#j§:String = "seq";
      
      private static const §07§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §="o§:String = "vt";
      
      private static const §^v§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const §=#o§:String = "fc";
      
      private static const §9!g§:String = "ft";
      
      private static const §2T§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §,#S§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §7#Y§:String = "cube";
      
      private static const §+#+§:String = "mipnearest";
      
      private static const §>u§:String = "miplinear";
      
      private static const §1!M§:String = "mipnone";
      
      private static const §9d§:String = "nomip";
      
      private static const §`#7§:String = "nearest";
      
      private static const §##f§:String = "linear";
      
      private static const §"!H§:String = "centroid";
      
      private static const §-!R§:String = "single";
      
      private static const §1#r§:String = "ignoresampler";
      
      private static const §;d§:String = "repeat";
      
      private static const §^$0§:String = "wrap";
      
      private static const §1!?§:String = "clamp";
      
      private static const §5"l§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §@"a§:String = "video";
       
      
      private var §"#_§:ByteArray = null;
      
      private var §%W§:String = "";
      
      private var §&#L§:Boolean = false;
      
      public var §36§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§&#L§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%[§[§1!!§] = new OpCode(§1!!§,2,0,0);
         §%[§[§;#5§] = new OpCode(§;#5§,3,1,0);
         §%[§[§ r§] = new OpCode(§ r§,3,2,0);
         §%[§[§0"g§] = new OpCode(§0"g§,3,3,0);
         §%[§[§4!d§] = new OpCode(§4!d§,3,4,0);
         §%[§[§6"+§] = new OpCode(§6"+§,2,5,0);
         §%[§[§[v§] = new OpCode(§[v§,3,6,0);
         §%[§[§9y§] = new OpCode(§9y§,3,7,0);
         §%[§[§?@§] = new OpCode(§?@§,2,8,0);
         §%[§[§>_§] = new OpCode(§>_§,2,9,0);
         §%[§[§-!D§] = new OpCode(§-!D§,2,10,0);
         §%[§[§=#p§] = new OpCode(§=#p§,3,11,0);
         §%[§[§3![§] = new OpCode(§3![§,2,12,0);
         §%[§[§2C§] = new OpCode(§2C§,2,13,0);
         §%[§[§]!=§] = new OpCode(§]!=§,2,14,0);
         §%[§[§>#+§] = new OpCode(§>#+§,2,15,0);
         §%[§[§>#!§] = new OpCode(§>#!§,2,16,0);
         §%[§[§ q§] = new OpCode(§ q§,3,17,0);
         §%[§[DP3] = new OpCode(DP3,3,18,0);
         §%[§[DP4] = new OpCode(DP4,3,19,0);
         §%[§[§?"=§] = new OpCode(§?"=§,2,20,0);
         §%[§[§!$'§] = new OpCode(§!$'§,2,21,0);
         §%[§[§9]§] = new OpCode(§9]§,2,22,0);
         §%[§[M33] = new OpCode(M33,3,23,§@$>§);
         §%[§[M44] = new OpCode(M44,3,24,§@$>§);
         §%[§[M34] = new OpCode(M34,3,25,§@$>§);
         §%[§[§;!T§] = new OpCode(§;!T§,2,26,§9$5§ | §0#E§);
         §%[§[§0D§] = new OpCode(§0D§,2,27,§9$5§ | §0#E§);
         §%[§[§^&§] = new OpCode(§^&§,2,28,§2j§ | §9$5§ | §=#d§ | §<"h§);
         §%[§[§;!3§] = new OpCode(§;!3§,2,29,§2j§ | §9$5§ | §=#d§ | §<"h§);
         §%[§[§]"2§] = new OpCode(§]"2§,2,30,§2j§ | §9$5§ | §=#d§ | §<"h§);
         §%[§[§%#S§] = new OpCode(§%#S§,2,31,§2j§ | §9$5§ | §=#d§ | §<"h§);
         §%[§[§@7§] = new OpCode(§@7§,0,32,§2j§ | §9$5§ | §=#d§ | §8!%§ | §<"h§);
         §%[§[§1#U§] = new OpCode(§1#U§,0,33,§2j§ | §9$5§ | §8!%§ | §<"h§);
         §%[§[§-!E§] = new OpCode(§-!E§,3,38,§0#E§ | §0!x§ | §9$5§);
         §%[§[§3"s§] = new OpCode(§3"s§,1,39,§2j§ | §0#E§);
         §%[§[§#"0§] = new OpCode(§#"0§,3,40,§0#E§ | §0!x§);
         §%[§[§4$,§] = new OpCode(§4$,§,3,41,0);
         §%[§[§[#K§] = new OpCode(§[#K§,3,42,0);
         §%[§[§1";§] = new OpCode(§1";§,2,43,0);
         §%[§[§]#j§] = new OpCode(§]#j§,3,44,0);
         §%[§[§07§] = new OpCode(§07§,3,45,0);
         §-"w§[§5"l§] = new Sampler(§5"l§,§!c§,0);
         §-"w§[DXT1] = new Sampler(DXT1,§!c§,1);
         §-"w§[DXT5] = new Sampler(DXT5,§!c§,2);
         §-"w§[§@"a§] = new Sampler(§@"a§,§!c§,3);
         §-"w§[D2] = new Sampler(D2,§-$%§,0);
         §-"w§[D3] = new Sampler(D3,§-$%§,2);
         §-"w§[§7#Y§] = new Sampler(§7#Y§,§-$%§,1);
         §-"w§[§+#+§] = new Sampler(§+#+§,§4l§,1);
         §-"w§[§>u§] = new Sampler(§>u§,§4l§,2);
         §-"w§[§1!M§] = new Sampler(§1!M§,§4l§,0);
         §-"w§[§9d§] = new Sampler(§9d§,§4l§,0);
         §-"w§[§`#7§] = new Sampler(§`#7§,§<#b§,0);
         §-"w§[§##f§] = new Sampler(§##f§,§<#b§,1);
         §-"w§[§"!H§] = new Sampler(§"!H§,§1#S§,1 << 0);
         §-"w§[§-!R§] = new Sampler(§-!R§,§1#S§,1 << 1);
         §-"w§[§1#r§] = new Sampler(§1#r§,§1#S§,1 << 2);
         §-"w§[§;d§] = new Sampler(§;d§,§%"q§,1);
         §-"w§[§^$0§] = new Sampler(§^$0§,§%"q§,1);
         §-"w§[§1!?§] = new Sampler(§1!?§,§%"q§,0);
      }
      
      public function get error() : String
      {
         return this.§%W§;
      }
      
      public function get §3$8§() : ByteArray
      {
         return this.§"#_§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§+"3§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§+"3§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §+"3§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
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
         this.§"#_§ = new ByteArray();
         this.§%W§ = "";
         var _loc6_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc6_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§%W§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§3$8§.endian = Endian.LITTLE_ENDIAN;
         this.§3$8§.writeByte(160);
         this.§3$8§.writeUnsignedInt(param3);
         this.§3$8§.writeByte(161);
         this.§3$8§.writeByte(!!_loc6_ ? 1 : 0);
         this.§7"I§(param3,param4);
         var _loc7_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc9_:int = 0;
         var _loc11_:int = _loc7_.length;
         _loc10_ = 0;
         while(_loc10_ < _loc11_ && this.§%W§ == "")
         {
            if((_loc13_ = (_loc12_ = (_loc12_ = new String(_loc7_[_loc10_])).replace(§?"s§,"")).search("//")) != -1)
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
               _loc17_ = §%[§[_loc16_[0]];
               if(!this.§&#L§)
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
                  if(_loc17_.flags & §9$5§ && param3 < 2)
                  {
                     this.§%W§ = "error: opcode requires version 2.";
                     break;
                  }
                  if(_loc17_.flags & §?"-§ && _loc6_)
                  {
                     this.§%W§ = "error: opcode is only allowed in vertex programs.";
                     break;
                  }
                  if(_loc17_.flags & §0#E§ && !_loc6_)
                  {
                     this.§%W§ = "error: opcode is only allowed in fragment programs.";
                     break;
                  }
                  if(!this.§36§)
                  {
                  }
                  this.§3$8§.writeUnsignedInt(_loc17_.emitCode);
                  _loc9_++;
                  if(_loc9_ > §&$$§)
                  {
                     this.§%W§ = "error: too many opcodes. maximum is " + §&$$§ + ".";
                     break;
                  }
                  if(!(_loc18_ = _loc12_.match(/vc\[([vof][acostdip]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][acostdip]?)(\d*)?(\.[xyzw]{1,4})?/gi)) || _loc18_.length != _loc17_.numRegister)
                  {
                     this.§%W§ = "error: wrong number of operands. found " + _loc18_.length + " but expected " + _loc17_.numRegister + ".";
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
                        if(!this.§36§)
                        {
                        }
                        _loc23_ = true;
                     }
                     if(!(_loc25_ = _loc18_[_loc22_].match(/^\b[A-Za-z]{1,2}/ig)))
                     {
                        this.§%W§ = "error: could not parse operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     _loc26_ = §-!0§[_loc25_[0]];
                     if(!this.§&#L§)
                     {
                     }
                     if(_loc26_ == null)
                     {
                        this.§%W§ = "error: could not find register name for operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc26_.flags & §6o§))
                        {
                           this.§%W§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in vertex programs.";
                           _loc19_ = true;
                           break;
                        }
                        if(_loc23_)
                        {
                           this.§%W§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") relative adressing not allowed in fragment programs.";
                           _loc19_ = true;
                           break;
                        }
                     }
                     else if(!(_loc26_.flags & §4"=§))
                     {
                        this.§%W§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in fragment programs.";
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
                        this.§%W§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") index exceeds limit of " + (_loc26_.range + 1) + ".";
                        _loc19_ = true;
                        break;
                     }
                     _loc29_ = 0;
                     _loc30_ = _loc18_[_loc22_].match(/(\.[xyzw]{1,4})/);
                     _loc31_ = _loc22_ == 0 && !(_loc17_.flags & §2j§);
                     _loc32_ = _loc22_ == 2 && _loc17_.flags & §0!x§;
                     _loc33_ = 0;
                     _loc34_ = 0;
                     _loc35_ = 0;
                     if(_loc31_ && _loc23_)
                     {
                        this.§%W§ = "error: relative can not be destination";
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
                        if((_loc40_ = §-!0§[_loc39_[0]]) == null)
                        {
                           this.§%W§ = "error: bad index register";
                           _loc19_ = true;
                           break;
                        }
                        _loc33_ = _loc40_.emitCode;
                        if((_loc41_ = _loc24_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                        {
                           this.§%W§ = "error: bad index register select";
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
                           this.§%W§ = "error: index offset " + _loc35_ + " out of bounds. [0..255]";
                           _loc19_ = true;
                           break;
                        }
                        if(!this.§36§)
                        {
                        }
                     }
                     if(!this.§36§)
                     {
                     }
                     if(_loc31_)
                     {
                        this.§3$8§.writeShort(_loc28_);
                        this.§3$8§.writeByte(_loc29_);
                        this.§3$8§.writeByte(_loc26_.emitCode);
                        _loc20_ -= 32;
                     }
                     else if(_loc32_)
                     {
                        if(!this.§36§)
                        {
                        }
                        _loc43_ = 5;
                        _loc44_ = _loc15_ == null ? uint(0) : uint(_loc15_.length);
                        _loc45_ = 0;
                        _loc38_ = 0;
                        while(_loc38_ < _loc44_)
                        {
                           if(!this.§36§)
                           {
                           }
                           if((_loc46_ = §-"w§[_loc15_[_loc38_]]) == null)
                           {
                              _loc45_ = Number(_loc15_[_loc38_]);
                              if(!this.§36§)
                              {
                              }
                           }
                           else
                           {
                              if(_loc46_.flag != §1#S§)
                              {
                                 _loc43_ &= ~(15 << _loc46_.flag);
                              }
                              _loc43_ |= uint(_loc46_.mask) << uint(_loc46_.flag);
                           }
                           _loc38_++;
                        }
                        this.§3$8§.writeShort(_loc28_);
                        this.§3$8§.writeByte(int(_loc45_ * 8));
                        this.§3$8§.writeByte(0);
                        this.§3$8§.writeUnsignedInt(_loc43_);
                        if(!this.§36§)
                        {
                        }
                        _loc20_ -= 64;
                     }
                     else
                     {
                        if(_loc22_ == 0)
                        {
                           this.§3$8§.writeUnsignedInt(0);
                           _loc20_ -= 32;
                        }
                        this.§3$8§.writeShort(_loc28_);
                        this.§3$8§.writeByte(_loc35_);
                        this.§3$8§.writeByte(_loc29_);
                        this.§3$8§.writeByte(_loc26_.emitCode);
                        this.§3$8§.writeByte(_loc33_);
                        this.§3$8§.writeShort(!!_loc23_ ? _loc34_ | 1 << 15 : 0);
                        _loc20_ -= 64;
                     }
                     _loc22_++;
                  }
                  _loc22_ = 0;
                  while(_loc22_ < _loc20_)
                  {
                     this.§3$8§.writeByte(0);
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
         if(this.§%W§ != "")
         {
            this.§%W§ += "\n  at line " + _loc10_ + " " + _loc7_[_loc10_];
            this.§3$8§.length = 0;
         }
         if(this.§&#L§)
         {
            _loc47_ = "generated bytecode:";
            _loc48_ = this.§3$8§.length;
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
               if((_loc50_ = this.§3$8§[_loc49_].toString(16)).length < 2)
               {
                  _loc50_ = "0" + _loc50_;
               }
               _loc47_ += _loc50_;
               _loc49_++;
            }
         }
         if(!this.§36§)
         {
         }
         return this.§3$8§;
      }
      
      private function §7"I§(param1:uint, param2:Boolean) : void
      {
         §-!0§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§4"=§ | §2!y§);
         §-!0§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§4"=§ | §2!y§);
         §-!0§[§="o§] = new Register(§="o§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§4"=§ | §,$;§ | §2!y§);
         §-!0§[§^v§] = new Register(§^v§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§4"=§ | §,$;§);
         §-!0§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§4"=§ | §6o§ | §2!y§ | §,$;§);
         §-!0§[§=#o§] = new Register(§=#o§,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§6o§ | §2!y§);
         §-!0§[§9!g§] = new Register(§9!g§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§6o§ | §,$;§ | §2!y§);
         §-!0§[§2T§] = new Register(§2T§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§6o§ | §2!y§);
         §-!0§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§6o§ | §,$;§);
         §-!0§[§,#S§] = new Register(§,#S§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§6o§ | §,$;§);
         §-!0§["op"] = §-!0§[§^v§];
         §-!0§["i"] = §-!0§[VI];
         §-!0§["v"] = §-!0§[VI];
         §-!0§["oc"] = §-!0§[FO];
         §-!0§["od"] = §-!0§[§,#S§];
         §-!0§["fi"] = §-!0§[VI];
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
