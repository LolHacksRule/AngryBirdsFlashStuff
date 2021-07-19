package §#!5§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class § !R§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §3k§:Dictionary = new Dictionary();
      
      private static const §]P§:Dictionary = new Dictionary();
      
      private static const §"?§:Dictionary = new Dictionary();
      
      private static const §++§:int = 4;
      
      private static const §>Y§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §=!"§:uint = 12;
      
      private static const § Q§:uint = 16;
      
      private static const §15§:uint = 20;
      
      private static const §3!7§:uint = 24;
      
      private static const §5!6§:uint = 28;
      
      private static const §3i§:uint = 1;
      
      private static const §"!,§:uint = 2;
      
      private static const §'n§:uint = 32;
      
      private static const §;!9§:uint = 64;
      
      private static const §6!>§:uint = 1;
      
      private static const §[!3§:uint = 2;
      
      private static const §'!#§:uint = 4;
      
      private static const §6&§:uint = 8;
      
      private static const §<W§:uint = 16;
      
      private static const §;b§:uint = 32;
      
      private static const §!9§:uint = 128;
      
      private static const §-p§:String = "mov";
      
      private static const §#!?§:String = "add";
      
      private static const §4B§:String = "sub";
      
      private static const §[!I§:String = "mul";
      
      private static const §=q§:String = "div";
      
      private static const §-!3§:String = "rcp";
      
      private static const §&Y§:String = "min";
      
      private static const §2!W§:String = "max";
      
      private static const §[!!§:String = "frc";
      
      private static const §2X§:String = "sqt";
      
      private static const §"!I§:String = "rsq";
      
      private static const §^t§:String = "pow";
      
      private static const §7!0§:String = "log";
      
      private static const §,8§:String = "exp";
      
      private static const §@i§:String = "nrm";
      
      private static const §@!9§:String = "sin";
      
      private static const § a§:String = "cos";
      
      private static const § q§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6!I§:String = "abs";
      
      private static const §]7§:String = "neg";
      
      private static const §7!5§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §>!B§:String = "ifz";
      
      private static const §try§:String = "inz";
      
      private static const §'!Z§:String = "ife";
      
      private static const §;V§:String = "ine";
      
      private static const §#K§:String = "ifg";
      
      private static const §'>§:String = "ifl";
      
      private static const §4!5§:String = "ieg";
      
      private static const §%D§:String = "iel";
      
      private static const §=!;§:String = "els";
      
      private static const §41§:String = "eif";
      
      private static const §,#§:String = "rep";
      
      private static const §1!=§:String = "erp";
      
      private static const §@F§:String = "brk";
      
      private static const §2K§:String = "kil";
      
      private static const §?!<§:String = "tex";
      
      private static const §1?§:String = "sge";
      
      private static const §#n§:String = "slt";
      
      private static const §<!G§:String = "sgn";
      
      private static const §;!L§:String = "va";
      
      private static const §5K§:String = "vc";
      
      private static const §[!0§:String = "vt";
      
      private static const §4@§:String = "op";
      
      private static const §>_§:String = "v";
      
      private static const §]d§:String = "fc";
      
      private static const §1j§:String = "ft";
      
      private static const §4N§:String = "fs";
      
      private static const §>!!§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §;F§:String = "cube";
      
      private static const §!0§:String = "mipnearest";
      
      private static const §9!`§:String = "miplinear";
      
      private static const §,L§:String = "mipnone";
      
      private static const §`!1§:String = "nomip";
      
      private static const §@+§:String = "nearest";
      
      private static const §]!=§:String = "linear";
      
      private static const §<_§:String = "centroid";
      
      private static const §8[§:String = "single";
      
      private static const §3!U§:String = "depth";
      
      private static const §@!J§:String = "repeat";
      
      private static const §=!Q§:String = "wrap";
      
      private static const §,g§:String = "clamp";
       
      
      private var §3$§:ByteArray = null;
      
      private var §"!N§:String = "";
      
      private var §,!A§:Boolean = false;
      
      public function § !R§(param1:Boolean = false)
      {
         super();
         this.§,!A§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §3k§[§-p§] = new OpCode(§-p§,2,0,0);
         §3k§[§#!?§] = new OpCode(§#!?§,3,1,0);
         §3k§[§4B§] = new OpCode(§4B§,3,2,0);
         §3k§[§[!I§] = new OpCode(§[!I§,3,3,0);
         §3k§[§=q§] = new OpCode(§=q§,3,4,0);
         §3k§[§-!3§] = new OpCode(§-!3§,2,5,0);
         §3k§[§&Y§] = new OpCode(§&Y§,3,6,0);
         §3k§[§2!W§] = new OpCode(§2!W§,3,7,0);
         §3k§[§[!!§] = new OpCode(§[!!§,2,8,0);
         §3k§[§2X§] = new OpCode(§2X§,2,9,0);
         §3k§[§"!I§] = new OpCode(§"!I§,2,10,0);
         §3k§[§^t§] = new OpCode(§^t§,3,11,0);
         §3k§[§7!0§] = new OpCode(§7!0§,2,12,0);
         §3k§[§,8§] = new OpCode(§,8§,2,13,0);
         §3k§[§@i§] = new OpCode(§@i§,2,14,0);
         §3k§[§@!9§] = new OpCode(§@!9§,2,15,0);
         §3k§[§ a§] = new OpCode(§ a§,2,16,0);
         §3k§[§ q§] = new OpCode(§ q§,3,17,0);
         §3k§[DP3] = new OpCode(DP3,3,18,0);
         §3k§[DP4] = new OpCode(DP4,3,19,0);
         §3k§[§6!I§] = new OpCode(§6!I§,2,20,0);
         §3k§[§]7§] = new OpCode(§]7§,2,21,0);
         §3k§[§7!5§] = new OpCode(§7!5§,2,22,0);
         §3k§[M33] = new OpCode(M33,3,23,§<W§);
         §3k§[M44] = new OpCode(M44,3,24,§<W§);
         §3k§[M34] = new OpCode(M34,3,25,§<W§);
         §3k§[§>!B§] = new OpCode(§>!B§,1,26,§!9§ | §[!3§ | §6!>§);
         §3k§[§try§] = new OpCode(§try§,1,27,§!9§ | §[!3§ | §6!>§);
         §3k§[§'!Z§] = new OpCode(§'!Z§,2,28,§!9§ | §[!3§ | §6!>§);
         §3k§[§;V§] = new OpCode(§;V§,2,29,§!9§ | §[!3§ | §6!>§);
         §3k§[§#K§] = new OpCode(§#K§,2,30,§!9§ | §[!3§ | §6!>§);
         §3k§[§'>§] = new OpCode(§'>§,2,31,§!9§ | §[!3§ | §6!>§);
         §3k§[§4!5§] = new OpCode(§4!5§,2,32,§!9§ | §[!3§ | §6!>§);
         §3k§[§%D§] = new OpCode(§%D§,2,33,§!9§ | §[!3§ | §6!>§);
         §3k§[§=!;§] = new OpCode(§=!;§,0,34,§!9§ | §[!3§ | §'!#§);
         §3k§[§41§] = new OpCode(§41§,0,35,§!9§ | §'!#§);
         §3k§[§,#§] = new OpCode(§,#§,1,36,§!9§ | §[!3§ | §6!>§);
         §3k§[§1!=§] = new OpCode(§1!=§,0,37,§!9§ | §'!#§);
         §3k§[§@F§] = new OpCode(§@F§,0,38,§!9§);
         §3k§[§2K§] = new OpCode(§2K§,1,39,§!9§ | §;b§);
         §3k§[§?!<§] = new OpCode(§?!<§,3,40,§;b§ | §6&§);
         §3k§[§1?§] = new OpCode(§1?§,3,41,0);
         §3k§[§#n§] = new OpCode(§#n§,3,42,0);
         §3k§[§<!G§] = new OpCode(§<!G§,2,43,0);
         §]P§[§;!L§] = new Register(§;!L§,"vertex attribute",0,7,§;!9§ | §"!,§);
         §]P§[§5K§] = new Register(§5K§,"vertex constant",1,127,§;!9§ | §"!,§);
         §]P§[§[!0§] = new Register(§[!0§,"vertex temporary",2,7,§;!9§ | §3i§ | §"!,§);
         §]P§[§4@§] = new Register(§4@§,"vertex output",3,0,§;!9§ | §3i§);
         §]P§[§>_§] = new Register(§>_§,"varying",4,7,§;!9§ | §'n§ | §"!,§ | §3i§);
         §]P§[§]d§] = new Register(§]d§,"fragment constant",1,27,§'n§ | §"!,§);
         §]P§[§1j§] = new Register(§1j§,"fragment temporary",2,7,§'n§ | §3i§ | §"!,§);
         §]P§[§4N§] = new Register(§4N§,"texture sampler",5,7,§'n§ | §"!,§);
         §]P§[§>!!§] = new Register(§>!!§,"fragment output",3,0,§'n§ | §3i§);
         §"?§[D2] = new Sampler(D2,§=!"§,0);
         §"?§[D3] = new Sampler(D3,§=!"§,2);
         §"?§[§;F§] = new Sampler(§;F§,§=!"§,1);
         §"?§[§!0§] = new Sampler(§!0§,§3!7§,1);
         §"?§[§9!`§] = new Sampler(§9!`§,§3!7§,2);
         §"?§[§,L§] = new Sampler(§,L§,§3!7§,0);
         §"?§[§`!1§] = new Sampler(§`!1§,§3!7§,0);
         §"?§[§@+§] = new Sampler(§@+§,§5!6§,0);
         §"?§[§]!=§] = new Sampler(§]!=§,§5!6§,1);
         §"?§[§<_§] = new Sampler(§<_§,§ Q§,1 << 0);
         §"?§[§8[§] = new Sampler(§8[§,§ Q§,1 << 1);
         §"?§[§3!U§] = new Sampler(§3!U§,§ Q§,1 << 2);
         §"?§[§@!J§] = new Sampler(§@!J§,§15§,1);
         §"?§[§=!Q§] = new Sampler(§=!Q§,§15§,1);
         §"?§[§,g§] = new Sampler(§,g§,§15§,0);
      }
      
      public function get error() : String
      {
         return this.§"!N§;
      }
      
      public function get §,w§() : ByteArray
      {
         return this.§3$§;
      }
      
      public function §>G§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§3$§ = new ByteArray();
         this.§"!N§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§"!N§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§,w§.endian = Endian.LITTLE_ENDIAN;
         this.§,w§.writeByte(160);
         this.§,w§.writeUnsignedInt(1);
         this.§,w§.writeByte(161);
         this.§,w§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§"!N§ == "")
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
            _loc16_ = §3k§[_loc15_[0]];
            if(!this.§,!A§)
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
               if(_loc16_.flags & §'!#§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§"!N§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §[!3§)
               {
                  _loc7_++;
                  if(_loc7_ > §++§)
                  {
                     this.§"!N§ = "error: nesting to deep, maximum allowed is " + §++§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §;b§ && !_loc5_)
               {
                  this.§"!N§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§,w§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §>Y§)
               {
                  this.§"!N§ = "error: too many opcodes. maximum is " + §>Y§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§"!N§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §]P§[_loc24_[0]];
                  if(!this.§,!A§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§"!N§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §'n§))
                     {
                        this.§"!N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§"!N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §;!9§))
                  {
                     this.§"!N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§"!N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §!9§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §6&§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§"!N§ = "error: relative can not be destination";
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
                     if((_loc39_ = §]P§[_loc38_[0]]) == null)
                     {
                        this.§"!N§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§"!N§ = "error: bad index register select";
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
                        this.§"!N§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§,w§.writeShort(_loc27_);
                     this.§,w§.writeByte(_loc28_);
                     this.§,w§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §"?§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != § Q§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§,w§.writeShort(_loc27_);
                     this.§,w§.writeByte(int(_loc44_ * 8));
                     this.§,w§.writeByte(0);
                     this.§,w§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§,w§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§,w§.writeShort(_loc27_);
                     this.§,w§.writeByte(_loc34_);
                     this.§,w§.writeByte(_loc28_);
                     this.§,w§.writeByte(_loc25_.emitCode);
                     this.§,w§.writeByte(_loc32_);
                     this.§,w§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§,w§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§"!N§ != "")
         {
            this.§"!N§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§,w§.length = 0;
         }
         if(this.§,!A§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§,w§.length;
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
               if((_loc49_ = this.§,w§[_loc48_].toString(16)).length < 2)
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
         return this.§,w§;
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
