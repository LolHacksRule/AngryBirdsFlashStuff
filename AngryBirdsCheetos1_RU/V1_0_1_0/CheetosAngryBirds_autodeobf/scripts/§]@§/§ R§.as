package §]@§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class § R§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §7!0§:Dictionary = new Dictionary();
      
      private static const §'j§:Dictionary = new Dictionary();
      
      private static const §?5§:Dictionary = new Dictionary();
      
      private static const §+O§:int = 4;
      
      private static const §&!V§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §4!`§:uint = 12;
      
      private static const §-3§:uint = 16;
      
      private static const §89§:uint = 20;
      
      private static const §&N§:uint = 24;
      
      private static const § A§:uint = 28;
      
      private static const §>+§:uint = 1;
      
      private static const §+!"§:uint = 2;
      
      private static const §'!6§:uint = 32;
      
      private static const §<!§:uint = 64;
      
      private static const §7!Y§:uint = 1;
      
      private static const §9]§:uint = 2;
      
      private static const §[!'§:uint = 4;
      
      private static const §4! §:uint = 8;
      
      private static const §@&§:uint = 16;
      
      private static const §=!>§:uint = 32;
      
      private static const § !-§:uint = 128;
      
      private static const §+F§:String = "mov";
      
      private static const §7!5§:String = "add";
      
      private static const §=K§:String = "sub";
      
      private static const §2;§:String = "mul";
      
      private static const §8<§:String = "div";
      
      private static const §8!J§:String = "rcp";
      
      private static const §7a§:String = "min";
      
      private static const §8"§:String = "max";
      
      private static const §!%§:String = "frc";
      
      private static const §3!+§:String = "sqt";
      
      private static const §&!<§:String = "rsq";
      
      private static const §]!;§:String = "pow";
      
      private static const §9j§:String = "log";
      
      private static const §&w§:String = "exp";
      
      private static const §>!;§:String = "nrm";
      
      private static const §!!Y§:String = "sin";
      
      private static const §]G§:String = "cos";
      
      private static const §<!-§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §]s§:String = "abs";
      
      private static const §'J§:String = "neg";
      
      private static const §+W§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §#E§:String = "ifz";
      
      private static const §`!9§:String = "inz";
      
      private static const §2]§:String = "ife";
      
      private static const §0^§:String = "ine";
      
      private static const §3! §:String = "ifg";
      
      private static const §%7§:String = "ifl";
      
      private static const §6!L§:String = "ieg";
      
      private static const §[`§:String = "iel";
      
      private static const §6J§:String = "els";
      
      private static const §=>§:String = "eif";
      
      private static const §4o§:String = "rep";
      
      private static const §#V§:String = "erp";
      
      private static const §@!N§:String = "brk";
      
      private static const §4!8§:String = "kil";
      
      private static const §%x§:String = "tex";
      
      private static const §[![§:String = "sge";
      
      private static const §%N§:String = "slt";
      
      private static const §+!A§:String = "sgn";
      
      private static const §["§:String = "va";
      
      private static const §?!`§:String = "vc";
      
      private static const §@E§:String = "vt";
      
      private static const § L§:String = "op";
      
      private static const §<!%§:String = "v";
      
      private static const §0!D§:String = "fc";
      
      private static const §<!Y§:String = "ft";
      
      private static const §7!E§:String = "fs";
      
      private static const §6s§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §=!0§:String = "cube";
      
      private static const §>i§:String = "mipnearest";
      
      private static const §<!"§:String = "miplinear";
      
      private static const §>q§:String = "mipnone";
      
      private static const §;!8§:String = "nomip";
      
      private static const §;A§:String = "nearest";
      
      private static const §6!C§:String = "linear";
      
      private static const §+!Q§:String = "centroid";
      
      private static const §8Z§:String = "single";
      
      private static const §<^§:String = "depth";
      
      private static const §-!L§:String = "repeat";
      
      private static const § &§:String = "wrap";
      
      private static const §;!L§:String = "clamp";
       
      
      private var §2!'§:ByteArray = null;
      
      private var §3M§:String = "";
      
      private var § use§:Boolean = false;
      
      public function § R§(param1:Boolean = false)
      {
         super();
         this.§ use§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §7!0§[§+F§] = new OpCode(§+F§,2,0,0);
         §7!0§[§7!5§] = new OpCode(§7!5§,3,1,0);
         §7!0§[§=K§] = new OpCode(§=K§,3,2,0);
         §7!0§[§2;§] = new OpCode(§2;§,3,3,0);
         §7!0§[§8<§] = new OpCode(§8<§,3,4,0);
         §7!0§[§8!J§] = new OpCode(§8!J§,2,5,0);
         §7!0§[§7a§] = new OpCode(§7a§,3,6,0);
         §7!0§[§8"§] = new OpCode(§8"§,3,7,0);
         §7!0§[§!%§] = new OpCode(§!%§,2,8,0);
         §7!0§[§3!+§] = new OpCode(§3!+§,2,9,0);
         §7!0§[§&!<§] = new OpCode(§&!<§,2,10,0);
         §7!0§[§]!;§] = new OpCode(§]!;§,3,11,0);
         §7!0§[§9j§] = new OpCode(§9j§,2,12,0);
         §7!0§[§&w§] = new OpCode(§&w§,2,13,0);
         §7!0§[§>!;§] = new OpCode(§>!;§,2,14,0);
         §7!0§[§!!Y§] = new OpCode(§!!Y§,2,15,0);
         §7!0§[§]G§] = new OpCode(§]G§,2,16,0);
         §7!0§[§<!-§] = new OpCode(§<!-§,3,17,0);
         §7!0§[DP3] = new OpCode(DP3,3,18,0);
         §7!0§[DP4] = new OpCode(DP4,3,19,0);
         §7!0§[§]s§] = new OpCode(§]s§,2,20,0);
         §7!0§[§'J§] = new OpCode(§'J§,2,21,0);
         §7!0§[§+W§] = new OpCode(§+W§,2,22,0);
         §7!0§[M33] = new OpCode(M33,3,23,§@&§);
         §7!0§[M44] = new OpCode(M44,3,24,§@&§);
         §7!0§[M34] = new OpCode(M34,3,25,§@&§);
         §7!0§[§#E§] = new OpCode(§#E§,1,26,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§`!9§] = new OpCode(§`!9§,1,27,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§2]§] = new OpCode(§2]§,2,28,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§0^§] = new OpCode(§0^§,2,29,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§3! §] = new OpCode(§3! §,2,30,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§%7§] = new OpCode(§%7§,2,31,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§6!L§] = new OpCode(§6!L§,2,32,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§[`§] = new OpCode(§[`§,2,33,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§6J§] = new OpCode(§6J§,0,34,§ !-§ | §9]§ | §[!'§);
         §7!0§[§=>§] = new OpCode(§=>§,0,35,§ !-§ | §[!'§);
         §7!0§[§4o§] = new OpCode(§4o§,1,36,§ !-§ | §9]§ | §7!Y§);
         §7!0§[§#V§] = new OpCode(§#V§,0,37,§ !-§ | §[!'§);
         §7!0§[§@!N§] = new OpCode(§@!N§,0,38,§ !-§);
         §7!0§[§4!8§] = new OpCode(§4!8§,1,39,§ !-§ | §=!>§);
         §7!0§[§%x§] = new OpCode(§%x§,3,40,§=!>§ | §4! §);
         §7!0§[§[![§] = new OpCode(§[![§,3,41,0);
         §7!0§[§%N§] = new OpCode(§%N§,3,42,0);
         §7!0§[§+!A§] = new OpCode(§+!A§,2,43,0);
         §'j§[§["§] = new Register(§["§,"vertex attribute",0,7,§<!§ | §+!"§);
         §'j§[§?!`§] = new Register(§?!`§,"vertex constant",1,127,§<!§ | §+!"§);
         §'j§[§@E§] = new Register(§@E§,"vertex temporary",2,7,§<!§ | §>+§ | §+!"§);
         §'j§[§ L§] = new Register(§ L§,"vertex output",3,0,§<!§ | §>+§);
         §'j§[§<!%§] = new Register(§<!%§,"varying",4,7,§<!§ | §'!6§ | §+!"§ | §>+§);
         §'j§[§0!D§] = new Register(§0!D§,"fragment constant",1,27,§'!6§ | §+!"§);
         §'j§[§<!Y§] = new Register(§<!Y§,"fragment temporary",2,7,§'!6§ | §>+§ | §+!"§);
         §'j§[§7!E§] = new Register(§7!E§,"texture sampler",5,7,§'!6§ | §+!"§);
         §'j§[§6s§] = new Register(§6s§,"fragment output",3,0,§'!6§ | §>+§);
         §?5§[D2] = new Sampler(D2,§4!`§,0);
         §?5§[D3] = new Sampler(D3,§4!`§,2);
         §?5§[§=!0§] = new Sampler(§=!0§,§4!`§,1);
         §?5§[§>i§] = new Sampler(§>i§,§&N§,1);
         §?5§[§<!"§] = new Sampler(§<!"§,§&N§,2);
         §?5§[§>q§] = new Sampler(§>q§,§&N§,0);
         §?5§[§;!8§] = new Sampler(§;!8§,§&N§,0);
         §?5§[§;A§] = new Sampler(§;A§,§ A§,0);
         §?5§[§6!C§] = new Sampler(§6!C§,§ A§,1);
         §?5§[§+!Q§] = new Sampler(§+!Q§,§-3§,1 << 0);
         §?5§[§8Z§] = new Sampler(§8Z§,§-3§,1 << 1);
         §?5§[§<^§] = new Sampler(§<^§,§-3§,1 << 2);
         §?5§[§-!L§] = new Sampler(§-!L§,§89§,1);
         §?5§[§ &§] = new Sampler(§ &§,§89§,1);
         §?5§[§;!L§] = new Sampler(§;!L§,§89§,0);
      }
      
      public function get error() : String
      {
         return this.§3M§;
      }
      
      public function get §3R§() : ByteArray
      {
         return this.§2!'§;
      }
      
      public function §1!L§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§2!'§ = new ByteArray();
         this.§3M§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§3M§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§3R§.endian = Endian.LITTLE_ENDIAN;
         this.§3R§.writeByte(160);
         this.§3R§.writeUnsignedInt(1);
         this.§3R§.writeByte(161);
         this.§3R§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§3M§ == "")
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
            _loc16_ = §7!0§[_loc15_[0]];
            if(!this.§ use§)
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
               if(_loc16_.flags & §[!'§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§3M§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §9]§)
               {
                  _loc7_++;
                  if(_loc7_ > §+O§)
                  {
                     this.§3M§ = "error: nesting to deep, maximum allowed is " + §+O§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §=!>§ && !_loc5_)
               {
                  this.§3M§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§3R§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §&!V§)
               {
                  this.§3M§ = "error: too many opcodes. maximum is " + §&!V§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§3M§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §'j§[_loc24_[0]];
                  if(!this.§ use§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§3M§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §'!6§))
                     {
                        this.§3M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§3M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §<!§))
                  {
                     this.§3M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§3M§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & § !-§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §4! §;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§3M§ = "error: relative can not be destination";
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
                     if((_loc39_ = §'j§[_loc38_[0]]) == null)
                     {
                        this.§3M§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§3M§ = "error: bad index register select";
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
                        this.§3M§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§3R§.writeShort(_loc27_);
                     this.§3R§.writeByte(_loc28_);
                     this.§3R§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §?5§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §-3§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§3R§.writeShort(_loc27_);
                     this.§3R§.writeByte(int(_loc44_ * 8));
                     this.§3R§.writeByte(0);
                     this.§3R§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§3R§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§3R§.writeShort(_loc27_);
                     this.§3R§.writeByte(_loc34_);
                     this.§3R§.writeByte(_loc28_);
                     this.§3R§.writeByte(_loc25_.emitCode);
                     this.§3R§.writeByte(_loc32_);
                     this.§3R§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§3R§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§3M§ != "")
         {
            this.§3M§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§3R§.length = 0;
         }
         if(this.§ use§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§3R§.length;
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
               if((_loc49_ = this.§3R§[_loc48_].toString(16)).length < 2)
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
         return this.§3R§;
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
