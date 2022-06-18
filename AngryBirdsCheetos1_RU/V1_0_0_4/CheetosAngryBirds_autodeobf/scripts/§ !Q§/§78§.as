package § !Q§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §78§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §+K§:Dictionary = new Dictionary();
      
      private static const §6I§:Dictionary = new Dictionary();
      
      private static const §3!I§:Dictionary = new Dictionary();
      
      private static const §9+§:int = 4;
      
      private static const §<!B§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §"!K§:uint = 12;
      
      private static const §;!^§:uint = 16;
      
      private static const §>!#§:uint = 20;
      
      private static const §'^§:uint = 24;
      
      private static const §1]§:uint = 28;
      
      private static const §5!-§:uint = 1;
      
      private static const §;5§:uint = 2;
      
      private static const §2q§:uint = 32;
      
      private static const §;&§:uint = 64;
      
      private static const §`!G§:uint = 1;
      
      private static const §<!R§:uint = 2;
      
      private static const §^!=§:uint = 4;
      
      private static const §4o§:uint = 8;
      
      private static const §^!4§:uint = 16;
      
      private static const §-!Z§:uint = 32;
      
      private static const §'g§:uint = 128;
      
      private static const §"a§:String = "mov";
      
      private static const §"!@§:String = "add";
      
      private static const §0D§:String = "sub";
      
      private static const §?!I§:String = "mul";
      
      private static const §^2§:String = "div";
      
      private static const §4!7§:String = "rcp";
      
      private static const §0v§:String = "min";
      
      private static const §5I§:String = "max";
      
      private static const §[z§:String = "frc";
      
      private static const §2I§:String = "sqt";
      
      private static const §?t§:String = "rsq";
      
      private static const §8!%§:String = "pow";
      
      private static const §"2§:String = "log";
      
      private static const § h§:String = "exp";
      
      private static const §>K§:String = "nrm";
      
      private static const §0x§:String = "sin";
      
      private static const §+!$§:String = "cos";
      
      private static const §6r§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §9!P§:String = "abs";
      
      private static const §-s§:String = "neg";
      
      private static const §=n§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §&!`§:String = "ifz";
      
      private static const §,!O§:String = "inz";
      
      private static const §&!N§:String = "ife";
      
      private static const §,o§:String = "ine";
      
      private static const §,!1§:String = "ifg";
      
      private static const §%!I§:String = "ifl";
      
      private static const §%!Z§:String = "ieg";
      
      private static const §'!;§:String = "iel";
      
      private static const §2!#§:String = "els";
      
      private static const §;h§:String = "eif";
      
      private static const §"!'§:String = "rep";
      
      private static const §<!T§:String = "erp";
      
      private static const §%F§:String = "brk";
      
      private static const §`Z§:String = "kil";
      
      private static const §]!2§:String = "tex";
      
      private static const §<!3§:String = "sge";
      
      private static const §;r§:String = "slt";
      
      private static const § R§:String = "sgn";
      
      private static const §+!T§:String = "va";
      
      private static const §&!6§:String = "vc";
      
      private static const §`R§:String = "vt";
      
      private static const §-0§:String = "op";
      
      private static const §!i§:String = "v";
      
      private static const §=p§:String = "fc";
      
      private static const §?!#§:String = "ft";
      
      private static const §`!A§:String = "fs";
      
      private static const §2`§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §"F§:String = "cube";
      
      private static const §3V§:String = "mipnearest";
      
      private static const §;!2§:String = "miplinear";
      
      private static const §]'§:String = "mipnone";
      
      private static const §`?§:String = "nomip";
      
      private static const §=!6§:String = "nearest";
      
      private static const §=O§:String = "linear";
      
      private static const §2h§:String = "centroid";
      
      private static const §6!#§:String = "single";
      
      private static const §[L§:String = "depth";
      
      private static const §4^§:String = "repeat";
      
      private static const §#O§:String = "wrap";
      
      private static const §6!T§:String = "clamp";
       
      
      private var §%y§:ByteArray = null;
      
      private var §%z§:String = "";
      
      private var §+&§:Boolean = false;
      
      public function §78§(param1:Boolean = false)
      {
         super();
         this.§+&§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §+K§[§"a§] = new OpCode(§"a§,2,0,0);
         §+K§[§"!@§] = new OpCode(§"!@§,3,1,0);
         §+K§[§0D§] = new OpCode(§0D§,3,2,0);
         §+K§[§?!I§] = new OpCode(§?!I§,3,3,0);
         §+K§[§^2§] = new OpCode(§^2§,3,4,0);
         §+K§[§4!7§] = new OpCode(§4!7§,2,5,0);
         §+K§[§0v§] = new OpCode(§0v§,3,6,0);
         §+K§[§5I§] = new OpCode(§5I§,3,7,0);
         §+K§[§[z§] = new OpCode(§[z§,2,8,0);
         §+K§[§2I§] = new OpCode(§2I§,2,9,0);
         §+K§[§?t§] = new OpCode(§?t§,2,10,0);
         §+K§[§8!%§] = new OpCode(§8!%§,3,11,0);
         §+K§[§"2§] = new OpCode(§"2§,2,12,0);
         §+K§[§ h§] = new OpCode(§ h§,2,13,0);
         §+K§[§>K§] = new OpCode(§>K§,2,14,0);
         §+K§[§0x§] = new OpCode(§0x§,2,15,0);
         §+K§[§+!$§] = new OpCode(§+!$§,2,16,0);
         §+K§[§6r§] = new OpCode(§6r§,3,17,0);
         §+K§[DP3] = new OpCode(DP3,3,18,0);
         §+K§[DP4] = new OpCode(DP4,3,19,0);
         §+K§[§9!P§] = new OpCode(§9!P§,2,20,0);
         §+K§[§-s§] = new OpCode(§-s§,2,21,0);
         §+K§[§=n§] = new OpCode(§=n§,2,22,0);
         §+K§[M33] = new OpCode(M33,3,23,§^!4§);
         §+K§[M44] = new OpCode(M44,3,24,§^!4§);
         §+K§[M34] = new OpCode(M34,3,25,§^!4§);
         §+K§[§&!`§] = new OpCode(§&!`§,1,26,§'g§ | §<!R§ | §`!G§);
         §+K§[§,!O§] = new OpCode(§,!O§,1,27,§'g§ | §<!R§ | §`!G§);
         §+K§[§&!N§] = new OpCode(§&!N§,2,28,§'g§ | §<!R§ | §`!G§);
         §+K§[§,o§] = new OpCode(§,o§,2,29,§'g§ | §<!R§ | §`!G§);
         §+K§[§,!1§] = new OpCode(§,!1§,2,30,§'g§ | §<!R§ | §`!G§);
         §+K§[§%!I§] = new OpCode(§%!I§,2,31,§'g§ | §<!R§ | §`!G§);
         §+K§[§%!Z§] = new OpCode(§%!Z§,2,32,§'g§ | §<!R§ | §`!G§);
         §+K§[§'!;§] = new OpCode(§'!;§,2,33,§'g§ | §<!R§ | §`!G§);
         §+K§[§2!#§] = new OpCode(§2!#§,0,34,§'g§ | §<!R§ | §^!=§);
         §+K§[§;h§] = new OpCode(§;h§,0,35,§'g§ | §^!=§);
         §+K§[§"!'§] = new OpCode(§"!'§,1,36,§'g§ | §<!R§ | §`!G§);
         §+K§[§<!T§] = new OpCode(§<!T§,0,37,§'g§ | §^!=§);
         §+K§[§%F§] = new OpCode(§%F§,0,38,§'g§);
         §+K§[§`Z§] = new OpCode(§`Z§,1,39,§'g§ | §-!Z§);
         §+K§[§]!2§] = new OpCode(§]!2§,3,40,§-!Z§ | §4o§);
         §+K§[§<!3§] = new OpCode(§<!3§,3,41,0);
         §+K§[§;r§] = new OpCode(§;r§,3,42,0);
         §+K§[§ R§] = new OpCode(§ R§,2,43,0);
         §6I§[§+!T§] = new Register(§+!T§,"vertex attribute",0,7,§;&§ | §;5§);
         §6I§[§&!6§] = new Register(§&!6§,"vertex constant",1,127,§;&§ | §;5§);
         §6I§[§`R§] = new Register(§`R§,"vertex temporary",2,7,§;&§ | §5!-§ | §;5§);
         §6I§[§-0§] = new Register(§-0§,"vertex output",3,0,§;&§ | §5!-§);
         §6I§[§!i§] = new Register(§!i§,"varying",4,7,§;&§ | §2q§ | §;5§ | §5!-§);
         §6I§[§=p§] = new Register(§=p§,"fragment constant",1,27,§2q§ | §;5§);
         §6I§[§?!#§] = new Register(§?!#§,"fragment temporary",2,7,§2q§ | §5!-§ | §;5§);
         §6I§[§`!A§] = new Register(§`!A§,"texture sampler",5,7,§2q§ | §;5§);
         §6I§[§2`§] = new Register(§2`§,"fragment output",3,0,§2q§ | §5!-§);
         §3!I§[D2] = new Sampler(D2,§"!K§,0);
         §3!I§[D3] = new Sampler(D3,§"!K§,2);
         §3!I§[§"F§] = new Sampler(§"F§,§"!K§,1);
         §3!I§[§3V§] = new Sampler(§3V§,§'^§,1);
         §3!I§[§;!2§] = new Sampler(§;!2§,§'^§,2);
         §3!I§[§]'§] = new Sampler(§]'§,§'^§,0);
         §3!I§[§`?§] = new Sampler(§`?§,§'^§,0);
         §3!I§[§=!6§] = new Sampler(§=!6§,§1]§,0);
         §3!I§[§=O§] = new Sampler(§=O§,§1]§,1);
         §3!I§[§2h§] = new Sampler(§2h§,§;!^§,1 << 0);
         §3!I§[§6!#§] = new Sampler(§6!#§,§;!^§,1 << 1);
         §3!I§[§[L§] = new Sampler(§[L§,§;!^§,1 << 2);
         §3!I§[§4^§] = new Sampler(§4^§,§>!#§,1);
         §3!I§[§#O§] = new Sampler(§#O§,§>!#§,1);
         §3!I§[§6!T§] = new Sampler(§6!T§,§>!#§,0);
      }
      
      public function get error() : String
      {
         return this.§%z§;
      }
      
      public function get §<r§() : ByteArray
      {
         return this.§%y§;
      }
      
      public function §-!9§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§%y§ = new ByteArray();
         this.§%z§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§%z§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§<r§.endian = Endian.LITTLE_ENDIAN;
         this.§<r§.writeByte(160);
         this.§<r§.writeUnsignedInt(1);
         this.§<r§.writeByte(161);
         this.§<r§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§%z§ == "")
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
            _loc16_ = §+K§[_loc15_[0]];
            if(!this.§+&§)
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
               if(_loc16_.flags & §^!=§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§%z§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §<!R§)
               {
                  _loc7_++;
                  if(_loc7_ > §9+§)
                  {
                     this.§%z§ = "error: nesting to deep, maximum allowed is " + §9+§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §-!Z§ && !_loc5_)
               {
                  this.§%z§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§<r§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<!B§)
               {
                  this.§%z§ = "error: too many opcodes. maximum is " + §<!B§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§%z§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §6I§[_loc24_[0]];
                  if(!this.§+&§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§%z§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §2q§))
                     {
                        this.§%z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§%z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §;&§))
                  {
                     this.§%z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§%z§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §'g§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §4o§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§%z§ = "error: relative can not be destination";
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
                     if((_loc39_ = §6I§[_loc38_[0]]) == null)
                     {
                        this.§%z§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§%z§ = "error: bad index register select";
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
                        this.§%z§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§<r§.writeShort(_loc27_);
                     this.§<r§.writeByte(_loc28_);
                     this.§<r§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3!I§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §;!^§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§<r§.writeShort(_loc27_);
                     this.§<r§.writeByte(int(_loc44_ * 8));
                     this.§<r§.writeByte(0);
                     this.§<r§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§<r§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§<r§.writeShort(_loc27_);
                     this.§<r§.writeByte(_loc34_);
                     this.§<r§.writeByte(_loc28_);
                     this.§<r§.writeByte(_loc25_.emitCode);
                     this.§<r§.writeByte(_loc32_);
                     this.§<r§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§<r§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§%z§ != "")
         {
            this.§%z§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§<r§.length = 0;
         }
         if(this.§+&§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§<r§.length;
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
               if((_loc49_ = this.§<r§[_loc48_].toString(16)).length < 2)
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
         return this.§<r§;
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
