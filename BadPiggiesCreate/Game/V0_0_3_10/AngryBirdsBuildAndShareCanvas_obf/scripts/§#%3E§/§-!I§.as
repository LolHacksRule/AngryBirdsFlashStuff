package §#>§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §-!I§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §5s§:Dictionary = new Dictionary();
      
      private static const §0O§:Dictionary = new Dictionary();
      
      private static const §0!3§:Dictionary = new Dictionary();
      
      private static const §[L§:int = 4;
      
      private static const §"m§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §@!k§:uint = 12;
      
      private static const §1`§:uint = 16;
      
      private static const §^!u§:uint = 20;
      
      private static const §,"9§:uint = 24;
      
      private static const §,!$§:uint = 28;
      
      private static const §0T§:uint = 1;
      
      private static const §86§:uint = 2;
      
      private static const §6D§:uint = 32;
      
      private static const §=F§:uint = 64;
      
      private static const §5!H§:uint = 1;
      
      private static const §0>§:uint = 2;
      
      private static const §-!3§:uint = 4;
      
      private static const §0v§:uint = 8;
      
      private static const §2+§:uint = 16;
      
      private static const §5!T§:uint = 32;
      
      private static const §[!E§:uint = 128;
      
      private static const § if§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §7t§:String = "sub";
      
      private static const §+s§:String = "mul";
      
      private static const §2"#§:String = "div";
      
      private static const §"!2§:String = "rcp";
      
      private static const §?!C§:String = "min";
      
      private static const §%2§:String = "max";
      
      private static const §>z§:String = "frc";
      
      private static const §=l§:String = "sqt";
      
      private static const §]L§:String = "rsq";
      
      private static const §7!l§:String = "pow";
      
      private static const §<7§:String = "log";
      
      private static const §6!j§:String = "exp";
      
      private static const §9!H§:String = "nrm";
      
      private static const §-!^§:String = "sin";
      
      private static const §5C§:String = "cos";
      
      private static const §'r§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6"#§:String = "abs";
      
      private static const §>!k§:String = "neg";
      
      private static const §%c§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §@c§:String = "ifz";
      
      private static const §6%§:String = "inz";
      
      private static const §;7§:String = "ife";
      
      private static const §]0§:String = "ine";
      
      private static const §8Z§:String = "ifg";
      
      private static const §22§:String = "ifl";
      
      private static const §?6§:String = "ieg";
      
      private static const §[!8§:String = "iel";
      
      private static const §>9§:String = "els";
      
      private static const §=?§:String = "eif";
      
      private static const §[!P§:String = "rep";
      
      private static const §5!A§:String = "erp";
      
      private static const §,>§:String = "brk";
      
      private static const §"6§:String = "kil";
      
      private static const §?A§:String = "tex";
      
      private static const §<!c§:String = "sge";
      
      private static const §^!X§:String = "slt";
      
      private static const §4!§:String = "sgn";
      
      private static const §+C§:String = "va";
      
      private static const §<!P§:String = "vc";
      
      private static const §>u§:String = "vt";
      
      private static const § !2§:String = "op";
      
      private static const V:String = "v";
      
      private static const §!L§:String = "fc";
      
      private static const §`!r§:String = "ft";
      
      private static const §7P§:String = "fs";
      
      private static const §@!M§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §,J§:String = "cube";
      
      private static const §9![§:String = "mipnearest";
      
      private static const §2!o§:String = "miplinear";
      
      private static const §@"+§:String = "mipnone";
      
      private static const §#b§:String = "nomip";
      
      private static const §8!I§:String = "nearest";
      
      private static const §"V§:String = "linear";
      
      private static const §=q§:String = "centroid";
      
      private static const §5!<§:String = "single";
      
      private static const §;u§:String = "depth";
      
      private static const §,!h§:String = "repeat";
      
      private static const §2h§:String = "wrap";
      
      private static const §2v§:String = "clamp";
       
      
      private var §[a§:ByteArray = null;
      
      private var §%"'§:String = "";
      
      private var §@S§:Boolean = false;
      
      public function §-!I§(param1:Boolean = false)
      {
         super();
         this.§@S§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §5s§[§ if§] = new OpCode(§ if§,2,0,0);
         §5s§[ADD] = new OpCode(ADD,3,1,0);
         §5s§[§7t§] = new OpCode(§7t§,3,2,0);
         §5s§[§+s§] = new OpCode(§+s§,3,3,0);
         §5s§[§2"#§] = new OpCode(§2"#§,3,4,0);
         §5s§[§"!2§] = new OpCode(§"!2§,2,5,0);
         §5s§[§?!C§] = new OpCode(§?!C§,3,6,0);
         §5s§[§%2§] = new OpCode(§%2§,3,7,0);
         §5s§[§>z§] = new OpCode(§>z§,2,8,0);
         §5s§[§=l§] = new OpCode(§=l§,2,9,0);
         §5s§[§]L§] = new OpCode(§]L§,2,10,0);
         §5s§[§7!l§] = new OpCode(§7!l§,3,11,0);
         §5s§[§<7§] = new OpCode(§<7§,2,12,0);
         §5s§[§6!j§] = new OpCode(§6!j§,2,13,0);
         §5s§[§9!H§] = new OpCode(§9!H§,2,14,0);
         §5s§[§-!^§] = new OpCode(§-!^§,2,15,0);
         §5s§[§5C§] = new OpCode(§5C§,2,16,0);
         §5s§[§'r§] = new OpCode(§'r§,3,17,0);
         §5s§[DP3] = new OpCode(DP3,3,18,0);
         §5s§[DP4] = new OpCode(DP4,3,19,0);
         §5s§[§6"#§] = new OpCode(§6"#§,2,20,0);
         §5s§[§>!k§] = new OpCode(§>!k§,2,21,0);
         §5s§[§%c§] = new OpCode(§%c§,2,22,0);
         §5s§[M33] = new OpCode(M33,3,23,§2+§);
         §5s§[M44] = new OpCode(M44,3,24,§2+§);
         §5s§[M34] = new OpCode(M34,3,25,§2+§);
         §5s§[§@c§] = new OpCode(§@c§,1,26,§[!E§ | §0>§ | §5!H§);
         §5s§[§6%§] = new OpCode(§6%§,1,27,§[!E§ | §0>§ | §5!H§);
         §5s§[§;7§] = new OpCode(§;7§,2,28,§[!E§ | §0>§ | §5!H§);
         §5s§[§]0§] = new OpCode(§]0§,2,29,§[!E§ | §0>§ | §5!H§);
         §5s§[§8Z§] = new OpCode(§8Z§,2,30,§[!E§ | §0>§ | §5!H§);
         §5s§[§22§] = new OpCode(§22§,2,31,§[!E§ | §0>§ | §5!H§);
         §5s§[§?6§] = new OpCode(§?6§,2,32,§[!E§ | §0>§ | §5!H§);
         §5s§[§[!8§] = new OpCode(§[!8§,2,33,§[!E§ | §0>§ | §5!H§);
         §5s§[§>9§] = new OpCode(§>9§,0,34,§[!E§ | §0>§ | §-!3§);
         §5s§[§=?§] = new OpCode(§=?§,0,35,§[!E§ | §-!3§);
         §5s§[§[!P§] = new OpCode(§[!P§,1,36,§[!E§ | §0>§ | §5!H§);
         §5s§[§5!A§] = new OpCode(§5!A§,0,37,§[!E§ | §-!3§);
         §5s§[§,>§] = new OpCode(§,>§,0,38,§[!E§);
         §5s§[§"6§] = new OpCode(§"6§,1,39,§[!E§ | §5!T§);
         §5s§[§?A§] = new OpCode(§?A§,3,40,§5!T§ | §0v§);
         §5s§[§<!c§] = new OpCode(§<!c§,3,41,0);
         §5s§[§^!X§] = new OpCode(§^!X§,3,42,0);
         §5s§[§4!§] = new OpCode(§4!§,2,43,0);
         §0O§[§+C§] = new Register(§+C§,"vertex attribute",0,7,§=F§ | §86§);
         §0O§[§<!P§] = new Register(§<!P§,"vertex constant",1,127,§=F§ | §86§);
         §0O§[§>u§] = new Register(§>u§,"vertex temporary",2,7,§=F§ | §0T§ | §86§);
         §0O§[§ !2§] = new Register(§ !2§,"vertex output",3,0,§=F§ | §0T§);
         §0O§[V] = new Register(V,"varying",4,7,§=F§ | §6D§ | §86§ | §0T§);
         §0O§[§!L§] = new Register(§!L§,"fragment constant",1,27,§6D§ | §86§);
         §0O§[§`!r§] = new Register(§`!r§,"fragment temporary",2,7,§6D§ | §0T§ | §86§);
         §0O§[§7P§] = new Register(§7P§,"texture sampler",5,7,§6D§ | §86§);
         §0O§[§@!M§] = new Register(§@!M§,"fragment output",3,0,§6D§ | §0T§);
         §0!3§[D2] = new Sampler(D2,§@!k§,0);
         §0!3§[D3] = new Sampler(D3,§@!k§,2);
         §0!3§[§,J§] = new Sampler(§,J§,§@!k§,1);
         §0!3§[§9![§] = new Sampler(§9![§,§,"9§,1);
         §0!3§[§2!o§] = new Sampler(§2!o§,§,"9§,2);
         §0!3§[§@"+§] = new Sampler(§@"+§,§,"9§,0);
         §0!3§[§#b§] = new Sampler(§#b§,§,"9§,0);
         §0!3§[§8!I§] = new Sampler(§8!I§,§,!$§,0);
         §0!3§[§"V§] = new Sampler(§"V§,§,!$§,1);
         §0!3§[§=q§] = new Sampler(§=q§,§1`§,1 << 0);
         §0!3§[§5!<§] = new Sampler(§5!<§,§1`§,1 << 1);
         §0!3§[§;u§] = new Sampler(§;u§,§1`§,1 << 2);
         §0!3§[§,!h§] = new Sampler(§,!h§,§^!u§,1);
         §0!3§[§2h§] = new Sampler(§2h§,§^!u§,1);
         §0!3§[§2v§] = new Sampler(§2v§,§^!u§,0);
      }
      
      public function get error() : String
      {
         return this.§%"'§;
      }
      
      public function get §'!2§() : ByteArray
      {
         return this.§[a§;
      }
      
      public function §=!Q§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§[a§ = new ByteArray();
         this.§%"'§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§%"'§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§'!2§.endian = Endian.LITTLE_ENDIAN;
         this.§'!2§.writeByte(160);
         this.§'!2§.writeUnsignedInt(1);
         this.§'!2§.writeByte(161);
         this.§'!2§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§%"'§ == "")
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
            _loc16_ = §5s§[_loc15_[0]];
            if(!this.§@S§)
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
               if(_loc16_.flags & §-!3§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§%"'§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §0>§)
               {
                  _loc7_++;
                  if(_loc7_ > §[L§)
                  {
                     this.§%"'§ = "error: nesting to deep, maximum allowed is " + §[L§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §5!T§ && !_loc5_)
               {
                  this.§%"'§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§'!2§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §"m§)
               {
                  this.§%"'§ = "error: too many opcodes. maximum is " + §"m§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§%"'§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §0O§[_loc24_[0]];
                  if(!this.§@S§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§%"'§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §6D§))
                     {
                        this.§%"'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§%"'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §=F§))
                  {
                     this.§%"'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§%"'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §[!E§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §0v§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§%"'§ = "error: relative can not be destination";
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
                     if((_loc39_ = §0O§[_loc38_[0]]) == null)
                     {
                        this.§%"'§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§%"'§ = "error: bad index register select";
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
                        this.§%"'§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§'!2§.writeShort(_loc27_);
                     this.§'!2§.writeByte(_loc28_);
                     this.§'!2§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §0!3§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §1`§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§'!2§.writeShort(_loc27_);
                     this.§'!2§.writeByte(int(_loc44_ * 8));
                     this.§'!2§.writeByte(0);
                     this.§'!2§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§'!2§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§'!2§.writeShort(_loc27_);
                     this.§'!2§.writeByte(_loc34_);
                     this.§'!2§.writeByte(_loc28_);
                     this.§'!2§.writeByte(_loc25_.emitCode);
                     this.§'!2§.writeByte(_loc32_);
                     this.§'!2§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§'!2§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§%"'§ != "")
         {
            this.§%"'§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§'!2§.length = 0;
         }
         if(this.§@S§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§'!2§.length;
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
               if((_loc49_ = this.§'!2§[_loc48_].toString(16)).length < 2)
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
         return this.§'!2§;
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
