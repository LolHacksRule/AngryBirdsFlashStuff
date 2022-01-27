package §2!%§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §5o§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §^$§:Dictionary = new Dictionary();
      
      private static const §"!X§:Dictionary = new Dictionary();
      
      private static const §&!O§:Dictionary = new Dictionary();
      
      private static const §9_§:int = 4;
      
      private static const §&!w§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §1!l§:uint = 12;
      
      private static const §?;§:uint = 16;
      
      private static const §9"D§:uint = 20;
      
      private static const §^!C§:uint = 24;
      
      private static const §<r§:uint = 28;
      
      private static const §&o§:uint = 1;
      
      private static const §%!L§:uint = 2;
      
      private static const §&" §:uint = 32;
      
      private static const §]l§:uint = 64;
      
      private static const §7!]§:uint = 1;
      
      private static const §+L§:uint = 2;
      
      private static const §>g§:uint = 4;
      
      private static const §?"4§:uint = 8;
      
      private static const §4!?§:uint = 16;
      
      private static const §+!r§:uint = 32;
      
      private static const §9!;§:uint = 128;
      
      private static const §="<§:String = "mov";
      
      private static const §0!B§:String = "add";
      
      private static const §""&§:String = "sub";
      
      private static const §9"<§:String = "mul";
      
      private static const §;!'§:String = "div";
      
      private static const § ""§:String = "rcp";
      
      private static const §;!n§:String = "min";
      
      private static const §?!#§:String = "max";
      
      private static const §8O§:String = "frc";
      
      private static const §0!V§:String = "sqt";
      
      private static const §%I§:String = "rsq";
      
      private static const §-!z§:String = "pow";
      
      private static const §1l§:String = "log";
      
      private static const §"I§:String = "exp";
      
      private static const § "F§:String = "nrm";
      
      private static const §>!P§:String = "sin";
      
      private static const §=8§:String = "cos";
      
      private static const §7R§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §["'§:String = "abs";
      
      private static const §#6§:String = "neg";
      
      private static const §09§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §=!8§:String = "ifz";
      
      private static const §`!M§:String = "inz";
      
      private static const §4$§:String = "ife";
      
      private static const §>"1§:String = "ine";
      
      private static const §3h§:String = "ifg";
      
      private static const §4"3§:String = "ifl";
      
      private static const § !h§:String = "ieg";
      
      private static const §#"$§:String = "iel";
      
      private static const §["4§:String = "els";
      
      private static const §8!&§:String = "eif";
      
      private static const §""D§:String = "rep";
      
      private static const §]r§:String = "erp";
      
      private static const §!+§:String = "brk";
      
      private static const §,X§:String = "kil";
      
      private static const §,"?§:String = "tex";
      
      private static const §-b§:String = "sge";
      
      private static const §#!9§:String = "slt";
      
      private static const §]`§:String = "sgn";
      
      private static const §?g§:String = "va";
      
      private static const §#!s§:String = "vc";
      
      private static const §`!j§:String = "vt";
      
      private static const §'!O§:String = "op";
      
      private static const V:String = "v";
      
      private static const §#!h§:String = "fc";
      
      private static const §-E§:String = "ft";
      
      private static const §`!N§:String = "fs";
      
      private static const §!";§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §[""§:String = "cube";
      
      private static const § !u§:String = "mipnearest";
      
      private static const §"[§:String = "miplinear";
      
      private static const §"""§:String = "mipnone";
      
      private static const §5-§:String = "nomip";
      
      private static const §]^§:String = "nearest";
      
      private static const §!!B§:String = "linear";
      
      private static const §+!E§:String = "centroid";
      
      private static const §!`§:String = "single";
      
      private static const §0!L§:String = "depth";
      
      private static const §5!&§:String = "repeat";
      
      private static const § "&§:String = "wrap";
      
      private static const §`!#§:String = "clamp";
       
      
      private var §-x§:ByteArray = null;
      
      private var §+G§:String = "";
      
      private var §?1§:Boolean = false;
      
      public function §5o§(param1:Boolean = false)
      {
         super();
         this.§?1§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §^$§[§="<§] = new OpCode(§="<§,2,0,0);
         §^$§[§0!B§] = new OpCode(§0!B§,3,1,0);
         §^$§[§""&§] = new OpCode(§""&§,3,2,0);
         §^$§[§9"<§] = new OpCode(§9"<§,3,3,0);
         §^$§[§;!'§] = new OpCode(§;!'§,3,4,0);
         §^$§[§ ""§] = new OpCode(§ ""§,2,5,0);
         §^$§[§;!n§] = new OpCode(§;!n§,3,6,0);
         §^$§[§?!#§] = new OpCode(§?!#§,3,7,0);
         §^$§[§8O§] = new OpCode(§8O§,2,8,0);
         §^$§[§0!V§] = new OpCode(§0!V§,2,9,0);
         §^$§[§%I§] = new OpCode(§%I§,2,10,0);
         §^$§[§-!z§] = new OpCode(§-!z§,3,11,0);
         §^$§[§1l§] = new OpCode(§1l§,2,12,0);
         §^$§[§"I§] = new OpCode(§"I§,2,13,0);
         §^$§[§ "F§] = new OpCode(§ "F§,2,14,0);
         §^$§[§>!P§] = new OpCode(§>!P§,2,15,0);
         §^$§[§=8§] = new OpCode(§=8§,2,16,0);
         §^$§[§7R§] = new OpCode(§7R§,3,17,0);
         §^$§[DP3] = new OpCode(DP3,3,18,0);
         §^$§[DP4] = new OpCode(DP4,3,19,0);
         §^$§[§["'§] = new OpCode(§["'§,2,20,0);
         §^$§[§#6§] = new OpCode(§#6§,2,21,0);
         §^$§[§09§] = new OpCode(§09§,2,22,0);
         §^$§[M33] = new OpCode(M33,3,23,§4!?§);
         §^$§[M44] = new OpCode(M44,3,24,§4!?§);
         §^$§[M34] = new OpCode(M34,3,25,§4!?§);
         §^$§[§=!8§] = new OpCode(§=!8§,1,26,§9!;§ | §+L§ | §7!]§);
         §^$§[§`!M§] = new OpCode(§`!M§,1,27,§9!;§ | §+L§ | §7!]§);
         §^$§[§4$§] = new OpCode(§4$§,2,28,§9!;§ | §+L§ | §7!]§);
         §^$§[§>"1§] = new OpCode(§>"1§,2,29,§9!;§ | §+L§ | §7!]§);
         §^$§[§3h§] = new OpCode(§3h§,2,30,§9!;§ | §+L§ | §7!]§);
         §^$§[§4"3§] = new OpCode(§4"3§,2,31,§9!;§ | §+L§ | §7!]§);
         §^$§[§ !h§] = new OpCode(§ !h§,2,32,§9!;§ | §+L§ | §7!]§);
         §^$§[§#"$§] = new OpCode(§#"$§,2,33,§9!;§ | §+L§ | §7!]§);
         §^$§[§["4§] = new OpCode(§["4§,0,34,§9!;§ | §+L§ | §>g§);
         §^$§[§8!&§] = new OpCode(§8!&§,0,35,§9!;§ | §>g§);
         §^$§[§""D§] = new OpCode(§""D§,1,36,§9!;§ | §+L§ | §7!]§);
         §^$§[§]r§] = new OpCode(§]r§,0,37,§9!;§ | §>g§);
         §^$§[§!+§] = new OpCode(§!+§,0,38,§9!;§);
         §^$§[§,X§] = new OpCode(§,X§,1,39,§9!;§ | §+!r§);
         §^$§[§,"?§] = new OpCode(§,"?§,3,40,§+!r§ | §?"4§);
         §^$§[§-b§] = new OpCode(§-b§,3,41,0);
         §^$§[§#!9§] = new OpCode(§#!9§,3,42,0);
         §^$§[§]`§] = new OpCode(§]`§,2,43,0);
         §"!X§[§?g§] = new Register(§?g§,"vertex attribute",0,7,§]l§ | §%!L§);
         §"!X§[§#!s§] = new Register(§#!s§,"vertex constant",1,127,§]l§ | §%!L§);
         §"!X§[§`!j§] = new Register(§`!j§,"vertex temporary",2,7,§]l§ | §&o§ | §%!L§);
         §"!X§[§'!O§] = new Register(§'!O§,"vertex output",3,0,§]l§ | §&o§);
         §"!X§[V] = new Register(V,"varying",4,7,§]l§ | §&" § | §%!L§ | §&o§);
         §"!X§[§#!h§] = new Register(§#!h§,"fragment constant",1,27,§&" § | §%!L§);
         §"!X§[§-E§] = new Register(§-E§,"fragment temporary",2,7,§&" § | §&o§ | §%!L§);
         §"!X§[§`!N§] = new Register(§`!N§,"texture sampler",5,7,§&" § | §%!L§);
         §"!X§[§!";§] = new Register(§!";§,"fragment output",3,0,§&" § | §&o§);
         §&!O§[D2] = new Sampler(D2,§1!l§,0);
         §&!O§[D3] = new Sampler(D3,§1!l§,2);
         §&!O§[§[""§] = new Sampler(§[""§,§1!l§,1);
         §&!O§[§ !u§] = new Sampler(§ !u§,§^!C§,1);
         §&!O§[§"[§] = new Sampler(§"[§,§^!C§,2);
         §&!O§[§"""§] = new Sampler(§"""§,§^!C§,0);
         §&!O§[§5-§] = new Sampler(§5-§,§^!C§,0);
         §&!O§[§]^§] = new Sampler(§]^§,§<r§,0);
         §&!O§[§!!B§] = new Sampler(§!!B§,§<r§,1);
         §&!O§[§+!E§] = new Sampler(§+!E§,§?;§,1 << 0);
         §&!O§[§!`§] = new Sampler(§!`§,§?;§,1 << 1);
         §&!O§[§0!L§] = new Sampler(§0!L§,§?;§,1 << 2);
         §&!O§[§5!&§] = new Sampler(§5!&§,§9"D§,1);
         §&!O§[§ "&§] = new Sampler(§ "&§,§9"D§,1);
         §&!O§[§`!#§] = new Sampler(§`!#§,§9"D§,0);
      }
      
      public function get error() : String
      {
         return this.§+G§;
      }
      
      public function get §"!6§() : ByteArray
      {
         return this.§-x§;
      }
      
      public function §^+§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§-x§ = new ByteArray();
         this.§+G§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§+G§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§"!6§.endian = Endian.LITTLE_ENDIAN;
         this.§"!6§.writeByte(160);
         this.§"!6§.writeUnsignedInt(1);
         this.§"!6§.writeByte(161);
         this.§"!6§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§+G§ == "")
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
            _loc16_ = §^$§[_loc15_[0]];
            if(!this.§?1§)
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
               if(_loc16_.flags & §>g§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§+G§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §+L§)
               {
                  _loc7_++;
                  if(_loc7_ > §9_§)
                  {
                     this.§+G§ = "error: nesting to deep, maximum allowed is " + §9_§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §+!r§ && !_loc5_)
               {
                  this.§+G§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§"!6§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §&!w§)
               {
                  this.§+G§ = "error: too many opcodes. maximum is " + §&!w§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§+G§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §"!X§[_loc24_[0]];
                  if(!this.§?1§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§+G§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §&" §))
                     {
                        this.§+G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§+G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]l§))
                  {
                     this.§+G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§+G§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §9!;§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §?"4§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§+G§ = "error: relative can not be destination";
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
                     if((_loc39_ = §"!X§[_loc38_[0]]) == null)
                     {
                        this.§+G§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§+G§ = "error: bad index register select";
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
                        this.§+G§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§"!6§.writeShort(_loc27_);
                     this.§"!6§.writeByte(_loc28_);
                     this.§"!6§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §&!O§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §?;§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§"!6§.writeShort(_loc27_);
                     this.§"!6§.writeByte(int(_loc44_ * 8));
                     this.§"!6§.writeByte(0);
                     this.§"!6§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§"!6§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§"!6§.writeShort(_loc27_);
                     this.§"!6§.writeByte(_loc34_);
                     this.§"!6§.writeByte(_loc28_);
                     this.§"!6§.writeByte(_loc25_.emitCode);
                     this.§"!6§.writeByte(_loc32_);
                     this.§"!6§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§"!6§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§+G§ != "")
         {
            this.§+G§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§"!6§.length = 0;
         }
         if(this.§?1§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§"!6§.length;
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
               if((_loc49_ = this.§"!6§[_loc48_].toString(16)).length < 2)
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
         return this.§"!6§;
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
