package §;1§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class § !§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §-!#§:Dictionary = new Dictionary();
      
      private static const §5@§:Dictionary = new Dictionary();
      
      private static const §^!K§:Dictionary = new Dictionary();
      
      private static const §4!?§:int = 4;
      
      private static const §;&§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §%Q§:uint = 12;
      
      private static const §=!2§:uint = 16;
      
      private static const §69§:uint = 20;
      
      private static const §>!Q§:uint = 24;
      
      private static const §7V§:uint = 28;
      
      private static const §2t§:uint = 1;
      
      private static const §<!b§:uint = 2;
      
      private static const §2l§:uint = 32;
      
      private static const § !9§:uint = 64;
      
      private static const §;n§:uint = 1;
      
      private static const §[!X§:uint = 2;
      
      private static const §=2§:uint = 4;
      
      private static const §0!Q§:uint = 8;
      
      private static const §%h§:uint = 16;
      
      private static const §6!S§:uint = 32;
      
      private static const §,Z§:uint = 128;
      
      private static const §7d§:String = "mov";
      
      private static const §`!>§:String = "add";
      
      private static const §#!A§:String = "sub";
      
      private static const §&"§:String = "mul";
      
      private static const §@,§:String = "div";
      
      private static const §0a§:String = "rcp";
      
      private static const §!!3§:String = "min";
      
      private static const §3#§:String = "max";
      
      private static const §7A§:String = "frc";
      
      private static const §@A§:String = "sqt";
      
      private static const §5L§:String = "rsq";
      
      private static const §!!K§:String = "pow";
      
      private static const §#!J§:String = "log";
      
      private static const §5!>§:String = "exp";
      
      private static const § g§:String = "nrm";
      
      private static const §[!D§:String = "sin";
      
      private static const §=!`§:String = "cos";
      
      private static const §?!3§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §?$§:String = "abs";
      
      private static const §-k§:String = "neg";
      
      private static const §1!"§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §>!!§:String = "ifz";
      
      private static const §#!f§:String = "inz";
      
      private static const §;! §:String = "ife";
      
      private static const §+>§:String = "ine";
      
      private static const §!!Q§:String = "ifg";
      
      private static const §'!G§:String = "ifl";
      
      private static const §@!W§:String = "ieg";
      
      private static const §4!M§:String = "iel";
      
      private static const §6!V§:String = "els";
      
      private static const §?!;§:String = "eif";
      
      private static const §?M§:String = "rep";
      
      private static const §#S§:String = "erp";
      
      private static const §>_§:String = "brk";
      
      private static const §1!0§:String = "kil";
      
      private static const §for §:String = "tex";
      
      private static const §"!R§:String = "sge";
      
      private static const §case§:String = "slt";
      
      private static const §"z§:String = "sgn";
      
      private static const §+!C§:String = "va";
      
      private static const §!q§:String = "vc";
      
      private static const §>q§:String = "vt";
      
      private static const §^!F§:String = "op";
      
      private static const §;_§:String = "v";
      
      private static const §@J§:String = "fc";
      
      private static const §%3§:String = "ft";
      
      private static const §19§:String = "fs";
      
      private static const §%!Q§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&0§:String = "cube";
      
      private static const §%!§:String = "mipnearest";
      
      private static const §!1§:String = "miplinear";
      
      private static const § !I§:String = "mipnone";
      
      private static const §0!L§:String = "nomip";
      
      private static const §7!M§:String = "nearest";
      
      private static const §0c§:String = "linear";
      
      private static const §[5§:String = "centroid";
      
      private static const §]-§:String = "single";
      
      private static const §6I§:String = "depth";
      
      private static const § !^§:String = "repeat";
      
      private static const § m§:String = "wrap";
      
      private static const §6;§:String = "clamp";
       
      
      private var §`!$§:ByteArray = null;
      
      private var §`s§:String = "";
      
      private var §9D§:Boolean = false;
      
      public function § !§(param1:Boolean = false)
      {
         super();
         this.§9D§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §-!#§[§7d§] = new OpCode(§7d§,2,0,0);
         §-!#§[§`!>§] = new OpCode(§`!>§,3,1,0);
         §-!#§[§#!A§] = new OpCode(§#!A§,3,2,0);
         §-!#§[§&"§] = new OpCode(§&"§,3,3,0);
         §-!#§[§@,§] = new OpCode(§@,§,3,4,0);
         §-!#§[§0a§] = new OpCode(§0a§,2,5,0);
         §-!#§[§!!3§] = new OpCode(§!!3§,3,6,0);
         §-!#§[§3#§] = new OpCode(§3#§,3,7,0);
         §-!#§[§7A§] = new OpCode(§7A§,2,8,0);
         §-!#§[§@A§] = new OpCode(§@A§,2,9,0);
         §-!#§[§5L§] = new OpCode(§5L§,2,10,0);
         §-!#§[§!!K§] = new OpCode(§!!K§,3,11,0);
         §-!#§[§#!J§] = new OpCode(§#!J§,2,12,0);
         §-!#§[§5!>§] = new OpCode(§5!>§,2,13,0);
         §-!#§[§ g§] = new OpCode(§ g§,2,14,0);
         §-!#§[§[!D§] = new OpCode(§[!D§,2,15,0);
         §-!#§[§=!`§] = new OpCode(§=!`§,2,16,0);
         §-!#§[§?!3§] = new OpCode(§?!3§,3,17,0);
         §-!#§[DP3] = new OpCode(DP3,3,18,0);
         §-!#§[DP4] = new OpCode(DP4,3,19,0);
         §-!#§[§?$§] = new OpCode(§?$§,2,20,0);
         §-!#§[§-k§] = new OpCode(§-k§,2,21,0);
         §-!#§[§1!"§] = new OpCode(§1!"§,2,22,0);
         §-!#§[M33] = new OpCode(M33,3,23,§%h§);
         §-!#§[M44] = new OpCode(M44,3,24,§%h§);
         §-!#§[M34] = new OpCode(M34,3,25,§%h§);
         §-!#§[§>!!§] = new OpCode(§>!!§,1,26,§,Z§ | §[!X§ | §;n§);
         §-!#§[§#!f§] = new OpCode(§#!f§,1,27,§,Z§ | §[!X§ | §;n§);
         §-!#§[§;! §] = new OpCode(§;! §,2,28,§,Z§ | §[!X§ | §;n§);
         §-!#§[§+>§] = new OpCode(§+>§,2,29,§,Z§ | §[!X§ | §;n§);
         §-!#§[§!!Q§] = new OpCode(§!!Q§,2,30,§,Z§ | §[!X§ | §;n§);
         §-!#§[§'!G§] = new OpCode(§'!G§,2,31,§,Z§ | §[!X§ | §;n§);
         §-!#§[§@!W§] = new OpCode(§@!W§,2,32,§,Z§ | §[!X§ | §;n§);
         §-!#§[§4!M§] = new OpCode(§4!M§,2,33,§,Z§ | §[!X§ | §;n§);
         §-!#§[§6!V§] = new OpCode(§6!V§,0,34,§,Z§ | §[!X§ | §=2§);
         §-!#§[§?!;§] = new OpCode(§?!;§,0,35,§,Z§ | §=2§);
         §-!#§[§?M§] = new OpCode(§?M§,1,36,§,Z§ | §[!X§ | §;n§);
         §-!#§[§#S§] = new OpCode(§#S§,0,37,§,Z§ | §=2§);
         §-!#§[§>_§] = new OpCode(§>_§,0,38,§,Z§);
         §-!#§[§1!0§] = new OpCode(§1!0§,1,39,§,Z§ | §6!S§);
         §-!#§[§for §] = new OpCode(§for §,3,40,§6!S§ | §0!Q§);
         §-!#§[§"!R§] = new OpCode(§"!R§,3,41,0);
         §-!#§[§case§] = new OpCode(§case§,3,42,0);
         §-!#§[§"z§] = new OpCode(§"z§,2,43,0);
         §5@§[§+!C§] = new Register(§+!C§,"vertex attribute",0,7,§ !9§ | §<!b§);
         §5@§[§!q§] = new Register(§!q§,"vertex constant",1,127,§ !9§ | §<!b§);
         §5@§[§>q§] = new Register(§>q§,"vertex temporary",2,7,§ !9§ | §2t§ | §<!b§);
         §5@§[§^!F§] = new Register(§^!F§,"vertex output",3,0,§ !9§ | §2t§);
         §5@§[§;_§] = new Register(§;_§,"varying",4,7,§ !9§ | §2l§ | §<!b§ | §2t§);
         §5@§[§@J§] = new Register(§@J§,"fragment constant",1,27,§2l§ | §<!b§);
         §5@§[§%3§] = new Register(§%3§,"fragment temporary",2,7,§2l§ | §2t§ | §<!b§);
         §5@§[§19§] = new Register(§19§,"texture sampler",5,7,§2l§ | §<!b§);
         §5@§[§%!Q§] = new Register(§%!Q§,"fragment output",3,0,§2l§ | §2t§);
         §^!K§[D2] = new Sampler(D2,§%Q§,0);
         §^!K§[D3] = new Sampler(D3,§%Q§,2);
         §^!K§[§&0§] = new Sampler(§&0§,§%Q§,1);
         §^!K§[§%!§] = new Sampler(§%!§,§>!Q§,1);
         §^!K§[§!1§] = new Sampler(§!1§,§>!Q§,2);
         §^!K§[§ !I§] = new Sampler(§ !I§,§>!Q§,0);
         §^!K§[§0!L§] = new Sampler(§0!L§,§>!Q§,0);
         §^!K§[§7!M§] = new Sampler(§7!M§,§7V§,0);
         §^!K§[§0c§] = new Sampler(§0c§,§7V§,1);
         §^!K§[§[5§] = new Sampler(§[5§,§=!2§,1 << 0);
         §^!K§[§]-§] = new Sampler(§]-§,§=!2§,1 << 1);
         §^!K§[§6I§] = new Sampler(§6I§,§=!2§,1 << 2);
         §^!K§[§ !^§] = new Sampler(§ !^§,§69§,1);
         §^!K§[§ m§] = new Sampler(§ m§,§69§,1);
         §^!K§[§6;§] = new Sampler(§6;§,§69§,0);
      }
      
      public function get error() : String
      {
         return this.§`s§;
      }
      
      public function get §9!l§() : ByteArray
      {
         return this.§`!$§;
      }
      
      public function §]!G§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§`!$§ = new ByteArray();
         this.§`s§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§`s§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§9!l§.endian = Endian.LITTLE_ENDIAN;
         this.§9!l§.writeByte(160);
         this.§9!l§.writeUnsignedInt(1);
         this.§9!l§.writeByte(161);
         this.§9!l§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§`s§ == "")
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
            _loc16_ = §-!#§[_loc15_[0]];
            if(!this.§9D§)
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
               if(_loc16_.flags & §=2§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§`s§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §[!X§)
               {
                  _loc7_++;
                  if(_loc7_ > §4!?§)
                  {
                     this.§`s§ = "error: nesting to deep, maximum allowed is " + §4!?§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §6!S§ && !_loc5_)
               {
                  this.§`s§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§9!l§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §;&§)
               {
                  this.§`s§ = "error: too many opcodes. maximum is " + §;&§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§`s§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §5@§[_loc24_[0]];
                  if(!this.§9D§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§`s§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §2l§))
                     {
                        this.§`s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§`s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & § !9§))
                  {
                     this.§`s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§`s§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §,Z§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §0!Q§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§`s§ = "error: relative can not be destination";
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
                     if((_loc39_ = §5@§[_loc38_[0]]) == null)
                     {
                        this.§`s§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§`s§ = "error: bad index register select";
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
                        this.§`s§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§9!l§.writeShort(_loc27_);
                     this.§9!l§.writeByte(_loc28_);
                     this.§9!l§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §^!K§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §=!2§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§9!l§.writeShort(_loc27_);
                     this.§9!l§.writeByte(int(_loc44_ * 8));
                     this.§9!l§.writeByte(0);
                     this.§9!l§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§9!l§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§9!l§.writeShort(_loc27_);
                     this.§9!l§.writeByte(_loc34_);
                     this.§9!l§.writeByte(_loc28_);
                     this.§9!l§.writeByte(_loc25_.emitCode);
                     this.§9!l§.writeByte(_loc32_);
                     this.§9!l§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§9!l§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§`s§ != "")
         {
            this.§`s§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§9!l§.length = 0;
         }
         if(this.§9D§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§9!l§.length;
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
               if((_loc49_ = this.§9!l§[_loc48_].toString(16)).length < 2)
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
         return this.§9!l§;
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
