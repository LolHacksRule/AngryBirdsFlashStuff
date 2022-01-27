package §,!Q§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §@!-§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §]!C§:Dictionary = new Dictionary();
      
      private static const §%!'§:Dictionary = new Dictionary();
      
      private static const §9!;§:Dictionary = new Dictionary();
      
      private static const §[!"§:int = 4;
      
      private static const §3!>§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §-b§:uint = 12;
      
      private static const §;!4§:uint = 16;
      
      private static const §-!5§:uint = 20;
      
      private static const §?k§:uint = 24;
      
      private static const §%4§:uint = 28;
      
      private static const §>>§:uint = 1;
      
      private static const §,!b§:uint = 2;
      
      private static const §^J§:uint = 32;
      
      private static const §=!d§:uint = 64;
      
      private static const §^!X§:uint = 1;
      
      private static const §&!P§:uint = 2;
      
      private static const §,f§:uint = 4;
      
      private static const §;O§:uint = 8;
      
      private static const §<@§:uint = 16;
      
      private static const §!G§:uint = 32;
      
      private static const §%p§:uint = 128;
      
      private static const §3;§:String = "mov";
      
      private static const §#w§:String = "add";
      
      private static const §`0§:String = "sub";
      
      private static const §?Z§:String = "mul";
      
      private static const §9!!§:String = "div";
      
      private static const §-_§:String = "rcp";
      
      private static const §&!f§:String = "min";
      
      private static const §7!L§:String = "max";
      
      private static const §0`§:String = "frc";
      
      private static const §0[§:String = "sqt";
      
      private static const § j§:String = "rsq";
      
      private static const §,!W§:String = "pow";
      
      private static const §;!S§:String = "log";
      
      private static const §3!G§:String = "exp";
      
      private static const override:String = "nrm";
      
      private static const §8'§:String = "sin";
      
      private static const §@!%§:String = "cos";
      
      private static const §0!a§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § !!§:String = "abs";
      
      private static const §"!B§:String = "neg";
      
      private static const §]v§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §>C§:String = "ifz";
      
      private static const §]!3§:String = "inz";
      
      private static const §"r§:String = "ife";
      
      private static const §4y§:String = "ine";
      
      private static const §&!Z§:String = "ifg";
      
      private static const §4!6§:String = "ifl";
      
      private static const §?x§:String = "ieg";
      
      private static const §2!&§:String = "iel";
      
      private static const §+6§:String = "els";
      
      private static const §5!3§:String = "eif";
      
      private static const §8!d§:String = "rep";
      
      private static const §#x§:String = "erp";
      
      private static const §+H§:String = "brk";
      
      private static const §<![§:String = "kil";
      
      private static const § !U§:String = "tex";
      
      private static const §[!,§:String = "sge";
      
      private static const §&!,§:String = "slt";
      
      private static const §[!?§:String = "sgn";
      
      private static const §=P§:String = "va";
      
      private static const § !M§:String = "vc";
      
      private static const §^+§:String = "vt";
      
      private static const §0!_§:String = "op";
      
      private static const §<!P§:String = "v";
      
      private static const §?!%§:String = "fc";
      
      private static const §%c§:String = "ft";
      
      private static const §!!7§:String = "fs";
      
      private static const §4j§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §0e§:String = "cube";
      
      private static const §>L§:String = "mipnearest";
      
      private static const § !9§:String = "miplinear";
      
      private static const §^![§:String = "mipnone";
      
      private static const §1!3§:String = "nomip";
      
      private static const §4`§:String = "nearest";
      
      private static const §+!'§:String = "linear";
      
      private static const §9!?§:String = "centroid";
      
      private static const §>O§:String = "single";
      
      private static const §!i§:String = "depth";
      
      private static const §]!S§:String = "repeat";
      
      private static const §6f§:String = "wrap";
      
      private static const §<?§:String = "clamp";
       
      
      private var §"!C§:ByteArray = null;
      
      private var §%!4§:String = "";
      
      private var §;!3§:Boolean = false;
      
      public function §@!-§(param1:Boolean = false)
      {
         super();
         this.§;!3§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §]!C§[§3;§] = new OpCode(§3;§,2,0,0);
         §]!C§[§#w§] = new OpCode(§#w§,3,1,0);
         §]!C§[§`0§] = new OpCode(§`0§,3,2,0);
         §]!C§[§?Z§] = new OpCode(§?Z§,3,3,0);
         §]!C§[§9!!§] = new OpCode(§9!!§,3,4,0);
         §]!C§[§-_§] = new OpCode(§-_§,2,5,0);
         §]!C§[§&!f§] = new OpCode(§&!f§,3,6,0);
         §]!C§[§7!L§] = new OpCode(§7!L§,3,7,0);
         §]!C§[§0`§] = new OpCode(§0`§,2,8,0);
         §]!C§[§0[§] = new OpCode(§0[§,2,9,0);
         §]!C§[§ j§] = new OpCode(§ j§,2,10,0);
         §]!C§[§,!W§] = new OpCode(§,!W§,3,11,0);
         §]!C§[§;!S§] = new OpCode(§;!S§,2,12,0);
         §]!C§[§3!G§] = new OpCode(§3!G§,2,13,0);
         §]!C§[override] = new OpCode(override,2,14,0);
         §]!C§[§8'§] = new OpCode(§8'§,2,15,0);
         §]!C§[§@!%§] = new OpCode(§@!%§,2,16,0);
         §]!C§[§0!a§] = new OpCode(§0!a§,3,17,0);
         §]!C§[DP3] = new OpCode(DP3,3,18,0);
         §]!C§[DP4] = new OpCode(DP4,3,19,0);
         §]!C§[§ !!§] = new OpCode(§ !!§,2,20,0);
         §]!C§[§"!B§] = new OpCode(§"!B§,2,21,0);
         §]!C§[§]v§] = new OpCode(§]v§,2,22,0);
         §]!C§[M33] = new OpCode(M33,3,23,§<@§);
         §]!C§[M44] = new OpCode(M44,3,24,§<@§);
         §]!C§[M34] = new OpCode(M34,3,25,§<@§);
         §]!C§[§>C§] = new OpCode(§>C§,1,26,§%p§ | §&!P§ | §^!X§);
         §]!C§[§]!3§] = new OpCode(§]!3§,1,27,§%p§ | §&!P§ | §^!X§);
         §]!C§[§"r§] = new OpCode(§"r§,2,28,§%p§ | §&!P§ | §^!X§);
         §]!C§[§4y§] = new OpCode(§4y§,2,29,§%p§ | §&!P§ | §^!X§);
         §]!C§[§&!Z§] = new OpCode(§&!Z§,2,30,§%p§ | §&!P§ | §^!X§);
         §]!C§[§4!6§] = new OpCode(§4!6§,2,31,§%p§ | §&!P§ | §^!X§);
         §]!C§[§?x§] = new OpCode(§?x§,2,32,§%p§ | §&!P§ | §^!X§);
         §]!C§[§2!&§] = new OpCode(§2!&§,2,33,§%p§ | §&!P§ | §^!X§);
         §]!C§[§+6§] = new OpCode(§+6§,0,34,§%p§ | §&!P§ | §,f§);
         §]!C§[§5!3§] = new OpCode(§5!3§,0,35,§%p§ | §,f§);
         §]!C§[§8!d§] = new OpCode(§8!d§,1,36,§%p§ | §&!P§ | §^!X§);
         §]!C§[§#x§] = new OpCode(§#x§,0,37,§%p§ | §,f§);
         §]!C§[§+H§] = new OpCode(§+H§,0,38,§%p§);
         §]!C§[§<![§] = new OpCode(§<![§,1,39,§%p§ | §!G§);
         §]!C§[§ !U§] = new OpCode(§ !U§,3,40,§!G§ | §;O§);
         §]!C§[§[!,§] = new OpCode(§[!,§,3,41,0);
         §]!C§[§&!,§] = new OpCode(§&!,§,3,42,0);
         §]!C§[§[!?§] = new OpCode(§[!?§,2,43,0);
         §%!'§[§=P§] = new Register(§=P§,"vertex attribute",0,7,§=!d§ | §,!b§);
         §%!'§[§ !M§] = new Register(§ !M§,"vertex constant",1,127,§=!d§ | §,!b§);
         §%!'§[§^+§] = new Register(§^+§,"vertex temporary",2,7,§=!d§ | §>>§ | §,!b§);
         §%!'§[§0!_§] = new Register(§0!_§,"vertex output",3,0,§=!d§ | §>>§);
         §%!'§[§<!P§] = new Register(§<!P§,"varying",4,7,§=!d§ | §^J§ | §,!b§ | §>>§);
         §%!'§[§?!%§] = new Register(§?!%§,"fragment constant",1,27,§^J§ | §,!b§);
         §%!'§[§%c§] = new Register(§%c§,"fragment temporary",2,7,§^J§ | §>>§ | §,!b§);
         §%!'§[§!!7§] = new Register(§!!7§,"texture sampler",5,7,§^J§ | §,!b§);
         §%!'§[§4j§] = new Register(§4j§,"fragment output",3,0,§^J§ | §>>§);
         §9!;§[D2] = new Sampler(D2,§-b§,0);
         §9!;§[D3] = new Sampler(D3,§-b§,2);
         §9!;§[§0e§] = new Sampler(§0e§,§-b§,1);
         §9!;§[§>L§] = new Sampler(§>L§,§?k§,1);
         §9!;§[§ !9§] = new Sampler(§ !9§,§?k§,2);
         §9!;§[§^![§] = new Sampler(§^![§,§?k§,0);
         §9!;§[§1!3§] = new Sampler(§1!3§,§?k§,0);
         §9!;§[§4`§] = new Sampler(§4`§,§%4§,0);
         §9!;§[§+!'§] = new Sampler(§+!'§,§%4§,1);
         §9!;§[§9!?§] = new Sampler(§9!?§,§;!4§,1 << 0);
         §9!;§[§>O§] = new Sampler(§>O§,§;!4§,1 << 1);
         §9!;§[§!i§] = new Sampler(§!i§,§;!4§,1 << 2);
         §9!;§[§]!S§] = new Sampler(§]!S§,§-!5§,1);
         §9!;§[§6f§] = new Sampler(§6f§,§-!5§,1);
         §9!;§[§<?§] = new Sampler(§<?§,§-!5§,0);
      }
      
      public function get error() : String
      {
         return this.§%!4§;
      }
      
      public function get §>!=§() : ByteArray
      {
         return this.§"!C§;
      }
      
      public function §@9§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§"!C§ = new ByteArray();
         this.§%!4§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§%!4§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§>!=§.endian = Endian.LITTLE_ENDIAN;
         this.§>!=§.writeByte(160);
         this.§>!=§.writeUnsignedInt(1);
         this.§>!=§.writeByte(161);
         this.§>!=§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§%!4§ == "")
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
            _loc16_ = §]!C§[_loc15_[0]];
            if(!this.§;!3§)
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
               if(_loc16_.flags & §,f§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§%!4§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §&!P§)
               {
                  _loc7_++;
                  if(_loc7_ > §[!"§)
                  {
                     this.§%!4§ = "error: nesting to deep, maximum allowed is " + §[!"§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §!G§ && !_loc5_)
               {
                  this.§%!4§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§>!=§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §3!>§)
               {
                  this.§%!4§ = "error: too many opcodes. maximum is " + §3!>§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§%!4§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §%!'§[_loc24_[0]];
                  if(!this.§;!3§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§%!4§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §^J§))
                     {
                        this.§%!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§%!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §=!d§))
                  {
                     this.§%!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§%!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §%p§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §;O§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§%!4§ = "error: relative can not be destination";
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
                     if((_loc39_ = §%!'§[_loc38_[0]]) == null)
                     {
                        this.§%!4§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§%!4§ = "error: bad index register select";
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
                        this.§%!4§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§>!=§.writeShort(_loc27_);
                     this.§>!=§.writeByte(_loc28_);
                     this.§>!=§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §9!;§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §;!4§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§>!=§.writeShort(_loc27_);
                     this.§>!=§.writeByte(int(_loc44_ * 8));
                     this.§>!=§.writeByte(0);
                     this.§>!=§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§>!=§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§>!=§.writeShort(_loc27_);
                     this.§>!=§.writeByte(_loc34_);
                     this.§>!=§.writeByte(_loc28_);
                     this.§>!=§.writeByte(_loc25_.emitCode);
                     this.§>!=§.writeByte(_loc32_);
                     this.§>!=§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§>!=§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§%!4§ != "")
         {
            this.§%!4§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§>!=§.length = 0;
         }
         if(this.§;!3§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§>!=§.length;
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
               if((_loc49_ = this.§>!=§[_loc48_].toString(16)).length < 2)
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
         return this.§>!=§;
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
