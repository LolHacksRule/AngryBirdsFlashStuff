package §!z§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §@!7§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § !A§:Dictionary = new Dictionary();
      
      private static const §-!,§:Dictionary = new Dictionary();
      
      private static const §3![§:Dictionary = new Dictionary();
      
      private static const §]!S§:int = 4;
      
      private static const §?!Y§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §;§:uint = 12;
      
      private static const §-z§:uint = 16;
      
      private static const §1;§:uint = 20;
      
      private static const § !^§:uint = 24;
      
      private static const §0!T§:uint = 28;
      
      private static const §[N§:uint = 1;
      
      private static const §?!X§:uint = 2;
      
      private static const §#!9§:uint = 32;
      
      private static const §6![§:uint = 64;
      
      private static const §2g§:uint = 1;
      
      private static const §46§:uint = 2;
      
      private static const §2!'§:uint = 4;
      
      private static const §5^§:uint = 8;
      
      private static const §#!2§:uint = 16;
      
      private static const §@!C§:uint = 32;
      
      private static const §,9§:uint = 128;
      
      private static const §"7§:String = "mov";
      
      private static const §]I§:String = "add";
      
      private static const §-d§:String = "sub";
      
      private static const §<h§:String = "mul";
      
      private static const §'C§:String = "div";
      
      private static const §^!]§:String = "rcp";
      
      private static const §"!0§:String = "min";
      
      private static const §4!&§:String = "max";
      
      private static const §"!G§:String = "frc";
      
      private static const §`s§:String = "sqt";
      
      private static const § !O§:String = "rsq";
      
      private static const §-V§:String = "pow";
      
      private static const §0G§:String = "log";
      
      private static const §4!9§:String = "exp";
      
      private static const §0!<§:String = "nrm";
      
      private static const §3n§:String = "sin";
      
      private static const §%D§:String = "cos";
      
      private static const §^3§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §>g§:String = "abs";
      
      private static const §0!a§:String = "neg";
      
      private static const §8!!§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §7! §:String = "ifz";
      
      private static const §0h§:String = "inz";
      
      private static const §>!G§:String = "ife";
      
      private static const §-k§:String = "ine";
      
      private static const §9!Z§:String = "ifg";
      
      private static const §7!%§:String = "ifl";
      
      private static const §0k§:String = "ieg";
      
      private static const §^N§:String = "iel";
      
      private static const §[_§:String = "els";
      
      private static const §%6§:String = "eif";
      
      private static const §5y§:String = "rep";
      
      private static const §3!d§:String = "erp";
      
      private static const §[y§:String = "brk";
      
      private static const §<F§:String = "kil";
      
      private static const §&!M§:String = "tex";
      
      private static const §66§:String = "sge";
      
      private static const §;!4§:String = "slt";
      
      private static const §<!2§:String = "sgn";
      
      private static const §7!S§:String = "va";
      
      private static const §]!N§:String = "vc";
      
      private static const §&z§:String = "vt";
      
      private static const §2b§:String = "op";
      
      private static const §'_§:String = "v";
      
      private static const §%!Z§:String = "fc";
      
      private static const §1=§:String = "ft";
      
      private static const §9>§:String = "fs";
      
      private static const §9E§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §3!§:String = "cube";
      
      private static const §9k§:String = "mipnearest";
      
      private static const §]G§:String = "miplinear";
      
      private static const §37§:String = "mipnone";
      
      private static const §2!3§:String = "nomip";
      
      private static const §>o§:String = "nearest";
      
      private static const §8j§:String = "linear";
      
      private static const §1w§:String = "centroid";
      
      private static const §5!V§:String = "single";
      
      private static const §]5§:String = "depth";
      
      private static const §&!b§:String = "repeat";
      
      private static const §9Z§:String = "wrap";
      
      private static const §3N§:String = "clamp";
       
      
      private var §>9§:ByteArray = null;
      
      private var §5!4§:String = "";
      
      private var §"h§:Boolean = false;
      
      public function §@!7§(param1:Boolean = false)
      {
         super();
         this.§"h§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         § !A§[§"7§] = new OpCode(§"7§,2,0,0);
         § !A§[§]I§] = new OpCode(§]I§,3,1,0);
         § !A§[§-d§] = new OpCode(§-d§,3,2,0);
         § !A§[§<h§] = new OpCode(§<h§,3,3,0);
         § !A§[§'C§] = new OpCode(§'C§,3,4,0);
         § !A§[§^!]§] = new OpCode(§^!]§,2,5,0);
         § !A§[§"!0§] = new OpCode(§"!0§,3,6,0);
         § !A§[§4!&§] = new OpCode(§4!&§,3,7,0);
         § !A§[§"!G§] = new OpCode(§"!G§,2,8,0);
         § !A§[§`s§] = new OpCode(§`s§,2,9,0);
         § !A§[§ !O§] = new OpCode(§ !O§,2,10,0);
         § !A§[§-V§] = new OpCode(§-V§,3,11,0);
         § !A§[§0G§] = new OpCode(§0G§,2,12,0);
         § !A§[§4!9§] = new OpCode(§4!9§,2,13,0);
         § !A§[§0!<§] = new OpCode(§0!<§,2,14,0);
         § !A§[§3n§] = new OpCode(§3n§,2,15,0);
         § !A§[§%D§] = new OpCode(§%D§,2,16,0);
         § !A§[§^3§] = new OpCode(§^3§,3,17,0);
         § !A§[DP3] = new OpCode(DP3,3,18,0);
         § !A§[DP4] = new OpCode(DP4,3,19,0);
         § !A§[§>g§] = new OpCode(§>g§,2,20,0);
         § !A§[§0!a§] = new OpCode(§0!a§,2,21,0);
         § !A§[§8!!§] = new OpCode(§8!!§,2,22,0);
         § !A§[M33] = new OpCode(M33,3,23,§#!2§);
         § !A§[M44] = new OpCode(M44,3,24,§#!2§);
         § !A§[M34] = new OpCode(M34,3,25,§#!2§);
         § !A§[§7! §] = new OpCode(§7! §,1,26,§,9§ | §46§ | §2g§);
         § !A§[§0h§] = new OpCode(§0h§,1,27,§,9§ | §46§ | §2g§);
         § !A§[§>!G§] = new OpCode(§>!G§,2,28,§,9§ | §46§ | §2g§);
         § !A§[§-k§] = new OpCode(§-k§,2,29,§,9§ | §46§ | §2g§);
         § !A§[§9!Z§] = new OpCode(§9!Z§,2,30,§,9§ | §46§ | §2g§);
         § !A§[§7!%§] = new OpCode(§7!%§,2,31,§,9§ | §46§ | §2g§);
         § !A§[§0k§] = new OpCode(§0k§,2,32,§,9§ | §46§ | §2g§);
         § !A§[§^N§] = new OpCode(§^N§,2,33,§,9§ | §46§ | §2g§);
         § !A§[§[_§] = new OpCode(§[_§,0,34,§,9§ | §46§ | §2!'§);
         § !A§[§%6§] = new OpCode(§%6§,0,35,§,9§ | §2!'§);
         § !A§[§5y§] = new OpCode(§5y§,1,36,§,9§ | §46§ | §2g§);
         § !A§[§3!d§] = new OpCode(§3!d§,0,37,§,9§ | §2!'§);
         § !A§[§[y§] = new OpCode(§[y§,0,38,§,9§);
         § !A§[§<F§] = new OpCode(§<F§,1,39,§,9§ | §@!C§);
         § !A§[§&!M§] = new OpCode(§&!M§,3,40,§@!C§ | §5^§);
         § !A§[§66§] = new OpCode(§66§,3,41,0);
         § !A§[§;!4§] = new OpCode(§;!4§,3,42,0);
         § !A§[§<!2§] = new OpCode(§<!2§,2,43,0);
         §-!,§[§7!S§] = new Register(§7!S§,"vertex attribute",0,7,§6![§ | §?!X§);
         §-!,§[§]!N§] = new Register(§]!N§,"vertex constant",1,127,§6![§ | §?!X§);
         §-!,§[§&z§] = new Register(§&z§,"vertex temporary",2,7,§6![§ | §[N§ | §?!X§);
         §-!,§[§2b§] = new Register(§2b§,"vertex output",3,0,§6![§ | §[N§);
         §-!,§[§'_§] = new Register(§'_§,"varying",4,7,§6![§ | §#!9§ | §?!X§ | §[N§);
         §-!,§[§%!Z§] = new Register(§%!Z§,"fragment constant",1,27,§#!9§ | §?!X§);
         §-!,§[§1=§] = new Register(§1=§,"fragment temporary",2,7,§#!9§ | §[N§ | §?!X§);
         §-!,§[§9>§] = new Register(§9>§,"texture sampler",5,7,§#!9§ | §?!X§);
         §-!,§[§9E§] = new Register(§9E§,"fragment output",3,0,§#!9§ | §[N§);
         §3![§[D2] = new Sampler(D2,§;§,0);
         §3![§[D3] = new Sampler(D3,§;§,2);
         §3![§[§3!§] = new Sampler(§3!§,§;§,1);
         §3![§[§9k§] = new Sampler(§9k§,§ !^§,1);
         §3![§[§]G§] = new Sampler(§]G§,§ !^§,2);
         §3![§[§37§] = new Sampler(§37§,§ !^§,0);
         §3![§[§2!3§] = new Sampler(§2!3§,§ !^§,0);
         §3![§[§>o§] = new Sampler(§>o§,§0!T§,0);
         §3![§[§8j§] = new Sampler(§8j§,§0!T§,1);
         §3![§[§1w§] = new Sampler(§1w§,§-z§,1 << 0);
         §3![§[§5!V§] = new Sampler(§5!V§,§-z§,1 << 1);
         §3![§[§]5§] = new Sampler(§]5§,§-z§,1 << 2);
         §3![§[§&!b§] = new Sampler(§&!b§,§1;§,1);
         §3![§[§9Z§] = new Sampler(§9Z§,§1;§,1);
         §3![§[§3N§] = new Sampler(§3N§,§1;§,0);
      }
      
      public function get error() : String
      {
         return this.§5!4§;
      }
      
      public function get §<^§() : ByteArray
      {
         return this.§>9§;
      }
      
      public function §-[§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§>9§ = new ByteArray();
         this.§5!4§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5!4§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§<^§.endian = Endian.LITTLE_ENDIAN;
         this.§<^§.writeByte(160);
         this.§<^§.writeUnsignedInt(1);
         this.§<^§.writeByte(161);
         this.§<^§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§5!4§ == "")
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
            _loc16_ = § !A§[_loc15_[0]];
            if(!this.§"h§)
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
               if(_loc16_.flags & §2!'§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§5!4§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §46§)
               {
                  _loc7_++;
                  if(_loc7_ > §]!S§)
                  {
                     this.§5!4§ = "error: nesting to deep, maximum allowed is " + §]!S§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §@!C§ && !_loc5_)
               {
                  this.§5!4§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§<^§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §?!Y§)
               {
                  this.§5!4§ = "error: too many opcodes. maximum is " + §?!Y§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§5!4§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §-!,§[_loc24_[0]];
                  if(!this.§"h§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§5!4§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §#!9§))
                     {
                        this.§5!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§5!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §6![§))
                  {
                     this.§5!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§5!4§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §,9§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §5^§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§5!4§ = "error: relative can not be destination";
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
                     if((_loc39_ = §-!,§[_loc38_[0]]) == null)
                     {
                        this.§5!4§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§5!4§ = "error: bad index register select";
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
                        this.§5!4§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§<^§.writeShort(_loc27_);
                     this.§<^§.writeByte(_loc28_);
                     this.§<^§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3![§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §-z§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§<^§.writeShort(_loc27_);
                     this.§<^§.writeByte(int(_loc44_ * 8));
                     this.§<^§.writeByte(0);
                     this.§<^§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§<^§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§<^§.writeShort(_loc27_);
                     this.§<^§.writeByte(_loc34_);
                     this.§<^§.writeByte(_loc28_);
                     this.§<^§.writeByte(_loc25_.emitCode);
                     this.§<^§.writeByte(_loc32_);
                     this.§<^§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§<^§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§5!4§ != "")
         {
            this.§5!4§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§<^§.length = 0;
         }
         if(this.§"h§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§<^§.length;
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
               if((_loc49_ = this.§<^§[_loc48_].toString(16)).length < 2)
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
         return this.§<^§;
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
