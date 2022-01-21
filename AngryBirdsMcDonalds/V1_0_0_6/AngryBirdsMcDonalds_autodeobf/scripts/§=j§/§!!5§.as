package §=j§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §!!5§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §,!j§:Dictionary = new Dictionary();
      
      private static const §+!§:Dictionary = new Dictionary();
      
      private static const §-!E§:Dictionary = new Dictionary();
      
      private static const §@[§:int = 4;
      
      private static const §=!b§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!!3§:uint = 12;
      
      private static const §^O§:uint = 16;
      
      private static const §7!6§:uint = 20;
      
      private static const §"!e§:uint = 24;
      
      private static const §[M§:uint = 28;
      
      private static const §+9§:uint = 1;
      
      private static const §[g§:uint = 2;
      
      private static const §"!R§:uint = 32;
      
      private static const §9!J§:uint = 64;
      
      private static const §<o§:uint = 1;
      
      private static const §+!m§:uint = 2;
      
      private static const §9!g§:uint = 4;
      
      private static const §0F§:uint = 8;
      
      private static const §5D§:uint = 16;
      
      private static const §;!'§:uint = 32;
      
      private static const §20§:uint = 128;
      
      private static const §9!,§:String = "mov";
      
      private static const §7e§:String = "add";
      
      private static const §`8§:String = "sub";
      
      private static const § !-§:String = "mul";
      
      private static const §6r§:String = "div";
      
      private static const §8G§:String = "rcp";
      
      private static const §>!;§:String = "min";
      
      private static const §@!Q§:String = "max";
      
      private static const §!'§:String = "frc";
      
      private static const §`m§:String = "sqt";
      
      private static const §[!'§:String = "rsq";
      
      private static const §2!l§:String = "pow";
      
      private static const §!n§:String = "log";
      
      private static const §6L§:String = "exp";
      
      private static const §]!C§:String = "nrm";
      
      private static const §;!o§:String = "sin";
      
      private static const §-!9§:String = "cos";
      
      private static const §[!m§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §8!W§:String = "abs";
      
      private static const §6W§:String = "neg";
      
      private static const §`!?§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §]p§:String = "ifz";
      
      private static const §5!H§:String = "inz";
      
      private static const §@!>§:String = "ife";
      
      private static const §,]§:String = "ine";
      
      private static const §&W§:String = "ifg";
      
      private static const §"[§:String = "ifl";
      
      private static const §=m§:String = "ieg";
      
      private static const §%?§:String = "iel";
      
      private static const §-R§:String = "els";
      
      private static const §!@§:String = "eif";
      
      private static const §2!M§:String = "rep";
      
      private static const §3!P§:String = "erp";
      
      private static const §!!S§:String = "brk";
      
      private static const §8N§:String = "kil";
      
      private static const §#!0§:String = "tex";
      
      private static const §=1§:String = "sge";
      
      private static const §52§:String = "slt";
      
      private static const §+!F§:String = "sgn";
      
      private static const §^A§:String = "va";
      
      private static const §!Q§:String = "vc";
      
      private static const §[!A§:String = "vt";
      
      private static const § %§:String = "op";
      
      private static const § [§:String = "v";
      
      private static const §0_§:String = "fc";
      
      private static const §%!H§:String = "ft";
      
      private static const §'!?§:String = "fs";
      
      private static const §05§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §]!-§:String = "cube";
      
      private static const each:String = "mipnearest";
      
      private static const §;Q§:String = "miplinear";
      
      private static const §'5§:String = "mipnone";
      
      private static const §4m§:String = "nomip";
      
      private static const §4K§:String = "nearest";
      
      private static const §7c§:String = "linear";
      
      private static const §%!X§:String = "centroid";
      
      private static const §#<§:String = "single";
      
      private static const §!!o§:String = "depth";
      
      private static const §"!G§:String = "repeat";
      
      private static const §7!§:String = "wrap";
      
      private static const §5!1§:String = "clamp";
       
      
      private var §7u§:ByteArray = null;
      
      private var §"B§:String = "";
      
      private var §8!l§:Boolean = false;
      
      public function §!!5§(param1:Boolean = false)
      {
         super();
         this.§8!l§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §,!j§[§9!,§] = new OpCode(§9!,§,2,0,0);
         §,!j§[§7e§] = new OpCode(§7e§,3,1,0);
         §,!j§[§`8§] = new OpCode(§`8§,3,2,0);
         §,!j§[§ !-§] = new OpCode(§ !-§,3,3,0);
         §,!j§[§6r§] = new OpCode(§6r§,3,4,0);
         §,!j§[§8G§] = new OpCode(§8G§,2,5,0);
         §,!j§[§>!;§] = new OpCode(§>!;§,3,6,0);
         §,!j§[§@!Q§] = new OpCode(§@!Q§,3,7,0);
         §,!j§[§!'§] = new OpCode(§!'§,2,8,0);
         §,!j§[§`m§] = new OpCode(§`m§,2,9,0);
         §,!j§[§[!'§] = new OpCode(§[!'§,2,10,0);
         §,!j§[§2!l§] = new OpCode(§2!l§,3,11,0);
         §,!j§[§!n§] = new OpCode(§!n§,2,12,0);
         §,!j§[§6L§] = new OpCode(§6L§,2,13,0);
         §,!j§[§]!C§] = new OpCode(§]!C§,2,14,0);
         §,!j§[§;!o§] = new OpCode(§;!o§,2,15,0);
         §,!j§[§-!9§] = new OpCode(§-!9§,2,16,0);
         §,!j§[§[!m§] = new OpCode(§[!m§,3,17,0);
         §,!j§[DP3] = new OpCode(DP3,3,18,0);
         §,!j§[DP4] = new OpCode(DP4,3,19,0);
         §,!j§[§8!W§] = new OpCode(§8!W§,2,20,0);
         §,!j§[§6W§] = new OpCode(§6W§,2,21,0);
         §,!j§[§`!?§] = new OpCode(§`!?§,2,22,0);
         §,!j§[M33] = new OpCode(M33,3,23,§5D§);
         §,!j§[M44] = new OpCode(M44,3,24,§5D§);
         §,!j§[M34] = new OpCode(M34,3,25,§5D§);
         §,!j§[§]p§] = new OpCode(§]p§,1,26,§20§ | §+!m§ | §<o§);
         §,!j§[§5!H§] = new OpCode(§5!H§,1,27,§20§ | §+!m§ | §<o§);
         §,!j§[§@!>§] = new OpCode(§@!>§,2,28,§20§ | §+!m§ | §<o§);
         §,!j§[§,]§] = new OpCode(§,]§,2,29,§20§ | §+!m§ | §<o§);
         §,!j§[§&W§] = new OpCode(§&W§,2,30,§20§ | §+!m§ | §<o§);
         §,!j§[§"[§] = new OpCode(§"[§,2,31,§20§ | §+!m§ | §<o§);
         §,!j§[§=m§] = new OpCode(§=m§,2,32,§20§ | §+!m§ | §<o§);
         §,!j§[§%?§] = new OpCode(§%?§,2,33,§20§ | §+!m§ | §<o§);
         §,!j§[§-R§] = new OpCode(§-R§,0,34,§20§ | §+!m§ | §9!g§);
         §,!j§[§!@§] = new OpCode(§!@§,0,35,§20§ | §9!g§);
         §,!j§[§2!M§] = new OpCode(§2!M§,1,36,§20§ | §+!m§ | §<o§);
         §,!j§[§3!P§] = new OpCode(§3!P§,0,37,§20§ | §9!g§);
         §,!j§[§!!S§] = new OpCode(§!!S§,0,38,§20§);
         §,!j§[§8N§] = new OpCode(§8N§,1,39,§20§ | §;!'§);
         §,!j§[§#!0§] = new OpCode(§#!0§,3,40,§;!'§ | §0F§);
         §,!j§[§=1§] = new OpCode(§=1§,3,41,0);
         §,!j§[§52§] = new OpCode(§52§,3,42,0);
         §,!j§[§+!F§] = new OpCode(§+!F§,2,43,0);
         §+!§[§^A§] = new Register(§^A§,"vertex attribute",0,7,§9!J§ | §[g§);
         §+!§[§!Q§] = new Register(§!Q§,"vertex constant",1,127,§9!J§ | §[g§);
         §+!§[§[!A§] = new Register(§[!A§,"vertex temporary",2,7,§9!J§ | §+9§ | §[g§);
         §+!§[§ %§] = new Register(§ %§,"vertex output",3,0,§9!J§ | §+9§);
         §+!§[§ [§] = new Register(§ [§,"varying",4,7,§9!J§ | §"!R§ | §[g§ | §+9§);
         §+!§[§0_§] = new Register(§0_§,"fragment constant",1,27,§"!R§ | §[g§);
         §+!§[§%!H§] = new Register(§%!H§,"fragment temporary",2,7,§"!R§ | §+9§ | §[g§);
         §+!§[§'!?§] = new Register(§'!?§,"texture sampler",5,7,§"!R§ | §[g§);
         §+!§[§05§] = new Register(§05§,"fragment output",3,0,§"!R§ | §+9§);
         §-!E§[D2] = new Sampler(D2,§!!3§,0);
         §-!E§[D3] = new Sampler(D3,§!!3§,2);
         §-!E§[§]!-§] = new Sampler(§]!-§,§!!3§,1);
         §-!E§[each] = new Sampler(each,§"!e§,1);
         §-!E§[§;Q§] = new Sampler(§;Q§,§"!e§,2);
         §-!E§[§'5§] = new Sampler(§'5§,§"!e§,0);
         §-!E§[§4m§] = new Sampler(§4m§,§"!e§,0);
         §-!E§[§4K§] = new Sampler(§4K§,§[M§,0);
         §-!E§[§7c§] = new Sampler(§7c§,§[M§,1);
         §-!E§[§%!X§] = new Sampler(§%!X§,§^O§,1 << 0);
         §-!E§[§#<§] = new Sampler(§#<§,§^O§,1 << 1);
         §-!E§[§!!o§] = new Sampler(§!!o§,§^O§,1 << 2);
         §-!E§[§"!G§] = new Sampler(§"!G§,§7!6§,1);
         §-!E§[§7!§] = new Sampler(§7!§,§7!6§,1);
         §-!E§[§5!1§] = new Sampler(§5!1§,§7!6§,0);
      }
      
      public function get error() : String
      {
         return this.§"B§;
      }
      
      public function get §in§() : ByteArray
      {
         return this.§7u§;
      }
      
      public function §`!!§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§7u§ = new ByteArray();
         this.§"B§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§"B§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§in§.endian = Endian.LITTLE_ENDIAN;
         this.§in§.writeByte(160);
         this.§in§.writeUnsignedInt(1);
         this.§in§.writeByte(161);
         this.§in§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§"B§ == "")
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
            _loc16_ = §,!j§[_loc15_[0]];
            if(!this.§8!l§)
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
               if(_loc16_.flags & §9!g§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§"B§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §+!m§)
               {
                  _loc7_++;
                  if(_loc7_ > §@[§)
                  {
                     this.§"B§ = "error: nesting to deep, maximum allowed is " + §@[§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §;!'§ && !_loc5_)
               {
                  this.§"B§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§in§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §=!b§)
               {
                  this.§"B§ = "error: too many opcodes. maximum is " + §=!b§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§"B§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §+!§[_loc24_[0]];
                  if(!this.§8!l§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§"B§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §"!R§))
                     {
                        this.§"B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§"B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §9!J§))
                  {
                     this.§"B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§"B§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §20§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §0F§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§"B§ = "error: relative can not be destination";
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
                     if((_loc39_ = §+!§[_loc38_[0]]) == null)
                     {
                        this.§"B§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§"B§ = "error: bad index register select";
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
                        this.§"B§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§in§.writeShort(_loc27_);
                     this.§in§.writeByte(_loc28_);
                     this.§in§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §-!E§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §^O§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§in§.writeShort(_loc27_);
                     this.§in§.writeByte(int(_loc44_ * 8));
                     this.§in§.writeByte(0);
                     this.§in§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§in§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§in§.writeShort(_loc27_);
                     this.§in§.writeByte(_loc34_);
                     this.§in§.writeByte(_loc28_);
                     this.§in§.writeByte(_loc25_.emitCode);
                     this.§in§.writeByte(_loc32_);
                     this.§in§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§in§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§"B§ != "")
         {
            this.§"B§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§in§.length = 0;
         }
         if(this.§8!l§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§in§.length;
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
               if((_loc49_ = this.§in§[_loc48_].toString(16)).length < 2)
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
         return this.§in§;
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
