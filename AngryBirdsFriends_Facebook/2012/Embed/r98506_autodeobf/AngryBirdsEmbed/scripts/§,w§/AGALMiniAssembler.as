package §,w§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §=F§:Dictionary = new Dictionary();
      
      private static const §?e§:Dictionary = new Dictionary();
      
      private static const §3?§:Dictionary = new Dictionary();
      
      private static const §;§:int = 4;
      
      private static const §#j§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §#n§:uint = 12;
      
      private static const §,I§:uint = 16;
      
      private static const §5c§:uint = 20;
      
      private static const §#A§:uint = 24;
      
      private static const §>n§:uint = 28;
      
      private static const §%a§:uint = 1;
      
      private static const §%g§:uint = 2;
      
      private static const §0S§:uint = 32;
      
      private static const §;!#§:uint = 64;
      
      private static const §'w§:uint = 1;
      
      private static const §"i§:uint = 2;
      
      private static const §5!&§:uint = 4;
      
      private static const §,U§:uint = 8;
      
      private static const §0!E§:uint = 16;
      
      private static const §-!0§:uint = 32;
      
      private static const §=!§:uint = 128;
      
      private static const §^m§:String = "mov";
      
      private static const § ;§:String = "add";
      
      private static const §-U§:String = "sub";
      
      private static const §?s§:String = "mul";
      
      private static const §7n§:String = "div";
      
      private static const set:String = "rcp";
      
      private static const §8!9§:String = "min";
      
      private static const §9!!§:String = "max";
      
      private static const §?g§:String = "frc";
      
      private static const §&<§:String = "sqt";
      
      private static const §1p§:String = "rsq";
      
      private static const §1q§:String = "pow";
      
      private static const §4s§:String = "log";
      
      private static const §<+§:String = "exp";
      
      private static const §2g§:String = "nrm";
      
      private static const §?Y§:String = "sin";
      
      private static const §1A§:String = "cos";
      
      private static const §,n§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §%S§:String = "abs";
      
      private static const §@#§:String = "neg";
      
      private static const §`F§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §0!-§:String = "ifz";
      
      private static const §]!D§:String = "inz";
      
      private static const §&R§:String = "ife";
      
      private static const §%%§:String = "ine";
      
      private static const §;K§:String = "ifg";
      
      private static const §`!H§:String = "ifl";
      
      private static const §catch§:String = "ieg";
      
      private static const §,+§:String = "iel";
      
      private static const §-d§:String = "els";
      
      private static const §>$§:String = "eif";
      
      private static const §"Y§:String = "rep";
      
      private static const §>1§:String = "erp";
      
      private static const §!Z§:String = "brk";
      
      private static const §3!'§:String = "kil";
      
      private static const §9@§:String = "tex";
      
      private static const § !#§:String = "sge";
      
      private static const §!!6§:String = "slt";
      
      private static const §-!G§:String = "sgn";
      
      private static const §#@§:String = "va";
      
      private static const §@y§:String = "vc";
      
      private static const §]!E§:String = "vt";
      
      private static const §+!?§:String = "op";
      
      private static const §7k§:String = "v";
      
      private static const §@^§:String = "fc";
      
      private static const §]N§:String = "ft";
      
      private static const §4y§:String = "fs";
      
      private static const §#B§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §>!@§:String = "cube";
      
      private static const §"B§:String = "mipnearest";
      
      private static const §1!,§:String = "miplinear";
      
      private static const §<$§:String = "mipnone";
      
      private static const §"o§:String = "nomip";
      
      private static const §9N§:String = "nearest";
      
      private static const get:String = "linear";
      
      private static const §8v§:String = "centroid";
      
      private static const §[!8§:String = "single";
      
      private static const §27§:String = "depth";
      
      private static const §!n§:String = "repeat";
      
      private static const §!!A§:String = "wrap";
      
      private static const §-5§:String = "clamp";
       
      
      private var §default§:ByteArray = null;
      
      private var §"!2§:String = "";
      
      private var §&W§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§&W§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §=F§[§^m§] = new OpCode(§^m§,2,0,0);
         §=F§[§ ;§] = new OpCode(§ ;§,3,1,0);
         §=F§[§-U§] = new OpCode(§-U§,3,2,0);
         §=F§[§?s§] = new OpCode(§?s§,3,3,0);
         §=F§[§7n§] = new OpCode(§7n§,3,4,0);
         §=F§[set] = new OpCode(set,2,5,0);
         §=F§[§8!9§] = new OpCode(§8!9§,3,6,0);
         §=F§[§9!!§] = new OpCode(§9!!§,3,7,0);
         §=F§[§?g§] = new OpCode(§?g§,2,8,0);
         §=F§[§&<§] = new OpCode(§&<§,2,9,0);
         §=F§[§1p§] = new OpCode(§1p§,2,10,0);
         §=F§[§1q§] = new OpCode(§1q§,3,11,0);
         §=F§[§4s§] = new OpCode(§4s§,2,12,0);
         §=F§[§<+§] = new OpCode(§<+§,2,13,0);
         §=F§[§2g§] = new OpCode(§2g§,2,14,0);
         §=F§[§?Y§] = new OpCode(§?Y§,2,15,0);
         §=F§[§1A§] = new OpCode(§1A§,2,16,0);
         §=F§[§,n§] = new OpCode(§,n§,3,17,0);
         §=F§[DP3] = new OpCode(DP3,3,18,0);
         §=F§[DP4] = new OpCode(DP4,3,19,0);
         §=F§[§%S§] = new OpCode(§%S§,2,20,0);
         §=F§[§@#§] = new OpCode(§@#§,2,21,0);
         §=F§[§`F§] = new OpCode(§`F§,2,22,0);
         §=F§[M33] = new OpCode(M33,3,23,§0!E§);
         §=F§[M44] = new OpCode(M44,3,24,§0!E§);
         §=F§[M34] = new OpCode(M34,3,25,§0!E§);
         §=F§[§0!-§] = new OpCode(§0!-§,1,26,§=!§ | §"i§ | §'w§);
         §=F§[§]!D§] = new OpCode(§]!D§,1,27,§=!§ | §"i§ | §'w§);
         §=F§[§&R§] = new OpCode(§&R§,2,28,§=!§ | §"i§ | §'w§);
         §=F§[§%%§] = new OpCode(§%%§,2,29,§=!§ | §"i§ | §'w§);
         §=F§[§;K§] = new OpCode(§;K§,2,30,§=!§ | §"i§ | §'w§);
         §=F§[§`!H§] = new OpCode(§`!H§,2,31,§=!§ | §"i§ | §'w§);
         §=F§[§catch§] = new OpCode(§catch§,2,32,§=!§ | §"i§ | §'w§);
         §=F§[§,+§] = new OpCode(§,+§,2,33,§=!§ | §"i§ | §'w§);
         §=F§[§-d§] = new OpCode(§-d§,0,34,§=!§ | §"i§ | §5!&§);
         §=F§[§>$§] = new OpCode(§>$§,0,35,§=!§ | §5!&§);
         §=F§[§"Y§] = new OpCode(§"Y§,1,36,§=!§ | §"i§ | §'w§);
         §=F§[§>1§] = new OpCode(§>1§,0,37,§=!§ | §5!&§);
         §=F§[§!Z§] = new OpCode(§!Z§,0,38,§=!§);
         §=F§[§3!'§] = new OpCode(§3!'§,1,39,§=!§ | §-!0§);
         §=F§[§9@§] = new OpCode(§9@§,3,40,§-!0§ | §,U§);
         §=F§[§ !#§] = new OpCode(§ !#§,3,41,0);
         §=F§[§!!6§] = new OpCode(§!!6§,3,42,0);
         §=F§[§-!G§] = new OpCode(§-!G§,2,43,0);
         §?e§[§#@§] = new Register(§#@§,"vertex attribute",0,7,§;!#§ | §%g§);
         §?e§[§@y§] = new Register(§@y§,"vertex constant",1,127,§;!#§ | §%g§);
         §?e§[§]!E§] = new Register(§]!E§,"vertex temporary",2,7,§;!#§ | §%a§ | §%g§);
         §?e§[§+!?§] = new Register(§+!?§,"vertex output",3,0,§;!#§ | §%a§);
         §?e§[§7k§] = new Register(§7k§,"varying",4,7,§;!#§ | §0S§ | §%g§ | §%a§);
         §?e§[§@^§] = new Register(§@^§,"fragment constant",1,27,§0S§ | §%g§);
         §?e§[§]N§] = new Register(§]N§,"fragment temporary",2,7,§0S§ | §%a§ | §%g§);
         §?e§[§4y§] = new Register(§4y§,"texture sampler",5,7,§0S§ | §%g§);
         §?e§[§#B§] = new Register(§#B§,"fragment output",3,0,§0S§ | §%a§);
         §3?§[D2] = new Sampler(D2,§#n§,0);
         §3?§[D3] = new Sampler(D3,§#n§,2);
         §3?§[§>!@§] = new Sampler(§>!@§,§#n§,1);
         §3?§[§"B§] = new Sampler(§"B§,§#A§,1);
         §3?§[§1!,§] = new Sampler(§1!,§,§#A§,2);
         §3?§[§<$§] = new Sampler(§<$§,§#A§,0);
         §3?§[§"o§] = new Sampler(§"o§,§#A§,0);
         §3?§[§9N§] = new Sampler(§9N§,§>n§,0);
         §3?§[get] = new Sampler(get,§>n§,1);
         §3?§[§8v§] = new Sampler(§8v§,§,I§,1 << 0);
         §3?§[§[!8§] = new Sampler(§[!8§,§,I§,1 << 1);
         §3?§[§27§] = new Sampler(§27§,§,I§,1 << 2);
         §3?§[§!n§] = new Sampler(§!n§,§5c§,1);
         §3?§[§!!A§] = new Sampler(§!!A§,§5c§,1);
         §3?§[§-5§] = new Sampler(§-5§,§5c§,0);
      }
      
      public function get error() : String
      {
         return this.§"!2§;
      }
      
      public function get §!y§() : ByteArray
      {
         return this.§default§;
      }
      
      public function §%y§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§default§ = new ByteArray();
         this.§"!2§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§"!2§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§!y§.endian = Endian.LITTLE_ENDIAN;
         this.§!y§.writeByte(160);
         this.§!y§.writeUnsignedInt(1);
         this.§!y§.writeByte(161);
         this.§!y§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§"!2§ == "")
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
            _loc16_ = §=F§[_loc15_[0]];
            if(!this.§&W§)
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
               if(_loc16_.flags & §5!&§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§"!2§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §"i§)
               {
                  _loc7_++;
                  if(_loc7_ > §;§)
                  {
                     this.§"!2§ = "error: nesting to deep, maximum allowed is " + §;§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §-!0§ && !_loc5_)
               {
                  this.§"!2§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§!y§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §#j§)
               {
                  this.§"!2§ = "error: too many opcodes. maximum is " + §#j§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§"!2§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §?e§[_loc24_[0]];
                  if(!this.§&W§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§"!2§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §0S§))
                     {
                        this.§"!2§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§"!2§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §;!#§))
                  {
                     this.§"!2§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§"!2§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §=!§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §,U§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§"!2§ = "error: relative can not be destination";
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
                     if((_loc39_ = §?e§[_loc38_[0]]) == null)
                     {
                        this.§"!2§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§"!2§ = "error: bad index register select";
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
                        this.§"!2§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§!y§.writeShort(_loc27_);
                     this.§!y§.writeByte(_loc28_);
                     this.§!y§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3?§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §,I§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§!y§.writeShort(_loc27_);
                     this.§!y§.writeByte(int(_loc44_ * 8));
                     this.§!y§.writeByte(0);
                     this.§!y§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§!y§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§!y§.writeShort(_loc27_);
                     this.§!y§.writeByte(_loc34_);
                     this.§!y§.writeByte(_loc28_);
                     this.§!y§.writeByte(_loc25_.emitCode);
                     this.§!y§.writeByte(_loc32_);
                     this.§!y§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§!y§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§"!2§ != "")
         {
            this.§"!2§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§!y§.length = 0;
         }
         if(this.§&W§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§!y§.length;
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
               if((_loc49_ = this.§!y§[_loc48_].toString(16)).length < 2)
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
         return this.§!y§;
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
