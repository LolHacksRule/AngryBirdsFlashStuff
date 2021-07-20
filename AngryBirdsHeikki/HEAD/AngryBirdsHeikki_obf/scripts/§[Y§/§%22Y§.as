package §[Y§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §"Y§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §+v§:Dictionary = new Dictionary();
      
      private static const §'!J§:Dictionary = new Dictionary();
      
      private static const §?!c§:Dictionary = new Dictionary();
      
      private static const §4W§:int = 4;
      
      private static const §1!4§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const § 0§:uint = 12;
      
      private static const §7§:uint = 16;
      
      private static const §#m§:uint = 20;
      
      private static const §8N§:uint = 24;
      
      private static const §#0§:uint = 28;
      
      private static const §2!M§:uint = 1;
      
      private static const §<!7§:uint = 2;
      
      private static const §6!U§:uint = 32;
      
      private static const §<!"§:uint = 64;
      
      private static const §5!7§:uint = 1;
      
      private static const §!!>§:uint = 2;
      
      private static const §5h§:uint = 4;
      
      private static const §-^§:uint = 8;
      
      private static const §]!?§:uint = 16;
      
      private static const §@7§:uint = 32;
      
      private static const §12§:uint = 128;
      
      private static const §@!V§:String = "mov";
      
      private static const §=p§:String = "add";
      
      private static const §%L§:String = "sub";
      
      private static const §[E§:String = "mul";
      
      private static const §#E§:String = "div";
      
      private static const §@!_§:String = "rcp";
      
      private static const §>]§:String = "min";
      
      private static const §4!A§:String = "max";
      
      private static const §&B§:String = "frc";
      
      private static const §`!§:String = "sqt";
      
      private static const §%V§:String = "rsq";
      
      private static const §,!3§:String = "pow";
      
      private static const §6!F§:String = "log";
      
      private static const § get§:String = "exp";
      
      private static const §false§:String = "nrm";
      
      private static const §>!X§:String = "sin";
      
      private static const §7!Y§:String = "cos";
      
      private static const § !N§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §5!%§:String = "abs";
      
      private static const §]F§:String = "neg";
      
      private static const §-U§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §64§:String = "ifz";
      
      private static const §%!d§:String = "inz";
      
      private static const §>B§:String = "ife";
      
      private static const §'!S§:String = "ine";
      
      private static const §1!?§:String = "ifg";
      
      private static const §-!3§:String = "ifl";
      
      private static const §#g§:String = "ieg";
      
      private static const §9!7§:String = "iel";
      
      private static const §;!X§:String = "els";
      
      private static const §=&§:String = "eif";
      
      private static const §+$§:String = "rep";
      
      private static const §>9§:String = "erp";
      
      private static const §=!#§:String = "brk";
      
      private static const §'3§:String = "kil";
      
      private static const §3Q§:String = "tex";
      
      private static const §%!D§:String = "sge";
      
      private static const §"!4§:String = "slt";
      
      private static const §+!S§:String = "sgn";
      
      private static const §9#§:String = "va";
      
      private static const §34§:String = "vc";
      
      private static const §"! §:String = "vt";
      
      private static const §@!1§:String = "op";
      
      private static const §[!2§:String = "v";
      
      private static const §%w§:String = "fc";
      
      private static const §[O§:String = "ft";
      
      private static const §9Y§:String = "fs";
      
      private static const §;!%§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §@X§:String = "cube";
      
      private static const §%!^§:String = "mipnearest";
      
      private static const §<!M§:String = "miplinear";
      
      private static const §]r§:String = "mipnone";
      
      private static const §?!g§:String = "nomip";
      
      private static const §@k§:String = "nearest";
      
      private static const §%!'§:String = "linear";
      
      private static const §>!e§:String = "centroid";
      
      private static const §>!3§:String = "single";
      
      private static const §,4§:String = "depth";
      
      private static const §0!4§:String = "repeat";
      
      private static const §6t§:String = "wrap";
      
      private static const §2!4§:String = "clamp";
       
      
      private var §]!d§:ByteArray = null;
      
      private var §+!T§:String = "";
      
      private var §=!&§:Boolean = false;
      
      public function §"Y§(param1:Boolean = false)
      {
         super();
         this.§=!&§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §+v§[§@!V§] = new OpCode(§@!V§,2,0,0);
         §+v§[§=p§] = new OpCode(§=p§,3,1,0);
         §+v§[§%L§] = new OpCode(§%L§,3,2,0);
         §+v§[§[E§] = new OpCode(§[E§,3,3,0);
         §+v§[§#E§] = new OpCode(§#E§,3,4,0);
         §+v§[§@!_§] = new OpCode(§@!_§,2,5,0);
         §+v§[§>]§] = new OpCode(§>]§,3,6,0);
         §+v§[§4!A§] = new OpCode(§4!A§,3,7,0);
         §+v§[§&B§] = new OpCode(§&B§,2,8,0);
         §+v§[§`!§] = new OpCode(§`!§,2,9,0);
         §+v§[§%V§] = new OpCode(§%V§,2,10,0);
         §+v§[§,!3§] = new OpCode(§,!3§,3,11,0);
         §+v§[§6!F§] = new OpCode(§6!F§,2,12,0);
         §+v§[§ get§] = new OpCode(§ get§,2,13,0);
         §+v§[§false§] = new OpCode(§false§,2,14,0);
         §+v§[§>!X§] = new OpCode(§>!X§,2,15,0);
         §+v§[§7!Y§] = new OpCode(§7!Y§,2,16,0);
         §+v§[§ !N§] = new OpCode(§ !N§,3,17,0);
         §+v§[DP3] = new OpCode(DP3,3,18,0);
         §+v§[DP4] = new OpCode(DP4,3,19,0);
         §+v§[§5!%§] = new OpCode(§5!%§,2,20,0);
         §+v§[§]F§] = new OpCode(§]F§,2,21,0);
         §+v§[§-U§] = new OpCode(§-U§,2,22,0);
         §+v§[M33] = new OpCode(M33,3,23,§]!?§);
         §+v§[M44] = new OpCode(M44,3,24,§]!?§);
         §+v§[M34] = new OpCode(M34,3,25,§]!?§);
         §+v§[§64§] = new OpCode(§64§,1,26,§12§ | §!!>§ | §5!7§);
         §+v§[§%!d§] = new OpCode(§%!d§,1,27,§12§ | §!!>§ | §5!7§);
         §+v§[§>B§] = new OpCode(§>B§,2,28,§12§ | §!!>§ | §5!7§);
         §+v§[§'!S§] = new OpCode(§'!S§,2,29,§12§ | §!!>§ | §5!7§);
         §+v§[§1!?§] = new OpCode(§1!?§,2,30,§12§ | §!!>§ | §5!7§);
         §+v§[§-!3§] = new OpCode(§-!3§,2,31,§12§ | §!!>§ | §5!7§);
         §+v§[§#g§] = new OpCode(§#g§,2,32,§12§ | §!!>§ | §5!7§);
         §+v§[§9!7§] = new OpCode(§9!7§,2,33,§12§ | §!!>§ | §5!7§);
         §+v§[§;!X§] = new OpCode(§;!X§,0,34,§12§ | §!!>§ | §5h§);
         §+v§[§=&§] = new OpCode(§=&§,0,35,§12§ | §5h§);
         §+v§[§+$§] = new OpCode(§+$§,1,36,§12§ | §!!>§ | §5!7§);
         §+v§[§>9§] = new OpCode(§>9§,0,37,§12§ | §5h§);
         §+v§[§=!#§] = new OpCode(§=!#§,0,38,§12§);
         §+v§[§'3§] = new OpCode(§'3§,1,39,§12§ | §@7§);
         §+v§[§3Q§] = new OpCode(§3Q§,3,40,§@7§ | §-^§);
         §+v§[§%!D§] = new OpCode(§%!D§,3,41,0);
         §+v§[§"!4§] = new OpCode(§"!4§,3,42,0);
         §+v§[§+!S§] = new OpCode(§+!S§,2,43,0);
         §'!J§[§9#§] = new Register(§9#§,"vertex attribute",0,7,§<!"§ | §<!7§);
         §'!J§[§34§] = new Register(§34§,"vertex constant",1,127,§<!"§ | §<!7§);
         §'!J§[§"! §] = new Register(§"! §,"vertex temporary",2,7,§<!"§ | §2!M§ | §<!7§);
         §'!J§[§@!1§] = new Register(§@!1§,"vertex output",3,0,§<!"§ | §2!M§);
         §'!J§[§[!2§] = new Register(§[!2§,"varying",4,7,§<!"§ | §6!U§ | §<!7§ | §2!M§);
         §'!J§[§%w§] = new Register(§%w§,"fragment constant",1,27,§6!U§ | §<!7§);
         §'!J§[§[O§] = new Register(§[O§,"fragment temporary",2,7,§6!U§ | §2!M§ | §<!7§);
         §'!J§[§9Y§] = new Register(§9Y§,"texture sampler",5,7,§6!U§ | §<!7§);
         §'!J§[§;!%§] = new Register(§;!%§,"fragment output",3,0,§6!U§ | §2!M§);
         §?!c§[D2] = new Sampler(D2,§ 0§,0);
         §?!c§[D3] = new Sampler(D3,§ 0§,2);
         §?!c§[§@X§] = new Sampler(§@X§,§ 0§,1);
         §?!c§[§%!^§] = new Sampler(§%!^§,§8N§,1);
         §?!c§[§<!M§] = new Sampler(§<!M§,§8N§,2);
         §?!c§[§]r§] = new Sampler(§]r§,§8N§,0);
         §?!c§[§?!g§] = new Sampler(§?!g§,§8N§,0);
         §?!c§[§@k§] = new Sampler(§@k§,§#0§,0);
         §?!c§[§%!'§] = new Sampler(§%!'§,§#0§,1);
         §?!c§[§>!e§] = new Sampler(§>!e§,§7§,1 << 0);
         §?!c§[§>!3§] = new Sampler(§>!3§,§7§,1 << 1);
         §?!c§[§,4§] = new Sampler(§,4§,§7§,1 << 2);
         §?!c§[§0!4§] = new Sampler(§0!4§,§#m§,1);
         §?!c§[§6t§] = new Sampler(§6t§,§#m§,1);
         §?!c§[§2!4§] = new Sampler(§2!4§,§#m§,0);
      }
      
      public function get error() : String
      {
         return this.§+!T§;
      }
      
      public function get §3Y§() : ByteArray
      {
         return this.§]!d§;
      }
      
      public function § !=§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§]!d§ = new ByteArray();
         this.§+!T§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§+!T§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§3Y§.endian = Endian.LITTLE_ENDIAN;
         this.§3Y§.writeByte(160);
         this.§3Y§.writeUnsignedInt(1);
         this.§3Y§.writeByte(161);
         this.§3Y§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§+!T§ == "")
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
            _loc16_ = §+v§[_loc15_[0]];
            if(!this.§=!&§)
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
               if(_loc16_.flags & §5h§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§+!T§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §!!>§)
               {
                  _loc7_++;
                  if(_loc7_ > §4W§)
                  {
                     this.§+!T§ = "error: nesting to deep, maximum allowed is " + §4W§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §@7§ && !_loc5_)
               {
                  this.§+!T§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§3Y§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §1!4§)
               {
                  this.§+!T§ = "error: too many opcodes. maximum is " + §1!4§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§+!T§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §'!J§[_loc24_[0]];
                  if(!this.§=!&§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§+!T§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §6!U§))
                     {
                        this.§+!T§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§+!T§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §<!"§))
                  {
                     this.§+!T§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§+!T§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §12§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §-^§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§+!T§ = "error: relative can not be destination";
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
                     if((_loc39_ = §'!J§[_loc38_[0]]) == null)
                     {
                        this.§+!T§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§+!T§ = "error: bad index register select";
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
                        this.§+!T§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§3Y§.writeShort(_loc27_);
                     this.§3Y§.writeByte(_loc28_);
                     this.§3Y§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §?!c§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §7§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§3Y§.writeShort(_loc27_);
                     this.§3Y§.writeByte(int(_loc44_ * 8));
                     this.§3Y§.writeByte(0);
                     this.§3Y§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§3Y§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§3Y§.writeShort(_loc27_);
                     this.§3Y§.writeByte(_loc34_);
                     this.§3Y§.writeByte(_loc28_);
                     this.§3Y§.writeByte(_loc25_.emitCode);
                     this.§3Y§.writeByte(_loc32_);
                     this.§3Y§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§3Y§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§+!T§ != "")
         {
            this.§+!T§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§3Y§.length = 0;
         }
         if(this.§=!&§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§3Y§.length;
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
               if((_loc49_ = this.§3Y§[_loc48_].toString(16)).length < 2)
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
         return this.§3Y§;
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
