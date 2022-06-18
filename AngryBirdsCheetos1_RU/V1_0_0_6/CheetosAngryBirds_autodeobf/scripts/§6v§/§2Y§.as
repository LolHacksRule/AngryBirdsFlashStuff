package §6v§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §2Y§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §3K§:Dictionary = new Dictionary();
      
      private static const §1![§:Dictionary = new Dictionary();
      
      private static const §=r§:Dictionary = new Dictionary();
      
      private static const §?!^§:int = 4;
      
      private static const § each§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §'!J§:uint = 12;
      
      private static const § $§:uint = 16;
      
      private static const §2%§:uint = 20;
      
      private static const §4!Y§:uint = 24;
      
      private static const §?L§:uint = 28;
      
      private static const §?%§:uint = 1;
      
      private static const §=M§:uint = 2;
      
      private static const §-!P§:uint = 32;
      
      private static const §"!U§:uint = 64;
      
      private static const §&!+§:uint = 1;
      
      private static const §'h§:uint = 2;
      
      private static const §,!M§:uint = 4;
      
      private static const §%!8§:uint = 8;
      
      private static const §9!1§:uint = 16;
      
      private static const §-!%§:uint = 32;
      
      private static const §>0§:uint = 128;
      
      private static const §!K§:String = "mov";
      
      private static const §;_§:String = "add";
      
      private static const §2!A§:String = "sub";
      
      private static const §[d§:String = "mul";
      
      private static const §;!8§:String = "div";
      
      private static const §6g§:String = "rcp";
      
      private static const §4]§:String = "min";
      
      private static const §8D§:String = "max";
      
      private static const § try§:String = "frc";
      
      private static const § var§:String = "sqt";
      
      private static const §'l§:String = "rsq";
      
      private static const §;1§:String = "pow";
      
      private static const §@J§:String = "log";
      
      private static const §<F§:String = "exp";
      
      private static const §]!]§:String = "nrm";
      
      private static const §@e§:String = "sin";
      
      private static const §"!$§:String = "cos";
      
      private static const §,&§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §4=§:String = "abs";
      
      private static const §?N§:String = "neg";
      
      private static const §6!"§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §8n§:String = "ifz";
      
      private static const §=!^§:String = "inz";
      
      private static const §4!$§:String = "ife";
      
      private static const § !>§:String = "ine";
      
      private static const § !N§:String = "ifg";
      
      private static const §1g§:String = "ifl";
      
      private static const §0!9§:String = "ieg";
      
      private static const §8m§:String = "iel";
      
      private static const §!b§:String = "els";
      
      private static const §8@§:String = "eif";
      
      private static const §1$§:String = "rep";
      
      private static const §#!a§:String = "erp";
      
      private static const §!!%§:String = "brk";
      
      private static const §[l§:String = "kil";
      
      private static const §&!@§:String = "tex";
      
      private static const §null §:String = "sge";
      
      private static const §&!W§:String = "slt";
      
      private static const §>Y§:String = "sgn";
      
      private static const §'+§:String = "va";
      
      private static const §9!4§:String = "vc";
      
      private static const §each §:String = "vt";
      
      private static const §^-§:String = "op";
      
      private static const §[5§:String = "v";
      
      private static const §^!Y§:String = "fc";
      
      private static const §=!O§:String = "ft";
      
      private static const §=k§:String = "fs";
      
      private static const §&7§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §3!U§:String = "cube";
      
      private static const §6`§:String = "mipnearest";
      
      private static const §^!U§:String = "miplinear";
      
      private static const §%f§:String = "mipnone";
      
      private static const §-y§:String = "nomip";
      
      private static const §5y§:String = "nearest";
      
      private static const §%k§:String = "linear";
      
      private static const §]!%§:String = "centroid";
      
      private static const §"!,§:String = "single";
      
      private static const §2!I§:String = "depth";
      
      private static const §2!+§:String = "repeat";
      
      private static const §#m§:String = "wrap";
      
      private static const §%!V§:String = "clamp";
       
      
      private var §!0§:ByteArray = null;
      
      private var §5O§:String = "";
      
      private var § !]§:Boolean = false;
      
      public function §2Y§(param1:Boolean = false)
      {
         super();
         this.§ !]§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §3K§[§!K§] = new OpCode(§!K§,2,0,0);
         §3K§[§;_§] = new OpCode(§;_§,3,1,0);
         §3K§[§2!A§] = new OpCode(§2!A§,3,2,0);
         §3K§[§[d§] = new OpCode(§[d§,3,3,0);
         §3K§[§;!8§] = new OpCode(§;!8§,3,4,0);
         §3K§[§6g§] = new OpCode(§6g§,2,5,0);
         §3K§[§4]§] = new OpCode(§4]§,3,6,0);
         §3K§[§8D§] = new OpCode(§8D§,3,7,0);
         §3K§[§ try§] = new OpCode(§ try§,2,8,0);
         §3K§[§ var§] = new OpCode(§ var§,2,9,0);
         §3K§[§'l§] = new OpCode(§'l§,2,10,0);
         §3K§[§;1§] = new OpCode(§;1§,3,11,0);
         §3K§[§@J§] = new OpCode(§@J§,2,12,0);
         §3K§[§<F§] = new OpCode(§<F§,2,13,0);
         §3K§[§]!]§] = new OpCode(§]!]§,2,14,0);
         §3K§[§@e§] = new OpCode(§@e§,2,15,0);
         §3K§[§"!$§] = new OpCode(§"!$§,2,16,0);
         §3K§[§,&§] = new OpCode(§,&§,3,17,0);
         §3K§[DP3] = new OpCode(DP3,3,18,0);
         §3K§[DP4] = new OpCode(DP4,3,19,0);
         §3K§[§4=§] = new OpCode(§4=§,2,20,0);
         §3K§[§?N§] = new OpCode(§?N§,2,21,0);
         §3K§[§6!"§] = new OpCode(§6!"§,2,22,0);
         §3K§[M33] = new OpCode(M33,3,23,§9!1§);
         §3K§[M44] = new OpCode(M44,3,24,§9!1§);
         §3K§[M34] = new OpCode(M34,3,25,§9!1§);
         §3K§[§8n§] = new OpCode(§8n§,1,26,§>0§ | §'h§ | §&!+§);
         §3K§[§=!^§] = new OpCode(§=!^§,1,27,§>0§ | §'h§ | §&!+§);
         §3K§[§4!$§] = new OpCode(§4!$§,2,28,§>0§ | §'h§ | §&!+§);
         §3K§[§ !>§] = new OpCode(§ !>§,2,29,§>0§ | §'h§ | §&!+§);
         §3K§[§ !N§] = new OpCode(§ !N§,2,30,§>0§ | §'h§ | §&!+§);
         §3K§[§1g§] = new OpCode(§1g§,2,31,§>0§ | §'h§ | §&!+§);
         §3K§[§0!9§] = new OpCode(§0!9§,2,32,§>0§ | §'h§ | §&!+§);
         §3K§[§8m§] = new OpCode(§8m§,2,33,§>0§ | §'h§ | §&!+§);
         §3K§[§!b§] = new OpCode(§!b§,0,34,§>0§ | §'h§ | §,!M§);
         §3K§[§8@§] = new OpCode(§8@§,0,35,§>0§ | §,!M§);
         §3K§[§1$§] = new OpCode(§1$§,1,36,§>0§ | §'h§ | §&!+§);
         §3K§[§#!a§] = new OpCode(§#!a§,0,37,§>0§ | §,!M§);
         §3K§[§!!%§] = new OpCode(§!!%§,0,38,§>0§);
         §3K§[§[l§] = new OpCode(§[l§,1,39,§>0§ | §-!%§);
         §3K§[§&!@§] = new OpCode(§&!@§,3,40,§-!%§ | §%!8§);
         §3K§[§null §] = new OpCode(§null §,3,41,0);
         §3K§[§&!W§] = new OpCode(§&!W§,3,42,0);
         §3K§[§>Y§] = new OpCode(§>Y§,2,43,0);
         §1![§[§'+§] = new Register(§'+§,"vertex attribute",0,7,§"!U§ | §=M§);
         §1![§[§9!4§] = new Register(§9!4§,"vertex constant",1,127,§"!U§ | §=M§);
         §1![§[§each §] = new Register(§each §,"vertex temporary",2,7,§"!U§ | §?%§ | §=M§);
         §1![§[§^-§] = new Register(§^-§,"vertex output",3,0,§"!U§ | §?%§);
         §1![§[§[5§] = new Register(§[5§,"varying",4,7,§"!U§ | §-!P§ | §=M§ | §?%§);
         §1![§[§^!Y§] = new Register(§^!Y§,"fragment constant",1,27,§-!P§ | §=M§);
         §1![§[§=!O§] = new Register(§=!O§,"fragment temporary",2,7,§-!P§ | §?%§ | §=M§);
         §1![§[§=k§] = new Register(§=k§,"texture sampler",5,7,§-!P§ | §=M§);
         §1![§[§&7§] = new Register(§&7§,"fragment output",3,0,§-!P§ | §?%§);
         §=r§[D2] = new Sampler(D2,§'!J§,0);
         §=r§[D3] = new Sampler(D3,§'!J§,2);
         §=r§[§3!U§] = new Sampler(§3!U§,§'!J§,1);
         §=r§[§6`§] = new Sampler(§6`§,§4!Y§,1);
         §=r§[§^!U§] = new Sampler(§^!U§,§4!Y§,2);
         §=r§[§%f§] = new Sampler(§%f§,§4!Y§,0);
         §=r§[§-y§] = new Sampler(§-y§,§4!Y§,0);
         §=r§[§5y§] = new Sampler(§5y§,§?L§,0);
         §=r§[§%k§] = new Sampler(§%k§,§?L§,1);
         §=r§[§]!%§] = new Sampler(§]!%§,§ $§,1 << 0);
         §=r§[§"!,§] = new Sampler(§"!,§,§ $§,1 << 1);
         §=r§[§2!I§] = new Sampler(§2!I§,§ $§,1 << 2);
         §=r§[§2!+§] = new Sampler(§2!+§,§2%§,1);
         §=r§[§#m§] = new Sampler(§#m§,§2%§,1);
         §=r§[§%!V§] = new Sampler(§%!V§,§2%§,0);
      }
      
      public function get error() : String
      {
         return this.§5O§;
      }
      
      public function get §!+§() : ByteArray
      {
         return this.§!0§;
      }
      
      public function §0!`§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§!0§ = new ByteArray();
         this.§5O§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§5O§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§!+§.endian = Endian.LITTLE_ENDIAN;
         this.§!+§.writeByte(160);
         this.§!+§.writeUnsignedInt(1);
         this.§!+§.writeByte(161);
         this.§!+§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§5O§ == "")
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
            _loc16_ = §3K§[_loc15_[0]];
            if(!this.§ !]§)
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
               if(_loc16_.flags & §,!M§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§5O§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §'h§)
               {
                  _loc7_++;
                  if(_loc7_ > §?!^§)
                  {
                     this.§5O§ = "error: nesting to deep, maximum allowed is " + §?!^§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §-!%§ && !_loc5_)
               {
                  this.§5O§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§!+§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > § each§)
               {
                  this.§5O§ = "error: too many opcodes. maximum is " + § each§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§5O§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §1![§[_loc24_[0]];
                  if(!this.§ !]§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§5O§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §-!P§))
                     {
                        this.§5O§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§5O§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §"!U§))
                  {
                     this.§5O§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§5O§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §>0§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §%!8§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§5O§ = "error: relative can not be destination";
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
                     if((_loc39_ = §1![§[_loc38_[0]]) == null)
                     {
                        this.§5O§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§5O§ = "error: bad index register select";
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
                        this.§5O§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§!+§.writeShort(_loc27_);
                     this.§!+§.writeByte(_loc28_);
                     this.§!+§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §=r§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != § $§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§!+§.writeShort(_loc27_);
                     this.§!+§.writeByte(int(_loc44_ * 8));
                     this.§!+§.writeByte(0);
                     this.§!+§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§!+§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§!+§.writeShort(_loc27_);
                     this.§!+§.writeByte(_loc34_);
                     this.§!+§.writeByte(_loc28_);
                     this.§!+§.writeByte(_loc25_.emitCode);
                     this.§!+§.writeByte(_loc32_);
                     this.§!+§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§!+§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§5O§ != "")
         {
            this.§5O§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§!+§.length = 0;
         }
         if(this.§ !]§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§!+§.length;
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
               if((_loc49_ = this.§!+§[_loc48_].toString(16)).length < 2)
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
         return this.§!+§;
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
