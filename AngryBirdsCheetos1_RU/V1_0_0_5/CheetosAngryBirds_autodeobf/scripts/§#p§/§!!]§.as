package §#p§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §!!]§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §"1§:Dictionary = new Dictionary();
      
      private static const §>!%§:Dictionary = new Dictionary();
      
      private static const §3Q§:Dictionary = new Dictionary();
      
      private static const §&W§:int = 4;
      
      private static const §3n§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §0[§:uint = 12;
      
      private static const §@!U§:uint = 16;
      
      private static const §>o§:uint = 20;
      
      private static const §4!1§:uint = 24;
      
      private static const §`!X§:uint = 28;
      
      private static const §-0§:uint = 1;
      
      private static const §,x§:uint = 2;
      
      private static const §[`§:uint = 32;
      
      private static const §3!,§:uint = 64;
      
      private static const §]!S§:uint = 1;
      
      private static const §"7§:uint = 2;
      
      private static const §4y§:uint = 4;
      
      private static const §'!3§:uint = 8;
      
      private static const §5!B§:uint = 16;
      
      private static const §>!,§:uint = 32;
      
      private static const §4]§:uint = 128;
      
      private static const §1!M§:String = "mov";
      
      private static const §4!0§:String = "add";
      
      private static const §%!M§:String = "sub";
      
      private static const §2!7§:String = "mul";
      
      private static const §"!@§:String = "div";
      
      private static const §[u§:String = "rcp";
      
      private static const §?M§:String = "min";
      
      private static const §=!4§:String = "max";
      
      private static const §[a§:String = "frc";
      
      private static const §!!S§:String = "sqt";
      
      private static const §7!9§:String = "rsq";
      
      private static const § case§:String = "pow";
      
      private static const §]S§:String = "log";
      
      private static const §3t§:String = "exp";
      
      private static const §=!#§:String = "nrm";
      
      private static const §4!]§:String = "sin";
      
      private static const §1v§:String = "cos";
      
      private static const §;!0§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §1!7§:String = "abs";
      
      private static const §[i§:String = "neg";
      
      private static const §^g§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §0!<§:String = "ifz";
      
      private static const §4O§:String = "inz";
      
      private static const §'!'§:String = "ife";
      
      private static const §9y§:String = "ine";
      
      private static const §@!$§:String = "ifg";
      
      private static const §31§:String = "ifl";
      
      private static const §`<§:String = "ieg";
      
      private static const §,!7§:String = "iel";
      
      private static const §3;§:String = "els";
      
      private static const §%M§:String = "eif";
      
      private static const §'F§:String = "rep";
      
      private static const §67§:String = "erp";
      
      private static const §,a§:String = "brk";
      
      private static const §&t§:String = "kil";
      
      private static const §`P§:String = "tex";
      
      private static const §22§:String = "sge";
      
      private static const §'q§:String = "slt";
      
      private static const §#?§:String = "sgn";
      
      private static const §5y§:String = "va";
      
      private static const §+E§:String = "vc";
      
      private static const §[]§:String = "vt";
      
      private static const §1t§:String = "op";
      
      private static const §=!W§:String = "v";
      
      private static const §`a§:String = "fc";
      
      private static const §]Z§:String = "ft";
      
      private static const §6o§:String = "fs";
      
      private static const §9-§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §'!;§:String = "cube";
      
      private static const §6C§:String = "mipnearest";
      
      private static const §0!J§:String = "miplinear";
      
      private static const §`4§:String = "mipnone";
      
      private static const §,!S§:String = "nomip";
      
      private static const §[v§:String = "nearest";
      
      private static const §,!U§:String = "linear";
      
      private static const §7V§:String = "centroid";
      
      private static const §1?§:String = "single";
      
      private static const include:String = "depth";
      
      private static const §;R§:String = "repeat";
      
      private static const §#[§:String = "wrap";
      
      private static const §?c§:String = "clamp";
       
      
      private var §]!K§:ByteArray = null;
      
      private var §1!L§:String = "";
      
      private var §;H§:Boolean = false;
      
      public function §!!]§(param1:Boolean = false)
      {
         super();
         this.§;H§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §"1§[§1!M§] = new OpCode(§1!M§,2,0,0);
         §"1§[§4!0§] = new OpCode(§4!0§,3,1,0);
         §"1§[§%!M§] = new OpCode(§%!M§,3,2,0);
         §"1§[§2!7§] = new OpCode(§2!7§,3,3,0);
         §"1§[§"!@§] = new OpCode(§"!@§,3,4,0);
         §"1§[§[u§] = new OpCode(§[u§,2,5,0);
         §"1§[§?M§] = new OpCode(§?M§,3,6,0);
         §"1§[§=!4§] = new OpCode(§=!4§,3,7,0);
         §"1§[§[a§] = new OpCode(§[a§,2,8,0);
         §"1§[§!!S§] = new OpCode(§!!S§,2,9,0);
         §"1§[§7!9§] = new OpCode(§7!9§,2,10,0);
         §"1§[§ case§] = new OpCode(§ case§,3,11,0);
         §"1§[§]S§] = new OpCode(§]S§,2,12,0);
         §"1§[§3t§] = new OpCode(§3t§,2,13,0);
         §"1§[§=!#§] = new OpCode(§=!#§,2,14,0);
         §"1§[§4!]§] = new OpCode(§4!]§,2,15,0);
         §"1§[§1v§] = new OpCode(§1v§,2,16,0);
         §"1§[§;!0§] = new OpCode(§;!0§,3,17,0);
         §"1§[DP3] = new OpCode(DP3,3,18,0);
         §"1§[DP4] = new OpCode(DP4,3,19,0);
         §"1§[§1!7§] = new OpCode(§1!7§,2,20,0);
         §"1§[§[i§] = new OpCode(§[i§,2,21,0);
         §"1§[§^g§] = new OpCode(§^g§,2,22,0);
         §"1§[M33] = new OpCode(M33,3,23,§5!B§);
         §"1§[M44] = new OpCode(M44,3,24,§5!B§);
         §"1§[M34] = new OpCode(M34,3,25,§5!B§);
         §"1§[§0!<§] = new OpCode(§0!<§,1,26,§4]§ | §"7§ | §]!S§);
         §"1§[§4O§] = new OpCode(§4O§,1,27,§4]§ | §"7§ | §]!S§);
         §"1§[§'!'§] = new OpCode(§'!'§,2,28,§4]§ | §"7§ | §]!S§);
         §"1§[§9y§] = new OpCode(§9y§,2,29,§4]§ | §"7§ | §]!S§);
         §"1§[§@!$§] = new OpCode(§@!$§,2,30,§4]§ | §"7§ | §]!S§);
         §"1§[§31§] = new OpCode(§31§,2,31,§4]§ | §"7§ | §]!S§);
         §"1§[§`<§] = new OpCode(§`<§,2,32,§4]§ | §"7§ | §]!S§);
         §"1§[§,!7§] = new OpCode(§,!7§,2,33,§4]§ | §"7§ | §]!S§);
         §"1§[§3;§] = new OpCode(§3;§,0,34,§4]§ | §"7§ | §4y§);
         §"1§[§%M§] = new OpCode(§%M§,0,35,§4]§ | §4y§);
         §"1§[§'F§] = new OpCode(§'F§,1,36,§4]§ | §"7§ | §]!S§);
         §"1§[§67§] = new OpCode(§67§,0,37,§4]§ | §4y§);
         §"1§[§,a§] = new OpCode(§,a§,0,38,§4]§);
         §"1§[§&t§] = new OpCode(§&t§,1,39,§4]§ | §>!,§);
         §"1§[§`P§] = new OpCode(§`P§,3,40,§>!,§ | §'!3§);
         §"1§[§22§] = new OpCode(§22§,3,41,0);
         §"1§[§'q§] = new OpCode(§'q§,3,42,0);
         §"1§[§#?§] = new OpCode(§#?§,2,43,0);
         §>!%§[§5y§] = new Register(§5y§,"vertex attribute",0,7,§3!,§ | §,x§);
         §>!%§[§+E§] = new Register(§+E§,"vertex constant",1,127,§3!,§ | §,x§);
         §>!%§[§[]§] = new Register(§[]§,"vertex temporary",2,7,§3!,§ | §-0§ | §,x§);
         §>!%§[§1t§] = new Register(§1t§,"vertex output",3,0,§3!,§ | §-0§);
         §>!%§[§=!W§] = new Register(§=!W§,"varying",4,7,§3!,§ | §[`§ | §,x§ | §-0§);
         §>!%§[§`a§] = new Register(§`a§,"fragment constant",1,27,§[`§ | §,x§);
         §>!%§[§]Z§] = new Register(§]Z§,"fragment temporary",2,7,§[`§ | §-0§ | §,x§);
         §>!%§[§6o§] = new Register(§6o§,"texture sampler",5,7,§[`§ | §,x§);
         §>!%§[§9-§] = new Register(§9-§,"fragment output",3,0,§[`§ | §-0§);
         §3Q§[D2] = new Sampler(D2,§0[§,0);
         §3Q§[D3] = new Sampler(D3,§0[§,2);
         §3Q§[§'!;§] = new Sampler(§'!;§,§0[§,1);
         §3Q§[§6C§] = new Sampler(§6C§,§4!1§,1);
         §3Q§[§0!J§] = new Sampler(§0!J§,§4!1§,2);
         §3Q§[§`4§] = new Sampler(§`4§,§4!1§,0);
         §3Q§[§,!S§] = new Sampler(§,!S§,§4!1§,0);
         §3Q§[§[v§] = new Sampler(§[v§,§`!X§,0);
         §3Q§[§,!U§] = new Sampler(§,!U§,§`!X§,1);
         §3Q§[§7V§] = new Sampler(§7V§,§@!U§,1 << 0);
         §3Q§[§1?§] = new Sampler(§1?§,§@!U§,1 << 1);
         §3Q§[include] = new Sampler(include,§@!U§,1 << 2);
         §3Q§[§;R§] = new Sampler(§;R§,§>o§,1);
         §3Q§[§#[§] = new Sampler(§#[§,§>o§,1);
         §3Q§[§?c§] = new Sampler(§?c§,§>o§,0);
      }
      
      public function get error() : String
      {
         return this.§1!L§;
      }
      
      public function get §?A§() : ByteArray
      {
         return this.§]!K§;
      }
      
      public function §0n§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§]!K§ = new ByteArray();
         this.§1!L§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§1!L§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§?A§.endian = Endian.LITTLE_ENDIAN;
         this.§?A§.writeByte(160);
         this.§?A§.writeUnsignedInt(1);
         this.§?A§.writeByte(161);
         this.§?A§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§1!L§ == "")
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
            _loc16_ = §"1§[_loc15_[0]];
            if(!this.§;H§)
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
               if(_loc16_.flags & §4y§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§1!L§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §"7§)
               {
                  _loc7_++;
                  if(_loc7_ > §&W§)
                  {
                     this.§1!L§ = "error: nesting to deep, maximum allowed is " + §&W§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §>!,§ && !_loc5_)
               {
                  this.§1!L§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§?A§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §3n§)
               {
                  this.§1!L§ = "error: too many opcodes. maximum is " + §3n§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§1!L§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §>!%§[_loc24_[0]];
                  if(!this.§;H§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§1!L§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §[`§))
                     {
                        this.§1!L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§1!L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §3!,§))
                  {
                     this.§1!L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§1!L§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §4]§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §'!3§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§1!L§ = "error: relative can not be destination";
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
                     if((_loc39_ = §>!%§[_loc38_[0]]) == null)
                     {
                        this.§1!L§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§1!L§ = "error: bad index register select";
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
                        this.§1!L§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§?A§.writeShort(_loc27_);
                     this.§?A§.writeByte(_loc28_);
                     this.§?A§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3Q§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §@!U§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§?A§.writeShort(_loc27_);
                     this.§?A§.writeByte(int(_loc44_ * 8));
                     this.§?A§.writeByte(0);
                     this.§?A§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§?A§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§?A§.writeShort(_loc27_);
                     this.§?A§.writeByte(_loc34_);
                     this.§?A§.writeByte(_loc28_);
                     this.§?A§.writeByte(_loc25_.emitCode);
                     this.§?A§.writeByte(_loc32_);
                     this.§?A§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§?A§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§1!L§ != "")
         {
            this.§1!L§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§?A§.length = 0;
         }
         if(this.§;H§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§?A§.length;
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
               if((_loc49_ = this.§?A§[_loc48_].toString(16)).length < 2)
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
         return this.§?A§;
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
