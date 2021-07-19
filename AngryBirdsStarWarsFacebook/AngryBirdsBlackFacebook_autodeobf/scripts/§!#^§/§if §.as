package §!#^§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §if §
   {
      
      private static var initialized:Boolean = false;
      
      private static const §^#E§:Dictionary = new Dictionary();
      
      private static const §;"p§:Dictionary = new Dictionary();
      
      private static const §4#0§:Dictionary = new Dictionary();
      
      private static const §`"P§:int = 4;
      
      private static const §,!'§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §+#W§:uint = 12;
      
      private static const §;!c§:uint = 16;
      
      private static const §,!P§:uint = 20;
      
      private static const §^#I§:uint = 24;
      
      private static const §;#"§:uint = 28;
      
      private static const §&!h§:uint = 1;
      
      private static const §`6§:uint = 2;
      
      private static const §8#Y§:uint = 32;
      
      private static const § "S§:uint = 64;
      
      private static const §,!Z§:uint = 1;
      
      private static const §!#O§:uint = 2;
      
      private static const §?"@§:uint = 4;
      
      private static const §?h§:uint = 8;
      
      private static const §@">§:uint = 16;
      
      private static const §##&§:uint = 32;
      
      private static const §>"w§:uint = 128;
      
      private static const §;!7§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §=!-§:String = "sub";
      
      private static const §-"B§:String = "mul";
      
      private static const § #S§:String = "div";
      
      private static const §'!?§:String = "rcp";
      
      private static const §4A§:String = "min";
      
      private static const §1i§:String = "max";
      
      private static const §`"<§:String = "frc";
      
      private static const §#!&§:String = "sqt";
      
      private static const §9!>§:String = "rsq";
      
      private static const §+!e§:String = "pow";
      
      private static const §!i§:String = "log";
      
      private static const §["j§:String = "exp";
      
      private static const §@_§:String = "nrm";
      
      private static const §'k§:String = "sin";
      
      private static const §?]§:String = "cos";
      
      private static const §,"7§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §8r§:String = "abs";
      
      private static const §&#7§:String = "neg";
      
      private static const §^!z§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §<"$§:String = "ifz";
      
      private static const §;"g§:String = "inz";
      
      private static const §!!o§:String = "ife";
      
      private static const §5x§:String = "ine";
      
      private static const §-!C§:String = "ifg";
      
      private static const §5!'§:String = "ifl";
      
      private static const §@B§:String = "ieg";
      
      private static const §;]§:String = "iel";
      
      private static const §;"l§:String = "els";
      
      private static const §1Z§:String = "eif";
      
      private static const §'!Z§:String = "rep";
      
      private static const §!^§:String = "erp";
      
      private static const §9!C§:String = "brk";
      
      private static const §,!F§:String = "kil";
      
      private static const §,&§:String = "tex";
      
      private static const §;#O§:String = "sge";
      
      private static const §&"1§:String = "slt";
      
      private static const §;#a§:String = "sgn";
      
      private static const §4!u§:String = "va";
      
      private static const §%"1§:String = "vc";
      
      private static const §7!!§:String = "vt";
      
      private static const §!!O§:String = "op";
      
      private static const V:String = "v";
      
      private static const §-!W§:String = "fc";
      
      private static const §9"7§:String = "ft";
      
      private static const §#"w§:String = "fs";
      
      private static const §7A§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §@F§:String = "cube";
      
      private static const §-!§:String = "mipnearest";
      
      private static const §[!]§:String = "miplinear";
      
      private static const §8g§:String = "mipnone";
      
      private static const §]"8§:String = "nomip";
      
      private static const §1'§:String = "nearest";
      
      private static const §[!l§:String = "linear";
      
      private static const §!#7§:String = "centroid";
      
      private static const §?!j§:String = "single";
      
      private static const §#"I§:String = "depth";
      
      private static const §7!N§:String = "repeat";
      
      private static const §]!8§:String = "wrap";
      
      private static const §%!d§:String = "clamp";
       
      
      private var §'!&§:ByteArray = null;
      
      private var §7X§:String = "";
      
      private var §`#P§:Boolean = false;
      
      public function §if §(param1:Boolean = false)
      {
         super();
         this.§`#P§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §^#E§[§;!7§] = new OpCode(§;!7§,2,0,0);
         §^#E§[ADD] = new OpCode(ADD,3,1,0);
         §^#E§[§=!-§] = new OpCode(§=!-§,3,2,0);
         §^#E§[§-"B§] = new OpCode(§-"B§,3,3,0);
         §^#E§[§ #S§] = new OpCode(§ #S§,3,4,0);
         §^#E§[§'!?§] = new OpCode(§'!?§,2,5,0);
         §^#E§[§4A§] = new OpCode(§4A§,3,6,0);
         §^#E§[§1i§] = new OpCode(§1i§,3,7,0);
         §^#E§[§`"<§] = new OpCode(§`"<§,2,8,0);
         §^#E§[§#!&§] = new OpCode(§#!&§,2,9,0);
         §^#E§[§9!>§] = new OpCode(§9!>§,2,10,0);
         §^#E§[§+!e§] = new OpCode(§+!e§,3,11,0);
         §^#E§[§!i§] = new OpCode(§!i§,2,12,0);
         §^#E§[§["j§] = new OpCode(§["j§,2,13,0);
         §^#E§[§@_§] = new OpCode(§@_§,2,14,0);
         §^#E§[§'k§] = new OpCode(§'k§,2,15,0);
         §^#E§[§?]§] = new OpCode(§?]§,2,16,0);
         §^#E§[§,"7§] = new OpCode(§,"7§,3,17,0);
         §^#E§[DP3] = new OpCode(DP3,3,18,0);
         §^#E§[DP4] = new OpCode(DP4,3,19,0);
         §^#E§[§8r§] = new OpCode(§8r§,2,20,0);
         §^#E§[§&#7§] = new OpCode(§&#7§,2,21,0);
         §^#E§[§^!z§] = new OpCode(§^!z§,2,22,0);
         §^#E§[M33] = new OpCode(M33,3,23,§@">§);
         §^#E§[M44] = new OpCode(M44,3,24,§@">§);
         §^#E§[M34] = new OpCode(M34,3,25,§@">§);
         §^#E§[§<"$§] = new OpCode(§<"$§,1,26,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§;"g§] = new OpCode(§;"g§,1,27,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§!!o§] = new OpCode(§!!o§,2,28,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§5x§] = new OpCode(§5x§,2,29,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§-!C§] = new OpCode(§-!C§,2,30,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§5!'§] = new OpCode(§5!'§,2,31,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§@B§] = new OpCode(§@B§,2,32,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§;]§] = new OpCode(§;]§,2,33,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§;"l§] = new OpCode(§;"l§,0,34,§>"w§ | §!#O§ | §?"@§);
         §^#E§[§1Z§] = new OpCode(§1Z§,0,35,§>"w§ | §?"@§);
         §^#E§[§'!Z§] = new OpCode(§'!Z§,1,36,§>"w§ | §!#O§ | §,!Z§);
         §^#E§[§!^§] = new OpCode(§!^§,0,37,§>"w§ | §?"@§);
         §^#E§[§9!C§] = new OpCode(§9!C§,0,38,§>"w§);
         §^#E§[§,!F§] = new OpCode(§,!F§,1,39,§>"w§ | §##&§);
         §^#E§[§,&§] = new OpCode(§,&§,3,40,§##&§ | §?h§);
         §^#E§[§;#O§] = new OpCode(§;#O§,3,41,0);
         §^#E§[§&"1§] = new OpCode(§&"1§,3,42,0);
         §^#E§[§;#a§] = new OpCode(§;#a§,2,43,0);
         §;"p§[§4!u§] = new Register(§4!u§,"vertex attribute",0,7,§ "S§ | §`6§);
         §;"p§[§%"1§] = new Register(§%"1§,"vertex constant",1,127,§ "S§ | §`6§);
         §;"p§[§7!!§] = new Register(§7!!§,"vertex temporary",2,7,§ "S§ | §&!h§ | §`6§);
         §;"p§[§!!O§] = new Register(§!!O§,"vertex output",3,0,§ "S§ | §&!h§);
         §;"p§[V] = new Register(V,"varying",4,7,§ "S§ | §8#Y§ | §`6§ | §&!h§);
         §;"p§[§-!W§] = new Register(§-!W§,"fragment constant",1,27,§8#Y§ | §`6§);
         §;"p§[§9"7§] = new Register(§9"7§,"fragment temporary",2,7,§8#Y§ | §&!h§ | §`6§);
         §;"p§[§#"w§] = new Register(§#"w§,"texture sampler",5,7,§8#Y§ | §`6§);
         §;"p§[§7A§] = new Register(§7A§,"fragment output",3,0,§8#Y§ | §&!h§);
         §4#0§[D2] = new Sampler(D2,§+#W§,0);
         §4#0§[D3] = new Sampler(D3,§+#W§,2);
         §4#0§[§@F§] = new Sampler(§@F§,§+#W§,1);
         §4#0§[§-!§] = new Sampler(§-!§,§^#I§,1);
         §4#0§[§[!]§] = new Sampler(§[!]§,§^#I§,2);
         §4#0§[§8g§] = new Sampler(§8g§,§^#I§,0);
         §4#0§[§]"8§] = new Sampler(§]"8§,§^#I§,0);
         §4#0§[§1'§] = new Sampler(§1'§,§;#"§,0);
         §4#0§[§[!l§] = new Sampler(§[!l§,§;#"§,1);
         §4#0§[§!#7§] = new Sampler(§!#7§,§;!c§,1 << 0);
         §4#0§[§?!j§] = new Sampler(§?!j§,§;!c§,1 << 1);
         §4#0§[§#"I§] = new Sampler(§#"I§,§;!c§,1 << 2);
         §4#0§[§7!N§] = new Sampler(§7!N§,§,!P§,1);
         §4#0§[§]!8§] = new Sampler(§]!8§,§,!P§,1);
         §4#0§[§%!d§] = new Sampler(§%!d§,§,!P§,0);
      }
      
      public function get error() : String
      {
         return this.§7X§;
      }
      
      public function get § #+§() : ByteArray
      {
         return this.§'!&§;
      }
      
      public function § "@§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§'!&§ = new ByteArray();
         this.§7X§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§7X§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§ #+§.endian = Endian.LITTLE_ENDIAN;
         this.§ #+§.writeByte(160);
         this.§ #+§.writeUnsignedInt(1);
         this.§ #+§.writeByte(161);
         this.§ #+§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§7X§ == "")
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
            _loc16_ = §^#E§[_loc15_[0]];
            if(!this.§`#P§)
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
               if(_loc16_.flags & §?"@§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§7X§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §!#O§)
               {
                  _loc7_++;
                  if(_loc7_ > §`"P§)
                  {
                     this.§7X§ = "error: nesting to deep, maximum allowed is " + §`"P§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §##&§ && !_loc5_)
               {
                  this.§7X§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§ #+§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §,!'§)
               {
                  this.§7X§ = "error: too many opcodes. maximum is " + §,!'§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§7X§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §;"p§[_loc24_[0]];
                  if(!this.§`#P§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§7X§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §8#Y§))
                     {
                        this.§7X§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§7X§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & § "S§))
                  {
                     this.§7X§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§7X§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §>"w§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §?h§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§7X§ = "error: relative can not be destination";
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
                     if((_loc39_ = §;"p§[_loc38_[0]]) == null)
                     {
                        this.§7X§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§7X§ = "error: bad index register select";
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
                        this.§7X§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§ #+§.writeShort(_loc27_);
                     this.§ #+§.writeByte(_loc28_);
                     this.§ #+§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §4#0§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §;!c§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§ #+§.writeShort(_loc27_);
                     this.§ #+§.writeByte(int(_loc44_ * 8));
                     this.§ #+§.writeByte(0);
                     this.§ #+§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§ #+§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§ #+§.writeShort(_loc27_);
                     this.§ #+§.writeByte(_loc34_);
                     this.§ #+§.writeByte(_loc28_);
                     this.§ #+§.writeByte(_loc25_.emitCode);
                     this.§ #+§.writeByte(_loc32_);
                     this.§ #+§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§ #+§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§7X§ != "")
         {
            this.§7X§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§ #+§.length = 0;
         }
         if(this.§`#P§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§ #+§.length;
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
               if((_loc49_ = this.§ #+§[_loc48_].toString(16)).length < 2)
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
         return this.§ #+§;
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
