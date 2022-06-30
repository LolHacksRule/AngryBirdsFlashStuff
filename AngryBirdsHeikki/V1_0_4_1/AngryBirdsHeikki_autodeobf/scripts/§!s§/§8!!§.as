package §!s§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §8!!§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §7W§:Dictionary = new Dictionary();
      
      private static const §!o§:Dictionary = new Dictionary();
      
      private static const §5o§:Dictionary = new Dictionary();
      
      private static const §"M§:int = 4;
      
      private static const §<g§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §;!V§:uint = 12;
      
      private static const §7!<§:uint = 16;
      
      private static const §+H§:uint = 20;
      
      private static const §"o§:uint = 24;
      
      private static const §`S§:uint = 28;
      
      private static const §!!N§:uint = 1;
      
      private static const §!]§:uint = 2;
      
      private static const §2!7§:uint = 32;
      
      private static const §#§:uint = 64;
      
      private static const §>!J§:uint = 1;
      
      private static const §^!W§:uint = 2;
      
      private static const §^!O§:uint = 4;
      
      private static const §>!'§:uint = 8;
      
      private static const §<t§:uint = 16;
      
      private static const §=X§:uint = 32;
      
      private static const §61§:uint = 128;
      
      private static const §6s§:String = "mov";
      
      private static const §'!T§:String = "add";
      
      private static const §,!>§:String = "sub";
      
      private static const §^!,§:String = "mul";
      
      private static const §@!Z§:String = "div";
      
      private static const §'2§:String = "rcp";
      
      private static const §0p§:String = "min";
      
      private static const §'q§:String = "max";
      
      private static const §3b§:String = "frc";
      
      private static const §,!Q§:String = "sqt";
      
      private static const §![§:String = "rsq";
      
      private static const §0J§:String = "pow";
      
      private static const §[^§:String = "log";
      
      private static const §9t§:String = "exp";
      
      private static const §4a§:String = "nrm";
      
      private static const §5!`§:String = "sin";
      
      private static const §<J§:String = "cos";
      
      private static const §@m§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6]§:String = "abs";
      
      private static const §^q§:String = "neg";
      
      private static const §6v§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §=Z§:String = "ifz";
      
      private static const §0L§:String = "inz";
      
      private static const §"r§:String = "ife";
      
      private static const §50§:String = "ine";
      
      private static const §&!6§:String = "ifg";
      
      private static const §^!Z§:String = "ifl";
      
      private static const §2!_§:String = "ieg";
      
      private static const §-!0§:String = "iel";
      
      private static const §<!6§:String = "els";
      
      private static const §5!A§:String = "eif";
      
      private static const §24§:String = "rep";
      
      private static const §#!L§:String = "erp";
      
      private static const §"!$§:String = "brk";
      
      private static const §6Q§:String = "kil";
      
      private static const §2O§:String = "tex";
      
      private static const §43§:String = "sge";
      
      private static const § !S§:String = "slt";
      
      private static const §02§:String = "sgn";
      
      private static const §[!A§:String = "va";
      
      private static const §;!I§:String = "vc";
      
      private static const § !V§:String = "vt";
      
      private static const §,!=§:String = "op";
      
      private static const §&J§:String = "v";
      
      private static const §<%§:String = "fc";
      
      private static const §=%§:String = "ft";
      
      private static const §0!$§:String = "fs";
      
      private static const §&@§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §@!I§:String = "cube";
      
      private static const §>!c§:String = "mipnearest";
      
      private static const §&!2§:String = "miplinear";
      
      private static const §-X§:String = "mipnone";
      
      private static const §&m§:String = "nomip";
      
      private static const §;H§:String = "nearest";
      
      private static const §#=§:String = "linear";
      
      private static const §6i§:String = "centroid";
      
      private static const §]k§:String = "single";
      
      private static const §7!3§:String = "depth";
      
      private static const §^!Q§:String = "repeat";
      
      private static const §=!H§:String = "wrap";
      
      private static const §&!%§:String = "clamp";
       
      
      private var §1!J§:ByteArray = null;
      
      private var §&Z§:String = "";
      
      private var §+g§:Boolean = false;
      
      public function §8!!§(param1:Boolean = false)
      {
         super();
         this.§+g§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §7W§[§6s§] = new OpCode(§6s§,2,0,0);
         §7W§[§'!T§] = new OpCode(§'!T§,3,1,0);
         §7W§[§,!>§] = new OpCode(§,!>§,3,2,0);
         §7W§[§^!,§] = new OpCode(§^!,§,3,3,0);
         §7W§[§@!Z§] = new OpCode(§@!Z§,3,4,0);
         §7W§[§'2§] = new OpCode(§'2§,2,5,0);
         §7W§[§0p§] = new OpCode(§0p§,3,6,0);
         §7W§[§'q§] = new OpCode(§'q§,3,7,0);
         §7W§[§3b§] = new OpCode(§3b§,2,8,0);
         §7W§[§,!Q§] = new OpCode(§,!Q§,2,9,0);
         §7W§[§![§] = new OpCode(§![§,2,10,0);
         §7W§[§0J§] = new OpCode(§0J§,3,11,0);
         §7W§[§[^§] = new OpCode(§[^§,2,12,0);
         §7W§[§9t§] = new OpCode(§9t§,2,13,0);
         §7W§[§4a§] = new OpCode(§4a§,2,14,0);
         §7W§[§5!`§] = new OpCode(§5!`§,2,15,0);
         §7W§[§<J§] = new OpCode(§<J§,2,16,0);
         §7W§[§@m§] = new OpCode(§@m§,3,17,0);
         §7W§[DP3] = new OpCode(DP3,3,18,0);
         §7W§[DP4] = new OpCode(DP4,3,19,0);
         §7W§[§6]§] = new OpCode(§6]§,2,20,0);
         §7W§[§^q§] = new OpCode(§^q§,2,21,0);
         §7W§[§6v§] = new OpCode(§6v§,2,22,0);
         §7W§[M33] = new OpCode(M33,3,23,§<t§);
         §7W§[M44] = new OpCode(M44,3,24,§<t§);
         §7W§[M34] = new OpCode(M34,3,25,§<t§);
         §7W§[§=Z§] = new OpCode(§=Z§,1,26,§61§ | §^!W§ | §>!J§);
         §7W§[§0L§] = new OpCode(§0L§,1,27,§61§ | §^!W§ | §>!J§);
         §7W§[§"r§] = new OpCode(§"r§,2,28,§61§ | §^!W§ | §>!J§);
         §7W§[§50§] = new OpCode(§50§,2,29,§61§ | §^!W§ | §>!J§);
         §7W§[§&!6§] = new OpCode(§&!6§,2,30,§61§ | §^!W§ | §>!J§);
         §7W§[§^!Z§] = new OpCode(§^!Z§,2,31,§61§ | §^!W§ | §>!J§);
         §7W§[§2!_§] = new OpCode(§2!_§,2,32,§61§ | §^!W§ | §>!J§);
         §7W§[§-!0§] = new OpCode(§-!0§,2,33,§61§ | §^!W§ | §>!J§);
         §7W§[§<!6§] = new OpCode(§<!6§,0,34,§61§ | §^!W§ | §^!O§);
         §7W§[§5!A§] = new OpCode(§5!A§,0,35,§61§ | §^!O§);
         §7W§[§24§] = new OpCode(§24§,1,36,§61§ | §^!W§ | §>!J§);
         §7W§[§#!L§] = new OpCode(§#!L§,0,37,§61§ | §^!O§);
         §7W§[§"!$§] = new OpCode(§"!$§,0,38,§61§);
         §7W§[§6Q§] = new OpCode(§6Q§,1,39,§61§ | §=X§);
         §7W§[§2O§] = new OpCode(§2O§,3,40,§=X§ | §>!'§);
         §7W§[§43§] = new OpCode(§43§,3,41,0);
         §7W§[§ !S§] = new OpCode(§ !S§,3,42,0);
         §7W§[§02§] = new OpCode(§02§,2,43,0);
         §!o§[§[!A§] = new Register(§[!A§,"vertex attribute",0,7,§#§ | §!]§);
         §!o§[§;!I§] = new Register(§;!I§,"vertex constant",1,127,§#§ | §!]§);
         §!o§[§ !V§] = new Register(§ !V§,"vertex temporary",2,7,§#§ | §!!N§ | §!]§);
         §!o§[§,!=§] = new Register(§,!=§,"vertex output",3,0,§#§ | §!!N§);
         §!o§[§&J§] = new Register(§&J§,"varying",4,7,§#§ | §2!7§ | §!]§ | §!!N§);
         §!o§[§<%§] = new Register(§<%§,"fragment constant",1,27,§2!7§ | §!]§);
         §!o§[§=%§] = new Register(§=%§,"fragment temporary",2,7,§2!7§ | §!!N§ | §!]§);
         §!o§[§0!$§] = new Register(§0!$§,"texture sampler",5,7,§2!7§ | §!]§);
         §!o§[§&@§] = new Register(§&@§,"fragment output",3,0,§2!7§ | §!!N§);
         §5o§[D2] = new Sampler(D2,§;!V§,0);
         §5o§[D3] = new Sampler(D3,§;!V§,2);
         §5o§[§@!I§] = new Sampler(§@!I§,§;!V§,1);
         §5o§[§>!c§] = new Sampler(§>!c§,§"o§,1);
         §5o§[§&!2§] = new Sampler(§&!2§,§"o§,2);
         §5o§[§-X§] = new Sampler(§-X§,§"o§,0);
         §5o§[§&m§] = new Sampler(§&m§,§"o§,0);
         §5o§[§;H§] = new Sampler(§;H§,§`S§,0);
         §5o§[§#=§] = new Sampler(§#=§,§`S§,1);
         §5o§[§6i§] = new Sampler(§6i§,§7!<§,1 << 0);
         §5o§[§]k§] = new Sampler(§]k§,§7!<§,1 << 1);
         §5o§[§7!3§] = new Sampler(§7!3§,§7!<§,1 << 2);
         §5o§[§^!Q§] = new Sampler(§^!Q§,§+H§,1);
         §5o§[§=!H§] = new Sampler(§=!H§,§+H§,1);
         §5o§[§&!%§] = new Sampler(§&!%§,§+H§,0);
      }
      
      public function get error() : String
      {
         return this.§&Z§;
      }
      
      public function get §!V§() : ByteArray
      {
         return this.§1!J§;
      }
      
      public function §3=§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§1!J§ = new ByteArray();
         this.§&Z§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§&Z§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§!V§.endian = Endian.LITTLE_ENDIAN;
         this.§!V§.writeByte(160);
         this.§!V§.writeUnsignedInt(1);
         this.§!V§.writeByte(161);
         this.§!V§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§&Z§ == "")
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
            _loc16_ = §7W§[_loc15_[0]];
            if(!this.§+g§)
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
               if(_loc16_.flags & §^!O§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§&Z§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §^!W§)
               {
                  _loc7_++;
                  if(_loc7_ > §"M§)
                  {
                     this.§&Z§ = "error: nesting to deep, maximum allowed is " + §"M§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §=X§ && !_loc5_)
               {
                  this.§&Z§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§!V§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<g§)
               {
                  this.§&Z§ = "error: too many opcodes. maximum is " + §<g§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§&Z§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §!o§[_loc24_[0]];
                  if(!this.§+g§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§&Z§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §2!7§))
                     {
                        this.§&Z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§&Z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §#§))
                  {
                     this.§&Z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§&Z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §61§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §>!'§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§&Z§ = "error: relative can not be destination";
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
                     if((_loc39_ = §!o§[_loc38_[0]]) == null)
                     {
                        this.§&Z§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§&Z§ = "error: bad index register select";
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
                        this.§&Z§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§!V§.writeShort(_loc27_);
                     this.§!V§.writeByte(_loc28_);
                     this.§!V§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §5o§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §7!<§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§!V§.writeShort(_loc27_);
                     this.§!V§.writeByte(int(_loc44_ * 8));
                     this.§!V§.writeByte(0);
                     this.§!V§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§!V§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§!V§.writeShort(_loc27_);
                     this.§!V§.writeByte(_loc34_);
                     this.§!V§.writeByte(_loc28_);
                     this.§!V§.writeByte(_loc25_.emitCode);
                     this.§!V§.writeByte(_loc32_);
                     this.§!V§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§!V§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§&Z§ != "")
         {
            this.§&Z§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§!V§.length = 0;
         }
         if(this.§+g§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§!V§.length;
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
               if((_loc49_ = this.§!V§[_loc48_].toString(16)).length < 2)
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
         return this.§!V§;
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
