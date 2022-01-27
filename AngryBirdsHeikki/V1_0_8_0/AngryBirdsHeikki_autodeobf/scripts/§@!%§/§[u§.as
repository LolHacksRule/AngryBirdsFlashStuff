package §@!%§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §[u§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §1m§:Dictionary = new Dictionary();
      
      private static const §-!§:Dictionary = new Dictionary();
      
      private static const §-!8§:Dictionary = new Dictionary();
      
      private static const §@q§:int = 4;
      
      private static const include:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §&!H§:uint = 12;
      
      private static const §7!E§:uint = 16;
      
      private static const §]!c§:uint = 20;
      
      private static const §=T§:uint = 24;
      
      private static const §?w§:uint = 28;
      
      private static const §'d§:uint = 1;
      
      private static const §2!Y§:uint = 2;
      
      private static const §;!,§:uint = 32;
      
      private static const §6!1§:uint = 64;
      
      private static const § e§:uint = 1;
      
      private static const §2!+§:uint = 2;
      
      private static const §8,§:uint = 4;
      
      private static const §&3§:uint = 8;
      
      private static const §6$§:uint = 16;
      
      private static const §'l§:uint = 32;
      
      private static const §!+§:uint = 128;
      
      private static const §]X§:String = "mov";
      
      private static const §4[§:String = "add";
      
      private static const §#!7§:String = "sub";
      
      private static const §`Q§:String = "mul";
      
      private static const §]z§:String = "div";
      
      private static const §4&§:String = "rcp";
      
      private static const §&w§:String = "min";
      
      private static const §2!C§:String = "max";
      
      private static const §;c§:String = "frc";
      
      private static const §@o§:String = "sqt";
      
      private static const §,!,§:String = "rsq";
      
      private static const §2[§:String = "pow";
      
      private static const §<N§:String = "log";
      
      private static const §break§:String = "exp";
      
      private static const §-6§:String = "nrm";
      
      private static const §<!§:String = "sin";
      
      private static const §8!#§:String = "cos";
      
      private static const §-q§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §[q§:String = "abs";
      
      private static const §"![§:String = "neg";
      
      private static const §[!8§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §9!W§:String = "ifz";
      
      private static const §1o§:String = "inz";
      
      private static const §7q§:String = "ife";
      
      private static const §4#§:String = "ine";
      
      private static const §3!J§:String = "ifg";
      
      private static const §2'§:String = "ifl";
      
      private static const §;-§:String = "ieg";
      
      private static const §8!N§:String = "iel";
      
      private static const §%!?§:String = "els";
      
      private static const §&! §:String = "eif";
      
      private static const §@!#§:String = "rep";
      
      private static const §6!c§:String = "erp";
      
      private static const §"p§:String = "brk";
      
      private static const §7R§:String = "kil";
      
      private static const §&!#§:String = "tex";
      
      private static const §!E§:String = "sge";
      
      private static const §^o§:String = "slt";
      
      private static const § !O§:String = "sgn";
      
      private static const §2!0§:String = "va";
      
      private static const §`z§:String = "vc";
      
      private static const §1u§:String = "vt";
      
      private static const §]H§:String = "op";
      
      private static const §1!9§:String = "v";
      
      private static const §1! §:String = "fc";
      
      private static const §,Z§:String = "ft";
      
      private static const §=§:String = "fs";
      
      private static const §4!`§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §05§:String = "cube";
      
      private static const §0k§:String = "mipnearest";
      
      private static const §3X§:String = "miplinear";
      
      private static const §^Q§:String = "mipnone";
      
      private static const §&!8§:String = "nomip";
      
      private static const §8k§:String = "nearest";
      
      private static const §]!'§:String = "linear";
      
      private static const §;!d§:String = "centroid";
      
      private static const §@f§:String = "single";
      
      private static const §7m§:String = "depth";
      
      private static const §[y§:String = "repeat";
      
      private static const §'!`§:String = "wrap";
      
      private static const §#!,§:String = "clamp";
       
      
      private var §;5§:ByteArray = null;
      
      private var § !>§:String = "";
      
      private var §&N§:Boolean = false;
      
      public function §[u§(param1:Boolean = false)
      {
         super();
         this.§&N§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §1m§[§]X§] = new OpCode(§]X§,2,0,0);
         §1m§[§4[§] = new OpCode(§4[§,3,1,0);
         §1m§[§#!7§] = new OpCode(§#!7§,3,2,0);
         §1m§[§`Q§] = new OpCode(§`Q§,3,3,0);
         §1m§[§]z§] = new OpCode(§]z§,3,4,0);
         §1m§[§4&§] = new OpCode(§4&§,2,5,0);
         §1m§[§&w§] = new OpCode(§&w§,3,6,0);
         §1m§[§2!C§] = new OpCode(§2!C§,3,7,0);
         §1m§[§;c§] = new OpCode(§;c§,2,8,0);
         §1m§[§@o§] = new OpCode(§@o§,2,9,0);
         §1m§[§,!,§] = new OpCode(§,!,§,2,10,0);
         §1m§[§2[§] = new OpCode(§2[§,3,11,0);
         §1m§[§<N§] = new OpCode(§<N§,2,12,0);
         §1m§[§break§] = new OpCode(§break§,2,13,0);
         §1m§[§-6§] = new OpCode(§-6§,2,14,0);
         §1m§[§<!§] = new OpCode(§<!§,2,15,0);
         §1m§[§8!#§] = new OpCode(§8!#§,2,16,0);
         §1m§[§-q§] = new OpCode(§-q§,3,17,0);
         §1m§[DP3] = new OpCode(DP3,3,18,0);
         §1m§[DP4] = new OpCode(DP4,3,19,0);
         §1m§[§[q§] = new OpCode(§[q§,2,20,0);
         §1m§[§"![§] = new OpCode(§"![§,2,21,0);
         §1m§[§[!8§] = new OpCode(§[!8§,2,22,0);
         §1m§[M33] = new OpCode(M33,3,23,§6$§);
         §1m§[M44] = new OpCode(M44,3,24,§6$§);
         §1m§[M34] = new OpCode(M34,3,25,§6$§);
         §1m§[§9!W§] = new OpCode(§9!W§,1,26,§!+§ | §2!+§ | § e§);
         §1m§[§1o§] = new OpCode(§1o§,1,27,§!+§ | §2!+§ | § e§);
         §1m§[§7q§] = new OpCode(§7q§,2,28,§!+§ | §2!+§ | § e§);
         §1m§[§4#§] = new OpCode(§4#§,2,29,§!+§ | §2!+§ | § e§);
         §1m§[§3!J§] = new OpCode(§3!J§,2,30,§!+§ | §2!+§ | § e§);
         §1m§[§2'§] = new OpCode(§2'§,2,31,§!+§ | §2!+§ | § e§);
         §1m§[§;-§] = new OpCode(§;-§,2,32,§!+§ | §2!+§ | § e§);
         §1m§[§8!N§] = new OpCode(§8!N§,2,33,§!+§ | §2!+§ | § e§);
         §1m§[§%!?§] = new OpCode(§%!?§,0,34,§!+§ | §2!+§ | §8,§);
         §1m§[§&! §] = new OpCode(§&! §,0,35,§!+§ | §8,§);
         §1m§[§@!#§] = new OpCode(§@!#§,1,36,§!+§ | §2!+§ | § e§);
         §1m§[§6!c§] = new OpCode(§6!c§,0,37,§!+§ | §8,§);
         §1m§[§"p§] = new OpCode(§"p§,0,38,§!+§);
         §1m§[§7R§] = new OpCode(§7R§,1,39,§!+§ | §'l§);
         §1m§[§&!#§] = new OpCode(§&!#§,3,40,§'l§ | §&3§);
         §1m§[§!E§] = new OpCode(§!E§,3,41,0);
         §1m§[§^o§] = new OpCode(§^o§,3,42,0);
         §1m§[§ !O§] = new OpCode(§ !O§,2,43,0);
         §-!§[§2!0§] = new Register(§2!0§,"vertex attribute",0,7,§6!1§ | §2!Y§);
         §-!§[§`z§] = new Register(§`z§,"vertex constant",1,127,§6!1§ | §2!Y§);
         §-!§[§1u§] = new Register(§1u§,"vertex temporary",2,7,§6!1§ | §'d§ | §2!Y§);
         §-!§[§]H§] = new Register(§]H§,"vertex output",3,0,§6!1§ | §'d§);
         §-!§[§1!9§] = new Register(§1!9§,"varying",4,7,§6!1§ | §;!,§ | §2!Y§ | §'d§);
         §-!§[§1! §] = new Register(§1! §,"fragment constant",1,27,§;!,§ | §2!Y§);
         §-!§[§,Z§] = new Register(§,Z§,"fragment temporary",2,7,§;!,§ | §'d§ | §2!Y§);
         §-!§[§=§] = new Register(§=§,"texture sampler",5,7,§;!,§ | §2!Y§);
         §-!§[§4!`§] = new Register(§4!`§,"fragment output",3,0,§;!,§ | §'d§);
         §-!8§[D2] = new Sampler(D2,§&!H§,0);
         §-!8§[D3] = new Sampler(D3,§&!H§,2);
         §-!8§[§05§] = new Sampler(§05§,§&!H§,1);
         §-!8§[§0k§] = new Sampler(§0k§,§=T§,1);
         §-!8§[§3X§] = new Sampler(§3X§,§=T§,2);
         §-!8§[§^Q§] = new Sampler(§^Q§,§=T§,0);
         §-!8§[§&!8§] = new Sampler(§&!8§,§=T§,0);
         §-!8§[§8k§] = new Sampler(§8k§,§?w§,0);
         §-!8§[§]!'§] = new Sampler(§]!'§,§?w§,1);
         §-!8§[§;!d§] = new Sampler(§;!d§,§7!E§,1 << 0);
         §-!8§[§@f§] = new Sampler(§@f§,§7!E§,1 << 1);
         §-!8§[§7m§] = new Sampler(§7m§,§7!E§,1 << 2);
         §-!8§[§[y§] = new Sampler(§[y§,§]!c§,1);
         §-!8§[§'!`§] = new Sampler(§'!`§,§]!c§,1);
         §-!8§[§#!,§] = new Sampler(§#!,§,§]!c§,0);
      }
      
      public function get error() : String
      {
         return this.§ !>§;
      }
      
      public function get §>!R§() : ByteArray
      {
         return this.§;5§;
      }
      
      public function §"!!§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§;5§ = new ByteArray();
         this.§ !>§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§ !>§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§>!R§.endian = Endian.LITTLE_ENDIAN;
         this.§>!R§.writeByte(160);
         this.§>!R§.writeUnsignedInt(1);
         this.§>!R§.writeByte(161);
         this.§>!R§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§ !>§ == "")
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
            _loc16_ = §1m§[_loc15_[0]];
            if(!this.§&N§)
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
               if(_loc16_.flags & §8,§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§ !>§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §2!+§)
               {
                  _loc7_++;
                  if(_loc7_ > §@q§)
                  {
                     this.§ !>§ = "error: nesting to deep, maximum allowed is " + §@q§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §'l§ && !_loc5_)
               {
                  this.§ !>§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§>!R§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > include)
               {
                  this.§ !>§ = "error: too many opcodes. maximum is " + include + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§ !>§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §-!§[_loc24_[0]];
                  if(!this.§&N§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§ !>§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §;!,§))
                     {
                        this.§ !>§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§ !>§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §6!1§))
                  {
                     this.§ !>§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§ !>§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §!+§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §&3§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§ !>§ = "error: relative can not be destination";
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
                     if((_loc39_ = §-!§[_loc38_[0]]) == null)
                     {
                        this.§ !>§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§ !>§ = "error: bad index register select";
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
                        this.§ !>§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§>!R§.writeShort(_loc27_);
                     this.§>!R§.writeByte(_loc28_);
                     this.§>!R§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §-!8§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §7!E§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§>!R§.writeShort(_loc27_);
                     this.§>!R§.writeByte(int(_loc44_ * 8));
                     this.§>!R§.writeByte(0);
                     this.§>!R§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§>!R§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§>!R§.writeShort(_loc27_);
                     this.§>!R§.writeByte(_loc34_);
                     this.§>!R§.writeByte(_loc28_);
                     this.§>!R§.writeByte(_loc25_.emitCode);
                     this.§>!R§.writeByte(_loc32_);
                     this.§>!R§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§>!R§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§ !>§ != "")
         {
            this.§ !>§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§>!R§.length = 0;
         }
         if(this.§&N§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§>!R§.length;
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
               if((_loc49_ = this.§>!R§[_loc48_].toString(16)).length < 2)
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
         return this.§>!R§;
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
