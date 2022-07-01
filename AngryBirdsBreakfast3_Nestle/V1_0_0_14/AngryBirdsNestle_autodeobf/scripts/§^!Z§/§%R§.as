package §^!Z§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%R§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §0P§:Dictionary = new Dictionary();
      
      private static const §8!W§:Dictionary = new Dictionary();
      
      private static const §"&§:Dictionary = new Dictionary();
      
      private static const §?!l§:int = 4;
      
      private static const §^d§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §%!4§:uint = 12;
      
      private static const §6!G§:uint = 16;
      
      private static const §5!3§:uint = 20;
      
      private static const §8X§:uint = 24;
      
      private static const §+!G§:uint = 28;
      
      private static const §&q§:uint = 1;
      
      private static const §,a§:uint = 2;
      
      private static const § !d§:uint = 32;
      
      private static const § !c§:uint = 64;
      
      private static const §&!m§:uint = 1;
      
      private static const §,""§:uint = 2;
      
      private static const §^!?§:uint = 4;
      
      private static const §,!]§:uint = 8;
      
      private static const §@k§:uint = 16;
      
      private static const §,!q§:uint = 32;
      
      private static const §3!7§:uint = 128;
      
      private static const §0!u§:String = "mov";
      
      private static const §`!2§:String = "add";
      
      private static const §6R§:String = "sub";
      
      private static const §&-§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §?!"§:String = "rcp";
      
      private static const §for§:String = "min";
      
      private static const §]8§:String = "max";
      
      private static const §;8§:String = "frc";
      
      private static const §#!S§:String = "sqt";
      
      private static const §2""§:String = "rsq";
      
      private static const §^!0§:String = "pow";
      
      private static const §]3§:String = "log";
      
      private static const §?h§:String = "exp";
      
      private static const §#!l§:String = "nrm";
      
      private static const §<!W§:String = "sin";
      
      private static const §`!b§:String = "cos";
      
      private static const §9,§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6^§:String = "abs";
      
      private static const §&T§:String = "neg";
      
      private static const §?x§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const § !8§:String = "ifz";
      
      private static const §"!§:String = "inz";
      
      private static const §]L§:String = "ife";
      
      private static const §;,§:String = "ine";
      
      private static const §-!§:String = "ifg";
      
      private static const §&!O§:String = "ifl";
      
      private static const §7h§:String = "ieg";
      
      private static const §;!1§:String = "iel";
      
      private static const §-!u§:String = "els";
      
      private static const §"!_§:String = "eif";
      
      private static const §%!P§:String = "rep";
      
      private static const § !_§:String = "erp";
      
      private static const §]!L§:String = "brk";
      
      private static const §4p§:String = "kil";
      
      private static const §2!u§:String = "tex";
      
      private static const §"!%§:String = "sge";
      
      private static const §8m§:String = "slt";
      
      private static const §^!a§:String = "sgn";
      
      private static const §!X§:String = "va";
      
      private static const §!!B§:String = "vc";
      
      private static const §;!T§:String = "vt";
      
      private static const §?v§:String = "op";
      
      private static const V:String = "v";
      
      private static const §"!J§:String = "fc";
      
      private static const §^!P§:String = "ft";
      
      private static const §"8§:String = "fs";
      
      private static const §6I§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §7!h§:String = "cube";
      
      private static const §<!C§:String = "mipnearest";
      
      private static const §!I§:String = "miplinear";
      
      private static const §<!a§:String = "mipnone";
      
      private static const §<8§:String = "nomip";
      
      private static const §3'§:String = "nearest";
      
      private static const §%!F§:String = "linear";
      
      private static const §`3§:String = "centroid";
      
      private static const §," §:String = "single";
      
      private static const §^H§:String = "depth";
      
      private static const §#""§:String = "repeat";
      
      private static const §>f§:String = "wrap";
      
      private static const §@`§:String = "clamp";
       
      
      private var § #§:ByteArray = null;
      
      private var §&]§:String = "";
      
      private var §#D§:Boolean = false;
      
      public function §%R§(param1:Boolean = false)
      {
         super();
         this.§#D§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §0P§[§0!u§] = new OpCode(§0!u§,2,0,0);
         §0P§[§`!2§] = new OpCode(§`!2§,3,1,0);
         §0P§[§6R§] = new OpCode(§6R§,3,2,0);
         §0P§[§&-§] = new OpCode(§&-§,3,3,0);
         §0P§[DIV] = new OpCode(DIV,3,4,0);
         §0P§[§?!"§] = new OpCode(§?!"§,2,5,0);
         §0P§[§for§] = new OpCode(§for§,3,6,0);
         §0P§[§]8§] = new OpCode(§]8§,3,7,0);
         §0P§[§;8§] = new OpCode(§;8§,2,8,0);
         §0P§[§#!S§] = new OpCode(§#!S§,2,9,0);
         §0P§[§2""§] = new OpCode(§2""§,2,10,0);
         §0P§[§^!0§] = new OpCode(§^!0§,3,11,0);
         §0P§[§]3§] = new OpCode(§]3§,2,12,0);
         §0P§[§?h§] = new OpCode(§?h§,2,13,0);
         §0P§[§#!l§] = new OpCode(§#!l§,2,14,0);
         §0P§[§<!W§] = new OpCode(§<!W§,2,15,0);
         §0P§[§`!b§] = new OpCode(§`!b§,2,16,0);
         §0P§[§9,§] = new OpCode(§9,§,3,17,0);
         §0P§[DP3] = new OpCode(DP3,3,18,0);
         §0P§[DP4] = new OpCode(DP4,3,19,0);
         §0P§[§6^§] = new OpCode(§6^§,2,20,0);
         §0P§[§&T§] = new OpCode(§&T§,2,21,0);
         §0P§[§?x§] = new OpCode(§?x§,2,22,0);
         §0P§[M33] = new OpCode(M33,3,23,§@k§);
         §0P§[M44] = new OpCode(M44,3,24,§@k§);
         §0P§[M34] = new OpCode(M34,3,25,§@k§);
         §0P§[§ !8§] = new OpCode(§ !8§,1,26,§3!7§ | §,""§ | §&!m§);
         §0P§[§"!§] = new OpCode(§"!§,1,27,§3!7§ | §,""§ | §&!m§);
         §0P§[§]L§] = new OpCode(§]L§,2,28,§3!7§ | §,""§ | §&!m§);
         §0P§[§;,§] = new OpCode(§;,§,2,29,§3!7§ | §,""§ | §&!m§);
         §0P§[§-!§] = new OpCode(§-!§,2,30,§3!7§ | §,""§ | §&!m§);
         §0P§[§&!O§] = new OpCode(§&!O§,2,31,§3!7§ | §,""§ | §&!m§);
         §0P§[§7h§] = new OpCode(§7h§,2,32,§3!7§ | §,""§ | §&!m§);
         §0P§[§;!1§] = new OpCode(§;!1§,2,33,§3!7§ | §,""§ | §&!m§);
         §0P§[§-!u§] = new OpCode(§-!u§,0,34,§3!7§ | §,""§ | §^!?§);
         §0P§[§"!_§] = new OpCode(§"!_§,0,35,§3!7§ | §^!?§);
         §0P§[§%!P§] = new OpCode(§%!P§,1,36,§3!7§ | §,""§ | §&!m§);
         §0P§[§ !_§] = new OpCode(§ !_§,0,37,§3!7§ | §^!?§);
         §0P§[§]!L§] = new OpCode(§]!L§,0,38,§3!7§);
         §0P§[§4p§] = new OpCode(§4p§,1,39,§3!7§ | §,!q§);
         §0P§[§2!u§] = new OpCode(§2!u§,3,40,§,!q§ | §,!]§);
         §0P§[§"!%§] = new OpCode(§"!%§,3,41,0);
         §0P§[§8m§] = new OpCode(§8m§,3,42,0);
         §0P§[§^!a§] = new OpCode(§^!a§,2,43,0);
         §8!W§[§!X§] = new Register(§!X§,"vertex attribute",0,7,§ !c§ | §,a§);
         §8!W§[§!!B§] = new Register(§!!B§,"vertex constant",1,127,§ !c§ | §,a§);
         §8!W§[§;!T§] = new Register(§;!T§,"vertex temporary",2,7,§ !c§ | §&q§ | §,a§);
         §8!W§[§?v§] = new Register(§?v§,"vertex output",3,0,§ !c§ | §&q§);
         §8!W§[V] = new Register(V,"varying",4,7,§ !c§ | § !d§ | §,a§ | §&q§);
         §8!W§[§"!J§] = new Register(§"!J§,"fragment constant",1,27,§ !d§ | §,a§);
         §8!W§[§^!P§] = new Register(§^!P§,"fragment temporary",2,7,§ !d§ | §&q§ | §,a§);
         §8!W§[§"8§] = new Register(§"8§,"texture sampler",5,7,§ !d§ | §,a§);
         §8!W§[§6I§] = new Register(§6I§,"fragment output",3,0,§ !d§ | §&q§);
         §"&§[D2] = new Sampler(D2,§%!4§,0);
         §"&§[D3] = new Sampler(D3,§%!4§,2);
         §"&§[§7!h§] = new Sampler(§7!h§,§%!4§,1);
         §"&§[§<!C§] = new Sampler(§<!C§,§8X§,1);
         §"&§[§!I§] = new Sampler(§!I§,§8X§,2);
         §"&§[§<!a§] = new Sampler(§<!a§,§8X§,0);
         §"&§[§<8§] = new Sampler(§<8§,§8X§,0);
         §"&§[§3'§] = new Sampler(§3'§,§+!G§,0);
         §"&§[§%!F§] = new Sampler(§%!F§,§+!G§,1);
         §"&§[§`3§] = new Sampler(§`3§,§6!G§,1 << 0);
         §"&§[§," §] = new Sampler(§," §,§6!G§,1 << 1);
         §"&§[§^H§] = new Sampler(§^H§,§6!G§,1 << 2);
         §"&§[§#""§] = new Sampler(§#""§,§5!3§,1);
         §"&§[§>f§] = new Sampler(§>f§,§5!3§,1);
         §"&§[§@`§] = new Sampler(§@`§,§5!3§,0);
      }
      
      public function get error() : String
      {
         return this.§&]§;
      }
      
      public function get §;N§() : ByteArray
      {
         return this.§ #§;
      }
      
      public function §>m§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§ #§ = new ByteArray();
         this.§&]§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§&]§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§;N§.endian = Endian.LITTLE_ENDIAN;
         this.§;N§.writeByte(160);
         this.§;N§.writeUnsignedInt(1);
         this.§;N§.writeByte(161);
         this.§;N§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§&]§ == "")
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
            _loc16_ = §0P§[_loc15_[0]];
            if(!this.§#D§)
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
               if(_loc16_.flags & §^!?§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§&]§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §,""§)
               {
                  _loc7_++;
                  if(_loc7_ > §?!l§)
                  {
                     this.§&]§ = "error: nesting to deep, maximum allowed is " + §?!l§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §,!q§ && !_loc5_)
               {
                  this.§&]§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§;N§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §^d§)
               {
                  this.§&]§ = "error: too many opcodes. maximum is " + §^d§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§&]§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §8!W§[_loc24_[0]];
                  if(!this.§#D§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§&]§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & § !d§))
                     {
                        this.§&]§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§&]§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & § !c§))
                  {
                     this.§&]§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§&]§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §3!7§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §,!]§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§&]§ = "error: relative can not be destination";
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
                     if((_loc39_ = §8!W§[_loc38_[0]]) == null)
                     {
                        this.§&]§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§&]§ = "error: bad index register select";
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
                        this.§&]§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§;N§.writeShort(_loc27_);
                     this.§;N§.writeByte(_loc28_);
                     this.§;N§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §"&§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §6!G§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§;N§.writeShort(_loc27_);
                     this.§;N§.writeByte(int(_loc44_ * 8));
                     this.§;N§.writeByte(0);
                     this.§;N§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§;N§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§;N§.writeShort(_loc27_);
                     this.§;N§.writeByte(_loc34_);
                     this.§;N§.writeByte(_loc28_);
                     this.§;N§.writeByte(_loc25_.emitCode);
                     this.§;N§.writeByte(_loc32_);
                     this.§;N§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§;N§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§&]§ != "")
         {
            this.§&]§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§;N§.length = 0;
         }
         if(this.§#D§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§;N§.length;
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
               if((_loc49_ = this.§;N§[_loc48_].toString(16)).length < 2)
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
         return this.§;N§;
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
