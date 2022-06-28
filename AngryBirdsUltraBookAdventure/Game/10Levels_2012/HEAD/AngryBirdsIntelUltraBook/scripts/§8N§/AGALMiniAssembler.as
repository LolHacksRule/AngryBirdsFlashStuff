package §8N§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §2A§:Dictionary = new Dictionary();
      
      private static const §"O§:Dictionary = new Dictionary();
      
      private static const §5!=§:Dictionary = new Dictionary();
      
      private static const §0U§:int = 4;
      
      private static const §]D§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §]n§:uint = 12;
      
      private static const §!b§:uint = 16;
      
      private static const §3g§:uint = 20;
      
      private static const §&@§:uint = 24;
      
      private static const §-!g§:uint = 28;
      
      private static const §;!§:uint = 1;
      
      private static const §1!k§:uint = 2;
      
      private static const § !D§:uint = 32;
      
      private static const §,u§:uint = 64;
      
      private static const §=!i§:uint = 1;
      
      private static const §=3§:uint = 2;
      
      private static const §!Y§:uint = 4;
      
      private static const §2<§:uint = 8;
      
      private static const §[0§:uint = 16;
      
      private static const §=v§:uint = 32;
      
      private static const §=!E§:uint = 128;
      
      private static const §0!,§:String = "mov";
      
      private static const §&!+§:String = "add";
      
      private static const §,!C§:String = "sub";
      
      private static const §[!^§:String = "mul";
      
      private static const §`4§:String = "div";
      
      private static const §2!W§:String = "rcp";
      
      private static const §8O§:String = "min";
      
      private static const §6o§:String = "max";
      
      private static const §9!i§:String = "frc";
      
      private static const §`!>§:String = "sqt";
      
      private static const §&o§:String = "rsq";
      
      private static const §+!#§:String = "pow";
      
      private static const §^t§:String = "log";
      
      private static const §2=§:String = "exp";
      
      private static const §#H§:String = "nrm";
      
      private static const §'!2§:String = "sin";
      
      private static const §,!1§:String = "cos";
      
      private static const §`!,§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §4Z§:String = "abs";
      
      private static const §7!A§:String = "neg";
      
      private static const §%J§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §]!"§:String = "ifz";
      
      private static const §1l§:String = "inz";
      
      private static const §-!G§:String = "ife";
      
      private static const §3M§:String = "ine";
      
      private static const §9!_§:String = "ifg";
      
      private static const §%§:String = "ifl";
      
      private static const § F§:String = "ieg";
      
      private static const §?X§:String = "iel";
      
      private static const §,i§:String = "els";
      
      private static const §for §:String = "eif";
      
      private static const §!!0§:String = "rep";
      
      private static const §^!"§:String = "erp";
      
      private static const §@V§:String = "brk";
      
      private static const §,!N§:String = "kil";
      
      private static const §break§:String = "tex";
      
      private static const §23§:String = "sge";
      
      private static const §`!D§:String = "slt";
      
      private static const § Y§:String = "sgn";
      
      private static const §7X§:String = "va";
      
      private static const §>J§:String = "vc";
      
      private static const §#!Q§:String = "vt";
      
      private static const §`q§:String = "op";
      
      private static const §-!%§:String = "v";
      
      private static const §1!!§:String = "fc";
      
      private static const §9q§:String = "ft";
      
      private static const §'!C§:String = "fs";
      
      private static const §`?§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §=! §:String = "cube";
      
      private static const §%!P§:String = "mipnearest";
      
      private static const §8$§:String = "miplinear";
      
      private static const §8t§:String = "mipnone";
      
      private static const §0!X§:String = "nomip";
      
      private static const §#!3§:String = "nearest";
      
      private static const §`8§:String = "linear";
      
      private static const §0`§:String = "centroid";
      
      private static const §-j§:String = "single";
      
      private static const § ! §:String = "depth";
      
      private static const §8! §:String = "repeat";
      
      private static const §'!e§:String = "wrap";
      
      private static const §;u§:String = "clamp";
       
      
      private var §5k§:ByteArray = null;
      
      private var §[!A§:String = "";
      
      private var §=!M§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§=!M§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §2A§[§0!,§] = new OpCode(§0!,§,2,0,0);
         §2A§[§&!+§] = new OpCode(§&!+§,3,1,0);
         §2A§[§,!C§] = new OpCode(§,!C§,3,2,0);
         §2A§[§[!^§] = new OpCode(§[!^§,3,3,0);
         §2A§[§`4§] = new OpCode(§`4§,3,4,0);
         §2A§[§2!W§] = new OpCode(§2!W§,2,5,0);
         §2A§[§8O§] = new OpCode(§8O§,3,6,0);
         §2A§[§6o§] = new OpCode(§6o§,3,7,0);
         §2A§[§9!i§] = new OpCode(§9!i§,2,8,0);
         §2A§[§`!>§] = new OpCode(§`!>§,2,9,0);
         §2A§[§&o§] = new OpCode(§&o§,2,10,0);
         §2A§[§+!#§] = new OpCode(§+!#§,3,11,0);
         §2A§[§^t§] = new OpCode(§^t§,2,12,0);
         §2A§[§2=§] = new OpCode(§2=§,2,13,0);
         §2A§[§#H§] = new OpCode(§#H§,2,14,0);
         §2A§[§'!2§] = new OpCode(§'!2§,2,15,0);
         §2A§[§,!1§] = new OpCode(§,!1§,2,16,0);
         §2A§[§`!,§] = new OpCode(§`!,§,3,17,0);
         §2A§[DP3] = new OpCode(DP3,3,18,0);
         §2A§[DP4] = new OpCode(DP4,3,19,0);
         §2A§[§4Z§] = new OpCode(§4Z§,2,20,0);
         §2A§[§7!A§] = new OpCode(§7!A§,2,21,0);
         §2A§[§%J§] = new OpCode(§%J§,2,22,0);
         §2A§[M33] = new OpCode(M33,3,23,§[0§);
         §2A§[M44] = new OpCode(M44,3,24,§[0§);
         §2A§[M34] = new OpCode(M34,3,25,§[0§);
         §2A§[§]!"§] = new OpCode(§]!"§,1,26,§=!E§ | §=3§ | §=!i§);
         §2A§[§1l§] = new OpCode(§1l§,1,27,§=!E§ | §=3§ | §=!i§);
         §2A§[§-!G§] = new OpCode(§-!G§,2,28,§=!E§ | §=3§ | §=!i§);
         §2A§[§3M§] = new OpCode(§3M§,2,29,§=!E§ | §=3§ | §=!i§);
         §2A§[§9!_§] = new OpCode(§9!_§,2,30,§=!E§ | §=3§ | §=!i§);
         §2A§[§%§] = new OpCode(§%§,2,31,§=!E§ | §=3§ | §=!i§);
         §2A§[§ F§] = new OpCode(§ F§,2,32,§=!E§ | §=3§ | §=!i§);
         §2A§[§?X§] = new OpCode(§?X§,2,33,§=!E§ | §=3§ | §=!i§);
         §2A§[§,i§] = new OpCode(§,i§,0,34,§=!E§ | §=3§ | §!Y§);
         §2A§[§for §] = new OpCode(§for §,0,35,§=!E§ | §!Y§);
         §2A§[§!!0§] = new OpCode(§!!0§,1,36,§=!E§ | §=3§ | §=!i§);
         §2A§[§^!"§] = new OpCode(§^!"§,0,37,§=!E§ | §!Y§);
         §2A§[§@V§] = new OpCode(§@V§,0,38,§=!E§);
         §2A§[§,!N§] = new OpCode(§,!N§,1,39,§=!E§ | §=v§);
         §2A§[§break§] = new OpCode(§break§,3,40,§=v§ | §2<§);
         §2A§[§23§] = new OpCode(§23§,3,41,0);
         §2A§[§`!D§] = new OpCode(§`!D§,3,42,0);
         §2A§[§ Y§] = new OpCode(§ Y§,2,43,0);
         §"O§[§7X§] = new Register(§7X§,"vertex attribute",0,7,§,u§ | §1!k§);
         §"O§[§>J§] = new Register(§>J§,"vertex constant",1,127,§,u§ | §1!k§);
         §"O§[§#!Q§] = new Register(§#!Q§,"vertex temporary",2,7,§,u§ | §;!§ | §1!k§);
         §"O§[§`q§] = new Register(§`q§,"vertex output",3,0,§,u§ | §;!§);
         §"O§[§-!%§] = new Register(§-!%§,"varying",4,7,§,u§ | § !D§ | §1!k§ | §;!§);
         §"O§[§1!!§] = new Register(§1!!§,"fragment constant",1,27,§ !D§ | §1!k§);
         §"O§[§9q§] = new Register(§9q§,"fragment temporary",2,7,§ !D§ | §;!§ | §1!k§);
         §"O§[§'!C§] = new Register(§'!C§,"texture sampler",5,7,§ !D§ | §1!k§);
         §"O§[§`?§] = new Register(§`?§,"fragment output",3,0,§ !D§ | §;!§);
         §5!=§[D2] = new Sampler(D2,§]n§,0);
         §5!=§[D3] = new Sampler(D3,§]n§,2);
         §5!=§[§=! §] = new Sampler(§=! §,§]n§,1);
         §5!=§[§%!P§] = new Sampler(§%!P§,§&@§,1);
         §5!=§[§8$§] = new Sampler(§8$§,§&@§,2);
         §5!=§[§8t§] = new Sampler(§8t§,§&@§,0);
         §5!=§[§0!X§] = new Sampler(§0!X§,§&@§,0);
         §5!=§[§#!3§] = new Sampler(§#!3§,§-!g§,0);
         §5!=§[§`8§] = new Sampler(§`8§,§-!g§,1);
         §5!=§[§0`§] = new Sampler(§0`§,§!b§,1 << 0);
         §5!=§[§-j§] = new Sampler(§-j§,§!b§,1 << 1);
         §5!=§[§ ! §] = new Sampler(§ ! §,§!b§,1 << 2);
         §5!=§[§8! §] = new Sampler(§8! §,§3g§,1);
         §5!=§[§'!e§] = new Sampler(§'!e§,§3g§,1);
         §5!=§[§;u§] = new Sampler(§;u§,§3g§,0);
      }
      
      public function get error() : String
      {
         return this.§[!A§;
      }
      
      public function get §default§() : ByteArray
      {
         return this.§5k§;
      }
      
      public function §"!T§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§5k§ = new ByteArray();
         this.§[!A§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§[!A§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§default§.endian = Endian.LITTLE_ENDIAN;
         this.§default§.writeByte(160);
         this.§default§.writeUnsignedInt(1);
         this.§default§.writeByte(161);
         this.§default§.writeByte(!!_loc5_ ? int(1) : int(0));
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§[!A§ == "")
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
            _loc16_ = §2A§[_loc15_[0]];
            if(!this.§=!M§)
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
               if(_loc16_.flags & §!Y§)
               {
                  _loc7_--;
                  if(_loc7_ < 0)
                  {
                     this.§[!A§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §=3§)
               {
                  _loc7_++;
                  if(_loc7_ > §0U§)
                  {
                     this.§[!A§ = "error: nesting to deep, maximum allowed is " + §0U§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §=v§ && !_loc5_)
               {
                  this.§[!A§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§default§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §]D§)
               {
                  this.§[!A§ = "error: too many opcodes. maximum is " + §]D§ + ".";
                  break;
               }
               _loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi);
               if(_loc17_.length != _loc16_.numRegister)
               {
                  this.§[!A§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §"O§[_loc24_[0]];
                  if(!this.§=!M§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§[!A§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & § !D§))
                     {
                        this.§[!A§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§[!A§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §,u§))
                  {
                     this.§[!A§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§[!A§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §=!E§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §2<§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§[!A§ = "error: relative can not be destination";
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
                     _loc39_ = §"O§[_loc38_[0]];
                     if(_loc39_ == null)
                     {
                        this.§[!A§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     _loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/);
                     if(_loc40_.length == 0)
                     {
                        this.§[!A§ = "error: bad index register select";
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
                        this.§[!A§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§default§.writeShort(_loc27_);
                     this.§default§.writeByte(_loc28_);
                     this.§default§.writeByte(_loc25_.emitCode);
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
                        _loc45_ = §5!=§[_loc14_[_loc37_]];
                        if(_loc45_ == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §!b§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§default§.writeShort(_loc27_);
                     this.§default§.writeByte(int(_loc44_ * 8));
                     this.§default§.writeByte(0);
                     this.§default§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§default§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§default§.writeShort(_loc27_);
                     this.§default§.writeByte(_loc34_);
                     this.§default§.writeByte(_loc28_);
                     this.§default§.writeByte(_loc25_.emitCode);
                     this.§default§.writeByte(_loc32_);
                     this.§default§.writeShort(!!_loc22_ ? int(_loc33_ | 1 << 15) : int(0));
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§default§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§[!A§ != "")
         {
            this.§[!A§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§default§.length = 0;
         }
         if(this.§=!M§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§default§.length;
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
               _loc49_ = this.§default§[_loc48_].toString(16);
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
         return this.§default§;
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
