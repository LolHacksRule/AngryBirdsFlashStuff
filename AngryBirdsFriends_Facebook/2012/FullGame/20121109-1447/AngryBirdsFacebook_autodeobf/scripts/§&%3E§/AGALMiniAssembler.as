package §&>§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §4O§:Dictionary = new Dictionary();
      
      private static const §3"-§:Dictionary = new Dictionary();
      
      private static const §+!M§:Dictionary = new Dictionary();
      
      private static const §,!f§:int = 4;
      
      private static const §`m§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §,!+§:uint = 12;
      
      private static const §24§:uint = 16;
      
      private static const §<!u§:uint = 20;
      
      private static const §2!<§:uint = 24;
      
      private static const §9""§:uint = 28;
      
      private static const §["!§:uint = 1;
      
      private static const §?,§:uint = 2;
      
      private static const § "§:uint = 32;
      
      private static const §]"-§:uint = 64;
      
      private static const §""F§:uint = 1;
      
      private static const §9"5§:uint = 2;
      
      private static const §<&§:uint = 4;
      
      private static const §!!e§:uint = 8;
      
      private static const §1D§:uint = 16;
      
      private static const §1"2§:uint = 32;
      
      private static const §6![§:uint = 128;
      
      private static const §6i§:String = "mov";
      
      private static const §8!;§:String = "add";
      
      private static const §&!c§:String = "sub";
      
      private static const §@!K§:String = "mul";
      
      private static const §2!u§:String = "div";
      
      private static const §1!!§:String = "rcp";
      
      private static const §>q§:String = "min";
      
      private static const §7!H§:String = "max";
      
      private static const §9s§:String = "frc";
      
      private static const §?R§:String = "sqt";
      
      private static const §-J§:String = "rsq";
      
      private static const § N§:String = "pow";
      
      private static const §,!H§:String = "log";
      
      private static const §2"4§:String = "exp";
      
      private static const §,h§:String = "nrm";
      
      private static const §+M§:String = "sin";
      
      private static const §&"=§:String = "cos";
      
      private static const §]"!§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6!d§:String = "abs";
      
      private static const §""B§:String = "neg";
      
      private static const §2,§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §^u§:String = "ifz";
      
      private static const §!!r§:String = "inz";
      
      private static const §?o§:String = "ife";
      
      private static const §9!z§:String = "ine";
      
      private static const § !t§:String = "ifg";
      
      private static const §?-§:String = "ifl";
      
      private static const §7y§:String = "ieg";
      
      private static const §[!]§:String = "iel";
      
      private static const §;!F§:String = "els";
      
      private static const §8"#§:String = "eif";
      
      private static const §1!v§:String = "rep";
      
      private static const § !M§:String = "erp";
      
      private static const §"!6§:String = "brk";
      
      private static const §;!K§:String = "kil";
      
      private static const §3k§:String = "tex";
      
      private static const §8!X§:String = "sge";
      
      private static const §#"D§:String = "slt";
      
      private static const §@!k§:String = "sgn";
      
      private static const §["D§:String = "va";
      
      private static const §4"'§:String = "vc";
      
      private static const §5q§:String = "vt";
      
      private static const §[!&§:String = "op";
      
      private static const §#"7§:String = "v";
      
      private static const §&§:String = "fc";
      
      private static const §6!r§:String = "ft";
      
      private static const §"!P§:String = "fs";
      
      private static const §"w§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §-p§:String = "cube";
      
      private static const §&U§:String = "mipnearest";
      
      private static const §7e§:String = "miplinear";
      
      private static const § !k§:String = "mipnone";
      
      private static const §3!!§:String = "nomip";
      
      private static const §'"D§:String = "nearest";
      
      private static const §1!8§:String = "linear";
      
      private static const §-j§:String = "centroid";
      
      private static const §9"&§:String = "single";
      
      private static const §7!F§:String = "depth";
      
      private static const §7R§:String = "repeat";
      
      private static const §4i§:String = "wrap";
      
      private static const §"!Y§:String = "clamp";
       
      
      private var §9'§:ByteArray = null;
      
      private var §@!y§:String = "";
      
      private var §?G§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§?G§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §4O§[§6i§] = new OpCode(§6i§,2,0,0);
         §4O§[§8!;§] = new OpCode(§8!;§,3,1,0);
         §4O§[§&!c§] = new OpCode(§&!c§,3,2,0);
         §4O§[§@!K§] = new OpCode(§@!K§,3,3,0);
         §4O§[§2!u§] = new OpCode(§2!u§,3,4,0);
         §4O§[§1!!§] = new OpCode(§1!!§,2,5,0);
         §4O§[§>q§] = new OpCode(§>q§,3,6,0);
         §4O§[§7!H§] = new OpCode(§7!H§,3,7,0);
         §4O§[§9s§] = new OpCode(§9s§,2,8,0);
         §4O§[§?R§] = new OpCode(§?R§,2,9,0);
         §4O§[§-J§] = new OpCode(§-J§,2,10,0);
         §4O§[§ N§] = new OpCode(§ N§,3,11,0);
         §4O§[§,!H§] = new OpCode(§,!H§,2,12,0);
         §4O§[§2"4§] = new OpCode(§2"4§,2,13,0);
         §4O§[§,h§] = new OpCode(§,h§,2,14,0);
         §4O§[§+M§] = new OpCode(§+M§,2,15,0);
         §4O§[§&"=§] = new OpCode(§&"=§,2,16,0);
         §4O§[§]"!§] = new OpCode(§]"!§,3,17,0);
         §4O§[DP3] = new OpCode(DP3,3,18,0);
         §4O§[DP4] = new OpCode(DP4,3,19,0);
         §4O§[§6!d§] = new OpCode(§6!d§,2,20,0);
         §4O§[§""B§] = new OpCode(§""B§,2,21,0);
         §4O§[§2,§] = new OpCode(§2,§,2,22,0);
         §4O§[M33] = new OpCode(M33,3,23,§1D§);
         §4O§[M44] = new OpCode(M44,3,24,§1D§);
         §4O§[M34] = new OpCode(M34,3,25,§1D§);
         §4O§[§^u§] = new OpCode(§^u§,1,26,§6![§ | §9"5§ | §""F§);
         §4O§[§!!r§] = new OpCode(§!!r§,1,27,§6![§ | §9"5§ | §""F§);
         §4O§[§?o§] = new OpCode(§?o§,2,28,§6![§ | §9"5§ | §""F§);
         §4O§[§9!z§] = new OpCode(§9!z§,2,29,§6![§ | §9"5§ | §""F§);
         §4O§[§ !t§] = new OpCode(§ !t§,2,30,§6![§ | §9"5§ | §""F§);
         §4O§[§?-§] = new OpCode(§?-§,2,31,§6![§ | §9"5§ | §""F§);
         §4O§[§7y§] = new OpCode(§7y§,2,32,§6![§ | §9"5§ | §""F§);
         §4O§[§[!]§] = new OpCode(§[!]§,2,33,§6![§ | §9"5§ | §""F§);
         §4O§[§;!F§] = new OpCode(§;!F§,0,34,§6![§ | §9"5§ | §<&§);
         §4O§[§8"#§] = new OpCode(§8"#§,0,35,§6![§ | §<&§);
         §4O§[§1!v§] = new OpCode(§1!v§,1,36,§6![§ | §9"5§ | §""F§);
         §4O§[§ !M§] = new OpCode(§ !M§,0,37,§6![§ | §<&§);
         §4O§[§"!6§] = new OpCode(§"!6§,0,38,§6![§);
         §4O§[§;!K§] = new OpCode(§;!K§,1,39,§6![§ | §1"2§);
         §4O§[§3k§] = new OpCode(§3k§,3,40,§1"2§ | §!!e§);
         §4O§[§8!X§] = new OpCode(§8!X§,3,41,0);
         §4O§[§#"D§] = new OpCode(§#"D§,3,42,0);
         §4O§[§@!k§] = new OpCode(§@!k§,2,43,0);
         §3"-§[§["D§] = new Register(§["D§,"vertex attribute",0,7,§]"-§ | §?,§);
         §3"-§[§4"'§] = new Register(§4"'§,"vertex constant",1,127,§]"-§ | §?,§);
         §3"-§[§5q§] = new Register(§5q§,"vertex temporary",2,7,§]"-§ | §["!§ | §?,§);
         §3"-§[§[!&§] = new Register(§[!&§,"vertex output",3,0,§]"-§ | §["!§);
         §3"-§[§#"7§] = new Register(§#"7§,"varying",4,7,§]"-§ | § "§ | §?,§ | §["!§);
         §3"-§[§&§] = new Register(§&§,"fragment constant",1,27,§ "§ | §?,§);
         §3"-§[§6!r§] = new Register(§6!r§,"fragment temporary",2,7,§ "§ | §["!§ | §?,§);
         §3"-§[§"!P§] = new Register(§"!P§,"texture sampler",5,7,§ "§ | §?,§);
         §3"-§[§"w§] = new Register(§"w§,"fragment output",3,0,§ "§ | §["!§);
         §+!M§[D2] = new Sampler(D2,§,!+§,0);
         §+!M§[D3] = new Sampler(D3,§,!+§,2);
         §+!M§[§-p§] = new Sampler(§-p§,§,!+§,1);
         §+!M§[§&U§] = new Sampler(§&U§,§2!<§,1);
         §+!M§[§7e§] = new Sampler(§7e§,§2!<§,2);
         §+!M§[§ !k§] = new Sampler(§ !k§,§2!<§,0);
         §+!M§[§3!!§] = new Sampler(§3!!§,§2!<§,0);
         §+!M§[§'"D§] = new Sampler(§'"D§,§9""§,0);
         §+!M§[§1!8§] = new Sampler(§1!8§,§9""§,1);
         §+!M§[§-j§] = new Sampler(§-j§,§24§,1 << 0);
         §+!M§[§9"&§] = new Sampler(§9"&§,§24§,1 << 1);
         §+!M§[§7!F§] = new Sampler(§7!F§,§24§,1 << 2);
         §+!M§[§7R§] = new Sampler(§7R§,§<!u§,1);
         §+!M§[§4i§] = new Sampler(§4i§,§<!u§,1);
         §+!M§[§"!Y§] = new Sampler(§"!Y§,§<!u§,0);
      }
      
      public function get error() : String
      {
         return this.§@!y§;
      }
      
      public function get §?"=§() : ByteArray
      {
         return this.§9'§;
      }
      
      public function §1'§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§9'§ = new ByteArray();
         this.§@!y§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§@!y§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§?"=§.endian = Endian.LITTLE_ENDIAN;
         this.§?"=§.writeByte(160);
         this.§?"=§.writeUnsignedInt(1);
         this.§?"=§.writeByte(161);
         this.§?"=§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§@!y§ == "")
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
            _loc16_ = §4O§[_loc15_[0]];
            if(!this.§?G§)
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
               if(_loc16_.flags & §<&§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§@!y§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §9"5§)
               {
                  _loc7_++;
                  if(_loc7_ > §,!f§)
                  {
                     this.§@!y§ = "error: nesting to deep, maximum allowed is " + §,!f§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §1"2§ && !_loc5_)
               {
                  this.§@!y§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§?"=§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §`m§)
               {
                  this.§@!y§ = "error: too many opcodes. maximum is " + §`m§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§@!y§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §3"-§[_loc24_[0]];
                  if(!this.§?G§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§@!y§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & § "§))
                     {
                        this.§@!y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§@!y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §]"-§))
                  {
                     this.§@!y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§@!y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §6![§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §!!e§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§@!y§ = "error: relative can not be destination";
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
                     if((_loc39_ = §3"-§[_loc38_[0]]) == null)
                     {
                        this.§@!y§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§@!y§ = "error: bad index register select";
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
                        this.§@!y§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§?"=§.writeShort(_loc27_);
                     this.§?"=§.writeByte(_loc28_);
                     this.§?"=§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §+!M§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §24§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§?"=§.writeShort(_loc27_);
                     this.§?"=§.writeByte(int(_loc44_ * 8));
                     this.§?"=§.writeByte(0);
                     this.§?"=§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§?"=§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§?"=§.writeShort(_loc27_);
                     this.§?"=§.writeByte(_loc34_);
                     this.§?"=§.writeByte(_loc28_);
                     this.§?"=§.writeByte(_loc25_.emitCode);
                     this.§?"=§.writeByte(_loc32_);
                     this.§?"=§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§?"=§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§@!y§ != "")
         {
            this.§@!y§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§?"=§.length = 0;
         }
         if(this.§?G§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§?"=§.length;
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
               if((_loc49_ = this.§?"=§[_loc48_].toString(16)).length < 2)
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
         return this.§?"=§;
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
