package §,!_§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §=s§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §9!8§:Dictionary = new Dictionary();
      
      private static const §;!`§:Dictionary = new Dictionary();
      
      private static const §<!D§:Dictionary = new Dictionary();
      
      private static const §#h§:int = 4;
      
      private static const §=y§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §+t§:uint = 12;
      
      private static const §=R§:uint = 16;
      
      private static const §;!c§:uint = 20;
      
      private static const §>!X§:uint = 24;
      
      private static const §^e§:uint = 28;
      
      private static const §8&§:uint = 1;
      
      private static const §,V§:uint = 2;
      
      private static const §=Z§:uint = 32;
      
      private static const §'_§:uint = 64;
      
      private static const §0!I§:uint = 1;
      
      private static const §<"%§:uint = 2;
      
      private static const §5N§:uint = 4;
      
      private static const §+!-§:uint = 8;
      
      private static const §3!R§:uint = 16;
      
      private static const §7-§:uint = 32;
      
      private static const §]!b§:uint = 128;
      
      private static const §=!N§:String = "mov";
      
      private static const §4!Y§:String = "add";
      
      private static const §]n§:String = "sub";
      
      private static const §9U§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §2#§:String = "rcp";
      
      private static const §##§:String = "min";
      
      private static const §5!`§:String = "max";
      
      private static const §=!H§:String = "frc";
      
      private static const §,x§:String = "sqt";
      
      private static const §0![§:String = "rsq";
      
      private static const §%"#§:String = "pow";
      
      private static const §1!K§:String = "log";
      
      private static const §1,§:String = "exp";
      
      private static const §?!6§:String = "nrm";
      
      private static const §'!7§:String = "sin";
      
      private static const §<!R§:String = "cos";
      
      private static const §#!H§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §+d§:String = "abs";
      
      private static const §#j§:String = "neg";
      
      private static const §]!O§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §3!h§:String = "ifz";
      
      private static const §,"6§:String = "inz";
      
      private static const §`!I§:String = "ife";
      
      private static const §<!o§:String = "ine";
      
      private static const §!+§:String = "ifg";
      
      private static const §8P§:String = "ifl";
      
      private static const §4"3§:String = "ieg";
      
      private static const §1W§:String = "iel";
      
      private static const §3!k§:String = "els";
      
      private static const §["'§:String = "eif";
      
      private static const §8#§:String = "rep";
      
      private static const §&t§:String = "erp";
      
      private static const §4R§:String = "brk";
      
      private static const §9!W§:String = "kil";
      
      private static const §<!Z§:String = "tex";
      
      private static const §[e§:String = "sge";
      
      private static const §05§:String = "slt";
      
      private static const §-!L§:String = "sgn";
      
      private static const §<"§:String = "va";
      
      private static const §4!x§:String = "vc";
      
      private static const §1!Y§:String = "vt";
      
      private static const §?!H§:String = "op";
      
      private static const V:String = "v";
      
      private static const §3"+§:String = "fc";
      
      private static const §!!g§:String = "ft";
      
      private static const §^!=§:String = "fs";
      
      private static const §#X§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §9!R§:String = "cube";
      
      private static const §<q§:String = "mipnearest";
      
      private static const §?!h§:String = "miplinear";
      
      private static const §7!k§:String = "mipnone";
      
      private static const §%Z§:String = "nomip";
      
      private static const §4M§:String = "nearest";
      
      private static const §?!@§:String = "linear";
      
      private static const §5[§:String = "centroid";
      
      private static const §'!q§:String = "single";
      
      private static const §3>§:String = "depth";
      
      private static const §'!J§:String = "repeat";
      
      private static const §#!&§:String = "wrap";
      
      private static const §'!4§:String = "clamp";
       
      
      private var §-I§:ByteArray = null;
      
      private var §0`§:String = "";
      
      private var §#!%§:Boolean = false;
      
      public function §=s§(param1:Boolean = false)
      {
         super();
         this.§#!%§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §9!8§[§=!N§] = new OpCode(§=!N§,2,0,0);
         §9!8§[§4!Y§] = new OpCode(§4!Y§,3,1,0);
         §9!8§[§]n§] = new OpCode(§]n§,3,2,0);
         §9!8§[§9U§] = new OpCode(§9U§,3,3,0);
         §9!8§[DIV] = new OpCode(DIV,3,4,0);
         §9!8§[§2#§] = new OpCode(§2#§,2,5,0);
         §9!8§[§##§] = new OpCode(§##§,3,6,0);
         §9!8§[§5!`§] = new OpCode(§5!`§,3,7,0);
         §9!8§[§=!H§] = new OpCode(§=!H§,2,8,0);
         §9!8§[§,x§] = new OpCode(§,x§,2,9,0);
         §9!8§[§0![§] = new OpCode(§0![§,2,10,0);
         §9!8§[§%"#§] = new OpCode(§%"#§,3,11,0);
         §9!8§[§1!K§] = new OpCode(§1!K§,2,12,0);
         §9!8§[§1,§] = new OpCode(§1,§,2,13,0);
         §9!8§[§?!6§] = new OpCode(§?!6§,2,14,0);
         §9!8§[§'!7§] = new OpCode(§'!7§,2,15,0);
         §9!8§[§<!R§] = new OpCode(§<!R§,2,16,0);
         §9!8§[§#!H§] = new OpCode(§#!H§,3,17,0);
         §9!8§[DP3] = new OpCode(DP3,3,18,0);
         §9!8§[DP4] = new OpCode(DP4,3,19,0);
         §9!8§[§+d§] = new OpCode(§+d§,2,20,0);
         §9!8§[§#j§] = new OpCode(§#j§,2,21,0);
         §9!8§[§]!O§] = new OpCode(§]!O§,2,22,0);
         §9!8§[M33] = new OpCode(M33,3,23,§3!R§);
         §9!8§[M44] = new OpCode(M44,3,24,§3!R§);
         §9!8§[M34] = new OpCode(M34,3,25,§3!R§);
         §9!8§[§3!h§] = new OpCode(§3!h§,1,26,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§,"6§] = new OpCode(§,"6§,1,27,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§`!I§] = new OpCode(§`!I§,2,28,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§<!o§] = new OpCode(§<!o§,2,29,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§!+§] = new OpCode(§!+§,2,30,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§8P§] = new OpCode(§8P§,2,31,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§4"3§] = new OpCode(§4"3§,2,32,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§1W§] = new OpCode(§1W§,2,33,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§3!k§] = new OpCode(§3!k§,0,34,§]!b§ | §<"%§ | §5N§);
         §9!8§[§["'§] = new OpCode(§["'§,0,35,§]!b§ | §5N§);
         §9!8§[§8#§] = new OpCode(§8#§,1,36,§]!b§ | §<"%§ | §0!I§);
         §9!8§[§&t§] = new OpCode(§&t§,0,37,§]!b§ | §5N§);
         §9!8§[§4R§] = new OpCode(§4R§,0,38,§]!b§);
         §9!8§[§9!W§] = new OpCode(§9!W§,1,39,§]!b§ | §7-§);
         §9!8§[§<!Z§] = new OpCode(§<!Z§,3,40,§7-§ | §+!-§);
         §9!8§[§[e§] = new OpCode(§[e§,3,41,0);
         §9!8§[§05§] = new OpCode(§05§,3,42,0);
         §9!8§[§-!L§] = new OpCode(§-!L§,2,43,0);
         §;!`§[§<"§] = new Register(§<"§,"vertex attribute",0,7,§'_§ | §,V§);
         §;!`§[§4!x§] = new Register(§4!x§,"vertex constant",1,127,§'_§ | §,V§);
         §;!`§[§1!Y§] = new Register(§1!Y§,"vertex temporary",2,7,§'_§ | §8&§ | §,V§);
         §;!`§[§?!H§] = new Register(§?!H§,"vertex output",3,0,§'_§ | §8&§);
         §;!`§[V] = new Register(V,"varying",4,7,§'_§ | §=Z§ | §,V§ | §8&§);
         §;!`§[§3"+§] = new Register(§3"+§,"fragment constant",1,27,§=Z§ | §,V§);
         §;!`§[§!!g§] = new Register(§!!g§,"fragment temporary",2,7,§=Z§ | §8&§ | §,V§);
         §;!`§[§^!=§] = new Register(§^!=§,"texture sampler",5,7,§=Z§ | §,V§);
         §;!`§[§#X§] = new Register(§#X§,"fragment output",3,0,§=Z§ | §8&§);
         §<!D§[D2] = new Sampler(D2,§+t§,0);
         §<!D§[D3] = new Sampler(D3,§+t§,2);
         §<!D§[§9!R§] = new Sampler(§9!R§,§+t§,1);
         §<!D§[§<q§] = new Sampler(§<q§,§>!X§,1);
         §<!D§[§?!h§] = new Sampler(§?!h§,§>!X§,2);
         §<!D§[§7!k§] = new Sampler(§7!k§,§>!X§,0);
         §<!D§[§%Z§] = new Sampler(§%Z§,§>!X§,0);
         §<!D§[§4M§] = new Sampler(§4M§,§^e§,0);
         §<!D§[§?!@§] = new Sampler(§?!@§,§^e§,1);
         §<!D§[§5[§] = new Sampler(§5[§,§=R§,1 << 0);
         §<!D§[§'!q§] = new Sampler(§'!q§,§=R§,1 << 1);
         §<!D§[§3>§] = new Sampler(§3>§,§=R§,1 << 2);
         §<!D§[§'!J§] = new Sampler(§'!J§,§;!c§,1);
         §<!D§[§#!&§] = new Sampler(§#!&§,§;!c§,1);
         §<!D§[§'!4§] = new Sampler(§'!4§,§;!c§,0);
      }
      
      public function get error() : String
      {
         return this.§0`§;
      }
      
      public function get §]Z§() : ByteArray
      {
         return this.§-I§;
      }
      
      public function §4g§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§-I§ = new ByteArray();
         this.§0`§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§0`§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§]Z§.endian = Endian.LITTLE_ENDIAN;
         this.§]Z§.writeByte(160);
         this.§]Z§.writeUnsignedInt(1);
         this.§]Z§.writeByte(161);
         this.§]Z§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§0`§ == "")
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
            _loc16_ = §9!8§[_loc15_[0]];
            if(!this.§#!%§)
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
               if(_loc16_.flags & §5N§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§0`§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §<"%§)
               {
                  _loc7_++;
                  if(_loc7_ > §#h§)
                  {
                     this.§0`§ = "error: nesting to deep, maximum allowed is " + §#h§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §7-§ && !_loc5_)
               {
                  this.§0`§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§]Z§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §=y§)
               {
                  this.§0`§ = "error: too many opcodes. maximum is " + §=y§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§0`§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §;!`§[_loc24_[0]];
                  if(!this.§#!%§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§0`§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §=Z§))
                     {
                        this.§0`§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§0`§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §'_§))
                  {
                     this.§0`§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§0`§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §]!b§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §+!-§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§0`§ = "error: relative can not be destination";
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
                     if((_loc39_ = §;!`§[_loc38_[0]]) == null)
                     {
                        this.§0`§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§0`§ = "error: bad index register select";
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
                        this.§0`§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§]Z§.writeShort(_loc27_);
                     this.§]Z§.writeByte(_loc28_);
                     this.§]Z§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §<!D§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §=R§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§]Z§.writeShort(_loc27_);
                     this.§]Z§.writeByte(int(_loc44_ * 8));
                     this.§]Z§.writeByte(0);
                     this.§]Z§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§]Z§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§]Z§.writeShort(_loc27_);
                     this.§]Z§.writeByte(_loc34_);
                     this.§]Z§.writeByte(_loc28_);
                     this.§]Z§.writeByte(_loc25_.emitCode);
                     this.§]Z§.writeByte(_loc32_);
                     this.§]Z§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§]Z§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§0`§ != "")
         {
            this.§0`§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§]Z§.length = 0;
         }
         if(this.§#!%§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§]Z§.length;
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
               if((_loc49_ = this.§]Z§[_loc48_].toString(16)).length < 2)
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
         return this.§]Z§;
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
