package §4!F§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%@§:Dictionary = new Dictionary();
      
      private static const §@A§:Dictionary = new Dictionary();
      
      private static const §;!z§:Dictionary = new Dictionary();
      
      private static const §=M§:int = 4;
      
      private static const §#!"§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §09§:uint = 12;
      
      private static const §9U§:uint = 16;
      
      private static const §%n§:uint = 20;
      
      private static const §!!C§:uint = 24;
      
      private static const §3a§:uint = 28;
      
      private static const §8!u§:uint = 1;
      
      private static const §=-§:uint = 2;
      
      private static const §+!s§:uint = 32;
      
      private static const §8Q§:uint = 64;
      
      private static const §4=§:uint = 1;
      
      private static const §,S§:uint = 2;
      
      private static const §-!q§:uint = 4;
      
      private static const §49§:uint = 8;
      
      private static const §#H§:uint = 16;
      
      private static const §+!9§:uint = 32;
      
      private static const §"!@§:uint = 128;
      
      private static const §15§:String = "mov";
      
      private static const §"k§:String = "add";
      
      private static const §1!J§:String = "sub";
      
      private static const §,!l§:String = "mul";
      
      private static const §@C§:String = "div";
      
      private static const §27§:String = "rcp";
      
      private static const §<U§:String = "min";
      
      private static const §4!N§:String = "max";
      
      private static const §0!$§:String = "frc";
      
      private static const §'!!§:String = "sqt";
      
      private static const §>X§:String = "rsq";
      
      private static const § !F§:String = "pow";
      
      private static const §"!c§:String = "log";
      
      private static const § T§:String = "exp";
      
      private static const §-&§:String = "nrm";
      
      private static const §>!G§:String = "sin";
      
      private static const §,%§:String = "cos";
      
      private static const §9!T§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §`x§:String = "abs";
      
      private static const §[!W§:String = "neg";
      
      private static const §;" §:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §#!^§:String = "ifz";
      
      private static const §=!e§:String = "inz";
      
      private static const §1!=§:String = "ife";
      
      private static const §8!l§:String = "ine";
      
      private static const §`0§:String = "ifg";
      
      private static const §!&§:String = "ifl";
      
      private static const §3c§:String = "ieg";
      
      private static const §=" §:String = "iel";
      
      private static const §8!§:String = "els";
      
      private static const §',§:String = "eif";
      
      private static const §9!Q§:String = "rep";
      
      private static const §%!h§:String = "erp";
      
      private static const §=!h§:String = "brk";
      
      private static const §>T§:String = "kil";
      
      private static const §4[§:String = "tex";
      
      private static const §67§:String = "sge";
      
      private static const §1""§:String = "slt";
      
      private static const §8!+§:String = "sgn";
      
      private static const §`i§:String = "va";
      
      private static const §+!n§:String = "vc";
      
      private static const §#!i§:String = "vt";
      
      private static const §]_§:String = "op";
      
      private static const §4S§:String = "v";
      
      private static const §^!Y§:String = "fc";
      
      private static const §"!$§:String = "ft";
      
      private static const §0!5§:String = "fs";
      
      private static const §7!+§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §-!D§:String = "cube";
      
      private static const §,I§:String = "mipnearest";
      
      private static const §%!f§:String = "miplinear";
      
      private static const §1!V§:String = "mipnone";
      
      private static const §+!;§:String = "nomip";
      
      private static const §9!s§:String = "nearest";
      
      private static const §?n§:String = "linear";
      
      private static const §+![§:String = "centroid";
      
      private static const §#Q§:String = "single";
      
      private static const §=V§:String = "depth";
      
      private static const §-!l§:String = "repeat";
      
      private static const §?<§:String = "wrap";
      
      private static const §8!B§:String = "clamp";
       
      
      private var §5c§:ByteArray = null;
      
      private var §"!S§:String = "";
      
      private var §"!6§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§"!6§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%@§[§15§] = new OpCode(§15§,2,0,0);
         §%@§[§"k§] = new OpCode(§"k§,3,1,0);
         §%@§[§1!J§] = new OpCode(§1!J§,3,2,0);
         §%@§[§,!l§] = new OpCode(§,!l§,3,3,0);
         §%@§[§@C§] = new OpCode(§@C§,3,4,0);
         §%@§[§27§] = new OpCode(§27§,2,5,0);
         §%@§[§<U§] = new OpCode(§<U§,3,6,0);
         §%@§[§4!N§] = new OpCode(§4!N§,3,7,0);
         §%@§[§0!$§] = new OpCode(§0!$§,2,8,0);
         §%@§[§'!!§] = new OpCode(§'!!§,2,9,0);
         §%@§[§>X§] = new OpCode(§>X§,2,10,0);
         §%@§[§ !F§] = new OpCode(§ !F§,3,11,0);
         §%@§[§"!c§] = new OpCode(§"!c§,2,12,0);
         §%@§[§ T§] = new OpCode(§ T§,2,13,0);
         §%@§[§-&§] = new OpCode(§-&§,2,14,0);
         §%@§[§>!G§] = new OpCode(§>!G§,2,15,0);
         §%@§[§,%§] = new OpCode(§,%§,2,16,0);
         §%@§[§9!T§] = new OpCode(§9!T§,3,17,0);
         §%@§[DP3] = new OpCode(DP3,3,18,0);
         §%@§[DP4] = new OpCode(DP4,3,19,0);
         §%@§[§`x§] = new OpCode(§`x§,2,20,0);
         §%@§[§[!W§] = new OpCode(§[!W§,2,21,0);
         §%@§[§;" §] = new OpCode(§;" §,2,22,0);
         §%@§[M33] = new OpCode(M33,3,23,§#H§);
         §%@§[M44] = new OpCode(M44,3,24,§#H§);
         §%@§[M34] = new OpCode(M34,3,25,§#H§);
         §%@§[§#!^§] = new OpCode(§#!^§,1,26,§"!@§ | §,S§ | §4=§);
         §%@§[§=!e§] = new OpCode(§=!e§,1,27,§"!@§ | §,S§ | §4=§);
         §%@§[§1!=§] = new OpCode(§1!=§,2,28,§"!@§ | §,S§ | §4=§);
         §%@§[§8!l§] = new OpCode(§8!l§,2,29,§"!@§ | §,S§ | §4=§);
         §%@§[§`0§] = new OpCode(§`0§,2,30,§"!@§ | §,S§ | §4=§);
         §%@§[§!&§] = new OpCode(§!&§,2,31,§"!@§ | §,S§ | §4=§);
         §%@§[§3c§] = new OpCode(§3c§,2,32,§"!@§ | §,S§ | §4=§);
         §%@§[§=" §] = new OpCode(§=" §,2,33,§"!@§ | §,S§ | §4=§);
         §%@§[§8!§] = new OpCode(§8!§,0,34,§"!@§ | §,S§ | §-!q§);
         §%@§[§',§] = new OpCode(§',§,0,35,§"!@§ | §-!q§);
         §%@§[§9!Q§] = new OpCode(§9!Q§,1,36,§"!@§ | §,S§ | §4=§);
         §%@§[§%!h§] = new OpCode(§%!h§,0,37,§"!@§ | §-!q§);
         §%@§[§=!h§] = new OpCode(§=!h§,0,38,§"!@§);
         §%@§[§>T§] = new OpCode(§>T§,1,39,§"!@§ | §+!9§);
         §%@§[§4[§] = new OpCode(§4[§,3,40,§+!9§ | §49§);
         §%@§[§67§] = new OpCode(§67§,3,41,0);
         §%@§[§1""§] = new OpCode(§1""§,3,42,0);
         §%@§[§8!+§] = new OpCode(§8!+§,2,43,0);
         §@A§[§`i§] = new Register(§`i§,"vertex attribute",0,7,§8Q§ | §=-§);
         §@A§[§+!n§] = new Register(§+!n§,"vertex constant",1,127,§8Q§ | §=-§);
         §@A§[§#!i§] = new Register(§#!i§,"vertex temporary",2,7,§8Q§ | §8!u§ | §=-§);
         §@A§[§]_§] = new Register(§]_§,"vertex output",3,0,§8Q§ | §8!u§);
         §@A§[§4S§] = new Register(§4S§,"varying",4,7,§8Q§ | §+!s§ | §=-§ | §8!u§);
         §@A§[§^!Y§] = new Register(§^!Y§,"fragment constant",1,27,§+!s§ | §=-§);
         §@A§[§"!$§] = new Register(§"!$§,"fragment temporary",2,7,§+!s§ | §8!u§ | §=-§);
         §@A§[§0!5§] = new Register(§0!5§,"texture sampler",5,7,§+!s§ | §=-§);
         §@A§[§7!+§] = new Register(§7!+§,"fragment output",3,0,§+!s§ | §8!u§);
         §;!z§[D2] = new Sampler(D2,§09§,0);
         §;!z§[D3] = new Sampler(D3,§09§,2);
         §;!z§[§-!D§] = new Sampler(§-!D§,§09§,1);
         §;!z§[§,I§] = new Sampler(§,I§,§!!C§,1);
         §;!z§[§%!f§] = new Sampler(§%!f§,§!!C§,2);
         §;!z§[§1!V§] = new Sampler(§1!V§,§!!C§,0);
         §;!z§[§+!;§] = new Sampler(§+!;§,§!!C§,0);
         §;!z§[§9!s§] = new Sampler(§9!s§,§3a§,0);
         §;!z§[§?n§] = new Sampler(§?n§,§3a§,1);
         §;!z§[§+![§] = new Sampler(§+![§,§9U§,1 << 0);
         §;!z§[§#Q§] = new Sampler(§#Q§,§9U§,1 << 1);
         §;!z§[§=V§] = new Sampler(§=V§,§9U§,1 << 2);
         §;!z§[§-!l§] = new Sampler(§-!l§,§%n§,1);
         §;!z§[§?<§] = new Sampler(§?<§,§%n§,1);
         §;!z§[§8!B§] = new Sampler(§8!B§,§%n§,0);
      }
      
      public function get error() : String
      {
         return this.§"!S§;
      }
      
      public function get §;!M§() : ByteArray
      {
         return this.§5c§;
      }
      
      public function §9!+§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§5c§ = new ByteArray();
         this.§"!S§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§"!S§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§;!M§.endian = Endian.LITTLE_ENDIAN;
         this.§;!M§.writeByte(160);
         this.§;!M§.writeUnsignedInt(1);
         this.§;!M§.writeByte(161);
         this.§;!M§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§"!S§ == "")
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
            _loc16_ = §%@§[_loc15_[0]];
            if(!this.§"!6§)
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
               if(_loc16_.flags & §-!q§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§"!S§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §,S§)
               {
                  _loc7_++;
                  if(_loc7_ > §=M§)
                  {
                     this.§"!S§ = "error: nesting to deep, maximum allowed is " + §=M§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §+!9§ && !_loc5_)
               {
                  this.§"!S§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§;!M§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §#!"§)
               {
                  this.§"!S§ = "error: too many opcodes. maximum is " + §#!"§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§"!S§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §@A§[_loc24_[0]];
                  if(!this.§"!6§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§"!S§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §+!s§))
                     {
                        this.§"!S§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§"!S§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §8Q§))
                  {
                     this.§"!S§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§"!S§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §"!@§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §49§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§"!S§ = "error: relative can not be destination";
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
                     if((_loc39_ = §@A§[_loc38_[0]]) == null)
                     {
                        this.§"!S§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§"!S§ = "error: bad index register select";
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
                        this.§"!S§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§;!M§.writeShort(_loc27_);
                     this.§;!M§.writeByte(_loc28_);
                     this.§;!M§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §;!z§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §9U§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§;!M§.writeShort(_loc27_);
                     this.§;!M§.writeByte(int(_loc44_ * 8));
                     this.§;!M§.writeByte(0);
                     this.§;!M§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§;!M§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§;!M§.writeShort(_loc27_);
                     this.§;!M§.writeByte(_loc34_);
                     this.§;!M§.writeByte(_loc28_);
                     this.§;!M§.writeByte(_loc25_.emitCode);
                     this.§;!M§.writeByte(_loc32_);
                     this.§;!M§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§;!M§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§"!S§ != "")
         {
            this.§"!S§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§;!M§.length = 0;
         }
         if(this.§"!6§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§;!M§.length;
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
               if((_loc49_ = this.§;!M§[_loc48_].toString(16)).length < 2)
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
         return this.§;!M§;
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
