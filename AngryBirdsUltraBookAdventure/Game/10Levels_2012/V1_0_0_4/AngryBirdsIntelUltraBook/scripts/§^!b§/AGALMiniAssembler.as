package §^!b§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §6!R§:Dictionary = new Dictionary();
      
      private static const §06§:Dictionary = new Dictionary();
      
      private static const §;U§:Dictionary = new Dictionary();
      
      private static const §"! §:int = 4;
      
      private static const §<!`§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §";§:uint = 12;
      
      private static const §@>§:uint = 16;
      
      private static const §%r§:uint = 20;
      
      private static const §;!1§:uint = 24;
      
      private static const §4h§:uint = 28;
      
      private static const §=!K§:uint = 1;
      
      private static const §%x§:uint = 2;
      
      private static const §12§:uint = 32;
      
      private static const §&!3§:uint = 64;
      
      private static const §]"§:uint = 1;
      
      private static const §!!-§:uint = 2;
      
      private static const §-!s§:uint = 4;
      
      private static const §10§:uint = 8;
      
      private static const §^j§:uint = 16;
      
      private static const §20§:uint = 32;
      
      private static const §+!h§:uint = 128;
      
      private static const §'w§:String = "mov";
      
      private static const §@u§:String = "add";
      
      private static const §=!h§:String = "sub";
      
      private static const §'!7§:String = "mul";
      
      private static const §!s§:String = "div";
      
      private static const §&!S§:String = "rcp";
      
      private static const §-o§:String = "min";
      
      private static const §7!y§:String = "max";
      
      private static const §'K§:String = "frc";
      
      private static const §[`§:String = "sqt";
      
      private static const §1!R§:String = "rsq";
      
      private static const §'!i§:String = "pow";
      
      private static const §5S§:String = "log";
      
      private static const §>N§:String = "exp";
      
      private static const §9!%§:String = "nrm";
      
      private static const §+>§:String = "sin";
      
      private static const §3_§:String = "cos";
      
      private static const §@!%§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §1!D§:String = "abs";
      
      private static const §2Z§:String = "neg";
      
      private static const §?!§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §+]§:String = "ifz";
      
      private static const §>U§:String = "inz";
      
      private static const §[!,§:String = "ife";
      
      private static const §?!X§:String = "ine";
      
      private static const §6h§:String = "ifg";
      
      private static const § ;§:String = "ifl";
      
      private static const §;!f§:String = "ieg";
      
      private static const §@!i§:String = "iel";
      
      private static const §#w§:String = "els";
      
      private static const §;$§:String = "eif";
      
      private static const §?v§:String = "rep";
      
      private static const §@Z§:String = "erp";
      
      private static const §%!t§:String = "brk";
      
      private static const §^T§:String = "kil";
      
      private static const §[C§:String = "tex";
      
      private static const §#T§:String = "sge";
      
      private static const §,!N§:String = "slt";
      
      private static const §0!u§:String = "sgn";
      
      private static const §5!d§:String = "va";
      
      private static const §<!F§:String = "vc";
      
      private static const §`!$§:String = "vt";
      
      private static const §;X§:String = "op";
      
      private static const §8$§:String = "v";
      
      private static const §&0§:String = "fc";
      
      private static const §@r§:String = "ft";
      
      private static const §"!]§:String = "fs";
      
      private static const §[!1§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §<B§:String = "cube";
      
      private static const §#y§:String = "mipnearest";
      
      private static const §1u§:String = "miplinear";
      
      private static const §9C§:String = "mipnone";
      
      private static const §5;§:String = "nomip";
      
      private static const §`!6§:String = "nearest";
      
      private static const §8!I§:String = "linear";
      
      private static const §7!$§:String = "centroid";
      
      private static const §35§:String = "single";
      
      private static const §0!#§:String = "depth";
      
      private static const §`t§:String = "repeat";
      
      private static const §=a§:String = "wrap";
      
      private static const §@,§:String = "clamp";
       
      
      private var §2![§:ByteArray = null;
      
      private var §+9§:String = "";
      
      private var §2g§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§2g§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §6!R§[§'w§] = new OpCode(§'w§,2,0,0);
         §6!R§[§@u§] = new OpCode(§@u§,3,1,0);
         §6!R§[§=!h§] = new OpCode(§=!h§,3,2,0);
         §6!R§[§'!7§] = new OpCode(§'!7§,3,3,0);
         §6!R§[§!s§] = new OpCode(§!s§,3,4,0);
         §6!R§[§&!S§] = new OpCode(§&!S§,2,5,0);
         §6!R§[§-o§] = new OpCode(§-o§,3,6,0);
         §6!R§[§7!y§] = new OpCode(§7!y§,3,7,0);
         §6!R§[§'K§] = new OpCode(§'K§,2,8,0);
         §6!R§[§[`§] = new OpCode(§[`§,2,9,0);
         §6!R§[§1!R§] = new OpCode(§1!R§,2,10,0);
         §6!R§[§'!i§] = new OpCode(§'!i§,3,11,0);
         §6!R§[§5S§] = new OpCode(§5S§,2,12,0);
         §6!R§[§>N§] = new OpCode(§>N§,2,13,0);
         §6!R§[§9!%§] = new OpCode(§9!%§,2,14,0);
         §6!R§[§+>§] = new OpCode(§+>§,2,15,0);
         §6!R§[§3_§] = new OpCode(§3_§,2,16,0);
         §6!R§[§@!%§] = new OpCode(§@!%§,3,17,0);
         §6!R§[DP3] = new OpCode(DP3,3,18,0);
         §6!R§[DP4] = new OpCode(DP4,3,19,0);
         §6!R§[§1!D§] = new OpCode(§1!D§,2,20,0);
         §6!R§[§2Z§] = new OpCode(§2Z§,2,21,0);
         §6!R§[§?!§] = new OpCode(§?!§,2,22,0);
         §6!R§[M33] = new OpCode(M33,3,23,§^j§);
         §6!R§[M44] = new OpCode(M44,3,24,§^j§);
         §6!R§[M34] = new OpCode(M34,3,25,§^j§);
         §6!R§[§+]§] = new OpCode(§+]§,1,26,§+!h§ | §!!-§ | §]"§);
         §6!R§[§>U§] = new OpCode(§>U§,1,27,§+!h§ | §!!-§ | §]"§);
         §6!R§[§[!,§] = new OpCode(§[!,§,2,28,§+!h§ | §!!-§ | §]"§);
         §6!R§[§?!X§] = new OpCode(§?!X§,2,29,§+!h§ | §!!-§ | §]"§);
         §6!R§[§6h§] = new OpCode(§6h§,2,30,§+!h§ | §!!-§ | §]"§);
         §6!R§[§ ;§] = new OpCode(§ ;§,2,31,§+!h§ | §!!-§ | §]"§);
         §6!R§[§;!f§] = new OpCode(§;!f§,2,32,§+!h§ | §!!-§ | §]"§);
         §6!R§[§@!i§] = new OpCode(§@!i§,2,33,§+!h§ | §!!-§ | §]"§);
         §6!R§[§#w§] = new OpCode(§#w§,0,34,§+!h§ | §!!-§ | §-!s§);
         §6!R§[§;$§] = new OpCode(§;$§,0,35,§+!h§ | §-!s§);
         §6!R§[§?v§] = new OpCode(§?v§,1,36,§+!h§ | §!!-§ | §]"§);
         §6!R§[§@Z§] = new OpCode(§@Z§,0,37,§+!h§ | §-!s§);
         §6!R§[§%!t§] = new OpCode(§%!t§,0,38,§+!h§);
         §6!R§[§^T§] = new OpCode(§^T§,1,39,§+!h§ | §20§);
         §6!R§[§[C§] = new OpCode(§[C§,3,40,§20§ | §10§);
         §6!R§[§#T§] = new OpCode(§#T§,3,41,0);
         §6!R§[§,!N§] = new OpCode(§,!N§,3,42,0);
         §6!R§[§0!u§] = new OpCode(§0!u§,2,43,0);
         §06§[§5!d§] = new Register(§5!d§,"vertex attribute",0,7,§&!3§ | §%x§);
         §06§[§<!F§] = new Register(§<!F§,"vertex constant",1,127,§&!3§ | §%x§);
         §06§[§`!$§] = new Register(§`!$§,"vertex temporary",2,7,§&!3§ | §=!K§ | §%x§);
         §06§[§;X§] = new Register(§;X§,"vertex output",3,0,§&!3§ | §=!K§);
         §06§[§8$§] = new Register(§8$§,"varying",4,7,§&!3§ | §12§ | §%x§ | §=!K§);
         §06§[§&0§] = new Register(§&0§,"fragment constant",1,27,§12§ | §%x§);
         §06§[§@r§] = new Register(§@r§,"fragment temporary",2,7,§12§ | §=!K§ | §%x§);
         §06§[§"!]§] = new Register(§"!]§,"texture sampler",5,7,§12§ | §%x§);
         §06§[§[!1§] = new Register(§[!1§,"fragment output",3,0,§12§ | §=!K§);
         §;U§[D2] = new Sampler(D2,§";§,0);
         §;U§[D3] = new Sampler(D3,§";§,2);
         §;U§[§<B§] = new Sampler(§<B§,§";§,1);
         §;U§[§#y§] = new Sampler(§#y§,§;!1§,1);
         §;U§[§1u§] = new Sampler(§1u§,§;!1§,2);
         §;U§[§9C§] = new Sampler(§9C§,§;!1§,0);
         §;U§[§5;§] = new Sampler(§5;§,§;!1§,0);
         §;U§[§`!6§] = new Sampler(§`!6§,§4h§,0);
         §;U§[§8!I§] = new Sampler(§8!I§,§4h§,1);
         §;U§[§7!$§] = new Sampler(§7!$§,§@>§,1 << 0);
         §;U§[§35§] = new Sampler(§35§,§@>§,1 << 1);
         §;U§[§0!#§] = new Sampler(§0!#§,§@>§,1 << 2);
         §;U§[§`t§] = new Sampler(§`t§,§%r§,1);
         §;U§[§=a§] = new Sampler(§=a§,§%r§,1);
         §;U§[§@,§] = new Sampler(§@,§,§%r§,0);
      }
      
      public function get error() : String
      {
         return this.§+9§;
      }
      
      public function get §;E§() : ByteArray
      {
         return this.§2![§;
      }
      
      public function §6?§(param1:String, param2:String, param3:Boolean = false) : ByteArray
      {
         var _loc9_:int = 0;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:OpCode = null;
         var _loc17_:Array = null;
         var _loc18_:Boolean = false;
         var _loc19_:uint = 0;
         var _loc20_:uint = 0;
         var _loc21_:int = 0;
         var _loc22_:Boolean = false;
         var _loc23_:Array = null;
         var _loc24_:Array = null;
         var _loc25_:Register = null;
         var _loc26_:Array = null;
         var _loc27_:uint = 0;
         var _loc28_:uint = 0;
         var _loc29_:Array = null;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:uint = 0;
         var _loc33_:uint = 0;
         var _loc34_:int = 0;
         var _loc35_:uint = 0;
         var _loc36_:uint = 0;
         var _loc37_:int = 0;
         var _loc38_:Array = null;
         var _loc39_:Register = null;
         var _loc40_:Array = null;
         var _loc41_:Array = null;
         var _loc42_:uint = 0;
         var _loc43_:uint = 0;
         var _loc44_:Number = NaN;
         var _loc45_:Sampler = null;
         var _loc46_:* = null;
         var _loc47_:uint = 0;
         var _loc48_:uint = 0;
         var _loc49_:String = null;
         var _loc4_:uint = getTimer();
         this.§2![§ = new ByteArray();
         this.§+9§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§+9§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§;E§.endian = Endian.LITTLE_ENDIAN;
         this.§;E§.writeByte(160);
         this.§;E§.writeUnsignedInt(1);
         this.§;E§.writeByte(161);
         this.§;E§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§+9§ == "")
         {
            if((_loc12_ = (_loc11_ = new String(_loc6_[_loc9_])).search("//")) != -1)
            {
               _loc11_ = _loc11_.slice(0,_loc12_);
            }
            if((_loc13_ = _loc11_.search(/<.*>/g)) != -1)
            {
               _loc14_ = _loc11_.slice(_loc13_).match(/([\w\.\-\+]+)/gi);
               _loc11_ = _loc11_.slice(0,_loc13_);
            }
            _loc15_ = _loc11_.match(/^\w{3}/ig);
            _loc16_ = §6!R§[_loc15_[0]];
            if(!this.§2g§)
            {
            }
            if(_loc16_ == null)
            {
               if(_loc11_.length >= 3)
               {
               }
            }
            else
            {
               _loc11_ = _loc11_.slice(_loc11_.search(_loc16_.name) + _loc16_.name.length);
               if(_loc16_.flags & §-!s§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§+9§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §!!-§)
               {
                  _loc7_++;
                  if(_loc7_ > §"! §)
                  {
                     this.§+9§ = "error: nesting to deep, maximum allowed is " + §"! § + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §20§ && !_loc5_)
               {
                  this.§+9§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§;E§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<!`§)
               {
                  this.§+9§ = "error: too many opcodes. maximum is " + §<!`§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§+9§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
                  break;
               }
               _loc18_ = false;
               _loc19_ = 64 + 64 + 32;
               _loc20_ = _loc17_.length;
               _loc21_ = 0;
               while(_loc21_ < _loc20_)
               {
                  _loc22_ = false;
                  if((_loc23_ = _loc17_[_loc21_].match(/\[.*\]/ig)).length > 0)
                  {
                     _loc17_[_loc21_] = _loc17_[_loc21_].replace(_loc23_[0],"0");
                     if(!param3)
                     {
                     }
                     _loc22_ = true;
                  }
                  _loc24_ = _loc17_[_loc21_].match(/^\b[A-Za-z]{1,2}/ig);
                  _loc25_ = §06§[_loc24_[0]];
                  if(!this.§2g§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§+9§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §12§))
                     {
                        this.§+9§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§+9§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §&!3§))
                  {
                     this.§+9§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
                     _loc18_ = true;
                     break;
                  }
                  _loc17_[_loc21_] = _loc17_[_loc21_].slice(_loc17_[_loc21_].search(_loc25_.name) + _loc25_.name.length);
                  _loc26_ = !!_loc22_ ? _loc23_[0].match(/\d+/) : _loc17_[_loc21_].match(/\d+/);
                  _loc27_ = 0;
                  if(_loc26_)
                  {
                     _loc27_ = uint(_loc26_[0]);
                  }
                  if(_loc25_.range < _loc27_)
                  {
                     this.§+9§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §+!h§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §10§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§+9§ = "error: relative can not be destination";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc29_)
                  {
                     _loc28_ = 0;
                     _loc36_ = _loc29_[0].length;
                     _loc37_ = 1;
                     while(_loc37_ < _loc36_)
                     {
                        if((_loc35_ = _loc29_[0].charCodeAt(_loc37_) - "x".charCodeAt(0)) > 2)
                        {
                           _loc35_ = 3;
                        }
                        if(_loc30_)
                        {
                           _loc28_ |= 1 << _loc35_;
                        }
                        else
                        {
                           _loc28_ |= _loc35_ << (_loc37_ - 1 << 1);
                        }
                        _loc37_++;
                     }
                     if(!_loc30_)
                     {
                        while(_loc37_ <= 4)
                        {
                           _loc28_ |= _loc35_ << (_loc37_ - 1 << 1);
                           _loc37_++;
                        }
                     }
                  }
                  else
                  {
                     _loc28_ = !!_loc30_ ? uint(15) : uint(228);
                  }
                  if(_loc22_)
                  {
                     _loc38_ = _loc23_[0].match(/[A-Za-z]{1,2}/ig);
                     if((_loc39_ = §06§[_loc38_[0]]) == null)
                     {
                        this.§+9§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§+9§ = "error: bad index register select";
                        _loc18_ = true;
                        break;
                     }
                     if((_loc33_ = _loc40_[0].charCodeAt(1) - "x".charCodeAt(0)) > 2)
                     {
                        _loc33_ = 3;
                     }
                     if((_loc41_ = _loc23_[0].match(/\+\d{1,3}/ig)).length > 0)
                     {
                        _loc34_ = _loc41_[0];
                     }
                     if(_loc34_ < 0 || _loc34_ > 255)
                     {
                        this.§+9§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
                        _loc18_ = true;
                        break;
                     }
                     if(!param3)
                     {
                     }
                  }
                  if(!param3)
                  {
                  }
                  if(_loc30_)
                  {
                     this.§;E§.writeShort(_loc27_);
                     this.§;E§.writeByte(_loc28_);
                     this.§;E§.writeByte(_loc25_.emitCode);
                     _loc19_ -= 32;
                  }
                  else if(_loc31_)
                  {
                     if(!param3)
                     {
                     }
                     _loc42_ = 5;
                     _loc43_ = _loc14_.length;
                     _loc44_ = 0;
                     _loc37_ = 0;
                     while(_loc37_ < _loc43_)
                     {
                        if(!param3)
                        {
                        }
                        if((_loc45_ = §;U§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §@>§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§;E§.writeShort(_loc27_);
                     this.§;E§.writeByte(int(_loc44_ * 8));
                     this.§;E§.writeByte(0);
                     this.§;E§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§;E§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§;E§.writeShort(_loc27_);
                     this.§;E§.writeByte(_loc34_);
                     this.§;E§.writeByte(_loc28_);
                     this.§;E§.writeByte(_loc25_.emitCode);
                     this.§;E§.writeByte(_loc32_);
                     this.§;E§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§;E§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§+9§ != "")
         {
            this.§+9§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§;E§.length = 0;
         }
         if(this.§2g§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§;E§.length;
            _loc48_ = 0;
            while(_loc48_ < _loc47_)
            {
               if(!(_loc48_ % 16))
               {
                  _loc46_ += "\n";
               }
               if(!(_loc48_ % 4))
               {
                  _loc46_ += " ";
               }
               if((_loc49_ = this.§;E§[_loc48_].toString(16)).length < 2)
               {
                  _loc49_ = "0" + _loc49_;
               }
               _loc46_ += _loc49_;
               _loc48_++;
            }
         }
         if(!param3)
         {
         }
         return this.§;E§;
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
