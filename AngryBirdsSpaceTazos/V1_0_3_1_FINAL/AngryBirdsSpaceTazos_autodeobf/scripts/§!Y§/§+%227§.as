package §!Y§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §+"7§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §>"G§:Dictionary = new Dictionary();
      
      private static const §#K§:Dictionary = new Dictionary();
      
      private static const §^S§:Dictionary = new Dictionary();
      
      private static const §6!8§:int = 4;
      
      private static const §""?§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §`_§:uint = 12;
      
      private static const §'"G§:uint = 16;
      
      private static const §;I§:uint = 20;
      
      private static const §,!l§:uint = 24;
      
      private static const §,C§:uint = 28;
      
      private static const §<!j§:uint = 1;
      
      private static const §;q§:uint = 2;
      
      private static const §%!e§:uint = 32;
      
      private static const §^!F§:uint = 64;
      
      private static const §]"'§:uint = 1;
      
      private static const §^"F§:uint = 2;
      
      private static const §4!7§:uint = 4;
      
      private static const §3L§:uint = 8;
      
      private static const §=!?§:uint = 16;
      
      private static const §8!%§:uint = 32;
      
      private static const §9!o§:uint = 128;
      
      private static const §;!?§:String = "mov";
      
      private static const §0r§:String = "add";
      
      private static const §`!m§:String = "sub";
      
      private static const §<E§:String = "mul";
      
      private static const §+"&§:String = "div";
      
      private static const §'"7§:String = "rcp";
      
      private static const §^!h§:String = "min";
      
      private static const § each§:String = "max";
      
      private static const §,z§:String = "frc";
      
      private static const §`!M§:String = "sqt";
      
      private static const §%"6§:String = "rsq";
      
      private static const §?l§:String = "pow";
      
      private static const §3![§:String = "log";
      
      private static const §%!r§:String = "exp";
      
      private static const §81§:String = "nrm";
      
      private static const §1Z§:String = "sin";
      
      private static const §`!'§:String = "cos";
      
      private static const §true §:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §3a§:String = "abs";
      
      private static const §%!?§:String = "neg";
      
      private static const §9"7§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const § O§:String = "ifz";
      
      private static const §^^§:String = "inz";
      
      private static const §-!L§:String = "ife";
      
      private static const §;!_§:String = "ine";
      
      private static const §8"!§:String = "ifg";
      
      private static const §1u§:String = "ifl";
      
      private static const § in§:String = "ieg";
      
      private static const §[=§:String = "iel";
      
      private static const §%"8§:String = "els";
      
      private static const §93§:String = "eif";
      
      private static const §#Q§:String = "rep";
      
      private static const §6!c§:String = "erp";
      
      private static const §8V§:String = "brk";
      
      private static const §>!b§:String = "kil";
      
      private static const §+"?§:String = "tex";
      
      private static const § 2§:String = "sge";
      
      private static const §^!P§:String = "slt";
      
      private static const §+!K§:String = "sgn";
      
      private static const include:String = "va";
      
      private static const §+u§:String = "vc";
      
      private static const §>!L§:String = "vt";
      
      private static const §6!>§:String = "op";
      
      private static const V:String = "v";
      
      private static const §>B§:String = "fc";
      
      private static const §#!1§:String = "ft";
      
      private static const §5!6§:String = "fs";
      
      private static const §'n§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §@!B§:String = "cube";
      
      private static const §@'§:String = "mipnearest";
      
      private static const §>%§:String = "miplinear";
      
      private static const §+G§:String = "mipnone";
      
      private static const §4!<§:String = "nomip";
      
      private static const §?!8§:String = "nearest";
      
      private static const §5l§:String = "linear";
      
      private static const §'!7§:String = "centroid";
      
      private static const §6y§:String = "single";
      
      private static const §"!D§:String = "depth";
      
      private static const §;!3§:String = "repeat";
      
      private static const §&"&§:String = "wrap";
      
      private static const §3"=§:String = "clamp";
       
      
      private var §@!`§:ByteArray = null;
      
      private var §?"0§:String = "";
      
      private var §^!W§:Boolean = false;
      
      public function §+"7§(param1:Boolean = false)
      {
         super();
         this.§^!W§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §>"G§[§;!?§] = new OpCode(§;!?§,2,0,0);
         §>"G§[§0r§] = new OpCode(§0r§,3,1,0);
         §>"G§[§`!m§] = new OpCode(§`!m§,3,2,0);
         §>"G§[§<E§] = new OpCode(§<E§,3,3,0);
         §>"G§[§+"&§] = new OpCode(§+"&§,3,4,0);
         §>"G§[§'"7§] = new OpCode(§'"7§,2,5,0);
         §>"G§[§^!h§] = new OpCode(§^!h§,3,6,0);
         §>"G§[§ each§] = new OpCode(§ each§,3,7,0);
         §>"G§[§,z§] = new OpCode(§,z§,2,8,0);
         §>"G§[§`!M§] = new OpCode(§`!M§,2,9,0);
         §>"G§[§%"6§] = new OpCode(§%"6§,2,10,0);
         §>"G§[§?l§] = new OpCode(§?l§,3,11,0);
         §>"G§[§3![§] = new OpCode(§3![§,2,12,0);
         §>"G§[§%!r§] = new OpCode(§%!r§,2,13,0);
         §>"G§[§81§] = new OpCode(§81§,2,14,0);
         §>"G§[§1Z§] = new OpCode(§1Z§,2,15,0);
         §>"G§[§`!'§] = new OpCode(§`!'§,2,16,0);
         §>"G§[§true §] = new OpCode(§true §,3,17,0);
         §>"G§[DP3] = new OpCode(DP3,3,18,0);
         §>"G§[DP4] = new OpCode(DP4,3,19,0);
         §>"G§[§3a§] = new OpCode(§3a§,2,20,0);
         §>"G§[§%!?§] = new OpCode(§%!?§,2,21,0);
         §>"G§[§9"7§] = new OpCode(§9"7§,2,22,0);
         §>"G§[M33] = new OpCode(M33,3,23,§=!?§);
         §>"G§[M44] = new OpCode(M44,3,24,§=!?§);
         §>"G§[M34] = new OpCode(M34,3,25,§=!?§);
         §>"G§[§ O§] = new OpCode(§ O§,1,26,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§^^§] = new OpCode(§^^§,1,27,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§-!L§] = new OpCode(§-!L§,2,28,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§;!_§] = new OpCode(§;!_§,2,29,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§8"!§] = new OpCode(§8"!§,2,30,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§1u§] = new OpCode(§1u§,2,31,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§ in§] = new OpCode(§ in§,2,32,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§[=§] = new OpCode(§[=§,2,33,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§%"8§] = new OpCode(§%"8§,0,34,§9!o§ | §^"F§ | §4!7§);
         §>"G§[§93§] = new OpCode(§93§,0,35,§9!o§ | §4!7§);
         §>"G§[§#Q§] = new OpCode(§#Q§,1,36,§9!o§ | §^"F§ | §]"'§);
         §>"G§[§6!c§] = new OpCode(§6!c§,0,37,§9!o§ | §4!7§);
         §>"G§[§8V§] = new OpCode(§8V§,0,38,§9!o§);
         §>"G§[§>!b§] = new OpCode(§>!b§,1,39,§9!o§ | §8!%§);
         §>"G§[§+"?§] = new OpCode(§+"?§,3,40,§8!%§ | §3L§);
         §>"G§[§ 2§] = new OpCode(§ 2§,3,41,0);
         §>"G§[§^!P§] = new OpCode(§^!P§,3,42,0);
         §>"G§[§+!K§] = new OpCode(§+!K§,2,43,0);
         §#K§[include] = new Register(include,"vertex attribute",0,7,§^!F§ | §;q§);
         §#K§[§+u§] = new Register(§+u§,"vertex constant",1,127,§^!F§ | §;q§);
         §#K§[§>!L§] = new Register(§>!L§,"vertex temporary",2,7,§^!F§ | §<!j§ | §;q§);
         §#K§[§6!>§] = new Register(§6!>§,"vertex output",3,0,§^!F§ | §<!j§);
         §#K§[V] = new Register(V,"varying",4,7,§^!F§ | §%!e§ | §;q§ | §<!j§);
         §#K§[§>B§] = new Register(§>B§,"fragment constant",1,27,§%!e§ | §;q§);
         §#K§[§#!1§] = new Register(§#!1§,"fragment temporary",2,7,§%!e§ | §<!j§ | §;q§);
         §#K§[§5!6§] = new Register(§5!6§,"texture sampler",5,7,§%!e§ | §;q§);
         §#K§[§'n§] = new Register(§'n§,"fragment output",3,0,§%!e§ | §<!j§);
         §^S§[D2] = new Sampler(D2,§`_§,0);
         §^S§[D3] = new Sampler(D3,§`_§,2);
         §^S§[§@!B§] = new Sampler(§@!B§,§`_§,1);
         §^S§[§@'§] = new Sampler(§@'§,§,!l§,1);
         §^S§[§>%§] = new Sampler(§>%§,§,!l§,2);
         §^S§[§+G§] = new Sampler(§+G§,§,!l§,0);
         §^S§[§4!<§] = new Sampler(§4!<§,§,!l§,0);
         §^S§[§?!8§] = new Sampler(§?!8§,§,C§,0);
         §^S§[§5l§] = new Sampler(§5l§,§,C§,1);
         §^S§[§'!7§] = new Sampler(§'!7§,§'"G§,1 << 0);
         §^S§[§6y§] = new Sampler(§6y§,§'"G§,1 << 1);
         §^S§[§"!D§] = new Sampler(§"!D§,§'"G§,1 << 2);
         §^S§[§;!3§] = new Sampler(§;!3§,§;I§,1);
         §^S§[§&"&§] = new Sampler(§&"&§,§;I§,1);
         §^S§[§3"=§] = new Sampler(§3"=§,§;I§,0);
      }
      
      public function get error() : String
      {
         return this.§?"0§;
      }
      
      public function get §;!=§() : ByteArray
      {
         return this.§@!`§;
      }
      
      public function §3!Y§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§@!`§ = new ByteArray();
         this.§?"0§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§?"0§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§;!=§.endian = Endian.LITTLE_ENDIAN;
         this.§;!=§.writeByte(160);
         this.§;!=§.writeUnsignedInt(1);
         this.§;!=§.writeByte(161);
         this.§;!=§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§?"0§ == "")
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
            _loc16_ = §>"G§[_loc15_[0]];
            if(!this.§^!W§)
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
               if(_loc16_.flags & §4!7§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§?"0§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §^"F§)
               {
                  _loc7_++;
                  if(_loc7_ > §6!8§)
                  {
                     this.§?"0§ = "error: nesting to deep, maximum allowed is " + §6!8§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §8!%§ && !_loc5_)
               {
                  this.§?"0§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§;!=§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §""?§)
               {
                  this.§?"0§ = "error: too many opcodes. maximum is " + §""?§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§?"0§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §#K§[_loc24_[0]];
                  if(!this.§^!W§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§?"0§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §%!e§))
                     {
                        this.§?"0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§?"0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §^!F§))
                  {
                     this.§?"0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§?"0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §9!o§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §3L§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§?"0§ = "error: relative can not be destination";
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
                     if((_loc39_ = §#K§[_loc38_[0]]) == null)
                     {
                        this.§?"0§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§?"0§ = "error: bad index register select";
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
                        this.§?"0§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§;!=§.writeShort(_loc27_);
                     this.§;!=§.writeByte(_loc28_);
                     this.§;!=§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §^S§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §'"G§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§;!=§.writeShort(_loc27_);
                     this.§;!=§.writeByte(int(_loc44_ * 8));
                     this.§;!=§.writeByte(0);
                     this.§;!=§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§;!=§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§;!=§.writeShort(_loc27_);
                     this.§;!=§.writeByte(_loc34_);
                     this.§;!=§.writeByte(_loc28_);
                     this.§;!=§.writeByte(_loc25_.emitCode);
                     this.§;!=§.writeByte(_loc32_);
                     this.§;!=§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§;!=§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§?"0§ != "")
         {
            this.§?"0§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§;!=§.length = 0;
         }
         if(this.§^!W§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§;!=§.length;
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
               if((_loc49_ = this.§;!=§[_loc48_].toString(16)).length < 2)
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
         return this.§;!=§;
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
