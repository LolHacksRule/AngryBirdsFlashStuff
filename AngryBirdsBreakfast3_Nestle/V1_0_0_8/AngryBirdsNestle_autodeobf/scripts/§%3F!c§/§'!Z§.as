package §?!c§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §'!Z§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §,C§:Dictionary = new Dictionary();
      
      private static const §?!b§:Dictionary = new Dictionary();
      
      private static const §=!W§:Dictionary = new Dictionary();
      
      private static const §5y§:int = 4;
      
      private static const §]!C§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §+s§:uint = 12;
      
      private static const §!"!§:uint = 16;
      
      private static const §5!b§:uint = 20;
      
      private static const §@"5§:uint = 24;
      
      private static const §+I§:uint = 28;
      
      private static const §^o§:uint = 1;
      
      private static const §'!?§:uint = 2;
      
      private static const §<!+§:uint = 32;
      
      private static const §'!P§:uint = 64;
      
      private static const §=8§:uint = 1;
      
      private static const §#k§:uint = 2;
      
      private static const §%!L§:uint = 4;
      
      private static const §85§:uint = 8;
      
      private static const §`e§:uint = 16;
      
      private static const §7!w§:uint = 32;
      
      private static const §6!O§:uint = 128;
      
      private static const § ?§:String = "mov";
      
      private static const §8!3§:String = "add";
      
      private static const §3"0§:String = "sub";
      
      private static const §<"'§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §-!%§:String = "rcp";
      
      private static const §3!h§:String = "min";
      
      private static const §4"'§:String = "max";
      
      private static const §6x§:String = "frc";
      
      private static const §'"&§:String = "sqt";
      
      private static const §,!m§:String = "rsq";
      
      private static const §!!X§:String = "pow";
      
      private static const §;!?§:String = "log";
      
      private static const §9!m§:String = "exp";
      
      private static const §6!U§:String = "nrm";
      
      private static const §<!L§:String = "sin";
      
      private static const §`!b§:String = "cos";
      
      private static const §8!l§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § >§:String = "abs";
      
      private static const §9W§:String = "neg";
      
      private static const §5!N§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §;!]§:String = "ifz";
      
      private static const §=!x§:String = "inz";
      
      private static const §'!t§:String = "ife";
      
      private static const §"g§:String = "ine";
      
      private static const §<@§:String = "ifg";
      
      private static const §<!m§:String = "ifl";
      
      private static const §6!p§:String = "ieg";
      
      private static const §!!k§:String = "iel";
      
      private static const §super§:String = "els";
      
      private static const §;!S§:String = "eif";
      
      private static const §;!h§:String = "rep";
      
      private static const §[r§:String = "erp";
      
      private static const §=a§:String = "brk";
      
      private static const §@!f§:String = "kil";
      
      private static const §45§:String = "tex";
      
      private static const §[!<§:String = "sge";
      
      private static const §]" §:String = "slt";
      
      private static const §=B§:String = "sgn";
      
      private static const §%,§:String = "va";
      
      private static const §76§:String = "vc";
      
      private static const §-m§:String = "vt";
      
      private static const §#7§:String = "op";
      
      private static const V:String = "v";
      
      private static const §4F§:String = "fc";
      
      private static const §7T§:String = "ft";
      
      private static const §`A§:String = "fs";
      
      private static const §&! §:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §9U§:String = "cube";
      
      private static const §4m§:String = "mipnearest";
      
      private static const §@!9§:String = "miplinear";
      
      private static const §>!;§:String = "mipnone";
      
      private static const §9F§:String = "nomip";
      
      private static const §2U§:String = "nearest";
      
      private static const §[f§:String = "linear";
      
      private static const §#q§:String = "centroid";
      
      private static const §^",§:String = "single";
      
      private static const §>u§:String = "depth";
      
      private static const § !q§:String = "repeat";
      
      private static const §!i§:String = "wrap";
      
      private static const §@" §:String = "clamp";
       
      
      private var §#@§:ByteArray = null;
      
      private var §5!i§:String = "";
      
      private var §<6§:Boolean = false;
      
      public function §'!Z§(param1:Boolean = false)
      {
         super();
         this.§<6§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §,C§[§ ?§] = new OpCode(§ ?§,2,0,0);
         §,C§[§8!3§] = new OpCode(§8!3§,3,1,0);
         §,C§[§3"0§] = new OpCode(§3"0§,3,2,0);
         §,C§[§<"'§] = new OpCode(§<"'§,3,3,0);
         §,C§[DIV] = new OpCode(DIV,3,4,0);
         §,C§[§-!%§] = new OpCode(§-!%§,2,5,0);
         §,C§[§3!h§] = new OpCode(§3!h§,3,6,0);
         §,C§[§4"'§] = new OpCode(§4"'§,3,7,0);
         §,C§[§6x§] = new OpCode(§6x§,2,8,0);
         §,C§[§'"&§] = new OpCode(§'"&§,2,9,0);
         §,C§[§,!m§] = new OpCode(§,!m§,2,10,0);
         §,C§[§!!X§] = new OpCode(§!!X§,3,11,0);
         §,C§[§;!?§] = new OpCode(§;!?§,2,12,0);
         §,C§[§9!m§] = new OpCode(§9!m§,2,13,0);
         §,C§[§6!U§] = new OpCode(§6!U§,2,14,0);
         §,C§[§<!L§] = new OpCode(§<!L§,2,15,0);
         §,C§[§`!b§] = new OpCode(§`!b§,2,16,0);
         §,C§[§8!l§] = new OpCode(§8!l§,3,17,0);
         §,C§[DP3] = new OpCode(DP3,3,18,0);
         §,C§[DP4] = new OpCode(DP4,3,19,0);
         §,C§[§ >§] = new OpCode(§ >§,2,20,0);
         §,C§[§9W§] = new OpCode(§9W§,2,21,0);
         §,C§[§5!N§] = new OpCode(§5!N§,2,22,0);
         §,C§[M33] = new OpCode(M33,3,23,§`e§);
         §,C§[M44] = new OpCode(M44,3,24,§`e§);
         §,C§[M34] = new OpCode(M34,3,25,§`e§);
         §,C§[§;!]§] = new OpCode(§;!]§,1,26,§6!O§ | §#k§ | §=8§);
         §,C§[§=!x§] = new OpCode(§=!x§,1,27,§6!O§ | §#k§ | §=8§);
         §,C§[§'!t§] = new OpCode(§'!t§,2,28,§6!O§ | §#k§ | §=8§);
         §,C§[§"g§] = new OpCode(§"g§,2,29,§6!O§ | §#k§ | §=8§);
         §,C§[§<@§] = new OpCode(§<@§,2,30,§6!O§ | §#k§ | §=8§);
         §,C§[§<!m§] = new OpCode(§<!m§,2,31,§6!O§ | §#k§ | §=8§);
         §,C§[§6!p§] = new OpCode(§6!p§,2,32,§6!O§ | §#k§ | §=8§);
         §,C§[§!!k§] = new OpCode(§!!k§,2,33,§6!O§ | §#k§ | §=8§);
         §,C§[§super§] = new OpCode(§super§,0,34,§6!O§ | §#k§ | §%!L§);
         §,C§[§;!S§] = new OpCode(§;!S§,0,35,§6!O§ | §%!L§);
         §,C§[§;!h§] = new OpCode(§;!h§,1,36,§6!O§ | §#k§ | §=8§);
         §,C§[§[r§] = new OpCode(§[r§,0,37,§6!O§ | §%!L§);
         §,C§[§=a§] = new OpCode(§=a§,0,38,§6!O§);
         §,C§[§@!f§] = new OpCode(§@!f§,1,39,§6!O§ | §7!w§);
         §,C§[§45§] = new OpCode(§45§,3,40,§7!w§ | §85§);
         §,C§[§[!<§] = new OpCode(§[!<§,3,41,0);
         §,C§[§]" §] = new OpCode(§]" §,3,42,0);
         §,C§[§=B§] = new OpCode(§=B§,2,43,0);
         §?!b§[§%,§] = new Register(§%,§,"vertex attribute",0,7,§'!P§ | §'!?§);
         §?!b§[§76§] = new Register(§76§,"vertex constant",1,127,§'!P§ | §'!?§);
         §?!b§[§-m§] = new Register(§-m§,"vertex temporary",2,7,§'!P§ | §^o§ | §'!?§);
         §?!b§[§#7§] = new Register(§#7§,"vertex output",3,0,§'!P§ | §^o§);
         §?!b§[V] = new Register(V,"varying",4,7,§'!P§ | §<!+§ | §'!?§ | §^o§);
         §?!b§[§4F§] = new Register(§4F§,"fragment constant",1,27,§<!+§ | §'!?§);
         §?!b§[§7T§] = new Register(§7T§,"fragment temporary",2,7,§<!+§ | §^o§ | §'!?§);
         §?!b§[§`A§] = new Register(§`A§,"texture sampler",5,7,§<!+§ | §'!?§);
         §?!b§[§&! §] = new Register(§&! §,"fragment output",3,0,§<!+§ | §^o§);
         §=!W§[D2] = new Sampler(D2,§+s§,0);
         §=!W§[D3] = new Sampler(D3,§+s§,2);
         §=!W§[§9U§] = new Sampler(§9U§,§+s§,1);
         §=!W§[§4m§] = new Sampler(§4m§,§@"5§,1);
         §=!W§[§@!9§] = new Sampler(§@!9§,§@"5§,2);
         §=!W§[§>!;§] = new Sampler(§>!;§,§@"5§,0);
         §=!W§[§9F§] = new Sampler(§9F§,§@"5§,0);
         §=!W§[§2U§] = new Sampler(§2U§,§+I§,0);
         §=!W§[§[f§] = new Sampler(§[f§,§+I§,1);
         §=!W§[§#q§] = new Sampler(§#q§,§!"!§,1 << 0);
         §=!W§[§^",§] = new Sampler(§^",§,§!"!§,1 << 1);
         §=!W§[§>u§] = new Sampler(§>u§,§!"!§,1 << 2);
         §=!W§[§ !q§] = new Sampler(§ !q§,§5!b§,1);
         §=!W§[§!i§] = new Sampler(§!i§,§5!b§,1);
         §=!W§[§@" §] = new Sampler(§@" §,§5!b§,0);
      }
      
      public function get error() : String
      {
         return this.§5!i§;
      }
      
      public function get §"X§() : ByteArray
      {
         return this.§#@§;
      }
      
      public function §>!k§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§#@§ = new ByteArray();
         this.§5!i§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5!i§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§"X§.endian = Endian.LITTLE_ENDIAN;
         this.§"X§.writeByte(160);
         this.§"X§.writeUnsignedInt(1);
         this.§"X§.writeByte(161);
         this.§"X§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§5!i§ == "")
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
            _loc16_ = §,C§[_loc15_[0]];
            if(!this.§<6§)
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
               if(_loc16_.flags & §%!L§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§5!i§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §#k§)
               {
                  _loc7_++;
                  if(_loc7_ > §5y§)
                  {
                     this.§5!i§ = "error: nesting to deep, maximum allowed is " + §5y§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §7!w§ && !_loc5_)
               {
                  this.§5!i§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§"X§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §]!C§)
               {
                  this.§5!i§ = "error: too many opcodes. maximum is " + §]!C§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§5!i§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §?!b§[_loc24_[0]];
                  if(!this.§<6§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§5!i§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §<!+§))
                     {
                        this.§5!i§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§5!i§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §'!P§))
                  {
                     this.§5!i§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§5!i§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §6!O§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §85§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§5!i§ = "error: relative can not be destination";
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
                     if((_loc39_ = §?!b§[_loc38_[0]]) == null)
                     {
                        this.§5!i§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§5!i§ = "error: bad index register select";
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
                        this.§5!i§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§"X§.writeShort(_loc27_);
                     this.§"X§.writeByte(_loc28_);
                     this.§"X§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §=!W§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §!"!§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§"X§.writeShort(_loc27_);
                     this.§"X§.writeByte(int(_loc44_ * 8));
                     this.§"X§.writeByte(0);
                     this.§"X§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§"X§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§"X§.writeShort(_loc27_);
                     this.§"X§.writeByte(_loc34_);
                     this.§"X§.writeByte(_loc28_);
                     this.§"X§.writeByte(_loc25_.emitCode);
                     this.§"X§.writeByte(_loc32_);
                     this.§"X§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§"X§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§5!i§ != "")
         {
            this.§5!i§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§"X§.length = 0;
         }
         if(this.§<6§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§"X§.length;
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
               if((_loc49_ = this.§"X§[_loc48_].toString(16)).length < 2)
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
         return this.§"X§;
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
