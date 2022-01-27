package §;+§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §;-§:Dictionary = new Dictionary();
      
      private static const §<k§:Dictionary = new Dictionary();
      
      private static const §3!L§:Dictionary = new Dictionary();
      
      private static const §<V§:int = 4;
      
      private static const §+u§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §''§:uint = 12;
      
      private static const §'J§:uint = 16;
      
      private static const §'v§:uint = 20;
      
      private static const §0;§:uint = 24;
      
      private static const §=C§:uint = 28;
      
      private static const §0M§:uint = 1;
      
      private static const §>O§:uint = 2;
      
      private static const §%u§:uint = 32;
      
      private static const §@=§:uint = 64;
      
      private static const §-i§:uint = 1;
      
      private static const §2@§:uint = 2;
      
      private static const §'h§:uint = 4;
      
      private static const §'I§:uint = 8;
      
      private static const §^!O§:uint = 16;
      
      private static const §8!K§:uint = 32;
      
      private static const §2p§:uint = 128;
      
      private static const §%"§:String = "mov";
      
      private static const § 1§:String = "add";
      
      private static const §;`§:String = "sub";
      
      private static const §=!A§:String = "mul";
      
      private static const §<j§:String = "div";
      
      private static const §in §:String = "rcp";
      
      private static const §set §:String = "min";
      
      private static const §#C§:String = "max";
      
      private static const §&n§:String = "frc";
      
      private static const §`M§:String = "sqt";
      
      private static const §8! §:String = "rsq";
      
      private static const §>=§:String = "pow";
      
      private static const §^_§:String = "log";
      
      private static const §>>§:String = "exp";
      
      private static const §[O§:String = "nrm";
      
      private static const §[!$§:String = "sin";
      
      private static const §1!J§:String = "cos";
      
      private static const §'!?§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §7@§:String = "abs";
      
      private static const §+!D§:String = "neg";
      
      private static const §?C§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §22§:String = "ifz";
      
      private static const §^1§:String = "inz";
      
      private static const §+!4§:String = "ife";
      
      private static const § if§:String = "ine";
      
      private static const §@J§:String = "ifg";
      
      private static const §%!5§:String = "ifl";
      
      private static const §^8§:String = "ieg";
      
      private static const §@!%§:String = "iel";
      
      private static const §4[§:String = "els";
      
      private static const §9t§:String = "eif";
      
      private static const §-!O§:String = "rep";
      
      private static const §#^§:String = "erp";
      
      private static const §<!&§:String = "brk";
      
      private static const §+I§:String = "kil";
      
      private static const §@R§:String = "tex";
      
      private static const §8n§:String = "sge";
      
      private static const §`e§:String = "slt";
      
      private static const §;!+§:String = "sgn";
      
      private static const §[[§:String = "va";
      
      private static const §3!&§:String = "vc";
      
      private static const §+!I§:String = "vt";
      
      private static const §1!G§:String = "op";
      
      private static const §!!0§:String = "v";
      
      private static const §<!1§:String = "fc";
      
      private static const §@!E§:String = "ft";
      
      private static const §14§:String = "fs";
      
      private static const §1t§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §6;§:String = "cube";
      
      private static const §#§:String = "mipnearest";
      
      private static const §+! §:String = "miplinear";
      
      private static const §-!C§:String = "mipnone";
      
      private static const §%!P§:String = "nomip";
      
      private static const §2C§:String = "nearest";
      
      private static const §+F§:String = "linear";
      
      private static const §=x§:String = "centroid";
      
      private static const §4!$§:String = "single";
      
      private static const §%+§:String = "depth";
      
      private static const §1s§:String = "repeat";
      
      private static const §;!>§:String = "wrap";
      
      private static const §^&§:String = "clamp";
       
      
      private var §]!2§:ByteArray = null;
      
      private var §-!7§:String = "";
      
      private var §[y§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§[y§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §;-§[§%"§] = new OpCode(§%"§,2,0,0);
         §;-§[§ 1§] = new OpCode(§ 1§,3,1,0);
         §;-§[§;`§] = new OpCode(§;`§,3,2,0);
         §;-§[§=!A§] = new OpCode(§=!A§,3,3,0);
         §;-§[§<j§] = new OpCode(§<j§,3,4,0);
         §;-§[§in §] = new OpCode(§in §,2,5,0);
         §;-§[§set §] = new OpCode(§set §,3,6,0);
         §;-§[§#C§] = new OpCode(§#C§,3,7,0);
         §;-§[§&n§] = new OpCode(§&n§,2,8,0);
         §;-§[§`M§] = new OpCode(§`M§,2,9,0);
         §;-§[§8! §] = new OpCode(§8! §,2,10,0);
         §;-§[§>=§] = new OpCode(§>=§,3,11,0);
         §;-§[§^_§] = new OpCode(§^_§,2,12,0);
         §;-§[§>>§] = new OpCode(§>>§,2,13,0);
         §;-§[§[O§] = new OpCode(§[O§,2,14,0);
         §;-§[§[!$§] = new OpCode(§[!$§,2,15,0);
         §;-§[§1!J§] = new OpCode(§1!J§,2,16,0);
         §;-§[§'!?§] = new OpCode(§'!?§,3,17,0);
         §;-§[DP3] = new OpCode(DP3,3,18,0);
         §;-§[DP4] = new OpCode(DP4,3,19,0);
         §;-§[§7@§] = new OpCode(§7@§,2,20,0);
         §;-§[§+!D§] = new OpCode(§+!D§,2,21,0);
         §;-§[§?C§] = new OpCode(§?C§,2,22,0);
         §;-§[M33] = new OpCode(M33,3,23,§^!O§);
         §;-§[M44] = new OpCode(M44,3,24,§^!O§);
         §;-§[M34] = new OpCode(M34,3,25,§^!O§);
         §;-§[§22§] = new OpCode(§22§,1,26,§2p§ | §2@§ | §-i§);
         §;-§[§^1§] = new OpCode(§^1§,1,27,§2p§ | §2@§ | §-i§);
         §;-§[§+!4§] = new OpCode(§+!4§,2,28,§2p§ | §2@§ | §-i§);
         §;-§[§ if§] = new OpCode(§ if§,2,29,§2p§ | §2@§ | §-i§);
         §;-§[§@J§] = new OpCode(§@J§,2,30,§2p§ | §2@§ | §-i§);
         §;-§[§%!5§] = new OpCode(§%!5§,2,31,§2p§ | §2@§ | §-i§);
         §;-§[§^8§] = new OpCode(§^8§,2,32,§2p§ | §2@§ | §-i§);
         §;-§[§@!%§] = new OpCode(§@!%§,2,33,§2p§ | §2@§ | §-i§);
         §;-§[§4[§] = new OpCode(§4[§,0,34,§2p§ | §2@§ | §'h§);
         §;-§[§9t§] = new OpCode(§9t§,0,35,§2p§ | §'h§);
         §;-§[§-!O§] = new OpCode(§-!O§,1,36,§2p§ | §2@§ | §-i§);
         §;-§[§#^§] = new OpCode(§#^§,0,37,§2p§ | §'h§);
         §;-§[§<!&§] = new OpCode(§<!&§,0,38,§2p§);
         §;-§[§+I§] = new OpCode(§+I§,1,39,§2p§ | §8!K§);
         §;-§[§@R§] = new OpCode(§@R§,3,40,§8!K§ | §'I§);
         §;-§[§8n§] = new OpCode(§8n§,3,41,0);
         §;-§[§`e§] = new OpCode(§`e§,3,42,0);
         §;-§[§;!+§] = new OpCode(§;!+§,2,43,0);
         §<k§[§[[§] = new Register(§[[§,"vertex attribute",0,7,§@=§ | §>O§);
         §<k§[§3!&§] = new Register(§3!&§,"vertex constant",1,127,§@=§ | §>O§);
         §<k§[§+!I§] = new Register(§+!I§,"vertex temporary",2,7,§@=§ | §0M§ | §>O§);
         §<k§[§1!G§] = new Register(§1!G§,"vertex output",3,0,§@=§ | §0M§);
         §<k§[§!!0§] = new Register(§!!0§,"varying",4,7,§@=§ | §%u§ | §>O§ | §0M§);
         §<k§[§<!1§] = new Register(§<!1§,"fragment constant",1,27,§%u§ | §>O§);
         §<k§[§@!E§] = new Register(§@!E§,"fragment temporary",2,7,§%u§ | §0M§ | §>O§);
         §<k§[§14§] = new Register(§14§,"texture sampler",5,7,§%u§ | §>O§);
         §<k§[§1t§] = new Register(§1t§,"fragment output",3,0,§%u§ | §0M§);
         §3!L§[D2] = new Sampler(D2,§''§,0);
         §3!L§[D3] = new Sampler(D3,§''§,2);
         §3!L§[§6;§] = new Sampler(§6;§,§''§,1);
         §3!L§[§#§] = new Sampler(§#§,§0;§,1);
         §3!L§[§+! §] = new Sampler(§+! §,§0;§,2);
         §3!L§[§-!C§] = new Sampler(§-!C§,§0;§,0);
         §3!L§[§%!P§] = new Sampler(§%!P§,§0;§,0);
         §3!L§[§2C§] = new Sampler(§2C§,§=C§,0);
         §3!L§[§+F§] = new Sampler(§+F§,§=C§,1);
         §3!L§[§=x§] = new Sampler(§=x§,§'J§,1 << 0);
         §3!L§[§4!$§] = new Sampler(§4!$§,§'J§,1 << 1);
         §3!L§[§%+§] = new Sampler(§%+§,§'J§,1 << 2);
         §3!L§[§1s§] = new Sampler(§1s§,§'v§,1);
         §3!L§[§;!>§] = new Sampler(§;!>§,§'v§,1);
         §3!L§[§^&§] = new Sampler(§^&§,§'v§,0);
      }
      
      public function get error() : String
      {
         return this.§-!7§;
      }
      
      public function get §2!J§() : ByteArray
      {
         return this.§]!2§;
      }
      
      public function §8!L§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§]!2§ = new ByteArray();
         this.§-!7§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§-!7§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§2!J§.endian = Endian.LITTLE_ENDIAN;
         this.§2!J§.writeByte(160);
         this.§2!J§.writeUnsignedInt(1);
         this.§2!J§.writeByte(161);
         this.§2!J§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§-!7§ == "")
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
            _loc16_ = §;-§[_loc15_[0]];
            if(!this.§[y§)
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
               if(_loc16_.flags & §'h§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§-!7§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §2@§)
               {
                  _loc7_++;
                  if(_loc7_ > §<V§)
                  {
                     this.§-!7§ = "error: nesting to deep, maximum allowed is " + §<V§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §8!K§ && !_loc5_)
               {
                  this.§-!7§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§2!J§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §+u§)
               {
                  this.§-!7§ = "error: too many opcodes. maximum is " + §+u§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§-!7§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §<k§[_loc24_[0]];
                  if(!this.§[y§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§-!7§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §%u§))
                     {
                        this.§-!7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§-!7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §@=§))
                  {
                     this.§-!7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§-!7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §2p§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §'I§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§-!7§ = "error: relative can not be destination";
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
                     if((_loc39_ = §<k§[_loc38_[0]]) == null)
                     {
                        this.§-!7§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§-!7§ = "error: bad index register select";
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
                        this.§-!7§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§2!J§.writeShort(_loc27_);
                     this.§2!J§.writeByte(_loc28_);
                     this.§2!J§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3!L§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §'J§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§2!J§.writeShort(_loc27_);
                     this.§2!J§.writeByte(int(_loc44_ * 8));
                     this.§2!J§.writeByte(0);
                     this.§2!J§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§2!J§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§2!J§.writeShort(_loc27_);
                     this.§2!J§.writeByte(_loc34_);
                     this.§2!J§.writeByte(_loc28_);
                     this.§2!J§.writeByte(_loc25_.emitCode);
                     this.§2!J§.writeByte(_loc32_);
                     this.§2!J§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§2!J§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§-!7§ != "")
         {
            this.§-!7§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§2!J§.length = 0;
         }
         if(this.§[y§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§2!J§.length;
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
               if((_loc49_ = this.§2!J§[_loc48_].toString(16)).length < 2)
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
         return this.§2!J§;
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
