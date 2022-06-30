package §3;§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%O§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §;E§:Dictionary = new Dictionary();
      
      private static const §4!§:Dictionary = new Dictionary();
      
      private static const §#!W§:Dictionary = new Dictionary();
      
      private static const §&!4§:int = 4;
      
      private static const §6!+§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §0!W§:uint = 12;
      
      private static const §'!<§:uint = 16;
      
      private static const §^!=§:uint = 20;
      
      private static const § L§:uint = 24;
      
      private static const §'!0§:uint = 28;
      
      private static const §[!#§:uint = 1;
      
      private static const §,6§:uint = 2;
      
      private static const §@d§:uint = 32;
      
      private static const §8O§:uint = 64;
      
      private static const §-!@§:uint = 1;
      
      private static const §,U§:uint = 2;
      
      private static const §]U§:uint = 4;
      
      private static const §1!E§:uint = 8;
      
      private static const §#a§:uint = 16;
      
      private static const §'!"§:uint = 32;
      
      private static const § !1§:uint = 128;
      
      private static const §+c§:String = "mov";
      
      private static const §,!>§:String = "add";
      
      private static const §@L§:String = "sub";
      
      private static const §6!X§:String = "mul";
      
      private static const §[p§:String = "div";
      
      private static const §^!P§:String = "rcp";
      
      private static const §8n§:String = "min";
      
      private static const §`!9§:String = "max";
      
      private static const §`!%§:String = "frc";
      
      private static const §#N§:String = "sqt";
      
      private static const §3!5§:String = "rsq";
      
      private static const §;I§:String = "pow";
      
      private static const §7F§:String = "log";
      
      private static const §`!!§:String = "exp";
      
      private static const §6m§:String = "nrm";
      
      private static const §%§:String = "sin";
      
      private static const §?!"§:String = "cos";
      
      private static const §4o§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §2!c§:String = "abs";
      
      private static const §6!S§:String = "neg";
      
      private static const §+i§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §1!8§:String = "ifz";
      
      private static const §+!=§:String = "inz";
      
      private static const §-!?§:String = "ife";
      
      private static const §;!W§:String = "ine";
      
      private static const §1r§:String = "ifg";
      
      private static const §3!!§:String = "ifl";
      
      private static const §0!B§:String = "ieg";
      
      private static const §=e§:String = "iel";
      
      private static const §>F§:String = "els";
      
      private static const §5![§:String = "eif";
      
      private static const §5t§:String = "rep";
      
      private static const §-!%§:String = "erp";
      
      private static const §4!Q§:String = "brk";
      
      private static const §^!e§:String = "kil";
      
      private static const §#w§:String = "tex";
      
      private static const §?D§:String = "sge";
      
      private static const §=-§:String = "slt";
      
      private static const §>8§:String = "sgn";
      
      private static const §4!3§:String = "va";
      
      private static const §4t§:String = "vc";
      
      private static const §%l§:String = "vt";
      
      private static const §]!K§:String = "op";
      
      private static const §?,§:String = "v";
      
      private static const §9!Y§:String = "fc";
      
      private static const §]R§:String = "ft";
      
      private static const §true §:String = "fs";
      
      private static const §@j§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §,!C§:String = "cube";
      
      private static const § X§:String = "mipnearest";
      
      private static const §'f§:String = "miplinear";
      
      private static const §!h§:String = "mipnone";
      
      private static const §+z§:String = "nomip";
      
      private static const §@H§:String = "nearest";
      
      private static const § !H§:String = "linear";
      
      private static const §-F§:String = "centroid";
      
      private static const §'!'§:String = "single";
      
      private static const §!D§:String = "depth";
      
      private static const §1!Z§:String = "repeat";
      
      private static const §5!;§:String = "wrap";
      
      private static const §!!H§:String = "clamp";
       
      
      private var §]!T§:ByteArray = null;
      
      private var §-!a§:String = "";
      
      private var §7l§:Boolean = false;
      
      public function §%O§(param1:Boolean = false)
      {
         super();
         this.§7l§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §;E§[§+c§] = new OpCode(§+c§,2,0,0);
         §;E§[§,!>§] = new OpCode(§,!>§,3,1,0);
         §;E§[§@L§] = new OpCode(§@L§,3,2,0);
         §;E§[§6!X§] = new OpCode(§6!X§,3,3,0);
         §;E§[§[p§] = new OpCode(§[p§,3,4,0);
         §;E§[§^!P§] = new OpCode(§^!P§,2,5,0);
         §;E§[§8n§] = new OpCode(§8n§,3,6,0);
         §;E§[§`!9§] = new OpCode(§`!9§,3,7,0);
         §;E§[§`!%§] = new OpCode(§`!%§,2,8,0);
         §;E§[§#N§] = new OpCode(§#N§,2,9,0);
         §;E§[§3!5§] = new OpCode(§3!5§,2,10,0);
         §;E§[§;I§] = new OpCode(§;I§,3,11,0);
         §;E§[§7F§] = new OpCode(§7F§,2,12,0);
         §;E§[§`!!§] = new OpCode(§`!!§,2,13,0);
         §;E§[§6m§] = new OpCode(§6m§,2,14,0);
         §;E§[§%§] = new OpCode(§%§,2,15,0);
         §;E§[§?!"§] = new OpCode(§?!"§,2,16,0);
         §;E§[§4o§] = new OpCode(§4o§,3,17,0);
         §;E§[DP3] = new OpCode(DP3,3,18,0);
         §;E§[DP4] = new OpCode(DP4,3,19,0);
         §;E§[§2!c§] = new OpCode(§2!c§,2,20,0);
         §;E§[§6!S§] = new OpCode(§6!S§,2,21,0);
         §;E§[§+i§] = new OpCode(§+i§,2,22,0);
         §;E§[M33] = new OpCode(M33,3,23,§#a§);
         §;E§[M44] = new OpCode(M44,3,24,§#a§);
         §;E§[M34] = new OpCode(M34,3,25,§#a§);
         §;E§[§1!8§] = new OpCode(§1!8§,1,26,§ !1§ | §,U§ | §-!@§);
         §;E§[§+!=§] = new OpCode(§+!=§,1,27,§ !1§ | §,U§ | §-!@§);
         §;E§[§-!?§] = new OpCode(§-!?§,2,28,§ !1§ | §,U§ | §-!@§);
         §;E§[§;!W§] = new OpCode(§;!W§,2,29,§ !1§ | §,U§ | §-!@§);
         §;E§[§1r§] = new OpCode(§1r§,2,30,§ !1§ | §,U§ | §-!@§);
         §;E§[§3!!§] = new OpCode(§3!!§,2,31,§ !1§ | §,U§ | §-!@§);
         §;E§[§0!B§] = new OpCode(§0!B§,2,32,§ !1§ | §,U§ | §-!@§);
         §;E§[§=e§] = new OpCode(§=e§,2,33,§ !1§ | §,U§ | §-!@§);
         §;E§[§>F§] = new OpCode(§>F§,0,34,§ !1§ | §,U§ | §]U§);
         §;E§[§5![§] = new OpCode(§5![§,0,35,§ !1§ | §]U§);
         §;E§[§5t§] = new OpCode(§5t§,1,36,§ !1§ | §,U§ | §-!@§);
         §;E§[§-!%§] = new OpCode(§-!%§,0,37,§ !1§ | §]U§);
         §;E§[§4!Q§] = new OpCode(§4!Q§,0,38,§ !1§);
         §;E§[§^!e§] = new OpCode(§^!e§,1,39,§ !1§ | §'!"§);
         §;E§[§#w§] = new OpCode(§#w§,3,40,§'!"§ | §1!E§);
         §;E§[§?D§] = new OpCode(§?D§,3,41,0);
         §;E§[§=-§] = new OpCode(§=-§,3,42,0);
         §;E§[§>8§] = new OpCode(§>8§,2,43,0);
         §4!§[§4!3§] = new Register(§4!3§,"vertex attribute",0,7,§8O§ | §,6§);
         §4!§[§4t§] = new Register(§4t§,"vertex constant",1,127,§8O§ | §,6§);
         §4!§[§%l§] = new Register(§%l§,"vertex temporary",2,7,§8O§ | §[!#§ | §,6§);
         §4!§[§]!K§] = new Register(§]!K§,"vertex output",3,0,§8O§ | §[!#§);
         §4!§[§?,§] = new Register(§?,§,"varying",4,7,§8O§ | §@d§ | §,6§ | §[!#§);
         §4!§[§9!Y§] = new Register(§9!Y§,"fragment constant",1,27,§@d§ | §,6§);
         §4!§[§]R§] = new Register(§]R§,"fragment temporary",2,7,§@d§ | §[!#§ | §,6§);
         §4!§[§true §] = new Register(§true §,"texture sampler",5,7,§@d§ | §,6§);
         §4!§[§@j§] = new Register(§@j§,"fragment output",3,0,§@d§ | §[!#§);
         §#!W§[D2] = new Sampler(D2,§0!W§,0);
         §#!W§[D3] = new Sampler(D3,§0!W§,2);
         §#!W§[§,!C§] = new Sampler(§,!C§,§0!W§,1);
         §#!W§[§ X§] = new Sampler(§ X§,§ L§,1);
         §#!W§[§'f§] = new Sampler(§'f§,§ L§,2);
         §#!W§[§!h§] = new Sampler(§!h§,§ L§,0);
         §#!W§[§+z§] = new Sampler(§+z§,§ L§,0);
         §#!W§[§@H§] = new Sampler(§@H§,§'!0§,0);
         §#!W§[§ !H§] = new Sampler(§ !H§,§'!0§,1);
         §#!W§[§-F§] = new Sampler(§-F§,§'!<§,1 << 0);
         §#!W§[§'!'§] = new Sampler(§'!'§,§'!<§,1 << 1);
         §#!W§[§!D§] = new Sampler(§!D§,§'!<§,1 << 2);
         §#!W§[§1!Z§] = new Sampler(§1!Z§,§^!=§,1);
         §#!W§[§5!;§] = new Sampler(§5!;§,§^!=§,1);
         §#!W§[§!!H§] = new Sampler(§!!H§,§^!=§,0);
      }
      
      public function get error() : String
      {
         return this.§-!a§;
      }
      
      public function get §0! §() : ByteArray
      {
         return this.§]!T§;
      }
      
      public function §!!-§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§]!T§ = new ByteArray();
         this.§-!a§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§-!a§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§0! §.endian = Endian.LITTLE_ENDIAN;
         this.§0! §.writeByte(160);
         this.§0! §.writeUnsignedInt(1);
         this.§0! §.writeByte(161);
         this.§0! §.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§-!a§ == "")
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
            _loc16_ = §;E§[_loc15_[0]];
            if(!this.§7l§)
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
               if(_loc16_.flags & §]U§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§-!a§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §,U§)
               {
                  _loc7_++;
                  if(_loc7_ > §&!4§)
                  {
                     this.§-!a§ = "error: nesting to deep, maximum allowed is " + §&!4§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §'!"§ && !_loc5_)
               {
                  this.§-!a§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§0! §.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §6!+§)
               {
                  this.§-!a§ = "error: too many opcodes. maximum is " + §6!+§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§-!a§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §4!§[_loc24_[0]];
                  if(!this.§7l§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§-!a§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §@d§))
                     {
                        this.§-!a§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§-!a§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §8O§))
                  {
                     this.§-!a§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§-!a§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & § !1§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §1!E§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§-!a§ = "error: relative can not be destination";
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
                     if((_loc39_ = §4!§[_loc38_[0]]) == null)
                     {
                        this.§-!a§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§-!a§ = "error: bad index register select";
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
                        this.§-!a§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§0! §.writeShort(_loc27_);
                     this.§0! §.writeByte(_loc28_);
                     this.§0! §.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §#!W§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §'!<§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§0! §.writeShort(_loc27_);
                     this.§0! §.writeByte(int(_loc44_ * 8));
                     this.§0! §.writeByte(0);
                     this.§0! §.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§0! §.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§0! §.writeShort(_loc27_);
                     this.§0! §.writeByte(_loc34_);
                     this.§0! §.writeByte(_loc28_);
                     this.§0! §.writeByte(_loc25_.emitCode);
                     this.§0! §.writeByte(_loc32_);
                     this.§0! §.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§0! §.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§-!a§ != "")
         {
            this.§-!a§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§0! §.length = 0;
         }
         if(this.§7l§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§0! §.length;
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
               if((_loc49_ = this.§0! §[_loc48_].toString(16)).length < 2)
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
         return this.§0! §;
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
