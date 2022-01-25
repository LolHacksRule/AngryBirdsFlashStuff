package §^!w§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §2s§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §=P§:Dictionary = new Dictionary();
      
      private static const §<H§:Dictionary = new Dictionary();
      
      private static const §3!v§:Dictionary = new Dictionary();
      
      private static const §[4§:int = 4;
      
      private static const §`R§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §[e§:uint = 12;
      
      private static const §1!H§:uint = 16;
      
      private static const §'!M§:uint = 20;
      
      private static const §#1§:uint = 24;
      
      private static const §,'§:uint = 28;
      
      private static const §?!j§:uint = 1;
      
      private static const §="0§:uint = 2;
      
      private static const §+!e§:uint = 32;
      
      private static const §="+§:uint = 64;
      
      private static const §!b§:uint = 1;
      
      private static const §2!P§:uint = 2;
      
      private static const §#" §:uint = 4;
      
      private static const §#q§:uint = 8;
      
      private static const §[r§:uint = 16;
      
      private static const §2!+§:uint = 32;
      
      private static const §3!z§:uint = 128;
      
      private static const §0!L§:String = "mov";
      
      private static const §!!O§:String = "add";
      
      private static const §0!9§:String = "sub";
      
      private static const §#!r§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §%!K§:String = "rcp";
      
      private static const §`i§:String = "min";
      
      private static const § !?§:String = "max";
      
      private static const §[!0§:String = "frc";
      
      private static const §3"4§:String = "sqt";
      
      private static const §!5§:String = "rsq";
      
      private static const §,!8§:String = "pow";
      
      private static const §1!K§:String = "log";
      
      private static const §?r§:String = "exp";
      
      private static const §]-§:String = "nrm";
      
      private static const §7!A§:String = "sin";
      
      private static const §?P§:String = "cos";
      
      private static const §8!9§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §default§:String = "abs";
      
      private static const §<"$§:String = "neg";
      
      private static const §6!,§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §6a§:String = "ifz";
      
      private static const §2V§:String = "inz";
      
      private static const §`B§:String = "ife";
      
      private static const §!D§:String = "ine";
      
      private static const §@"1§:String = "ifg";
      
      private static const §;"3§:String = "ifl";
      
      private static const §>p§:String = "ieg";
      
      private static const §6p§:String = "iel";
      
      private static const §%!I§:String = "els";
      
      private static const §2!j§:String = "eif";
      
      private static const §'!4§:String = "rep";
      
      private static const §@!y§:String = "erp";
      
      private static const §`!K§:String = "brk";
      
      private static const §1M§:String = "kil";
      
      private static const §=!R§:String = "tex";
      
      private static const §9!B§:String = "sge";
      
      private static const §;!;§:String = "slt";
      
      private static const §70§:String = "sgn";
      
      private static const §2!C§:String = "va";
      
      private static const §^§:String = "vc";
      
      private static const §4!P§:String = "vt";
      
      private static const §=!>§:String = "op";
      
      private static const V:String = "v";
      
      private static const §%[§:String = "fc";
      
      private static const §;!v§:String = "ft";
      
      private static const §8!F§:String = "fs";
      
      private static const §]Q§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §2!#§:String = "cube";
      
      private static const §"!T§:String = "mipnearest";
      
      private static const §]!d§:String = "miplinear";
      
      private static const §0h§:String = "mipnone";
      
      private static const §#A§:String = "nomip";
      
      private static const §%u§:String = "nearest";
      
      private static const §@!c§:String = "linear";
      
      private static const §;!0§:String = "centroid";
      
      private static const §-j§:String = "single";
      
      private static const §]§:String = "depth";
      
      private static const §+!O§:String = "repeat";
      
      private static const §1%§:String = "wrap";
      
      private static const §+-§:String = "clamp";
       
      
      private var §+c§:ByteArray = null;
      
      private var §5!<§:String = "";
      
      private var §,T§:Boolean = false;
      
      public function §2s§(param1:Boolean = false)
      {
         super();
         this.§,T§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §=P§[§0!L§] = new OpCode(§0!L§,2,0,0);
         §=P§[§!!O§] = new OpCode(§!!O§,3,1,0);
         §=P§[§0!9§] = new OpCode(§0!9§,3,2,0);
         §=P§[§#!r§] = new OpCode(§#!r§,3,3,0);
         §=P§[DIV] = new OpCode(DIV,3,4,0);
         §=P§[§%!K§] = new OpCode(§%!K§,2,5,0);
         §=P§[§`i§] = new OpCode(§`i§,3,6,0);
         §=P§[§ !?§] = new OpCode(§ !?§,3,7,0);
         §=P§[§[!0§] = new OpCode(§[!0§,2,8,0);
         §=P§[§3"4§] = new OpCode(§3"4§,2,9,0);
         §=P§[§!5§] = new OpCode(§!5§,2,10,0);
         §=P§[§,!8§] = new OpCode(§,!8§,3,11,0);
         §=P§[§1!K§] = new OpCode(§1!K§,2,12,0);
         §=P§[§?r§] = new OpCode(§?r§,2,13,0);
         §=P§[§]-§] = new OpCode(§]-§,2,14,0);
         §=P§[§7!A§] = new OpCode(§7!A§,2,15,0);
         §=P§[§?P§] = new OpCode(§?P§,2,16,0);
         §=P§[§8!9§] = new OpCode(§8!9§,3,17,0);
         §=P§[DP3] = new OpCode(DP3,3,18,0);
         §=P§[DP4] = new OpCode(DP4,3,19,0);
         §=P§[§default§] = new OpCode(§default§,2,20,0);
         §=P§[§<"$§] = new OpCode(§<"$§,2,21,0);
         §=P§[§6!,§] = new OpCode(§6!,§,2,22,0);
         §=P§[M33] = new OpCode(M33,3,23,§[r§);
         §=P§[M44] = new OpCode(M44,3,24,§[r§);
         §=P§[M34] = new OpCode(M34,3,25,§[r§);
         §=P§[§6a§] = new OpCode(§6a§,1,26,§3!z§ | §2!P§ | §!b§);
         §=P§[§2V§] = new OpCode(§2V§,1,27,§3!z§ | §2!P§ | §!b§);
         §=P§[§`B§] = new OpCode(§`B§,2,28,§3!z§ | §2!P§ | §!b§);
         §=P§[§!D§] = new OpCode(§!D§,2,29,§3!z§ | §2!P§ | §!b§);
         §=P§[§@"1§] = new OpCode(§@"1§,2,30,§3!z§ | §2!P§ | §!b§);
         §=P§[§;"3§] = new OpCode(§;"3§,2,31,§3!z§ | §2!P§ | §!b§);
         §=P§[§>p§] = new OpCode(§>p§,2,32,§3!z§ | §2!P§ | §!b§);
         §=P§[§6p§] = new OpCode(§6p§,2,33,§3!z§ | §2!P§ | §!b§);
         §=P§[§%!I§] = new OpCode(§%!I§,0,34,§3!z§ | §2!P§ | §#" §);
         §=P§[§2!j§] = new OpCode(§2!j§,0,35,§3!z§ | §#" §);
         §=P§[§'!4§] = new OpCode(§'!4§,1,36,§3!z§ | §2!P§ | §!b§);
         §=P§[§@!y§] = new OpCode(§@!y§,0,37,§3!z§ | §#" §);
         §=P§[§`!K§] = new OpCode(§`!K§,0,38,§3!z§);
         §=P§[§1M§] = new OpCode(§1M§,1,39,§3!z§ | §2!+§);
         §=P§[§=!R§] = new OpCode(§=!R§,3,40,§2!+§ | §#q§);
         §=P§[§9!B§] = new OpCode(§9!B§,3,41,0);
         §=P§[§;!;§] = new OpCode(§;!;§,3,42,0);
         §=P§[§70§] = new OpCode(§70§,2,43,0);
         §<H§[§2!C§] = new Register(§2!C§,"vertex attribute",0,7,§="+§ | §="0§);
         §<H§[§^§] = new Register(§^§,"vertex constant",1,127,§="+§ | §="0§);
         §<H§[§4!P§] = new Register(§4!P§,"vertex temporary",2,7,§="+§ | §?!j§ | §="0§);
         §<H§[§=!>§] = new Register(§=!>§,"vertex output",3,0,§="+§ | §?!j§);
         §<H§[V] = new Register(V,"varying",4,7,§="+§ | §+!e§ | §="0§ | §?!j§);
         §<H§[§%[§] = new Register(§%[§,"fragment constant",1,27,§+!e§ | §="0§);
         §<H§[§;!v§] = new Register(§;!v§,"fragment temporary",2,7,§+!e§ | §?!j§ | §="0§);
         §<H§[§8!F§] = new Register(§8!F§,"texture sampler",5,7,§+!e§ | §="0§);
         §<H§[§]Q§] = new Register(§]Q§,"fragment output",3,0,§+!e§ | §?!j§);
         §3!v§[D2] = new Sampler(D2,§[e§,0);
         §3!v§[D3] = new Sampler(D3,§[e§,2);
         §3!v§[§2!#§] = new Sampler(§2!#§,§[e§,1);
         §3!v§[§"!T§] = new Sampler(§"!T§,§#1§,1);
         §3!v§[§]!d§] = new Sampler(§]!d§,§#1§,2);
         §3!v§[§0h§] = new Sampler(§0h§,§#1§,0);
         §3!v§[§#A§] = new Sampler(§#A§,§#1§,0);
         §3!v§[§%u§] = new Sampler(§%u§,§,'§,0);
         §3!v§[§@!c§] = new Sampler(§@!c§,§,'§,1);
         §3!v§[§;!0§] = new Sampler(§;!0§,§1!H§,1 << 0);
         §3!v§[§-j§] = new Sampler(§-j§,§1!H§,1 << 1);
         §3!v§[§]§] = new Sampler(§]§,§1!H§,1 << 2);
         §3!v§[§+!O§] = new Sampler(§+!O§,§'!M§,1);
         §3!v§[§1%§] = new Sampler(§1%§,§'!M§,1);
         §3!v§[§+-§] = new Sampler(§+-§,§'!M§,0);
      }
      
      public function get error() : String
      {
         return this.§5!<§;
      }
      
      public function get §+v§() : ByteArray
      {
         return this.§+c§;
      }
      
      public function §@x§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§+c§ = new ByteArray();
         this.§5!<§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5!<§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§+v§.endian = Endian.LITTLE_ENDIAN;
         this.§+v§.writeByte(160);
         this.§+v§.writeUnsignedInt(1);
         this.§+v§.writeByte(161);
         this.§+v§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§5!<§ == "")
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
            _loc16_ = §=P§[_loc15_[0]];
            if(!this.§,T§)
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
               if(_loc16_.flags & §#" §)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§5!<§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §2!P§)
               {
                  _loc7_++;
                  if(_loc7_ > §[4§)
                  {
                     this.§5!<§ = "error: nesting to deep, maximum allowed is " + §[4§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §2!+§ && !_loc5_)
               {
                  this.§5!<§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§+v§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §`R§)
               {
                  this.§5!<§ = "error: too many opcodes. maximum is " + §`R§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§5!<§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §<H§[_loc24_[0]];
                  if(!this.§,T§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§5!<§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §+!e§))
                     {
                        this.§5!<§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§5!<§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §="+§))
                  {
                     this.§5!<§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§5!<§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §3!z§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §#q§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§5!<§ = "error: relative can not be destination";
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
                     if((_loc39_ = §<H§[_loc38_[0]]) == null)
                     {
                        this.§5!<§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§5!<§ = "error: bad index register select";
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
                        this.§5!<§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§+v§.writeShort(_loc27_);
                     this.§+v§.writeByte(_loc28_);
                     this.§+v§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3!v§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §1!H§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§+v§.writeShort(_loc27_);
                     this.§+v§.writeByte(int(_loc44_ * 8));
                     this.§+v§.writeByte(0);
                     this.§+v§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§+v§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§+v§.writeShort(_loc27_);
                     this.§+v§.writeByte(_loc34_);
                     this.§+v§.writeByte(_loc28_);
                     this.§+v§.writeByte(_loc25_.emitCode);
                     this.§+v§.writeByte(_loc32_);
                     this.§+v§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§+v§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§5!<§ != "")
         {
            this.§5!<§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§+v§.length = 0;
         }
         if(this.§,T§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§+v§.length;
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
               if((_loc49_ = this.§+v§[_loc48_].toString(16)).length < 2)
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
         return this.§+v§;
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
