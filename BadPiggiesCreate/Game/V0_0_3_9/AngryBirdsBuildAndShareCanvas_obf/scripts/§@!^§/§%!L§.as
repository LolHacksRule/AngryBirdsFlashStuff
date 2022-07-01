package §@!^§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%!L§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §7O§:Dictionary = new Dictionary();
      
      private static const §[!Y§:Dictionary = new Dictionary();
      
      private static const §"]§:Dictionary = new Dictionary();
      
      private static const §8!B§:int = 4;
      
      private static const §^!s§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §4!%§:uint = 12;
      
      private static const §"v§:uint = 16;
      
      private static const §-6§:uint = 20;
      
      private static const §>"1§:uint = 24;
      
      private static const §`z§:uint = 28;
      
      private static const §&&§:uint = 1;
      
      private static const §'!<§:uint = 2;
      
      private static const §0"8§:uint = 32;
      
      private static const §`"3§:uint = 64;
      
      private static const § 4§:uint = 1;
      
      private static const § !t§:uint = 2;
      
      private static const §%n§:uint = 4;
      
      private static const §#f§:uint = 8;
      
      private static const §,!8§:uint = 16;
      
      private static const §1!A§:uint = 32;
      
      private static const §6=§:uint = 128;
      
      private static const §,C§:String = "mov";
      
      private static const §2!@§:String = "add";
      
      private static const §-!-§:String = "sub";
      
      private static const §&<§:String = "mul";
      
      private static const §6Y§:String = "div";
      
      private static const § "$§:String = "rcp";
      
      private static const § D§:String = "min";
      
      private static const §`p§:String = "max";
      
      private static const §8_§:String = "frc";
      
      private static const §1v§:String = "sqt";
      
      private static const §`!i§:String = "rsq";
      
      private static const §"!R§:String = "pow";
      
      private static const §""$§:String = "log";
      
      private static const §'P§:String = "exp";
      
      private static const §;!f§:String = "nrm";
      
      private static const §!2§:String = "sin";
      
      private static const §[M§:String = "cos";
      
      private static const §,!n§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §2z§:String = "abs";
      
      private static const §!!O§:String = "neg";
      
      private static const §^Q§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §3!`§:String = "ifz";
      
      private static const §%!j§:String = "inz";
      
      private static const §!!H§:String = "ife";
      
      private static const §6!L§:String = "ine";
      
      private static const §1f§:String = "ifg";
      
      private static const §^"6§:String = "ifl";
      
      private static const §!A§:String = "ieg";
      
      private static const §]"%§:String = "iel";
      
      private static const §?"1§:String = "els";
      
      private static const §@!b§:String = "eif";
      
      private static const §[!M§:String = "rep";
      
      private static const §[!E§:String = "erp";
      
      private static const §8!g§:String = "brk";
      
      private static const §3!3§:String = "kil";
      
      private static const §;B§:String = "tex";
      
      private static const §&Y§:String = "sge";
      
      private static const §1!M§:String = "slt";
      
      private static const §#t§:String = "sgn";
      
      private static const §='§:String = "va";
      
      private static const §#!H§:String = "vc";
      
      private static const §6!C§:String = "vt";
      
      private static const §,!s§:String = "op";
      
      private static const V:String = "v";
      
      private static const §[Q§:String = "fc";
      
      private static const §9x§:String = "ft";
      
      private static const §-!0§:String = "fs";
      
      private static const §5C§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §1w§:String = "cube";
      
      private static const §2S§:String = "mipnearest";
      
      private static const §&f§:String = "miplinear";
      
      private static const §]!W§:String = "mipnone";
      
      private static const §,M§:String = "nomip";
      
      private static const §,4§:String = "nearest";
      
      private static const §^9§:String = "linear";
      
      private static const §"!&§:String = "centroid";
      
      private static const §""+§:String = "single";
      
      private static const §1" §:String = "depth";
      
      private static const §#n§:String = "repeat";
      
      private static const §^!t§:String = "wrap";
      
      private static const §7!=§:String = "clamp";
       
      
      private var § Z§:ByteArray = null;
      
      private var §>!V§:String = "";
      
      private var §8"&§:Boolean = false;
      
      public function §%!L§(param1:Boolean = false)
      {
         super();
         this.§8"&§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §7O§[§,C§] = new OpCode(§,C§,2,0,0);
         §7O§[§2!@§] = new OpCode(§2!@§,3,1,0);
         §7O§[§-!-§] = new OpCode(§-!-§,3,2,0);
         §7O§[§&<§] = new OpCode(§&<§,3,3,0);
         §7O§[§6Y§] = new OpCode(§6Y§,3,4,0);
         §7O§[§ "$§] = new OpCode(§ "$§,2,5,0);
         §7O§[§ D§] = new OpCode(§ D§,3,6,0);
         §7O§[§`p§] = new OpCode(§`p§,3,7,0);
         §7O§[§8_§] = new OpCode(§8_§,2,8,0);
         §7O§[§1v§] = new OpCode(§1v§,2,9,0);
         §7O§[§`!i§] = new OpCode(§`!i§,2,10,0);
         §7O§[§"!R§] = new OpCode(§"!R§,3,11,0);
         §7O§[§""$§] = new OpCode(§""$§,2,12,0);
         §7O§[§'P§] = new OpCode(§'P§,2,13,0);
         §7O§[§;!f§] = new OpCode(§;!f§,2,14,0);
         §7O§[§!2§] = new OpCode(§!2§,2,15,0);
         §7O§[§[M§] = new OpCode(§[M§,2,16,0);
         §7O§[§,!n§] = new OpCode(§,!n§,3,17,0);
         §7O§[DP3] = new OpCode(DP3,3,18,0);
         §7O§[DP4] = new OpCode(DP4,3,19,0);
         §7O§[§2z§] = new OpCode(§2z§,2,20,0);
         §7O§[§!!O§] = new OpCode(§!!O§,2,21,0);
         §7O§[§^Q§] = new OpCode(§^Q§,2,22,0);
         §7O§[M33] = new OpCode(M33,3,23,§,!8§);
         §7O§[M44] = new OpCode(M44,3,24,§,!8§);
         §7O§[M34] = new OpCode(M34,3,25,§,!8§);
         §7O§[§3!`§] = new OpCode(§3!`§,1,26,§6=§ | § !t§ | § 4§);
         §7O§[§%!j§] = new OpCode(§%!j§,1,27,§6=§ | § !t§ | § 4§);
         §7O§[§!!H§] = new OpCode(§!!H§,2,28,§6=§ | § !t§ | § 4§);
         §7O§[§6!L§] = new OpCode(§6!L§,2,29,§6=§ | § !t§ | § 4§);
         §7O§[§1f§] = new OpCode(§1f§,2,30,§6=§ | § !t§ | § 4§);
         §7O§[§^"6§] = new OpCode(§^"6§,2,31,§6=§ | § !t§ | § 4§);
         §7O§[§!A§] = new OpCode(§!A§,2,32,§6=§ | § !t§ | § 4§);
         §7O§[§]"%§] = new OpCode(§]"%§,2,33,§6=§ | § !t§ | § 4§);
         §7O§[§?"1§] = new OpCode(§?"1§,0,34,§6=§ | § !t§ | §%n§);
         §7O§[§@!b§] = new OpCode(§@!b§,0,35,§6=§ | §%n§);
         §7O§[§[!M§] = new OpCode(§[!M§,1,36,§6=§ | § !t§ | § 4§);
         §7O§[§[!E§] = new OpCode(§[!E§,0,37,§6=§ | §%n§);
         §7O§[§8!g§] = new OpCode(§8!g§,0,38,§6=§);
         §7O§[§3!3§] = new OpCode(§3!3§,1,39,§6=§ | §1!A§);
         §7O§[§;B§] = new OpCode(§;B§,3,40,§1!A§ | §#f§);
         §7O§[§&Y§] = new OpCode(§&Y§,3,41,0);
         §7O§[§1!M§] = new OpCode(§1!M§,3,42,0);
         §7O§[§#t§] = new OpCode(§#t§,2,43,0);
         §[!Y§[§='§] = new Register(§='§,"vertex attribute",0,7,§`"3§ | §'!<§);
         §[!Y§[§#!H§] = new Register(§#!H§,"vertex constant",1,127,§`"3§ | §'!<§);
         §[!Y§[§6!C§] = new Register(§6!C§,"vertex temporary",2,7,§`"3§ | §&&§ | §'!<§);
         §[!Y§[§,!s§] = new Register(§,!s§,"vertex output",3,0,§`"3§ | §&&§);
         §[!Y§[V] = new Register(V,"varying",4,7,§`"3§ | §0"8§ | §'!<§ | §&&§);
         §[!Y§[§[Q§] = new Register(§[Q§,"fragment constant",1,27,§0"8§ | §'!<§);
         §[!Y§[§9x§] = new Register(§9x§,"fragment temporary",2,7,§0"8§ | §&&§ | §'!<§);
         §[!Y§[§-!0§] = new Register(§-!0§,"texture sampler",5,7,§0"8§ | §'!<§);
         §[!Y§[§5C§] = new Register(§5C§,"fragment output",3,0,§0"8§ | §&&§);
         §"]§[D2] = new Sampler(D2,§4!%§,0);
         §"]§[D3] = new Sampler(D3,§4!%§,2);
         §"]§[§1w§] = new Sampler(§1w§,§4!%§,1);
         §"]§[§2S§] = new Sampler(§2S§,§>"1§,1);
         §"]§[§&f§] = new Sampler(§&f§,§>"1§,2);
         §"]§[§]!W§] = new Sampler(§]!W§,§>"1§,0);
         §"]§[§,M§] = new Sampler(§,M§,§>"1§,0);
         §"]§[§,4§] = new Sampler(§,4§,§`z§,0);
         §"]§[§^9§] = new Sampler(§^9§,§`z§,1);
         §"]§[§"!&§] = new Sampler(§"!&§,§"v§,1 << 0);
         §"]§[§""+§] = new Sampler(§""+§,§"v§,1 << 1);
         §"]§[§1" §] = new Sampler(§1" §,§"v§,1 << 2);
         §"]§[§#n§] = new Sampler(§#n§,§-6§,1);
         §"]§[§^!t§] = new Sampler(§^!t§,§-6§,1);
         §"]§[§7!=§] = new Sampler(§7!=§,§-6§,0);
      }
      
      public function get error() : String
      {
         return this.§>!V§;
      }
      
      public function get §for§() : ByteArray
      {
         return this.§ Z§;
      }
      
      public function §1"3§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§ Z§ = new ByteArray();
         this.§>!V§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§>!V§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§for§.endian = Endian.LITTLE_ENDIAN;
         this.§for§.writeByte(160);
         this.§for§.writeUnsignedInt(1);
         this.§for§.writeByte(161);
         this.§for§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§>!V§ == "")
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
            _loc16_ = §7O§[_loc15_[0]];
            if(!this.§8"&§)
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
               if(_loc16_.flags & §%n§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§>!V§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & § !t§)
               {
                  _loc7_++;
                  if(_loc7_ > §8!B§)
                  {
                     this.§>!V§ = "error: nesting to deep, maximum allowed is " + §8!B§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §1!A§ && !_loc5_)
               {
                  this.§>!V§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§for§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §^!s§)
               {
                  this.§>!V§ = "error: too many opcodes. maximum is " + §^!s§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§>!V§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §[!Y§[_loc24_[0]];
                  if(!this.§8"&§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§>!V§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §0"8§))
                     {
                        this.§>!V§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§>!V§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §`"3§))
                  {
                     this.§>!V§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§>!V§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §6=§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §#f§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§>!V§ = "error: relative can not be destination";
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
                     if((_loc39_ = §[!Y§[_loc38_[0]]) == null)
                     {
                        this.§>!V§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§>!V§ = "error: bad index register select";
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
                        this.§>!V§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§for§.writeShort(_loc27_);
                     this.§for§.writeByte(_loc28_);
                     this.§for§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §"]§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §"v§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§for§.writeShort(_loc27_);
                     this.§for§.writeByte(int(_loc44_ * 8));
                     this.§for§.writeByte(0);
                     this.§for§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§for§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§for§.writeShort(_loc27_);
                     this.§for§.writeByte(_loc34_);
                     this.§for§.writeByte(_loc28_);
                     this.§for§.writeByte(_loc25_.emitCode);
                     this.§for§.writeByte(_loc32_);
                     this.§for§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§for§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§>!V§ != "")
         {
            this.§>!V§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§for§.length = 0;
         }
         if(this.§8"&§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§for§.length;
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
               if((_loc49_ = this.§for§[_loc48_].toString(16)).length < 2)
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
         return this.§for§;
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
