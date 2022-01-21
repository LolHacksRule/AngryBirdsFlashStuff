package §^!8§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §1!&§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §"E§:Dictionary = new Dictionary();
      
      private static const §'W§:Dictionary = new Dictionary();
      
      private static const §7b§:Dictionary = new Dictionary();
      
      private static const §@!U§:int = 4;
      
      private static const §;'§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §]O§:uint = 12;
      
      private static const §[T§:uint = 16;
      
      private static const §;!g§:uint = 20;
      
      private static const §2e§:uint = 24;
      
      private static const §+!X§:uint = 28;
      
      private static const §<!c§:uint = 1;
      
      private static const §-!n§:uint = 2;
      
      private static const §"!;§:uint = 32;
      
      private static const §,F§:uint = 64;
      
      private static const §^5§:uint = 1;
      
      private static const §8V§:uint = 2;
      
      private static const §-M§:uint = 4;
      
      private static const §5!8§:uint = 8;
      
      private static const §?[§:uint = 16;
      
      private static const §>!<§:uint = 32;
      
      private static const §?-§:uint = 128;
      
      private static const §0k§:String = "mov";
      
      private static const §+!a§:String = "add";
      
      private static const §9!b§:String = "sub";
      
      private static const §2h§:String = "mul";
      
      private static const §'!!§:String = "div";
      
      private static const §?!;§:String = "rcp";
      
      private static const §5i§:String = "min";
      
      private static const §3m§:String = "max";
      
      private static const §1>§:String = "frc";
      
      private static const §5B§:String = "sqt";
      
      private static const §2!O§:String = "rsq";
      
      private static const §>!f§:String = "pow";
      
      private static const §0!p§:String = "log";
      
      private static const §8A§:String = "exp";
      
      private static const §5!!§:String = "nrm";
      
      private static const §8D§:String = "sin";
      
      private static const §2!L§:String = "cos";
      
      private static const §9]§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §,!h§:String = "abs";
      
      private static const §7!K§:String = "neg";
      
      private static const §!!'§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §4a§:String = "ifz";
      
      private static const §1G§:String = "inz";
      
      private static const §4!G§:String = "ife";
      
      private static const §[a§:String = "ine";
      
      private static const §6C§:String = "ifg";
      
      private static const §`! §:String = "ifl";
      
      private static const §>v§:String = "ieg";
      
      private static const §3U§:String = "iel";
      
      private static const §@!&§:String = "els";
      
      private static const § !b§:String = "eif";
      
      private static const §]I§:String = "rep";
      
      private static const §#o§:String = "erp";
      
      private static const §%!7§:String = "brk";
      
      private static const §'!8§:String = "kil";
      
      private static const §@!^§:String = "tex";
      
      private static const §%N§:String = "sge";
      
      private static const §'@§:String = "slt";
      
      private static const §1%§:String = "sgn";
      
      private static const §`!V§:String = "va";
      
      private static const §1!m§:String = "vc";
      
      private static const §&j§:String = "vt";
      
      private static const §,!8§:String = "op";
      
      private static const §^!3§:String = "v";
      
      private static const §3!#§:String = "fc";
      
      private static const §-!%§:String = "ft";
      
      private static const §5+§:String = "fs";
      
      private static const §35§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §;_§:String = "cube";
      
      private static const §]!#§:String = "mipnearest";
      
      private static const §8v§:String = "miplinear";
      
      private static const §8!%§:String = "mipnone";
      
      private static const §'!W§:String = "nomip";
      
      private static const §7f§:String = "nearest";
      
      private static const §6!T§:String = "linear";
      
      private static const §-D§:String = "centroid";
      
      private static const §#9§:String = "single";
      
      private static const §5T§:String = "depth";
      
      private static const §!!>§:String = "repeat";
      
      private static const §<!N§:String = "wrap";
      
      private static const §4z§:String = "clamp";
       
      
      private var §5!,§:ByteArray = null;
      
      private var §'=§:String = "";
      
      private var §9R§:Boolean = false;
      
      public function §1!&§(param1:Boolean = false)
      {
         super();
         this.§9R§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §"E§[§0k§] = new OpCode(§0k§,2,0,0);
         §"E§[§+!a§] = new OpCode(§+!a§,3,1,0);
         §"E§[§9!b§] = new OpCode(§9!b§,3,2,0);
         §"E§[§2h§] = new OpCode(§2h§,3,3,0);
         §"E§[§'!!§] = new OpCode(§'!!§,3,4,0);
         §"E§[§?!;§] = new OpCode(§?!;§,2,5,0);
         §"E§[§5i§] = new OpCode(§5i§,3,6,0);
         §"E§[§3m§] = new OpCode(§3m§,3,7,0);
         §"E§[§1>§] = new OpCode(§1>§,2,8,0);
         §"E§[§5B§] = new OpCode(§5B§,2,9,0);
         §"E§[§2!O§] = new OpCode(§2!O§,2,10,0);
         §"E§[§>!f§] = new OpCode(§>!f§,3,11,0);
         §"E§[§0!p§] = new OpCode(§0!p§,2,12,0);
         §"E§[§8A§] = new OpCode(§8A§,2,13,0);
         §"E§[§5!!§] = new OpCode(§5!!§,2,14,0);
         §"E§[§8D§] = new OpCode(§8D§,2,15,0);
         §"E§[§2!L§] = new OpCode(§2!L§,2,16,0);
         §"E§[§9]§] = new OpCode(§9]§,3,17,0);
         §"E§[DP3] = new OpCode(DP3,3,18,0);
         §"E§[DP4] = new OpCode(DP4,3,19,0);
         §"E§[§,!h§] = new OpCode(§,!h§,2,20,0);
         §"E§[§7!K§] = new OpCode(§7!K§,2,21,0);
         §"E§[§!!'§] = new OpCode(§!!'§,2,22,0);
         §"E§[M33] = new OpCode(M33,3,23,§?[§);
         §"E§[M44] = new OpCode(M44,3,24,§?[§);
         §"E§[M34] = new OpCode(M34,3,25,§?[§);
         §"E§[§4a§] = new OpCode(§4a§,1,26,§?-§ | §8V§ | §^5§);
         §"E§[§1G§] = new OpCode(§1G§,1,27,§?-§ | §8V§ | §^5§);
         §"E§[§4!G§] = new OpCode(§4!G§,2,28,§?-§ | §8V§ | §^5§);
         §"E§[§[a§] = new OpCode(§[a§,2,29,§?-§ | §8V§ | §^5§);
         §"E§[§6C§] = new OpCode(§6C§,2,30,§?-§ | §8V§ | §^5§);
         §"E§[§`! §] = new OpCode(§`! §,2,31,§?-§ | §8V§ | §^5§);
         §"E§[§>v§] = new OpCode(§>v§,2,32,§?-§ | §8V§ | §^5§);
         §"E§[§3U§] = new OpCode(§3U§,2,33,§?-§ | §8V§ | §^5§);
         §"E§[§@!&§] = new OpCode(§@!&§,0,34,§?-§ | §8V§ | §-M§);
         §"E§[§ !b§] = new OpCode(§ !b§,0,35,§?-§ | §-M§);
         §"E§[§]I§] = new OpCode(§]I§,1,36,§?-§ | §8V§ | §^5§);
         §"E§[§#o§] = new OpCode(§#o§,0,37,§?-§ | §-M§);
         §"E§[§%!7§] = new OpCode(§%!7§,0,38,§?-§);
         §"E§[§'!8§] = new OpCode(§'!8§,1,39,§?-§ | §>!<§);
         §"E§[§@!^§] = new OpCode(§@!^§,3,40,§>!<§ | §5!8§);
         §"E§[§%N§] = new OpCode(§%N§,3,41,0);
         §"E§[§'@§] = new OpCode(§'@§,3,42,0);
         §"E§[§1%§] = new OpCode(§1%§,2,43,0);
         §'W§[§`!V§] = new Register(§`!V§,"vertex attribute",0,7,§,F§ | §-!n§);
         §'W§[§1!m§] = new Register(§1!m§,"vertex constant",1,127,§,F§ | §-!n§);
         §'W§[§&j§] = new Register(§&j§,"vertex temporary",2,7,§,F§ | §<!c§ | §-!n§);
         §'W§[§,!8§] = new Register(§,!8§,"vertex output",3,0,§,F§ | §<!c§);
         §'W§[§^!3§] = new Register(§^!3§,"varying",4,7,§,F§ | §"!;§ | §-!n§ | §<!c§);
         §'W§[§3!#§] = new Register(§3!#§,"fragment constant",1,27,§"!;§ | §-!n§);
         §'W§[§-!%§] = new Register(§-!%§,"fragment temporary",2,7,§"!;§ | §<!c§ | §-!n§);
         §'W§[§5+§] = new Register(§5+§,"texture sampler",5,7,§"!;§ | §-!n§);
         §'W§[§35§] = new Register(§35§,"fragment output",3,0,§"!;§ | §<!c§);
         §7b§[D2] = new Sampler(D2,§]O§,0);
         §7b§[D3] = new Sampler(D3,§]O§,2);
         §7b§[§;_§] = new Sampler(§;_§,§]O§,1);
         §7b§[§]!#§] = new Sampler(§]!#§,§2e§,1);
         §7b§[§8v§] = new Sampler(§8v§,§2e§,2);
         §7b§[§8!%§] = new Sampler(§8!%§,§2e§,0);
         §7b§[§'!W§] = new Sampler(§'!W§,§2e§,0);
         §7b§[§7f§] = new Sampler(§7f§,§+!X§,0);
         §7b§[§6!T§] = new Sampler(§6!T§,§+!X§,1);
         §7b§[§-D§] = new Sampler(§-D§,§[T§,1 << 0);
         §7b§[§#9§] = new Sampler(§#9§,§[T§,1 << 1);
         §7b§[§5T§] = new Sampler(§5T§,§[T§,1 << 2);
         §7b§[§!!>§] = new Sampler(§!!>§,§;!g§,1);
         §7b§[§<!N§] = new Sampler(§<!N§,§;!g§,1);
         §7b§[§4z§] = new Sampler(§4z§,§;!g§,0);
      }
      
      public function get error() : String
      {
         return this.§'=§;
      }
      
      public function get §3I§() : ByteArray
      {
         return this.§5!,§;
      }
      
      public function §]o§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§5!,§ = new ByteArray();
         this.§'=§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§'=§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§3I§.endian = Endian.LITTLE_ENDIAN;
         this.§3I§.writeByte(160);
         this.§3I§.writeUnsignedInt(1);
         this.§3I§.writeByte(161);
         this.§3I§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§'=§ == "")
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
            _loc16_ = §"E§[_loc15_[0]];
            if(!this.§9R§)
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
               if(_loc16_.flags & §-M§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§'=§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §8V§)
               {
                  _loc7_++;
                  if(_loc7_ > §@!U§)
                  {
                     this.§'=§ = "error: nesting to deep, maximum allowed is " + §@!U§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §>!<§ && !_loc5_)
               {
                  this.§'=§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§3I§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §;'§)
               {
                  this.§'=§ = "error: too many opcodes. maximum is " + §;'§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§'=§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §'W§[_loc24_[0]];
                  if(!this.§9R§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§'=§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §"!;§))
                     {
                        this.§'=§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§'=§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §,F§))
                  {
                     this.§'=§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§'=§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §?-§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §5!8§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§'=§ = "error: relative can not be destination";
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
                     if((_loc39_ = §'W§[_loc38_[0]]) == null)
                     {
                        this.§'=§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§'=§ = "error: bad index register select";
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
                        this.§'=§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§3I§.writeShort(_loc27_);
                     this.§3I§.writeByte(_loc28_);
                     this.§3I§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §7b§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §[T§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§3I§.writeShort(_loc27_);
                     this.§3I§.writeByte(int(_loc44_ * 8));
                     this.§3I§.writeByte(0);
                     this.§3I§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§3I§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§3I§.writeShort(_loc27_);
                     this.§3I§.writeByte(_loc34_);
                     this.§3I§.writeByte(_loc28_);
                     this.§3I§.writeByte(_loc25_.emitCode);
                     this.§3I§.writeByte(_loc32_);
                     this.§3I§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§3I§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§'=§ != "")
         {
            this.§'=§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§3I§.length = 0;
         }
         if(this.§9R§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§3I§.length;
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
               if((_loc49_ = this.§3I§[_loc48_].toString(16)).length < 2)
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
         return this.§3I§;
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
