package §<"2§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §'O§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §["7§:Dictionary = new Dictionary();
      
      private static const §0"$§:Dictionary = new Dictionary();
      
      private static const static:Dictionary = new Dictionary();
      
      private static const §>$§:int = 4;
      
      private static const §%U§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §3"7§:uint = 12;
      
      private static const §,!X§:uint = 16;
      
      private static const §=!0§:uint = 20;
      
      private static const §3p§:uint = 24;
      
      private static const §0!9§:uint = 28;
      
      private static const §<#%§:uint = 1;
      
      private static const §4!R§:uint = 2;
      
      private static const §#!y§:uint = 32;
      
      private static const §7i§:uint = 64;
      
      private static const §@"<§:uint = 1;
      
      private static const §,#§:uint = 2;
      
      private static const §>[§:uint = 4;
      
      private static const §@"_§:uint = 8;
      
      private static const §1! §:uint = 16;
      
      private static const §?!T§:uint = 32;
      
      private static const §^!9§:uint = 128;
      
      private static const §?r§:String = "mov";
      
      private static const §!!+§:String = "add";
      
      private static const §6]§:String = "sub";
      
      private static const §@i§:String = "mul";
      
      private static const §]+§:String = "div";
      
      private static const §;"n§:String = "rcp";
      
      private static const §`§:String = "min";
      
      private static const § I§:String = "max";
      
      private static const §1!0§:String = "frc";
      
      private static const §5"W§:String = "sqt";
      
      private static const §<Z§:String = "rsq";
      
      private static const §;"Q§:String = "pow";
      
      private static const §=!W§:String = "log";
      
      private static const §]"s§:String = "exp";
      
      private static const §`Y§:String = "nrm";
      
      private static const §&2§:String = "sin";
      
      private static const §'@§:String = "cos";
      
      private static const § A§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §7l§:String = "abs";
      
      private static const §5"7§:String = "neg";
      
      private static const §#3§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §4"I§:String = "ifz";
      
      private static const §2!D§:String = "inz";
      
      private static const §]"'§:String = "ife";
      
      private static const §'q§:String = "ine";
      
      private static const §1R§:String = "ifg";
      
      private static const §-"4§:String = "ifl";
      
      private static const §[#5§:String = "ieg";
      
      private static const §5"S§:String = "iel";
      
      private static const §2"o§:String = "els";
      
      private static const §3!0§:String = "eif";
      
      private static const §-!5§:String = "rep";
      
      private static const § !a§:String = "erp";
      
      private static const §#;§:String = "brk";
      
      private static const §&!m§:String = "kil";
      
      private static const §+e§:String = "tex";
      
      private static const §4"n§:String = "sge";
      
      private static const §[!n§:String = "slt";
      
      private static const §?"e§:String = "sgn";
      
      private static const §&!o§:String = "va";
      
      private static const §2'§:String = "vc";
      
      private static const §>#%§:String = "vt";
      
      private static const § k§:String = "op";
      
      private static const §#!t§:String = "v";
      
      private static const §,h§:String = "fc";
      
      private static const §<"l§:String = "ft";
      
      private static const §=!6§:String = "fs";
      
      private static const §#!P§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §9!A§:String = "cube";
      
      private static const § "d§:String = "mipnearest";
      
      private static const § ##§:String = "miplinear";
      
      private static const §&H§:String = "mipnone";
      
      private static const §^!w§:String = "nomip";
      
      private static const §#!p§:String = "nearest";
      
      private static const §7x§:String = "linear";
      
      private static const §0W§:String = "centroid";
      
      private static const §9,§:String = "single";
      
      private static const §]" §:String = "depth";
      
      private static const §5"@§:String = "repeat";
      
      private static const §<h§:String = "wrap";
      
      private static const §8"b§:String = "clamp";
       
      
      private var §6o§:ByteArray = null;
      
      private var §#C§:String = "";
      
      private var §]!Z§:Boolean = false;
      
      public function §'O§(param1:Boolean = false)
      {
         super();
         this.§]!Z§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §["7§[§?r§] = new OpCode(§?r§,2,0,0);
         §["7§[§!!+§] = new OpCode(§!!+§,3,1,0);
         §["7§[§6]§] = new OpCode(§6]§,3,2,0);
         §["7§[§@i§] = new OpCode(§@i§,3,3,0);
         §["7§[§]+§] = new OpCode(§]+§,3,4,0);
         §["7§[§;"n§] = new OpCode(§;"n§,2,5,0);
         §["7§[§`§] = new OpCode(§`§,3,6,0);
         §["7§[§ I§] = new OpCode(§ I§,3,7,0);
         §["7§[§1!0§] = new OpCode(§1!0§,2,8,0);
         §["7§[§5"W§] = new OpCode(§5"W§,2,9,0);
         §["7§[§<Z§] = new OpCode(§<Z§,2,10,0);
         §["7§[§;"Q§] = new OpCode(§;"Q§,3,11,0);
         §["7§[§=!W§] = new OpCode(§=!W§,2,12,0);
         §["7§[§]"s§] = new OpCode(§]"s§,2,13,0);
         §["7§[§`Y§] = new OpCode(§`Y§,2,14,0);
         §["7§[§&2§] = new OpCode(§&2§,2,15,0);
         §["7§[§'@§] = new OpCode(§'@§,2,16,0);
         §["7§[§ A§] = new OpCode(§ A§,3,17,0);
         §["7§[DP3] = new OpCode(DP3,3,18,0);
         §["7§[DP4] = new OpCode(DP4,3,19,0);
         §["7§[§7l§] = new OpCode(§7l§,2,20,0);
         §["7§[§5"7§] = new OpCode(§5"7§,2,21,0);
         §["7§[§#3§] = new OpCode(§#3§,2,22,0);
         §["7§[M33] = new OpCode(M33,3,23,§1! §);
         §["7§[M44] = new OpCode(M44,3,24,§1! §);
         §["7§[M34] = new OpCode(M34,3,25,§1! §);
         §["7§[§4"I§] = new OpCode(§4"I§,1,26,§^!9§ | §,#§ | §@"<§);
         §["7§[§2!D§] = new OpCode(§2!D§,1,27,§^!9§ | §,#§ | §@"<§);
         §["7§[§]"'§] = new OpCode(§]"'§,2,28,§^!9§ | §,#§ | §@"<§);
         §["7§[§'q§] = new OpCode(§'q§,2,29,§^!9§ | §,#§ | §@"<§);
         §["7§[§1R§] = new OpCode(§1R§,2,30,§^!9§ | §,#§ | §@"<§);
         §["7§[§-"4§] = new OpCode(§-"4§,2,31,§^!9§ | §,#§ | §@"<§);
         §["7§[§[#5§] = new OpCode(§[#5§,2,32,§^!9§ | §,#§ | §@"<§);
         §["7§[§5"S§] = new OpCode(§5"S§,2,33,§^!9§ | §,#§ | §@"<§);
         §["7§[§2"o§] = new OpCode(§2"o§,0,34,§^!9§ | §,#§ | §>[§);
         §["7§[§3!0§] = new OpCode(§3!0§,0,35,§^!9§ | §>[§);
         §["7§[§-!5§] = new OpCode(§-!5§,1,36,§^!9§ | §,#§ | §@"<§);
         §["7§[§ !a§] = new OpCode(§ !a§,0,37,§^!9§ | §>[§);
         §["7§[§#;§] = new OpCode(§#;§,0,38,§^!9§);
         §["7§[§&!m§] = new OpCode(§&!m§,1,39,§^!9§ | §?!T§);
         §["7§[§+e§] = new OpCode(§+e§,3,40,§?!T§ | §@"_§);
         §["7§[§4"n§] = new OpCode(§4"n§,3,41,0);
         §["7§[§[!n§] = new OpCode(§[!n§,3,42,0);
         §["7§[§?"e§] = new OpCode(§?"e§,2,43,0);
         §0"$§[§&!o§] = new Register(§&!o§,"vertex attribute",0,7,§7i§ | §4!R§);
         §0"$§[§2'§] = new Register(§2'§,"vertex constant",1,127,§7i§ | §4!R§);
         §0"$§[§>#%§] = new Register(§>#%§,"vertex temporary",2,7,§7i§ | §<#%§ | §4!R§);
         §0"$§[§ k§] = new Register(§ k§,"vertex output",3,0,§7i§ | §<#%§);
         §0"$§[§#!t§] = new Register(§#!t§,"varying",4,7,§7i§ | §#!y§ | §4!R§ | §<#%§);
         §0"$§[§,h§] = new Register(§,h§,"fragment constant",1,27,§#!y§ | §4!R§);
         §0"$§[§<"l§] = new Register(§<"l§,"fragment temporary",2,7,§#!y§ | §<#%§ | §4!R§);
         §0"$§[§=!6§] = new Register(§=!6§,"texture sampler",5,7,§#!y§ | §4!R§);
         §0"$§[§#!P§] = new Register(§#!P§,"fragment output",3,0,§#!y§ | §<#%§);
         static[D2] = new Sampler(D2,§3"7§,0);
         static[D3] = new Sampler(D3,§3"7§,2);
         static[§9!A§] = new Sampler(§9!A§,§3"7§,1);
         static[§ "d§] = new Sampler(§ "d§,§3p§,1);
         static[§ ##§] = new Sampler(§ ##§,§3p§,2);
         static[§&H§] = new Sampler(§&H§,§3p§,0);
         static[§^!w§] = new Sampler(§^!w§,§3p§,0);
         static[§#!p§] = new Sampler(§#!p§,§0!9§,0);
         static[§7x§] = new Sampler(§7x§,§0!9§,1);
         static[§0W§] = new Sampler(§0W§,§,!X§,1 << 0);
         static[§9,§] = new Sampler(§9,§,§,!X§,1 << 1);
         static[§]" §] = new Sampler(§]" §,§,!X§,1 << 2);
         static[§5"@§] = new Sampler(§5"@§,§=!0§,1);
         static[§<h§] = new Sampler(§<h§,§=!0§,1);
         static[§8"b§] = new Sampler(§8"b§,§=!0§,0);
      }
      
      public function get error() : String
      {
         return this.§#C§;
      }
      
      public function get §1!r§() : ByteArray
      {
         return this.§6o§;
      }
      
      public function §]U§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§6o§ = new ByteArray();
         this.§#C§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§#C§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§1!r§.endian = Endian.LITTLE_ENDIAN;
         this.§1!r§.writeByte(160);
         this.§1!r§.writeUnsignedInt(1);
         this.§1!r§.writeByte(161);
         this.§1!r§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§#C§ == "")
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
            _loc16_ = §["7§[_loc15_[0]];
            if(!this.§]!Z§)
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
               if(_loc16_.flags & §>[§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§#C§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §,#§)
               {
                  _loc7_++;
                  if(_loc7_ > §>$§)
                  {
                     this.§#C§ = "error: nesting to deep, maximum allowed is " + §>$§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §?!T§ && !_loc5_)
               {
                  this.§#C§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§1!r§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §%U§)
               {
                  this.§#C§ = "error: too many opcodes. maximum is " + §%U§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§#C§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §0"$§[_loc24_[0]];
                  if(!this.§]!Z§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§#C§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §#!y§))
                     {
                        this.§#C§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§#C§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §7i§))
                  {
                     this.§#C§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§#C§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §^!9§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §@"_§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§#C§ = "error: relative can not be destination";
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
                     if((_loc39_ = §0"$§[_loc38_[0]]) == null)
                     {
                        this.§#C§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§#C§ = "error: bad index register select";
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
                        this.§#C§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§1!r§.writeShort(_loc27_);
                     this.§1!r§.writeByte(_loc28_);
                     this.§1!r§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = static[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §,!X§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§1!r§.writeShort(_loc27_);
                     this.§1!r§.writeByte(int(_loc44_ * 8));
                     this.§1!r§.writeByte(0);
                     this.§1!r§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§1!r§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§1!r§.writeShort(_loc27_);
                     this.§1!r§.writeByte(_loc34_);
                     this.§1!r§.writeByte(_loc28_);
                     this.§1!r§.writeByte(_loc25_.emitCode);
                     this.§1!r§.writeByte(_loc32_);
                     this.§1!r§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§1!r§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§#C§ != "")
         {
            this.§#C§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§1!r§.length = 0;
         }
         if(this.§]!Z§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§1!r§.length;
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
               if((_loc49_ = this.§1!r§[_loc48_].toString(16)).length < 2)
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
         return this.§1!r§;
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
