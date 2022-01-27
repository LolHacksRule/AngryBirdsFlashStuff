package §6!M§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §[!D§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §-"-§:Dictionary = new Dictionary();
      
      private static const §[!6§:Dictionary = new Dictionary();
      
      private static const §^Y§:Dictionary = new Dictionary();
      
      private static const §8!'§:int = 4;
      
      private static const §+"E§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §,!J§:uint = 12;
      
      private static const §9!r§:uint = 16;
      
      private static const §2P§:uint = 20;
      
      private static const §6I§:uint = 24;
      
      private static const §;!r§:uint = 28;
      
      private static const §3"?§:uint = 1;
      
      private static const §1!I§:uint = 2;
      
      private static const §?!r§:uint = 32;
      
      private static const §]!0§:uint = 64;
      
      private static const §`0§:uint = 1;
      
      private static const §'!E§:uint = 2;
      
      private static const §?!b§:uint = 4;
      
      private static const §+!N§:uint = 8;
      
      private static const §'o§:uint = 16;
      
      private static const §!"F§:uint = 32;
      
      private static const §]!c§:uint = 128;
      
      private static const §<C§:String = "mov";
      
      private static const §;!N§:String = "add";
      
      private static const §9?§:String = "sub";
      
      private static const §7"7§:String = "mul";
      
      private static const §>!w§:String = "div";
      
      private static const §!G§:String = "rcp";
      
      private static const §=Y§:String = "min";
      
      private static const §9e§:String = "max";
      
      private static const §^q§:String = "frc";
      
      private static const §]!T§:String = "sqt";
      
      private static const §,"§:String = "rsq";
      
      private static const §<"$§:String = "pow";
      
      private static const §^z§:String = "log";
      
      private static const § b§:String = "exp";
      
      private static const §8!X§:String = "nrm";
      
      private static const §3Q§:String = "sin";
      
      private static const §#"A§:String = "cos";
      
      private static const §7!J§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § +§:String = "abs";
      
      private static const §#!C§:String = "neg";
      
      private static const §`!w§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §2D§:String = "ifz";
      
      private static const §3!C§:String = "inz";
      
      private static const §`F§:String = "ife";
      
      private static const §<3§:String = "ine";
      
      private static const §%";§:String = "ifg";
      
      private static const §=[§:String = "ifl";
      
      private static const §1"#§:String = "ieg";
      
      private static const §>9§:String = "iel";
      
      private static const §,[§:String = "els";
      
      private static const §%"%§:String = "eif";
      
      private static const §`!n§:String = "rep";
      
      private static const §&!,§:String = "erp";
      
      private static const §9A§:String = "brk";
      
      private static const §=1§:String = "kil";
      
      private static const §[!#§:String = "tex";
      
      private static const §,q§:String = "sge";
      
      private static const §0"H§:String = "slt";
      
      private static const §<!T§:String = "sgn";
      
      private static const §%"§:String = "va";
      
      private static const §[o§:String = "vc";
      
      private static const §`E§:String = "vt";
      
      private static const §]!4§:String = "op";
      
      private static const V:String = "v";
      
      private static const §#!q§:String = "fc";
      
      private static const § !X§:String = "ft";
      
      private static const §2!K§:String = "fs";
      
      private static const §9!m§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §=!F§:String = "cube";
      
      private static const §5!2§:String = "mipnearest";
      
      private static const §catch§:String = "miplinear";
      
      private static const §0"=§:String = "mipnone";
      
      private static const §2`§:String = "nomip";
      
      private static const §>!3§:String = "nearest";
      
      private static const §!w§:String = "linear";
      
      private static const §`!@§:String = "centroid";
      
      private static const §,O§:String = "single";
      
      private static const §`%§:String = "depth";
      
      private static const §5v§:String = "repeat";
      
      private static const §8t§:String = "wrap";
      
      private static const §;!-§:String = "clamp";
       
      
      private var § !u§:ByteArray = null;
      
      private var §4"7§:String = "";
      
      private var §>!I§:Boolean = false;
      
      public function §[!D§(param1:Boolean = false)
      {
         super();
         this.§>!I§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §-"-§[§<C§] = new OpCode(§<C§,2,0,0);
         §-"-§[§;!N§] = new OpCode(§;!N§,3,1,0);
         §-"-§[§9?§] = new OpCode(§9?§,3,2,0);
         §-"-§[§7"7§] = new OpCode(§7"7§,3,3,0);
         §-"-§[§>!w§] = new OpCode(§>!w§,3,4,0);
         §-"-§[§!G§] = new OpCode(§!G§,2,5,0);
         §-"-§[§=Y§] = new OpCode(§=Y§,3,6,0);
         §-"-§[§9e§] = new OpCode(§9e§,3,7,0);
         §-"-§[§^q§] = new OpCode(§^q§,2,8,0);
         §-"-§[§]!T§] = new OpCode(§]!T§,2,9,0);
         §-"-§[§,"§] = new OpCode(§,"§,2,10,0);
         §-"-§[§<"$§] = new OpCode(§<"$§,3,11,0);
         §-"-§[§^z§] = new OpCode(§^z§,2,12,0);
         §-"-§[§ b§] = new OpCode(§ b§,2,13,0);
         §-"-§[§8!X§] = new OpCode(§8!X§,2,14,0);
         §-"-§[§3Q§] = new OpCode(§3Q§,2,15,0);
         §-"-§[§#"A§] = new OpCode(§#"A§,2,16,0);
         §-"-§[§7!J§] = new OpCode(§7!J§,3,17,0);
         §-"-§[DP3] = new OpCode(DP3,3,18,0);
         §-"-§[DP4] = new OpCode(DP4,3,19,0);
         §-"-§[§ +§] = new OpCode(§ +§,2,20,0);
         §-"-§[§#!C§] = new OpCode(§#!C§,2,21,0);
         §-"-§[§`!w§] = new OpCode(§`!w§,2,22,0);
         §-"-§[M33] = new OpCode(M33,3,23,§'o§);
         §-"-§[M44] = new OpCode(M44,3,24,§'o§);
         §-"-§[M34] = new OpCode(M34,3,25,§'o§);
         §-"-§[§2D§] = new OpCode(§2D§,1,26,§]!c§ | §'!E§ | §`0§);
         §-"-§[§3!C§] = new OpCode(§3!C§,1,27,§]!c§ | §'!E§ | §`0§);
         §-"-§[§`F§] = new OpCode(§`F§,2,28,§]!c§ | §'!E§ | §`0§);
         §-"-§[§<3§] = new OpCode(§<3§,2,29,§]!c§ | §'!E§ | §`0§);
         §-"-§[§%";§] = new OpCode(§%";§,2,30,§]!c§ | §'!E§ | §`0§);
         §-"-§[§=[§] = new OpCode(§=[§,2,31,§]!c§ | §'!E§ | §`0§);
         §-"-§[§1"#§] = new OpCode(§1"#§,2,32,§]!c§ | §'!E§ | §`0§);
         §-"-§[§>9§] = new OpCode(§>9§,2,33,§]!c§ | §'!E§ | §`0§);
         §-"-§[§,[§] = new OpCode(§,[§,0,34,§]!c§ | §'!E§ | §?!b§);
         §-"-§[§%"%§] = new OpCode(§%"%§,0,35,§]!c§ | §?!b§);
         §-"-§[§`!n§] = new OpCode(§`!n§,1,36,§]!c§ | §'!E§ | §`0§);
         §-"-§[§&!,§] = new OpCode(§&!,§,0,37,§]!c§ | §?!b§);
         §-"-§[§9A§] = new OpCode(§9A§,0,38,§]!c§);
         §-"-§[§=1§] = new OpCode(§=1§,1,39,§]!c§ | §!"F§);
         §-"-§[§[!#§] = new OpCode(§[!#§,3,40,§!"F§ | §+!N§);
         §-"-§[§,q§] = new OpCode(§,q§,3,41,0);
         §-"-§[§0"H§] = new OpCode(§0"H§,3,42,0);
         §-"-§[§<!T§] = new OpCode(§<!T§,2,43,0);
         §[!6§[§%"§] = new Register(§%"§,"vertex attribute",0,7,§]!0§ | §1!I§);
         §[!6§[§[o§] = new Register(§[o§,"vertex constant",1,127,§]!0§ | §1!I§);
         §[!6§[§`E§] = new Register(§`E§,"vertex temporary",2,7,§]!0§ | §3"?§ | §1!I§);
         §[!6§[§]!4§] = new Register(§]!4§,"vertex output",3,0,§]!0§ | §3"?§);
         §[!6§[V] = new Register(V,"varying",4,7,§]!0§ | §?!r§ | §1!I§ | §3"?§);
         §[!6§[§#!q§] = new Register(§#!q§,"fragment constant",1,27,§?!r§ | §1!I§);
         §[!6§[§ !X§] = new Register(§ !X§,"fragment temporary",2,7,§?!r§ | §3"?§ | §1!I§);
         §[!6§[§2!K§] = new Register(§2!K§,"texture sampler",5,7,§?!r§ | §1!I§);
         §[!6§[§9!m§] = new Register(§9!m§,"fragment output",3,0,§?!r§ | §3"?§);
         §^Y§[D2] = new Sampler(D2,§,!J§,0);
         §^Y§[D3] = new Sampler(D3,§,!J§,2);
         §^Y§[§=!F§] = new Sampler(§=!F§,§,!J§,1);
         §^Y§[§5!2§] = new Sampler(§5!2§,§6I§,1);
         §^Y§[§catch§] = new Sampler(§catch§,§6I§,2);
         §^Y§[§0"=§] = new Sampler(§0"=§,§6I§,0);
         §^Y§[§2`§] = new Sampler(§2`§,§6I§,0);
         §^Y§[§>!3§] = new Sampler(§>!3§,§;!r§,0);
         §^Y§[§!w§] = new Sampler(§!w§,§;!r§,1);
         §^Y§[§`!@§] = new Sampler(§`!@§,§9!r§,1 << 0);
         §^Y§[§,O§] = new Sampler(§,O§,§9!r§,1 << 1);
         §^Y§[§`%§] = new Sampler(§`%§,§9!r§,1 << 2);
         §^Y§[§5v§] = new Sampler(§5v§,§2P§,1);
         §^Y§[§8t§] = new Sampler(§8t§,§2P§,1);
         §^Y§[§;!-§] = new Sampler(§;!-§,§2P§,0);
      }
      
      public function get error() : String
      {
         return this.§4"7§;
      }
      
      public function get §4R§() : ByteArray
      {
         return this.§ !u§;
      }
      
      public function §>!q§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§ !u§ = new ByteArray();
         this.§4"7§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§4"7§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§4R§.endian = Endian.LITTLE_ENDIAN;
         this.§4R§.writeByte(160);
         this.§4R§.writeUnsignedInt(1);
         this.§4R§.writeByte(161);
         this.§4R§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§4"7§ == "")
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
            _loc16_ = §-"-§[_loc15_[0]];
            if(!this.§>!I§)
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
               if(_loc16_.flags & §?!b§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§4"7§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §'!E§)
               {
                  _loc7_++;
                  if(_loc7_ > §8!'§)
                  {
                     this.§4"7§ = "error: nesting to deep, maximum allowed is " + §8!'§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §!"F§ && !_loc5_)
               {
                  this.§4"7§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§4R§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §+"E§)
               {
                  this.§4"7§ = "error: too many opcodes. maximum is " + §+"E§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§4"7§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §[!6§[_loc24_[0]];
                  if(!this.§>!I§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§4"7§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §?!r§))
                     {
                        this.§4"7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§4"7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]!0§))
                  {
                     this.§4"7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§4"7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §]!c§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §+!N§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§4"7§ = "error: relative can not be destination";
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
                     if((_loc39_ = §[!6§[_loc38_[0]]) == null)
                     {
                        this.§4"7§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§4"7§ = "error: bad index register select";
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
                        this.§4"7§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§4R§.writeShort(_loc27_);
                     this.§4R§.writeByte(_loc28_);
                     this.§4R§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §^Y§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §9!r§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§4R§.writeShort(_loc27_);
                     this.§4R§.writeByte(int(_loc44_ * 8));
                     this.§4R§.writeByte(0);
                     this.§4R§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§4R§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§4R§.writeShort(_loc27_);
                     this.§4R§.writeByte(_loc34_);
                     this.§4R§.writeByte(_loc28_);
                     this.§4R§.writeByte(_loc25_.emitCode);
                     this.§4R§.writeByte(_loc32_);
                     this.§4R§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§4R§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§4"7§ != "")
         {
            this.§4"7§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§4R§.length = 0;
         }
         if(this.§>!I§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§4R§.length;
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
               if((_loc49_ = this.§4R§[_loc48_].toString(16)).length < 2)
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
         return this.§4R§;
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
