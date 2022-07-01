package §#!C§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §`"=§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%!0§:Dictionary = new Dictionary();
      
      private static const §7!!§:Dictionary = new Dictionary();
      
      private static const §=e§:Dictionary = new Dictionary();
      
      private static const §?!r§:int = 4;
      
      private static const §%?§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!N§:uint = 12;
      
      private static const §^u§:uint = 16;
      
      private static const §6!Z§:uint = 20;
      
      private static const §`!;§:uint = 24;
      
      private static const §>!B§:uint = 28;
      
      private static const §,8§:uint = 1;
      
      private static const §!!b§:uint = 2;
      
      private static const §?!t§:uint = 32;
      
      private static const §[h§:uint = 64;
      
      private static const §!V§:uint = 1;
      
      private static const §5!k§:uint = 2;
      
      private static const §=";§:uint = 4;
      
      private static const §<">§:uint = 8;
      
      private static const §-!3§:uint = 16;
      
      private static const §#!s§:uint = 32;
      
      private static const §7;§:uint = 128;
      
      private static const §@e§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §1w§:String = "sub";
      
      private static const §9F§:String = "mul";
      
      private static const §9""§:String = "div";
      
      private static const §"e§:String = "rcp";
      
      private static const §9!y§:String = "min";
      
      private static const §3&§:String = "max";
      
      private static const §;+§:String = "frc";
      
      private static const §2K§:String = "sqt";
      
      private static const §3!N§:String = "rsq";
      
      private static const § "$§:String = "pow";
      
      private static const §]'§:String = "log";
      
      private static const §9q§:String = "exp";
      
      private static const §@l§:String = "nrm";
      
      private static const §]S§:String = "sin";
      
      private static const §8!V§:String = "cos";
      
      private static const §#0§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §0R§:String = "abs";
      
      private static const §]U§:String = "neg";
      
      private static const §"0§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §<L§:String = "ifz";
      
      private static const §;!t§:String = "inz";
      
      private static const §9E§:String = "ife";
      
      private static const §+!$§:String = "ine";
      
      private static const §?"3§:String = "ifg";
      
      private static const §-!2§:String = "ifl";
      
      private static const §7!e§:String = "ieg";
      
      private static const §'!=§:String = "iel";
      
      private static const §<f§:String = "els";
      
      private static const §?1§:String = "eif";
      
      private static const §6!u§:String = "rep";
      
      private static const §&!W§:String = "erp";
      
      private static const §2"=§:String = "brk";
      
      private static const §2'§:String = "kil";
      
      private static const §-!5§:String = "tex";
      
      private static const §["5§:String = "sge";
      
      private static const §7x§:String = "slt";
      
      private static const §3d§:String = "sgn";
      
      private static const §]_§:String = "va";
      
      private static const §4!]§:String = "vc";
      
      private static const §?V§:String = "vt";
      
      private static const §^c§:String = "op";
      
      private static const V:String = "v";
      
      private static const §?z§:String = "fc";
      
      private static const §if§:String = "ft";
      
      private static const §5!B§:String = "fs";
      
      private static const §-!e§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §7A§:String = "cube";
      
      private static const §!!3§:String = "mipnearest";
      
      private static const §2!Z§:String = "miplinear";
      
      private static const §@!t§:String = "mipnone";
      
      private static const §!!<§:String = "nomip";
      
      private static const §@" §:String = "nearest";
      
      private static const §?!#§:String = "linear";
      
      private static const §6F§:String = "centroid";
      
      private static const §%!s§:String = "single";
      
      private static const §!!e§:String = "depth";
      
      private static const §@!$§:String = "repeat";
      
      private static const §4"§:String = "wrap";
      
      private static const §>h§:String = "clamp";
       
      
      private var §^@§:ByteArray = null;
      
      private var §use§:String = "";
      
      private var §0!m§:Boolean = false;
      
      public function §`"=§(param1:Boolean = false)
      {
         super();
         this.§0!m§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%!0§[§@e§] = new OpCode(§@e§,2,0,0);
         §%!0§[ADD] = new OpCode(ADD,3,1,0);
         §%!0§[§1w§] = new OpCode(§1w§,3,2,0);
         §%!0§[§9F§] = new OpCode(§9F§,3,3,0);
         §%!0§[§9""§] = new OpCode(§9""§,3,4,0);
         §%!0§[§"e§] = new OpCode(§"e§,2,5,0);
         §%!0§[§9!y§] = new OpCode(§9!y§,3,6,0);
         §%!0§[§3&§] = new OpCode(§3&§,3,7,0);
         §%!0§[§;+§] = new OpCode(§;+§,2,8,0);
         §%!0§[§2K§] = new OpCode(§2K§,2,9,0);
         §%!0§[§3!N§] = new OpCode(§3!N§,2,10,0);
         §%!0§[§ "$§] = new OpCode(§ "$§,3,11,0);
         §%!0§[§]'§] = new OpCode(§]'§,2,12,0);
         §%!0§[§9q§] = new OpCode(§9q§,2,13,0);
         §%!0§[§@l§] = new OpCode(§@l§,2,14,0);
         §%!0§[§]S§] = new OpCode(§]S§,2,15,0);
         §%!0§[§8!V§] = new OpCode(§8!V§,2,16,0);
         §%!0§[§#0§] = new OpCode(§#0§,3,17,0);
         §%!0§[DP3] = new OpCode(DP3,3,18,0);
         §%!0§[DP4] = new OpCode(DP4,3,19,0);
         §%!0§[§0R§] = new OpCode(§0R§,2,20,0);
         §%!0§[§]U§] = new OpCode(§]U§,2,21,0);
         §%!0§[§"0§] = new OpCode(§"0§,2,22,0);
         §%!0§[M33] = new OpCode(M33,3,23,§-!3§);
         §%!0§[M44] = new OpCode(M44,3,24,§-!3§);
         §%!0§[M34] = new OpCode(M34,3,25,§-!3§);
         §%!0§[§<L§] = new OpCode(§<L§,1,26,§7;§ | §5!k§ | §!V§);
         §%!0§[§;!t§] = new OpCode(§;!t§,1,27,§7;§ | §5!k§ | §!V§);
         §%!0§[§9E§] = new OpCode(§9E§,2,28,§7;§ | §5!k§ | §!V§);
         §%!0§[§+!$§] = new OpCode(§+!$§,2,29,§7;§ | §5!k§ | §!V§);
         §%!0§[§?"3§] = new OpCode(§?"3§,2,30,§7;§ | §5!k§ | §!V§);
         §%!0§[§-!2§] = new OpCode(§-!2§,2,31,§7;§ | §5!k§ | §!V§);
         §%!0§[§7!e§] = new OpCode(§7!e§,2,32,§7;§ | §5!k§ | §!V§);
         §%!0§[§'!=§] = new OpCode(§'!=§,2,33,§7;§ | §5!k§ | §!V§);
         §%!0§[§<f§] = new OpCode(§<f§,0,34,§7;§ | §5!k§ | §=";§);
         §%!0§[§?1§] = new OpCode(§?1§,0,35,§7;§ | §=";§);
         §%!0§[§6!u§] = new OpCode(§6!u§,1,36,§7;§ | §5!k§ | §!V§);
         §%!0§[§&!W§] = new OpCode(§&!W§,0,37,§7;§ | §=";§);
         §%!0§[§2"=§] = new OpCode(§2"=§,0,38,§7;§);
         §%!0§[§2'§] = new OpCode(§2'§,1,39,§7;§ | §#!s§);
         §%!0§[§-!5§] = new OpCode(§-!5§,3,40,§#!s§ | §<">§);
         §%!0§[§["5§] = new OpCode(§["5§,3,41,0);
         §%!0§[§7x§] = new OpCode(§7x§,3,42,0);
         §%!0§[§3d§] = new OpCode(§3d§,2,43,0);
         §7!!§[§]_§] = new Register(§]_§,"vertex attribute",0,7,§[h§ | §!!b§);
         §7!!§[§4!]§] = new Register(§4!]§,"vertex constant",1,127,§[h§ | §!!b§);
         §7!!§[§?V§] = new Register(§?V§,"vertex temporary",2,7,§[h§ | §,8§ | §!!b§);
         §7!!§[§^c§] = new Register(§^c§,"vertex output",3,0,§[h§ | §,8§);
         §7!!§[V] = new Register(V,"varying",4,7,§[h§ | §?!t§ | §!!b§ | §,8§);
         §7!!§[§?z§] = new Register(§?z§,"fragment constant",1,27,§?!t§ | §!!b§);
         §7!!§[§if§] = new Register(§if§,"fragment temporary",2,7,§?!t§ | §,8§ | §!!b§);
         §7!!§[§5!B§] = new Register(§5!B§,"texture sampler",5,7,§?!t§ | §!!b§);
         §7!!§[§-!e§] = new Register(§-!e§,"fragment output",3,0,§?!t§ | §,8§);
         §=e§[D2] = new Sampler(D2,§!N§,0);
         §=e§[D3] = new Sampler(D3,§!N§,2);
         §=e§[§7A§] = new Sampler(§7A§,§!N§,1);
         §=e§[§!!3§] = new Sampler(§!!3§,§`!;§,1);
         §=e§[§2!Z§] = new Sampler(§2!Z§,§`!;§,2);
         §=e§[§@!t§] = new Sampler(§@!t§,§`!;§,0);
         §=e§[§!!<§] = new Sampler(§!!<§,§`!;§,0);
         §=e§[§@" §] = new Sampler(§@" §,§>!B§,0);
         §=e§[§?!#§] = new Sampler(§?!#§,§>!B§,1);
         §=e§[§6F§] = new Sampler(§6F§,§^u§,1 << 0);
         §=e§[§%!s§] = new Sampler(§%!s§,§^u§,1 << 1);
         §=e§[§!!e§] = new Sampler(§!!e§,§^u§,1 << 2);
         §=e§[§@!$§] = new Sampler(§@!$§,§6!Z§,1);
         §=e§[§4"§] = new Sampler(§4"§,§6!Z§,1);
         §=e§[§>h§] = new Sampler(§>h§,§6!Z§,0);
      }
      
      public function get error() : String
      {
         return this.§use§;
      }
      
      public function get §1[§() : ByteArray
      {
         return this.§^@§;
      }
      
      public function §"!z§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§^@§ = new ByteArray();
         this.§use§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§use§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§1[§.endian = Endian.LITTLE_ENDIAN;
         this.§1[§.writeByte(160);
         this.§1[§.writeUnsignedInt(1);
         this.§1[§.writeByte(161);
         this.§1[§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§use§ == "")
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
            _loc16_ = §%!0§[_loc15_[0]];
            if(!this.§0!m§)
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
               if(_loc16_.flags & §=";§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§use§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §5!k§)
               {
                  _loc7_++;
                  if(_loc7_ > §?!r§)
                  {
                     this.§use§ = "error: nesting to deep, maximum allowed is " + §?!r§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §#!s§ && !_loc5_)
               {
                  this.§use§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§1[§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §%?§)
               {
                  this.§use§ = "error: too many opcodes. maximum is " + §%?§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§use§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §7!!§[_loc24_[0]];
                  if(!this.§0!m§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§use§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §?!t§))
                     {
                        this.§use§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§use§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §[h§))
                  {
                     this.§use§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§use§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §7;§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §<">§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§use§ = "error: relative can not be destination";
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
                     if((_loc39_ = §7!!§[_loc38_[0]]) == null)
                     {
                        this.§use§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§use§ = "error: bad index register select";
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
                        this.§use§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§1[§.writeShort(_loc27_);
                     this.§1[§.writeByte(_loc28_);
                     this.§1[§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §=e§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §^u§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§1[§.writeShort(_loc27_);
                     this.§1[§.writeByte(int(_loc44_ * 8));
                     this.§1[§.writeByte(0);
                     this.§1[§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§1[§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§1[§.writeShort(_loc27_);
                     this.§1[§.writeByte(_loc34_);
                     this.§1[§.writeByte(_loc28_);
                     this.§1[§.writeByte(_loc25_.emitCode);
                     this.§1[§.writeByte(_loc32_);
                     this.§1[§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§1[§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§use§ != "")
         {
            this.§use§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§1[§.length = 0;
         }
         if(this.§0!m§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§1[§.length;
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
               if((_loc49_ = this.§1[§[_loc48_].toString(16)).length < 2)
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
         return this.§1[§;
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
