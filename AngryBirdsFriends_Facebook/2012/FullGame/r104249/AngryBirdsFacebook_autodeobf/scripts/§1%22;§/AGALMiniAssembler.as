package §1";§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §#!Z§:Dictionary = new Dictionary();
      
      private static const §^#§:Dictionary = new Dictionary();
      
      private static const §!"I§:Dictionary = new Dictionary();
      
      private static const §9u§:int = 4;
      
      private static const §<"J§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §]g§:uint = 12;
      
      private static const §[!X§:uint = 16;
      
      private static const §3r§:uint = 20;
      
      private static const §%!J§:uint = 24;
      
      private static const §+9§:uint = 28;
      
      private static const §#4§:uint = 1;
      
      private static const §3"?§:uint = 2;
      
      private static const §0s§:uint = 32;
      
      private static const §+"#§:uint = 64;
      
      private static const §+!C§:uint = 1;
      
      private static const §-"=§:uint = 2;
      
      private static const §1!c§:uint = 4;
      
      private static const §`!M§:uint = 8;
      
      private static const §6L§:uint = 16;
      
      private static const §2?§:uint = 32;
      
      private static const §#k§:uint = 128;
      
      private static const §#!9§:String = "mov";
      
      private static const §,"&§:String = "add";
      
      private static const §3!v§:String = "sub";
      
      private static const §[!q§:String = "mul";
      
      private static const §5!D§:String = "div";
      
      private static const §3i§:String = "rcp";
      
      private static const §@"-§:String = "min";
      
      private static const §5"6§:String = "max";
      
      private static const §&V§:String = "frc";
      
      private static const §2!%§:String = "sqt";
      
      private static const §<O§:String = "rsq";
      
      private static const §#!H§:String = "pow";
      
      private static const §<`§:String = "log";
      
      private static const §>!g§:String = "exp";
      
      private static const §+![§:String = "nrm";
      
      private static const §?!n§:String = "sin";
      
      private static const §%U§:String = "cos";
      
      private static const §3!$§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §2!H§:String = "abs";
      
      private static const §@^§:String = "neg";
      
      private static const §[!T§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §%s§:String = "ifz";
      
      private static const §<!"§:String = "inz";
      
      private static const §>I§:String = "ife";
      
      private static const §,!M§:String = "ine";
      
      private static const §;!-§:String = "ifg";
      
      private static const §"!<§:String = "ifl";
      
      private static const §&!h§:String = "ieg";
      
      private static const §'r§:String = "iel";
      
      private static const §>$§:String = "els";
      
      private static const §&<§:String = "eif";
      
      private static const §`A§:String = "rep";
      
      private static const §=Q§:String = "erp";
      
      private static const §9!D§:String = "brk";
      
      private static const §=Y§:String = "kil";
      
      private static const §["H§:String = "tex";
      
      private static const §2"9§:String = "sge";
      
      private static const §?!c§:String = "slt";
      
      private static const §+A§:String = "sgn";
      
      private static const §6"I§:String = "va";
      
      private static const §`!b§:String = "vc";
      
      private static const §4'§:String = "vt";
      
      private static const §+"6§:String = "op";
      
      private static const §=5§:String = "v";
      
      private static const §3x§:String = "fc";
      
      private static const §,!`§:String = "ft";
      
      private static const §?w§:String = "fs";
      
      private static const §'!&§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §=h§:String = "cube";
      
      private static const §1!>§:String = "mipnearest";
      
      private static const §[!z§:String = "miplinear";
      
      private static const §^y§:String = "mipnone";
      
      private static const §!!@§:String = "nomip";
      
      private static const §2!a§:String = "nearest";
      
      private static const §1R§:String = "linear";
      
      private static const §^"%§:String = "centroid";
      
      private static const §3!2§:String = "single";
      
      private static const §^! §:String = "depth";
      
      private static const §>"7§:String = "repeat";
      
      private static const §8X§:String = "wrap";
      
      private static const §8^§:String = "clamp";
       
      
      private var §#"!§:ByteArray = null;
      
      private var §;!W§:String = "";
      
      private var §0t§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§0t§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §#!Z§[§#!9§] = new OpCode(§#!9§,2,0,0);
         §#!Z§[§,"&§] = new OpCode(§,"&§,3,1,0);
         §#!Z§[§3!v§] = new OpCode(§3!v§,3,2,0);
         §#!Z§[§[!q§] = new OpCode(§[!q§,3,3,0);
         §#!Z§[§5!D§] = new OpCode(§5!D§,3,4,0);
         §#!Z§[§3i§] = new OpCode(§3i§,2,5,0);
         §#!Z§[§@"-§] = new OpCode(§@"-§,3,6,0);
         §#!Z§[§5"6§] = new OpCode(§5"6§,3,7,0);
         §#!Z§[§&V§] = new OpCode(§&V§,2,8,0);
         §#!Z§[§2!%§] = new OpCode(§2!%§,2,9,0);
         §#!Z§[§<O§] = new OpCode(§<O§,2,10,0);
         §#!Z§[§#!H§] = new OpCode(§#!H§,3,11,0);
         §#!Z§[§<`§] = new OpCode(§<`§,2,12,0);
         §#!Z§[§>!g§] = new OpCode(§>!g§,2,13,0);
         §#!Z§[§+![§] = new OpCode(§+![§,2,14,0);
         §#!Z§[§?!n§] = new OpCode(§?!n§,2,15,0);
         §#!Z§[§%U§] = new OpCode(§%U§,2,16,0);
         §#!Z§[§3!$§] = new OpCode(§3!$§,3,17,0);
         §#!Z§[DP3] = new OpCode(DP3,3,18,0);
         §#!Z§[DP4] = new OpCode(DP4,3,19,0);
         §#!Z§[§2!H§] = new OpCode(§2!H§,2,20,0);
         §#!Z§[§@^§] = new OpCode(§@^§,2,21,0);
         §#!Z§[§[!T§] = new OpCode(§[!T§,2,22,0);
         §#!Z§[M33] = new OpCode(M33,3,23,§6L§);
         §#!Z§[M44] = new OpCode(M44,3,24,§6L§);
         §#!Z§[M34] = new OpCode(M34,3,25,§6L§);
         §#!Z§[§%s§] = new OpCode(§%s§,1,26,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§<!"§] = new OpCode(§<!"§,1,27,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§>I§] = new OpCode(§>I§,2,28,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§,!M§] = new OpCode(§,!M§,2,29,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§;!-§] = new OpCode(§;!-§,2,30,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§"!<§] = new OpCode(§"!<§,2,31,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§&!h§] = new OpCode(§&!h§,2,32,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§'r§] = new OpCode(§'r§,2,33,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§>$§] = new OpCode(§>$§,0,34,§#k§ | §-"=§ | §1!c§);
         §#!Z§[§&<§] = new OpCode(§&<§,0,35,§#k§ | §1!c§);
         §#!Z§[§`A§] = new OpCode(§`A§,1,36,§#k§ | §-"=§ | §+!C§);
         §#!Z§[§=Q§] = new OpCode(§=Q§,0,37,§#k§ | §1!c§);
         §#!Z§[§9!D§] = new OpCode(§9!D§,0,38,§#k§);
         §#!Z§[§=Y§] = new OpCode(§=Y§,1,39,§#k§ | §2?§);
         §#!Z§[§["H§] = new OpCode(§["H§,3,40,§2?§ | §`!M§);
         §#!Z§[§2"9§] = new OpCode(§2"9§,3,41,0);
         §#!Z§[§?!c§] = new OpCode(§?!c§,3,42,0);
         §#!Z§[§+A§] = new OpCode(§+A§,2,43,0);
         §^#§[§6"I§] = new Register(§6"I§,"vertex attribute",0,7,§+"#§ | §3"?§);
         §^#§[§`!b§] = new Register(§`!b§,"vertex constant",1,127,§+"#§ | §3"?§);
         §^#§[§4'§] = new Register(§4'§,"vertex temporary",2,7,§+"#§ | §#4§ | §3"?§);
         §^#§[§+"6§] = new Register(§+"6§,"vertex output",3,0,§+"#§ | §#4§);
         §^#§[§=5§] = new Register(§=5§,"varying",4,7,§+"#§ | §0s§ | §3"?§ | §#4§);
         §^#§[§3x§] = new Register(§3x§,"fragment constant",1,27,§0s§ | §3"?§);
         §^#§[§,!`§] = new Register(§,!`§,"fragment temporary",2,7,§0s§ | §#4§ | §3"?§);
         §^#§[§?w§] = new Register(§?w§,"texture sampler",5,7,§0s§ | §3"?§);
         §^#§[§'!&§] = new Register(§'!&§,"fragment output",3,0,§0s§ | §#4§);
         §!"I§[D2] = new Sampler(D2,§]g§,0);
         §!"I§[D3] = new Sampler(D3,§]g§,2);
         §!"I§[§=h§] = new Sampler(§=h§,§]g§,1);
         §!"I§[§1!>§] = new Sampler(§1!>§,§%!J§,1);
         §!"I§[§[!z§] = new Sampler(§[!z§,§%!J§,2);
         §!"I§[§^y§] = new Sampler(§^y§,§%!J§,0);
         §!"I§[§!!@§] = new Sampler(§!!@§,§%!J§,0);
         §!"I§[§2!a§] = new Sampler(§2!a§,§+9§,0);
         §!"I§[§1R§] = new Sampler(§1R§,§+9§,1);
         §!"I§[§^"%§] = new Sampler(§^"%§,§[!X§,1 << 0);
         §!"I§[§3!2§] = new Sampler(§3!2§,§[!X§,1 << 1);
         §!"I§[§^! §] = new Sampler(§^! §,§[!X§,1 << 2);
         §!"I§[§>"7§] = new Sampler(§>"7§,§3r§,1);
         §!"I§[§8X§] = new Sampler(§8X§,§3r§,1);
         §!"I§[§8^§] = new Sampler(§8^§,§3r§,0);
      }
      
      public function get error() : String
      {
         return this.§;!W§;
      }
      
      public function get §7`§() : ByteArray
      {
         return this.§#"!§;
      }
      
      public function §?!9§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§#"!§ = new ByteArray();
         this.§;!W§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§;!W§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§7`§.endian = Endian.LITTLE_ENDIAN;
         this.§7`§.writeByte(160);
         this.§7`§.writeUnsignedInt(1);
         this.§7`§.writeByte(161);
         this.§7`§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§;!W§ == "")
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
            _loc16_ = §#!Z§[_loc15_[0]];
            if(!this.§0t§)
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
               if(_loc16_.flags & §1!c§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§;!W§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §-"=§)
               {
                  _loc7_++;
                  if(_loc7_ > §9u§)
                  {
                     this.§;!W§ = "error: nesting to deep, maximum allowed is " + §9u§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §2?§ && !_loc5_)
               {
                  this.§;!W§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§7`§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<"J§)
               {
                  this.§;!W§ = "error: too many opcodes. maximum is " + §<"J§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§;!W§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §^#§[_loc24_[0]];
                  if(!this.§0t§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§;!W§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §0s§))
                     {
                        this.§;!W§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§;!W§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §+"#§))
                  {
                     this.§;!W§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§;!W§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §#k§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §`!M§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§;!W§ = "error: relative can not be destination";
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
                     if((_loc39_ = §^#§[_loc38_[0]]) == null)
                     {
                        this.§;!W§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§;!W§ = "error: bad index register select";
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
                        this.§;!W§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§7`§.writeShort(_loc27_);
                     this.§7`§.writeByte(_loc28_);
                     this.§7`§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §!"I§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §[!X§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§7`§.writeShort(_loc27_);
                     this.§7`§.writeByte(int(_loc44_ * 8));
                     this.§7`§.writeByte(0);
                     this.§7`§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§7`§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§7`§.writeShort(_loc27_);
                     this.§7`§.writeByte(_loc34_);
                     this.§7`§.writeByte(_loc28_);
                     this.§7`§.writeByte(_loc25_.emitCode);
                     this.§7`§.writeByte(_loc32_);
                     this.§7`§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§7`§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§;!W§ != "")
         {
            this.§;!W§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§7`§.length = 0;
         }
         if(this.§0t§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§7`§.length;
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
               if((_loc49_ = this.§7`§[_loc48_].toString(16)).length < 2)
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
         return this.§7`§;
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
