package §,L§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §<!,§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § !T§:Dictionary = new Dictionary();
      
      private static const §@!E§:Dictionary = new Dictionary();
      
      private static const §!! §:Dictionary = new Dictionary();
      
      private static const §8!9§:int = 4;
      
      private static const § !>§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §[!J§:uint = 12;
      
      private static const §@!5§:uint = 16;
      
      private static const §;!n§:uint = 20;
      
      private static const §<!c§:uint = 24;
      
      private static const §@!Y§:uint = 28;
      
      private static const §=!]§:uint = 1;
      
      private static const §%!1§:uint = 2;
      
      private static const §7!<§:uint = 32;
      
      private static const §+!m§:uint = 64;
      
      private static const §2@§:uint = 1;
      
      private static const §^!N§:uint = 2;
      
      private static const §6!k§:uint = 4;
      
      private static const §[C§:uint = 8;
      
      private static const §1!a§:uint = 16;
      
      private static const §&!O§:uint = 32;
      
      private static const §,!I§:uint = 128;
      
      private static const §#`§:String = "mov";
      
      private static const §1V§:String = "add";
      
      private static const §;!j§:String = "sub";
      
      private static const §'!U§:String = "mul";
      
      private static const §-!Z§:String = "div";
      
      private static const §'!7§:String = "rcp";
      
      private static const §4!^§:String = "min";
      
      private static const §[!#§:String = "max";
      
      private static const §^1§:String = "frc";
      
      private static const §;_§:String = "sqt";
      
      private static const §?h§:String = "rsq";
      
      private static const §;R§:String = "pow";
      
      private static const §3c§:String = "log";
      
      private static const §[V§:String = "exp";
      
      private static const §^!G§:String = "nrm";
      
      private static const §9p§:String = "sin";
      
      private static const §7!=§:String = "cos";
      
      private static const §>A§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §2!'§:String = "abs";
      
      private static const §+H§:String = "neg";
      
      private static const §+!]§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §>Q§:String = "ifz";
      
      private static const § !V§:String = "inz";
      
      private static const §;!>§:String = "ife";
      
      private static const §%D§:String = "ine";
      
      private static const §=v§:String = "ifg";
      
      private static const §7u§:String = "ifl";
      
      private static const §;>§:String = "ieg";
      
      private static const § P§:String = "iel";
      
      private static const §?!g§:String = "els";
      
      private static const §9h§:String = "eif";
      
      private static const §<N§:String = "rep";
      
      private static const §]!5§:String = "erp";
      
      private static const §;Y§:String = "brk";
      
      private static const §1!"§:String = "kil";
      
      private static const §&C§:String = "tex";
      
      private static const §&!<§:String = "sge";
      
      private static const §3!4§:String = "slt";
      
      private static const §>K§:String = "sgn";
      
      private static const §>!=§:String = "va";
      
      private static const §6!<§:String = "vc";
      
      private static const §^o§:String = "vt";
      
      private static const §%u§:String = "op";
      
      private static const §=8§:String = "v";
      
      private static const §!!T§:String = "fc";
      
      private static const §+>§:String = "ft";
      
      private static const §<!"§:String = "fs";
      
      private static const §"!K§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §4!H§:String = "cube";
      
      private static const § r§:String = "mipnearest";
      
      private static const §@!3§:String = "miplinear";
      
      private static const §#&§:String = "mipnone";
      
      private static const §%!o§:String = "nomip";
      
      private static const §^C§:String = "nearest";
      
      private static const §=i§:String = "linear";
      
      private static const §@!l§:String = "centroid";
      
      private static const §6t§:String = "single";
      
      private static const §]+§:String = "depth";
      
      private static const §6!O§:String = "repeat";
      
      private static const §0e§:String = "wrap";
      
      private static const §0[§:String = "clamp";
       
      
      private var §`!8§:ByteArray = null;
      
      private var §94§:String = "";
      
      private var §1i§:Boolean = false;
      
      public function §<!,§(param1:Boolean = false)
      {
         super();
         this.§1i§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         § !T§[§#`§] = new OpCode(§#`§,2,0,0);
         § !T§[§1V§] = new OpCode(§1V§,3,1,0);
         § !T§[§;!j§] = new OpCode(§;!j§,3,2,0);
         § !T§[§'!U§] = new OpCode(§'!U§,3,3,0);
         § !T§[§-!Z§] = new OpCode(§-!Z§,3,4,0);
         § !T§[§'!7§] = new OpCode(§'!7§,2,5,0);
         § !T§[§4!^§] = new OpCode(§4!^§,3,6,0);
         § !T§[§[!#§] = new OpCode(§[!#§,3,7,0);
         § !T§[§^1§] = new OpCode(§^1§,2,8,0);
         § !T§[§;_§] = new OpCode(§;_§,2,9,0);
         § !T§[§?h§] = new OpCode(§?h§,2,10,0);
         § !T§[§;R§] = new OpCode(§;R§,3,11,0);
         § !T§[§3c§] = new OpCode(§3c§,2,12,0);
         § !T§[§[V§] = new OpCode(§[V§,2,13,0);
         § !T§[§^!G§] = new OpCode(§^!G§,2,14,0);
         § !T§[§9p§] = new OpCode(§9p§,2,15,0);
         § !T§[§7!=§] = new OpCode(§7!=§,2,16,0);
         § !T§[§>A§] = new OpCode(§>A§,3,17,0);
         § !T§[DP3] = new OpCode(DP3,3,18,0);
         § !T§[DP4] = new OpCode(DP4,3,19,0);
         § !T§[§2!'§] = new OpCode(§2!'§,2,20,0);
         § !T§[§+H§] = new OpCode(§+H§,2,21,0);
         § !T§[§+!]§] = new OpCode(§+!]§,2,22,0);
         § !T§[M33] = new OpCode(M33,3,23,§1!a§);
         § !T§[M44] = new OpCode(M44,3,24,§1!a§);
         § !T§[M34] = new OpCode(M34,3,25,§1!a§);
         § !T§[§>Q§] = new OpCode(§>Q§,1,26,§,!I§ | §^!N§ | §2@§);
         § !T§[§ !V§] = new OpCode(§ !V§,1,27,§,!I§ | §^!N§ | §2@§);
         § !T§[§;!>§] = new OpCode(§;!>§,2,28,§,!I§ | §^!N§ | §2@§);
         § !T§[§%D§] = new OpCode(§%D§,2,29,§,!I§ | §^!N§ | §2@§);
         § !T§[§=v§] = new OpCode(§=v§,2,30,§,!I§ | §^!N§ | §2@§);
         § !T§[§7u§] = new OpCode(§7u§,2,31,§,!I§ | §^!N§ | §2@§);
         § !T§[§;>§] = new OpCode(§;>§,2,32,§,!I§ | §^!N§ | §2@§);
         § !T§[§ P§] = new OpCode(§ P§,2,33,§,!I§ | §^!N§ | §2@§);
         § !T§[§?!g§] = new OpCode(§?!g§,0,34,§,!I§ | §^!N§ | §6!k§);
         § !T§[§9h§] = new OpCode(§9h§,0,35,§,!I§ | §6!k§);
         § !T§[§<N§] = new OpCode(§<N§,1,36,§,!I§ | §^!N§ | §2@§);
         § !T§[§]!5§] = new OpCode(§]!5§,0,37,§,!I§ | §6!k§);
         § !T§[§;Y§] = new OpCode(§;Y§,0,38,§,!I§);
         § !T§[§1!"§] = new OpCode(§1!"§,1,39,§,!I§ | §&!O§);
         § !T§[§&C§] = new OpCode(§&C§,3,40,§&!O§ | §[C§);
         § !T§[§&!<§] = new OpCode(§&!<§,3,41,0);
         § !T§[§3!4§] = new OpCode(§3!4§,3,42,0);
         § !T§[§>K§] = new OpCode(§>K§,2,43,0);
         §@!E§[§>!=§] = new Register(§>!=§,"vertex attribute",0,7,§+!m§ | §%!1§);
         §@!E§[§6!<§] = new Register(§6!<§,"vertex constant",1,127,§+!m§ | §%!1§);
         §@!E§[§^o§] = new Register(§^o§,"vertex temporary",2,7,§+!m§ | §=!]§ | §%!1§);
         §@!E§[§%u§] = new Register(§%u§,"vertex output",3,0,§+!m§ | §=!]§);
         §@!E§[§=8§] = new Register(§=8§,"varying",4,7,§+!m§ | §7!<§ | §%!1§ | §=!]§);
         §@!E§[§!!T§] = new Register(§!!T§,"fragment constant",1,27,§7!<§ | §%!1§);
         §@!E§[§+>§] = new Register(§+>§,"fragment temporary",2,7,§7!<§ | §=!]§ | §%!1§);
         §@!E§[§<!"§] = new Register(§<!"§,"texture sampler",5,7,§7!<§ | §%!1§);
         §@!E§[§"!K§] = new Register(§"!K§,"fragment output",3,0,§7!<§ | §=!]§);
         §!! §[D2] = new Sampler(D2,§[!J§,0);
         §!! §[D3] = new Sampler(D3,§[!J§,2);
         §!! §[§4!H§] = new Sampler(§4!H§,§[!J§,1);
         §!! §[§ r§] = new Sampler(§ r§,§<!c§,1);
         §!! §[§@!3§] = new Sampler(§@!3§,§<!c§,2);
         §!! §[§#&§] = new Sampler(§#&§,§<!c§,0);
         §!! §[§%!o§] = new Sampler(§%!o§,§<!c§,0);
         §!! §[§^C§] = new Sampler(§^C§,§@!Y§,0);
         §!! §[§=i§] = new Sampler(§=i§,§@!Y§,1);
         §!! §[§@!l§] = new Sampler(§@!l§,§@!5§,1 << 0);
         §!! §[§6t§] = new Sampler(§6t§,§@!5§,1 << 1);
         §!! §[§]+§] = new Sampler(§]+§,§@!5§,1 << 2);
         §!! §[§6!O§] = new Sampler(§6!O§,§;!n§,1);
         §!! §[§0e§] = new Sampler(§0e§,§;!n§,1);
         §!! §[§0[§] = new Sampler(§0[§,§;!n§,0);
      }
      
      public function get error() : String
      {
         return this.§94§;
      }
      
      public function get §4w§() : ByteArray
      {
         return this.§`!8§;
      }
      
      public function §>!0§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§`!8§ = new ByteArray();
         this.§94§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§94§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§4w§.endian = Endian.LITTLE_ENDIAN;
         this.§4w§.writeByte(160);
         this.§4w§.writeUnsignedInt(1);
         this.§4w§.writeByte(161);
         this.§4w§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§94§ == "")
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
            _loc16_ = § !T§[_loc15_[0]];
            if(!this.§1i§)
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
               if(_loc16_.flags & §6!k§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§94§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §^!N§)
               {
                  _loc7_++;
                  if(_loc7_ > §8!9§)
                  {
                     this.§94§ = "error: nesting to deep, maximum allowed is " + §8!9§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §&!O§ && !_loc5_)
               {
                  this.§94§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§4w§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > § !>§)
               {
                  this.§94§ = "error: too many opcodes. maximum is " + § !>§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§94§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §@!E§[_loc24_[0]];
                  if(!this.§1i§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§94§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §7!<§))
                     {
                        this.§94§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§94§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §+!m§))
                  {
                     this.§94§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§94§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §,!I§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §[C§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§94§ = "error: relative can not be destination";
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
                     if((_loc39_ = §@!E§[_loc38_[0]]) == null)
                     {
                        this.§94§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§94§ = "error: bad index register select";
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
                        this.§94§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§4w§.writeShort(_loc27_);
                     this.§4w§.writeByte(_loc28_);
                     this.§4w§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §!! §[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §@!5§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§4w§.writeShort(_loc27_);
                     this.§4w§.writeByte(int(_loc44_ * 8));
                     this.§4w§.writeByte(0);
                     this.§4w§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§4w§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§4w§.writeShort(_loc27_);
                     this.§4w§.writeByte(_loc34_);
                     this.§4w§.writeByte(_loc28_);
                     this.§4w§.writeByte(_loc25_.emitCode);
                     this.§4w§.writeByte(_loc32_);
                     this.§4w§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§4w§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§94§ != "")
         {
            this.§94§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§4w§.length = 0;
         }
         if(this.§1i§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§4w§.length;
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
               if((_loc49_ = this.§4w§[_loc48_].toString(16)).length < 2)
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
         return this.§4w§;
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
