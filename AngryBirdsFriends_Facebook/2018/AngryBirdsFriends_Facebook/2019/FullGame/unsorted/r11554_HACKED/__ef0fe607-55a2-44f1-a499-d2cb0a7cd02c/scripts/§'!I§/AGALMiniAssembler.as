package §'!I§
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      protected static const §[M§:RegExp = /^\s+|\s+$/g;
      
      private static var initialized:Boolean = false;
      
      private static const §'#^§:Dictionary = new Dictionary();
      
      private static const §<#p§:Dictionary = new Dictionary();
      
      private static const §?#a§:Dictionary = new Dictionary();
      
      private static const §@""§:int = 4;
      
      private static const §>M§:int = 2048;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §8#@§:uint = 8;
      
      private static const §9!H§:uint = 12;
      
      private static const §+9§:uint = 16;
      
      private static const §!4§:uint = 20;
      
      private static const §7t§:uint = 24;
      
      private static const §=#8§:uint = 28;
      
      private static const §4"T§:uint = 1;
      
      private static const §?K§:uint = 2;
      
      private static const §<!V§:uint = 32;
      
      private static const §^# §:uint = 64;
      
      private static const §;!y§:uint = 1;
      
      private static const §#!s§:uint = 8;
      
      private static const §3#n§:uint = 16;
      
      private static const § null§:uint = 32;
      
      private static const §7l§:uint = 64;
      
      private static const §'#G§:uint = 128;
      
      private static const §6"t§:uint = 256;
      
      private static const §-[§:uint = 512;
      
      private static const §9#Y§:uint = 1024;
      
      private static const §&#,§:String = "mov";
      
      private static const §-#f§:String = "add";
      
      private static const §9#v§:String = "sub";
      
      private static const §^#w§:String = "mul";
      
      private static const §[#o§:String = "div";
      
      private static const §##Z§:String = "rcp";
      
      private static const §4T§:String = "min";
      
      private static const §-#n§:String = "max";
      
      private static const §2"z§:String = "frc";
      
      private static const §+E§:String = "sqt";
      
      private static const §;$$§:String = "rsq";
      
      private static const §?Q§:String = "pow";
      
      private static const §^!5§:String = "log";
      
      private static const §<A§:String = "exp";
      
      private static const §+#+§:String = "nrm";
      
      private static const §@L§:String = "sin";
      
      private static const §?$0§:String = "cos";
      
      private static const §?"a§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §3!y§:String = "abs";
      
      private static const §9$3§:String = "neg";
      
      private static const §>">§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §#$1§:String = "ddx";
      
      private static const §^">§:String = "ddy";
      
      private static const §<#v§:String = "ife";
      
      private static const §8!j§:String = "ine";
      
      private static const §5a§:String = "ifg";
      
      private static const §``§:String = "ifl";
      
      private static const §7$>§:String = "els";
      
      private static const §["s§:String = "eif";
      
      private static const §9I§:String = "ted";
      
      private static const §^!!§:String = "kil";
      
      private static const §]2§:String = "tex";
      
      private static const §4#!§:String = "sge";
      
      private static const §[$5§:String = "slt";
      
      private static const §#-§:String = "sgn";
      
      private static const §]"=§:String = "seq";
      
      private static const §3#m§:String = "sne";
      
      private static const VA:String = "va";
      
      private static const VC:String = "vc";
      
      private static const §?"O§:String = "vt";
      
      private static const §9l§:String = "vo";
      
      private static const VI:String = "vi";
      
      private static const §4#9§:String = "fc";
      
      private static const §<"2§:String = "ft";
      
      private static const §5"k§:String = "fs";
      
      private static const FO:String = "fo";
      
      private static const §;?§:String = "fd";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §;! §:String = "cube";
      
      private static const §&#M§:String = "mipnearest";
      
      private static const §'R§:String = "miplinear";
      
      private static const §&";§:String = "mipnone";
      
      private static const §7$3§:String = "nomip";
      
      private static const §>!?§:String = "nearest";
      
      private static const §0#e§:String = "linear";
      
      private static const §]$>§:String = "centroid";
      
      private static const §0$D§:String = "single";
      
      private static const §'$#§:String = "ignoresampler";
      
      private static const §;#b§:String = "repeat";
      
      private static const §]t§:String = "wrap";
      
      private static const §#2§:String = "clamp";
      
      private static const §`#&§:String = "rgba";
      
      private static const DXT1:String = "dxt1";
      
      private static const DXT5:String = "dxt5";
      
      private static const §4"@§:String = "video";
       
      
      private var §0"h§:ByteArray = null;
      
      private var §3!#§:String = "";
      
      private var §;"9§:Boolean = false;
      
      public var §]"8§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§;"9§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §'#^§[§&#,§] = new OpCode(§&#,§,2,0,0);
         §'#^§[§-#f§] = new OpCode(§-#f§,3,1,0);
         §'#^§[§9#v§] = new OpCode(§9#v§,3,2,0);
         §'#^§[§^#w§] = new OpCode(§^#w§,3,3,0);
         §'#^§[§[#o§] = new OpCode(§[#o§,3,4,0);
         §'#^§[§##Z§] = new OpCode(§##Z§,2,5,0);
         §'#^§[§4T§] = new OpCode(§4T§,3,6,0);
         §'#^§[§-#n§] = new OpCode(§-#n§,3,7,0);
         §'#^§[§2"z§] = new OpCode(§2"z§,2,8,0);
         §'#^§[§+E§] = new OpCode(§+E§,2,9,0);
         §'#^§[§;$$§] = new OpCode(§;$$§,2,10,0);
         §'#^§[§?Q§] = new OpCode(§?Q§,3,11,0);
         §'#^§[§^!5§] = new OpCode(§^!5§,2,12,0);
         §'#^§[§<A§] = new OpCode(§<A§,2,13,0);
         §'#^§[§+#+§] = new OpCode(§+#+§,2,14,0);
         §'#^§[§@L§] = new OpCode(§@L§,2,15,0);
         §'#^§[§?$0§] = new OpCode(§?$0§,2,16,0);
         §'#^§[§?"a§] = new OpCode(§?"a§,3,17,0);
         §'#^§[DP3] = new OpCode(DP3,3,18,0);
         §'#^§[DP4] = new OpCode(DP4,3,19,0);
         §'#^§[§3!y§] = new OpCode(§3!y§,2,20,0);
         §'#^§[§9$3§] = new OpCode(§9$3§,2,21,0);
         §'#^§[§>">§] = new OpCode(§>">§,2,22,0);
         §'#^§[M33] = new OpCode(M33,3,23,§3#n§);
         §'#^§[M44] = new OpCode(M44,3,24,§3#n§);
         §'#^§[M34] = new OpCode(M34,3,25,§3#n§);
         §'#^§[§#$1§] = new OpCode(§#$1§,2,26,§6"t§ | § null§);
         §'#^§[§^">§] = new OpCode(§^">§,2,27,§6"t§ | § null§);
         §'#^§[§<#v§] = new OpCode(§<#v§,2,28,§'#G§ | §6"t§ | §-[§ | §;!y§);
         §'#^§[§8!j§] = new OpCode(§8!j§,2,29,§'#G§ | §6"t§ | §-[§ | §;!y§);
         §'#^§[§5a§] = new OpCode(§5a§,2,30,§'#G§ | §6"t§ | §-[§ | §;!y§);
         §'#^§[§``§] = new OpCode(§``§,2,31,§'#G§ | §6"t§ | §-[§ | §;!y§);
         §'#^§[§7$>§] = new OpCode(§7$>§,0,32,§'#G§ | §6"t§ | §-[§ | §9#Y§ | §;!y§);
         §'#^§[§["s§] = new OpCode(§["s§,0,33,§'#G§ | §6"t§ | §9#Y§ | §;!y§);
         §'#^§[§9I§] = new OpCode(§9I§,3,38,§ null§ | §#!s§ | §6"t§);
         §'#^§[§^!!§] = new OpCode(§^!!§,1,39,§'#G§ | § null§);
         §'#^§[§]2§] = new OpCode(§]2§,3,40,§ null§ | §#!s§);
         §'#^§[§4#!§] = new OpCode(§4#!§,3,41,0);
         §'#^§[§[$5§] = new OpCode(§[$5§,3,42,0);
         §'#^§[§#-§] = new OpCode(§#-§,2,43,0);
         §'#^§[§]"=§] = new OpCode(§]"=§,3,44,0);
         §'#^§[§3#m§] = new OpCode(§3#m§,3,45,0);
         §?#a§[§`#&§] = new Sampler(§`#&§,§8#@§,0);
         §?#a§[DXT1] = new Sampler(DXT1,§8#@§,1);
         §?#a§[DXT5] = new Sampler(DXT5,§8#@§,2);
         §?#a§[§4"@§] = new Sampler(§4"@§,§8#@§,3);
         §?#a§[D2] = new Sampler(D2,§9!H§,0);
         §?#a§[D3] = new Sampler(D3,§9!H§,2);
         §?#a§[§;! §] = new Sampler(§;! §,§9!H§,1);
         §?#a§[§&#M§] = new Sampler(§&#M§,§7t§,1);
         §?#a§[§'R§] = new Sampler(§'R§,§7t§,2);
         §?#a§[§&";§] = new Sampler(§&";§,§7t§,0);
         §?#a§[§7$3§] = new Sampler(§7$3§,§7t§,0);
         §?#a§[§>!?§] = new Sampler(§>!?§,§=#8§,0);
         §?#a§[§0#e§] = new Sampler(§0#e§,§=#8§,1);
         §?#a§[§]$>§] = new Sampler(§]$>§,§+9§,1 << 0);
         §?#a§[§0$D§] = new Sampler(§0$D§,§+9§,1 << 1);
         §?#a§[§'$#§] = new Sampler(§'$#§,§+9§,1 << 2);
         §?#a§[§;#b§] = new Sampler(§;#b§,§!4§,1);
         §?#a§[§]t§] = new Sampler(§]t§,§!4§,1);
         §?#a§[§#2§] = new Sampler(§#2§,§!4§,0);
      }
      
      public function get error() : String
      {
         return this.§3!#§;
      }
      
      public function get §]#F§() : ByteArray
      {
         return this.§0"h§;
      }
      
      public function assemble2(param1:Context3D, param2:uint, param3:String, param4:String) : Program3D
      {
         var _loc5_:ByteArray = this.§-l§(VERTEX,param3,param2);
         var _loc6_:ByteArray = this.§-l§(FRAGMENT,param4,param2);
         var _loc7_:Program3D;
         (_loc7_ = param1.createProgram()).upload(_loc5_,_loc6_);
         return _loc7_;
      }
      
      public function §-l§(param1:String, param2:String, param3:uint = 1, param4:Boolean = false) : ByteArray
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
         this.§0"h§ = new ByteArray();
         this.§3!#§ = "";
         var _loc6_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc6_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§3!#§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§]#F§.endian = Endian.LITTLE_ENDIAN;
         this.§]#F§.writeByte(160);
         this.§]#F§.writeUnsignedInt(param3);
         this.§]#F§.writeByte(161);
         this.§]#F§.writeByte(!!_loc6_ ? 1 : 0);
         this.§'$&§(param3,param4);
         var _loc7_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc9_:int = 0;
         var _loc11_:int = _loc7_.length;
         _loc10_ = 0;
         while(_loc10_ < _loc11_ && this.§3!#§ == "")
         {
            if((_loc13_ = (_loc12_ = (_loc12_ = new String(_loc7_[_loc10_])).replace(§[M§,"")).search("//")) != -1)
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
               _loc17_ = §'#^§[_loc16_[0]];
               if(!this.§;"9§)
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
                  if(_loc17_.flags & §6"t§ && param3 < 2)
                  {
                     this.§3!#§ = "error: opcode requires version 2.";
                     break;
                  }
                  if(_loc17_.flags & §7l§ && _loc6_)
                  {
                     this.§3!#§ = "error: opcode is only allowed in vertex programs.";
                     break;
                  }
                  if(_loc17_.flags & § null§ && !_loc6_)
                  {
                     this.§3!#§ = "error: opcode is only allowed in fragment programs.";
                     break;
                  }
                  if(!this.§]"8§)
                  {
                  }
                  this.§]#F§.writeUnsignedInt(_loc17_.emitCode);
                  _loc9_++;
                  if(_loc9_ > §>M§)
                  {
                     this.§3!#§ = "error: too many opcodes. maximum is " + §>M§ + ".";
                     break;
                  }
                  if(!(_loc18_ = _loc12_.match(/vc\[([vof][acostdip]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][acostdip]?)(\d*)?(\.[xyzw]{1,4})?/gi)) || _loc18_.length != _loc17_.numRegister)
                  {
                     this.§3!#§ = "error: wrong number of operands. found " + _loc18_.length + " but expected " + _loc17_.numRegister + ".";
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
                        if(!this.§]"8§)
                        {
                        }
                        _loc23_ = true;
                     }
                     if(!(_loc25_ = _loc18_[_loc22_].match(/^\b[A-Za-z]{1,2}/ig)))
                     {
                        this.§3!#§ = "error: could not parse operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     _loc26_ = §<#p§[_loc25_[0]];
                     if(!this.§;"9§)
                     {
                     }
                     if(_loc26_ == null)
                     {
                        this.§3!#§ = "error: could not find register name for operand " + _loc22_ + " (" + _loc18_[_loc22_] + ").";
                        _loc19_ = true;
                        break;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc26_.flags & §<!V§))
                        {
                           this.§3!#§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in vertex programs.";
                           _loc19_ = true;
                           break;
                        }
                        if(_loc23_)
                        {
                           this.§3!#§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") relative adressing not allowed in fragment programs.";
                           _loc19_ = true;
                           break;
                        }
                     }
                     else if(!(_loc26_.flags & §^# §))
                     {
                        this.§3!#§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") only allowed in fragment programs.";
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
                        this.§3!#§ = "error: register operand " + _loc22_ + " (" + _loc18_[_loc22_] + ") index exceeds limit of " + (_loc26_.range + 1) + ".";
                        _loc19_ = true;
                        break;
                     }
                     _loc29_ = 0;
                     _loc30_ = _loc18_[_loc22_].match(/(\.[xyzw]{1,4})/);
                     _loc31_ = _loc22_ == 0 && !(_loc17_.flags & §'#G§);
                     _loc32_ = _loc22_ == 2 && _loc17_.flags & §#!s§;
                     _loc33_ = 0;
                     _loc34_ = 0;
                     _loc35_ = 0;
                     if(_loc31_ && _loc23_)
                     {
                        this.§3!#§ = "error: relative can not be destination";
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
                        if((_loc40_ = §<#p§[_loc39_[0]]) == null)
                        {
                           this.§3!#§ = "error: bad index register";
                           _loc19_ = true;
                           break;
                        }
                        _loc33_ = _loc40_.emitCode;
                        if((_loc41_ = _loc24_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                        {
                           this.§3!#§ = "error: bad index register select";
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
                           this.§3!#§ = "error: index offset " + _loc35_ + " out of bounds. [0..255]";
                           _loc19_ = true;
                           break;
                        }
                        if(!this.§]"8§)
                        {
                        }
                     }
                     if(!this.§]"8§)
                     {
                     }
                     if(_loc31_)
                     {
                        this.§]#F§.writeShort(_loc28_);
                        this.§]#F§.writeByte(_loc29_);
                        this.§]#F§.writeByte(_loc26_.emitCode);
                        _loc20_ -= 32;
                     }
                     else if(_loc32_)
                     {
                        if(!this.§]"8§)
                        {
                        }
                        _loc43_ = 5;
                        _loc44_ = _loc15_ == null ? uint(0) : uint(_loc15_.length);
                        _loc45_ = 0;
                        _loc38_ = 0;
                        while(_loc38_ < _loc44_)
                        {
                           if(!this.§]"8§)
                           {
                           }
                           if((_loc46_ = §?#a§[_loc15_[_loc38_]]) == null)
                           {
                              _loc45_ = Number(_loc15_[_loc38_]);
                              if(!this.§]"8§)
                              {
                              }
                           }
                           else
                           {
                              if(_loc46_.flag != §+9§)
                              {
                                 _loc43_ &= ~(15 << _loc46_.flag);
                              }
                              _loc43_ |= uint(_loc46_.mask) << uint(_loc46_.flag);
                           }
                           _loc38_++;
                        }
                        this.§]#F§.writeShort(_loc28_);
                        this.§]#F§.writeByte(int(_loc45_ * 8));
                        this.§]#F§.writeByte(0);
                        this.§]#F§.writeUnsignedInt(_loc43_);
                        if(!this.§]"8§)
                        {
                        }
                        _loc20_ -= 64;
                     }
                     else
                     {
                        if(_loc22_ == 0)
                        {
                           this.§]#F§.writeUnsignedInt(0);
                           _loc20_ -= 32;
                        }
                        this.§]#F§.writeShort(_loc28_);
                        this.§]#F§.writeByte(_loc35_);
                        this.§]#F§.writeByte(_loc29_);
                        this.§]#F§.writeByte(_loc26_.emitCode);
                        this.§]#F§.writeByte(_loc33_);
                        this.§]#F§.writeShort(!!_loc23_ ? _loc34_ | 1 << 15 : 0);
                        _loc20_ -= 64;
                     }
                     _loc22_++;
                  }
                  _loc22_ = 0;
                  while(_loc22_ < _loc20_)
                  {
                     this.§]#F§.writeByte(0);
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
         if(this.§3!#§ != "")
         {
            this.§3!#§ += "\n  at line " + _loc10_ + " " + _loc7_[_loc10_];
            this.§]#F§.length = 0;
         }
         if(this.§;"9§)
         {
            _loc47_ = "generated bytecode:";
            _loc48_ = this.§]#F§.length;
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
               if((_loc50_ = this.§]#F§[_loc49_].toString(16)).length < 2)
               {
                  _loc50_ = "0" + _loc50_;
               }
               _loc47_ += _loc50_;
               _loc49_++;
            }
         }
         if(!this.§]"8§)
         {
         }
         return this.§]#F§;
      }
      
      private function §'$&§(param1:uint, param2:Boolean) : void
      {
         §<#p§[VA] = new Register(VA,"vertex attribute",0,!!param2 ? uint(1024) : uint(7),§^# § | §?K§);
         §<#p§[VC] = new Register(VC,"vertex constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(127) : uint(250)),§^# § | §?K§);
         §<#p§[§?"O§] = new Register(§?"O§,"vertex temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§^# § | §4"T§ | §?K§);
         §<#p§[§9l§] = new Register(§9l§,"vertex output",3,!!param2 ? uint(1024) : uint(0),§^# § | §4"T§);
         §<#p§[VI] = new Register(VI,"varying",4,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(11)),§^# § | §<!V§ | §?K§ | §4"T§);
         §<#p§[§4#9§] = new Register(§4#9§,"fragment constant",1,!!param2 ? uint(1024) : (param1 == 1 ? uint(27) : uint(63)),§<!V§ | §?K§);
         §<#p§[§<"2§] = new Register(§<"2§,"fragment temporary",2,!!param2 ? uint(1024) : (param1 == 1 ? uint(7) : uint(27)),§<!V§ | §4"T§ | §?K§);
         §<#p§[§5"k§] = new Register(§5"k§,"texture sampler",5,!!param2 ? uint(1024) : uint(7),§<!V§ | §?K§);
         §<#p§[FO] = new Register(FO,"fragment output",3,!!param2 ? uint(1024) : (param1 == 1 ? uint(0) : uint(3)),§<!V§ | §4"T§);
         §<#p§[§;?§] = new Register(§;?§,"fragment depth output",6,!!param2 ? uint(1024) : (param1 == 1 ? uint(-1) : uint(0)),§<!V§ | §4"T§);
         §<#p§["op"] = §<#p§[§9l§];
         §<#p§["i"] = §<#p§[VI];
         §<#p§["v"] = §<#p§[VI];
         §<#p§["oc"] = §<#p§[FO];
         §<#p§["od"] = §<#p§[§;?§];
         §<#p§["fi"] = §<#p§[VI];
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
