package §^!D§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §4O§:Dictionary = new Dictionary();
      
      private static const §3%§:Dictionary = new Dictionary();
      
      private static const §-Z§:Dictionary = new Dictionary();
      
      private static const §5! §:int = 4;
      
      private static const §<7§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §5H§:uint = 12;
      
      private static const §8]§:uint = 16;
      
      private static const §#]§:uint = 20;
      
      private static const §57§:uint = 24;
      
      private static const §[D§:uint = 28;
      
      private static const §?!+§:uint = 1;
      
      private static const §+4§:uint = 2;
      
      private static const §[E§:uint = 32;
      
      private static const §0R§:uint = 64;
      
      private static const §`!J§:uint = 1;
      
      private static const §8X§:uint = 2;
      
      private static const §+5§:uint = 4;
      
      private static const §3E§:uint = 8;
      
      private static const §?R§:uint = 16;
      
      private static const §2z§:uint = 32;
      
      private static const §`f§:uint = 128;
      
      private static const §2!6§:String = "mov";
      
      private static const §[!"§:String = "add";
      
      private static const §7G§:String = "sub";
      
      private static const §'g§:String = "mul";
      
      private static const §["§:String = "div";
      
      private static const §"!$§:String = "rcp";
      
      private static const §,! §:String = "min";
      
      private static const §5D§:String = "max";
      
      private static const §'!L§:String = "frc";
      
      private static const §<B§:String = "sqt";
      
      private static const §4D§:String = "rsq";
      
      private static const §!!!§:String = "pow";
      
      private static const §+H§:String = "log";
      
      private static const §9!;§:String = "exp";
      
      private static const §?,§:String = "nrm";
      
      private static const §;!I§:String = "sin";
      
      private static const §=d§:String = "cos";
      
      private static const §2m§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §,V§:String = "abs";
      
      private static const §5K§:String = "neg";
      
      private static const §`h§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §[!#§:String = "ifz";
      
      private static const §^Q§:String = "inz";
      
      private static const §,!M§:String = "ife";
      
      private static const §>!"§:String = "ine";
      
      private static const §+s§:String = "ifg";
      
      private static const §4,§:String = "ifl";
      
      private static const §#§:String = "ieg";
      
      private static const §4!5§:String = "iel";
      
      private static const §>!<§:String = "els";
      
      private static const §0p§:String = "eif";
      
      private static const §=6§:String = "rep";
      
      private static const §[z§:String = "erp";
      
      private static const §"R§:String = "brk";
      
      private static const §%g§:String = "kil";
      
      private static const §function§:String = "tex";
      
      private static const §7'§:String = "sge";
      
      private static const §=8§:String = "slt";
      
      private static const §0!G§:String = "sgn";
      
      private static const §%!K§:String = "va";
      
      private static const §`!+§:String = "vc";
      
      private static const §6!B§:String = "vt";
      
      private static const §8!%§:String = "op";
      
      private static const §,o§:String = "v";
      
      private static const §>l§:String = "fc";
      
      private static const §#W§:String = "ft";
      
      private static const §3!?§:String = "fs";
      
      private static const §^!I§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §4d§:String = "cube";
      
      private static const §0<§:String = "mipnearest";
      
      private static const §6d§:String = "miplinear";
      
      private static const §1P§:String = "mipnone";
      
      private static const §9Y§:String = "nomip";
      
      private static const §@-§:String = "nearest";
      
      private static const §#8§:String = "linear";
      
      private static const §+D§:String = "centroid";
      
      private static const §+%§:String = "single";
      
      private static const §5"§:String = "depth";
      
      private static const §!!1§:String = "repeat";
      
      private static const §7!5§:String = "wrap";
      
      private static const §>q§:String = "clamp";
       
      
      private var §-k§:ByteArray = null;
      
      private var §^n§:String = "";
      
      private var §6a§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§6a§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §4O§[§2!6§] = new OpCode(§2!6§,2,0,0);
         §4O§[§[!"§] = new OpCode(§[!"§,3,1,0);
         §4O§[§7G§] = new OpCode(§7G§,3,2,0);
         §4O§[§'g§] = new OpCode(§'g§,3,3,0);
         §4O§[§["§] = new OpCode(§["§,3,4,0);
         §4O§[§"!$§] = new OpCode(§"!$§,2,5,0);
         §4O§[§,! §] = new OpCode(§,! §,3,6,0);
         §4O§[§5D§] = new OpCode(§5D§,3,7,0);
         §4O§[§'!L§] = new OpCode(§'!L§,2,8,0);
         §4O§[§<B§] = new OpCode(§<B§,2,9,0);
         §4O§[§4D§] = new OpCode(§4D§,2,10,0);
         §4O§[§!!!§] = new OpCode(§!!!§,3,11,0);
         §4O§[§+H§] = new OpCode(§+H§,2,12,0);
         §4O§[§9!;§] = new OpCode(§9!;§,2,13,0);
         §4O§[§?,§] = new OpCode(§?,§,2,14,0);
         §4O§[§;!I§] = new OpCode(§;!I§,2,15,0);
         §4O§[§=d§] = new OpCode(§=d§,2,16,0);
         §4O§[§2m§] = new OpCode(§2m§,3,17,0);
         §4O§[DP3] = new OpCode(DP3,3,18,0);
         §4O§[DP4] = new OpCode(DP4,3,19,0);
         §4O§[§,V§] = new OpCode(§,V§,2,20,0);
         §4O§[§5K§] = new OpCode(§5K§,2,21,0);
         §4O§[§`h§] = new OpCode(§`h§,2,22,0);
         §4O§[M33] = new OpCode(M33,3,23,§?R§);
         §4O§[M44] = new OpCode(M44,3,24,§?R§);
         §4O§[M34] = new OpCode(M34,3,25,§?R§);
         §4O§[§[!#§] = new OpCode(§[!#§,1,26,§`f§ | §8X§ | §`!J§);
         §4O§[§^Q§] = new OpCode(§^Q§,1,27,§`f§ | §8X§ | §`!J§);
         §4O§[§,!M§] = new OpCode(§,!M§,2,28,§`f§ | §8X§ | §`!J§);
         §4O§[§>!"§] = new OpCode(§>!"§,2,29,§`f§ | §8X§ | §`!J§);
         §4O§[§+s§] = new OpCode(§+s§,2,30,§`f§ | §8X§ | §`!J§);
         §4O§[§4,§] = new OpCode(§4,§,2,31,§`f§ | §8X§ | §`!J§);
         §4O§[§#§] = new OpCode(§#§,2,32,§`f§ | §8X§ | §`!J§);
         §4O§[§4!5§] = new OpCode(§4!5§,2,33,§`f§ | §8X§ | §`!J§);
         §4O§[§>!<§] = new OpCode(§>!<§,0,34,§`f§ | §8X§ | §+5§);
         §4O§[§0p§] = new OpCode(§0p§,0,35,§`f§ | §+5§);
         §4O§[§=6§] = new OpCode(§=6§,1,36,§`f§ | §8X§ | §`!J§);
         §4O§[§[z§] = new OpCode(§[z§,0,37,§`f§ | §+5§);
         §4O§[§"R§] = new OpCode(§"R§,0,38,§`f§);
         §4O§[§%g§] = new OpCode(§%g§,1,39,§`f§ | §2z§);
         §4O§[§function§] = new OpCode(§function§,3,40,§2z§ | §3E§);
         §4O§[§7'§] = new OpCode(§7'§,3,41,0);
         §4O§[§=8§] = new OpCode(§=8§,3,42,0);
         §4O§[§0!G§] = new OpCode(§0!G§,2,43,0);
         §3%§[§%!K§] = new Register(§%!K§,"vertex attribute",0,7,§0R§ | §+4§);
         §3%§[§`!+§] = new Register(§`!+§,"vertex constant",1,127,§0R§ | §+4§);
         §3%§[§6!B§] = new Register(§6!B§,"vertex temporary",2,7,§0R§ | §?!+§ | §+4§);
         §3%§[§8!%§] = new Register(§8!%§,"vertex output",3,0,§0R§ | §?!+§);
         §3%§[§,o§] = new Register(§,o§,"varying",4,7,§0R§ | §[E§ | §+4§ | §?!+§);
         §3%§[§>l§] = new Register(§>l§,"fragment constant",1,27,§[E§ | §+4§);
         §3%§[§#W§] = new Register(§#W§,"fragment temporary",2,7,§[E§ | §?!+§ | §+4§);
         §3%§[§3!?§] = new Register(§3!?§,"texture sampler",5,7,§[E§ | §+4§);
         §3%§[§^!I§] = new Register(§^!I§,"fragment output",3,0,§[E§ | §?!+§);
         §-Z§[D2] = new Sampler(D2,§5H§,0);
         §-Z§[D3] = new Sampler(D3,§5H§,2);
         §-Z§[§4d§] = new Sampler(§4d§,§5H§,1);
         §-Z§[§0<§] = new Sampler(§0<§,§57§,1);
         §-Z§[§6d§] = new Sampler(§6d§,§57§,2);
         §-Z§[§1P§] = new Sampler(§1P§,§57§,0);
         §-Z§[§9Y§] = new Sampler(§9Y§,§57§,0);
         §-Z§[§@-§] = new Sampler(§@-§,§[D§,0);
         §-Z§[§#8§] = new Sampler(§#8§,§[D§,1);
         §-Z§[§+D§] = new Sampler(§+D§,§8]§,1 << 0);
         §-Z§[§+%§] = new Sampler(§+%§,§8]§,1 << 1);
         §-Z§[§5"§] = new Sampler(§5"§,§8]§,1 << 2);
         §-Z§[§!!1§] = new Sampler(§!!1§,§#]§,1);
         §-Z§[§7!5§] = new Sampler(§7!5§,§#]§,1);
         §-Z§[§>q§] = new Sampler(§>q§,§#]§,0);
      }
      
      public function get error() : String
      {
         return this.§^n§;
      }
      
      public function get §8,§() : ByteArray
      {
         return this.§-k§;
      }
      
      public function §^y§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§-k§ = new ByteArray();
         this.§^n§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§^n§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§8,§.endian = Endian.LITTLE_ENDIAN;
         this.§8,§.writeByte(160);
         this.§8,§.writeUnsignedInt(1);
         this.§8,§.writeByte(161);
         this.§8,§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§^n§ == "")
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
            _loc16_ = §4O§[_loc15_[0]];
            if(!this.§6a§)
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
               if(_loc16_.flags & §+5§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§^n§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §8X§)
               {
                  _loc7_++;
                  if(_loc7_ > §5! §)
                  {
                     this.§^n§ = "error: nesting to deep, maximum allowed is " + §5! § + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §2z§ && !_loc5_)
               {
                  this.§^n§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§8,§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<7§)
               {
                  this.§^n§ = "error: too many opcodes. maximum is " + §<7§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§^n§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §3%§[_loc24_[0]];
                  if(!this.§6a§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§^n§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §[E§))
                     {
                        this.§^n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§^n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §0R§))
                  {
                     this.§^n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§^n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §`f§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §3E§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§^n§ = "error: relative can not be destination";
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
                     if((_loc39_ = §3%§[_loc38_[0]]) == null)
                     {
                        this.§^n§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§^n§ = "error: bad index register select";
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
                        this.§^n§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§8,§.writeShort(_loc27_);
                     this.§8,§.writeByte(_loc28_);
                     this.§8,§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §-Z§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §8]§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§8,§.writeShort(_loc27_);
                     this.§8,§.writeByte(int(_loc44_ * 8));
                     this.§8,§.writeByte(0);
                     this.§8,§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§8,§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§8,§.writeShort(_loc27_);
                     this.§8,§.writeByte(_loc34_);
                     this.§8,§.writeByte(_loc28_);
                     this.§8,§.writeByte(_loc25_.emitCode);
                     this.§8,§.writeByte(_loc32_);
                     this.§8,§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§8,§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§^n§ != "")
         {
            this.§^n§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§8,§.length = 0;
         }
         if(this.§6a§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§8,§.length;
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
               if((_loc49_ = this.§8,§[_loc48_].toString(16)).length < 2)
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
         return this.§8,§;
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
