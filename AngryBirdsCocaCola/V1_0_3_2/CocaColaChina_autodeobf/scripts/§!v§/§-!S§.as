package §!v§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §-!S§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §6o§:Dictionary = new Dictionary();
      
      private static const §+B§:Dictionary = new Dictionary();
      
      private static const §&!N§:Dictionary = new Dictionary();
      
      private static const §"!8§:int = 4;
      
      private static const §]!K§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const § !§:uint = 12;
      
      private static const §8!,§:uint = 16;
      
      private static const §`!6§:uint = 20;
      
      private static const §#!7§:uint = 24;
      
      private static const §#!'§:uint = 28;
      
      private static const §2!X§:uint = 1;
      
      private static const §8!N§:uint = 2;
      
      private static const §2!O§:uint = 32;
      
      private static const §@n§:uint = 64;
      
      private static const §0!-§:uint = 1;
      
      private static const §4W§:uint = 2;
      
      private static const §<C§:uint = 4;
      
      private static const §3+§:uint = 8;
      
      private static const §&?§:uint = 16;
      
      private static const §&]§:uint = 32;
      
      private static const §0!S§:uint = 128;
      
      private static const §%!K§:String = "mov";
      
      private static const §+Y§:String = "add";
      
      private static const §%l§:String = "sub";
      
      private static const §"i§:String = "mul";
      
      private static const §^D§:String = "div";
      
      private static const §]y§:String = "rcp";
      
      private static const §"!V§:String = "min";
      
      private static const §`l§:String = "max";
      
      private static const §<! §:String = "frc";
      
      private static const §-!b§:String = "sqt";
      
      private static const §2P§:String = "rsq";
      
      private static const §%!-§:String = "pow";
      
      private static const §[!Y§:String = "log";
      
      private static const §2X§:String = "exp";
      
      private static const §4E§:String = "nrm";
      
      private static const §!&§:String = "sin";
      
      private static const §`C§:String = "cos";
      
      private static const §0Q§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §%!2§:String = "abs";
      
      private static const §-5§:String = "neg";
      
      private static const §#!E§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §<!N§:String = "ifz";
      
      private static const §%!I§:String = "inz";
      
      private static const §&f§:String = "ife";
      
      private static const §@9§:String = "ine";
      
      private static const §?!`§:String = "ifg";
      
      private static const §4G§:String = "ifl";
      
      private static const §<-§:String = "ieg";
      
      private static const §]a§:String = "iel";
      
      private static const §3b§:String = "els";
      
      private static const §?!+§:String = "eif";
      
      private static const §4x§:String = "rep";
      
      private static const §=x§:String = "erp";
      
      private static const §#!&§:String = "brk";
      
      private static const §&7§:String = "kil";
      
      private static const §1!F§:String = "tex";
      
      private static const §&!G§:String = "sge";
      
      private static const §"!#§:String = "slt";
      
      private static const §,M§:String = "sgn";
      
      private static const §"'§:String = "va";
      
      private static const §if§:String = "vc";
      
      private static const §;z§:String = "vt";
      
      private static const §<!O§:String = "op";
      
      private static const §'!<§:String = "v";
      
      private static const §[!M§:String = "fc";
      
      private static const §%@§:String = "ft";
      
      private static const §6!&§:String = "fs";
      
      private static const §0s§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §7U§:String = "cube";
      
      private static const §%2§:String = "mipnearest";
      
      private static const §9H§:String = "miplinear";
      
      private static const §9!F§:String = "mipnone";
      
      private static const §=!P§:String = "nomip";
      
      private static const §7?§:String = "nearest";
      
      private static const §<]§:String = "linear";
      
      private static const §,!R§:String = "centroid";
      
      private static const §'!7§:String = "single";
      
      private static const §1!O§:String = "depth";
      
      private static const §87§:String = "repeat";
      
      private static const §"!N§:String = "wrap";
      
      private static const §0!`§:String = "clamp";
       
      
      private var §`!]§:ByteArray = null;
      
      private var §#!0§:String = "";
      
      private var § Z§:Boolean = false;
      
      public function §-!S§(param1:Boolean = false)
      {
         super();
         this.§ Z§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §6o§[§%!K§] = new OpCode(§%!K§,2,0,0);
         §6o§[§+Y§] = new OpCode(§+Y§,3,1,0);
         §6o§[§%l§] = new OpCode(§%l§,3,2,0);
         §6o§[§"i§] = new OpCode(§"i§,3,3,0);
         §6o§[§^D§] = new OpCode(§^D§,3,4,0);
         §6o§[§]y§] = new OpCode(§]y§,2,5,0);
         §6o§[§"!V§] = new OpCode(§"!V§,3,6,0);
         §6o§[§`l§] = new OpCode(§`l§,3,7,0);
         §6o§[§<! §] = new OpCode(§<! §,2,8,0);
         §6o§[§-!b§] = new OpCode(§-!b§,2,9,0);
         §6o§[§2P§] = new OpCode(§2P§,2,10,0);
         §6o§[§%!-§] = new OpCode(§%!-§,3,11,0);
         §6o§[§[!Y§] = new OpCode(§[!Y§,2,12,0);
         §6o§[§2X§] = new OpCode(§2X§,2,13,0);
         §6o§[§4E§] = new OpCode(§4E§,2,14,0);
         §6o§[§!&§] = new OpCode(§!&§,2,15,0);
         §6o§[§`C§] = new OpCode(§`C§,2,16,0);
         §6o§[§0Q§] = new OpCode(§0Q§,3,17,0);
         §6o§[DP3] = new OpCode(DP3,3,18,0);
         §6o§[DP4] = new OpCode(DP4,3,19,0);
         §6o§[§%!2§] = new OpCode(§%!2§,2,20,0);
         §6o§[§-5§] = new OpCode(§-5§,2,21,0);
         §6o§[§#!E§] = new OpCode(§#!E§,2,22,0);
         §6o§[M33] = new OpCode(M33,3,23,§&?§);
         §6o§[M44] = new OpCode(M44,3,24,§&?§);
         §6o§[M34] = new OpCode(M34,3,25,§&?§);
         §6o§[§<!N§] = new OpCode(§<!N§,1,26,§0!S§ | §4W§ | §0!-§);
         §6o§[§%!I§] = new OpCode(§%!I§,1,27,§0!S§ | §4W§ | §0!-§);
         §6o§[§&f§] = new OpCode(§&f§,2,28,§0!S§ | §4W§ | §0!-§);
         §6o§[§@9§] = new OpCode(§@9§,2,29,§0!S§ | §4W§ | §0!-§);
         §6o§[§?!`§] = new OpCode(§?!`§,2,30,§0!S§ | §4W§ | §0!-§);
         §6o§[§4G§] = new OpCode(§4G§,2,31,§0!S§ | §4W§ | §0!-§);
         §6o§[§<-§] = new OpCode(§<-§,2,32,§0!S§ | §4W§ | §0!-§);
         §6o§[§]a§] = new OpCode(§]a§,2,33,§0!S§ | §4W§ | §0!-§);
         §6o§[§3b§] = new OpCode(§3b§,0,34,§0!S§ | §4W§ | §<C§);
         §6o§[§?!+§] = new OpCode(§?!+§,0,35,§0!S§ | §<C§);
         §6o§[§4x§] = new OpCode(§4x§,1,36,§0!S§ | §4W§ | §0!-§);
         §6o§[§=x§] = new OpCode(§=x§,0,37,§0!S§ | §<C§);
         §6o§[§#!&§] = new OpCode(§#!&§,0,38,§0!S§);
         §6o§[§&7§] = new OpCode(§&7§,1,39,§0!S§ | §&]§);
         §6o§[§1!F§] = new OpCode(§1!F§,3,40,§&]§ | §3+§);
         §6o§[§&!G§] = new OpCode(§&!G§,3,41,0);
         §6o§[§"!#§] = new OpCode(§"!#§,3,42,0);
         §6o§[§,M§] = new OpCode(§,M§,2,43,0);
         §+B§[§"'§] = new Register(§"'§,"vertex attribute",0,7,§@n§ | §8!N§);
         §+B§[§if§] = new Register(§if§,"vertex constant",1,127,§@n§ | §8!N§);
         §+B§[§;z§] = new Register(§;z§,"vertex temporary",2,7,§@n§ | §2!X§ | §8!N§);
         §+B§[§<!O§] = new Register(§<!O§,"vertex output",3,0,§@n§ | §2!X§);
         §+B§[§'!<§] = new Register(§'!<§,"varying",4,7,§@n§ | §2!O§ | §8!N§ | §2!X§);
         §+B§[§[!M§] = new Register(§[!M§,"fragment constant",1,27,§2!O§ | §8!N§);
         §+B§[§%@§] = new Register(§%@§,"fragment temporary",2,7,§2!O§ | §2!X§ | §8!N§);
         §+B§[§6!&§] = new Register(§6!&§,"texture sampler",5,7,§2!O§ | §8!N§);
         §+B§[§0s§] = new Register(§0s§,"fragment output",3,0,§2!O§ | §2!X§);
         §&!N§[D2] = new Sampler(D2,§ !§,0);
         §&!N§[D3] = new Sampler(D3,§ !§,2);
         §&!N§[§7U§] = new Sampler(§7U§,§ !§,1);
         §&!N§[§%2§] = new Sampler(§%2§,§#!7§,1);
         §&!N§[§9H§] = new Sampler(§9H§,§#!7§,2);
         §&!N§[§9!F§] = new Sampler(§9!F§,§#!7§,0);
         §&!N§[§=!P§] = new Sampler(§=!P§,§#!7§,0);
         §&!N§[§7?§] = new Sampler(§7?§,§#!'§,0);
         §&!N§[§<]§] = new Sampler(§<]§,§#!'§,1);
         §&!N§[§,!R§] = new Sampler(§,!R§,§8!,§,1 << 0);
         §&!N§[§'!7§] = new Sampler(§'!7§,§8!,§,1 << 1);
         §&!N§[§1!O§] = new Sampler(§1!O§,§8!,§,1 << 2);
         §&!N§[§87§] = new Sampler(§87§,§`!6§,1);
         §&!N§[§"!N§] = new Sampler(§"!N§,§`!6§,1);
         §&!N§[§0!`§] = new Sampler(§0!`§,§`!6§,0);
      }
      
      public function get error() : String
      {
         return this.§#!0§;
      }
      
      public function get §3c§() : ByteArray
      {
         return this.§`!]§;
      }
      
      public function §>!U§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§`!]§ = new ByteArray();
         this.§#!0§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§#!0§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§3c§.endian = Endian.LITTLE_ENDIAN;
         this.§3c§.writeByte(160);
         this.§3c§.writeUnsignedInt(1);
         this.§3c§.writeByte(161);
         this.§3c§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§#!0§ == "")
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
            _loc16_ = §6o§[_loc15_[0]];
            if(!this.§ Z§)
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
               if(_loc16_.flags & §<C§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§#!0§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §4W§)
               {
                  _loc7_++;
                  if(_loc7_ > §"!8§)
                  {
                     this.§#!0§ = "error: nesting to deep, maximum allowed is " + §"!8§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §&]§ && !_loc5_)
               {
                  this.§#!0§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§3c§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §]!K§)
               {
                  this.§#!0§ = "error: too many opcodes. maximum is " + §]!K§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§#!0§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §+B§[_loc24_[0]];
                  if(!this.§ Z§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§#!0§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §2!O§))
                     {
                        this.§#!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§#!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §@n§))
                  {
                     this.§#!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§#!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §0!S§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §3+§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§#!0§ = "error: relative can not be destination";
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
                     if((_loc39_ = §+B§[_loc38_[0]]) == null)
                     {
                        this.§#!0§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§#!0§ = "error: bad index register select";
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
                        this.§#!0§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§3c§.writeShort(_loc27_);
                     this.§3c§.writeByte(_loc28_);
                     this.§3c§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §&!N§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §8!,§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§3c§.writeShort(_loc27_);
                     this.§3c§.writeByte(int(_loc44_ * 8));
                     this.§3c§.writeByte(0);
                     this.§3c§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§3c§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§3c§.writeShort(_loc27_);
                     this.§3c§.writeByte(_loc34_);
                     this.§3c§.writeByte(_loc28_);
                     this.§3c§.writeByte(_loc25_.emitCode);
                     this.§3c§.writeByte(_loc32_);
                     this.§3c§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§3c§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§#!0§ != "")
         {
            this.§#!0§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§3c§.length = 0;
         }
         if(this.§ Z§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§3c§.length;
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
               if((_loc49_ = this.§3c§[_loc48_].toString(16)).length < 2)
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
         return this.§3c§;
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
