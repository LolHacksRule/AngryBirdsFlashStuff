package §2!I§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §#!o§:Dictionary = new Dictionary();
      
      private static const §switch§:Dictionary = new Dictionary();
      
      private static const §&!u§:Dictionary = new Dictionary();
      
      private static const §=!z§:int = 4;
      
      private static const §<!Z§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §7!W§:uint = 12;
      
      private static const §7!V§:uint = 16;
      
      private static const §26§:uint = 20;
      
      private static const §%"§:uint = 24;
      
      private static const §1![§:uint = 28;
      
      private static const §!!n§:uint = 1;
      
      private static const §&!U§:uint = 2;
      
      private static const §8<§:uint = 32;
      
      private static const §]!;§:uint = 64;
      
      private static const §1h§:uint = 1;
      
      private static const §9M§:uint = 2;
      
      private static const §<5§:uint = 4;
      
      private static const §7c§:uint = 8;
      
      private static const §'3§:uint = 16;
      
      private static const §6s§:uint = 32;
      
      private static const §]!I§:uint = 128;
      
      private static const §=v§:String = "mov";
      
      private static const §?u§:String = "add";
      
      private static const §5!+§:String = "sub";
      
      private static const §#,§:String = "mul";
      
      private static const §0!,§:String = "div";
      
      private static const §=k§:String = "rcp";
      
      private static const §&!I§:String = "min";
      
      private static const §`j§:String = "max";
      
      private static const §`B§:String = "frc";
      
      private static const §+!_§:String = "sqt";
      
      private static const §]!z§:String = "rsq";
      
      private static const §'!]§:String = "pow";
      
      private static const § X§:String = "log";
      
      private static const §^s§:String = "exp";
      
      private static const §^!P§:String = "nrm";
      
      private static const §"j§:String = "sin";
      
      private static const §?!V§:String = "cos";
      
      private static const §+;§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §<D§:String = "abs";
      
      private static const §#!j§:String = "neg";
      
      private static const §+!P§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §2!h§:String = "ifz";
      
      private static const §3!2§:String = "inz";
      
      private static const §0P§:String = "ife";
      
      private static const §9y§:String = "ine";
      
      private static const §>!2§:String = "ifg";
      
      private static const §1g§:String = "ifl";
      
      private static const §]Y§:String = "ieg";
      
      private static const §`!g§:String = "iel";
      
      private static const §3![§:String = "els";
      
      private static const §<T§:String = "eif";
      
      private static const §9!>§:String = "rep";
      
      private static const §2!W§:String = "erp";
      
      private static const §<!"§:String = "brk";
      
      private static const §+§:String = "kil";
      
      private static const §9d§:String = "tex";
      
      private static const §<i§:String = "sge";
      
      private static const §9!#§:String = "slt";
      
      private static const §,9§:String = "sgn";
      
      private static const §]!9§:String = "va";
      
      private static const §%N§:String = "vc";
      
      private static const §,p§:String = "vt";
      
      private static const §#!Z§:String = "op";
      
      private static const §5!b§:String = "v";
      
      private static const §,!y§:String = "fc";
      
      private static const §1f§:String = "ft";
      
      private static const §8!H§:String = "fs";
      
      private static const §0!u§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §!!y§:String = "cube";
      
      private static const §^7§:String = "mipnearest";
      
      private static const §1!t§:String = "miplinear";
      
      private static const §8!#§:String = "mipnone";
      
      private static const §<! §:String = "nomip";
      
      private static const §2!@§:String = "nearest";
      
      private static const §7Q§:String = "linear";
      
      private static const §"!g§:String = "centroid";
      
      private static const §3!>§:String = "single";
      
      private static const § !O§:String = "depth";
      
      private static const §"!;§:String = "repeat";
      
      private static const §=V§:String = "wrap";
      
      private static const §0A§:String = "clamp";
       
      
      private var §11§:ByteArray = null;
      
      private var §0!n§:String = "";
      
      private var §3'§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§3'§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §#!o§[§=v§] = new OpCode(§=v§,2,0,0);
         §#!o§[§?u§] = new OpCode(§?u§,3,1,0);
         §#!o§[§5!+§] = new OpCode(§5!+§,3,2,0);
         §#!o§[§#,§] = new OpCode(§#,§,3,3,0);
         §#!o§[§0!,§] = new OpCode(§0!,§,3,4,0);
         §#!o§[§=k§] = new OpCode(§=k§,2,5,0);
         §#!o§[§&!I§] = new OpCode(§&!I§,3,6,0);
         §#!o§[§`j§] = new OpCode(§`j§,3,7,0);
         §#!o§[§`B§] = new OpCode(§`B§,2,8,0);
         §#!o§[§+!_§] = new OpCode(§+!_§,2,9,0);
         §#!o§[§]!z§] = new OpCode(§]!z§,2,10,0);
         §#!o§[§'!]§] = new OpCode(§'!]§,3,11,0);
         §#!o§[§ X§] = new OpCode(§ X§,2,12,0);
         §#!o§[§^s§] = new OpCode(§^s§,2,13,0);
         §#!o§[§^!P§] = new OpCode(§^!P§,2,14,0);
         §#!o§[§"j§] = new OpCode(§"j§,2,15,0);
         §#!o§[§?!V§] = new OpCode(§?!V§,2,16,0);
         §#!o§[§+;§] = new OpCode(§+;§,3,17,0);
         §#!o§[DP3] = new OpCode(DP3,3,18,0);
         §#!o§[DP4] = new OpCode(DP4,3,19,0);
         §#!o§[§<D§] = new OpCode(§<D§,2,20,0);
         §#!o§[§#!j§] = new OpCode(§#!j§,2,21,0);
         §#!o§[§+!P§] = new OpCode(§+!P§,2,22,0);
         §#!o§[M33] = new OpCode(M33,3,23,§'3§);
         §#!o§[M44] = new OpCode(M44,3,24,§'3§);
         §#!o§[M34] = new OpCode(M34,3,25,§'3§);
         §#!o§[§2!h§] = new OpCode(§2!h§,1,26,§]!I§ | §9M§ | §1h§);
         §#!o§[§3!2§] = new OpCode(§3!2§,1,27,§]!I§ | §9M§ | §1h§);
         §#!o§[§0P§] = new OpCode(§0P§,2,28,§]!I§ | §9M§ | §1h§);
         §#!o§[§9y§] = new OpCode(§9y§,2,29,§]!I§ | §9M§ | §1h§);
         §#!o§[§>!2§] = new OpCode(§>!2§,2,30,§]!I§ | §9M§ | §1h§);
         §#!o§[§1g§] = new OpCode(§1g§,2,31,§]!I§ | §9M§ | §1h§);
         §#!o§[§]Y§] = new OpCode(§]Y§,2,32,§]!I§ | §9M§ | §1h§);
         §#!o§[§`!g§] = new OpCode(§`!g§,2,33,§]!I§ | §9M§ | §1h§);
         §#!o§[§3![§] = new OpCode(§3![§,0,34,§]!I§ | §9M§ | §<5§);
         §#!o§[§<T§] = new OpCode(§<T§,0,35,§]!I§ | §<5§);
         §#!o§[§9!>§] = new OpCode(§9!>§,1,36,§]!I§ | §9M§ | §1h§);
         §#!o§[§2!W§] = new OpCode(§2!W§,0,37,§]!I§ | §<5§);
         §#!o§[§<!"§] = new OpCode(§<!"§,0,38,§]!I§);
         §#!o§[§+§] = new OpCode(§+§,1,39,§]!I§ | §6s§);
         §#!o§[§9d§] = new OpCode(§9d§,3,40,§6s§ | §7c§);
         §#!o§[§<i§] = new OpCode(§<i§,3,41,0);
         §#!o§[§9!#§] = new OpCode(§9!#§,3,42,0);
         §#!o§[§,9§] = new OpCode(§,9§,2,43,0);
         §switch§[§]!9§] = new Register(§]!9§,"vertex attribute",0,7,§]!;§ | §&!U§);
         §switch§[§%N§] = new Register(§%N§,"vertex constant",1,127,§]!;§ | §&!U§);
         §switch§[§,p§] = new Register(§,p§,"vertex temporary",2,7,§]!;§ | §!!n§ | §&!U§);
         §switch§[§#!Z§] = new Register(§#!Z§,"vertex output",3,0,§]!;§ | §!!n§);
         §switch§[§5!b§] = new Register(§5!b§,"varying",4,7,§]!;§ | §8<§ | §&!U§ | §!!n§);
         §switch§[§,!y§] = new Register(§,!y§,"fragment constant",1,27,§8<§ | §&!U§);
         §switch§[§1f§] = new Register(§1f§,"fragment temporary",2,7,§8<§ | §!!n§ | §&!U§);
         §switch§[§8!H§] = new Register(§8!H§,"texture sampler",5,7,§8<§ | §&!U§);
         §switch§[§0!u§] = new Register(§0!u§,"fragment output",3,0,§8<§ | §!!n§);
         §&!u§[D2] = new Sampler(D2,§7!W§,0);
         §&!u§[D3] = new Sampler(D3,§7!W§,2);
         §&!u§[§!!y§] = new Sampler(§!!y§,§7!W§,1);
         §&!u§[§^7§] = new Sampler(§^7§,§%"§,1);
         §&!u§[§1!t§] = new Sampler(§1!t§,§%"§,2);
         §&!u§[§8!#§] = new Sampler(§8!#§,§%"§,0);
         §&!u§[§<! §] = new Sampler(§<! §,§%"§,0);
         §&!u§[§2!@§] = new Sampler(§2!@§,§1![§,0);
         §&!u§[§7Q§] = new Sampler(§7Q§,§1![§,1);
         §&!u§[§"!g§] = new Sampler(§"!g§,§7!V§,1 << 0);
         §&!u§[§3!>§] = new Sampler(§3!>§,§7!V§,1 << 1);
         §&!u§[§ !O§] = new Sampler(§ !O§,§7!V§,1 << 2);
         §&!u§[§"!;§] = new Sampler(§"!;§,§26§,1);
         §&!u§[§=V§] = new Sampler(§=V§,§26§,1);
         §&!u§[§0A§] = new Sampler(§0A§,§26§,0);
      }
      
      public function get error() : String
      {
         return this.§0!n§;
      }
      
      public function get §`!L§() : ByteArray
      {
         return this.§11§;
      }
      
      public function §?!h§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§11§ = new ByteArray();
         this.§0!n§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§0!n§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§`!L§.endian = Endian.LITTLE_ENDIAN;
         this.§`!L§.writeByte(160);
         this.§`!L§.writeUnsignedInt(1);
         this.§`!L§.writeByte(161);
         this.§`!L§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§0!n§ == "")
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
            _loc16_ = §#!o§[_loc15_[0]];
            if(!this.§3'§)
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
               if(_loc16_.flags & §<5§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§0!n§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §9M§)
               {
                  _loc7_++;
                  if(_loc7_ > §=!z§)
                  {
                     this.§0!n§ = "error: nesting to deep, maximum allowed is " + §=!z§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §6s§ && !_loc5_)
               {
                  this.§0!n§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§`!L§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<!Z§)
               {
                  this.§0!n§ = "error: too many opcodes. maximum is " + §<!Z§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§0!n§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §switch§[_loc24_[0]];
                  if(!this.§3'§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§0!n§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §8<§))
                     {
                        this.§0!n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§0!n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]!;§))
                  {
                     this.§0!n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§0!n§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §]!I§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §7c§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§0!n§ = "error: relative can not be destination";
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
                     if((_loc39_ = §switch§[_loc38_[0]]) == null)
                     {
                        this.§0!n§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§0!n§ = "error: bad index register select";
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
                        this.§0!n§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§`!L§.writeShort(_loc27_);
                     this.§`!L§.writeByte(_loc28_);
                     this.§`!L§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §&!u§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §7!V§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§`!L§.writeShort(_loc27_);
                     this.§`!L§.writeByte(int(_loc44_ * 8));
                     this.§`!L§.writeByte(0);
                     this.§`!L§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§`!L§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§`!L§.writeShort(_loc27_);
                     this.§`!L§.writeByte(_loc34_);
                     this.§`!L§.writeByte(_loc28_);
                     this.§`!L§.writeByte(_loc25_.emitCode);
                     this.§`!L§.writeByte(_loc32_);
                     this.§`!L§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§`!L§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§0!n§ != "")
         {
            this.§0!n§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§`!L§.length = 0;
         }
         if(this.§3'§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§`!L§.length;
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
               if((_loc49_ = this.§`!L§[_loc48_].toString(16)).length < 2)
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
         return this.§`!L§;
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
