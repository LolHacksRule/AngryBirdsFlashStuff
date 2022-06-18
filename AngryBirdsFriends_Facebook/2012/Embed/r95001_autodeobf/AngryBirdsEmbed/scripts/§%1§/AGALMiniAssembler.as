package §%1§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §7x§:Dictionary = new Dictionary();
      
      private static const §9w§:Dictionary = new Dictionary();
      
      private static const §3f§:Dictionary = new Dictionary();
      
      private static const §[A§:int = 4;
      
      private static const §@P§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §[X§:uint = 12;
      
      private static const §-!%§:uint = 16;
      
      private static const §<z§:uint = 20;
      
      private static const §-! §:uint = 24;
      
      private static const §3O§:uint = 28;
      
      private static const §<1§:uint = 1;
      
      private static const §2d§:uint = 2;
      
      private static const §6_§:uint = 32;
      
      private static const §]g§:uint = 64;
      
      private static const §';§:uint = 1;
      
      private static const §1Y§:uint = 2;
      
      private static const §@!4§:uint = 4;
      
      private static const §^!A§:uint = 8;
      
      private static const § !1§:uint = 16;
      
      private static const §<`§:uint = 32;
      
      private static const §-!3§:uint = 128;
      
      private static const §4y§:String = "mov";
      
      private static const §?o§:String = "add";
      
      private static const §8C§:String = "sub";
      
      private static const §`8§:String = "mul";
      
      private static const §&!'§:String = "div";
      
      private static const §8!F§:String = "rcp";
      
      private static const §<x§:String = "min";
      
      private static const §?V§:String = "max";
      
      private static const §'j§:String = "frc";
      
      private static const § !E§:String = "sqt";
      
      private static const §?!9§:String = "rsq";
      
      private static const §1!0§:String = "pow";
      
      private static const §,!8§:String = "log";
      
      private static const §?H§:String = "exp";
      
      private static const §=5§:String = "nrm";
      
      private static const §'Q§:String = "sin";
      
      private static const §,L§:String = "cos";
      
      private static const §%%§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §&p§:String = "abs";
      
      private static const §3y§:String = "neg";
      
      private static const §,!F§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §5!;§:String = "ifz";
      
      private static const §0g§:String = "inz";
      
      private static const §>k§:String = "ife";
      
      private static const §[!?§:String = "ine";
      
      private static const §>;§:String = "ifg";
      
      private static const § !-§:String = "ifl";
      
      private static const §%N§:String = "ieg";
      
      private static const §^y§:String = "iel";
      
      private static const §?0§:String = "els";
      
      private static const §while§:String = "eif";
      
      private static const §6j§:String = "rep";
      
      private static const § x§:String = "erp";
      
      private static const §@!D§:String = "brk";
      
      private static const §&N§:String = "kil";
      
      private static const §6]§:String = "tex";
      
      private static const §5f§:String = "sge";
      
      private static const §5"§:String = "slt";
      
      private static const §6§:String = "sgn";
      
      private static const §;,§:String = "va";
      
      private static const §@!E§:String = "vc";
      
      private static const § set§:String = "vt";
      
      private static const §]C§:String = "op";
      
      private static const §?i§:String = "v";
      
      private static const §]H§:String = "fc";
      
      private static const §8F§:String = "ft";
      
      private static const §85§:String = "fs";
      
      private static const §>0§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §!s§:String = "cube";
      
      private static const §,!9§:String = "mipnearest";
      
      private static const §#!%§:String = "miplinear";
      
      private static const §,!!§:String = "mipnone";
      
      private static const §1@§:String = "nomip";
      
      private static const §6R§:String = "nearest";
      
      private static const §^V§:String = "linear";
      
      private static const §5n§:String = "centroid";
      
      private static const §0O§:String = "single";
      
      private static const §[4§:String = "depth";
      
      private static const §7c§:String = "repeat";
      
      private static const §0y§:String = "wrap";
      
      private static const §6C§:String = "clamp";
       
      
      private var §6O§:ByteArray = null;
      
      private var §%5§:String = "";
      
      private var §3@§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§3@§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §7x§[§4y§] = new OpCode(§4y§,2,0,0);
         §7x§[§?o§] = new OpCode(§?o§,3,1,0);
         §7x§[§8C§] = new OpCode(§8C§,3,2,0);
         §7x§[§`8§] = new OpCode(§`8§,3,3,0);
         §7x§[§&!'§] = new OpCode(§&!'§,3,4,0);
         §7x§[§8!F§] = new OpCode(§8!F§,2,5,0);
         §7x§[§<x§] = new OpCode(§<x§,3,6,0);
         §7x§[§?V§] = new OpCode(§?V§,3,7,0);
         §7x§[§'j§] = new OpCode(§'j§,2,8,0);
         §7x§[§ !E§] = new OpCode(§ !E§,2,9,0);
         §7x§[§?!9§] = new OpCode(§?!9§,2,10,0);
         §7x§[§1!0§] = new OpCode(§1!0§,3,11,0);
         §7x§[§,!8§] = new OpCode(§,!8§,2,12,0);
         §7x§[§?H§] = new OpCode(§?H§,2,13,0);
         §7x§[§=5§] = new OpCode(§=5§,2,14,0);
         §7x§[§'Q§] = new OpCode(§'Q§,2,15,0);
         §7x§[§,L§] = new OpCode(§,L§,2,16,0);
         §7x§[§%%§] = new OpCode(§%%§,3,17,0);
         §7x§[DP3] = new OpCode(DP3,3,18,0);
         §7x§[DP4] = new OpCode(DP4,3,19,0);
         §7x§[§&p§] = new OpCode(§&p§,2,20,0);
         §7x§[§3y§] = new OpCode(§3y§,2,21,0);
         §7x§[§,!F§] = new OpCode(§,!F§,2,22,0);
         §7x§[M33] = new OpCode(M33,3,23,§ !1§);
         §7x§[M44] = new OpCode(M44,3,24,§ !1§);
         §7x§[M34] = new OpCode(M34,3,25,§ !1§);
         §7x§[§5!;§] = new OpCode(§5!;§,1,26,§-!3§ | §1Y§ | §';§);
         §7x§[§0g§] = new OpCode(§0g§,1,27,§-!3§ | §1Y§ | §';§);
         §7x§[§>k§] = new OpCode(§>k§,2,28,§-!3§ | §1Y§ | §';§);
         §7x§[§[!?§] = new OpCode(§[!?§,2,29,§-!3§ | §1Y§ | §';§);
         §7x§[§>;§] = new OpCode(§>;§,2,30,§-!3§ | §1Y§ | §';§);
         §7x§[§ !-§] = new OpCode(§ !-§,2,31,§-!3§ | §1Y§ | §';§);
         §7x§[§%N§] = new OpCode(§%N§,2,32,§-!3§ | §1Y§ | §';§);
         §7x§[§^y§] = new OpCode(§^y§,2,33,§-!3§ | §1Y§ | §';§);
         §7x§[§?0§] = new OpCode(§?0§,0,34,§-!3§ | §1Y§ | §@!4§);
         §7x§[§while§] = new OpCode(§while§,0,35,§-!3§ | §@!4§);
         §7x§[§6j§] = new OpCode(§6j§,1,36,§-!3§ | §1Y§ | §';§);
         §7x§[§ x§] = new OpCode(§ x§,0,37,§-!3§ | §@!4§);
         §7x§[§@!D§] = new OpCode(§@!D§,0,38,§-!3§);
         §7x§[§&N§] = new OpCode(§&N§,1,39,§-!3§ | §<`§);
         §7x§[§6]§] = new OpCode(§6]§,3,40,§<`§ | §^!A§);
         §7x§[§5f§] = new OpCode(§5f§,3,41,0);
         §7x§[§5"§] = new OpCode(§5"§,3,42,0);
         §7x§[§6§] = new OpCode(§6§,2,43,0);
         §9w§[§;,§] = new Register(§;,§,"vertex attribute",0,7,§]g§ | §2d§);
         §9w§[§@!E§] = new Register(§@!E§,"vertex constant",1,127,§]g§ | §2d§);
         §9w§[§ set§] = new Register(§ set§,"vertex temporary",2,7,§]g§ | §<1§ | §2d§);
         §9w§[§]C§] = new Register(§]C§,"vertex output",3,0,§]g§ | §<1§);
         §9w§[§?i§] = new Register(§?i§,"varying",4,7,§]g§ | §6_§ | §2d§ | §<1§);
         §9w§[§]H§] = new Register(§]H§,"fragment constant",1,27,§6_§ | §2d§);
         §9w§[§8F§] = new Register(§8F§,"fragment temporary",2,7,§6_§ | §<1§ | §2d§);
         §9w§[§85§] = new Register(§85§,"texture sampler",5,7,§6_§ | §2d§);
         §9w§[§>0§] = new Register(§>0§,"fragment output",3,0,§6_§ | §<1§);
         §3f§[D2] = new Sampler(D2,§[X§,0);
         §3f§[D3] = new Sampler(D3,§[X§,2);
         §3f§[§!s§] = new Sampler(§!s§,§[X§,1);
         §3f§[§,!9§] = new Sampler(§,!9§,§-! §,1);
         §3f§[§#!%§] = new Sampler(§#!%§,§-! §,2);
         §3f§[§,!!§] = new Sampler(§,!!§,§-! §,0);
         §3f§[§1@§] = new Sampler(§1@§,§-! §,0);
         §3f§[§6R§] = new Sampler(§6R§,§3O§,0);
         §3f§[§^V§] = new Sampler(§^V§,§3O§,1);
         §3f§[§5n§] = new Sampler(§5n§,§-!%§,1 << 0);
         §3f§[§0O§] = new Sampler(§0O§,§-!%§,1 << 1);
         §3f§[§[4§] = new Sampler(§[4§,§-!%§,1 << 2);
         §3f§[§7c§] = new Sampler(§7c§,§<z§,1);
         §3f§[§0y§] = new Sampler(§0y§,§<z§,1);
         §3f§[§6C§] = new Sampler(§6C§,§<z§,0);
      }
      
      public function get error() : String
      {
         return this.§%5§;
      }
      
      public function get §]G§() : ByteArray
      {
         return this.§6O§;
      }
      
      public function §;!@§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§6O§ = new ByteArray();
         this.§%5§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§%5§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§]G§.endian = Endian.LITTLE_ENDIAN;
         this.§]G§.writeByte(160);
         this.§]G§.writeUnsignedInt(1);
         this.§]G§.writeByte(161);
         this.§]G§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§%5§ == "")
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
            _loc16_ = §7x§[_loc15_[0]];
            if(!this.§3@§)
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
               if(_loc16_.flags & §@!4§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§%5§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §1Y§)
               {
                  _loc7_++;
                  if(_loc7_ > §[A§)
                  {
                     this.§%5§ = "error: nesting to deep, maximum allowed is " + §[A§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §<`§ && !_loc5_)
               {
                  this.§%5§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§]G§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §@P§)
               {
                  this.§%5§ = "error: too many opcodes. maximum is " + §@P§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§%5§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §9w§[_loc24_[0]];
                  if(!this.§3@§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§%5§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §6_§))
                     {
                        this.§%5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§%5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]g§))
                  {
                     this.§%5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§%5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §-!3§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §^!A§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§%5§ = "error: relative can not be destination";
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
                     if((_loc39_ = §9w§[_loc38_[0]]) == null)
                     {
                        this.§%5§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§%5§ = "error: bad index register select";
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
                        this.§%5§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§]G§.writeShort(_loc27_);
                     this.§]G§.writeByte(_loc28_);
                     this.§]G§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §3f§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §-!%§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§]G§.writeShort(_loc27_);
                     this.§]G§.writeByte(int(_loc44_ * 8));
                     this.§]G§.writeByte(0);
                     this.§]G§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§]G§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§]G§.writeShort(_loc27_);
                     this.§]G§.writeByte(_loc34_);
                     this.§]G§.writeByte(_loc28_);
                     this.§]G§.writeByte(_loc25_.emitCode);
                     this.§]G§.writeByte(_loc32_);
                     this.§]G§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§]G§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§%5§ != "")
         {
            this.§%5§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§]G§.length = 0;
         }
         if(this.§3@§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§]G§.length;
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
               if((_loc49_ = this.§]G§[_loc48_].toString(16)).length < 2)
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
         return this.§]G§;
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
