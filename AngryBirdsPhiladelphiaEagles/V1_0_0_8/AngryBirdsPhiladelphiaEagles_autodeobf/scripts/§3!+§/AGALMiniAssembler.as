package §3!+§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §;4§:Dictionary = new Dictionary();
      
      private static const §!e§:Dictionary = new Dictionary();
      
      private static const § var§:Dictionary = new Dictionary();
      
      private static const §4f§:int = 4;
      
      private static const §!L§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §%H§:uint = 12;
      
      private static const §'9§:uint = 16;
      
      private static const §=i§:uint = 20;
      
      private static const §88§:uint = 24;
      
      private static const §`!4§:uint = 28;
      
      private static const §%l§:uint = 1;
      
      private static const §'!=§:uint = 2;
      
      private static const §#1§:uint = 32;
      
      private static const §5a§:uint = 64;
      
      private static const §2S§:uint = 1;
      
      private static const §6j§:uint = 2;
      
      private static const §"O§:uint = 4;
      
      private static const §2Z§:uint = 8;
      
      private static const §4^§:uint = 16;
      
      private static const § !#§:uint = 32;
      
      private static const §<!,§:uint = 128;
      
      private static const §3!%§:String = "mov";
      
      private static const §+Y§:String = "add";
      
      private static const §"k§:String = "sub";
      
      private static const §@i§:String = "mul";
      
      private static const §!h§:String = "div";
      
      private static const §7m§:String = "rcp";
      
      private static const §5!A§:String = "min";
      
      private static const §9!J§:String = "max";
      
      private static const §7!M§:String = "frc";
      
      private static const §1e§:String = "sqt";
      
      private static const §?!=§:String = "rsq";
      
      private static const §-!5§:String = "pow";
      
      private static const §'7§:String = "log";
      
      private static const §0v§:String = "exp";
      
      private static const §%! §:String = "nrm";
      
      private static const §%F§:String = "sin";
      
      private static const §[!O§:String = "cos";
      
      private static const §!s§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §<P§:String = "abs";
      
      private static const §?x§:String = "neg";
      
      private static const §58§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §!!O§:String = "ifz";
      
      private static const §]!$§:String = "inz";
      
      private static const § 4§:String = "ife";
      
      private static const §5k§:String = "ine";
      
      private static const §6b§:String = "ifg";
      
      private static const §1!4§:String = "ifl";
      
      private static const §==§:String = "ieg";
      
      private static const §%o§:String = "iel";
      
      private static const §=!?§:String = "els";
      
      private static const §%K§:String = "eif";
      
      private static const §=3§:String = "rep";
      
      private static const §0§:String = "erp";
      
      private static const §3?§:String = "brk";
      
      private static const §9"§:String = "kil";
      
      private static const §;E§:String = "tex";
      
      private static const §#!P§:String = "sge";
      
      private static const §'!"§:String = "slt";
      
      private static const §,f§:String = "sgn";
      
      private static const §!C§:String = "va";
      
      private static const §+S§:String = "vc";
      
      private static const §9>§:String = "vt";
      
      private static const §<k§:String = "op";
      
      private static const §!"§:String = "v";
      
      private static const §,Q§:String = "fc";
      
      private static const §?s§:String = "ft";
      
      private static const §`i§:String = "fs";
      
      private static const §3p§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §[!D§:String = "cube";
      
      private static const §!!P§:String = "mipnearest";
      
      private static const §9!?§:String = "miplinear";
      
      private static const §95§:String = "mipnone";
      
      private static const §&^§:String = "nomip";
      
      private static const §+n§:String = "nearest";
      
      private static const §9!<§:String = "linear";
      
      private static const §9!3§:String = "centroid";
      
      private static const §1#§:String = "single";
      
      private static const §]L§:String = "depth";
      
      private static const §?!6§:String = "repeat";
      
      private static const §"[§:String = "wrap";
      
      private static const §]!!§:String = "clamp";
       
      
      private var §!!K§:ByteArray = null;
      
      private var §=s§:String = "";
      
      private var §`M§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§`M§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §;4§[§3!%§] = new OpCode(§3!%§,2,0,0);
         §;4§[§+Y§] = new OpCode(§+Y§,3,1,0);
         §;4§[§"k§] = new OpCode(§"k§,3,2,0);
         §;4§[§@i§] = new OpCode(§@i§,3,3,0);
         §;4§[§!h§] = new OpCode(§!h§,3,4,0);
         §;4§[§7m§] = new OpCode(§7m§,2,5,0);
         §;4§[§5!A§] = new OpCode(§5!A§,3,6,0);
         §;4§[§9!J§] = new OpCode(§9!J§,3,7,0);
         §;4§[§7!M§] = new OpCode(§7!M§,2,8,0);
         §;4§[§1e§] = new OpCode(§1e§,2,9,0);
         §;4§[§?!=§] = new OpCode(§?!=§,2,10,0);
         §;4§[§-!5§] = new OpCode(§-!5§,3,11,0);
         §;4§[§'7§] = new OpCode(§'7§,2,12,0);
         §;4§[§0v§] = new OpCode(§0v§,2,13,0);
         §;4§[§%! §] = new OpCode(§%! §,2,14,0);
         §;4§[§%F§] = new OpCode(§%F§,2,15,0);
         §;4§[§[!O§] = new OpCode(§[!O§,2,16,0);
         §;4§[§!s§] = new OpCode(§!s§,3,17,0);
         §;4§[DP3] = new OpCode(DP3,3,18,0);
         §;4§[DP4] = new OpCode(DP4,3,19,0);
         §;4§[§<P§] = new OpCode(§<P§,2,20,0);
         §;4§[§?x§] = new OpCode(§?x§,2,21,0);
         §;4§[§58§] = new OpCode(§58§,2,22,0);
         §;4§[M33] = new OpCode(M33,3,23,§4^§);
         §;4§[M44] = new OpCode(M44,3,24,§4^§);
         §;4§[M34] = new OpCode(M34,3,25,§4^§);
         §;4§[§!!O§] = new OpCode(§!!O§,1,26,§<!,§ | §6j§ | §2S§);
         §;4§[§]!$§] = new OpCode(§]!$§,1,27,§<!,§ | §6j§ | §2S§);
         §;4§[§ 4§] = new OpCode(§ 4§,2,28,§<!,§ | §6j§ | §2S§);
         §;4§[§5k§] = new OpCode(§5k§,2,29,§<!,§ | §6j§ | §2S§);
         §;4§[§6b§] = new OpCode(§6b§,2,30,§<!,§ | §6j§ | §2S§);
         §;4§[§1!4§] = new OpCode(§1!4§,2,31,§<!,§ | §6j§ | §2S§);
         §;4§[§==§] = new OpCode(§==§,2,32,§<!,§ | §6j§ | §2S§);
         §;4§[§%o§] = new OpCode(§%o§,2,33,§<!,§ | §6j§ | §2S§);
         §;4§[§=!?§] = new OpCode(§=!?§,0,34,§<!,§ | §6j§ | §"O§);
         §;4§[§%K§] = new OpCode(§%K§,0,35,§<!,§ | §"O§);
         §;4§[§=3§] = new OpCode(§=3§,1,36,§<!,§ | §6j§ | §2S§);
         §;4§[§0§] = new OpCode(§0§,0,37,§<!,§ | §"O§);
         §;4§[§3?§] = new OpCode(§3?§,0,38,§<!,§);
         §;4§[§9"§] = new OpCode(§9"§,1,39,§<!,§ | § !#§);
         §;4§[§;E§] = new OpCode(§;E§,3,40,§ !#§ | §2Z§);
         §;4§[§#!P§] = new OpCode(§#!P§,3,41,0);
         §;4§[§'!"§] = new OpCode(§'!"§,3,42,0);
         §;4§[§,f§] = new OpCode(§,f§,2,43,0);
         §!e§[§!C§] = new Register(§!C§,"vertex attribute",0,7,§5a§ | §'!=§);
         §!e§[§+S§] = new Register(§+S§,"vertex constant",1,127,§5a§ | §'!=§);
         §!e§[§9>§] = new Register(§9>§,"vertex temporary",2,7,§5a§ | §%l§ | §'!=§);
         §!e§[§<k§] = new Register(§<k§,"vertex output",3,0,§5a§ | §%l§);
         §!e§[§!"§] = new Register(§!"§,"varying",4,7,§5a§ | §#1§ | §'!=§ | §%l§);
         §!e§[§,Q§] = new Register(§,Q§,"fragment constant",1,27,§#1§ | §'!=§);
         §!e§[§?s§] = new Register(§?s§,"fragment temporary",2,7,§#1§ | §%l§ | §'!=§);
         §!e§[§`i§] = new Register(§`i§,"texture sampler",5,7,§#1§ | §'!=§);
         §!e§[§3p§] = new Register(§3p§,"fragment output",3,0,§#1§ | §%l§);
         § var§[D2] = new Sampler(D2,§%H§,0);
         § var§[D3] = new Sampler(D3,§%H§,2);
         § var§[§[!D§] = new Sampler(§[!D§,§%H§,1);
         § var§[§!!P§] = new Sampler(§!!P§,§88§,1);
         § var§[§9!?§] = new Sampler(§9!?§,§88§,2);
         § var§[§95§] = new Sampler(§95§,§88§,0);
         § var§[§&^§] = new Sampler(§&^§,§88§,0);
         § var§[§+n§] = new Sampler(§+n§,§`!4§,0);
         § var§[§9!<§] = new Sampler(§9!<§,§`!4§,1);
         § var§[§9!3§] = new Sampler(§9!3§,§'9§,1 << 0);
         § var§[§1#§] = new Sampler(§1#§,§'9§,1 << 1);
         § var§[§]L§] = new Sampler(§]L§,§'9§,1 << 2);
         § var§[§?!6§] = new Sampler(§?!6§,§=i§,1);
         § var§[§"[§] = new Sampler(§"[§,§=i§,1);
         § var§[§]!!§] = new Sampler(§]!!§,§=i§,0);
      }
      
      public function get error() : String
      {
         return this.§=s§;
      }
      
      public function get §!`§() : ByteArray
      {
         return this.§!!K§;
      }
      
      public function §!o§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§!!K§ = new ByteArray();
         this.§=s§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§=s§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§!`§.endian = Endian.LITTLE_ENDIAN;
         this.§!`§.writeByte(160);
         this.§!`§.writeUnsignedInt(1);
         this.§!`§.writeByte(161);
         this.§!`§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§=s§ == "")
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
            _loc16_ = §;4§[_loc15_[0]];
            if(!this.§`M§)
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
               if(_loc16_.flags & §"O§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§=s§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §6j§)
               {
                  _loc7_++;
                  if(_loc7_ > §4f§)
                  {
                     this.§=s§ = "error: nesting to deep, maximum allowed is " + §4f§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & § !#§ && !_loc5_)
               {
                  this.§=s§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§!`§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §!L§)
               {
                  this.§=s§ = "error: too many opcodes. maximum is " + §!L§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§=s§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §!e§[_loc24_[0]];
                  if(!this.§`M§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§=s§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §#1§))
                     {
                        this.§=s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§=s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §5a§))
                  {
                     this.§=s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§=s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §<!,§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §2Z§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§=s§ = "error: relative can not be destination";
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
                     if((_loc39_ = §!e§[_loc38_[0]]) == null)
                     {
                        this.§=s§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§=s§ = "error: bad index register select";
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
                        this.§=s§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§!`§.writeShort(_loc27_);
                     this.§!`§.writeByte(_loc28_);
                     this.§!`§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = § var§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §'9§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§!`§.writeShort(_loc27_);
                     this.§!`§.writeByte(int(_loc44_ * 8));
                     this.§!`§.writeByte(0);
                     this.§!`§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§!`§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§!`§.writeShort(_loc27_);
                     this.§!`§.writeByte(_loc34_);
                     this.§!`§.writeByte(_loc28_);
                     this.§!`§.writeByte(_loc25_.emitCode);
                     this.§!`§.writeByte(_loc32_);
                     this.§!`§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§!`§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§=s§ != "")
         {
            this.§=s§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§!`§.length = 0;
         }
         if(this.§`M§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§!`§.length;
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
               if((_loc49_ = this.§!`§[_loc48_].toString(16)).length < 2)
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
         return this.§!`§;
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
