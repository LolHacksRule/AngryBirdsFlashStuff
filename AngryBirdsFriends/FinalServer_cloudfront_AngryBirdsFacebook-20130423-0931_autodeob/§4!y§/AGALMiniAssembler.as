package §4!y§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §9!Z§:Dictionary = new Dictionary();
      
      private static const §?"C§:Dictionary = new Dictionary();
      
      private static const §!!A§:Dictionary = new Dictionary();
      
      private static const §-z§:int = 4;
      
      private static const §;Z§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §%K§:uint = 12;
      
      private static const §2y§:uint = 16;
      
      private static const §@"L§:uint = 20;
      
      private static const §%n§:uint = 24;
      
      private static const §9!]§:uint = 28;
      
      private static const §=G§:uint = 1;
      
      private static const §2V§:uint = 2;
      
      private static const §9u§:uint = 32;
      
      private static const §<C§:uint = 64;
      
      private static const §!5§:uint = 1;
      
      private static const §[b§:uint = 2;
      
      private static const §<!;§:uint = 4;
      
      private static const §2!7§:uint = 8;
      
      private static const §[+§:uint = 16;
      
      private static const §"!Q§:uint = 32;
      
      private static const §7!R§:uint = 128;
      
      private static const §0"C§:String = "mov";
      
      private static const §4"U§:String = "add";
      
      private static const §1!;§:String = "sub";
      
      private static const §"f§:String = "mul";
      
      private static const §36§:String = "div";
      
      private static const §5x§:String = "rcp";
      
      private static const §9!W§:String = "min";
      
      private static const §?%§:String = "max";
      
      private static const §9"R§:String = "frc";
      
      private static const §47§:String = "sqt";
      
      private static const §!s§:String = "rsq";
      
      private static const §finally§:String = "pow";
      
      private static const §=N§:String = "log";
      
      private static const §8!&§:String = "exp";
      
      private static const §<",§:String = "nrm";
      
      private static const §,!y§:String = "sin";
      
      private static const §6!R§:String = "cos";
      
      private static const §?!%§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §#!;§:String = "abs";
      
      private static const § "T§:String = "neg";
      
      private static const §@u§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §4!4§:String = "ifz";
      
      private static const §^"=§:String = "inz";
      
      private static const §1!]§:String = "ife";
      
      private static const §&!O§:String = "ine";
      
      private static const §&^§:String = "ifg";
      
      private static const §37§:String = "ifl";
      
      private static const §76§:String = "ieg";
      
      private static const §@C§:String = "iel";
      
      private static const §^[§:String = "els";
      
      private static const §4k§:String = "eif";
      
      private static const §import§:String = "rep";
      
      private static const §<!r§:String = "erp";
      
      private static const §[!h§:String = "brk";
      
      private static const §&!]§:String = "kil";
      
      private static const §'P§:String = "tex";
      
      private static const §7r§:String = "sge";
      
      private static const § !$§:String = "slt";
      
      private static const §["7§:String = "sgn";
      
      private static const §<!4§:String = "va";
      
      private static const §&Z§:String = "vc";
      
      private static const §<"J§:String = "vt";
      
      private static const §-!a§:String = "op";
      
      private static const §@!b§:String = "v";
      
      private static const §2!y§:String = "fc";
      
      private static const §>n§:String = "ft";
      
      private static const §`"3§:String = "fs";
      
      private static const §0!K§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&<§:String = "cube";
      
      private static const §,"2§:String = "mipnearest";
      
      private static const §0q§:String = "miplinear";
      
      private static const §3!;§:String = "mipnone";
      
      private static const §8"N§:String = "nomip";
      
      private static const §<"-§:String = "nearest";
      
      private static const §%#§:String = "linear";
      
      private static const §0G§:String = "centroid";
      
      private static const §9"J§:String = "single";
      
      private static const §#"=§:String = "depth";
      
      private static const §<6§:String = "repeat";
      
      private static const §1W§:String = "wrap";
      
      private static const §;p§:String = "clamp";
       
      
      private var §0T§:ByteArray = null;
      
      private var §"!w§:String = "";
      
      private var §^!+§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§^!+§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §9!Z§[§0"C§] = new OpCode(§0"C§,2,0,0);
         §9!Z§[§4"U§] = new OpCode(§4"U§,3,1,0);
         §9!Z§[§1!;§] = new OpCode(§1!;§,3,2,0);
         §9!Z§[§"f§] = new OpCode(§"f§,3,3,0);
         §9!Z§[§36§] = new OpCode(§36§,3,4,0);
         §9!Z§[§5x§] = new OpCode(§5x§,2,5,0);
         §9!Z§[§9!W§] = new OpCode(§9!W§,3,6,0);
         §9!Z§[§?%§] = new OpCode(§?%§,3,7,0);
         §9!Z§[§9"R§] = new OpCode(§9"R§,2,8,0);
         §9!Z§[§47§] = new OpCode(§47§,2,9,0);
         §9!Z§[§!s§] = new OpCode(§!s§,2,10,0);
         §9!Z§[§finally§] = new OpCode(§finally§,3,11,0);
         §9!Z§[§=N§] = new OpCode(§=N§,2,12,0);
         §9!Z§[§8!&§] = new OpCode(§8!&§,2,13,0);
         §9!Z§[§<",§] = new OpCode(§<",§,2,14,0);
         §9!Z§[§,!y§] = new OpCode(§,!y§,2,15,0);
         §9!Z§[§6!R§] = new OpCode(§6!R§,2,16,0);
         §9!Z§[§?!%§] = new OpCode(§?!%§,3,17,0);
         §9!Z§[DP3] = new OpCode(DP3,3,18,0);
         §9!Z§[DP4] = new OpCode(DP4,3,19,0);
         §9!Z§[§#!;§] = new OpCode(§#!;§,2,20,0);
         §9!Z§[§ "T§] = new OpCode(§ "T§,2,21,0);
         §9!Z§[§@u§] = new OpCode(§@u§,2,22,0);
         §9!Z§[M33] = new OpCode(M33,3,23,§[+§);
         §9!Z§[M44] = new OpCode(M44,3,24,§[+§);
         §9!Z§[M34] = new OpCode(M34,3,25,§[+§);
         §9!Z§[§4!4§] = new OpCode(§4!4§,1,26,§7!R§ | §[b§ | §!5§);
         §9!Z§[§^"=§] = new OpCode(§^"=§,1,27,§7!R§ | §[b§ | §!5§);
         §9!Z§[§1!]§] = new OpCode(§1!]§,2,28,§7!R§ | §[b§ | §!5§);
         §9!Z§[§&!O§] = new OpCode(§&!O§,2,29,§7!R§ | §[b§ | §!5§);
         §9!Z§[§&^§] = new OpCode(§&^§,2,30,§7!R§ | §[b§ | §!5§);
         §9!Z§[§37§] = new OpCode(§37§,2,31,§7!R§ | §[b§ | §!5§);
         §9!Z§[§76§] = new OpCode(§76§,2,32,§7!R§ | §[b§ | §!5§);
         §9!Z§[§@C§] = new OpCode(§@C§,2,33,§7!R§ | §[b§ | §!5§);
         §9!Z§[§^[§] = new OpCode(§^[§,0,34,§7!R§ | §[b§ | §<!;§);
         §9!Z§[§4k§] = new OpCode(§4k§,0,35,§7!R§ | §<!;§);
         §9!Z§[§import§] = new OpCode(§import§,1,36,§7!R§ | §[b§ | §!5§);
         §9!Z§[§<!r§] = new OpCode(§<!r§,0,37,§7!R§ | §<!;§);
         §9!Z§[§[!h§] = new OpCode(§[!h§,0,38,§7!R§);
         §9!Z§[§&!]§] = new OpCode(§&!]§,1,39,§7!R§ | §"!Q§);
         §9!Z§[§'P§] = new OpCode(§'P§,3,40,§"!Q§ | §2!7§);
         §9!Z§[§7r§] = new OpCode(§7r§,3,41,0);
         §9!Z§[§ !$§] = new OpCode(§ !$§,3,42,0);
         §9!Z§[§["7§] = new OpCode(§["7§,2,43,0);
         §?"C§[§<!4§] = new Register(§<!4§,"vertex attribute",0,7,§<C§ | §2V§);
         §?"C§[§&Z§] = new Register(§&Z§,"vertex constant",1,127,§<C§ | §2V§);
         §?"C§[§<"J§] = new Register(§<"J§,"vertex temporary",2,7,§<C§ | §=G§ | §2V§);
         §?"C§[§-!a§] = new Register(§-!a§,"vertex output",3,0,§<C§ | §=G§);
         §?"C§[§@!b§] = new Register(§@!b§,"varying",4,7,§<C§ | §9u§ | §2V§ | §=G§);
         §?"C§[§2!y§] = new Register(§2!y§,"fragment constant",1,27,§9u§ | §2V§);
         §?"C§[§>n§] = new Register(§>n§,"fragment temporary",2,7,§9u§ | §=G§ | §2V§);
         §?"C§[§`"3§] = new Register(§`"3§,"texture sampler",5,7,§9u§ | §2V§);
         §?"C§[§0!K§] = new Register(§0!K§,"fragment output",3,0,§9u§ | §=G§);
         §!!A§[D2] = new Sampler(D2,§%K§,0);
         §!!A§[D3] = new Sampler(D3,§%K§,2);
         §!!A§[§&<§] = new Sampler(§&<§,§%K§,1);
         §!!A§[§,"2§] = new Sampler(§,"2§,§%n§,1);
         §!!A§[§0q§] = new Sampler(§0q§,§%n§,2);
         §!!A§[§3!;§] = new Sampler(§3!;§,§%n§,0);
         §!!A§[§8"N§] = new Sampler(§8"N§,§%n§,0);
         §!!A§[§<"-§] = new Sampler(§<"-§,§9!]§,0);
         §!!A§[§%#§] = new Sampler(§%#§,§9!]§,1);
         §!!A§[§0G§] = new Sampler(§0G§,§2y§,1 << 0);
         §!!A§[§9"J§] = new Sampler(§9"J§,§2y§,1 << 1);
         §!!A§[§#"=§] = new Sampler(§#"=§,§2y§,1 << 2);
         §!!A§[§<6§] = new Sampler(§<6§,§@"L§,1);
         §!!A§[§1W§] = new Sampler(§1W§,§@"L§,1);
         §!!A§[§;p§] = new Sampler(§;p§,§@"L§,0);
      }
      
      public function get error() : String
      {
         return this.§"!w§;
      }
      
      public function get §,"T§() : ByteArray
      {
         return this.§0T§;
      }
      
      public function §?!i§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§0T§ = new ByteArray();
         this.§"!w§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§"!w§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§,"T§.endian = Endian.LITTLE_ENDIAN;
         this.§,"T§.writeByte(160);
         this.§,"T§.writeUnsignedInt(1);
         this.§,"T§.writeByte(161);
         this.§,"T§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§"!w§ == "")
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
            _loc16_ = §9!Z§[_loc15_[0]];
            if(!this.§^!+§)
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
               if(_loc16_.flags & §<!;§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§"!w§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §[b§)
               {
                  _loc7_++;
                  if(_loc7_ > §-z§)
                  {
                     this.§"!w§ = "error: nesting to deep, maximum allowed is " + §-z§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §"!Q§ && !_loc5_)
               {
                  this.§"!w§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§,"T§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §;Z§)
               {
                  this.§"!w§ = "error: too many opcodes. maximum is " + §;Z§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§"!w§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §?"C§[_loc24_[0]];
                  if(!this.§^!+§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§"!w§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §9u§))
                     {
                        this.§"!w§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§"!w§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §<C§))
                  {
                     this.§"!w§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§"!w§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §7!R§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §2!7§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§"!w§ = "error: relative can not be destination";
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
                     if((_loc39_ = §?"C§[_loc38_[0]]) == null)
                     {
                        this.§"!w§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§"!w§ = "error: bad index register select";
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
                        this.§"!w§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§,"T§.writeShort(_loc27_);
                     this.§,"T§.writeByte(_loc28_);
                     this.§,"T§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §!!A§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §2y§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§,"T§.writeShort(_loc27_);
                     this.§,"T§.writeByte(int(_loc44_ * 8));
                     this.§,"T§.writeByte(0);
                     this.§,"T§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§,"T§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§,"T§.writeShort(_loc27_);
                     this.§,"T§.writeByte(_loc34_);
                     this.§,"T§.writeByte(_loc28_);
                     this.§,"T§.writeByte(_loc25_.emitCode);
                     this.§,"T§.writeByte(_loc32_);
                     this.§,"T§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§,"T§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§"!w§ != "")
         {
            this.§"!w§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§,"T§.length = 0;
         }
         if(this.§^!+§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§,"T§.length;
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
               if((_loc49_ = this.§,"T§[_loc48_].toString(16)).length < 2)
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
         return this.§,"T§;
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
