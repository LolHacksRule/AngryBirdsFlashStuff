package §#a§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §"!§:Dictionary = new Dictionary();
      
      private static const §&L§:Dictionary = new Dictionary();
      
      private static const §default§:Dictionary = new Dictionary();
      
      private static const §=c§:int = 4;
      
      private static const §`!0§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!!9§:uint = 12;
      
      private static const §9#§:uint = 16;
      
      private static const § "§:uint = 20;
      
      private static const §!V§:uint = 24;
      
      private static const §`!-§:uint = 28;
      
      private static const §?!%§:uint = 1;
      
      private static const §9P§:uint = 2;
      
      private static const §;!7§:uint = 32;
      
      private static const §,r§:uint = 64;
      
      private static const §=!7§:uint = 1;
      
      private static const §@8§:uint = 2;
      
      private static const §>!=§:uint = 4;
      
      private static const §1H§:uint = 8;
      
      private static const §@!@§:uint = 16;
      
      private static const §@k§:uint = 32;
      
      private static const §2`§:uint = 128;
      
      private static const §7! §:String = "mov";
      
      private static const §?8§:String = "add";
      
      private static const §>!"§:String = "sub";
      
      private static const §]%§:String = "mul";
      
      private static const §8O§:String = "div";
      
      private static const §?!G§:String = "rcp";
      
      private static const §5y§:String = "min";
      
      private static const §3P§:String = "max";
      
      private static const §]!A§:String = "frc";
      
      private static const §[j§:String = "sqt";
      
      private static const §^r§:String = "rsq";
      
      private static const §]6§:String = "pow";
      
      private static const §>!!§:String = "log";
      
      private static const §#v§:String = "exp";
      
      private static const §9!<§:String = "nrm";
      
      private static const §9!6§:String = "sin";
      
      private static const §'!0§:String = "cos";
      
      private static const § z§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §3u§:String = "abs";
      
      private static const §8a§:String = "neg";
      
      private static const §4'§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §+k§:String = "ifz";
      
      private static const §]I§:String = "inz";
      
      private static const §3!-§:String = "ife";
      
      private static const §9y§:String = "ine";
      
      private static const §!!0§:String = "ifg";
      
      private static const §8v§:String = "ifl";
      
      private static const §2Y§:String = "ieg";
      
      private static const §,t§:String = "iel";
      
      private static const §5-§:String = "els";
      
      private static const §2k§:String = "eif";
      
      private static const §7+§:String = "rep";
      
      private static const §!p§:String = "erp";
      
      private static const §4j§:String = "brk";
      
      private static const §4n§:String = "kil";
      
      private static const §4a§:String = "tex";
      
      private static const §9g§:String = "sge";
      
      private static const §`D§:String = "slt";
      
      private static const §?!+§:String = "sgn";
      
      private static const §`!'§:String = "va";
      
      private static const §8;§:String = "vc";
      
      private static const §?Y§:String = "vt";
      
      private static const §8j§:String = "op";
      
      private static const §;O§:String = "v";
      
      private static const §7O§:String = "fc";
      
      private static const §&!!§:String = "ft";
      
      private static const §#!D§:String = "fs";
      
      private static const §8Y§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §];§:String = "cube";
      
      private static const §'!F§:String = "mipnearest";
      
      private static const §"D§:String = "miplinear";
      
      private static const § get§:String = "mipnone";
      
      private static const §[!?§:String = "nomip";
      
      private static const § !E§:String = "nearest";
      
      private static const §7o§:String = "linear";
      
      private static const §`1§:String = "centroid";
      
      private static const §<N§:String = "single";
      
      private static const §6R§:String = "depth";
      
      private static const §^!6§:String = "repeat";
      
      private static const native:String = "wrap";
      
      private static const §@!§:String = "clamp";
       
      
      private var §]H§:ByteArray = null;
      
      private var §?!8§:String = "";
      
      private var §6@§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§6@§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §"!§[§7! §] = new OpCode(§7! §,2,0,0);
         §"!§[§?8§] = new OpCode(§?8§,3,1,0);
         §"!§[§>!"§] = new OpCode(§>!"§,3,2,0);
         §"!§[§]%§] = new OpCode(§]%§,3,3,0);
         §"!§[§8O§] = new OpCode(§8O§,3,4,0);
         §"!§[§?!G§] = new OpCode(§?!G§,2,5,0);
         §"!§[§5y§] = new OpCode(§5y§,3,6,0);
         §"!§[§3P§] = new OpCode(§3P§,3,7,0);
         §"!§[§]!A§] = new OpCode(§]!A§,2,8,0);
         §"!§[§[j§] = new OpCode(§[j§,2,9,0);
         §"!§[§^r§] = new OpCode(§^r§,2,10,0);
         §"!§[§]6§] = new OpCode(§]6§,3,11,0);
         §"!§[§>!!§] = new OpCode(§>!!§,2,12,0);
         §"!§[§#v§] = new OpCode(§#v§,2,13,0);
         §"!§[§9!<§] = new OpCode(§9!<§,2,14,0);
         §"!§[§9!6§] = new OpCode(§9!6§,2,15,0);
         §"!§[§'!0§] = new OpCode(§'!0§,2,16,0);
         §"!§[§ z§] = new OpCode(§ z§,3,17,0);
         §"!§[DP3] = new OpCode(DP3,3,18,0);
         §"!§[DP4] = new OpCode(DP4,3,19,0);
         §"!§[§3u§] = new OpCode(§3u§,2,20,0);
         §"!§[§8a§] = new OpCode(§8a§,2,21,0);
         §"!§[§4'§] = new OpCode(§4'§,2,22,0);
         §"!§[M33] = new OpCode(M33,3,23,§@!@§);
         §"!§[M44] = new OpCode(M44,3,24,§@!@§);
         §"!§[M34] = new OpCode(M34,3,25,§@!@§);
         §"!§[§+k§] = new OpCode(§+k§,1,26,§2`§ | §@8§ | §=!7§);
         §"!§[§]I§] = new OpCode(§]I§,1,27,§2`§ | §@8§ | §=!7§);
         §"!§[§3!-§] = new OpCode(§3!-§,2,28,§2`§ | §@8§ | §=!7§);
         §"!§[§9y§] = new OpCode(§9y§,2,29,§2`§ | §@8§ | §=!7§);
         §"!§[§!!0§] = new OpCode(§!!0§,2,30,§2`§ | §@8§ | §=!7§);
         §"!§[§8v§] = new OpCode(§8v§,2,31,§2`§ | §@8§ | §=!7§);
         §"!§[§2Y§] = new OpCode(§2Y§,2,32,§2`§ | §@8§ | §=!7§);
         §"!§[§,t§] = new OpCode(§,t§,2,33,§2`§ | §@8§ | §=!7§);
         §"!§[§5-§] = new OpCode(§5-§,0,34,§2`§ | §@8§ | §>!=§);
         §"!§[§2k§] = new OpCode(§2k§,0,35,§2`§ | §>!=§);
         §"!§[§7+§] = new OpCode(§7+§,1,36,§2`§ | §@8§ | §=!7§);
         §"!§[§!p§] = new OpCode(§!p§,0,37,§2`§ | §>!=§);
         §"!§[§4j§] = new OpCode(§4j§,0,38,§2`§);
         §"!§[§4n§] = new OpCode(§4n§,1,39,§2`§ | §@k§);
         §"!§[§4a§] = new OpCode(§4a§,3,40,§@k§ | §1H§);
         §"!§[§9g§] = new OpCode(§9g§,3,41,0);
         §"!§[§`D§] = new OpCode(§`D§,3,42,0);
         §"!§[§?!+§] = new OpCode(§?!+§,2,43,0);
         §&L§[§`!'§] = new Register(§`!'§,"vertex attribute",0,7,§,r§ | §9P§);
         §&L§[§8;§] = new Register(§8;§,"vertex constant",1,127,§,r§ | §9P§);
         §&L§[§?Y§] = new Register(§?Y§,"vertex temporary",2,7,§,r§ | §?!%§ | §9P§);
         §&L§[§8j§] = new Register(§8j§,"vertex output",3,0,§,r§ | §?!%§);
         §&L§[§;O§] = new Register(§;O§,"varying",4,7,§,r§ | §;!7§ | §9P§ | §?!%§);
         §&L§[§7O§] = new Register(§7O§,"fragment constant",1,27,§;!7§ | §9P§);
         §&L§[§&!!§] = new Register(§&!!§,"fragment temporary",2,7,§;!7§ | §?!%§ | §9P§);
         §&L§[§#!D§] = new Register(§#!D§,"texture sampler",5,7,§;!7§ | §9P§);
         §&L§[§8Y§] = new Register(§8Y§,"fragment output",3,0,§;!7§ | §?!%§);
         §default§[D2] = new Sampler(D2,§!!9§,0);
         §default§[D3] = new Sampler(D3,§!!9§,2);
         §default§[§];§] = new Sampler(§];§,§!!9§,1);
         §default§[§'!F§] = new Sampler(§'!F§,§!V§,1);
         §default§[§"D§] = new Sampler(§"D§,§!V§,2);
         §default§[§ get§] = new Sampler(§ get§,§!V§,0);
         §default§[§[!?§] = new Sampler(§[!?§,§!V§,0);
         §default§[§ !E§] = new Sampler(§ !E§,§`!-§,0);
         §default§[§7o§] = new Sampler(§7o§,§`!-§,1);
         §default§[§`1§] = new Sampler(§`1§,§9#§,1 << 0);
         §default§[§<N§] = new Sampler(§<N§,§9#§,1 << 1);
         §default§[§6R§] = new Sampler(§6R§,§9#§,1 << 2);
         §default§[§^!6§] = new Sampler(§^!6§,§ "§,1);
         §default§[native] = new Sampler(native,§ "§,1);
         §default§[§@!§] = new Sampler(§@!§,§ "§,0);
      }
      
      public function get error() : String
      {
         return this.§?!8§;
      }
      
      public function get §]K§() : ByteArray
      {
         return this.§]H§;
      }
      
      public function §0!,§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§]H§ = new ByteArray();
         this.§?!8§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§?!8§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§]K§.endian = Endian.LITTLE_ENDIAN;
         this.§]K§.writeByte(160);
         this.§]K§.writeUnsignedInt(1);
         this.§]K§.writeByte(161);
         this.§]K§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§?!8§ == "")
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
            _loc16_ = §"!§[_loc15_[0]];
            if(!this.§6@§)
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
               if(_loc16_.flags & §>!=§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§?!8§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §@8§)
               {
                  _loc7_++;
                  if(_loc7_ > §=c§)
                  {
                     this.§?!8§ = "error: nesting to deep, maximum allowed is " + §=c§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §@k§ && !_loc5_)
               {
                  this.§?!8§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§]K§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §`!0§)
               {
                  this.§?!8§ = "error: too many opcodes. maximum is " + §`!0§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§?!8§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §&L§[_loc24_[0]];
                  if(!this.§6@§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§?!8§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §;!7§))
                     {
                        this.§?!8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§?!8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §,r§))
                  {
                     this.§?!8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§?!8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §2`§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §1H§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§?!8§ = "error: relative can not be destination";
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
                     if((_loc39_ = §&L§[_loc38_[0]]) == null)
                     {
                        this.§?!8§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§?!8§ = "error: bad index register select";
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
                        this.§?!8§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§]K§.writeShort(_loc27_);
                     this.§]K§.writeByte(_loc28_);
                     this.§]K§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §default§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §9#§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§]K§.writeShort(_loc27_);
                     this.§]K§.writeByte(int(_loc44_ * 8));
                     this.§]K§.writeByte(0);
                     this.§]K§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§]K§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§]K§.writeShort(_loc27_);
                     this.§]K§.writeByte(_loc34_);
                     this.§]K§.writeByte(_loc28_);
                     this.§]K§.writeByte(_loc25_.emitCode);
                     this.§]K§.writeByte(_loc32_);
                     this.§]K§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§]K§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§?!8§ != "")
         {
            this.§?!8§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§]K§.length = 0;
         }
         if(this.§6@§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§]K§.length;
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
               if((_loc49_ = this.§]K§[_loc48_].toString(16)).length < 2)
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
         return this.§]K§;
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
