package §8!1§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%!8§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%m§:Dictionary = new Dictionary();
      
      private static const §]!J§:Dictionary = new Dictionary();
      
      private static const §]_§:Dictionary = new Dictionary();
      
      private static const §[!%§:int = 4;
      
      private static const §#!@§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §@y§:uint = 12;
      
      private static const §7y§:uint = 16;
      
      private static const §!!=§:uint = 20;
      
      private static const §`n§:uint = 24;
      
      private static const §1!0§:uint = 28;
      
      private static const §?_§:uint = 1;
      
      private static const §<!`§:uint = 2;
      
      private static const §`s§:uint = 32;
      
      private static const §'Y§:uint = 64;
      
      private static const §9!O§:uint = 1;
      
      private static const §'!b§:uint = 2;
      
      private static const §4$§:uint = 4;
      
      private static const §6!5§:uint = 8;
      
      private static const §`'§:uint = 16;
      
      private static const §3b§:uint = 32;
      
      private static const §`! §:uint = 128;
      
      private static const §1!b§:String = "mov";
      
      private static const §7!Y§:String = "add";
      
      private static const §&!U§:String = "sub";
      
      private static const §?!'§:String = "mul";
      
      private static const §0H§:String = "div";
      
      private static const §[!k§:String = "rcp";
      
      private static const §[N§:String = "min";
      
      private static const §8!]§:String = "max";
      
      private static const §5l§:String = "frc";
      
      private static const §7!j§:String = "sqt";
      
      private static const §@U§:String = "rsq";
      
      private static const §>'§:String = "pow";
      
      private static const §2a§:String = "log";
      
      private static const §-N§:String = "exp";
      
      private static const §0!q§:String = "nrm";
      
      private static const § !E§:String = "sin";
      
      private static const §;A§:String = "cos";
      
      private static const §?!0§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §[!5§:String = "abs";
      
      private static const §4!n§:String = "neg";
      
      private static const §>![§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §?! §:String = "ifz";
      
      private static const §2!l§:String = "inz";
      
      private static const §8>§:String = "ife";
      
      private static const §?=§:String = "ine";
      
      private static const §=!1§:String = "ifg";
      
      private static const §]m§:String = "ifl";
      
      private static const §2!i§:String = "ieg";
      
      private static const §[!0§:String = "iel";
      
      private static const §>M§:String = "els";
      
      private static const §`v§:String = "eif";
      
      private static const §%!q§:String = "rep";
      
      private static const §6b§:String = "erp";
      
      private static const §9j§:String = "brk";
      
      private static const §#!V§:String = "kil";
      
      private static const §24§:String = "tex";
      
      private static const §!!&§:String = "sge";
      
      private static const §'o§:String = "slt";
      
      private static const §4;§:String = "sgn";
      
      private static const §4!;§:String = "va";
      
      private static const §7!0§:String = "vc";
      
      private static const §>c§:String = "vt";
      
      private static const §6f§:String = "op";
      
      private static const §`<§:String = "v";
      
      private static const §+!S§:String = "fc";
      
      private static const §`-§:String = "ft";
      
      private static const §6!a§:String = "fs";
      
      private static const §%!C§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&§:String = "cube";
      
      private static const §1!X§:String = "mipnearest";
      
      private static const §`!$§:String = "miplinear";
      
      private static const §<e§:String = "mipnone";
      
      private static const §`!Y§:String = "nomip";
      
      private static const §1!l§:String = "nearest";
      
      private static const § 1§:String = "linear";
      
      private static const §-!E§:String = "centroid";
      
      private static const §!!0§:String = "single";
      
      private static const §"`§:String = "depth";
      
      private static const § !D§:String = "repeat";
      
      private static const §@3§:String = "wrap";
      
      private static const §2!j§:String = "clamp";
       
      
      private var §#!"§:ByteArray = null;
      
      private var §5!B§:String = "";
      
      private var §?!6§:Boolean = false;
      
      public function §%!8§(param1:Boolean = false)
      {
         super();
         this.§?!6§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%m§[§1!b§] = new OpCode(§1!b§,2,0,0);
         §%m§[§7!Y§] = new OpCode(§7!Y§,3,1,0);
         §%m§[§&!U§] = new OpCode(§&!U§,3,2,0);
         §%m§[§?!'§] = new OpCode(§?!'§,3,3,0);
         §%m§[§0H§] = new OpCode(§0H§,3,4,0);
         §%m§[§[!k§] = new OpCode(§[!k§,2,5,0);
         §%m§[§[N§] = new OpCode(§[N§,3,6,0);
         §%m§[§8!]§] = new OpCode(§8!]§,3,7,0);
         §%m§[§5l§] = new OpCode(§5l§,2,8,0);
         §%m§[§7!j§] = new OpCode(§7!j§,2,9,0);
         §%m§[§@U§] = new OpCode(§@U§,2,10,0);
         §%m§[§>'§] = new OpCode(§>'§,3,11,0);
         §%m§[§2a§] = new OpCode(§2a§,2,12,0);
         §%m§[§-N§] = new OpCode(§-N§,2,13,0);
         §%m§[§0!q§] = new OpCode(§0!q§,2,14,0);
         §%m§[§ !E§] = new OpCode(§ !E§,2,15,0);
         §%m§[§;A§] = new OpCode(§;A§,2,16,0);
         §%m§[§?!0§] = new OpCode(§?!0§,3,17,0);
         §%m§[DP3] = new OpCode(DP3,3,18,0);
         §%m§[DP4] = new OpCode(DP4,3,19,0);
         §%m§[§[!5§] = new OpCode(§[!5§,2,20,0);
         §%m§[§4!n§] = new OpCode(§4!n§,2,21,0);
         §%m§[§>![§] = new OpCode(§>![§,2,22,0);
         §%m§[M33] = new OpCode(M33,3,23,§`'§);
         §%m§[M44] = new OpCode(M44,3,24,§`'§);
         §%m§[M34] = new OpCode(M34,3,25,§`'§);
         §%m§[§?! §] = new OpCode(§?! §,1,26,§`! § | §'!b§ | §9!O§);
         §%m§[§2!l§] = new OpCode(§2!l§,1,27,§`! § | §'!b§ | §9!O§);
         §%m§[§8>§] = new OpCode(§8>§,2,28,§`! § | §'!b§ | §9!O§);
         §%m§[§?=§] = new OpCode(§?=§,2,29,§`! § | §'!b§ | §9!O§);
         §%m§[§=!1§] = new OpCode(§=!1§,2,30,§`! § | §'!b§ | §9!O§);
         §%m§[§]m§] = new OpCode(§]m§,2,31,§`! § | §'!b§ | §9!O§);
         §%m§[§2!i§] = new OpCode(§2!i§,2,32,§`! § | §'!b§ | §9!O§);
         §%m§[§[!0§] = new OpCode(§[!0§,2,33,§`! § | §'!b§ | §9!O§);
         §%m§[§>M§] = new OpCode(§>M§,0,34,§`! § | §'!b§ | §4$§);
         §%m§[§`v§] = new OpCode(§`v§,0,35,§`! § | §4$§);
         §%m§[§%!q§] = new OpCode(§%!q§,1,36,§`! § | §'!b§ | §9!O§);
         §%m§[§6b§] = new OpCode(§6b§,0,37,§`! § | §4$§);
         §%m§[§9j§] = new OpCode(§9j§,0,38,§`! §);
         §%m§[§#!V§] = new OpCode(§#!V§,1,39,§`! § | §3b§);
         §%m§[§24§] = new OpCode(§24§,3,40,§3b§ | §6!5§);
         §%m§[§!!&§] = new OpCode(§!!&§,3,41,0);
         §%m§[§'o§] = new OpCode(§'o§,3,42,0);
         §%m§[§4;§] = new OpCode(§4;§,2,43,0);
         §]!J§[§4!;§] = new Register(§4!;§,"vertex attribute",0,7,§'Y§ | §<!`§);
         §]!J§[§7!0§] = new Register(§7!0§,"vertex constant",1,127,§'Y§ | §<!`§);
         §]!J§[§>c§] = new Register(§>c§,"vertex temporary",2,7,§'Y§ | §?_§ | §<!`§);
         §]!J§[§6f§] = new Register(§6f§,"vertex output",3,0,§'Y§ | §?_§);
         §]!J§[§`<§] = new Register(§`<§,"varying",4,7,§'Y§ | §`s§ | §<!`§ | §?_§);
         §]!J§[§+!S§] = new Register(§+!S§,"fragment constant",1,27,§`s§ | §<!`§);
         §]!J§[§`-§] = new Register(§`-§,"fragment temporary",2,7,§`s§ | §?_§ | §<!`§);
         §]!J§[§6!a§] = new Register(§6!a§,"texture sampler",5,7,§`s§ | §<!`§);
         §]!J§[§%!C§] = new Register(§%!C§,"fragment output",3,0,§`s§ | §?_§);
         §]_§[D2] = new Sampler(D2,§@y§,0);
         §]_§[D3] = new Sampler(D3,§@y§,2);
         §]_§[§&§] = new Sampler(§&§,§@y§,1);
         §]_§[§1!X§] = new Sampler(§1!X§,§`n§,1);
         §]_§[§`!$§] = new Sampler(§`!$§,§`n§,2);
         §]_§[§<e§] = new Sampler(§<e§,§`n§,0);
         §]_§[§`!Y§] = new Sampler(§`!Y§,§`n§,0);
         §]_§[§1!l§] = new Sampler(§1!l§,§1!0§,0);
         §]_§[§ 1§] = new Sampler(§ 1§,§1!0§,1);
         §]_§[§-!E§] = new Sampler(§-!E§,§7y§,1 << 0);
         §]_§[§!!0§] = new Sampler(§!!0§,§7y§,1 << 1);
         §]_§[§"`§] = new Sampler(§"`§,§7y§,1 << 2);
         §]_§[§ !D§] = new Sampler(§ !D§,§!!=§,1);
         §]_§[§@3§] = new Sampler(§@3§,§!!=§,1);
         §]_§[§2!j§] = new Sampler(§2!j§,§!!=§,0);
      }
      
      public function get error() : String
      {
         return this.§5!B§;
      }
      
      public function get §`!I§() : ByteArray
      {
         return this.§#!"§;
      }
      
      public function §53§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§#!"§ = new ByteArray();
         this.§5!B§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5!B§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§`!I§.endian = Endian.LITTLE_ENDIAN;
         this.§`!I§.writeByte(160);
         this.§`!I§.writeUnsignedInt(1);
         this.§`!I§.writeByte(161);
         this.§`!I§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§5!B§ == "")
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
            _loc16_ = §%m§[_loc15_[0]];
            if(!this.§?!6§)
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
               if(_loc16_.flags & §4$§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§5!B§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §'!b§)
               {
                  _loc7_++;
                  if(_loc7_ > §[!%§)
                  {
                     this.§5!B§ = "error: nesting to deep, maximum allowed is " + §[!%§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §3b§ && !_loc5_)
               {
                  this.§5!B§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§`!I§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §#!@§)
               {
                  this.§5!B§ = "error: too many opcodes. maximum is " + §#!@§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§5!B§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §]!J§[_loc24_[0]];
                  if(!this.§?!6§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§5!B§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §`s§))
                     {
                        this.§5!B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§5!B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §'Y§))
                  {
                     this.§5!B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§5!B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §`! §);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §6!5§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§5!B§ = "error: relative can not be destination";
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
                     if((_loc39_ = §]!J§[_loc38_[0]]) == null)
                     {
                        this.§5!B§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§5!B§ = "error: bad index register select";
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
                        this.§5!B§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§`!I§.writeShort(_loc27_);
                     this.§`!I§.writeByte(_loc28_);
                     this.§`!I§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §]_§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §7y§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§`!I§.writeShort(_loc27_);
                     this.§`!I§.writeByte(int(_loc44_ * 8));
                     this.§`!I§.writeByte(0);
                     this.§`!I§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§`!I§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§`!I§.writeShort(_loc27_);
                     this.§`!I§.writeByte(_loc34_);
                     this.§`!I§.writeByte(_loc28_);
                     this.§`!I§.writeByte(_loc25_.emitCode);
                     this.§`!I§.writeByte(_loc32_);
                     this.§`!I§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§`!I§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§5!B§ != "")
         {
            this.§5!B§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§`!I§.length = 0;
         }
         if(this.§?!6§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§`!I§.length;
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
               if((_loc49_ = this.§`!I§[_loc48_].toString(16)).length < 2)
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
         return this.§`!I§;
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
