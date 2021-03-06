package §>n§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const § $§:Dictionary = new Dictionary();
      
      private static const §6P§:Dictionary = new Dictionary();
      
      private static const §&&§:Dictionary = new Dictionary();
      
      private static const §]S§:int = 4;
      
      private static const §7!'§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §23§:uint = 12;
      
      private static const §9;§:uint = 16;
      
      private static const §,H§:uint = 20;
      
      private static const §'!H§:uint = 24;
      
      private static const §55§:uint = 28;
      
      private static const §&!0§:uint = 1;
      
      private static const §-f§:uint = 2;
      
      private static const §@W§:uint = 32;
      
      private static const §'L§:uint = 64;
      
      private static const §7T§:uint = 1;
      
      private static const §[x§:uint = 2;
      
      private static const §!^§:uint = 4;
      
      private static const §5Y§:uint = 8;
      
      private static const §2W§:uint = 16;
      
      private static const §0w§:uint = 32;
      
      private static const §-j§:uint = 128;
      
      private static const §4!9§:String = "mov";
      
      private static const §4!F§:String = "add";
      
      private static const §2!C§:String = "sub";
      
      private static const §8B§:String = "mul";
      
      private static const §^!F§:String = "div";
      
      private static const §?!H§:String = "rcp";
      
      private static const §;+§:String = "min";
      
      private static const §"!§:String = "max";
      
      private static const §>!C§:String = "frc";
      
      private static const §^v§:String = "sqt";
      
      private static const §`R§:String = "rsq";
      
      private static const §#y§:String = "pow";
      
      private static const §8;§:String = "log";
      
      private static const §`$§:String = "exp";
      
      private static const §;!3§:String = "nrm";
      
      private static const §"!1§:String = "sin";
      
      private static const §;!F§:String = "cos";
      
      private static const §=!§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §[w§:String = "abs";
      
      private static const §+!6§:String = "neg";
      
      private static const §#B§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §'!7§:String = "ifz";
      
      private static const §5a§:String = "inz";
      
      private static const §<!7§:String = "ife";
      
      private static const §function§:String = "ine";
      
      private static const §=!G§:String = "ifg";
      
      private static const §%G§:String = "ifl";
      
      private static const §?u§:String = "ieg";
      
      private static const §4R§:String = "iel";
      
      private static const §+]§:String = "els";
      
      private static const §try§:String = "eif";
      
      private static const §&!&§:String = "rep";
      
      private static const §-R§:String = "erp";
      
      private static const §>!§:String = "brk";
      
      private static const §"5§:String = "kil";
      
      private static const §=i§:String = "tex";
      
      private static const §6M§:String = "sge";
      
      private static const §&B§:String = "slt";
      
      private static const §6!<§:String = "sgn";
      
      private static const §&4§:String = "va";
      
      private static const §"K§:String = "vc";
      
      private static const §=c§:String = "vt";
      
      private static const § !!§:String = "op";
      
      private static const §=A§:String = "v";
      
      private static const §9j§:String = "fc";
      
      private static const §;Z§:String = "ft";
      
      private static const §>>§:String = "fs";
      
      private static const §@!6§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §"G§:String = "cube";
      
      private static const §4+§:String = "mipnearest";
      
      private static const §12§:String = "miplinear";
      
      private static const §;!K§:String = "mipnone";
      
      private static const §+'§:String = "nomip";
      
      private static const §>!=§:String = "nearest";
      
      private static const §-!§:String = "linear";
      
      private static const §@7§:String = "centroid";
      
      private static const §^!D§:String = "single";
      
      private static const §]V§:String = "depth";
      
      private static const §<m§:String = "repeat";
      
      private static const §&!-§:String = "wrap";
      
      private static const §#C§:String = "clamp";
       
      
      private var §<!-§:ByteArray = null;
      
      private var §4"§:String = "";
      
      private var §5'§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§5'§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         § $§[§4!9§] = new OpCode(§4!9§,2,0,0);
         § $§[§4!F§] = new OpCode(§4!F§,3,1,0);
         § $§[§2!C§] = new OpCode(§2!C§,3,2,0);
         § $§[§8B§] = new OpCode(§8B§,3,3,0);
         § $§[§^!F§] = new OpCode(§^!F§,3,4,0);
         § $§[§?!H§] = new OpCode(§?!H§,2,5,0);
         § $§[§;+§] = new OpCode(§;+§,3,6,0);
         § $§[§"!§] = new OpCode(§"!§,3,7,0);
         § $§[§>!C§] = new OpCode(§>!C§,2,8,0);
         § $§[§^v§] = new OpCode(§^v§,2,9,0);
         § $§[§`R§] = new OpCode(§`R§,2,10,0);
         § $§[§#y§] = new OpCode(§#y§,3,11,0);
         § $§[§8;§] = new OpCode(§8;§,2,12,0);
         § $§[§`$§] = new OpCode(§`$§,2,13,0);
         § $§[§;!3§] = new OpCode(§;!3§,2,14,0);
         § $§[§"!1§] = new OpCode(§"!1§,2,15,0);
         § $§[§;!F§] = new OpCode(§;!F§,2,16,0);
         § $§[§=!§] = new OpCode(§=!§,3,17,0);
         § $§[DP3] = new OpCode(DP3,3,18,0);
         § $§[DP4] = new OpCode(DP4,3,19,0);
         § $§[§[w§] = new OpCode(§[w§,2,20,0);
         § $§[§+!6§] = new OpCode(§+!6§,2,21,0);
         § $§[§#B§] = new OpCode(§#B§,2,22,0);
         § $§[M33] = new OpCode(M33,3,23,§2W§);
         § $§[M44] = new OpCode(M44,3,24,§2W§);
         § $§[M34] = new OpCode(M34,3,25,§2W§);
         § $§[§'!7§] = new OpCode(§'!7§,1,26,§-j§ | §[x§ | §7T§);
         § $§[§5a§] = new OpCode(§5a§,1,27,§-j§ | §[x§ | §7T§);
         § $§[§<!7§] = new OpCode(§<!7§,2,28,§-j§ | §[x§ | §7T§);
         § $§[§function§] = new OpCode(§function§,2,29,§-j§ | §[x§ | §7T§);
         § $§[§=!G§] = new OpCode(§=!G§,2,30,§-j§ | §[x§ | §7T§);
         § $§[§%G§] = new OpCode(§%G§,2,31,§-j§ | §[x§ | §7T§);
         § $§[§?u§] = new OpCode(§?u§,2,32,§-j§ | §[x§ | §7T§);
         § $§[§4R§] = new OpCode(§4R§,2,33,§-j§ | §[x§ | §7T§);
         § $§[§+]§] = new OpCode(§+]§,0,34,§-j§ | §[x§ | §!^§);
         § $§[§try§] = new OpCode(§try§,0,35,§-j§ | §!^§);
         § $§[§&!&§] = new OpCode(§&!&§,1,36,§-j§ | §[x§ | §7T§);
         § $§[§-R§] = new OpCode(§-R§,0,37,§-j§ | §!^§);
         § $§[§>!§] = new OpCode(§>!§,0,38,§-j§);
         § $§[§"5§] = new OpCode(§"5§,1,39,§-j§ | §0w§);
         § $§[§=i§] = new OpCode(§=i§,3,40,§0w§ | §5Y§);
         § $§[§6M§] = new OpCode(§6M§,3,41,0);
         § $§[§&B§] = new OpCode(§&B§,3,42,0);
         § $§[§6!<§] = new OpCode(§6!<§,2,43,0);
         §6P§[§&4§] = new Register(§&4§,"vertex attribute",0,7,§'L§ | §-f§);
         §6P§[§"K§] = new Register(§"K§,"vertex constant",1,127,§'L§ | §-f§);
         §6P§[§=c§] = new Register(§=c§,"vertex temporary",2,7,§'L§ | §&!0§ | §-f§);
         §6P§[§ !!§] = new Register(§ !!§,"vertex output",3,0,§'L§ | §&!0§);
         §6P§[§=A§] = new Register(§=A§,"varying",4,7,§'L§ | §@W§ | §-f§ | §&!0§);
         §6P§[§9j§] = new Register(§9j§,"fragment constant",1,27,§@W§ | §-f§);
         §6P§[§;Z§] = new Register(§;Z§,"fragment temporary",2,7,§@W§ | §&!0§ | §-f§);
         §6P§[§>>§] = new Register(§>>§,"texture sampler",5,7,§@W§ | §-f§);
         §6P§[§@!6§] = new Register(§@!6§,"fragment output",3,0,§@W§ | §&!0§);
         §&&§[D2] = new Sampler(D2,§23§,0);
         §&&§[D3] = new Sampler(D3,§23§,2);
         §&&§[§"G§] = new Sampler(§"G§,§23§,1);
         §&&§[§4+§] = new Sampler(§4+§,§'!H§,1);
         §&&§[§12§] = new Sampler(§12§,§'!H§,2);
         §&&§[§;!K§] = new Sampler(§;!K§,§'!H§,0);
         §&&§[§+'§] = new Sampler(§+'§,§'!H§,0);
         §&&§[§>!=§] = new Sampler(§>!=§,§55§,0);
         §&&§[§-!§] = new Sampler(§-!§,§55§,1);
         §&&§[§@7§] = new Sampler(§@7§,§9;§,1 << 0);
         §&&§[§^!D§] = new Sampler(§^!D§,§9;§,1 << 1);
         §&&§[§]V§] = new Sampler(§]V§,§9;§,1 << 2);
         §&&§[§<m§] = new Sampler(§<m§,§,H§,1);
         §&&§[§&!-§] = new Sampler(§&!-§,§,H§,1);
         §&&§[§#C§] = new Sampler(§#C§,§,H§,0);
      }
      
      public function get error() : String
      {
         return this.§4"§;
      }
      
      public function get §<v§() : ByteArray
      {
         return this.§<!-§;
      }
      
      public function §>H§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§<!-§ = new ByteArray();
         this.§4"§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§4"§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§<v§.endian = Endian.LITTLE_ENDIAN;
         this.§<v§.writeByte(160);
         this.§<v§.writeUnsignedInt(1);
         this.§<v§.writeByte(161);
         this.§<v§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§4"§ == "")
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
            _loc16_ = § $§[_loc15_[0]];
            if(!this.§5'§)
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
               if(_loc16_.flags & §!^§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§4"§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §[x§)
               {
                  _loc7_++;
                  if(_loc7_ > §]S§)
                  {
                     this.§4"§ = "error: nesting to deep, maximum allowed is " + §]S§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §0w§ && !_loc5_)
               {
                  this.§4"§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§<v§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §7!'§)
               {
                  this.§4"§ = "error: too many opcodes. maximum is " + §7!'§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§4"§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §6P§[_loc24_[0]];
                  if(!this.§5'§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§4"§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §@W§))
                     {
                        this.§4"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§4"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §'L§))
                  {
                     this.§4"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§4"§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §-j§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §5Y§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§4"§ = "error: relative can not be destination";
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
                     if((_loc39_ = §6P§[_loc38_[0]]) == null)
                     {
                        this.§4"§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§4"§ = "error: bad index register select";
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
                        this.§4"§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§<v§.writeShort(_loc27_);
                     this.§<v§.writeByte(_loc28_);
                     this.§<v§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §&&§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §9;§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§<v§.writeShort(_loc27_);
                     this.§<v§.writeByte(int(_loc44_ * 8));
                     this.§<v§.writeByte(0);
                     this.§<v§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§<v§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§<v§.writeShort(_loc27_);
                     this.§<v§.writeByte(_loc34_);
                     this.§<v§.writeByte(_loc28_);
                     this.§<v§.writeByte(_loc25_.emitCode);
                     this.§<v§.writeByte(_loc32_);
                     this.§<v§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§<v§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§4"§ != "")
         {
            this.§4"§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§<v§.length = 0;
         }
         if(this.§5'§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§<v§.length;
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
               if((_loc49_ = this.§<v§[_loc48_].toString(16)).length < 2)
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
         return this.§<v§;
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
