package §@z§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%!<§:Dictionary = new Dictionary();
      
      private static const §=C§:Dictionary = new Dictionary();
      
      private static const §+!6§:Dictionary = new Dictionary();
      
      private static const §3!0§:int = 4;
      
      private static const §"g§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §4a§:uint = 12;
      
      private static const § !-§:uint = 16;
      
      private static const §'<§:uint = 20;
      
      private static const §+!=§:uint = 24;
      
      private static const §]8§:uint = 28;
      
      private static const §5D§:uint = 1;
      
      private static const §>!%§:uint = 2;
      
      private static const §9!3§:uint = 32;
      
      private static const §>_§:uint = 64;
      
      private static const §`M§:uint = 1;
      
      private static const §8p§:uint = 2;
      
      private static const §`_§:uint = 4;
      
      private static const §;9§:uint = 8;
      
      private static const §9H§:uint = 16;
      
      private static const §1!+§:uint = 32;
      
      private static const §&@§:uint = 128;
      
      private static const §=>§:String = "mov";
      
      private static const §9M§:String = "add";
      
      private static const §<,§:String = "sub";
      
      private static const §,r§:String = "mul";
      
      private static const §=!I§:String = "div";
      
      private static const §return§:String = "rcp";
      
      private static const §1!M§:String = "min";
      
      private static const §14§:String = "max";
      
      private static const §4A§:String = "frc";
      
      private static const §^!6§:String = "sqt";
      
      private static const §`o§:String = "rsq";
      
      private static const §!E§:String = "pow";
      
      private static const §8b§:String = "log";
      
      private static const §4z§:String = "exp";
      
      private static const §1!I§:String = "nrm";
      
      private static const §0e§:String = "sin";
      
      private static const §!$§:String = "cos";
      
      private static const get:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §]R§:String = "abs";
      
      private static const §4i§:String = "neg";
      
      private static const §@!9§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §@!A§:String = "ifz";
      
      private static const §<i§:String = "inz";
      
      private static const §"F§:String = "ife";
      
      private static const §-4§:String = "ine";
      
      private static const §[j§:String = "ifg";
      
      private static const §8y§:String = "ifl";
      
      private static const §#!7§:String = "ieg";
      
      private static const §8?§:String = "iel";
      
      private static const §@!>§:String = "els";
      
      private static const §5w§:String = "eif";
      
      private static const §"!=§:String = "rep";
      
      private static const §70§:String = "erp";
      
      private static const §'$§:String = "brk";
      
      private static const §]z§:String = "kil";
      
      private static const §0!2§:String = "tex";
      
      private static const §<!L§:String = "sge";
      
      private static const §'"§:String = "slt";
      
      private static const §=!,§:String = "sgn";
      
      private static const §1o§:String = "va";
      
      private static const §[!G§:String = "vc";
      
      private static const § b§:String = "vt";
      
      private static const §'l§:String = "op";
      
      private static const §6!!§:String = "v";
      
      private static const §do §:String = "fc";
      
      private static const §<!G§:String = "ft";
      
      private static const §#b§:String = "fs";
      
      private static const §;f§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §89§:String = "cube";
      
      private static const §&y§:String = "mipnearest";
      
      private static const § l§:String = "miplinear";
      
      private static const §3&§:String = "mipnone";
      
      private static const §9!F§:String = "nomip";
      
      private static const § !$§:String = "nearest";
      
      private static const § !O§:String = "linear";
      
      private static const §5!O§:String = "centroid";
      
      private static const §3P§:String = "single";
      
      private static const §6f§:String = "depth";
      
      private static const §1m§:String = "repeat";
      
      private static const §6m§:String = "wrap";
      
      private static const §-j§:String = "clamp";
       
      
      private var §1g§:ByteArray = null;
      
      private var §[p§:String = "";
      
      private var §!0§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§!0§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%!<§[§=>§] = new OpCode(§=>§,2,0,0);
         §%!<§[§9M§] = new OpCode(§9M§,3,1,0);
         §%!<§[§<,§] = new OpCode(§<,§,3,2,0);
         §%!<§[§,r§] = new OpCode(§,r§,3,3,0);
         §%!<§[§=!I§] = new OpCode(§=!I§,3,4,0);
         §%!<§[§return§] = new OpCode(§return§,2,5,0);
         §%!<§[§1!M§] = new OpCode(§1!M§,3,6,0);
         §%!<§[§14§] = new OpCode(§14§,3,7,0);
         §%!<§[§4A§] = new OpCode(§4A§,2,8,0);
         §%!<§[§^!6§] = new OpCode(§^!6§,2,9,0);
         §%!<§[§`o§] = new OpCode(§`o§,2,10,0);
         §%!<§[§!E§] = new OpCode(§!E§,3,11,0);
         §%!<§[§8b§] = new OpCode(§8b§,2,12,0);
         §%!<§[§4z§] = new OpCode(§4z§,2,13,0);
         §%!<§[§1!I§] = new OpCode(§1!I§,2,14,0);
         §%!<§[§0e§] = new OpCode(§0e§,2,15,0);
         §%!<§[§!$§] = new OpCode(§!$§,2,16,0);
         §%!<§[get] = new OpCode(get,3,17,0);
         §%!<§[DP3] = new OpCode(DP3,3,18,0);
         §%!<§[DP4] = new OpCode(DP4,3,19,0);
         §%!<§[§]R§] = new OpCode(§]R§,2,20,0);
         §%!<§[§4i§] = new OpCode(§4i§,2,21,0);
         §%!<§[§@!9§] = new OpCode(§@!9§,2,22,0);
         §%!<§[M33] = new OpCode(M33,3,23,§9H§);
         §%!<§[M44] = new OpCode(M44,3,24,§9H§);
         §%!<§[M34] = new OpCode(M34,3,25,§9H§);
         §%!<§[§@!A§] = new OpCode(§@!A§,1,26,§&@§ | §8p§ | §`M§);
         §%!<§[§<i§] = new OpCode(§<i§,1,27,§&@§ | §8p§ | §`M§);
         §%!<§[§"F§] = new OpCode(§"F§,2,28,§&@§ | §8p§ | §`M§);
         §%!<§[§-4§] = new OpCode(§-4§,2,29,§&@§ | §8p§ | §`M§);
         §%!<§[§[j§] = new OpCode(§[j§,2,30,§&@§ | §8p§ | §`M§);
         §%!<§[§8y§] = new OpCode(§8y§,2,31,§&@§ | §8p§ | §`M§);
         §%!<§[§#!7§] = new OpCode(§#!7§,2,32,§&@§ | §8p§ | §`M§);
         §%!<§[§8?§] = new OpCode(§8?§,2,33,§&@§ | §8p§ | §`M§);
         §%!<§[§@!>§] = new OpCode(§@!>§,0,34,§&@§ | §8p§ | §`_§);
         §%!<§[§5w§] = new OpCode(§5w§,0,35,§&@§ | §`_§);
         §%!<§[§"!=§] = new OpCode(§"!=§,1,36,§&@§ | §8p§ | §`M§);
         §%!<§[§70§] = new OpCode(§70§,0,37,§&@§ | §`_§);
         §%!<§[§'$§] = new OpCode(§'$§,0,38,§&@§);
         §%!<§[§]z§] = new OpCode(§]z§,1,39,§&@§ | §1!+§);
         §%!<§[§0!2§] = new OpCode(§0!2§,3,40,§1!+§ | §;9§);
         §%!<§[§<!L§] = new OpCode(§<!L§,3,41,0);
         §%!<§[§'"§] = new OpCode(§'"§,3,42,0);
         §%!<§[§=!,§] = new OpCode(§=!,§,2,43,0);
         §=C§[§1o§] = new Register(§1o§,"vertex attribute",0,7,§>_§ | §>!%§);
         §=C§[§[!G§] = new Register(§[!G§,"vertex constant",1,127,§>_§ | §>!%§);
         §=C§[§ b§] = new Register(§ b§,"vertex temporary",2,7,§>_§ | §5D§ | §>!%§);
         §=C§[§'l§] = new Register(§'l§,"vertex output",3,0,§>_§ | §5D§);
         §=C§[§6!!§] = new Register(§6!!§,"varying",4,7,§>_§ | §9!3§ | §>!%§ | §5D§);
         §=C§[§do §] = new Register(§do §,"fragment constant",1,27,§9!3§ | §>!%§);
         §=C§[§<!G§] = new Register(§<!G§,"fragment temporary",2,7,§9!3§ | §5D§ | §>!%§);
         §=C§[§#b§] = new Register(§#b§,"texture sampler",5,7,§9!3§ | §>!%§);
         §=C§[§;f§] = new Register(§;f§,"fragment output",3,0,§9!3§ | §5D§);
         §+!6§[D2] = new Sampler(D2,§4a§,0);
         §+!6§[D3] = new Sampler(D3,§4a§,2);
         §+!6§[§89§] = new Sampler(§89§,§4a§,1);
         §+!6§[§&y§] = new Sampler(§&y§,§+!=§,1);
         §+!6§[§ l§] = new Sampler(§ l§,§+!=§,2);
         §+!6§[§3&§] = new Sampler(§3&§,§+!=§,0);
         §+!6§[§9!F§] = new Sampler(§9!F§,§+!=§,0);
         §+!6§[§ !$§] = new Sampler(§ !$§,§]8§,0);
         §+!6§[§ !O§] = new Sampler(§ !O§,§]8§,1);
         §+!6§[§5!O§] = new Sampler(§5!O§,§ !-§,1 << 0);
         §+!6§[§3P§] = new Sampler(§3P§,§ !-§,1 << 1);
         §+!6§[§6f§] = new Sampler(§6f§,§ !-§,1 << 2);
         §+!6§[§1m§] = new Sampler(§1m§,§'<§,1);
         §+!6§[§6m§] = new Sampler(§6m§,§'<§,1);
         §+!6§[§-j§] = new Sampler(§-j§,§'<§,0);
      }
      
      public function get error() : String
      {
         return this.§[p§;
      }
      
      public function get § 4§() : ByteArray
      {
         return this.§1g§;
      }
      
      public function §,,§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§1g§ = new ByteArray();
         this.§[p§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§[p§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§ 4§.endian = Endian.LITTLE_ENDIAN;
         this.§ 4§.writeByte(160);
         this.§ 4§.writeUnsignedInt(1);
         this.§ 4§.writeByte(161);
         this.§ 4§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§[p§ == "")
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
            _loc16_ = §%!<§[_loc15_[0]];
            if(!this.§!0§)
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
               if(_loc16_.flags & §`_§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§[p§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §8p§)
               {
                  _loc7_++;
                  if(_loc7_ > §3!0§)
                  {
                     this.§[p§ = "error: nesting to deep, maximum allowed is " + §3!0§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §1!+§ && !_loc5_)
               {
                  this.§[p§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§ 4§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §"g§)
               {
                  this.§[p§ = "error: too many opcodes. maximum is " + §"g§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§[p§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §=C§[_loc24_[0]];
                  if(!this.§!0§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§[p§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §9!3§))
                     {
                        this.§[p§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§[p§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §>_§))
                  {
                     this.§[p§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§[p§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §&@§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §;9§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§[p§ = "error: relative can not be destination";
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
                     if((_loc39_ = §=C§[_loc38_[0]]) == null)
                     {
                        this.§[p§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§[p§ = "error: bad index register select";
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
                        this.§[p§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§ 4§.writeShort(_loc27_);
                     this.§ 4§.writeByte(_loc28_);
                     this.§ 4§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §+!6§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != § !-§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§ 4§.writeShort(_loc27_);
                     this.§ 4§.writeByte(int(_loc44_ * 8));
                     this.§ 4§.writeByte(0);
                     this.§ 4§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§ 4§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§ 4§.writeShort(_loc27_);
                     this.§ 4§.writeByte(_loc34_);
                     this.§ 4§.writeByte(_loc28_);
                     this.§ 4§.writeByte(_loc25_.emitCode);
                     this.§ 4§.writeByte(_loc32_);
                     this.§ 4§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§ 4§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§[p§ != "")
         {
            this.§[p§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§ 4§.length = 0;
         }
         if(this.§!0§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§ 4§.length;
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
               if((_loc49_ = this.§ 4§[_loc48_].toString(16)).length < 2)
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
         return this.§ 4§;
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
