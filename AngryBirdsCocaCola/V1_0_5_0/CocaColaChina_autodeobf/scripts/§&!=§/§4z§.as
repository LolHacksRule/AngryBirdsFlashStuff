package §&!=§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §4z§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §in§:Dictionary = new Dictionary();
      
      private static const §3"§:Dictionary = new Dictionary();
      
      private static const §"!0§:Dictionary = new Dictionary();
      
      private static const §class§:int = 4;
      
      private static const §&!R§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §[I§:uint = 12;
      
      private static const §,U§:uint = 16;
      
      private static const §9o§:uint = 20;
      
      private static const §`!9§:uint = 24;
      
      private static const §+X§:uint = 28;
      
      private static const §=y§:uint = 1;
      
      private static const §;W§:uint = 2;
      
      private static const § !?§:uint = 32;
      
      private static const §]z§:uint = 64;
      
      private static const §>v§:uint = 1;
      
      private static const §`7§:uint = 2;
      
      private static const §;V§:uint = 4;
      
      private static const §;+§:uint = 8;
      
      private static const § @§:uint = 16;
      
      private static const §#!C§:uint = 32;
      
      private static const §4=§:uint = 128;
      
      private static const §0!Y§:String = "mov";
      
      private static const §3!A§:String = "add";
      
      private static const §%^§:String = "sub";
      
      private static const §[v§:String = "mul";
      
      private static const §4q§:String = "div";
      
      private static const §=!F§:String = "rcp";
      
      private static const § ;§:String = "min";
      
      private static const §^[§:String = "max";
      
      private static const §<R§:String = "frc";
      
      private static const §&4§:String = "sqt";
      
      private static const §2>§:String = "rsq";
      
      private static const §7!>§:String = "pow";
      
      private static const §]e§:String = "log";
      
      private static const §^G§:String = "exp";
      
      private static const §5!H§:String = "nrm";
      
      private static const §?o§:String = "sin";
      
      private static const §4!%§:String = "cos";
      
      private static const §@s§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §5r§:String = "abs";
      
      private static const §'H§:String = "neg";
      
      private static const §<E§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §;D§:String = "ifz";
      
      private static const §8! §:String = "inz";
      
      private static const §2!?§:String = "ife";
      
      private static const §%!W§:String = "ine";
      
      private static const §'!K§:String = "ifg";
      
      private static const §'X§:String = "ifl";
      
      private static const §%K§:String = "ieg";
      
      private static const §&!O§:String = "iel";
      
      private static const §2D§:String = "els";
      
      private static const §+!T§:String = "eif";
      
      private static const §6!<§:String = "rep";
      
      private static const §<l§:String = "erp";
      
      private static const §?!H§:String = "brk";
      
      private static const §=!L§:String = "kil";
      
      private static const §-X§:String = "tex";
      
      private static const §@!L§:String = "sge";
      
      private static const §>!I§:String = "slt";
      
      private static const §4!8§:String = "sgn";
      
      private static const §8P§:String = "va";
      
      private static const §7!6§:String = "vc";
      
      private static const §5!b§:String = "vt";
      
      private static const § t§:String = "op";
      
      private static const §if§:String = "v";
      
      private static const §&!1§:String = "fc";
      
      private static const §?j§:String = "ft";
      
      private static const §9<§:String = "fs";
      
      private static const § for§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §^§:String = "cube";
      
      private static const §9#§:String = "mipnearest";
      
      private static const §%q§:String = "miplinear";
      
      private static const §1!%§:String = "mipnone";
      
      private static const §#a§:String = "nomip";
      
      private static const §9Q§:String = "nearest";
      
      private static const §,>§:String = "linear";
      
      private static const §4j§:String = "centroid";
      
      private static const §@O§:String = "single";
      
      private static const §3!`§:String = "depth";
      
      private static const §5"§:String = "repeat";
      
      private static const §"1§:String = "wrap";
      
      private static const §7!`§:String = "clamp";
       
      
      private var §%!"§:ByteArray = null;
      
      private var §"m§:String = "";
      
      private var §`m§:Boolean = false;
      
      public function §4z§(param1:Boolean = false)
      {
         super();
         this.§`m§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §in§[§0!Y§] = new OpCode(§0!Y§,2,0,0);
         §in§[§3!A§] = new OpCode(§3!A§,3,1,0);
         §in§[§%^§] = new OpCode(§%^§,3,2,0);
         §in§[§[v§] = new OpCode(§[v§,3,3,0);
         §in§[§4q§] = new OpCode(§4q§,3,4,0);
         §in§[§=!F§] = new OpCode(§=!F§,2,5,0);
         §in§[§ ;§] = new OpCode(§ ;§,3,6,0);
         §in§[§^[§] = new OpCode(§^[§,3,7,0);
         §in§[§<R§] = new OpCode(§<R§,2,8,0);
         §in§[§&4§] = new OpCode(§&4§,2,9,0);
         §in§[§2>§] = new OpCode(§2>§,2,10,0);
         §in§[§7!>§] = new OpCode(§7!>§,3,11,0);
         §in§[§]e§] = new OpCode(§]e§,2,12,0);
         §in§[§^G§] = new OpCode(§^G§,2,13,0);
         §in§[§5!H§] = new OpCode(§5!H§,2,14,0);
         §in§[§?o§] = new OpCode(§?o§,2,15,0);
         §in§[§4!%§] = new OpCode(§4!%§,2,16,0);
         §in§[§@s§] = new OpCode(§@s§,3,17,0);
         §in§[DP3] = new OpCode(DP3,3,18,0);
         §in§[DP4] = new OpCode(DP4,3,19,0);
         §in§[§5r§] = new OpCode(§5r§,2,20,0);
         §in§[§'H§] = new OpCode(§'H§,2,21,0);
         §in§[§<E§] = new OpCode(§<E§,2,22,0);
         §in§[M33] = new OpCode(M33,3,23,§ @§);
         §in§[M44] = new OpCode(M44,3,24,§ @§);
         §in§[M34] = new OpCode(M34,3,25,§ @§);
         §in§[§;D§] = new OpCode(§;D§,1,26,§4=§ | §`7§ | §>v§);
         §in§[§8! §] = new OpCode(§8! §,1,27,§4=§ | §`7§ | §>v§);
         §in§[§2!?§] = new OpCode(§2!?§,2,28,§4=§ | §`7§ | §>v§);
         §in§[§%!W§] = new OpCode(§%!W§,2,29,§4=§ | §`7§ | §>v§);
         §in§[§'!K§] = new OpCode(§'!K§,2,30,§4=§ | §`7§ | §>v§);
         §in§[§'X§] = new OpCode(§'X§,2,31,§4=§ | §`7§ | §>v§);
         §in§[§%K§] = new OpCode(§%K§,2,32,§4=§ | §`7§ | §>v§);
         §in§[§&!O§] = new OpCode(§&!O§,2,33,§4=§ | §`7§ | §>v§);
         §in§[§2D§] = new OpCode(§2D§,0,34,§4=§ | §`7§ | §;V§);
         §in§[§+!T§] = new OpCode(§+!T§,0,35,§4=§ | §;V§);
         §in§[§6!<§] = new OpCode(§6!<§,1,36,§4=§ | §`7§ | §>v§);
         §in§[§<l§] = new OpCode(§<l§,0,37,§4=§ | §;V§);
         §in§[§?!H§] = new OpCode(§?!H§,0,38,§4=§);
         §in§[§=!L§] = new OpCode(§=!L§,1,39,§4=§ | §#!C§);
         §in§[§-X§] = new OpCode(§-X§,3,40,§#!C§ | §;+§);
         §in§[§@!L§] = new OpCode(§@!L§,3,41,0);
         §in§[§>!I§] = new OpCode(§>!I§,3,42,0);
         §in§[§4!8§] = new OpCode(§4!8§,2,43,0);
         §3"§[§8P§] = new Register(§8P§,"vertex attribute",0,7,§]z§ | §;W§);
         §3"§[§7!6§] = new Register(§7!6§,"vertex constant",1,127,§]z§ | §;W§);
         §3"§[§5!b§] = new Register(§5!b§,"vertex temporary",2,7,§]z§ | §=y§ | §;W§);
         §3"§[§ t§] = new Register(§ t§,"vertex output",3,0,§]z§ | §=y§);
         §3"§[§if§] = new Register(§if§,"varying",4,7,§]z§ | § !?§ | §;W§ | §=y§);
         §3"§[§&!1§] = new Register(§&!1§,"fragment constant",1,27,§ !?§ | §;W§);
         §3"§[§?j§] = new Register(§?j§,"fragment temporary",2,7,§ !?§ | §=y§ | §;W§);
         §3"§[§9<§] = new Register(§9<§,"texture sampler",5,7,§ !?§ | §;W§);
         §3"§[§ for§] = new Register(§ for§,"fragment output",3,0,§ !?§ | §=y§);
         §"!0§[D2] = new Sampler(D2,§[I§,0);
         §"!0§[D3] = new Sampler(D3,§[I§,2);
         §"!0§[§^§] = new Sampler(§^§,§[I§,1);
         §"!0§[§9#§] = new Sampler(§9#§,§`!9§,1);
         §"!0§[§%q§] = new Sampler(§%q§,§`!9§,2);
         §"!0§[§1!%§] = new Sampler(§1!%§,§`!9§,0);
         §"!0§[§#a§] = new Sampler(§#a§,§`!9§,0);
         §"!0§[§9Q§] = new Sampler(§9Q§,§+X§,0);
         §"!0§[§,>§] = new Sampler(§,>§,§+X§,1);
         §"!0§[§4j§] = new Sampler(§4j§,§,U§,1 << 0);
         §"!0§[§@O§] = new Sampler(§@O§,§,U§,1 << 1);
         §"!0§[§3!`§] = new Sampler(§3!`§,§,U§,1 << 2);
         §"!0§[§5"§] = new Sampler(§5"§,§9o§,1);
         §"!0§[§"1§] = new Sampler(§"1§,§9o§,1);
         §"!0§[§7!`§] = new Sampler(§7!`§,§9o§,0);
      }
      
      public function get error() : String
      {
         return this.§"m§;
      }
      
      public function get §@U§() : ByteArray
      {
         return this.§%!"§;
      }
      
      public function § J§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§%!"§ = new ByteArray();
         this.§"m§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§"m§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§@U§.endian = Endian.LITTLE_ENDIAN;
         this.§@U§.writeByte(160);
         this.§@U§.writeUnsignedInt(1);
         this.§@U§.writeByte(161);
         this.§@U§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§"m§ == "")
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
            _loc16_ = §in§[_loc15_[0]];
            if(!this.§`m§)
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
               if(_loc16_.flags & §;V§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§"m§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §`7§)
               {
                  _loc7_++;
                  if(_loc7_ > §class§)
                  {
                     this.§"m§ = "error: nesting to deep, maximum allowed is " + §class§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §#!C§ && !_loc5_)
               {
                  this.§"m§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§@U§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §&!R§)
               {
                  this.§"m§ = "error: too many opcodes. maximum is " + §&!R§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§"m§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §3"§[_loc24_[0]];
                  if(!this.§`m§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§"m§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & § !?§))
                     {
                        this.§"m§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§"m§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]z§))
                  {
                     this.§"m§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§"m§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §4=§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §;+§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§"m§ = "error: relative can not be destination";
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
                     if((_loc39_ = §3"§[_loc38_[0]]) == null)
                     {
                        this.§"m§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§"m§ = "error: bad index register select";
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
                        this.§"m§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§@U§.writeShort(_loc27_);
                     this.§@U§.writeByte(_loc28_);
                     this.§@U§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §"!0§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §,U§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§@U§.writeShort(_loc27_);
                     this.§@U§.writeByte(int(_loc44_ * 8));
                     this.§@U§.writeByte(0);
                     this.§@U§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§@U§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§@U§.writeShort(_loc27_);
                     this.§@U§.writeByte(_loc34_);
                     this.§@U§.writeByte(_loc28_);
                     this.§@U§.writeByte(_loc25_.emitCode);
                     this.§@U§.writeByte(_loc32_);
                     this.§@U§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§@U§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§"m§ != "")
         {
            this.§"m§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§@U§.length = 0;
         }
         if(this.§`m§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§@U§.length;
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
               if((_loc49_ = this.§@U§[_loc48_].toString(16)).length < 2)
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
         return this.§@U§;
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
