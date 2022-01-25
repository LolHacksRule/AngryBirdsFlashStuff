package § Z§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §<d§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § !+§:Dictionary = new Dictionary();
      
      private static const §?#§:Dictionary = new Dictionary();
      
      private static const §3!$§:Dictionary = new Dictionary();
      
      private static const §-O§:int = 4;
      
      private static const §case§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §6!Z§:uint = 12;
      
      private static const §=@§:uint = 16;
      
      private static const §5!T§:uint = 20;
      
      private static const §,!5§:uint = 24;
      
      private static const §4!4§:uint = 28;
      
      private static const §+j§:uint = 1;
      
      private static const §5t§:uint = 2;
      
      private static const §<R§:uint = 32;
      
      private static const §5!;§:uint = 64;
      
      private static const §%l§:uint = 1;
      
      private static const §2!8§:uint = 2;
      
      private static const §4!;§:uint = 4;
      
      private static const §+!U§:uint = 8;
      
      private static const § !?§:uint = 16;
      
      private static const §4!+§:uint = 32;
      
      private static const §5m§:uint = 128;
      
      private static const §[![§:String = "mov";
      
      private static const §"=§:String = "add";
      
      private static const § !c§:String = "sub";
      
      private static const §1!A§:String = "mul";
      
      private static const §5!5§:String = "div";
      
      private static const §2!Y§:String = "rcp";
      
      private static const §<w§:String = "min";
      
      private static const §8k§:String = "max";
      
      private static const §+D§:String = "frc";
      
      private static const §]4§:String = "sqt";
      
      private static const §0E§:String = "rsq";
      
      private static const §6!<§:String = "pow";
      
      private static const §`a§:String = "log";
      
      private static const §8!0§:String = "exp";
      
      private static const §5!2§:String = "nrm";
      
      private static const §6!Q§:String = "sin";
      
      private static const §^#§:String = "cos";
      
      private static const §&!%§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §]9§:String = "abs";
      
      private static const §0`§:String = "neg";
      
      private static const §5!H§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §[!;§:String = "ifz";
      
      private static const §#!L§:String = "inz";
      
      private static const §0!%§:String = "ife";
      
      private static const §,s§:String = "ine";
      
      private static const §0H§:String = "ifg";
      
      private static const §>X§:String = "ifl";
      
      private static const §^d§:String = "ieg";
      
      private static const §"`§:String = "iel";
      
      private static const §;!`§:String = "els";
      
      private static const §`c§:String = "eif";
      
      private static const §"!?§:String = "rep";
      
      private static const §?O§:String = "erp";
      
      private static const §8r§:String = "brk";
      
      private static const §?!a§:String = "kil";
      
      private static const §3!I§:String = "tex";
      
      private static const §2U§:String = "sge";
      
      private static const §0K§:String = "slt";
      
      private static const §=w§:String = "sgn";
      
      private static const §>!G§:String = "va";
      
      private static const §9!T§:String = "vc";
      
      private static const §'!Q§:String = "vt";
      
      private static const §1!'§:String = "op";
      
      private static const §#L§:String = "v";
      
      private static const §-!c§:String = "fc";
      
      private static const §&§:String = "ft";
      
      private static const §^!D§:String = "fs";
      
      private static const §3K§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §`b§:String = "cube";
      
      private static const §'!<§:String = "mipnearest";
      
      private static const §!!1§:String = "miplinear";
      
      private static const §#h§:String = "mipnone";
      
      private static const §,7§:String = "nomip";
      
      private static const §1s§:String = "nearest";
      
      private static const §=§:String = "linear";
      
      private static const §>$§:String = "centroid";
      
      private static const §&C§:String = "single";
      
      private static const §7y§:String = "depth";
      
      private static const §0y§:String = "repeat";
      
      private static const §%M§:String = "wrap";
      
      private static const §[T§:String = "clamp";
       
      
      private var §7!;§:ByteArray = null;
      
      private var §>M§:String = "";
      
      private var §`!K§:Boolean = false;
      
      public function §<d§(param1:Boolean = false)
      {
         super();
         this.§`!K§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         § !+§[§[![§] = new OpCode(§[![§,2,0,0);
         § !+§[§"=§] = new OpCode(§"=§,3,1,0);
         § !+§[§ !c§] = new OpCode(§ !c§,3,2,0);
         § !+§[§1!A§] = new OpCode(§1!A§,3,3,0);
         § !+§[§5!5§] = new OpCode(§5!5§,3,4,0);
         § !+§[§2!Y§] = new OpCode(§2!Y§,2,5,0);
         § !+§[§<w§] = new OpCode(§<w§,3,6,0);
         § !+§[§8k§] = new OpCode(§8k§,3,7,0);
         § !+§[§+D§] = new OpCode(§+D§,2,8,0);
         § !+§[§]4§] = new OpCode(§]4§,2,9,0);
         § !+§[§0E§] = new OpCode(§0E§,2,10,0);
         § !+§[§6!<§] = new OpCode(§6!<§,3,11,0);
         § !+§[§`a§] = new OpCode(§`a§,2,12,0);
         § !+§[§8!0§] = new OpCode(§8!0§,2,13,0);
         § !+§[§5!2§] = new OpCode(§5!2§,2,14,0);
         § !+§[§6!Q§] = new OpCode(§6!Q§,2,15,0);
         § !+§[§^#§] = new OpCode(§^#§,2,16,0);
         § !+§[§&!%§] = new OpCode(§&!%§,3,17,0);
         § !+§[DP3] = new OpCode(DP3,3,18,0);
         § !+§[DP4] = new OpCode(DP4,3,19,0);
         § !+§[§]9§] = new OpCode(§]9§,2,20,0);
         § !+§[§0`§] = new OpCode(§0`§,2,21,0);
         § !+§[§5!H§] = new OpCode(§5!H§,2,22,0);
         § !+§[M33] = new OpCode(M33,3,23,§ !?§);
         § !+§[M44] = new OpCode(M44,3,24,§ !?§);
         § !+§[M34] = new OpCode(M34,3,25,§ !?§);
         § !+§[§[!;§] = new OpCode(§[!;§,1,26,§5m§ | §2!8§ | §%l§);
         § !+§[§#!L§] = new OpCode(§#!L§,1,27,§5m§ | §2!8§ | §%l§);
         § !+§[§0!%§] = new OpCode(§0!%§,2,28,§5m§ | §2!8§ | §%l§);
         § !+§[§,s§] = new OpCode(§,s§,2,29,§5m§ | §2!8§ | §%l§);
         § !+§[§0H§] = new OpCode(§0H§,2,30,§5m§ | §2!8§ | §%l§);
         § !+§[§>X§] = new OpCode(§>X§,2,31,§5m§ | §2!8§ | §%l§);
         § !+§[§^d§] = new OpCode(§^d§,2,32,§5m§ | §2!8§ | §%l§);
         § !+§[§"`§] = new OpCode(§"`§,2,33,§5m§ | §2!8§ | §%l§);
         § !+§[§;!`§] = new OpCode(§;!`§,0,34,§5m§ | §2!8§ | §4!;§);
         § !+§[§`c§] = new OpCode(§`c§,0,35,§5m§ | §4!;§);
         § !+§[§"!?§] = new OpCode(§"!?§,1,36,§5m§ | §2!8§ | §%l§);
         § !+§[§?O§] = new OpCode(§?O§,0,37,§5m§ | §4!;§);
         § !+§[§8r§] = new OpCode(§8r§,0,38,§5m§);
         § !+§[§?!a§] = new OpCode(§?!a§,1,39,§5m§ | §4!+§);
         § !+§[§3!I§] = new OpCode(§3!I§,3,40,§4!+§ | §+!U§);
         § !+§[§2U§] = new OpCode(§2U§,3,41,0);
         § !+§[§0K§] = new OpCode(§0K§,3,42,0);
         § !+§[§=w§] = new OpCode(§=w§,2,43,0);
         §?#§[§>!G§] = new Register(§>!G§,"vertex attribute",0,7,§5!;§ | §5t§);
         §?#§[§9!T§] = new Register(§9!T§,"vertex constant",1,127,§5!;§ | §5t§);
         §?#§[§'!Q§] = new Register(§'!Q§,"vertex temporary",2,7,§5!;§ | §+j§ | §5t§);
         §?#§[§1!'§] = new Register(§1!'§,"vertex output",3,0,§5!;§ | §+j§);
         §?#§[§#L§] = new Register(§#L§,"varying",4,7,§5!;§ | §<R§ | §5t§ | §+j§);
         §?#§[§-!c§] = new Register(§-!c§,"fragment constant",1,27,§<R§ | §5t§);
         §?#§[§&§] = new Register(§&§,"fragment temporary",2,7,§<R§ | §+j§ | §5t§);
         §?#§[§^!D§] = new Register(§^!D§,"texture sampler",5,7,§<R§ | §5t§);
         §?#§[§3K§] = new Register(§3K§,"fragment output",3,0,§<R§ | §+j§);
         §3!$§[D2] = new Sampler(D2,§6!Z§,0);
         §3!$§[D3] = new Sampler(D3,§6!Z§,2);
         §3!$§[§`b§] = new Sampler(§`b§,§6!Z§,1);
         §3!$§[§'!<§] = new Sampler(§'!<§,§,!5§,1);
         §3!$§[§!!1§] = new Sampler(§!!1§,§,!5§,2);
         §3!$§[§#h§] = new Sampler(§#h§,§,!5§,0);
         §3!$§[§,7§] = new Sampler(§,7§,§,!5§,0);
         §3!$§[§1s§] = new Sampler(§1s§,§4!4§,0);
         §3!$§[§=§] = new Sampler(§=§,§4!4§,1);
         §3!$§[§>$§] = new Sampler(§>$§,§=@§,1 << 0);
         §3!$§[§&C§] = new Sampler(§&C§,§=@§,1 << 1);
         §3!$§[§7y§] = new Sampler(§7y§,§=@§,1 << 2);
         §3!$§[§0y§] = new Sampler(§0y§,§5!T§,1);
         §3!$§[§%M§] = new Sampler(§%M§,§5!T§,1);
         §3!$§[§[T§] = new Sampler(§[T§,§5!T§,0);
      }
      
      public function get error() : String
      {
         return this.§>M§;
      }
      
      public function get §+!6§() : ByteArray
      {
         return this.§7!;§;
      }
      
      public function §%7§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§7!;§ = new ByteArray();
         this.§>M§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§>M§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§+!6§.endian = Endian.LITTLE_ENDIAN;
         this.§+!6§.writeByte(160);
         this.§+!6§.writeUnsignedInt(1);
         this.§+!6§.writeByte(161);
         this.§+!6§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§>M§ == "")
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
            _loc16_ = § !+§[_loc15_[0]];
            if(!this.§`!K§)
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
               if(_loc16_.flags & §4!;§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§>M§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §2!8§)
               {
                  _loc7_++;
                  if(_loc7_ > §-O§)
                  {
                     this.§>M§ = "error: nesting to deep, maximum allowed is " + §-O§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §4!+§ && !_loc5_)
               {
                  this.§>M§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§+!6§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §case§)
               {
                  this.§>M§ = "error: too many opcodes. maximum is " + §case§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§>M§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §?#§[_loc24_[0]];
                  if(!this.§`!K§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§>M§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §<R§))
                     {
                        this.§>M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§>M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §5!;§))
                  {
                     this.§>M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§>M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §5m§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §+!U§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§>M§ = "error: relative can not be destination";
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
                     if((_loc39_ = §?#§[_loc38_[0]]) == null)
                     {
                        this.§>M§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§>M§ = "error: bad index register select";
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
                        this.§>M§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§+!6§.writeShort(_loc27_);
                     this.§+!6§.writeByte(_loc28_);
                     this.§+!6§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3!$§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §=@§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§+!6§.writeShort(_loc27_);
                     this.§+!6§.writeByte(int(_loc44_ * 8));
                     this.§+!6§.writeByte(0);
                     this.§+!6§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§+!6§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§+!6§.writeShort(_loc27_);
                     this.§+!6§.writeByte(_loc34_);
                     this.§+!6§.writeByte(_loc28_);
                     this.§+!6§.writeByte(_loc25_.emitCode);
                     this.§+!6§.writeByte(_loc32_);
                     this.§+!6§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§+!6§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§>M§ != "")
         {
            this.§>M§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§+!6§.length = 0;
         }
         if(this.§`!K§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§+!6§.length;
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
               if((_loc49_ = this.§+!6§[_loc48_].toString(16)).length < 2)
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
         return this.§+!6§;
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
