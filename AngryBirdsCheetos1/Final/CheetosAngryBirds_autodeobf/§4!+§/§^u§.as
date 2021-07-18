package §4!+§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §^u§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §,e§:Dictionary = new Dictionary();
      
      private static const §5!H§:Dictionary = new Dictionary();
      
      private static const §+&§:Dictionary = new Dictionary();
      
      private static const §-!M§:int = 4;
      
      private static const §#!M§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §&!=§:uint = 12;
      
      private static const §7!K§:uint = 16;
      
      private static const §5!4§:uint = 20;
      
      private static const §]!Y§:uint = 24;
      
      private static const §-u§:uint = 28;
      
      private static const §%0§:uint = 1;
      
      private static const §'!O§:uint = 2;
      
      private static const §!u§:uint = 32;
      
      private static const §;!I§:uint = 64;
      
      private static const §21§:uint = 1;
      
      private static const §#!2§:uint = 2;
      
      private static const §0!O§:uint = 4;
      
      private static const §#?§:uint = 8;
      
      private static const §2!I§:uint = 16;
      
      private static const §^!8§:uint = 32;
      
      private static const §-3§:uint = 128;
      
      private static const §;R§:String = "mov";
      
      private static const §2X§:String = "add";
      
      private static const §-L§:String = "sub";
      
      private static const §`!'§:String = "mul";
      
      private static const §8!G§:String = "div";
      
      private static const §>L§:String = "rcp";
      
      private static const §1!U§:String = "min";
      
      private static const §6T§:String = "max";
      
      private static const §^X§:String = "frc";
      
      private static const §<r§:String = "sqt";
      
      private static const §!N§:String = "rsq";
      
      private static const §`!B§:String = "pow";
      
      private static const §-!7§:String = "log";
      
      private static const §]!O§:String = "exp";
      
      private static const §1?§:String = "nrm";
      
      private static const §,#§:String = "sin";
      
      private static const §,!@§:String = "cos";
      
      private static const §04§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §1U§:String = "abs";
      
      private static const §8d§:String = "neg";
      
      private static const §5!%§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §3!#§:String = "ifz";
      
      private static const §-!=§:String = "inz";
      
      private static const §#!G§:String = "ife";
      
      private static const §1k§:String = "ine";
      
      private static const §#!6§:String = "ifg";
      
      private static const §?0§:String = "ifl";
      
      private static const §!!3§:String = "ieg";
      
      private static const §!p§:String = "iel";
      
      private static const §"!!§:String = "els";
      
      private static const §5t§:String = "eif";
      
      private static const §1!"§:String = "rep";
      
      private static const §@!%§:String = "erp";
      
      private static const §+a§:String = "brk";
      
      private static const §3!_§:String = "kil";
      
      private static const §@F§:String = "tex";
      
      private static const §2_§:String = "sge";
      
      private static const §[!T§:String = "slt";
      
      private static const §"U§:String = "sgn";
      
      private static const §1O§:String = "va";
      
      private static const §'!9§:String = "vc";
      
      private static const §&!1§:String = "vt";
      
      private static const §[!0§:String = "op";
      
      private static const §]X§:String = "v";
      
      private static const §9!&§:String = "fc";
      
      private static const §!O§:String = "ft";
      
      private static const §!0§:String = "fs";
      
      private static const §4"§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §`!,§:String = "cube";
      
      private static const §3!0§:String = "mipnearest";
      
      private static const §,!D§:String = "miplinear";
      
      private static const §`!"§:String = "mipnone";
      
      private static const §@3§:String = "nomip";
      
      private static const §,!<§:String = "nearest";
      
      private static const §[!]§:String = "linear";
      
      private static const §,B§:String = "centroid";
      
      private static const §#T§:String = "single";
      
      private static const §3!1§:String = "depth";
      
      private static const §=!"§:String = "repeat";
      
      private static const §<V§:String = "wrap";
      
      private static const §&!;§:String = "clamp";
       
      
      private var §56§:ByteArray = null;
      
      private var §^!^§:String = "";
      
      private var §7u§:Boolean = false;
      
      public function §^u§(param1:Boolean = false)
      {
         super();
         this.§7u§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §,e§[§;R§] = new OpCode(§;R§,2,0,0);
         §,e§[§2X§] = new OpCode(§2X§,3,1,0);
         §,e§[§-L§] = new OpCode(§-L§,3,2,0);
         §,e§[§`!'§] = new OpCode(§`!'§,3,3,0);
         §,e§[§8!G§] = new OpCode(§8!G§,3,4,0);
         §,e§[§>L§] = new OpCode(§>L§,2,5,0);
         §,e§[§1!U§] = new OpCode(§1!U§,3,6,0);
         §,e§[§6T§] = new OpCode(§6T§,3,7,0);
         §,e§[§^X§] = new OpCode(§^X§,2,8,0);
         §,e§[§<r§] = new OpCode(§<r§,2,9,0);
         §,e§[§!N§] = new OpCode(§!N§,2,10,0);
         §,e§[§`!B§] = new OpCode(§`!B§,3,11,0);
         §,e§[§-!7§] = new OpCode(§-!7§,2,12,0);
         §,e§[§]!O§] = new OpCode(§]!O§,2,13,0);
         §,e§[§1?§] = new OpCode(§1?§,2,14,0);
         §,e§[§,#§] = new OpCode(§,#§,2,15,0);
         §,e§[§,!@§] = new OpCode(§,!@§,2,16,0);
         §,e§[§04§] = new OpCode(§04§,3,17,0);
         §,e§[DP3] = new OpCode(DP3,3,18,0);
         §,e§[DP4] = new OpCode(DP4,3,19,0);
         §,e§[§1U§] = new OpCode(§1U§,2,20,0);
         §,e§[§8d§] = new OpCode(§8d§,2,21,0);
         §,e§[§5!%§] = new OpCode(§5!%§,2,22,0);
         §,e§[M33] = new OpCode(M33,3,23,§2!I§);
         §,e§[M44] = new OpCode(M44,3,24,§2!I§);
         §,e§[M34] = new OpCode(M34,3,25,§2!I§);
         §,e§[§3!#§] = new OpCode(§3!#§,1,26,§-3§ | §#!2§ | §21§);
         §,e§[§-!=§] = new OpCode(§-!=§,1,27,§-3§ | §#!2§ | §21§);
         §,e§[§#!G§] = new OpCode(§#!G§,2,28,§-3§ | §#!2§ | §21§);
         §,e§[§1k§] = new OpCode(§1k§,2,29,§-3§ | §#!2§ | §21§);
         §,e§[§#!6§] = new OpCode(§#!6§,2,30,§-3§ | §#!2§ | §21§);
         §,e§[§?0§] = new OpCode(§?0§,2,31,§-3§ | §#!2§ | §21§);
         §,e§[§!!3§] = new OpCode(§!!3§,2,32,§-3§ | §#!2§ | §21§);
         §,e§[§!p§] = new OpCode(§!p§,2,33,§-3§ | §#!2§ | §21§);
         §,e§[§"!!§] = new OpCode(§"!!§,0,34,§-3§ | §#!2§ | §0!O§);
         §,e§[§5t§] = new OpCode(§5t§,0,35,§-3§ | §0!O§);
         §,e§[§1!"§] = new OpCode(§1!"§,1,36,§-3§ | §#!2§ | §21§);
         §,e§[§@!%§] = new OpCode(§@!%§,0,37,§-3§ | §0!O§);
         §,e§[§+a§] = new OpCode(§+a§,0,38,§-3§);
         §,e§[§3!_§] = new OpCode(§3!_§,1,39,§-3§ | §^!8§);
         §,e§[§@F§] = new OpCode(§@F§,3,40,§^!8§ | §#?§);
         §,e§[§2_§] = new OpCode(§2_§,3,41,0);
         §,e§[§[!T§] = new OpCode(§[!T§,3,42,0);
         §,e§[§"U§] = new OpCode(§"U§,2,43,0);
         §5!H§[§1O§] = new Register(§1O§,"vertex attribute",0,7,§;!I§ | §'!O§);
         §5!H§[§'!9§] = new Register(§'!9§,"vertex constant",1,127,§;!I§ | §'!O§);
         §5!H§[§&!1§] = new Register(§&!1§,"vertex temporary",2,7,§;!I§ | §%0§ | §'!O§);
         §5!H§[§[!0§] = new Register(§[!0§,"vertex output",3,0,§;!I§ | §%0§);
         §5!H§[§]X§] = new Register(§]X§,"varying",4,7,§;!I§ | §!u§ | §'!O§ | §%0§);
         §5!H§[§9!&§] = new Register(§9!&§,"fragment constant",1,27,§!u§ | §'!O§);
         §5!H§[§!O§] = new Register(§!O§,"fragment temporary",2,7,§!u§ | §%0§ | §'!O§);
         §5!H§[§!0§] = new Register(§!0§,"texture sampler",5,7,§!u§ | §'!O§);
         §5!H§[§4"§] = new Register(§4"§,"fragment output",3,0,§!u§ | §%0§);
         §+&§[D2] = new Sampler(D2,§&!=§,0);
         §+&§[D3] = new Sampler(D3,§&!=§,2);
         §+&§[§`!,§] = new Sampler(§`!,§,§&!=§,1);
         §+&§[§3!0§] = new Sampler(§3!0§,§]!Y§,1);
         §+&§[§,!D§] = new Sampler(§,!D§,§]!Y§,2);
         §+&§[§`!"§] = new Sampler(§`!"§,§]!Y§,0);
         §+&§[§@3§] = new Sampler(§@3§,§]!Y§,0);
         §+&§[§,!<§] = new Sampler(§,!<§,§-u§,0);
         §+&§[§[!]§] = new Sampler(§[!]§,§-u§,1);
         §+&§[§,B§] = new Sampler(§,B§,§7!K§,1 << 0);
         §+&§[§#T§] = new Sampler(§#T§,§7!K§,1 << 1);
         §+&§[§3!1§] = new Sampler(§3!1§,§7!K§,1 << 2);
         §+&§[§=!"§] = new Sampler(§=!"§,§5!4§,1);
         §+&§[§<V§] = new Sampler(§<V§,§5!4§,1);
         §+&§[§&!;§] = new Sampler(§&!;§,§5!4§,0);
      }
      
      public function get error() : String
      {
         return this.§^!^§;
      }
      
      public function get §'Y§() : ByteArray
      {
         return this.§56§;
      }
      
      public function §8!S§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§56§ = new ByteArray();
         this.§^!^§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§^!^§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§'Y§.endian = Endian.LITTLE_ENDIAN;
         this.§'Y§.writeByte(160);
         this.§'Y§.writeUnsignedInt(1);
         this.§'Y§.writeByte(161);
         this.§'Y§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§^!^§ == "")
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
            _loc16_ = §,e§[_loc15_[0]];
            if(!this.§7u§)
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
               if(_loc16_.flags & §0!O§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§^!^§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §#!2§)
               {
                  _loc7_++;
                  if(_loc7_ > §-!M§)
                  {
                     this.§^!^§ = "error: nesting to deep, maximum allowed is " + §-!M§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §^!8§ && !_loc5_)
               {
                  this.§^!^§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§'Y§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §#!M§)
               {
                  this.§^!^§ = "error: too many opcodes. maximum is " + §#!M§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§^!^§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §5!H§[_loc24_[0]];
                  if(!this.§7u§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§^!^§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §!u§))
                     {
                        this.§^!^§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§^!^§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §;!I§))
                  {
                     this.§^!^§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§^!^§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §-3§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §#?§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§^!^§ = "error: relative can not be destination";
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
                     if((_loc39_ = §5!H§[_loc38_[0]]) == null)
                     {
                        this.§^!^§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§^!^§ = "error: bad index register select";
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
                        this.§^!^§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§'Y§.writeShort(_loc27_);
                     this.§'Y§.writeByte(_loc28_);
                     this.§'Y§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §+&§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §7!K§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§'Y§.writeShort(_loc27_);
                     this.§'Y§.writeByte(int(_loc44_ * 8));
                     this.§'Y§.writeByte(0);
                     this.§'Y§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§'Y§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§'Y§.writeShort(_loc27_);
                     this.§'Y§.writeByte(_loc34_);
                     this.§'Y§.writeByte(_loc28_);
                     this.§'Y§.writeByte(_loc25_.emitCode);
                     this.§'Y§.writeByte(_loc32_);
                     this.§'Y§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§'Y§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§^!^§ != "")
         {
            this.§^!^§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§'Y§.length = 0;
         }
         if(this.§7u§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§'Y§.length;
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
               if((_loc49_ = this.§'Y§[_loc48_].toString(16)).length < 2)
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
         return this.§'Y§;
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
