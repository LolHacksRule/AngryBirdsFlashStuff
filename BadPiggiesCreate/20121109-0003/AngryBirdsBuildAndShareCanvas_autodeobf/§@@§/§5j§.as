package §@@§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §5j§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § `§:Dictionary = new Dictionary();
      
      private static const § !K§:Dictionary = new Dictionary();
      
      private static const §>";§:Dictionary = new Dictionary();
      
      private static const §>"#§:int = 4;
      
      private static const §#!o§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!!D§:uint = 12;
      
      private static const §8!%§:uint = 16;
      
      private static const §2+§:uint = 20;
      
      private static const §3f§:uint = 24;
      
      private static const §4!k§:uint = 28;
      
      private static const §-j§:uint = 1;
      
      private static const §4,§:uint = 2;
      
      private static const §"@§:uint = 32;
      
      private static const §0!H§:uint = 64;
      
      private static const §5?§:uint = 1;
      
      private static const §4F§:uint = 2;
      
      private static const §&!J§:uint = 4;
      
      private static const §>U§:uint = 8;
      
      private static const §+!K§:uint = 16;
      
      private static const §@!$§:uint = 32;
      
      private static const §]U§:uint = 128;
      
      private static const §#2§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §5&§:String = "sub";
      
      private static const §5!+§:String = "mul";
      
      private static const §#!`§:String = "div";
      
      private static const §,A§:String = "rcp";
      
      private static const §]+§:String = "min";
      
      private static const §9t§:String = "max";
      
      private static const §3t§:String = "frc";
      
      private static const §&[§:String = "sqt";
      
      private static const §9!%§:String = "rsq";
      
      private static const §`&§:String = "pow";
      
      private static const §!U§:String = "log";
      
      private static const §@!_§:String = "exp";
      
      private static const §=!K§:String = "nrm";
      
      private static const §7!=§:String = "sin";
      
      private static const §@!b§:String = "cos";
      
      private static const §true§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § do§:String = "abs";
      
      private static const §@I§:String = "neg";
      
      private static const §4"1§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §9!9§:String = "ifz";
      
      private static const §1`§:String = "inz";
      
      private static const §#!u§:String = "ife";
      
      private static const §-!W§:String = "ine";
      
      private static const §]m§:String = "ifg";
      
      private static const §+_§:String = "ifl";
      
      private static const §3y§:String = "ieg";
      
      private static const §%@§:String = "iel";
      
      private static const §9!a§:String = "els";
      
      private static const §3!D§:String = "eif";
      
      private static const §2!O§:String = "rep";
      
      private static const §=!^§:String = "erp";
      
      private static const §]!<§:String = "brk";
      
      private static const §=!D§:String = "kil";
      
      private static const §>!w§:String = "tex";
      
      private static const §`I§:String = "sge";
      
      private static const §]!l§:String = "slt";
      
      private static const §4!c§:String = "sgn";
      
      private static const §?!n§:String = "va";
      
      private static const §?!7§:String = "vc";
      
      private static const §3=§:String = "vt";
      
      private static const § x§:String = "op";
      
      private static const V:String = "v";
      
      private static const §4+§:String = "fc";
      
      private static const §,v§:String = "ft";
      
      private static const §%G§:String = "fs";
      
      private static const §3b§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §0!L§:String = "cube";
      
      private static const §=!q§:String = "mipnearest";
      
      private static const §%t§:String = "miplinear";
      
      private static const §]X§:String = "mipnone";
      
      private static const §3"?§:String = "nomip";
      
      private static const §+!#§:String = "nearest";
      
      private static const §@r§:String = "linear";
      
      private static const §6Z§:String = "centroid";
      
      private static const §0!s§:String = "single";
      
      private static const §6!n§:String = "depth";
      
      private static const §"!=§:String = "repeat";
      
      private static const §!i§:String = "wrap";
      
      private static const §<!?§:String = "clamp";
       
      
      private var §^Y§:ByteArray = null;
      
      private var §]t§:String = "";
      
      private var §?`§:Boolean = false;
      
      public function §5j§(param1:Boolean = false)
      {
         super();
         this.§?`§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         § `§[§#2§] = new OpCode(§#2§,2,0,0);
         § `§[ADD] = new OpCode(ADD,3,1,0);
         § `§[§5&§] = new OpCode(§5&§,3,2,0);
         § `§[§5!+§] = new OpCode(§5!+§,3,3,0);
         § `§[§#!`§] = new OpCode(§#!`§,3,4,0);
         § `§[§,A§] = new OpCode(§,A§,2,5,0);
         § `§[§]+§] = new OpCode(§]+§,3,6,0);
         § `§[§9t§] = new OpCode(§9t§,3,7,0);
         § `§[§3t§] = new OpCode(§3t§,2,8,0);
         § `§[§&[§] = new OpCode(§&[§,2,9,0);
         § `§[§9!%§] = new OpCode(§9!%§,2,10,0);
         § `§[§`&§] = new OpCode(§`&§,3,11,0);
         § `§[§!U§] = new OpCode(§!U§,2,12,0);
         § `§[§@!_§] = new OpCode(§@!_§,2,13,0);
         § `§[§=!K§] = new OpCode(§=!K§,2,14,0);
         § `§[§7!=§] = new OpCode(§7!=§,2,15,0);
         § `§[§@!b§] = new OpCode(§@!b§,2,16,0);
         § `§[§true§] = new OpCode(§true§,3,17,0);
         § `§[DP3] = new OpCode(DP3,3,18,0);
         § `§[DP4] = new OpCode(DP4,3,19,0);
         § `§[§ do§] = new OpCode(§ do§,2,20,0);
         § `§[§@I§] = new OpCode(§@I§,2,21,0);
         § `§[§4"1§] = new OpCode(§4"1§,2,22,0);
         § `§[M33] = new OpCode(M33,3,23,§+!K§);
         § `§[M44] = new OpCode(M44,3,24,§+!K§);
         § `§[M34] = new OpCode(M34,3,25,§+!K§);
         § `§[§9!9§] = new OpCode(§9!9§,1,26,§]U§ | §4F§ | §5?§);
         § `§[§1`§] = new OpCode(§1`§,1,27,§]U§ | §4F§ | §5?§);
         § `§[§#!u§] = new OpCode(§#!u§,2,28,§]U§ | §4F§ | §5?§);
         § `§[§-!W§] = new OpCode(§-!W§,2,29,§]U§ | §4F§ | §5?§);
         § `§[§]m§] = new OpCode(§]m§,2,30,§]U§ | §4F§ | §5?§);
         § `§[§+_§] = new OpCode(§+_§,2,31,§]U§ | §4F§ | §5?§);
         § `§[§3y§] = new OpCode(§3y§,2,32,§]U§ | §4F§ | §5?§);
         § `§[§%@§] = new OpCode(§%@§,2,33,§]U§ | §4F§ | §5?§);
         § `§[§9!a§] = new OpCode(§9!a§,0,34,§]U§ | §4F§ | §&!J§);
         § `§[§3!D§] = new OpCode(§3!D§,0,35,§]U§ | §&!J§);
         § `§[§2!O§] = new OpCode(§2!O§,1,36,§]U§ | §4F§ | §5?§);
         § `§[§=!^§] = new OpCode(§=!^§,0,37,§]U§ | §&!J§);
         § `§[§]!<§] = new OpCode(§]!<§,0,38,§]U§);
         § `§[§=!D§] = new OpCode(§=!D§,1,39,§]U§ | §@!$§);
         § `§[§>!w§] = new OpCode(§>!w§,3,40,§@!$§ | §>U§);
         § `§[§`I§] = new OpCode(§`I§,3,41,0);
         § `§[§]!l§] = new OpCode(§]!l§,3,42,0);
         § `§[§4!c§] = new OpCode(§4!c§,2,43,0);
         § !K§[§?!n§] = new Register(§?!n§,"vertex attribute",0,7,§0!H§ | §4,§);
         § !K§[§?!7§] = new Register(§?!7§,"vertex constant",1,127,§0!H§ | §4,§);
         § !K§[§3=§] = new Register(§3=§,"vertex temporary",2,7,§0!H§ | §-j§ | §4,§);
         § !K§[§ x§] = new Register(§ x§,"vertex output",3,0,§0!H§ | §-j§);
         § !K§[V] = new Register(V,"varying",4,7,§0!H§ | §"@§ | §4,§ | §-j§);
         § !K§[§4+§] = new Register(§4+§,"fragment constant",1,27,§"@§ | §4,§);
         § !K§[§,v§] = new Register(§,v§,"fragment temporary",2,7,§"@§ | §-j§ | §4,§);
         § !K§[§%G§] = new Register(§%G§,"texture sampler",5,7,§"@§ | §4,§);
         § !K§[§3b§] = new Register(§3b§,"fragment output",3,0,§"@§ | §-j§);
         §>";§[D2] = new Sampler(D2,§!!D§,0);
         §>";§[D3] = new Sampler(D3,§!!D§,2);
         §>";§[§0!L§] = new Sampler(§0!L§,§!!D§,1);
         §>";§[§=!q§] = new Sampler(§=!q§,§3f§,1);
         §>";§[§%t§] = new Sampler(§%t§,§3f§,2);
         §>";§[§]X§] = new Sampler(§]X§,§3f§,0);
         §>";§[§3"?§] = new Sampler(§3"?§,§3f§,0);
         §>";§[§+!#§] = new Sampler(§+!#§,§4!k§,0);
         §>";§[§@r§] = new Sampler(§@r§,§4!k§,1);
         §>";§[§6Z§] = new Sampler(§6Z§,§8!%§,1 << 0);
         §>";§[§0!s§] = new Sampler(§0!s§,§8!%§,1 << 1);
         §>";§[§6!n§] = new Sampler(§6!n§,§8!%§,1 << 2);
         §>";§[§"!=§] = new Sampler(§"!=§,§2+§,1);
         §>";§[§!i§] = new Sampler(§!i§,§2+§,1);
         §>";§[§<!?§] = new Sampler(§<!?§,§2+§,0);
      }
      
      public function get error() : String
      {
         return this.§]t§;
      }
      
      public function get §;h§() : ByteArray
      {
         return this.§^Y§;
      }
      
      public function §^j§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§^Y§ = new ByteArray();
         this.§]t§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§]t§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§;h§.endian = Endian.LITTLE_ENDIAN;
         this.§;h§.writeByte(160);
         this.§;h§.writeUnsignedInt(1);
         this.§;h§.writeByte(161);
         this.§;h§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§]t§ == "")
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
            _loc16_ = § `§[_loc15_[0]];
            if(!this.§?`§)
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
               if(_loc16_.flags & §&!J§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§]t§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §4F§)
               {
                  _loc7_++;
                  if(_loc7_ > §>"#§)
                  {
                     this.§]t§ = "error: nesting to deep, maximum allowed is " + §>"#§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §@!$§ && !_loc5_)
               {
                  this.§]t§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§;h§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §#!o§)
               {
                  this.§]t§ = "error: too many opcodes. maximum is " + §#!o§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§]t§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = § !K§[_loc24_[0]];
                  if(!this.§?`§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§]t§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §"@§))
                     {
                        this.§]t§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§]t§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §0!H§))
                  {
                     this.§]t§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§]t§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §]U§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §>U§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§]t§ = "error: relative can not be destination";
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
                     if((_loc39_ = § !K§[_loc38_[0]]) == null)
                     {
                        this.§]t§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§]t§ = "error: bad index register select";
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
                        this.§]t§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§;h§.writeShort(_loc27_);
                     this.§;h§.writeByte(_loc28_);
                     this.§;h§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §>";§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §8!%§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§;h§.writeShort(_loc27_);
                     this.§;h§.writeByte(int(_loc44_ * 8));
                     this.§;h§.writeByte(0);
                     this.§;h§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§;h§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§;h§.writeShort(_loc27_);
                     this.§;h§.writeByte(_loc34_);
                     this.§;h§.writeByte(_loc28_);
                     this.§;h§.writeByte(_loc25_.emitCode);
                     this.§;h§.writeByte(_loc32_);
                     this.§;h§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§;h§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§]t§ != "")
         {
            this.§]t§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§;h§.length = 0;
         }
         if(this.§?`§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§;h§.length;
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
               if((_loc49_ = this.§;h§[_loc48_].toString(16)).length < 2)
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
         return this.§;h§;
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
