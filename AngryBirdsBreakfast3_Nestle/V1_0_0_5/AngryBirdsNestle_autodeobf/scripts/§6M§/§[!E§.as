package §6M§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §[!E§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §""+§:Dictionary = new Dictionary();
      
      private static const §4!s§:Dictionary = new Dictionary();
      
      private static const §>K§:Dictionary = new Dictionary();
      
      private static const §0!5§:int = 4;
      
      private static const §>Q§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §2=§:uint = 12;
      
      private static const §&!Q§:uint = 16;
      
      private static const §[!]§:uint = 20;
      
      private static const dynamic:uint = 24;
      
      private static const §&!M§:uint = 28;
      
      private static const §#!h§:uint = 1;
      
      private static const §%!t§:uint = 2;
      
      private static const §;" §:uint = 32;
      
      private static const §2"5§:uint = 64;
      
      private static const §@"2§:uint = 1;
      
      private static const §=!j§:uint = 2;
      
      private static const §9!M§:uint = 4;
      
      private static const §@! §:uint = 8;
      
      private static const §;q§:uint = 16;
      
      private static const §!!6§:uint = 32;
      
      private static const §+8§:uint = 128;
      
      private static const §5<§:String = "mov";
      
      private static const §+!4§:String = "add";
      
      private static const §@a§:String = "sub";
      
      private static const §]!b§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §"!3§:String = "rcp";
      
      private static const §%<§:String = "min";
      
      private static const §,!M§:String = "max";
      
      private static const §2u§:String = "frc";
      
      private static const §4"4§:String = "sqt";
      
      private static const §?!K§:String = "rsq";
      
      private static const §^F§:String = "pow";
      
      private static const § !r§:String = "log";
      
      private static const §<!z§:String = "exp";
      
      private static const §;`§:String = "nrm";
      
      private static const §>!X§:String = "sin";
      
      private static const §case §:String = "cos";
      
      private static const §[!8§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §2!7§:String = "abs";
      
      private static const §6o§:String = "neg";
      
      private static const §&v§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §&!8§:String = "ifz";
      
      private static const §=0§:String = "inz";
      
      private static const §@"#§:String = "ife";
      
      private static const §6+§:String = "ine";
      
      private static const §7!X§:String = "ifg";
      
      private static const §;5§:String = "ifl";
      
      private static const §`!§:String = "ieg";
      
      private static const §3!-§:String = "iel";
      
      private static const §9!P§:String = "els";
      
      private static const §0!8§:String = "eif";
      
      private static const §9"#§:String = "rep";
      
      private static const §`x§:String = "erp";
      
      private static const §,[§:String = "brk";
      
      private static const §["&§:String = "kil";
      
      private static const §7R§:String = "tex";
      
      private static const §-!v§:String = "sge";
      
      private static const §@L§:String = "slt";
      
      private static const §<"3§:String = "sgn";
      
      private static const §5!a§:String = "va";
      
      private static const §2!9§:String = "vc";
      
      private static const §@!P§:String = "vt";
      
      private static const §^p§:String = "op";
      
      private static const V:String = "v";
      
      private static const §=k§:String = "fc";
      
      private static const §[W§:String = "ft";
      
      private static const §,!r§:String = "fs";
      
      private static const §&!2§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §9"%§:String = "cube";
      
      private static const §5"-§:String = "mipnearest";
      
      private static const §3!v§:String = "miplinear";
      
      private static const §<'§:String = "mipnone";
      
      private static const §-R§:String = "nomip";
      
      private static const §-l§:String = "nearest";
      
      private static const §`!c§:String = "linear";
      
      private static const §^!l§:String = "centroid";
      
      private static const §'!?§:String = "single";
      
      private static const §?2§:String = "depth";
      
      private static const §23§:String = "repeat";
      
      private static const §>7§:String = "wrap";
      
      private static const §5o§:String = "clamp";
       
      
      private var §<V§:ByteArray = null;
      
      private var §=&§:String = "";
      
      private var §<!0§:Boolean = false;
      
      public function §[!E§(param1:Boolean = false)
      {
         super();
         this.§<!0§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §""+§[§5<§] = new OpCode(§5<§,2,0,0);
         §""+§[§+!4§] = new OpCode(§+!4§,3,1,0);
         §""+§[§@a§] = new OpCode(§@a§,3,2,0);
         §""+§[§]!b§] = new OpCode(§]!b§,3,3,0);
         §""+§[DIV] = new OpCode(DIV,3,4,0);
         §""+§[§"!3§] = new OpCode(§"!3§,2,5,0);
         §""+§[§%<§] = new OpCode(§%<§,3,6,0);
         §""+§[§,!M§] = new OpCode(§,!M§,3,7,0);
         §""+§[§2u§] = new OpCode(§2u§,2,8,0);
         §""+§[§4"4§] = new OpCode(§4"4§,2,9,0);
         §""+§[§?!K§] = new OpCode(§?!K§,2,10,0);
         §""+§[§^F§] = new OpCode(§^F§,3,11,0);
         §""+§[§ !r§] = new OpCode(§ !r§,2,12,0);
         §""+§[§<!z§] = new OpCode(§<!z§,2,13,0);
         §""+§[§;`§] = new OpCode(§;`§,2,14,0);
         §""+§[§>!X§] = new OpCode(§>!X§,2,15,0);
         §""+§[§case §] = new OpCode(§case §,2,16,0);
         §""+§[§[!8§] = new OpCode(§[!8§,3,17,0);
         §""+§[DP3] = new OpCode(DP3,3,18,0);
         §""+§[DP4] = new OpCode(DP4,3,19,0);
         §""+§[§2!7§] = new OpCode(§2!7§,2,20,0);
         §""+§[§6o§] = new OpCode(§6o§,2,21,0);
         §""+§[§&v§] = new OpCode(§&v§,2,22,0);
         §""+§[M33] = new OpCode(M33,3,23,§;q§);
         §""+§[M44] = new OpCode(M44,3,24,§;q§);
         §""+§[M34] = new OpCode(M34,3,25,§;q§);
         §""+§[§&!8§] = new OpCode(§&!8§,1,26,§+8§ | §=!j§ | §@"2§);
         §""+§[§=0§] = new OpCode(§=0§,1,27,§+8§ | §=!j§ | §@"2§);
         §""+§[§@"#§] = new OpCode(§@"#§,2,28,§+8§ | §=!j§ | §@"2§);
         §""+§[§6+§] = new OpCode(§6+§,2,29,§+8§ | §=!j§ | §@"2§);
         §""+§[§7!X§] = new OpCode(§7!X§,2,30,§+8§ | §=!j§ | §@"2§);
         §""+§[§;5§] = new OpCode(§;5§,2,31,§+8§ | §=!j§ | §@"2§);
         §""+§[§`!§] = new OpCode(§`!§,2,32,§+8§ | §=!j§ | §@"2§);
         §""+§[§3!-§] = new OpCode(§3!-§,2,33,§+8§ | §=!j§ | §@"2§);
         §""+§[§9!P§] = new OpCode(§9!P§,0,34,§+8§ | §=!j§ | §9!M§);
         §""+§[§0!8§] = new OpCode(§0!8§,0,35,§+8§ | §9!M§);
         §""+§[§9"#§] = new OpCode(§9"#§,1,36,§+8§ | §=!j§ | §@"2§);
         §""+§[§`x§] = new OpCode(§`x§,0,37,§+8§ | §9!M§);
         §""+§[§,[§] = new OpCode(§,[§,0,38,§+8§);
         §""+§[§["&§] = new OpCode(§["&§,1,39,§+8§ | §!!6§);
         §""+§[§7R§] = new OpCode(§7R§,3,40,§!!6§ | §@! §);
         §""+§[§-!v§] = new OpCode(§-!v§,3,41,0);
         §""+§[§@L§] = new OpCode(§@L§,3,42,0);
         §""+§[§<"3§] = new OpCode(§<"3§,2,43,0);
         §4!s§[§5!a§] = new Register(§5!a§,"vertex attribute",0,7,§2"5§ | §%!t§);
         §4!s§[§2!9§] = new Register(§2!9§,"vertex constant",1,127,§2"5§ | §%!t§);
         §4!s§[§@!P§] = new Register(§@!P§,"vertex temporary",2,7,§2"5§ | §#!h§ | §%!t§);
         §4!s§[§^p§] = new Register(§^p§,"vertex output",3,0,§2"5§ | §#!h§);
         §4!s§[V] = new Register(V,"varying",4,7,§2"5§ | §;" § | §%!t§ | §#!h§);
         §4!s§[§=k§] = new Register(§=k§,"fragment constant",1,27,§;" § | §%!t§);
         §4!s§[§[W§] = new Register(§[W§,"fragment temporary",2,7,§;" § | §#!h§ | §%!t§);
         §4!s§[§,!r§] = new Register(§,!r§,"texture sampler",5,7,§;" § | §%!t§);
         §4!s§[§&!2§] = new Register(§&!2§,"fragment output",3,0,§;" § | §#!h§);
         §>K§[D2] = new Sampler(D2,§2=§,0);
         §>K§[D3] = new Sampler(D3,§2=§,2);
         §>K§[§9"%§] = new Sampler(§9"%§,§2=§,1);
         §>K§[§5"-§] = new Sampler(§5"-§,dynamic,1);
         §>K§[§3!v§] = new Sampler(§3!v§,dynamic,2);
         §>K§[§<'§] = new Sampler(§<'§,dynamic,0);
         §>K§[§-R§] = new Sampler(§-R§,dynamic,0);
         §>K§[§-l§] = new Sampler(§-l§,§&!M§,0);
         §>K§[§`!c§] = new Sampler(§`!c§,§&!M§,1);
         §>K§[§^!l§] = new Sampler(§^!l§,§&!Q§,1 << 0);
         §>K§[§'!?§] = new Sampler(§'!?§,§&!Q§,1 << 1);
         §>K§[§?2§] = new Sampler(§?2§,§&!Q§,1 << 2);
         §>K§[§23§] = new Sampler(§23§,§[!]§,1);
         §>K§[§>7§] = new Sampler(§>7§,§[!]§,1);
         §>K§[§5o§] = new Sampler(§5o§,§[!]§,0);
      }
      
      public function get error() : String
      {
         return this.§=&§;
      }
      
      public function get §=g§() : ByteArray
      {
         return this.§<V§;
      }
      
      public function §1#§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§<V§ = new ByteArray();
         this.§=&§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§=&§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§=g§.endian = Endian.LITTLE_ENDIAN;
         this.§=g§.writeByte(160);
         this.§=g§.writeUnsignedInt(1);
         this.§=g§.writeByte(161);
         this.§=g§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§=&§ == "")
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
            _loc16_ = §""+§[_loc15_[0]];
            if(!this.§<!0§)
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
               if(_loc16_.flags & §9!M§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§=&§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §=!j§)
               {
                  _loc7_++;
                  if(_loc7_ > §0!5§)
                  {
                     this.§=&§ = "error: nesting to deep, maximum allowed is " + §0!5§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §!!6§ && !_loc5_)
               {
                  this.§=&§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§=g§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §>Q§)
               {
                  this.§=&§ = "error: too many opcodes. maximum is " + §>Q§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§=&§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §4!s§[_loc24_[0]];
                  if(!this.§<!0§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§=&§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §;" §))
                     {
                        this.§=&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§=&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §2"5§))
                  {
                     this.§=&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§=&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §+8§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §@! §;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§=&§ = "error: relative can not be destination";
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
                     if((_loc39_ = §4!s§[_loc38_[0]]) == null)
                     {
                        this.§=&§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§=&§ = "error: bad index register select";
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
                        this.§=&§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§=g§.writeShort(_loc27_);
                     this.§=g§.writeByte(_loc28_);
                     this.§=g§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §>K§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §&!Q§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§=g§.writeShort(_loc27_);
                     this.§=g§.writeByte(int(_loc44_ * 8));
                     this.§=g§.writeByte(0);
                     this.§=g§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§=g§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§=g§.writeShort(_loc27_);
                     this.§=g§.writeByte(_loc34_);
                     this.§=g§.writeByte(_loc28_);
                     this.§=g§.writeByte(_loc25_.emitCode);
                     this.§=g§.writeByte(_loc32_);
                     this.§=g§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§=g§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§=&§ != "")
         {
            this.§=&§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§=g§.length = 0;
         }
         if(this.§<!0§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§=g§.length;
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
               if((_loc49_ = this.§=g§[_loc48_].toString(16)).length < 2)
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
         return this.§=g§;
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
