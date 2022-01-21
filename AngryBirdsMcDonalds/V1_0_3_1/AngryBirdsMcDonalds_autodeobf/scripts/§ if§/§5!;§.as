package § if§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §5!;§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §1l§:Dictionary = new Dictionary();
      
      private static const §1!5§:Dictionary = new Dictionary();
      
      private static const §4z§:Dictionary = new Dictionary();
      
      private static const get:int = 4;
      
      private static const §<!<§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §+!h§:uint = 12;
      
      private static const §1!6§:uint = 16;
      
      private static const §]!5§:uint = 20;
      
      private static const § j§:uint = 24;
      
      private static const §3u§:uint = 28;
      
      private static const §4!J§:uint = 1;
      
      private static const §[a§:uint = 2;
      
      private static const §'§:uint = 32;
      
      private static const §]!7§:uint = 64;
      
      private static const §8a§:uint = 1;
      
      private static const §+#§:uint = 2;
      
      private static const §=!§:uint = 4;
      
      private static const §0!P§:uint = 8;
      
      private static const §0M§:uint = 16;
      
      private static const §[!Z§:uint = 32;
      
      private static const §!n§:uint = 128;
      
      private static const §+!X§:String = "mov";
      
      private static const §]r§:String = "add";
      
      private static const §-Z§:String = "sub";
      
      private static const §2?§:String = "mul";
      
      private static const §`T§:String = "div";
      
      private static const §1!B§:String = "rcp";
      
      private static const §!b§:String = "min";
      
      private static const §#! §:String = "max";
      
      private static const §=!#§:String = "frc";
      
      private static const § !3§:String = "sqt";
      
      private static const §@M§:String = "rsq";
      
      private static const §6`§:String = "pow";
      
      private static const §%j§:String = "log";
      
      private static const §-g§:String = "exp";
      
      private static const §!!3§:String = "nrm";
      
      private static const §40§:String = "sin";
      
      private static const §6I§:String = "cos";
      
      private static const §;6§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §68§:String = "abs";
      
      private static const §&![§:String = "neg";
      
      private static const §8!4§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §-!k§:String = "ifz";
      
      private static const §;t§:String = "inz";
      
      private static const §6Y§:String = "ife";
      
      private static const §1C§:String = "ine";
      
      private static const §;T§:String = "ifg";
      
      private static const §<N§:String = "ifl";
      
      private static const §7!%§:String = "ieg";
      
      private static const §`!O§:String = "iel";
      
      private static const §5#§:String = "els";
      
      private static const §1!U§:String = "eif";
      
      private static const §-!9§:String = "rep";
      
      private static const §;k§:String = "erp";
      
      private static const §9O§:String = "brk";
      
      private static const §,!$§:String = "kil";
      
      private static const §6s§:String = "tex";
      
      private static const §!!`§:String = "sge";
      
      private static const §6w§:String = "slt";
      
      private static const §?z§:String = "sgn";
      
      private static const §5!l§:String = "va";
      
      private static const §@N§:String = "vc";
      
      private static const §-_§:String = "vt";
      
      private static const §&i§:String = "op";
      
      private static const §#`§:String = "v";
      
      private static const §#!?§:String = "fc";
      
      private static const §7&§:String = "ft";
      
      private static const §!=§:String = "fs";
      
      private static const §1!$§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §98§:String = "cube";
      
      private static const §"!m§:String = "mipnearest";
      
      private static const §^!C§:String = "miplinear";
      
      private static const §<v§:String = "mipnone";
      
      private static const §'2§:String = "nomip";
      
      private static const §=!K§:String = "nearest";
      
      private static const §1!]§:String = "linear";
      
      private static const §`D§:String = "centroid";
      
      private static const §<!7§:String = "single";
      
      private static const §1b§:String = "depth";
      
      private static const § H§:String = "repeat";
      
      private static const §5!3§:String = "wrap";
      
      private static const §<$§:String = "clamp";
       
      
      private var §1!i§:ByteArray = null;
      
      private var §[!j§:String = "";
      
      private var §>!W§:Boolean = false;
      
      public function §5!;§(param1:Boolean = false)
      {
         super();
         this.§>!W§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §1l§[§+!X§] = new OpCode(§+!X§,2,0,0);
         §1l§[§]r§] = new OpCode(§]r§,3,1,0);
         §1l§[§-Z§] = new OpCode(§-Z§,3,2,0);
         §1l§[§2?§] = new OpCode(§2?§,3,3,0);
         §1l§[§`T§] = new OpCode(§`T§,3,4,0);
         §1l§[§1!B§] = new OpCode(§1!B§,2,5,0);
         §1l§[§!b§] = new OpCode(§!b§,3,6,0);
         §1l§[§#! §] = new OpCode(§#! §,3,7,0);
         §1l§[§=!#§] = new OpCode(§=!#§,2,8,0);
         §1l§[§ !3§] = new OpCode(§ !3§,2,9,0);
         §1l§[§@M§] = new OpCode(§@M§,2,10,0);
         §1l§[§6`§] = new OpCode(§6`§,3,11,0);
         §1l§[§%j§] = new OpCode(§%j§,2,12,0);
         §1l§[§-g§] = new OpCode(§-g§,2,13,0);
         §1l§[§!!3§] = new OpCode(§!!3§,2,14,0);
         §1l§[§40§] = new OpCode(§40§,2,15,0);
         §1l§[§6I§] = new OpCode(§6I§,2,16,0);
         §1l§[§;6§] = new OpCode(§;6§,3,17,0);
         §1l§[DP3] = new OpCode(DP3,3,18,0);
         §1l§[DP4] = new OpCode(DP4,3,19,0);
         §1l§[§68§] = new OpCode(§68§,2,20,0);
         §1l§[§&![§] = new OpCode(§&![§,2,21,0);
         §1l§[§8!4§] = new OpCode(§8!4§,2,22,0);
         §1l§[M33] = new OpCode(M33,3,23,§0M§);
         §1l§[M44] = new OpCode(M44,3,24,§0M§);
         §1l§[M34] = new OpCode(M34,3,25,§0M§);
         §1l§[§-!k§] = new OpCode(§-!k§,1,26,§!n§ | §+#§ | §8a§);
         §1l§[§;t§] = new OpCode(§;t§,1,27,§!n§ | §+#§ | §8a§);
         §1l§[§6Y§] = new OpCode(§6Y§,2,28,§!n§ | §+#§ | §8a§);
         §1l§[§1C§] = new OpCode(§1C§,2,29,§!n§ | §+#§ | §8a§);
         §1l§[§;T§] = new OpCode(§;T§,2,30,§!n§ | §+#§ | §8a§);
         §1l§[§<N§] = new OpCode(§<N§,2,31,§!n§ | §+#§ | §8a§);
         §1l§[§7!%§] = new OpCode(§7!%§,2,32,§!n§ | §+#§ | §8a§);
         §1l§[§`!O§] = new OpCode(§`!O§,2,33,§!n§ | §+#§ | §8a§);
         §1l§[§5#§] = new OpCode(§5#§,0,34,§!n§ | §+#§ | §=!§);
         §1l§[§1!U§] = new OpCode(§1!U§,0,35,§!n§ | §=!§);
         §1l§[§-!9§] = new OpCode(§-!9§,1,36,§!n§ | §+#§ | §8a§);
         §1l§[§;k§] = new OpCode(§;k§,0,37,§!n§ | §=!§);
         §1l§[§9O§] = new OpCode(§9O§,0,38,§!n§);
         §1l§[§,!$§] = new OpCode(§,!$§,1,39,§!n§ | §[!Z§);
         §1l§[§6s§] = new OpCode(§6s§,3,40,§[!Z§ | §0!P§);
         §1l§[§!!`§] = new OpCode(§!!`§,3,41,0);
         §1l§[§6w§] = new OpCode(§6w§,3,42,0);
         §1l§[§?z§] = new OpCode(§?z§,2,43,0);
         §1!5§[§5!l§] = new Register(§5!l§,"vertex attribute",0,7,§]!7§ | §[a§);
         §1!5§[§@N§] = new Register(§@N§,"vertex constant",1,127,§]!7§ | §[a§);
         §1!5§[§-_§] = new Register(§-_§,"vertex temporary",2,7,§]!7§ | §4!J§ | §[a§);
         §1!5§[§&i§] = new Register(§&i§,"vertex output",3,0,§]!7§ | §4!J§);
         §1!5§[§#`§] = new Register(§#`§,"varying",4,7,§]!7§ | §'§ | §[a§ | §4!J§);
         §1!5§[§#!?§] = new Register(§#!?§,"fragment constant",1,27,§'§ | §[a§);
         §1!5§[§7&§] = new Register(§7&§,"fragment temporary",2,7,§'§ | §4!J§ | §[a§);
         §1!5§[§!=§] = new Register(§!=§,"texture sampler",5,7,§'§ | §[a§);
         §1!5§[§1!$§] = new Register(§1!$§,"fragment output",3,0,§'§ | §4!J§);
         §4z§[D2] = new Sampler(D2,§+!h§,0);
         §4z§[D3] = new Sampler(D3,§+!h§,2);
         §4z§[§98§] = new Sampler(§98§,§+!h§,1);
         §4z§[§"!m§] = new Sampler(§"!m§,§ j§,1);
         §4z§[§^!C§] = new Sampler(§^!C§,§ j§,2);
         §4z§[§<v§] = new Sampler(§<v§,§ j§,0);
         §4z§[§'2§] = new Sampler(§'2§,§ j§,0);
         §4z§[§=!K§] = new Sampler(§=!K§,§3u§,0);
         §4z§[§1!]§] = new Sampler(§1!]§,§3u§,1);
         §4z§[§`D§] = new Sampler(§`D§,§1!6§,1 << 0);
         §4z§[§<!7§] = new Sampler(§<!7§,§1!6§,1 << 1);
         §4z§[§1b§] = new Sampler(§1b§,§1!6§,1 << 2);
         §4z§[§ H§] = new Sampler(§ H§,§]!5§,1);
         §4z§[§5!3§] = new Sampler(§5!3§,§]!5§,1);
         §4z§[§<$§] = new Sampler(§<$§,§]!5§,0);
      }
      
      public function get error() : String
      {
         return this.§[!j§;
      }
      
      public function get §0!k§() : ByteArray
      {
         return this.§1!i§;
      }
      
      public function §?P§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§1!i§ = new ByteArray();
         this.§[!j§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§[!j§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§0!k§.endian = Endian.LITTLE_ENDIAN;
         this.§0!k§.writeByte(160);
         this.§0!k§.writeUnsignedInt(1);
         this.§0!k§.writeByte(161);
         this.§0!k§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§[!j§ == "")
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
            _loc16_ = §1l§[_loc15_[0]];
            if(!this.§>!W§)
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
               if(_loc16_.flags & §=!§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§[!j§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §+#§)
               {
                  _loc7_++;
                  if(_loc7_ > get)
                  {
                     this.§[!j§ = "error: nesting to deep, maximum allowed is " + get + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §[!Z§ && !_loc5_)
               {
                  this.§[!j§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§0!k§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<!<§)
               {
                  this.§[!j§ = "error: too many opcodes. maximum is " + §<!<§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§[!j§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §1!5§[_loc24_[0]];
                  if(!this.§>!W§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§[!j§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §'§))
                     {
                        this.§[!j§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§[!j§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]!7§))
                  {
                     this.§[!j§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§[!j§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §!n§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §0!P§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§[!j§ = "error: relative can not be destination";
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
                     if((_loc39_ = §1!5§[_loc38_[0]]) == null)
                     {
                        this.§[!j§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§[!j§ = "error: bad index register select";
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
                        this.§[!j§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§0!k§.writeShort(_loc27_);
                     this.§0!k§.writeByte(_loc28_);
                     this.§0!k§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §4z§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §1!6§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§0!k§.writeShort(_loc27_);
                     this.§0!k§.writeByte(int(_loc44_ * 8));
                     this.§0!k§.writeByte(0);
                     this.§0!k§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§0!k§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§0!k§.writeShort(_loc27_);
                     this.§0!k§.writeByte(_loc34_);
                     this.§0!k§.writeByte(_loc28_);
                     this.§0!k§.writeByte(_loc25_.emitCode);
                     this.§0!k§.writeByte(_loc32_);
                     this.§0!k§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§0!k§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§[!j§ != "")
         {
            this.§[!j§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§0!k§.length = 0;
         }
         if(this.§>!W§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§0!k§.length;
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
               if((_loc49_ = this.§0!k§[_loc48_].toString(16)).length < 2)
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
         return this.§0!k§;
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
