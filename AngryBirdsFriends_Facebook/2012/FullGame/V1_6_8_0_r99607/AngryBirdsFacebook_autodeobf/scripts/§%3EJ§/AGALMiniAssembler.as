package §>J§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §;!7§:Dictionary = new Dictionary();
      
      private static const §%!a§:Dictionary = new Dictionary();
      
      private static const §"P§:Dictionary = new Dictionary();
      
      private static const §5!i§:int = 4;
      
      private static const §!!Y§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §",§:uint = 12;
      
      private static const §&P§:uint = 16;
      
      private static const §[!8§:uint = 20;
      
      private static const §'"$§:uint = 24;
      
      private static const §72§:uint = 28;
      
      private static const §?"§:uint = 1;
      
      private static const §69§:uint = 2;
      
      private static const §>"8§:uint = 32;
      
      private static const §2!L§:uint = 64;
      
      private static const §"!0§:uint = 1;
      
      private static const §6q§:uint = 2;
      
      private static const §>L§:uint = 4;
      
      private static const §-r§:uint = 8;
      
      private static const §'&§:uint = 16;
      
      private static const §]!^§:uint = 32;
      
      private static const §<!!§:uint = 128;
      
      private static const §6H§:String = "mov";
      
      private static const §?"B§:String = "add";
      
      private static const §&!H§:String = "sub";
      
      private static const §3!a§:String = "mul";
      
      private static const §6!-§:String = "div";
      
      private static const §9!=§:String = "rcp";
      
      private static const §"4§:String = "min";
      
      private static const §1Q§:String = "max";
      
      private static const §<!6§:String = "frc";
      
      private static const §3!R§:String = "sqt";
      
      private static const §'V§:String = "rsq";
      
      private static const §;! §:String = "pow";
      
      private static const §0i§:String = "log";
      
      private static const §0g§:String = "exp";
      
      private static const §8!G§:String = "nrm";
      
      private static const §7%§:String = "sin";
      
      private static const §4!U§:String = "cos";
      
      private static const §[!X§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §5n§:String = "abs";
      
      private static const §`!A§:String = "neg";
      
      private static const §`!K§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §@!Q§:String = "ifz";
      
      private static const §`r§:String = "inz";
      
      private static const §5j§:String = "ife";
      
      private static const § !6§:String = "ine";
      
      private static const §9"6§:String = "ifg";
      
      private static const §!#§:String = "ifl";
      
      private static const § !^§:String = "ieg";
      
      private static const §]>§:String = "iel";
      
      private static const §=a§:String = "els";
      
      private static const §#![§:String = "eif";
      
      private static const §9!Y§:String = "rep";
      
      private static const §"!A§:String = "erp";
      
      private static const §0E§:String = "brk";
      
      private static const §,!V§:String = "kil";
      
      private static const §@&§:String = "tex";
      
      private static const §#^§:String = "sge";
      
      private static const §@g§:String = "slt";
      
      private static const §!j§:String = "sgn";
      
      private static const §5!E§:String = "va";
      
      private static const §,!0§:String = "vc";
      
      private static const §&G§:String = "vt";
      
      private static const §4!A§:String = "op";
      
      private static const §@!"§:String = "v";
      
      private static const §'z§:String = "fc";
      
      private static const §0w§:String = "ft";
      
      private static const §>!w§:String = "fs";
      
      private static const §0@§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §4!'§:String = "cube";
      
      private static const §%p§:String = "mipnearest";
      
      private static const §#e§:String = "miplinear";
      
      private static const §'4§:String = "mipnone";
      
      private static const §#!q§:String = "nomip";
      
      private static const §0!3§:String = "nearest";
      
      private static const § !5§:String = "linear";
      
      private static const §;A§:String = "centroid";
      
      private static const §,!=§:String = "single";
      
      private static const §!w§:String = "depth";
      
      private static const §9N§:String = "repeat";
      
      private static const §?,§:String = "wrap";
      
      private static const §"!i§:String = "clamp";
       
      
      private var §!"9§:ByteArray = null;
      
      private var §6U§:String = "";
      
      private var §"'§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§"'§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §;!7§[§6H§] = new OpCode(§6H§,2,0,0);
         §;!7§[§?"B§] = new OpCode(§?"B§,3,1,0);
         §;!7§[§&!H§] = new OpCode(§&!H§,3,2,0);
         §;!7§[§3!a§] = new OpCode(§3!a§,3,3,0);
         §;!7§[§6!-§] = new OpCode(§6!-§,3,4,0);
         §;!7§[§9!=§] = new OpCode(§9!=§,2,5,0);
         §;!7§[§"4§] = new OpCode(§"4§,3,6,0);
         §;!7§[§1Q§] = new OpCode(§1Q§,3,7,0);
         §;!7§[§<!6§] = new OpCode(§<!6§,2,8,0);
         §;!7§[§3!R§] = new OpCode(§3!R§,2,9,0);
         §;!7§[§'V§] = new OpCode(§'V§,2,10,0);
         §;!7§[§;! §] = new OpCode(§;! §,3,11,0);
         §;!7§[§0i§] = new OpCode(§0i§,2,12,0);
         §;!7§[§0g§] = new OpCode(§0g§,2,13,0);
         §;!7§[§8!G§] = new OpCode(§8!G§,2,14,0);
         §;!7§[§7%§] = new OpCode(§7%§,2,15,0);
         §;!7§[§4!U§] = new OpCode(§4!U§,2,16,0);
         §;!7§[§[!X§] = new OpCode(§[!X§,3,17,0);
         §;!7§[DP3] = new OpCode(DP3,3,18,0);
         §;!7§[DP4] = new OpCode(DP4,3,19,0);
         §;!7§[§5n§] = new OpCode(§5n§,2,20,0);
         §;!7§[§`!A§] = new OpCode(§`!A§,2,21,0);
         §;!7§[§`!K§] = new OpCode(§`!K§,2,22,0);
         §;!7§[M33] = new OpCode(M33,3,23,§'&§);
         §;!7§[M44] = new OpCode(M44,3,24,§'&§);
         §;!7§[M34] = new OpCode(M34,3,25,§'&§);
         §;!7§[§@!Q§] = new OpCode(§@!Q§,1,26,§<!!§ | §6q§ | §"!0§);
         §;!7§[§`r§] = new OpCode(§`r§,1,27,§<!!§ | §6q§ | §"!0§);
         §;!7§[§5j§] = new OpCode(§5j§,2,28,§<!!§ | §6q§ | §"!0§);
         §;!7§[§ !6§] = new OpCode(§ !6§,2,29,§<!!§ | §6q§ | §"!0§);
         §;!7§[§9"6§] = new OpCode(§9"6§,2,30,§<!!§ | §6q§ | §"!0§);
         §;!7§[§!#§] = new OpCode(§!#§,2,31,§<!!§ | §6q§ | §"!0§);
         §;!7§[§ !^§] = new OpCode(§ !^§,2,32,§<!!§ | §6q§ | §"!0§);
         §;!7§[§]>§] = new OpCode(§]>§,2,33,§<!!§ | §6q§ | §"!0§);
         §;!7§[§=a§] = new OpCode(§=a§,0,34,§<!!§ | §6q§ | §>L§);
         §;!7§[§#![§] = new OpCode(§#![§,0,35,§<!!§ | §>L§);
         §;!7§[§9!Y§] = new OpCode(§9!Y§,1,36,§<!!§ | §6q§ | §"!0§);
         §;!7§[§"!A§] = new OpCode(§"!A§,0,37,§<!!§ | §>L§);
         §;!7§[§0E§] = new OpCode(§0E§,0,38,§<!!§);
         §;!7§[§,!V§] = new OpCode(§,!V§,1,39,§<!!§ | §]!^§);
         §;!7§[§@&§] = new OpCode(§@&§,3,40,§]!^§ | §-r§);
         §;!7§[§#^§] = new OpCode(§#^§,3,41,0);
         §;!7§[§@g§] = new OpCode(§@g§,3,42,0);
         §;!7§[§!j§] = new OpCode(§!j§,2,43,0);
         §%!a§[§5!E§] = new Register(§5!E§,"vertex attribute",0,7,§2!L§ | §69§);
         §%!a§[§,!0§] = new Register(§,!0§,"vertex constant",1,127,§2!L§ | §69§);
         §%!a§[§&G§] = new Register(§&G§,"vertex temporary",2,7,§2!L§ | §?"§ | §69§);
         §%!a§[§4!A§] = new Register(§4!A§,"vertex output",3,0,§2!L§ | §?"§);
         §%!a§[§@!"§] = new Register(§@!"§,"varying",4,7,§2!L§ | §>"8§ | §69§ | §?"§);
         §%!a§[§'z§] = new Register(§'z§,"fragment constant",1,27,§>"8§ | §69§);
         §%!a§[§0w§] = new Register(§0w§,"fragment temporary",2,7,§>"8§ | §?"§ | §69§);
         §%!a§[§>!w§] = new Register(§>!w§,"texture sampler",5,7,§>"8§ | §69§);
         §%!a§[§0@§] = new Register(§0@§,"fragment output",3,0,§>"8§ | §?"§);
         §"P§[D2] = new Sampler(D2,§",§,0);
         §"P§[D3] = new Sampler(D3,§",§,2);
         §"P§[§4!'§] = new Sampler(§4!'§,§",§,1);
         §"P§[§%p§] = new Sampler(§%p§,§'"$§,1);
         §"P§[§#e§] = new Sampler(§#e§,§'"$§,2);
         §"P§[§'4§] = new Sampler(§'4§,§'"$§,0);
         §"P§[§#!q§] = new Sampler(§#!q§,§'"$§,0);
         §"P§[§0!3§] = new Sampler(§0!3§,§72§,0);
         §"P§[§ !5§] = new Sampler(§ !5§,§72§,1);
         §"P§[§;A§] = new Sampler(§;A§,§&P§,1 << 0);
         §"P§[§,!=§] = new Sampler(§,!=§,§&P§,1 << 1);
         §"P§[§!w§] = new Sampler(§!w§,§&P§,1 << 2);
         §"P§[§9N§] = new Sampler(§9N§,§[!8§,1);
         §"P§[§?,§] = new Sampler(§?,§,§[!8§,1);
         §"P§[§"!i§] = new Sampler(§"!i§,§[!8§,0);
      }
      
      public function get error() : String
      {
         return this.§6U§;
      }
      
      public function get §="=§() : ByteArray
      {
         return this.§!"9§;
      }
      
      public function §,R§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§!"9§ = new ByteArray();
         this.§6U§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§6U§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§="=§.endian = Endian.LITTLE_ENDIAN;
         this.§="=§.writeByte(160);
         this.§="=§.writeUnsignedInt(1);
         this.§="=§.writeByte(161);
         this.§="=§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§6U§ == "")
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
            _loc16_ = §;!7§[_loc15_[0]];
            if(!this.§"'§)
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
               if(_loc16_.flags & §>L§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§6U§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §6q§)
               {
                  _loc7_++;
                  if(_loc7_ > §5!i§)
                  {
                     this.§6U§ = "error: nesting to deep, maximum allowed is " + §5!i§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §]!^§ && !_loc5_)
               {
                  this.§6U§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§="=§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §!!Y§)
               {
                  this.§6U§ = "error: too many opcodes. maximum is " + §!!Y§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§6U§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §%!a§[_loc24_[0]];
                  if(!this.§"'§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§6U§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §>"8§))
                     {
                        this.§6U§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§6U§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §2!L§))
                  {
                     this.§6U§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§6U§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §<!!§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §-r§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§6U§ = "error: relative can not be destination";
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
                     if((_loc39_ = §%!a§[_loc38_[0]]) == null)
                     {
                        this.§6U§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§6U§ = "error: bad index register select";
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
                        this.§6U§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§="=§.writeShort(_loc27_);
                     this.§="=§.writeByte(_loc28_);
                     this.§="=§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §"P§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §&P§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§="=§.writeShort(_loc27_);
                     this.§="=§.writeByte(int(_loc44_ * 8));
                     this.§="=§.writeByte(0);
                     this.§="=§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§="=§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§="=§.writeShort(_loc27_);
                     this.§="=§.writeByte(_loc34_);
                     this.§="=§.writeByte(_loc28_);
                     this.§="=§.writeByte(_loc25_.emitCode);
                     this.§="=§.writeByte(_loc32_);
                     this.§="=§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§="=§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§6U§ != "")
         {
            this.§6U§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§="=§.length = 0;
         }
         if(this.§"'§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§="=§.length;
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
               if((_loc49_ = this.§="=§[_loc48_].toString(16)).length < 2)
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
         return this.§="=§;
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
