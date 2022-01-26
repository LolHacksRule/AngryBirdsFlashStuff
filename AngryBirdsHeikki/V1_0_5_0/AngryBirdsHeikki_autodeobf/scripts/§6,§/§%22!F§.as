package §6,§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §"!F§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §>o§:Dictionary = new Dictionary();
      
      private static const §9!a§:Dictionary = new Dictionary();
      
      private static const §]!M§:Dictionary = new Dictionary();
      
      private static const §5?§:int = 4;
      
      private static const §8V§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §7N§:uint = 12;
      
      private static const §6!@§:uint = 16;
      
      private static const §"b§:uint = 20;
      
      private static const §%!^§:uint = 24;
      
      private static const §[i§:uint = 28;
      
      private static const §&!7§:uint = 1;
      
      private static const §!!;§:uint = 2;
      
      private static const §1&§:uint = 32;
      
      private static const §0§:uint = 64;
      
      private static const §8$§:uint = 1;
      
      private static const §&3§:uint = 2;
      
      private static const §&-§:uint = 4;
      
      private static const §`R§:uint = 8;
      
      private static const §?_§:uint = 16;
      
      private static const §;n§:uint = 32;
      
      private static const §#6§:uint = 128;
      
      private static const §8!5§:String = "mov";
      
      private static const §=!@§:String = "add";
      
      private static const §&!>§:String = "sub";
      
      private static const §'8§:String = "mul";
      
      private static const §2u§:String = "div";
      
      private static const §`Z§:String = "rcp";
      
      private static const §+s§:String = "min";
      
      private static const §?!!§:String = "max";
      
      private static const §`_§:String = "frc";
      
      private static const §0H§:String = "sqt";
      
      private static const §?!A§:String = "rsq";
      
      private static const §4G§:String = "pow";
      
      private static const §@s§:String = "log";
      
      private static const §+#§:String = "exp";
      
      private static const §&!#§:String = "nrm";
      
      private static const §@C§:String = "sin";
      
      private static const §;!4§:String = "cos";
      
      private static const §-f§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §`P§:String = "abs";
      
      private static const §'!<§:String = "neg";
      
      private static const §,>§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §7!b§:String = "ifz";
      
      private static const §case §:String = "inz";
      
      private static const §,!]§:String = "ife";
      
      private static const §&!G§:String = "ine";
      
      private static const §[!%§:String = "ifg";
      
      private static const §'D§:String = "ifl";
      
      private static const §<!+§:String = "ieg";
      
      private static const §2!6§:String = "iel";
      
      private static const §[y§:String = "els";
      
      private static const §8y§:String = "eif";
      
      private static const §7!"§:String = "rep";
      
      private static const §2Q§:String = "erp";
      
      private static const §'!N§:String = "brk";
      
      private static const §>n§:String = "kil";
      
      private static const §;!0§:String = "tex";
      
      private static const §<E§:String = "sge";
      
      private static const §`!Q§:String = "slt";
      
      private static const §0!;§:String = "sgn";
      
      private static const §3!E§:String = "va";
      
      private static const §`!I§:String = "vc";
      
      private static const §#N§:String = "vt";
      
      private static const §9!!§:String = "op";
      
      private static const §`!_§:String = "v";
      
      private static const §>u§:String = "fc";
      
      private static const §4!N§:String = "ft";
      
      private static const §`^§:String = "fs";
      
      private static const §?!<§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §>I§:String = "cube";
      
      private static const §=G§:String = "mipnearest";
      
      private static const §@!§:String = "miplinear";
      
      private static const §%!$§:String = "mipnone";
      
      private static const §]!N§:String = "nomip";
      
      private static const §#!B§:String = "nearest";
      
      private static const §import§:String = "linear";
      
      private static const §#!2§:String = "centroid";
      
      private static const §^!S§:String = "single";
      
      private static const §"L§:String = "depth";
      
      private static const §9R§:String = "repeat";
      
      private static const §!l§:String = "wrap";
      
      private static const §9!J§:String = "clamp";
       
      
      private var §!!<§:ByteArray = null;
      
      private var §^8§:String = "";
      
      private var §]!!§:Boolean = false;
      
      public function §"!F§(param1:Boolean = false)
      {
         super();
         this.§]!!§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §>o§[§8!5§] = new OpCode(§8!5§,2,0,0);
         §>o§[§=!@§] = new OpCode(§=!@§,3,1,0);
         §>o§[§&!>§] = new OpCode(§&!>§,3,2,0);
         §>o§[§'8§] = new OpCode(§'8§,3,3,0);
         §>o§[§2u§] = new OpCode(§2u§,3,4,0);
         §>o§[§`Z§] = new OpCode(§`Z§,2,5,0);
         §>o§[§+s§] = new OpCode(§+s§,3,6,0);
         §>o§[§?!!§] = new OpCode(§?!!§,3,7,0);
         §>o§[§`_§] = new OpCode(§`_§,2,8,0);
         §>o§[§0H§] = new OpCode(§0H§,2,9,0);
         §>o§[§?!A§] = new OpCode(§?!A§,2,10,0);
         §>o§[§4G§] = new OpCode(§4G§,3,11,0);
         §>o§[§@s§] = new OpCode(§@s§,2,12,0);
         §>o§[§+#§] = new OpCode(§+#§,2,13,0);
         §>o§[§&!#§] = new OpCode(§&!#§,2,14,0);
         §>o§[§@C§] = new OpCode(§@C§,2,15,0);
         §>o§[§;!4§] = new OpCode(§;!4§,2,16,0);
         §>o§[§-f§] = new OpCode(§-f§,3,17,0);
         §>o§[DP3] = new OpCode(DP3,3,18,0);
         §>o§[DP4] = new OpCode(DP4,3,19,0);
         §>o§[§`P§] = new OpCode(§`P§,2,20,0);
         §>o§[§'!<§] = new OpCode(§'!<§,2,21,0);
         §>o§[§,>§] = new OpCode(§,>§,2,22,0);
         §>o§[M33] = new OpCode(M33,3,23,§?_§);
         §>o§[M44] = new OpCode(M44,3,24,§?_§);
         §>o§[M34] = new OpCode(M34,3,25,§?_§);
         §>o§[§7!b§] = new OpCode(§7!b§,1,26,§#6§ | §&3§ | §8$§);
         §>o§[§case §] = new OpCode(§case §,1,27,§#6§ | §&3§ | §8$§);
         §>o§[§,!]§] = new OpCode(§,!]§,2,28,§#6§ | §&3§ | §8$§);
         §>o§[§&!G§] = new OpCode(§&!G§,2,29,§#6§ | §&3§ | §8$§);
         §>o§[§[!%§] = new OpCode(§[!%§,2,30,§#6§ | §&3§ | §8$§);
         §>o§[§'D§] = new OpCode(§'D§,2,31,§#6§ | §&3§ | §8$§);
         §>o§[§<!+§] = new OpCode(§<!+§,2,32,§#6§ | §&3§ | §8$§);
         §>o§[§2!6§] = new OpCode(§2!6§,2,33,§#6§ | §&3§ | §8$§);
         §>o§[§[y§] = new OpCode(§[y§,0,34,§#6§ | §&3§ | §&-§);
         §>o§[§8y§] = new OpCode(§8y§,0,35,§#6§ | §&-§);
         §>o§[§7!"§] = new OpCode(§7!"§,1,36,§#6§ | §&3§ | §8$§);
         §>o§[§2Q§] = new OpCode(§2Q§,0,37,§#6§ | §&-§);
         §>o§[§'!N§] = new OpCode(§'!N§,0,38,§#6§);
         §>o§[§>n§] = new OpCode(§>n§,1,39,§#6§ | §;n§);
         §>o§[§;!0§] = new OpCode(§;!0§,3,40,§;n§ | §`R§);
         §>o§[§<E§] = new OpCode(§<E§,3,41,0);
         §>o§[§`!Q§] = new OpCode(§`!Q§,3,42,0);
         §>o§[§0!;§] = new OpCode(§0!;§,2,43,0);
         §9!a§[§3!E§] = new Register(§3!E§,"vertex attribute",0,7,§0§ | §!!;§);
         §9!a§[§`!I§] = new Register(§`!I§,"vertex constant",1,127,§0§ | §!!;§);
         §9!a§[§#N§] = new Register(§#N§,"vertex temporary",2,7,§0§ | §&!7§ | §!!;§);
         §9!a§[§9!!§] = new Register(§9!!§,"vertex output",3,0,§0§ | §&!7§);
         §9!a§[§`!_§] = new Register(§`!_§,"varying",4,7,§0§ | §1&§ | §!!;§ | §&!7§);
         §9!a§[§>u§] = new Register(§>u§,"fragment constant",1,27,§1&§ | §!!;§);
         §9!a§[§4!N§] = new Register(§4!N§,"fragment temporary",2,7,§1&§ | §&!7§ | §!!;§);
         §9!a§[§`^§] = new Register(§`^§,"texture sampler",5,7,§1&§ | §!!;§);
         §9!a§[§?!<§] = new Register(§?!<§,"fragment output",3,0,§1&§ | §&!7§);
         §]!M§[D2] = new Sampler(D2,§7N§,0);
         §]!M§[D3] = new Sampler(D3,§7N§,2);
         §]!M§[§>I§] = new Sampler(§>I§,§7N§,1);
         §]!M§[§=G§] = new Sampler(§=G§,§%!^§,1);
         §]!M§[§@!§] = new Sampler(§@!§,§%!^§,2);
         §]!M§[§%!$§] = new Sampler(§%!$§,§%!^§,0);
         §]!M§[§]!N§] = new Sampler(§]!N§,§%!^§,0);
         §]!M§[§#!B§] = new Sampler(§#!B§,§[i§,0);
         §]!M§[§import§] = new Sampler(§import§,§[i§,1);
         §]!M§[§#!2§] = new Sampler(§#!2§,§6!@§,1 << 0);
         §]!M§[§^!S§] = new Sampler(§^!S§,§6!@§,1 << 1);
         §]!M§[§"L§] = new Sampler(§"L§,§6!@§,1 << 2);
         §]!M§[§9R§] = new Sampler(§9R§,§"b§,1);
         §]!M§[§!l§] = new Sampler(§!l§,§"b§,1);
         §]!M§[§9!J§] = new Sampler(§9!J§,§"b§,0);
      }
      
      public function get error() : String
      {
         return this.§^8§;
      }
      
      public function get §4]§() : ByteArray
      {
         return this.§!!<§;
      }
      
      public function §[!3§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§!!<§ = new ByteArray();
         this.§^8§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§^8§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§4]§.endian = Endian.LITTLE_ENDIAN;
         this.§4]§.writeByte(160);
         this.§4]§.writeUnsignedInt(1);
         this.§4]§.writeByte(161);
         this.§4]§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§^8§ == "")
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
            _loc16_ = §>o§[_loc15_[0]];
            if(!this.§]!!§)
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
               if(_loc16_.flags & §&-§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§^8§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §&3§)
               {
                  _loc7_++;
                  if(_loc7_ > §5?§)
                  {
                     this.§^8§ = "error: nesting to deep, maximum allowed is " + §5?§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §;n§ && !_loc5_)
               {
                  this.§^8§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§4]§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §8V§)
               {
                  this.§^8§ = "error: too many opcodes. maximum is " + §8V§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§^8§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §9!a§[_loc24_[0]];
                  if(!this.§]!!§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§^8§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §1&§))
                     {
                        this.§^8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§^8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §0§))
                  {
                     this.§^8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§^8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §#6§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §`R§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§^8§ = "error: relative can not be destination";
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
                     if((_loc39_ = §9!a§[_loc38_[0]]) == null)
                     {
                        this.§^8§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§^8§ = "error: bad index register select";
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
                        this.§^8§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§4]§.writeShort(_loc27_);
                     this.§4]§.writeByte(_loc28_);
                     this.§4]§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §]!M§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §6!@§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§4]§.writeShort(_loc27_);
                     this.§4]§.writeByte(int(_loc44_ * 8));
                     this.§4]§.writeByte(0);
                     this.§4]§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§4]§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§4]§.writeShort(_loc27_);
                     this.§4]§.writeByte(_loc34_);
                     this.§4]§.writeByte(_loc28_);
                     this.§4]§.writeByte(_loc25_.emitCode);
                     this.§4]§.writeByte(_loc32_);
                     this.§4]§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§4]§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§^8§ != "")
         {
            this.§^8§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§4]§.length = 0;
         }
         if(this.§]!!§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§4]§.length;
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
               if((_loc49_ = this.§4]§[_loc48_].toString(16)).length < 2)
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
         return this.§4]§;
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
