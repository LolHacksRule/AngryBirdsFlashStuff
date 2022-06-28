package §8O§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §1y§:Dictionary = new Dictionary();
      
      private static const §-!§:Dictionary = new Dictionary();
      
      private static const §+a§:Dictionary = new Dictionary();
      
      private static const §+k§:int = 4;
      
      private static const §8<§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const § W§:uint = 12;
      
      private static const §]b§:uint = 16;
      
      private static const §7`§:uint = 20;
      
      private static const §&p§:uint = 24;
      
      private static const § p§:uint = 28;
      
      private static const §+5§:uint = 1;
      
      private static const §4e§:uint = 2;
      
      private static const §]H§:uint = 32;
      
      private static const §+N§:uint = 64;
      
      private static const §"r§:uint = 1;
      
      private static const §6%§:uint = 2;
      
      private static const §=9§:uint = 4;
      
      private static const §3V§:uint = 8;
      
      private static const §3!&§:uint = 16;
      
      private static const §+6§:uint = 32;
      
      private static const §#!5§:uint = 128;
      
      private static const §5F§:String = "mov";
      
      private static const §>^§:String = "add";
      
      private static const §`"§:String = "sub";
      
      private static const §6d§:String = "mul";
      
      private static const §4i§:String = "div";
      
      private static const §%! §:String = "rcp";
      
      private static const §[V§:String = "min";
      
      private static const §-s§:String = "max";
      
      private static const §![§:String = "frc";
      
      private static const §7z§:String = "sqt";
      
      private static const §"!G§:String = "rsq";
      
      private static const §@T§:String = "pow";
      
      private static const §1h§:String = "log";
      
      private static const §-o§:String = "exp";
      
      private static const §7u§:String = "nrm";
      
      private static const §<`§:String = "sin";
      
      private static const §^r§:String = "cos";
      
      private static const §?a§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §[!%§:String = "abs";
      
      private static const §^i§:String = "neg";
      
      private static const §<6§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §<2§:String = "ifz";
      
      private static const §6q§:String = "inz";
      
      private static const §0b§:String = "ife";
      
      private static const §!4§:String = "ine";
      
      private static const §-!#§:String = "ifg";
      
      private static const §#h§:String = "ifl";
      
      private static const §'W§:String = "ieg";
      
      private static const § +§:String = "iel";
      
      private static const §61§:String = "els";
      
      private static const §1S§:String = "eif";
      
      private static const §,z§:String = "rep";
      
      private static const §8!3§:String = "erp";
      
      private static const §7!#§:String = "brk";
      
      private static const §2K§:String = "kil";
      
      private static const §'c§:String = "tex";
      
      private static const §]! §:String = "sge";
      
      private static const §@a§:String = "slt";
      
      private static const §!O§:String = "sgn";
      
      private static const §46§:String = "va";
      
      private static const §]j§:String = "vc";
      
      private static const §"!7§:String = "vt";
      
      private static const §[R§:String = "op";
      
      private static const §9V§:String = "v";
      
      private static const §#!7§:String = "fc";
      
      private static const §8m§:String = "ft";
      
      private static const §&!%§:String = "fs";
      
      private static const §,'§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §#!G§:String = "cube";
      
      private static const §4f§:String = "mipnearest";
      
      private static const §0f§:String = "miplinear";
      
      private static const §9g§:String = "mipnone";
      
      private static const §5B§:String = "nomip";
      
      private static const §4O§:String = "nearest";
      
      private static const §7!A§:String = "linear";
      
      private static const §57§:String = "centroid";
      
      private static const §>!;§:String = "single";
      
      private static const §^!&§:String = "depth";
      
      private static const §-L§:String = "repeat";
      
      private static const §+!@§:String = "wrap";
      
      private static const §-C§:String = "clamp";
       
      
      private var §+E§:ByteArray = null;
      
      private var §=!F§:String = "";
      
      private var §1t§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§1t§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §1y§[§5F§] = new OpCode(§5F§,2,0,0);
         §1y§[§>^§] = new OpCode(§>^§,3,1,0);
         §1y§[§`"§] = new OpCode(§`"§,3,2,0);
         §1y§[§6d§] = new OpCode(§6d§,3,3,0);
         §1y§[§4i§] = new OpCode(§4i§,3,4,0);
         §1y§[§%! §] = new OpCode(§%! §,2,5,0);
         §1y§[§[V§] = new OpCode(§[V§,3,6,0);
         §1y§[§-s§] = new OpCode(§-s§,3,7,0);
         §1y§[§![§] = new OpCode(§![§,2,8,0);
         §1y§[§7z§] = new OpCode(§7z§,2,9,0);
         §1y§[§"!G§] = new OpCode(§"!G§,2,10,0);
         §1y§[§@T§] = new OpCode(§@T§,3,11,0);
         §1y§[§1h§] = new OpCode(§1h§,2,12,0);
         §1y§[§-o§] = new OpCode(§-o§,2,13,0);
         §1y§[§7u§] = new OpCode(§7u§,2,14,0);
         §1y§[§<`§] = new OpCode(§<`§,2,15,0);
         §1y§[§^r§] = new OpCode(§^r§,2,16,0);
         §1y§[§?a§] = new OpCode(§?a§,3,17,0);
         §1y§[DP3] = new OpCode(DP3,3,18,0);
         §1y§[DP4] = new OpCode(DP4,3,19,0);
         §1y§[§[!%§] = new OpCode(§[!%§,2,20,0);
         §1y§[§^i§] = new OpCode(§^i§,2,21,0);
         §1y§[§<6§] = new OpCode(§<6§,2,22,0);
         §1y§[M33] = new OpCode(M33,3,23,§3!&§);
         §1y§[M44] = new OpCode(M44,3,24,§3!&§);
         §1y§[M34] = new OpCode(M34,3,25,§3!&§);
         §1y§[§<2§] = new OpCode(§<2§,1,26,§#!5§ | §6%§ | §"r§);
         §1y§[§6q§] = new OpCode(§6q§,1,27,§#!5§ | §6%§ | §"r§);
         §1y§[§0b§] = new OpCode(§0b§,2,28,§#!5§ | §6%§ | §"r§);
         §1y§[§!4§] = new OpCode(§!4§,2,29,§#!5§ | §6%§ | §"r§);
         §1y§[§-!#§] = new OpCode(§-!#§,2,30,§#!5§ | §6%§ | §"r§);
         §1y§[§#h§] = new OpCode(§#h§,2,31,§#!5§ | §6%§ | §"r§);
         §1y§[§'W§] = new OpCode(§'W§,2,32,§#!5§ | §6%§ | §"r§);
         §1y§[§ +§] = new OpCode(§ +§,2,33,§#!5§ | §6%§ | §"r§);
         §1y§[§61§] = new OpCode(§61§,0,34,§#!5§ | §6%§ | §=9§);
         §1y§[§1S§] = new OpCode(§1S§,0,35,§#!5§ | §=9§);
         §1y§[§,z§] = new OpCode(§,z§,1,36,§#!5§ | §6%§ | §"r§);
         §1y§[§8!3§] = new OpCode(§8!3§,0,37,§#!5§ | §=9§);
         §1y§[§7!#§] = new OpCode(§7!#§,0,38,§#!5§);
         §1y§[§2K§] = new OpCode(§2K§,1,39,§#!5§ | §+6§);
         §1y§[§'c§] = new OpCode(§'c§,3,40,§+6§ | §3V§);
         §1y§[§]! §] = new OpCode(§]! §,3,41,0);
         §1y§[§@a§] = new OpCode(§@a§,3,42,0);
         §1y§[§!O§] = new OpCode(§!O§,2,43,0);
         §-!§[§46§] = new Register(§46§,"vertex attribute",0,7,§+N§ | §4e§);
         §-!§[§]j§] = new Register(§]j§,"vertex constant",1,127,§+N§ | §4e§);
         §-!§[§"!7§] = new Register(§"!7§,"vertex temporary",2,7,§+N§ | §+5§ | §4e§);
         §-!§[§[R§] = new Register(§[R§,"vertex output",3,0,§+N§ | §+5§);
         §-!§[§9V§] = new Register(§9V§,"varying",4,7,§+N§ | §]H§ | §4e§ | §+5§);
         §-!§[§#!7§] = new Register(§#!7§,"fragment constant",1,27,§]H§ | §4e§);
         §-!§[§8m§] = new Register(§8m§,"fragment temporary",2,7,§]H§ | §+5§ | §4e§);
         §-!§[§&!%§] = new Register(§&!%§,"texture sampler",5,7,§]H§ | §4e§);
         §-!§[§,'§] = new Register(§,'§,"fragment output",3,0,§]H§ | §+5§);
         §+a§[D2] = new Sampler(D2,§ W§,0);
         §+a§[D3] = new Sampler(D3,§ W§,2);
         §+a§[§#!G§] = new Sampler(§#!G§,§ W§,1);
         §+a§[§4f§] = new Sampler(§4f§,§&p§,1);
         §+a§[§0f§] = new Sampler(§0f§,§&p§,2);
         §+a§[§9g§] = new Sampler(§9g§,§&p§,0);
         §+a§[§5B§] = new Sampler(§5B§,§&p§,0);
         §+a§[§4O§] = new Sampler(§4O§,§ p§,0);
         §+a§[§7!A§] = new Sampler(§7!A§,§ p§,1);
         §+a§[§57§] = new Sampler(§57§,§]b§,1 << 0);
         §+a§[§>!;§] = new Sampler(§>!;§,§]b§,1 << 1);
         §+a§[§^!&§] = new Sampler(§^!&§,§]b§,1 << 2);
         §+a§[§-L§] = new Sampler(§-L§,§7`§,1);
         §+a§[§+!@§] = new Sampler(§+!@§,§7`§,1);
         §+a§[§-C§] = new Sampler(§-C§,§7`§,0);
      }
      
      public function get error() : String
      {
         return this.§=!F§;
      }
      
      public function get §5?§() : ByteArray
      {
         return this.§+E§;
      }
      
      public function §;f§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§+E§ = new ByteArray();
         this.§=!F§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§=!F§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§5?§.endian = Endian.LITTLE_ENDIAN;
         this.§5?§.writeByte(160);
         this.§5?§.writeUnsignedInt(1);
         this.§5?§.writeByte(161);
         this.§5?§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§=!F§ == "")
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
            _loc16_ = §1y§[_loc15_[0]];
            if(!this.§1t§)
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
               if(_loc16_.flags & §=9§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§=!F§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §6%§)
               {
                  _loc7_++;
                  if(_loc7_ > §+k§)
                  {
                     this.§=!F§ = "error: nesting to deep, maximum allowed is " + §+k§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §+6§ && !_loc5_)
               {
                  this.§=!F§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§5?§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §8<§)
               {
                  this.§=!F§ = "error: too many opcodes. maximum is " + §8<§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§=!F§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §-!§[_loc24_[0]];
                  if(!this.§1t§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§=!F§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §]H§))
                     {
                        this.§=!F§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§=!F§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §+N§))
                  {
                     this.§=!F§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§=!F§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §#!5§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §3V§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§=!F§ = "error: relative can not be destination";
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
                     if((_loc39_ = §-!§[_loc38_[0]]) == null)
                     {
                        this.§=!F§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§=!F§ = "error: bad index register select";
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
                        this.§=!F§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§5?§.writeShort(_loc27_);
                     this.§5?§.writeByte(_loc28_);
                     this.§5?§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §+a§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §]b§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§5?§.writeShort(_loc27_);
                     this.§5?§.writeByte(int(_loc44_ * 8));
                     this.§5?§.writeByte(0);
                     this.§5?§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§5?§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§5?§.writeShort(_loc27_);
                     this.§5?§.writeByte(_loc34_);
                     this.§5?§.writeByte(_loc28_);
                     this.§5?§.writeByte(_loc25_.emitCode);
                     this.§5?§.writeByte(_loc32_);
                     this.§5?§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§5?§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§=!F§ != "")
         {
            this.§=!F§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§5?§.length = 0;
         }
         if(this.§1t§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§5?§.length;
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
               if((_loc49_ = this.§5?§[_loc48_].toString(16)).length < 2)
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
         return this.§5?§;
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
