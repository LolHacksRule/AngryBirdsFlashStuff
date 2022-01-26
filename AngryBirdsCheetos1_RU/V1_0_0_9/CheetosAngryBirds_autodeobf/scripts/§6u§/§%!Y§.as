package §6u§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%!Y§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §^5§:Dictionary = new Dictionary();
      
      private static const §&!E§:Dictionary = new Dictionary();
      
      private static const §?7§:Dictionary = new Dictionary();
      
      private static const §5!1§:int = 4;
      
      private static const §[c§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §2]§:uint = 12;
      
      private static const §,!`§:uint = 16;
      
      private static const §];§:uint = 20;
      
      private static const §8h§:uint = 24;
      
      private static const § =§:uint = 28;
      
      private static const §7a§:uint = 1;
      
      private static const §=!6§:uint = 2;
      
      private static const §%n§:uint = 32;
      
      private static const §`n§:uint = 64;
      
      private static const §&!N§:uint = 1;
      
      private static const §;#§:uint = 2;
      
      private static const §@!J§:uint = 4;
      
      private static const §[!+§:uint = 8;
      
      private static const §"!F§:uint = 16;
      
      private static const §+!?§:uint = 32;
      
      private static const §5z§:uint = 128;
      
      private static const §'+§:String = "mov";
      
      private static const §<[§:String = "add";
      
      private static const §+n§:String = "sub";
      
      private static const §!a§:String = "mul";
      
      private static const §!m§:String = "div";
      
      private static const §`z§:String = "rcp";
      
      private static const §,'§:String = "min";
      
      private static const §8!Q§:String = "max";
      
      private static const §%i§:String = "frc";
      
      private static const §>j§:String = "sqt";
      
      private static const §^!T§:String = "rsq";
      
      private static const §super§:String = "pow";
      
      private static const §?H§:String = "log";
      
      private static const §^J§:String = "exp";
      
      private static const §?s§:String = "nrm";
      
      private static const §<>§:String = "sin";
      
      private static const §&W§:String = "cos";
      
      private static const §"!Z§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §3u§:String = "abs";
      
      private static const §0!#§:String = "neg";
      
      private static const §81§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §1!2§:String = "ifz";
      
      private static const §6g§:String = "inz";
      
      private static const §7!'§:String = "ife";
      
      private static const §'!#§:String = "ine";
      
      private static const §3!,§:String = "ifg";
      
      private static const §8_§:String = "ifl";
      
      private static const §]7§:String = "ieg";
      
      private static const §;!`§:String = "iel";
      
      private static const §^B§:String = "els";
      
      private static const §[a§:String = "eif";
      
      private static const §5^§:String = "rep";
      
      private static const §[!R§:String = "erp";
      
      private static const §6!O§:String = "brk";
      
      private static const §#![§:String = "kil";
      
      private static const §+!>§:String = "tex";
      
      private static const §7!0§:String = "sge";
      
      private static const §@!X§:String = "slt";
      
      private static const §6!!§:String = "sgn";
      
      private static const §default§:String = "va";
      
      private static const §`;§:String = "vc";
      
      private static const §0!,§:String = "vt";
      
      private static const §&!;§:String = "op";
      
      private static const §?!-§:String = "v";
      
      private static const §&y§:String = "fc";
      
      private static const §<K§:String = "ft";
      
      private static const §=;§:String = "fs";
      
      private static const §2!-§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §1F§:String = "cube";
      
      private static const §+!3§:String = "mipnearest";
      
      private static const §?!&§:String = "miplinear";
      
      private static const §,h§:String = "mipnone";
      
      private static const §!V§:String = "nomip";
      
      private static const §<@§:String = "nearest";
      
      private static const §[!S§:String = "linear";
      
      private static const §!<§:String = "centroid";
      
      private static const §]!U§:String = "single";
      
      private static const §=!+§:String = "depth";
      
      private static const §'!L§:String = "repeat";
      
      private static const §>!H§:String = "wrap";
      
      private static const §?"§:String = "clamp";
       
      
      private var § !2§:ByteArray = null;
      
      private var §1@§:String = "";
      
      private var §3!D§:Boolean = false;
      
      public function §%!Y§(param1:Boolean = false)
      {
         super();
         this.§3!D§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §^5§[§'+§] = new OpCode(§'+§,2,0,0);
         §^5§[§<[§] = new OpCode(§<[§,3,1,0);
         §^5§[§+n§] = new OpCode(§+n§,3,2,0);
         §^5§[§!a§] = new OpCode(§!a§,3,3,0);
         §^5§[§!m§] = new OpCode(§!m§,3,4,0);
         §^5§[§`z§] = new OpCode(§`z§,2,5,0);
         §^5§[§,'§] = new OpCode(§,'§,3,6,0);
         §^5§[§8!Q§] = new OpCode(§8!Q§,3,7,0);
         §^5§[§%i§] = new OpCode(§%i§,2,8,0);
         §^5§[§>j§] = new OpCode(§>j§,2,9,0);
         §^5§[§^!T§] = new OpCode(§^!T§,2,10,0);
         §^5§[§super§] = new OpCode(§super§,3,11,0);
         §^5§[§?H§] = new OpCode(§?H§,2,12,0);
         §^5§[§^J§] = new OpCode(§^J§,2,13,0);
         §^5§[§?s§] = new OpCode(§?s§,2,14,0);
         §^5§[§<>§] = new OpCode(§<>§,2,15,0);
         §^5§[§&W§] = new OpCode(§&W§,2,16,0);
         §^5§[§"!Z§] = new OpCode(§"!Z§,3,17,0);
         §^5§[DP3] = new OpCode(DP3,3,18,0);
         §^5§[DP4] = new OpCode(DP4,3,19,0);
         §^5§[§3u§] = new OpCode(§3u§,2,20,0);
         §^5§[§0!#§] = new OpCode(§0!#§,2,21,0);
         §^5§[§81§] = new OpCode(§81§,2,22,0);
         §^5§[M33] = new OpCode(M33,3,23,§"!F§);
         §^5§[M44] = new OpCode(M44,3,24,§"!F§);
         §^5§[M34] = new OpCode(M34,3,25,§"!F§);
         §^5§[§1!2§] = new OpCode(§1!2§,1,26,§5z§ | §;#§ | §&!N§);
         §^5§[§6g§] = new OpCode(§6g§,1,27,§5z§ | §;#§ | §&!N§);
         §^5§[§7!'§] = new OpCode(§7!'§,2,28,§5z§ | §;#§ | §&!N§);
         §^5§[§'!#§] = new OpCode(§'!#§,2,29,§5z§ | §;#§ | §&!N§);
         §^5§[§3!,§] = new OpCode(§3!,§,2,30,§5z§ | §;#§ | §&!N§);
         §^5§[§8_§] = new OpCode(§8_§,2,31,§5z§ | §;#§ | §&!N§);
         §^5§[§]7§] = new OpCode(§]7§,2,32,§5z§ | §;#§ | §&!N§);
         §^5§[§;!`§] = new OpCode(§;!`§,2,33,§5z§ | §;#§ | §&!N§);
         §^5§[§^B§] = new OpCode(§^B§,0,34,§5z§ | §;#§ | §@!J§);
         §^5§[§[a§] = new OpCode(§[a§,0,35,§5z§ | §@!J§);
         §^5§[§5^§] = new OpCode(§5^§,1,36,§5z§ | §;#§ | §&!N§);
         §^5§[§[!R§] = new OpCode(§[!R§,0,37,§5z§ | §@!J§);
         §^5§[§6!O§] = new OpCode(§6!O§,0,38,§5z§);
         §^5§[§#![§] = new OpCode(§#![§,1,39,§5z§ | §+!?§);
         §^5§[§+!>§] = new OpCode(§+!>§,3,40,§+!?§ | §[!+§);
         §^5§[§7!0§] = new OpCode(§7!0§,3,41,0);
         §^5§[§@!X§] = new OpCode(§@!X§,3,42,0);
         §^5§[§6!!§] = new OpCode(§6!!§,2,43,0);
         §&!E§[§default§] = new Register(§default§,"vertex attribute",0,7,§`n§ | §=!6§);
         §&!E§[§`;§] = new Register(§`;§,"vertex constant",1,127,§`n§ | §=!6§);
         §&!E§[§0!,§] = new Register(§0!,§,"vertex temporary",2,7,§`n§ | §7a§ | §=!6§);
         §&!E§[§&!;§] = new Register(§&!;§,"vertex output",3,0,§`n§ | §7a§);
         §&!E§[§?!-§] = new Register(§?!-§,"varying",4,7,§`n§ | §%n§ | §=!6§ | §7a§);
         §&!E§[§&y§] = new Register(§&y§,"fragment constant",1,27,§%n§ | §=!6§);
         §&!E§[§<K§] = new Register(§<K§,"fragment temporary",2,7,§%n§ | §7a§ | §=!6§);
         §&!E§[§=;§] = new Register(§=;§,"texture sampler",5,7,§%n§ | §=!6§);
         §&!E§[§2!-§] = new Register(§2!-§,"fragment output",3,0,§%n§ | §7a§);
         §?7§[D2] = new Sampler(D2,§2]§,0);
         §?7§[D3] = new Sampler(D3,§2]§,2);
         §?7§[§1F§] = new Sampler(§1F§,§2]§,1);
         §?7§[§+!3§] = new Sampler(§+!3§,§8h§,1);
         §?7§[§?!&§] = new Sampler(§?!&§,§8h§,2);
         §?7§[§,h§] = new Sampler(§,h§,§8h§,0);
         §?7§[§!V§] = new Sampler(§!V§,§8h§,0);
         §?7§[§<@§] = new Sampler(§<@§,§ =§,0);
         §?7§[§[!S§] = new Sampler(§[!S§,§ =§,1);
         §?7§[§!<§] = new Sampler(§!<§,§,!`§,1 << 0);
         §?7§[§]!U§] = new Sampler(§]!U§,§,!`§,1 << 1);
         §?7§[§=!+§] = new Sampler(§=!+§,§,!`§,1 << 2);
         §?7§[§'!L§] = new Sampler(§'!L§,§];§,1);
         §?7§[§>!H§] = new Sampler(§>!H§,§];§,1);
         §?7§[§?"§] = new Sampler(§?"§,§];§,0);
      }
      
      public function get error() : String
      {
         return this.§1@§;
      }
      
      public function get §8[§() : ByteArray
      {
         return this.§ !2§;
      }
      
      public function §;&§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§ !2§ = new ByteArray();
         this.§1@§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§1@§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§8[§.endian = Endian.LITTLE_ENDIAN;
         this.§8[§.writeByte(160);
         this.§8[§.writeUnsignedInt(1);
         this.§8[§.writeByte(161);
         this.§8[§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§1@§ == "")
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
            _loc16_ = §^5§[_loc15_[0]];
            if(!this.§3!D§)
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
               if(_loc16_.flags & §@!J§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§1@§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §;#§)
               {
                  _loc7_++;
                  if(_loc7_ > §5!1§)
                  {
                     this.§1@§ = "error: nesting to deep, maximum allowed is " + §5!1§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §+!?§ && !_loc5_)
               {
                  this.§1@§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§8[§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §[c§)
               {
                  this.§1@§ = "error: too many opcodes. maximum is " + §[c§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§1@§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §&!E§[_loc24_[0]];
                  if(!this.§3!D§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§1@§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §%n§))
                     {
                        this.§1@§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§1@§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §`n§))
                  {
                     this.§1@§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§1@§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §5z§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §[!+§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§1@§ = "error: relative can not be destination";
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
                     if((_loc39_ = §&!E§[_loc38_[0]]) == null)
                     {
                        this.§1@§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§1@§ = "error: bad index register select";
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
                        this.§1@§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§8[§.writeShort(_loc27_);
                     this.§8[§.writeByte(_loc28_);
                     this.§8[§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §?7§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §,!`§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§8[§.writeShort(_loc27_);
                     this.§8[§.writeByte(int(_loc44_ * 8));
                     this.§8[§.writeByte(0);
                     this.§8[§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§8[§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§8[§.writeShort(_loc27_);
                     this.§8[§.writeByte(_loc34_);
                     this.§8[§.writeByte(_loc28_);
                     this.§8[§.writeByte(_loc25_.emitCode);
                     this.§8[§.writeByte(_loc32_);
                     this.§8[§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§8[§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§1@§ != "")
         {
            this.§1@§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§8[§.length = 0;
         }
         if(this.§3!D§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§8[§.length;
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
               if((_loc49_ = this.§8[§[_loc48_].toString(16)).length < 2)
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
         return this.§8[§;
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
