package §5!G§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §"Q§:Dictionary = new Dictionary();
      
      private static const §3'§:Dictionary = new Dictionary();
      
      private static const §`v§:Dictionary = new Dictionary();
      
      private static const §;!>§:int = 4;
      
      private static const §#!4§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §7!3§:uint = 12;
      
      private static const §8!C§:uint = 16;
      
      private static const §<!N§:uint = 20;
      
      private static const §0^§:uint = 24;
      
      private static const §#!_§:uint = 28;
      
      private static const §]!V§:uint = 1;
      
      private static const § H§:uint = 2;
      
      private static const §5=§:uint = 32;
      
      private static const §+O§:uint = 64;
      
      private static const §"!;§:uint = 1;
      
      private static const § r§:uint = 2;
      
      private static const §-!D§:uint = 4;
      
      private static const §1!%§:uint = 8;
      
      private static const §=J§:uint = 16;
      
      private static const §#x§:uint = 32;
      
      private static const §^!h§:uint = 128;
      
      private static const §67§:String = "mov";
      
      private static const §[!c§:String = "add";
      
      private static const §1C§:String = "sub";
      
      private static const §`!3§:String = "mul";
      
      private static const § !'§:String = "div";
      
      private static const §=!B§:String = "rcp";
      
      private static const §,!§:String = "min";
      
      private static const §6!H§:String = "max";
      
      private static const §=!V§:String = "frc";
      
      private static const §'!5§:String = "sqt";
      
      private static const §try§:String = "rsq";
      
      private static const §]l§:String = "pow";
      
      private static const §5c§:String = "log";
      
      private static const §>R§:String = "exp";
      
      private static const §"J§:String = "nrm";
      
      private static const §#S§:String = "sin";
      
      private static const §`k§:String = "cos";
      
      private static const §^!Z§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §9Q§:String = "abs";
      
      private static const §2§:String = "neg";
      
      private static const §<G§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §;D§:String = "ifz";
      
      private static const §each §:String = "inz";
      
      private static const §+!A§:String = "ife";
      
      private static const §3f§:String = "ine";
      
      private static const §]!!§:String = "ifg";
      
      private static const §6!k§:String = "ifl";
      
      private static const §9e§:String = "ieg";
      
      private static const §8!f§:String = "iel";
      
      private static const §7!^§:String = "els";
      
      private static const §=j§:String = "eif";
      
      private static const §&X§:String = "rep";
      
      private static const §3q§:String = "erp";
      
      private static const §4!#§:String = "brk";
      
      private static const §>!!§:String = "kil";
      
      private static const §`!N§:String = "tex";
      
      private static const §#!5§:String = "sge";
      
      private static const § !?§:String = "slt";
      
      private static const §?!6§:String = "sgn";
      
      private static const §3!%§:String = "va";
      
      private static const §]!9§:String = "vc";
      
      private static const §]!'§:String = "vt";
      
      private static const §]!H§:String = "op";
      
      private static const §0,§:String = "v";
      
      private static const §#?§:String = "fc";
      
      private static const § f§:String = "ft";
      
      private static const §9c§:String = "fs";
      
      private static const §',§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §"q§:String = "cube";
      
      private static const §`B§:String = "mipnearest";
      
      private static const §4e§:String = "miplinear";
      
      private static const §^!i§:String = "mipnone";
      
      private static const §2!X§:String = "nomip";
      
      private static const §7!N§:String = "nearest";
      
      private static const §>T§:String = "linear";
      
      private static const §<9§:String = "centroid";
      
      private static const §`!g§:String = "single";
      
      private static const §<P§:String = "depth";
      
      private static const §@!7§:String = "repeat";
      
      private static const §3!g§:String = "wrap";
      
      private static const §4L§:String = "clamp";
       
      
      private var §"_§:ByteArray = null;
      
      private var §7E§:String = "";
      
      private var §86§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§86§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §"Q§[§67§] = new OpCode(§67§,2,0,0);
         §"Q§[§[!c§] = new OpCode(§[!c§,3,1,0);
         §"Q§[§1C§] = new OpCode(§1C§,3,2,0);
         §"Q§[§`!3§] = new OpCode(§`!3§,3,3,0);
         §"Q§[§ !'§] = new OpCode(§ !'§,3,4,0);
         §"Q§[§=!B§] = new OpCode(§=!B§,2,5,0);
         §"Q§[§,!§] = new OpCode(§,!§,3,6,0);
         §"Q§[§6!H§] = new OpCode(§6!H§,3,7,0);
         §"Q§[§=!V§] = new OpCode(§=!V§,2,8,0);
         §"Q§[§'!5§] = new OpCode(§'!5§,2,9,0);
         §"Q§[§try§] = new OpCode(§try§,2,10,0);
         §"Q§[§]l§] = new OpCode(§]l§,3,11,0);
         §"Q§[§5c§] = new OpCode(§5c§,2,12,0);
         §"Q§[§>R§] = new OpCode(§>R§,2,13,0);
         §"Q§[§"J§] = new OpCode(§"J§,2,14,0);
         §"Q§[§#S§] = new OpCode(§#S§,2,15,0);
         §"Q§[§`k§] = new OpCode(§`k§,2,16,0);
         §"Q§[§^!Z§] = new OpCode(§^!Z§,3,17,0);
         §"Q§[DP3] = new OpCode(DP3,3,18,0);
         §"Q§[DP4] = new OpCode(DP4,3,19,0);
         §"Q§[§9Q§] = new OpCode(§9Q§,2,20,0);
         §"Q§[§2§] = new OpCode(§2§,2,21,0);
         §"Q§[§<G§] = new OpCode(§<G§,2,22,0);
         §"Q§[M33] = new OpCode(M33,3,23,§=J§);
         §"Q§[M44] = new OpCode(M44,3,24,§=J§);
         §"Q§[M34] = new OpCode(M34,3,25,§=J§);
         §"Q§[§;D§] = new OpCode(§;D§,1,26,§^!h§ | § r§ | §"!;§);
         §"Q§[§each §] = new OpCode(§each §,1,27,§^!h§ | § r§ | §"!;§);
         §"Q§[§+!A§] = new OpCode(§+!A§,2,28,§^!h§ | § r§ | §"!;§);
         §"Q§[§3f§] = new OpCode(§3f§,2,29,§^!h§ | § r§ | §"!;§);
         §"Q§[§]!!§] = new OpCode(§]!!§,2,30,§^!h§ | § r§ | §"!;§);
         §"Q§[§6!k§] = new OpCode(§6!k§,2,31,§^!h§ | § r§ | §"!;§);
         §"Q§[§9e§] = new OpCode(§9e§,2,32,§^!h§ | § r§ | §"!;§);
         §"Q§[§8!f§] = new OpCode(§8!f§,2,33,§^!h§ | § r§ | §"!;§);
         §"Q§[§7!^§] = new OpCode(§7!^§,0,34,§^!h§ | § r§ | §-!D§);
         §"Q§[§=j§] = new OpCode(§=j§,0,35,§^!h§ | §-!D§);
         §"Q§[§&X§] = new OpCode(§&X§,1,36,§^!h§ | § r§ | §"!;§);
         §"Q§[§3q§] = new OpCode(§3q§,0,37,§^!h§ | §-!D§);
         §"Q§[§4!#§] = new OpCode(§4!#§,0,38,§^!h§);
         §"Q§[§>!!§] = new OpCode(§>!!§,1,39,§^!h§ | §#x§);
         §"Q§[§`!N§] = new OpCode(§`!N§,3,40,§#x§ | §1!%§);
         §"Q§[§#!5§] = new OpCode(§#!5§,3,41,0);
         §"Q§[§ !?§] = new OpCode(§ !?§,3,42,0);
         §"Q§[§?!6§] = new OpCode(§?!6§,2,43,0);
         §3'§[§3!%§] = new Register(§3!%§,"vertex attribute",0,7,§+O§ | § H§);
         §3'§[§]!9§] = new Register(§]!9§,"vertex constant",1,127,§+O§ | § H§);
         §3'§[§]!'§] = new Register(§]!'§,"vertex temporary",2,7,§+O§ | §]!V§ | § H§);
         §3'§[§]!H§] = new Register(§]!H§,"vertex output",3,0,§+O§ | §]!V§);
         §3'§[§0,§] = new Register(§0,§,"varying",4,7,§+O§ | §5=§ | § H§ | §]!V§);
         §3'§[§#?§] = new Register(§#?§,"fragment constant",1,27,§5=§ | § H§);
         §3'§[§ f§] = new Register(§ f§,"fragment temporary",2,7,§5=§ | §]!V§ | § H§);
         §3'§[§9c§] = new Register(§9c§,"texture sampler",5,7,§5=§ | § H§);
         §3'§[§',§] = new Register(§',§,"fragment output",3,0,§5=§ | §]!V§);
         §`v§[D2] = new Sampler(D2,§7!3§,0);
         §`v§[D3] = new Sampler(D3,§7!3§,2);
         §`v§[§"q§] = new Sampler(§"q§,§7!3§,1);
         §`v§[§`B§] = new Sampler(§`B§,§0^§,1);
         §`v§[§4e§] = new Sampler(§4e§,§0^§,2);
         §`v§[§^!i§] = new Sampler(§^!i§,§0^§,0);
         §`v§[§2!X§] = new Sampler(§2!X§,§0^§,0);
         §`v§[§7!N§] = new Sampler(§7!N§,§#!_§,0);
         §`v§[§>T§] = new Sampler(§>T§,§#!_§,1);
         §`v§[§<9§] = new Sampler(§<9§,§8!C§,1 << 0);
         §`v§[§`!g§] = new Sampler(§`!g§,§8!C§,1 << 1);
         §`v§[§<P§] = new Sampler(§<P§,§8!C§,1 << 2);
         §`v§[§@!7§] = new Sampler(§@!7§,§<!N§,1);
         §`v§[§3!g§] = new Sampler(§3!g§,§<!N§,1);
         §`v§[§4L§] = new Sampler(§4L§,§<!N§,0);
      }
      
      public function get error() : String
      {
         return this.§7E§;
      }
      
      public function get §<x§() : ByteArray
      {
         return this.§"_§;
      }
      
      public function §#!G§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         var _loc46_:String = null;
         var _loc47_:uint = 0;
         var _loc48_:uint = 0;
         var _loc49_:String = null;
         var _loc4_:uint = getTimer();
         this.§"_§ = new ByteArray();
         this.§7E§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§7E§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§<x§.endian = Endian.LITTLE_ENDIAN;
         this.§<x§.writeByte(160);
         this.§<x§.writeUnsignedInt(1);
         this.§<x§.writeByte(161);
         this.§<x§.writeByte(!!_loc5_ ? int(1) : int(0));
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§7E§ == "")
         {
            _loc11_ = new String(_loc6_[_loc9_]);
            _loc12_ = _loc11_.search("//");
            if(_loc12_ != -1)
            {
               _loc11_ = _loc11_.slice(0,_loc12_);
            }
            _loc13_ = _loc11_.search(/<.*>/g);
            if(_loc13_ != -1)
            {
               _loc14_ = _loc11_.slice(_loc13_).match(/([\w\.\-\+]+)/gi);
               _loc11_ = _loc11_.slice(0,_loc13_);
            }
            _loc15_ = _loc11_.match(/^\w{3}/ig);
            _loc16_ = §"Q§[_loc15_[0]];
            if(!this.§86§)
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
               if(_loc16_.flags & §-!D§)
               {
                  _loc7_--;
                  if(_loc7_ < 0)
                  {
                     this.§7E§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & § r§)
               {
                  _loc7_++;
                  if(_loc7_ > §;!>§)
                  {
                     this.§7E§ = "error: nesting to deep, maximum allowed is " + §;!>§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §#x§ && !_loc5_)
               {
                  this.§7E§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§<x§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §#!4§)
               {
                  this.§7E§ = "error: too many opcodes. maximum is " + §#!4§ + ".";
                  break;
               }
               _loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi);
               if(_loc17_.length != _loc16_.numRegister)
               {
                  this.§7E§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
                  break;
               }
               _loc18_ = false;
               _loc19_ = 64 + 64 + 32;
               _loc20_ = _loc17_.length;
               _loc21_ = 0;
               while(_loc21_ < _loc20_)
               {
                  _loc22_ = false;
                  _loc23_ = _loc17_[_loc21_].match(/\[.*\]/ig);
                  if(_loc23_.length > 0)
                  {
                     _loc17_[_loc21_] = _loc17_[_loc21_].replace(_loc23_[0],"0");
                     if(!param3)
                     {
                     }
                     _loc22_ = true;
                  }
                  _loc24_ = _loc17_[_loc21_].match(/^\b[A-Za-z]{1,2}/ig);
                  _loc25_ = §3'§[_loc24_[0]];
                  if(!this.§86§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§7E§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §5=§))
                     {
                        this.§7E§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§7E§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §+O§))
                  {
                     this.§7E§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§7E§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §^!h§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §1!%§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§7E§ = "error: relative can not be destination";
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
                        _loc35_ = _loc29_[0].charCodeAt(_loc37_) - "x".charCodeAt(0);
                        if(_loc35_ > 2)
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
                     _loc39_ = §3'§[_loc38_[0]];
                     if(_loc39_ == null)
                     {
                        this.§7E§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     _loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/);
                     if(_loc40_.length == 0)
                     {
                        this.§7E§ = "error: bad index register select";
                        _loc18_ = true;
                        break;
                     }
                     _loc33_ = _loc40_[0].charCodeAt(1) - "x".charCodeAt(0);
                     if(_loc33_ > 2)
                     {
                        _loc33_ = 3;
                     }
                     _loc41_ = _loc23_[0].match(/\+\d{1,3}/ig);
                     if(_loc41_.length > 0)
                     {
                        _loc34_ = _loc41_[0];
                     }
                     if(_loc34_ < 0 || _loc34_ > 255)
                     {
                        this.§7E§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§<x§.writeShort(_loc27_);
                     this.§<x§.writeByte(_loc28_);
                     this.§<x§.writeByte(_loc25_.emitCode);
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
                        _loc45_ = §`v§[_loc14_[_loc37_]];
                        if(_loc45_ == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §8!C§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§<x§.writeShort(_loc27_);
                     this.§<x§.writeByte(int(_loc44_ * 8));
                     this.§<x§.writeByte(0);
                     this.§<x§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§<x§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§<x§.writeShort(_loc27_);
                     this.§<x§.writeByte(_loc34_);
                     this.§<x§.writeByte(_loc28_);
                     this.§<x§.writeByte(_loc25_.emitCode);
                     this.§<x§.writeByte(_loc32_);
                     this.§<x§.writeShort(!!_loc22_ ? int(_loc33_ | 1 << 15) : int(0));
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§<x§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§7E§ != "")
         {
            this.§7E§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§<x§.length = 0;
         }
         if(this.§86§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§<x§.length;
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
               _loc49_ = this.§<x§[_loc48_].toString(16);
               if(_loc49_.length < 2)
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
         return this.§<x§;
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
