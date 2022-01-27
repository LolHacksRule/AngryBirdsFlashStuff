package §[!c§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §?!K§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §4!f§:Dictionary = new Dictionary();
      
      private static const §=!L§:Dictionary = new Dictionary();
      
      private static const §5!h§:Dictionary = new Dictionary();
      
      private static const §'"6§:int = 4;
      
      private static const §3!O§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §<!b§:uint = 12;
      
      private static const §6!?§:uint = 16;
      
      private static const §`§:uint = 20;
      
      private static const §8!F§:uint = 24;
      
      private static const §#"<§:uint = 28;
      
      private static const §<!_§:uint = 1;
      
      private static const §'!N§:uint = 2;
      
      private static const §"! §:uint = 32;
      
      private static const §93§:uint = 64;
      
      private static const §1e§:uint = 1;
      
      private static const §]!j§:uint = 2;
      
      private static const §6U§:uint = 4;
      
      private static const §+!8§:uint = 8;
      
      private static const §7!q§:uint = 16;
      
      private static const §<"?§:uint = 32;
      
      private static const §4!&§:uint = 128;
      
      private static const §"!k§:String = "mov";
      
      private static const §`!9§:String = "add";
      
      private static const §=!h§:String = "sub";
      
      private static const §`!i§:String = "mul";
      
      private static const §=`§:String = "div";
      
      private static const §@M§:String = "rcp";
      
      private static const §<!8§:String = "min";
      
      private static const §>!@§:String = "max";
      
      private static const §4!c§:String = "frc";
      
      private static const §]!O§:String = "sqt";
      
      private static const §5Y§:String = "rsq";
      
      private static const §[v§:String = "pow";
      
      private static const §^I§:String = "log";
      
      private static const §8!w§:String = "exp";
      
      private static const §6!2§:String = "nrm";
      
      private static const §>"A§:String = "sin";
      
      private static const §,,§:String = "cos";
      
      private static const §3"9§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §-";§:String = "abs";
      
      private static const §%Z§:String = "neg";
      
      private static const §-!a§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §[!s§:String = "ifz";
      
      private static const §^!%§:String = "inz";
      
      private static const §[!B§:String = "ife";
      
      private static const §6!R§:String = "ine";
      
      private static const §[!W§:String = "ifg";
      
      private static const §0l§:String = "ifl";
      
      private static const §2t§:String = "ieg";
      
      private static const §7!H§:String = "iel";
      
      private static const §1F§:String = "els";
      
      private static const §7!I§:String = "eif";
      
      private static const §%!W§:String = "rep";
      
      private static const §%"§:String = "erp";
      
      private static const §9V§:String = "brk";
      
      private static const §?!3§:String = "kil";
      
      private static const §2L§:String = "tex";
      
      private static const §@!Z§:String = "sge";
      
      private static const §@"8§:String = "slt";
      
      private static const §2!y§:String = "sgn";
      
      private static const §9"-§:String = "va";
      
      private static const §;";§:String = "vc";
      
      private static const §?!y§:String = "vt";
      
      private static const §-!V§:String = "op";
      
      private static const V:String = "v";
      
      private static const §9!A§:String = "fc";
      
      private static const §=!@§:String = "ft";
      
      private static const §2"&§:String = "fs";
      
      private static const §?!C§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §%!8§:String = "cube";
      
      private static const §2!O§:String = "mipnearest";
      
      private static const §[+§:String = "miplinear";
      
      private static const §>!%§:String = "mipnone";
      
      private static const §[p§:String = "nomip";
      
      private static const §#w§:String = "nearest";
      
      private static const §2![§:String = "linear";
      
      private static const §,!n§:String = "centroid";
      
      private static const §&J§:String = "single";
      
      private static const §=O§:String = "depth";
      
      private static const §-z§:String = "repeat";
      
      private static const §;!N§:String = "wrap";
      
      private static const §!U§:String = "clamp";
       
      
      private var §0J§:ByteArray = null;
      
      private var §-B§:String = "";
      
      private var §-<§:Boolean = false;
      
      public function §?!K§(param1:Boolean = false)
      {
         super();
         this.§-<§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §4!f§[§"!k§] = new OpCode(§"!k§,2,0,0);
         §4!f§[§`!9§] = new OpCode(§`!9§,3,1,0);
         §4!f§[§=!h§] = new OpCode(§=!h§,3,2,0);
         §4!f§[§`!i§] = new OpCode(§`!i§,3,3,0);
         §4!f§[§=`§] = new OpCode(§=`§,3,4,0);
         §4!f§[§@M§] = new OpCode(§@M§,2,5,0);
         §4!f§[§<!8§] = new OpCode(§<!8§,3,6,0);
         §4!f§[§>!@§] = new OpCode(§>!@§,3,7,0);
         §4!f§[§4!c§] = new OpCode(§4!c§,2,8,0);
         §4!f§[§]!O§] = new OpCode(§]!O§,2,9,0);
         §4!f§[§5Y§] = new OpCode(§5Y§,2,10,0);
         §4!f§[§[v§] = new OpCode(§[v§,3,11,0);
         §4!f§[§^I§] = new OpCode(§^I§,2,12,0);
         §4!f§[§8!w§] = new OpCode(§8!w§,2,13,0);
         §4!f§[§6!2§] = new OpCode(§6!2§,2,14,0);
         §4!f§[§>"A§] = new OpCode(§>"A§,2,15,0);
         §4!f§[§,,§] = new OpCode(§,,§,2,16,0);
         §4!f§[§3"9§] = new OpCode(§3"9§,3,17,0);
         §4!f§[DP3] = new OpCode(DP3,3,18,0);
         §4!f§[DP4] = new OpCode(DP4,3,19,0);
         §4!f§[§-";§] = new OpCode(§-";§,2,20,0);
         §4!f§[§%Z§] = new OpCode(§%Z§,2,21,0);
         §4!f§[§-!a§] = new OpCode(§-!a§,2,22,0);
         §4!f§[M33] = new OpCode(M33,3,23,§7!q§);
         §4!f§[M44] = new OpCode(M44,3,24,§7!q§);
         §4!f§[M34] = new OpCode(M34,3,25,§7!q§);
         §4!f§[§[!s§] = new OpCode(§[!s§,1,26,§4!&§ | §]!j§ | §1e§);
         §4!f§[§^!%§] = new OpCode(§^!%§,1,27,§4!&§ | §]!j§ | §1e§);
         §4!f§[§[!B§] = new OpCode(§[!B§,2,28,§4!&§ | §]!j§ | §1e§);
         §4!f§[§6!R§] = new OpCode(§6!R§,2,29,§4!&§ | §]!j§ | §1e§);
         §4!f§[§[!W§] = new OpCode(§[!W§,2,30,§4!&§ | §]!j§ | §1e§);
         §4!f§[§0l§] = new OpCode(§0l§,2,31,§4!&§ | §]!j§ | §1e§);
         §4!f§[§2t§] = new OpCode(§2t§,2,32,§4!&§ | §]!j§ | §1e§);
         §4!f§[§7!H§] = new OpCode(§7!H§,2,33,§4!&§ | §]!j§ | §1e§);
         §4!f§[§1F§] = new OpCode(§1F§,0,34,§4!&§ | §]!j§ | §6U§);
         §4!f§[§7!I§] = new OpCode(§7!I§,0,35,§4!&§ | §6U§);
         §4!f§[§%!W§] = new OpCode(§%!W§,1,36,§4!&§ | §]!j§ | §1e§);
         §4!f§[§%"§] = new OpCode(§%"§,0,37,§4!&§ | §6U§);
         §4!f§[§9V§] = new OpCode(§9V§,0,38,§4!&§);
         §4!f§[§?!3§] = new OpCode(§?!3§,1,39,§4!&§ | §<"?§);
         §4!f§[§2L§] = new OpCode(§2L§,3,40,§<"?§ | §+!8§);
         §4!f§[§@!Z§] = new OpCode(§@!Z§,3,41,0);
         §4!f§[§@"8§] = new OpCode(§@"8§,3,42,0);
         §4!f§[§2!y§] = new OpCode(§2!y§,2,43,0);
         §=!L§[§9"-§] = new Register(§9"-§,"vertex attribute",0,7,§93§ | §'!N§);
         §=!L§[§;";§] = new Register(§;";§,"vertex constant",1,127,§93§ | §'!N§);
         §=!L§[§?!y§] = new Register(§?!y§,"vertex temporary",2,7,§93§ | §<!_§ | §'!N§);
         §=!L§[§-!V§] = new Register(§-!V§,"vertex output",3,0,§93§ | §<!_§);
         §=!L§[V] = new Register(V,"varying",4,7,§93§ | §"! § | §'!N§ | §<!_§);
         §=!L§[§9!A§] = new Register(§9!A§,"fragment constant",1,27,§"! § | §'!N§);
         §=!L§[§=!@§] = new Register(§=!@§,"fragment temporary",2,7,§"! § | §<!_§ | §'!N§);
         §=!L§[§2"&§] = new Register(§2"&§,"texture sampler",5,7,§"! § | §'!N§);
         §=!L§[§?!C§] = new Register(§?!C§,"fragment output",3,0,§"! § | §<!_§);
         §5!h§[D2] = new Sampler(D2,§<!b§,0);
         §5!h§[D3] = new Sampler(D3,§<!b§,2);
         §5!h§[§%!8§] = new Sampler(§%!8§,§<!b§,1);
         §5!h§[§2!O§] = new Sampler(§2!O§,§8!F§,1);
         §5!h§[§[+§] = new Sampler(§[+§,§8!F§,2);
         §5!h§[§>!%§] = new Sampler(§>!%§,§8!F§,0);
         §5!h§[§[p§] = new Sampler(§[p§,§8!F§,0);
         §5!h§[§#w§] = new Sampler(§#w§,§#"<§,0);
         §5!h§[§2![§] = new Sampler(§2![§,§#"<§,1);
         §5!h§[§,!n§] = new Sampler(§,!n§,§6!?§,1 << 0);
         §5!h§[§&J§] = new Sampler(§&J§,§6!?§,1 << 1);
         §5!h§[§=O§] = new Sampler(§=O§,§6!?§,1 << 2);
         §5!h§[§-z§] = new Sampler(§-z§,§`§,1);
         §5!h§[§;!N§] = new Sampler(§;!N§,§`§,1);
         §5!h§[§!U§] = new Sampler(§!U§,§`§,0);
      }
      
      public function get error() : String
      {
         return this.§-B§;
      }
      
      public function get §^"0§() : ByteArray
      {
         return this.§0J§;
      }
      
      public function §^x§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§0J§ = new ByteArray();
         this.§-B§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§-B§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§^"0§.endian = Endian.LITTLE_ENDIAN;
         this.§^"0§.writeByte(160);
         this.§^"0§.writeUnsignedInt(1);
         this.§^"0§.writeByte(161);
         this.§^"0§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§-B§ == "")
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
            _loc16_ = §4!f§[_loc15_[0]];
            if(!this.§-<§)
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
               if(_loc16_.flags & §6U§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§-B§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §]!j§)
               {
                  _loc7_++;
                  if(_loc7_ > §'"6§)
                  {
                     this.§-B§ = "error: nesting to deep, maximum allowed is " + §'"6§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §<"?§ && !_loc5_)
               {
                  this.§-B§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§^"0§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §3!O§)
               {
                  this.§-B§ = "error: too many opcodes. maximum is " + §3!O§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§-B§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §=!L§[_loc24_[0]];
                  if(!this.§-<§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§-B§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §"! §))
                     {
                        this.§-B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§-B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §93§))
                  {
                     this.§-B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§-B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §4!&§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §+!8§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§-B§ = "error: relative can not be destination";
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
                     if((_loc39_ = §=!L§[_loc38_[0]]) == null)
                     {
                        this.§-B§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§-B§ = "error: bad index register select";
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
                        this.§-B§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§^"0§.writeShort(_loc27_);
                     this.§^"0§.writeByte(_loc28_);
                     this.§^"0§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §5!h§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §6!?§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§^"0§.writeShort(_loc27_);
                     this.§^"0§.writeByte(int(_loc44_ * 8));
                     this.§^"0§.writeByte(0);
                     this.§^"0§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§^"0§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§^"0§.writeShort(_loc27_);
                     this.§^"0§.writeByte(_loc34_);
                     this.§^"0§.writeByte(_loc28_);
                     this.§^"0§.writeByte(_loc25_.emitCode);
                     this.§^"0§.writeByte(_loc32_);
                     this.§^"0§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§^"0§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§-B§ != "")
         {
            this.§-B§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§^"0§.length = 0;
         }
         if(this.§-<§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§^"0§.length;
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
               if((_loc49_ = this.§^"0§[_loc48_].toString(16)).length < 2)
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
         return this.§^"0§;
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
