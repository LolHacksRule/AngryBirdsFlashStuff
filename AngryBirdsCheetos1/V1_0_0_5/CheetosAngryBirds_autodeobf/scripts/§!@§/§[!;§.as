package §!@§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §[!;§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §'v§:Dictionary = new Dictionary();
      
      private static const §-,§:Dictionary = new Dictionary();
      
      private static const §7i§:Dictionary = new Dictionary();
      
      private static const §"S§:int = 4;
      
      private static const §92§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §-!0§:uint = 12;
      
      private static const §[!Q§:uint = 16;
      
      private static const §7-§:uint = 20;
      
      private static const §&`§:uint = 24;
      
      private static const §2M§:uint = 28;
      
      private static const §8B§:uint = 1;
      
      private static const override:uint = 2;
      
      private static const §2!I§:uint = 32;
      
      private static const §-1§:uint = 64;
      
      private static const §=!7§:uint = 1;
      
      private static const §<V§:uint = 2;
      
      private static const §"t§:uint = 4;
      
      private static const §,&§:uint = 8;
      
      private static const § K§:uint = 16;
      
      private static const §#o§:uint = 32;
      
      private static const §'U§:uint = 128;
      
      private static const §<Y§:String = "mov";
      
      private static const §0F§:String = "add";
      
      private static const §`l§:String = "sub";
      
      private static const §`'§:String = "mul";
      
      private static const §'^§:String = "div";
      
      private static const §8!>§:String = "rcp";
      
      private static const §@F§:String = "min";
      
      private static const §!!X§:String = "max";
      
      private static const §=!6§:String = "frc";
      
      private static const §6C§:String = "sqt";
      
      private static const §&!Z§:String = "rsq";
      
      private static const §<n§:String = "pow";
      
      private static const § r§:String = "log";
      
      private static const §1!4§:String = "exp";
      
      private static const §@o§:String = "nrm";
      
      private static const §?x§:String = "sin";
      
      private static const §=^§:String = "cos";
      
      private static const §^A§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §5e§:String = "abs";
      
      private static const §6!+§:String = "neg";
      
      private static const §'i§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §+T§:String = "ifz";
      
      private static const §3,§:String = "inz";
      
      private static const §4T§:String = "ife";
      
      private static const §8^§:String = "ine";
      
      private static const §3=§:String = "ifg";
      
      private static const §[h§:String = "ifl";
      
      private static const §9R§:String = "ieg";
      
      private static const §;! §:String = "iel";
      
      private static const §^!F§:String = "els";
      
      private static const §try§:String = "eif";
      
      private static const §#!§:String = "rep";
      
      private static const §8t§:String = "erp";
      
      private static const §&Z§:String = "brk";
      
      private static const § i§:String = "kil";
      
      private static const §#g§:String = "tex";
      
      private static const §1S§:String = "sge";
      
      private static const §,!G§:String = "slt";
      
      private static const §9A§:String = "sgn";
      
      private static const §;!N§:String = "va";
      
      private static const §-c§:String = "vc";
      
      private static const §]K§:String = "vt";
      
      private static const §3!E§:String = "op";
      
      private static const §`!9§:String = "v";
      
      private static const §^v§:String = "fc";
      
      private static const § '§:String = "ft";
      
      private static const §2!Z§:String = "fs";
      
      private static const §`^§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §,W§:String = "cube";
      
      private static const §;3§:String = "mipnearest";
      
      private static const §78§:String = "miplinear";
      
      private static const §,1§:String = "mipnone";
      
      private static const §"!"§:String = "nomip";
      
      private static const §#B§:String = "nearest";
      
      private static const §[f§:String = "linear";
      
      private static const §]%§:String = "centroid";
      
      private static const §#p§:String = "single";
      
      private static const §9D§:String = "depth";
      
      private static const §7!'§:String = "repeat";
      
      private static const §`<§:String = "wrap";
      
      private static const § !1§:String = "clamp";
       
      
      private var §1@§:ByteArray = null;
      
      private var §`G§:String = "";
      
      private var §]§:Boolean = false;
      
      public function §[!;§(param1:Boolean = false)
      {
         super();
         this.§]§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §'v§[§<Y§] = new OpCode(§<Y§,2,0,0);
         §'v§[§0F§] = new OpCode(§0F§,3,1,0);
         §'v§[§`l§] = new OpCode(§`l§,3,2,0);
         §'v§[§`'§] = new OpCode(§`'§,3,3,0);
         §'v§[§'^§] = new OpCode(§'^§,3,4,0);
         §'v§[§8!>§] = new OpCode(§8!>§,2,5,0);
         §'v§[§@F§] = new OpCode(§@F§,3,6,0);
         §'v§[§!!X§] = new OpCode(§!!X§,3,7,0);
         §'v§[§=!6§] = new OpCode(§=!6§,2,8,0);
         §'v§[§6C§] = new OpCode(§6C§,2,9,0);
         §'v§[§&!Z§] = new OpCode(§&!Z§,2,10,0);
         §'v§[§<n§] = new OpCode(§<n§,3,11,0);
         §'v§[§ r§] = new OpCode(§ r§,2,12,0);
         §'v§[§1!4§] = new OpCode(§1!4§,2,13,0);
         §'v§[§@o§] = new OpCode(§@o§,2,14,0);
         §'v§[§?x§] = new OpCode(§?x§,2,15,0);
         §'v§[§=^§] = new OpCode(§=^§,2,16,0);
         §'v§[§^A§] = new OpCode(§^A§,3,17,0);
         §'v§[DP3] = new OpCode(DP3,3,18,0);
         §'v§[DP4] = new OpCode(DP4,3,19,0);
         §'v§[§5e§] = new OpCode(§5e§,2,20,0);
         §'v§[§6!+§] = new OpCode(§6!+§,2,21,0);
         §'v§[§'i§] = new OpCode(§'i§,2,22,0);
         §'v§[M33] = new OpCode(M33,3,23,§ K§);
         §'v§[M44] = new OpCode(M44,3,24,§ K§);
         §'v§[M34] = new OpCode(M34,3,25,§ K§);
         §'v§[§+T§] = new OpCode(§+T§,1,26,§'U§ | §<V§ | §=!7§);
         §'v§[§3,§] = new OpCode(§3,§,1,27,§'U§ | §<V§ | §=!7§);
         §'v§[§4T§] = new OpCode(§4T§,2,28,§'U§ | §<V§ | §=!7§);
         §'v§[§8^§] = new OpCode(§8^§,2,29,§'U§ | §<V§ | §=!7§);
         §'v§[§3=§] = new OpCode(§3=§,2,30,§'U§ | §<V§ | §=!7§);
         §'v§[§[h§] = new OpCode(§[h§,2,31,§'U§ | §<V§ | §=!7§);
         §'v§[§9R§] = new OpCode(§9R§,2,32,§'U§ | §<V§ | §=!7§);
         §'v§[§;! §] = new OpCode(§;! §,2,33,§'U§ | §<V§ | §=!7§);
         §'v§[§^!F§] = new OpCode(§^!F§,0,34,§'U§ | §<V§ | §"t§);
         §'v§[§try§] = new OpCode(§try§,0,35,§'U§ | §"t§);
         §'v§[§#!§] = new OpCode(§#!§,1,36,§'U§ | §<V§ | §=!7§);
         §'v§[§8t§] = new OpCode(§8t§,0,37,§'U§ | §"t§);
         §'v§[§&Z§] = new OpCode(§&Z§,0,38,§'U§);
         §'v§[§ i§] = new OpCode(§ i§,1,39,§'U§ | §#o§);
         §'v§[§#g§] = new OpCode(§#g§,3,40,§#o§ | §,&§);
         §'v§[§1S§] = new OpCode(§1S§,3,41,0);
         §'v§[§,!G§] = new OpCode(§,!G§,3,42,0);
         §'v§[§9A§] = new OpCode(§9A§,2,43,0);
         §-,§[§;!N§] = new Register(§;!N§,"vertex attribute",0,7,§-1§ | override);
         §-,§[§-c§] = new Register(§-c§,"vertex constant",1,127,§-1§ | override);
         §-,§[§]K§] = new Register(§]K§,"vertex temporary",2,7,§-1§ | §8B§ | override);
         §-,§[§3!E§] = new Register(§3!E§,"vertex output",3,0,§-1§ | §8B§);
         §-,§[§`!9§] = new Register(§`!9§,"varying",4,7,§-1§ | §2!I§ | override | §8B§);
         §-,§[§^v§] = new Register(§^v§,"fragment constant",1,27,§2!I§ | override);
         §-,§[§ '§] = new Register(§ '§,"fragment temporary",2,7,§2!I§ | §8B§ | override);
         §-,§[§2!Z§] = new Register(§2!Z§,"texture sampler",5,7,§2!I§ | override);
         §-,§[§`^§] = new Register(§`^§,"fragment output",3,0,§2!I§ | §8B§);
         §7i§[D2] = new Sampler(D2,§-!0§,0);
         §7i§[D3] = new Sampler(D3,§-!0§,2);
         §7i§[§,W§] = new Sampler(§,W§,§-!0§,1);
         §7i§[§;3§] = new Sampler(§;3§,§&`§,1);
         §7i§[§78§] = new Sampler(§78§,§&`§,2);
         §7i§[§,1§] = new Sampler(§,1§,§&`§,0);
         §7i§[§"!"§] = new Sampler(§"!"§,§&`§,0);
         §7i§[§#B§] = new Sampler(§#B§,§2M§,0);
         §7i§[§[f§] = new Sampler(§[f§,§2M§,1);
         §7i§[§]%§] = new Sampler(§]%§,§[!Q§,1 << 0);
         §7i§[§#p§] = new Sampler(§#p§,§[!Q§,1 << 1);
         §7i§[§9D§] = new Sampler(§9D§,§[!Q§,1 << 2);
         §7i§[§7!'§] = new Sampler(§7!'§,§7-§,1);
         §7i§[§`<§] = new Sampler(§`<§,§7-§,1);
         §7i§[§ !1§] = new Sampler(§ !1§,§7-§,0);
      }
      
      public function get error() : String
      {
         return this.§`G§;
      }
      
      public function get §>!,§() : ByteArray
      {
         return this.§1@§;
      }
      
      public function §[!5§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§1@§ = new ByteArray();
         this.§`G§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§`G§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§>!,§.endian = Endian.LITTLE_ENDIAN;
         this.§>!,§.writeByte(160);
         this.§>!,§.writeUnsignedInt(1);
         this.§>!,§.writeByte(161);
         this.§>!,§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§`G§ == "")
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
            _loc16_ = §'v§[_loc15_[0]];
            if(!this.§]§)
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
               if(_loc16_.flags & §"t§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§`G§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §<V§)
               {
                  _loc7_++;
                  if(_loc7_ > §"S§)
                  {
                     this.§`G§ = "error: nesting to deep, maximum allowed is " + §"S§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §#o§ && !_loc5_)
               {
                  this.§`G§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§>!,§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §92§)
               {
                  this.§`G§ = "error: too many opcodes. maximum is " + §92§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§`G§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §-,§[_loc24_[0]];
                  if(!this.§]§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§`G§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §2!I§))
                     {
                        this.§`G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§`G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §-1§))
                  {
                     this.§`G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§`G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §'U§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §,&§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§`G§ = "error: relative can not be destination";
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
                     if((_loc39_ = §-,§[_loc38_[0]]) == null)
                     {
                        this.§`G§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§`G§ = "error: bad index register select";
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
                        this.§`G§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§>!,§.writeShort(_loc27_);
                     this.§>!,§.writeByte(_loc28_);
                     this.§>!,§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §7i§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §[!Q§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§>!,§.writeShort(_loc27_);
                     this.§>!,§.writeByte(int(_loc44_ * 8));
                     this.§>!,§.writeByte(0);
                     this.§>!,§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§>!,§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§>!,§.writeShort(_loc27_);
                     this.§>!,§.writeByte(_loc34_);
                     this.§>!,§.writeByte(_loc28_);
                     this.§>!,§.writeByte(_loc25_.emitCode);
                     this.§>!,§.writeByte(_loc32_);
                     this.§>!,§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§>!,§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§`G§ != "")
         {
            this.§`G§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§>!,§.length = 0;
         }
         if(this.§]§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§>!,§.length;
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
               if((_loc49_ = this.§>!,§[_loc48_].toString(16)).length < 2)
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
         return this.§>!,§;
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
