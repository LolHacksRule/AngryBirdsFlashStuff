package §7w§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §!,§:Dictionary = new Dictionary();
      
      private static const §;+§:Dictionary = new Dictionary();
      
      private static const §@!Q§:Dictionary = new Dictionary();
      
      private static const §9c§:int = 4;
      
      private static const §7d§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §-!8§:uint = 12;
      
      private static const §41§:uint = 16;
      
      private static const §17§:uint = 20;
      
      private static const §^p§:uint = 24;
      
      private static const §+!A§:uint = 28;
      
      private static const §3Q§:uint = 1;
      
      private static const §,D§:uint = 2;
      
      private static const § p§:uint = 32;
      
      private static const §&7§:uint = 64;
      
      private static const §,! §:uint = 1;
      
      private static const §+!8§:uint = 2;
      
      private static const §@q§:uint = 4;
      
      private static const §+w§:uint = 8;
      
      private static const § E§:uint = 16;
      
      private static const §+U§:uint = 32;
      
      private static const §?;§:uint = 128;
      
      private static const §@!B§:String = "mov";
      
      private static const § w§:String = "add";
      
      private static const §%d§:String = "sub";
      
      private static const §>?§:String = "mul";
      
      private static const § !E§:String = "div";
      
      private static const §'!8§:String = "rcp";
      
      private static const §=!G§:String = "min";
      
      private static const §"B§:String = "max";
      
      private static const §!t§:String = "frc";
      
      private static const §7t§:String = "sqt";
      
      private static const §@!"§:String = "rsq";
      
      private static const §?!H§:String = "pow";
      
      private static const §`3§:String = "log";
      
      private static const §[g§:String = "exp";
      
      private static const §"!@§:String = "nrm";
      
      private static const §!§:String = "sin";
      
      private static const §]!'§:String = "cos";
      
      private static const §%e§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §!!6§:String = "abs";
      
      private static const §86§:String = "neg";
      
      private static const §[P§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §[?§:String = "ifz";
      
      private static const §"C§:String = "inz";
      
      private static const §#t§:String = "ife";
      
      private static const §`N§:String = "ine";
      
      private static const §>S§:String = "ifg";
      
      private static const §0o§:String = "ifl";
      
      private static const §`g§:String = "ieg";
      
      private static const §0§:String = "iel";
      
      private static const §]x§:String = "els";
      
      private static const §9!8§:String = "eif";
      
      private static const §?@§:String = "rep";
      
      private static const §8h§:String = "erp";
      
      private static const §3Z§:String = "brk";
      
      private static const §?!Q§:String = "kil";
      
      private static const §>j§:String = "tex";
      
      private static const §#[§:String = "sge";
      
      private static const §^q§:String = "slt";
      
      private static const §;s§:String = "sgn";
      
      private static const §&6§:String = "va";
      
      private static const §try§:String = "vc";
      
      private static const §]E§:String = "vt";
      
      private static const §^8§:String = "op";
      
      private static const §-H§:String = "v";
      
      private static const §3S§:String = "fc";
      
      private static const §>E§:String = "ft";
      
      private static const §3J§:String = "fs";
      
      private static const §-!J§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §3u§:String = "cube";
      
      private static const §+>§:String = "mipnearest";
      
      private static const §=!K§:String = "miplinear";
      
      private static const §"!K§:String = "mipnone";
      
      private static const §-L§:String = "nomip";
      
      private static const §5,§:String = "nearest";
      
      private static const §<4§:String = "linear";
      
      private static const §58§:String = "centroid";
      
      private static const §0W§:String = "single";
      
      private static const §'0§:String = "depth";
      
      private static const §1!G§:String = "repeat";
      
      private static const §3!$§:String = "wrap";
      
      private static const §"6§:String = "clamp";
       
      
      private var §^!L§:ByteArray = null;
      
      private var §3!0§:String = "";
      
      private var §1§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§1§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §!,§[§@!B§] = new OpCode(§@!B§,2,0,0);
         §!,§[§ w§] = new OpCode(§ w§,3,1,0);
         §!,§[§%d§] = new OpCode(§%d§,3,2,0);
         §!,§[§>?§] = new OpCode(§>?§,3,3,0);
         §!,§[§ !E§] = new OpCode(§ !E§,3,4,0);
         §!,§[§'!8§] = new OpCode(§'!8§,2,5,0);
         §!,§[§=!G§] = new OpCode(§=!G§,3,6,0);
         §!,§[§"B§] = new OpCode(§"B§,3,7,0);
         §!,§[§!t§] = new OpCode(§!t§,2,8,0);
         §!,§[§7t§] = new OpCode(§7t§,2,9,0);
         §!,§[§@!"§] = new OpCode(§@!"§,2,10,0);
         §!,§[§?!H§] = new OpCode(§?!H§,3,11,0);
         §!,§[§`3§] = new OpCode(§`3§,2,12,0);
         §!,§[§[g§] = new OpCode(§[g§,2,13,0);
         §!,§[§"!@§] = new OpCode(§"!@§,2,14,0);
         §!,§[§!§] = new OpCode(§!§,2,15,0);
         §!,§[§]!'§] = new OpCode(§]!'§,2,16,0);
         §!,§[§%e§] = new OpCode(§%e§,3,17,0);
         §!,§[DP3] = new OpCode(DP3,3,18,0);
         §!,§[DP4] = new OpCode(DP4,3,19,0);
         §!,§[§!!6§] = new OpCode(§!!6§,2,20,0);
         §!,§[§86§] = new OpCode(§86§,2,21,0);
         §!,§[§[P§] = new OpCode(§[P§,2,22,0);
         §!,§[M33] = new OpCode(M33,3,23,§ E§);
         §!,§[M44] = new OpCode(M44,3,24,§ E§);
         §!,§[M34] = new OpCode(M34,3,25,§ E§);
         §!,§[§[?§] = new OpCode(§[?§,1,26,§?;§ | §+!8§ | §,! §);
         §!,§[§"C§] = new OpCode(§"C§,1,27,§?;§ | §+!8§ | §,! §);
         §!,§[§#t§] = new OpCode(§#t§,2,28,§?;§ | §+!8§ | §,! §);
         §!,§[§`N§] = new OpCode(§`N§,2,29,§?;§ | §+!8§ | §,! §);
         §!,§[§>S§] = new OpCode(§>S§,2,30,§?;§ | §+!8§ | §,! §);
         §!,§[§0o§] = new OpCode(§0o§,2,31,§?;§ | §+!8§ | §,! §);
         §!,§[§`g§] = new OpCode(§`g§,2,32,§?;§ | §+!8§ | §,! §);
         §!,§[§0§] = new OpCode(§0§,2,33,§?;§ | §+!8§ | §,! §);
         §!,§[§]x§] = new OpCode(§]x§,0,34,§?;§ | §+!8§ | §@q§);
         §!,§[§9!8§] = new OpCode(§9!8§,0,35,§?;§ | §@q§);
         §!,§[§?@§] = new OpCode(§?@§,1,36,§?;§ | §+!8§ | §,! §);
         §!,§[§8h§] = new OpCode(§8h§,0,37,§?;§ | §@q§);
         §!,§[§3Z§] = new OpCode(§3Z§,0,38,§?;§);
         §!,§[§?!Q§] = new OpCode(§?!Q§,1,39,§?;§ | §+U§);
         §!,§[§>j§] = new OpCode(§>j§,3,40,§+U§ | §+w§);
         §!,§[§#[§] = new OpCode(§#[§,3,41,0);
         §!,§[§^q§] = new OpCode(§^q§,3,42,0);
         §!,§[§;s§] = new OpCode(§;s§,2,43,0);
         §;+§[§&6§] = new Register(§&6§,"vertex attribute",0,7,§&7§ | §,D§);
         §;+§[§try§] = new Register(§try§,"vertex constant",1,127,§&7§ | §,D§);
         §;+§[§]E§] = new Register(§]E§,"vertex temporary",2,7,§&7§ | §3Q§ | §,D§);
         §;+§[§^8§] = new Register(§^8§,"vertex output",3,0,§&7§ | §3Q§);
         §;+§[§-H§] = new Register(§-H§,"varying",4,7,§&7§ | § p§ | §,D§ | §3Q§);
         §;+§[§3S§] = new Register(§3S§,"fragment constant",1,27,§ p§ | §,D§);
         §;+§[§>E§] = new Register(§>E§,"fragment temporary",2,7,§ p§ | §3Q§ | §,D§);
         §;+§[§3J§] = new Register(§3J§,"texture sampler",5,7,§ p§ | §,D§);
         §;+§[§-!J§] = new Register(§-!J§,"fragment output",3,0,§ p§ | §3Q§);
         §@!Q§[D2] = new Sampler(D2,§-!8§,0);
         §@!Q§[D3] = new Sampler(D3,§-!8§,2);
         §@!Q§[§3u§] = new Sampler(§3u§,§-!8§,1);
         §@!Q§[§+>§] = new Sampler(§+>§,§^p§,1);
         §@!Q§[§=!K§] = new Sampler(§=!K§,§^p§,2);
         §@!Q§[§"!K§] = new Sampler(§"!K§,§^p§,0);
         §@!Q§[§-L§] = new Sampler(§-L§,§^p§,0);
         §@!Q§[§5,§] = new Sampler(§5,§,§+!A§,0);
         §@!Q§[§<4§] = new Sampler(§<4§,§+!A§,1);
         §@!Q§[§58§] = new Sampler(§58§,§41§,1 << 0);
         §@!Q§[§0W§] = new Sampler(§0W§,§41§,1 << 1);
         §@!Q§[§'0§] = new Sampler(§'0§,§41§,1 << 2);
         §@!Q§[§1!G§] = new Sampler(§1!G§,§17§,1);
         §@!Q§[§3!$§] = new Sampler(§3!$§,§17§,1);
         §@!Q§[§"6§] = new Sampler(§"6§,§17§,0);
      }
      
      public function get error() : String
      {
         return this.§3!0§;
      }
      
      public function get §+!5§() : ByteArray
      {
         return this.§^!L§;
      }
      
      public function §'!C§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§^!L§ = new ByteArray();
         this.§3!0§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§3!0§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§+!5§.endian = Endian.LITTLE_ENDIAN;
         this.§+!5§.writeByte(160);
         this.§+!5§.writeUnsignedInt(1);
         this.§+!5§.writeByte(161);
         this.§+!5§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§3!0§ == "")
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
            _loc16_ = §!,§[_loc15_[0]];
            if(!this.§1§)
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
               if(_loc16_.flags & §@q§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§3!0§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §+!8§)
               {
                  _loc7_++;
                  if(_loc7_ > §9c§)
                  {
                     this.§3!0§ = "error: nesting to deep, maximum allowed is " + §9c§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §+U§ && !_loc5_)
               {
                  this.§3!0§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§+!5§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §7d§)
               {
                  this.§3!0§ = "error: too many opcodes. maximum is " + §7d§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§3!0§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §;+§[_loc24_[0]];
                  if(!this.§1§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§3!0§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & § p§))
                     {
                        this.§3!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§3!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §&7§))
                  {
                     this.§3!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§3!0§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §?;§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §+w§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§3!0§ = "error: relative can not be destination";
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
                     if((_loc39_ = §;+§[_loc38_[0]]) == null)
                     {
                        this.§3!0§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§3!0§ = "error: bad index register select";
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
                        this.§3!0§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§+!5§.writeShort(_loc27_);
                     this.§+!5§.writeByte(_loc28_);
                     this.§+!5§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §@!Q§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §41§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§+!5§.writeShort(_loc27_);
                     this.§+!5§.writeByte(int(_loc44_ * 8));
                     this.§+!5§.writeByte(0);
                     this.§+!5§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§+!5§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§+!5§.writeShort(_loc27_);
                     this.§+!5§.writeByte(_loc34_);
                     this.§+!5§.writeByte(_loc28_);
                     this.§+!5§.writeByte(_loc25_.emitCode);
                     this.§+!5§.writeByte(_loc32_);
                     this.§+!5§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§+!5§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§3!0§ != "")
         {
            this.§3!0§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§+!5§.length = 0;
         }
         if(this.§1§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§+!5§.length;
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
               if((_loc49_ = this.§+!5§[_loc48_].toString(16)).length < 2)
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
         return this.§+!5§;
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
