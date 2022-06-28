package §<O§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §2<§:Dictionary = new Dictionary();
      
      private static const §[G§:Dictionary = new Dictionary();
      
      private static const §>!h§:Dictionary = new Dictionary();
      
      private static const §6o§:int = 4;
      
      private static const §=!9§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §1!F§:uint = 12;
      
      private static const §4!X§:uint = 16;
      
      private static const §!#§:uint = 20;
      
      private static const §1!d§:uint = 24;
      
      private static const §8!K§:uint = 28;
      
      private static const §@!`§:uint = 1;
      
      private static const §@2§:uint = 2;
      
      private static const §]l§:uint = 32;
      
      private static const §&,§:uint = 64;
      
      private static const §&!4§:uint = 1;
      
      private static const §@u§:uint = 2;
      
      private static const §^!`§:uint = 4;
      
      private static const §<3§:uint = 8;
      
      private static const §"6§:uint = 16;
      
      private static const §[!?§:uint = 32;
      
      private static const §,e§:uint = 128;
      
      private static const §?! §:String = "mov";
      
      private static const §&K§:String = "add";
      
      private static const §@!O§:String = "sub";
      
      private static const §'w§:String = "mul";
      
      private static const §>!2§:String = "div";
      
      private static const §3Q§:String = "rcp";
      
      private static const §5!A§:String = "min";
      
      private static const §%?§:String = "max";
      
      private static const §@F§:String = "frc";
      
      private static const §,d§:String = "sqt";
      
      private static const §13§:String = "rsq";
      
      private static const §0R§:String = "pow";
      
      private static const §=#§:String = "log";
      
      private static const §[!"§:String = "exp";
      
      private static const §6=§:String = "nrm";
      
      private static const §&8§:String = "sin";
      
      private static const §!x§:String = "cos";
      
      private static const §'<§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §!y§:String = "abs";
      
      private static const §[!&§:String = "neg";
      
      private static const §,!L§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §5!&§:String = "ifz";
      
      private static const §"D§:String = "inz";
      
      private static const §9e§:String = "ife";
      
      private static const §4t§:String = "ine";
      
      private static const §@!S§:String = "ifg";
      
      private static const §<4§:String = "ifl";
      
      private static const §8!'§:String = "ieg";
      
      private static const §-!2§:String = "iel";
      
      private static const §2!J§:String = "els";
      
      private static const §>-§:String = "eif";
      
      private static const §1'§:String = "rep";
      
      private static const §]!?§:String = "erp";
      
      private static const §@!K§:String = "brk";
      
      private static const § F§:String = "kil";
      
      private static const §]!+§:String = "tex";
      
      private static const §;!R§:String = "sge";
      
      private static const §`n§:String = "slt";
      
      private static const §<!Y§:String = "sgn";
      
      private static const §?Z§:String = "va";
      
      private static const §`D§:String = "vc";
      
      private static const §9!T§:String = "vt";
      
      private static const §"!1§:String = "op";
      
      private static const §-!1§:String = "v";
      
      private static const §]E§:String = "fc";
      
      private static const §1!T§:String = "ft";
      
      private static const §7]§:String = "fs";
      
      private static const §8z§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §8R§:String = "cube";
      
      private static const §1u§:String = "mipnearest";
      
      private static const §6k§:String = "miplinear";
      
      private static const §1!D§:String = "mipnone";
      
      private static const §^!2§:String = "nomip";
      
      private static const §^e§:String = "nearest";
      
      private static const §1h§:String = "linear";
      
      private static const §[7§:String = "centroid";
      
      private static const §@!$§:String = "single";
      
      private static const §'!F§:String = "depth";
      
      private static const §0e§:String = "repeat";
      
      private static const §&!E§:String = "wrap";
      
      private static const §"!7§:String = "clamp";
       
      
      private var §+H§:ByteArray = null;
      
      private var § o§:String = "";
      
      private var §>!B§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§>!B§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §2<§[§?! §] = new OpCode(§?! §,2,0,0);
         §2<§[§&K§] = new OpCode(§&K§,3,1,0);
         §2<§[§@!O§] = new OpCode(§@!O§,3,2,0);
         §2<§[§'w§] = new OpCode(§'w§,3,3,0);
         §2<§[§>!2§] = new OpCode(§>!2§,3,4,0);
         §2<§[§3Q§] = new OpCode(§3Q§,2,5,0);
         §2<§[§5!A§] = new OpCode(§5!A§,3,6,0);
         §2<§[§%?§] = new OpCode(§%?§,3,7,0);
         §2<§[§@F§] = new OpCode(§@F§,2,8,0);
         §2<§[§,d§] = new OpCode(§,d§,2,9,0);
         §2<§[§13§] = new OpCode(§13§,2,10,0);
         §2<§[§0R§] = new OpCode(§0R§,3,11,0);
         §2<§[§=#§] = new OpCode(§=#§,2,12,0);
         §2<§[§[!"§] = new OpCode(§[!"§,2,13,0);
         §2<§[§6=§] = new OpCode(§6=§,2,14,0);
         §2<§[§&8§] = new OpCode(§&8§,2,15,0);
         §2<§[§!x§] = new OpCode(§!x§,2,16,0);
         §2<§[§'<§] = new OpCode(§'<§,3,17,0);
         §2<§[DP3] = new OpCode(DP3,3,18,0);
         §2<§[DP4] = new OpCode(DP4,3,19,0);
         §2<§[§!y§] = new OpCode(§!y§,2,20,0);
         §2<§[§[!&§] = new OpCode(§[!&§,2,21,0);
         §2<§[§,!L§] = new OpCode(§,!L§,2,22,0);
         §2<§[M33] = new OpCode(M33,3,23,§"6§);
         §2<§[M44] = new OpCode(M44,3,24,§"6§);
         §2<§[M34] = new OpCode(M34,3,25,§"6§);
         §2<§[§5!&§] = new OpCode(§5!&§,1,26,§,e§ | §@u§ | §&!4§);
         §2<§[§"D§] = new OpCode(§"D§,1,27,§,e§ | §@u§ | §&!4§);
         §2<§[§9e§] = new OpCode(§9e§,2,28,§,e§ | §@u§ | §&!4§);
         §2<§[§4t§] = new OpCode(§4t§,2,29,§,e§ | §@u§ | §&!4§);
         §2<§[§@!S§] = new OpCode(§@!S§,2,30,§,e§ | §@u§ | §&!4§);
         §2<§[§<4§] = new OpCode(§<4§,2,31,§,e§ | §@u§ | §&!4§);
         §2<§[§8!'§] = new OpCode(§8!'§,2,32,§,e§ | §@u§ | §&!4§);
         §2<§[§-!2§] = new OpCode(§-!2§,2,33,§,e§ | §@u§ | §&!4§);
         §2<§[§2!J§] = new OpCode(§2!J§,0,34,§,e§ | §@u§ | §^!`§);
         §2<§[§>-§] = new OpCode(§>-§,0,35,§,e§ | §^!`§);
         §2<§[§1'§] = new OpCode(§1'§,1,36,§,e§ | §@u§ | §&!4§);
         §2<§[§]!?§] = new OpCode(§]!?§,0,37,§,e§ | §^!`§);
         §2<§[§@!K§] = new OpCode(§@!K§,0,38,§,e§);
         §2<§[§ F§] = new OpCode(§ F§,1,39,§,e§ | §[!?§);
         §2<§[§]!+§] = new OpCode(§]!+§,3,40,§[!?§ | §<3§);
         §2<§[§;!R§] = new OpCode(§;!R§,3,41,0);
         §2<§[§`n§] = new OpCode(§`n§,3,42,0);
         §2<§[§<!Y§] = new OpCode(§<!Y§,2,43,0);
         §[G§[§?Z§] = new Register(§?Z§,"vertex attribute",0,7,§&,§ | §@2§);
         §[G§[§`D§] = new Register(§`D§,"vertex constant",1,127,§&,§ | §@2§);
         §[G§[§9!T§] = new Register(§9!T§,"vertex temporary",2,7,§&,§ | §@!`§ | §@2§);
         §[G§[§"!1§] = new Register(§"!1§,"vertex output",3,0,§&,§ | §@!`§);
         §[G§[§-!1§] = new Register(§-!1§,"varying",4,7,§&,§ | §]l§ | §@2§ | §@!`§);
         §[G§[§]E§] = new Register(§]E§,"fragment constant",1,27,§]l§ | §@2§);
         §[G§[§1!T§] = new Register(§1!T§,"fragment temporary",2,7,§]l§ | §@!`§ | §@2§);
         §[G§[§7]§] = new Register(§7]§,"texture sampler",5,7,§]l§ | §@2§);
         §[G§[§8z§] = new Register(§8z§,"fragment output",3,0,§]l§ | §@!`§);
         §>!h§[D2] = new Sampler(D2,§1!F§,0);
         §>!h§[D3] = new Sampler(D3,§1!F§,2);
         §>!h§[§8R§] = new Sampler(§8R§,§1!F§,1);
         §>!h§[§1u§] = new Sampler(§1u§,§1!d§,1);
         §>!h§[§6k§] = new Sampler(§6k§,§1!d§,2);
         §>!h§[§1!D§] = new Sampler(§1!D§,§1!d§,0);
         §>!h§[§^!2§] = new Sampler(§^!2§,§1!d§,0);
         §>!h§[§^e§] = new Sampler(§^e§,§8!K§,0);
         §>!h§[§1h§] = new Sampler(§1h§,§8!K§,1);
         §>!h§[§[7§] = new Sampler(§[7§,§4!X§,1 << 0);
         §>!h§[§@!$§] = new Sampler(§@!$§,§4!X§,1 << 1);
         §>!h§[§'!F§] = new Sampler(§'!F§,§4!X§,1 << 2);
         §>!h§[§0e§] = new Sampler(§0e§,§!#§,1);
         §>!h§[§&!E§] = new Sampler(§&!E§,§!#§,1);
         §>!h§[§"!7§] = new Sampler(§"!7§,§!#§,0);
      }
      
      public function get error() : String
      {
         return this.§ o§;
      }
      
      public function get §=!D§() : ByteArray
      {
         return this.§+H§;
      }
      
      public function §9o§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         var _loc46_:String = null;
         var _loc47_:uint = 0;
         var _loc48_:uint = 0;
         var _loc49_:String = null;
         var _loc4_:uint = getTimer();
         this.§+H§ = new ByteArray();
         this.§ o§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§ o§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§=!D§.endian = Endian.LITTLE_ENDIAN;
         this.§=!D§.writeByte(160);
         this.§=!D§.writeUnsignedInt(1);
         this.§=!D§.writeByte(161);
         this.§=!D§.writeByte(!!_loc5_ ? int(1) : int(0));
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§ o§ == "")
         {
            _loc11_ = new String(_loc6_[_loc9_]);
            _loc12_ = _loc11_.search("//");
            if(_loc12_ != -1)
            {
               _loc11_ = _loc11_.slice(0,_loc12_);
            }
            _loc13_ = _loc11_.search(/<.*>/g);
            if(_loc13_ != -1)
            {
               _loc14_ = _loc11_.slice(_loc13_).match(/([\w\.\-\+]+)/gi);
               _loc11_ = _loc11_.slice(0,_loc13_);
            }
            _loc15_ = _loc11_.match(/^\w{3}/ig);
            _loc16_ = §2<§[_loc15_[0]];
            if(!this.§>!B§)
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
               if(_loc16_.flags & §^!`§)
               {
                  _loc7_--;
                  if(_loc7_ < 0)
                  {
                     this.§ o§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §@u§)
               {
                  _loc7_++;
                  if(_loc7_ > §6o§)
                  {
                     this.§ o§ = "error: nesting to deep, maximum allowed is " + §6o§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §[!?§ && !_loc5_)
               {
                  this.§ o§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§=!D§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §=!9§)
               {
                  this.§ o§ = "error: too many opcodes. maximum is " + §=!9§ + ".";
                  break;
               }
               _loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi);
               if(_loc17_.length != _loc16_.numRegister)
               {
                  this.§ o§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
                  break;
               }
               _loc18_ = false;
               _loc19_ = 64 + 64 + 32;
               _loc20_ = _loc17_.length;
               _loc21_ = 0;
               while(_loc21_ < _loc20_)
               {
                  _loc22_ = false;
                  _loc23_ = _loc17_[_loc21_].match(/\[.*\]/ig);
                  if(_loc23_.length > 0)
                  {
                     _loc17_[_loc21_] = _loc17_[_loc21_].replace(_loc23_[0],"0");
                     if(!param3)
                     {
                     }
                     _loc22_ = true;
                  }
                  _loc24_ = _loc17_[_loc21_].match(/^\b[A-Za-z]{1,2}/ig);
                  _loc25_ = §[G§[_loc24_[0]];
                  if(!this.§>!B§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§ o§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §]l§))
                     {
                        this.§ o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§ o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §&,§))
                  {
                     this.§ o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§ o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §,e§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §<3§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§ o§ = "error: relative can not be destination";
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
                        _loc35_ = _loc29_[0].charCodeAt(_loc37_) - "x".charCodeAt(0);
                        if(_loc35_ > 2)
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
                     _loc39_ = §[G§[_loc38_[0]];
                     if(_loc39_ == null)
                     {
                        this.§ o§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     _loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/);
                     if(_loc40_.length == 0)
                     {
                        this.§ o§ = "error: bad index register select";
                        _loc18_ = true;
                        break;
                     }
                     _loc33_ = _loc40_[0].charCodeAt(1) - "x".charCodeAt(0);
                     if(_loc33_ > 2)
                     {
                        _loc33_ = 3;
                     }
                     _loc41_ = _loc23_[0].match(/\+\d{1,3}/ig);
                     if(_loc41_.length > 0)
                     {
                        _loc34_ = _loc41_[0];
                     }
                     if(_loc34_ < 0 || _loc34_ > 255)
                     {
                        this.§ o§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§=!D§.writeShort(_loc27_);
                     this.§=!D§.writeByte(_loc28_);
                     this.§=!D§.writeByte(_loc25_.emitCode);
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
                        _loc45_ = §>!h§[_loc14_[_loc37_]];
                        if(_loc45_ == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §4!X§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§=!D§.writeShort(_loc27_);
                     this.§=!D§.writeByte(int(_loc44_ * 8));
                     this.§=!D§.writeByte(0);
                     this.§=!D§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§=!D§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§=!D§.writeShort(_loc27_);
                     this.§=!D§.writeByte(_loc34_);
                     this.§=!D§.writeByte(_loc28_);
                     this.§=!D§.writeByte(_loc25_.emitCode);
                     this.§=!D§.writeByte(_loc32_);
                     this.§=!D§.writeShort(!!_loc22_ ? int(_loc33_ | 1 << 15) : int(0));
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§=!D§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§ o§ != "")
         {
            this.§ o§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§=!D§.length = 0;
         }
         if(this.§>!B§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§=!D§.length;
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
               _loc49_ = this.§=!D§[_loc48_].toString(16);
               if(_loc49_.length < 2)
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
         return this.§=!D§;
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
