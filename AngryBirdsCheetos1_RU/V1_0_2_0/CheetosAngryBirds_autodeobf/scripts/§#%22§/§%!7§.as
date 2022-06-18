package §#"§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%!7§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §1d§:Dictionary = new Dictionary();
      
      private static const §1!!§:Dictionary = new Dictionary();
      
      private static const §>r§:Dictionary = new Dictionary();
      
      private static const §[l§:int = 4;
      
      private static const §>o§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §8S§:uint = 12;
      
      private static const §5!G§:uint = 16;
      
      private static const §"t§:uint = 20;
      
      private static const §0!>§:uint = 24;
      
      private static const §`<§:uint = 28;
      
      private static const §3f§:uint = 1;
      
      private static const §>!!§:uint = 2;
      
      private static const §-P§:uint = 32;
      
      private static const §'U§:uint = 64;
      
      private static const §29§:uint = 1;
      
      private static const §>!"§:uint = 2;
      
      private static const §5!,§:uint = 4;
      
      private static const §=`§:uint = 8;
      
      private static const §2!T§:uint = 16;
      
      private static const §^]§:uint = 32;
      
      private static const §!y§:uint = 128;
      
      private static const §,!,§:String = "mov";
      
      private static const §2!9§:String = "add";
      
      private static const §8!^§:String = "sub";
      
      private static const §>!L§:String = "mul";
      
      private static const §"!;§:String = "div";
      
      private static const §[t§:String = "rcp";
      
      private static const §5M§:String = "min";
      
      private static const §-!C§:String = "max";
      
      private static const § true§:String = "frc";
      
      private static const §+!a§:String = "sqt";
      
      private static const §"g§:String = "rsq";
      
      private static const §=!#§:String = "pow";
      
      private static const §2!F§:String = "log";
      
      private static const §1!-§:String = "exp";
      
      private static const §>!`§:String = "nrm";
      
      private static const §-!=§:String = "sin";
      
      private static const §`!$§:String = "cos";
      
      private static const §;!<§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §;!M§:String = "abs";
      
      private static const §&!M§:String = "neg";
      
      private static const §]!@§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §,!#§:String = "ifz";
      
      private static const §=>§:String = "inz";
      
      private static const §4!"§:String = "ife";
      
      private static const §@D§:String = "ine";
      
      private static const §1!5§:String = "ifg";
      
      private static const §%!2§:String = "ifl";
      
      private static const §94§:String = "ieg";
      
      private static const §1^§:String = "iel";
      
      private static const §-#§:String = "els";
      
      private static const § z§:String = "eif";
      
      private static const §3z§:String = "rep";
      
      private static const dynamic:String = "erp";
      
      private static const §!r§:String = "brk";
      
      private static const §5y§:String = "kil";
      
      private static const §8!+§:String = "tex";
      
      private static const §%;§:String = "sge";
      
      private static const §?w§:String = "slt";
      
      private static const §>!A§:String = "sgn";
      
      private static const §"=§:String = "va";
      
      private static const § !T§:String = "vc";
      
      private static const §"L§:String = "vt";
      
      private static const §+!I§:String = "op";
      
      private static const §-!8§:String = "v";
      
      private static const §&B§:String = "fc";
      
      private static const §0W§:String = "ft";
      
      private static const §]!A§:String = "fs";
      
      private static const §%!D§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §7Q§:String = "cube";
      
      private static const §43§:String = "mipnearest";
      
      private static const §1u§:String = "miplinear";
      
      private static const §=+§:String = "mipnone";
      
      private static const §+I§:String = "nomip";
      
      private static const §3>§:String = "nearest";
      
      private static const §;-§:String = "linear";
      
      private static const §,9§:String = "centroid";
      
      private static const §9%§:String = "single";
      
      private static const §=L§:String = "depth";
      
      private static const §?!U§:String = "repeat";
      
      private static const §0R§:String = "wrap";
      
      private static const §5!V§:String = "clamp";
       
      
      private var §2h§:ByteArray = null;
      
      private var §-!"§:String = "";
      
      private var §?D§:Boolean = false;
      
      public function §%!7§(param1:Boolean = false)
      {
         super();
         this.§?D§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §1d§[§,!,§] = new OpCode(§,!,§,2,0,0);
         §1d§[§2!9§] = new OpCode(§2!9§,3,1,0);
         §1d§[§8!^§] = new OpCode(§8!^§,3,2,0);
         §1d§[§>!L§] = new OpCode(§>!L§,3,3,0);
         §1d§[§"!;§] = new OpCode(§"!;§,3,4,0);
         §1d§[§[t§] = new OpCode(§[t§,2,5,0);
         §1d§[§5M§] = new OpCode(§5M§,3,6,0);
         §1d§[§-!C§] = new OpCode(§-!C§,3,7,0);
         §1d§[§ true§] = new OpCode(§ true§,2,8,0);
         §1d§[§+!a§] = new OpCode(§+!a§,2,9,0);
         §1d§[§"g§] = new OpCode(§"g§,2,10,0);
         §1d§[§=!#§] = new OpCode(§=!#§,3,11,0);
         §1d§[§2!F§] = new OpCode(§2!F§,2,12,0);
         §1d§[§1!-§] = new OpCode(§1!-§,2,13,0);
         §1d§[§>!`§] = new OpCode(§>!`§,2,14,0);
         §1d§[§-!=§] = new OpCode(§-!=§,2,15,0);
         §1d§[§`!$§] = new OpCode(§`!$§,2,16,0);
         §1d§[§;!<§] = new OpCode(§;!<§,3,17,0);
         §1d§[DP3] = new OpCode(DP3,3,18,0);
         §1d§[DP4] = new OpCode(DP4,3,19,0);
         §1d§[§;!M§] = new OpCode(§;!M§,2,20,0);
         §1d§[§&!M§] = new OpCode(§&!M§,2,21,0);
         §1d§[§]!@§] = new OpCode(§]!@§,2,22,0);
         §1d§[M33] = new OpCode(M33,3,23,§2!T§);
         §1d§[M44] = new OpCode(M44,3,24,§2!T§);
         §1d§[M34] = new OpCode(M34,3,25,§2!T§);
         §1d§[§,!#§] = new OpCode(§,!#§,1,26,§!y§ | §>!"§ | §29§);
         §1d§[§=>§] = new OpCode(§=>§,1,27,§!y§ | §>!"§ | §29§);
         §1d§[§4!"§] = new OpCode(§4!"§,2,28,§!y§ | §>!"§ | §29§);
         §1d§[§@D§] = new OpCode(§@D§,2,29,§!y§ | §>!"§ | §29§);
         §1d§[§1!5§] = new OpCode(§1!5§,2,30,§!y§ | §>!"§ | §29§);
         §1d§[§%!2§] = new OpCode(§%!2§,2,31,§!y§ | §>!"§ | §29§);
         §1d§[§94§] = new OpCode(§94§,2,32,§!y§ | §>!"§ | §29§);
         §1d§[§1^§] = new OpCode(§1^§,2,33,§!y§ | §>!"§ | §29§);
         §1d§[§-#§] = new OpCode(§-#§,0,34,§!y§ | §>!"§ | §5!,§);
         §1d§[§ z§] = new OpCode(§ z§,0,35,§!y§ | §5!,§);
         §1d§[§3z§] = new OpCode(§3z§,1,36,§!y§ | §>!"§ | §29§);
         §1d§[dynamic] = new OpCode(dynamic,0,37,§!y§ | §5!,§);
         §1d§[§!r§] = new OpCode(§!r§,0,38,§!y§);
         §1d§[§5y§] = new OpCode(§5y§,1,39,§!y§ | §^]§);
         §1d§[§8!+§] = new OpCode(§8!+§,3,40,§^]§ | §=`§);
         §1d§[§%;§] = new OpCode(§%;§,3,41,0);
         §1d§[§?w§] = new OpCode(§?w§,3,42,0);
         §1d§[§>!A§] = new OpCode(§>!A§,2,43,0);
         §1!!§[§"=§] = new Register(§"=§,"vertex attribute",0,7,§'U§ | §>!!§);
         §1!!§[§ !T§] = new Register(§ !T§,"vertex constant",1,127,§'U§ | §>!!§);
         §1!!§[§"L§] = new Register(§"L§,"vertex temporary",2,7,§'U§ | §3f§ | §>!!§);
         §1!!§[§+!I§] = new Register(§+!I§,"vertex output",3,0,§'U§ | §3f§);
         §1!!§[§-!8§] = new Register(§-!8§,"varying",4,7,§'U§ | §-P§ | §>!!§ | §3f§);
         §1!!§[§&B§] = new Register(§&B§,"fragment constant",1,27,§-P§ | §>!!§);
         §1!!§[§0W§] = new Register(§0W§,"fragment temporary",2,7,§-P§ | §3f§ | §>!!§);
         §1!!§[§]!A§] = new Register(§]!A§,"texture sampler",5,7,§-P§ | §>!!§);
         §1!!§[§%!D§] = new Register(§%!D§,"fragment output",3,0,§-P§ | §3f§);
         §>r§[D2] = new Sampler(D2,§8S§,0);
         §>r§[D3] = new Sampler(D3,§8S§,2);
         §>r§[§7Q§] = new Sampler(§7Q§,§8S§,1);
         §>r§[§43§] = new Sampler(§43§,§0!>§,1);
         §>r§[§1u§] = new Sampler(§1u§,§0!>§,2);
         §>r§[§=+§] = new Sampler(§=+§,§0!>§,0);
         §>r§[§+I§] = new Sampler(§+I§,§0!>§,0);
         §>r§[§3>§] = new Sampler(§3>§,§`<§,0);
         §>r§[§;-§] = new Sampler(§;-§,§`<§,1);
         §>r§[§,9§] = new Sampler(§,9§,§5!G§,1 << 0);
         §>r§[§9%§] = new Sampler(§9%§,§5!G§,1 << 1);
         §>r§[§=L§] = new Sampler(§=L§,§5!G§,1 << 2);
         §>r§[§?!U§] = new Sampler(§?!U§,§"t§,1);
         §>r§[§0R§] = new Sampler(§0R§,§"t§,1);
         §>r§[§5!V§] = new Sampler(§5!V§,§"t§,0);
      }
      
      public function get error() : String
      {
         return this.§-!"§;
      }
      
      public function get §+_§() : ByteArray
      {
         return this.§2h§;
      }
      
      public function §3y§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§2h§ = new ByteArray();
         this.§-!"§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§-!"§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§+_§.endian = Endian.LITTLE_ENDIAN;
         this.§+_§.writeByte(160);
         this.§+_§.writeUnsignedInt(1);
         this.§+_§.writeByte(161);
         this.§+_§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§-!"§ == "")
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
            _loc16_ = §1d§[_loc15_[0]];
            if(!this.§?D§)
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
               if(_loc16_.flags & §5!,§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§-!"§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §>!"§)
               {
                  _loc7_++;
                  if(_loc7_ > §[l§)
                  {
                     this.§-!"§ = "error: nesting to deep, maximum allowed is " + §[l§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §^]§ && !_loc5_)
               {
                  this.§-!"§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§+_§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §>o§)
               {
                  this.§-!"§ = "error: too many opcodes. maximum is " + §>o§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§-!"§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §1!!§[_loc24_[0]];
                  if(!this.§?D§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§-!"§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §-P§))
                     {
                        this.§-!"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§-!"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §'U§))
                  {
                     this.§-!"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§-!"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §!y§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §=`§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§-!"§ = "error: relative can not be destination";
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
                     if((_loc39_ = §1!!§[_loc38_[0]]) == null)
                     {
                        this.§-!"§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§-!"§ = "error: bad index register select";
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
                        this.§-!"§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§+_§.writeShort(_loc27_);
                     this.§+_§.writeByte(_loc28_);
                     this.§+_§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §>r§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §5!G§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§+_§.writeShort(_loc27_);
                     this.§+_§.writeByte(int(_loc44_ * 8));
                     this.§+_§.writeByte(0);
                     this.§+_§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§+_§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§+_§.writeShort(_loc27_);
                     this.§+_§.writeByte(_loc34_);
                     this.§+_§.writeByte(_loc28_);
                     this.§+_§.writeByte(_loc25_.emitCode);
                     this.§+_§.writeByte(_loc32_);
                     this.§+_§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§+_§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§-!"§ != "")
         {
            this.§-!"§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§+_§.length = 0;
         }
         if(this.§?D§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§+_§.length;
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
               if((_loc49_ = this.§+_§[_loc48_].toString(16)).length < 2)
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
         return this.§+_§;
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
