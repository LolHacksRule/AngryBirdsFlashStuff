package §06§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class § 4§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%T§:Dictionary = new Dictionary();
      
      private static const §5Y§:Dictionary = new Dictionary();
      
      private static const §%X§:Dictionary = new Dictionary();
      
      private static const §#!X§:int = 4;
      
      private static const § &§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §4f§:uint = 12;
      
      private static const §2!y§:uint = 16;
      
      private static const §&!B§:uint = 20;
      
      private static const §]!a§:uint = 24;
      
      private static const §2!L§:uint = 28;
      
      private static const §+!f§:uint = 1;
      
      private static const §>!v§:uint = 2;
      
      private static const §0!I§:uint = 32;
      
      private static const §,@§:uint = 64;
      
      private static const §>!j§:uint = 1;
      
      private static const §]"%§:uint = 2;
      
      private static const § 5§:uint = 4;
      
      private static const §use §:uint = 8;
      
      private static const §[n§:uint = 16;
      
      private static const §@V§:uint = 32;
      
      private static const §,h§:uint = 128;
      
      private static const §>T§:String = "mov";
      
      private static const §[p§:String = "add";
      
      private static const §4R§:String = "sub";
      
      private static const §<!8§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §<j§:String = "rcp";
      
      private static const §%!L§:String = "min";
      
      private static const §0",§:String = "max";
      
      private static const §]!u§:String = "frc";
      
      private static const §>S§:String = "sqt";
      
      private static const §8S§:String = "rsq";
      
      private static const § !k§:String = "pow";
      
      private static const §#!C§:String = "log";
      
      private static const § R§:String = "exp";
      
      private static const §,!C§:String = "nrm";
      
      private static const §#B§:String = "sin";
      
      private static const §5!!§:String = "cos";
      
      private static const §[E§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §%!N§:String = "abs";
      
      private static const §?L§:String = "neg";
      
      private static const §=!m§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §5b§:String = "ifz";
      
      private static const §>$§:String = "inz";
      
      private static const §#!4§:String = "ife";
      
      private static const §]^§:String = "ine";
      
      private static const §6!z§:String = "ifg";
      
      private static const §<T§:String = "ifl";
      
      private static const §0!X§:String = "ieg";
      
      private static const §`7§:String = "iel";
      
      private static const §@=§:String = "els";
      
      private static const §7z§:String = "eif";
      
      private static const §-! §:String = "rep";
      
      private static const §^S§:String = "erp";
      
      private static const §?!§:String = "brk";
      
      private static const §=!d§:String = "kil";
      
      private static const §5!Q§:String = "tex";
      
      private static const §<J§:String = "sge";
      
      private static const §`F§:String = "slt";
      
      private static const §[?§:String = "sgn";
      
      private static const §5,§:String = "va";
      
      private static const §,!l§:String = "vc";
      
      private static const §!!Z§:String = "vt";
      
      private static const §@!U§:String = "op";
      
      private static const V:String = "v";
      
      private static const §4!v§:String = "fc";
      
      private static const §8!e§:String = "ft";
      
      private static const §"!,§:String = "fs";
      
      private static const §`"§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §@R§:String = "cube";
      
      private static const §>_§:String = "mipnearest";
      
      private static const §,!f§:String = "miplinear";
      
      private static const §4"4§:String = "mipnone";
      
      private static const §!a§:String = "nomip";
      
      private static const §[!k§:String = "nearest";
      
      private static const §!"%§:String = "linear";
      
      private static const § !F§:String = "centroid";
      
      private static const §2!G§:String = "single";
      
      private static const §&4§:String = "depth";
      
      private static const §2!J§:String = "repeat";
      
      private static const §6!&§:String = "wrap";
      
      private static const §9!Z§:String = "clamp";
       
      
      private var §?1§:ByteArray = null;
      
      private var §5L§:String = "";
      
      private var §0!?§:Boolean = false;
      
      public function § 4§(param1:Boolean = false)
      {
         super();
         this.§0!?§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%T§[§>T§] = new OpCode(§>T§,2,0,0);
         §%T§[§[p§] = new OpCode(§[p§,3,1,0);
         §%T§[§4R§] = new OpCode(§4R§,3,2,0);
         §%T§[§<!8§] = new OpCode(§<!8§,3,3,0);
         §%T§[DIV] = new OpCode(DIV,3,4,0);
         §%T§[§<j§] = new OpCode(§<j§,2,5,0);
         §%T§[§%!L§] = new OpCode(§%!L§,3,6,0);
         §%T§[§0",§] = new OpCode(§0",§,3,7,0);
         §%T§[§]!u§] = new OpCode(§]!u§,2,8,0);
         §%T§[§>S§] = new OpCode(§>S§,2,9,0);
         §%T§[§8S§] = new OpCode(§8S§,2,10,0);
         §%T§[§ !k§] = new OpCode(§ !k§,3,11,0);
         §%T§[§#!C§] = new OpCode(§#!C§,2,12,0);
         §%T§[§ R§] = new OpCode(§ R§,2,13,0);
         §%T§[§,!C§] = new OpCode(§,!C§,2,14,0);
         §%T§[§#B§] = new OpCode(§#B§,2,15,0);
         §%T§[§5!!§] = new OpCode(§5!!§,2,16,0);
         §%T§[§[E§] = new OpCode(§[E§,3,17,0);
         §%T§[DP3] = new OpCode(DP3,3,18,0);
         §%T§[DP4] = new OpCode(DP4,3,19,0);
         §%T§[§%!N§] = new OpCode(§%!N§,2,20,0);
         §%T§[§?L§] = new OpCode(§?L§,2,21,0);
         §%T§[§=!m§] = new OpCode(§=!m§,2,22,0);
         §%T§[M33] = new OpCode(M33,3,23,§[n§);
         §%T§[M44] = new OpCode(M44,3,24,§[n§);
         §%T§[M34] = new OpCode(M34,3,25,§[n§);
         §%T§[§5b§] = new OpCode(§5b§,1,26,§,h§ | §]"%§ | §>!j§);
         §%T§[§>$§] = new OpCode(§>$§,1,27,§,h§ | §]"%§ | §>!j§);
         §%T§[§#!4§] = new OpCode(§#!4§,2,28,§,h§ | §]"%§ | §>!j§);
         §%T§[§]^§] = new OpCode(§]^§,2,29,§,h§ | §]"%§ | §>!j§);
         §%T§[§6!z§] = new OpCode(§6!z§,2,30,§,h§ | §]"%§ | §>!j§);
         §%T§[§<T§] = new OpCode(§<T§,2,31,§,h§ | §]"%§ | §>!j§);
         §%T§[§0!X§] = new OpCode(§0!X§,2,32,§,h§ | §]"%§ | §>!j§);
         §%T§[§`7§] = new OpCode(§`7§,2,33,§,h§ | §]"%§ | §>!j§);
         §%T§[§@=§] = new OpCode(§@=§,0,34,§,h§ | §]"%§ | § 5§);
         §%T§[§7z§] = new OpCode(§7z§,0,35,§,h§ | § 5§);
         §%T§[§-! §] = new OpCode(§-! §,1,36,§,h§ | §]"%§ | §>!j§);
         §%T§[§^S§] = new OpCode(§^S§,0,37,§,h§ | § 5§);
         §%T§[§?!§] = new OpCode(§?!§,0,38,§,h§);
         §%T§[§=!d§] = new OpCode(§=!d§,1,39,§,h§ | §@V§);
         §%T§[§5!Q§] = new OpCode(§5!Q§,3,40,§@V§ | §use §);
         §%T§[§<J§] = new OpCode(§<J§,3,41,0);
         §%T§[§`F§] = new OpCode(§`F§,3,42,0);
         §%T§[§[?§] = new OpCode(§[?§,2,43,0);
         §5Y§[§5,§] = new Register(§5,§,"vertex attribute",0,7,§,@§ | §>!v§);
         §5Y§[§,!l§] = new Register(§,!l§,"vertex constant",1,127,§,@§ | §>!v§);
         §5Y§[§!!Z§] = new Register(§!!Z§,"vertex temporary",2,7,§,@§ | §+!f§ | §>!v§);
         §5Y§[§@!U§] = new Register(§@!U§,"vertex output",3,0,§,@§ | §+!f§);
         §5Y§[V] = new Register(V,"varying",4,7,§,@§ | §0!I§ | §>!v§ | §+!f§);
         §5Y§[§4!v§] = new Register(§4!v§,"fragment constant",1,27,§0!I§ | §>!v§);
         §5Y§[§8!e§] = new Register(§8!e§,"fragment temporary",2,7,§0!I§ | §+!f§ | §>!v§);
         §5Y§[§"!,§] = new Register(§"!,§,"texture sampler",5,7,§0!I§ | §>!v§);
         §5Y§[§`"§] = new Register(§`"§,"fragment output",3,0,§0!I§ | §+!f§);
         §%X§[D2] = new Sampler(D2,§4f§,0);
         §%X§[D3] = new Sampler(D3,§4f§,2);
         §%X§[§@R§] = new Sampler(§@R§,§4f§,1);
         §%X§[§>_§] = new Sampler(§>_§,§]!a§,1);
         §%X§[§,!f§] = new Sampler(§,!f§,§]!a§,2);
         §%X§[§4"4§] = new Sampler(§4"4§,§]!a§,0);
         §%X§[§!a§] = new Sampler(§!a§,§]!a§,0);
         §%X§[§[!k§] = new Sampler(§[!k§,§2!L§,0);
         §%X§[§!"%§] = new Sampler(§!"%§,§2!L§,1);
         §%X§[§ !F§] = new Sampler(§ !F§,§2!y§,1 << 0);
         §%X§[§2!G§] = new Sampler(§2!G§,§2!y§,1 << 1);
         §%X§[§&4§] = new Sampler(§&4§,§2!y§,1 << 2);
         §%X§[§2!J§] = new Sampler(§2!J§,§&!B§,1);
         §%X§[§6!&§] = new Sampler(§6!&§,§&!B§,1);
         §%X§[§9!Z§] = new Sampler(§9!Z§,§&!B§,0);
      }
      
      public function get error() : String
      {
         return this.§5L§;
      }
      
      public function get § !1§() : ByteArray
      {
         return this.§?1§;
      }
      
      public function §=c§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§?1§ = new ByteArray();
         this.§5L§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5L§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§ !1§.endian = Endian.LITTLE_ENDIAN;
         this.§ !1§.writeByte(160);
         this.§ !1§.writeUnsignedInt(1);
         this.§ !1§.writeByte(161);
         this.§ !1§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§5L§ == "")
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
            _loc16_ = §%T§[_loc15_[0]];
            if(!this.§0!?§)
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
               if(_loc16_.flags & § 5§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§5L§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §]"%§)
               {
                  _loc7_++;
                  if(_loc7_ > §#!X§)
                  {
                     this.§5L§ = "error: nesting to deep, maximum allowed is " + §#!X§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §@V§ && !_loc5_)
               {
                  this.§5L§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§ !1§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > § &§)
               {
                  this.§5L§ = "error: too many opcodes. maximum is " + § &§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§5L§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §5Y§[_loc24_[0]];
                  if(!this.§0!?§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§5L§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §0!I§))
                     {
                        this.§5L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§5L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §,@§))
                  {
                     this.§5L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§5L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §,h§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §use §;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§5L§ = "error: relative can not be destination";
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
                     if((_loc39_ = §5Y§[_loc38_[0]]) == null)
                     {
                        this.§5L§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§5L§ = "error: bad index register select";
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
                        this.§5L§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§ !1§.writeShort(_loc27_);
                     this.§ !1§.writeByte(_loc28_);
                     this.§ !1§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §%X§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §2!y§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§ !1§.writeShort(_loc27_);
                     this.§ !1§.writeByte(int(_loc44_ * 8));
                     this.§ !1§.writeByte(0);
                     this.§ !1§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§ !1§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§ !1§.writeShort(_loc27_);
                     this.§ !1§.writeByte(_loc34_);
                     this.§ !1§.writeByte(_loc28_);
                     this.§ !1§.writeByte(_loc25_.emitCode);
                     this.§ !1§.writeByte(_loc32_);
                     this.§ !1§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§ !1§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§5L§ != "")
         {
            this.§5L§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§ !1§.length = 0;
         }
         if(this.§0!?§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§ !1§.length;
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
               if((_loc49_ = this.§ !1§[_loc48_].toString(16)).length < 2)
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
         return this.§ !1§;
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
