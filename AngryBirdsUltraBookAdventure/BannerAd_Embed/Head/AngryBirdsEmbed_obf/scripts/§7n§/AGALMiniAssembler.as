package §7n§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §=+§:Dictionary = new Dictionary();
      
      private static const §!!2§:Dictionary = new Dictionary();
      
      private static const §79§:Dictionary = new Dictionary();
      
      private static const §^>§:int = 4;
      
      private static const §"y§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!! §:uint = 12;
      
      private static const §;3§:uint = 16;
      
      private static const §>p§:uint = 20;
      
      private static const §3b§:uint = 24;
      
      private static const §?!C§:uint = 28;
      
      private static const §-u§:uint = 1;
      
      private static const §>!2§:uint = 2;
      
      private static const §=!A§:uint = 32;
      
      private static const §7Y§:uint = 64;
      
      private static const §"5§:uint = 1;
      
      private static const §[!5§:uint = 2;
      
      private static const §2T§:uint = 4;
      
      private static const §]A§:uint = 8;
      
      private static const §-;§:uint = 16;
      
      private static const §@!-§:uint = 32;
      
      private static const §;?§:uint = 128;
      
      private static const §`j§:String = "mov";
      
      private static const §5T§:String = "add";
      
      private static const §^L§:String = "sub";
      
      private static const §#"§:String = "mul";
      
      private static const §?c§:String = "div";
      
      private static const §4k§:String = "rcp";
      
      private static const §`_§:String = "min";
      
      private static const §"n§:String = "max";
      
      private static const §;o§:String = "frc";
      
      private static const include:String = "sqt";
      
      private static const §6B§:String = "rsq";
      
      private static const §>;§:String = "pow";
      
      private static const §6d§:String = "log";
      
      private static const §&]§:String = "exp";
      
      private static const §[o§:String = "nrm";
      
      private static const §5+§:String = "sin";
      
      private static const §"s§:String = "cos";
      
      private static const §;g§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §^R§:String = "abs";
      
      private static const § _§:String = "neg";
      
      private static const §]a§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §-<§:String = "ifz";
      
      private static const §^T§:String = "inz";
      
      private static const §-q§:String = "ife";
      
      private static const §?;§:String = "ine";
      
      private static const §11§:String = "ifg";
      
      private static const §^!$§:String = "ifl";
      
      private static const §[!A§:String = "ieg";
      
      private static const §;^§:String = "iel";
      
      private static const §[+§:String = "els";
      
      private static const §3!8§:String = "eif";
      
      private static const §+M§:String = "rep";
      
      private static const §=X§:String = "erp";
      
      private static const §="§:String = "brk";
      
      private static const §?!@§:String = "kil";
      
      private static const §^[§:String = "tex";
      
      private static const §@E§:String = "sge";
      
      private static const §5!§:String = "slt";
      
      private static const §2!-§:String = "sgn";
      
      private static const §1!4§:String = "va";
      
      private static const §4!7§:String = "vc";
      
      private static const §!B§:String = "vt";
      
      private static const §#?§:String = "op";
      
      private static const §;!A§:String = "v";
      
      private static const §4?§:String = "fc";
      
      private static const §8n§:String = "ft";
      
      private static const §%j§:String = "fs";
      
      private static const §1e§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §?g§:String = "cube";
      
      private static const §%!@§:String = "mipnearest";
      
      private static const §8!-§:String = "miplinear";
      
      private static const §0!A§:String = "mipnone";
      
      private static const §4E§:String = "nomip";
      
      private static const §,v§:String = "nearest";
      
      private static const §>C§:String = "linear";
      
      private static const §>T§:String = "centroid";
      
      private static const §6!8§:String = "single";
      
      private static const §,?§:String = "depth";
      
      private static const §8p§:String = "repeat";
      
      private static const §3!%§:String = "wrap";
      
      private static const §&G§:String = "clamp";
       
      
      private var §80§:ByteArray = null;
      
      private var § y§:String = "";
      
      private var §0f§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§0f§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §=+§[§`j§] = new OpCode(§`j§,2,0,0);
         §=+§[§5T§] = new OpCode(§5T§,3,1,0);
         §=+§[§^L§] = new OpCode(§^L§,3,2,0);
         §=+§[§#"§] = new OpCode(§#"§,3,3,0);
         §=+§[§?c§] = new OpCode(§?c§,3,4,0);
         §=+§[§4k§] = new OpCode(§4k§,2,5,0);
         §=+§[§`_§] = new OpCode(§`_§,3,6,0);
         §=+§[§"n§] = new OpCode(§"n§,3,7,0);
         §=+§[§;o§] = new OpCode(§;o§,2,8,0);
         §=+§[include] = new OpCode(include,2,9,0);
         §=+§[§6B§] = new OpCode(§6B§,2,10,0);
         §=+§[§>;§] = new OpCode(§>;§,3,11,0);
         §=+§[§6d§] = new OpCode(§6d§,2,12,0);
         §=+§[§&]§] = new OpCode(§&]§,2,13,0);
         §=+§[§[o§] = new OpCode(§[o§,2,14,0);
         §=+§[§5+§] = new OpCode(§5+§,2,15,0);
         §=+§[§"s§] = new OpCode(§"s§,2,16,0);
         §=+§[§;g§] = new OpCode(§;g§,3,17,0);
         §=+§[DP3] = new OpCode(DP3,3,18,0);
         §=+§[DP4] = new OpCode(DP4,3,19,0);
         §=+§[§^R§] = new OpCode(§^R§,2,20,0);
         §=+§[§ _§] = new OpCode(§ _§,2,21,0);
         §=+§[§]a§] = new OpCode(§]a§,2,22,0);
         §=+§[M33] = new OpCode(M33,3,23,§-;§);
         §=+§[M44] = new OpCode(M44,3,24,§-;§);
         §=+§[M34] = new OpCode(M34,3,25,§-;§);
         §=+§[§-<§] = new OpCode(§-<§,1,26,§;?§ | §[!5§ | §"5§);
         §=+§[§^T§] = new OpCode(§^T§,1,27,§;?§ | §[!5§ | §"5§);
         §=+§[§-q§] = new OpCode(§-q§,2,28,§;?§ | §[!5§ | §"5§);
         §=+§[§?;§] = new OpCode(§?;§,2,29,§;?§ | §[!5§ | §"5§);
         §=+§[§11§] = new OpCode(§11§,2,30,§;?§ | §[!5§ | §"5§);
         §=+§[§^!$§] = new OpCode(§^!$§,2,31,§;?§ | §[!5§ | §"5§);
         §=+§[§[!A§] = new OpCode(§[!A§,2,32,§;?§ | §[!5§ | §"5§);
         §=+§[§;^§] = new OpCode(§;^§,2,33,§;?§ | §[!5§ | §"5§);
         §=+§[§[+§] = new OpCode(§[+§,0,34,§;?§ | §[!5§ | §2T§);
         §=+§[§3!8§] = new OpCode(§3!8§,0,35,§;?§ | §2T§);
         §=+§[§+M§] = new OpCode(§+M§,1,36,§;?§ | §[!5§ | §"5§);
         §=+§[§=X§] = new OpCode(§=X§,0,37,§;?§ | §2T§);
         §=+§[§="§] = new OpCode(§="§,0,38,§;?§);
         §=+§[§?!@§] = new OpCode(§?!@§,1,39,§;?§ | §@!-§);
         §=+§[§^[§] = new OpCode(§^[§,3,40,§@!-§ | §]A§);
         §=+§[§@E§] = new OpCode(§@E§,3,41,0);
         §=+§[§5!§] = new OpCode(§5!§,3,42,0);
         §=+§[§2!-§] = new OpCode(§2!-§,2,43,0);
         §!!2§[§1!4§] = new Register(§1!4§,"vertex attribute",0,7,§7Y§ | §>!2§);
         §!!2§[§4!7§] = new Register(§4!7§,"vertex constant",1,127,§7Y§ | §>!2§);
         §!!2§[§!B§] = new Register(§!B§,"vertex temporary",2,7,§7Y§ | §-u§ | §>!2§);
         §!!2§[§#?§] = new Register(§#?§,"vertex output",3,0,§7Y§ | §-u§);
         §!!2§[§;!A§] = new Register(§;!A§,"varying",4,7,§7Y§ | §=!A§ | §>!2§ | §-u§);
         §!!2§[§4?§] = new Register(§4?§,"fragment constant",1,27,§=!A§ | §>!2§);
         §!!2§[§8n§] = new Register(§8n§,"fragment temporary",2,7,§=!A§ | §-u§ | §>!2§);
         §!!2§[§%j§] = new Register(§%j§,"texture sampler",5,7,§=!A§ | §>!2§);
         §!!2§[§1e§] = new Register(§1e§,"fragment output",3,0,§=!A§ | §-u§);
         §79§[D2] = new Sampler(D2,§!! §,0);
         §79§[D3] = new Sampler(D3,§!! §,2);
         §79§[§?g§] = new Sampler(§?g§,§!! §,1);
         §79§[§%!@§] = new Sampler(§%!@§,§3b§,1);
         §79§[§8!-§] = new Sampler(§8!-§,§3b§,2);
         §79§[§0!A§] = new Sampler(§0!A§,§3b§,0);
         §79§[§4E§] = new Sampler(§4E§,§3b§,0);
         §79§[§,v§] = new Sampler(§,v§,§?!C§,0);
         §79§[§>C§] = new Sampler(§>C§,§?!C§,1);
         §79§[§>T§] = new Sampler(§>T§,§;3§,1 << 0);
         §79§[§6!8§] = new Sampler(§6!8§,§;3§,1 << 1);
         §79§[§,?§] = new Sampler(§,?§,§;3§,1 << 2);
         §79§[§8p§] = new Sampler(§8p§,§>p§,1);
         §79§[§3!%§] = new Sampler(§3!%§,§>p§,1);
         §79§[§&G§] = new Sampler(§&G§,§>p§,0);
      }
      
      public function get error() : String
      {
         return this.§ y§;
      }
      
      public function get §%J§() : ByteArray
      {
         return this.§80§;
      }
      
      public function §+V§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§80§ = new ByteArray();
         this.§ y§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§ y§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§%J§.endian = Endian.LITTLE_ENDIAN;
         this.§%J§.writeByte(160);
         this.§%J§.writeUnsignedInt(1);
         this.§%J§.writeByte(161);
         this.§%J§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§ y§ == "")
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
            _loc16_ = §=+§[_loc15_[0]];
            if(!this.§0f§)
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
               if(_loc16_.flags & §2T§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§ y§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §[!5§)
               {
                  _loc7_++;
                  if(_loc7_ > §^>§)
                  {
                     this.§ y§ = "error: nesting to deep, maximum allowed is " + §^>§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §@!-§ && !_loc5_)
               {
                  this.§ y§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§%J§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §"y§)
               {
                  this.§ y§ = "error: too many opcodes. maximum is " + §"y§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§ y§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §!!2§[_loc24_[0]];
                  if(!this.§0f§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§ y§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §=!A§))
                     {
                        this.§ y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§ y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §7Y§))
                  {
                     this.§ y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§ y§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §;?§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §]A§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§ y§ = "error: relative can not be destination";
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
                     if((_loc39_ = §!!2§[_loc38_[0]]) == null)
                     {
                        this.§ y§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§ y§ = "error: bad index register select";
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
                        this.§ y§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§%J§.writeShort(_loc27_);
                     this.§%J§.writeByte(_loc28_);
                     this.§%J§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §79§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §;3§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§%J§.writeShort(_loc27_);
                     this.§%J§.writeByte(int(_loc44_ * 8));
                     this.§%J§.writeByte(0);
                     this.§%J§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§%J§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§%J§.writeShort(_loc27_);
                     this.§%J§.writeByte(_loc34_);
                     this.§%J§.writeByte(_loc28_);
                     this.§%J§.writeByte(_loc25_.emitCode);
                     this.§%J§.writeByte(_loc32_);
                     this.§%J§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§%J§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§ y§ != "")
         {
            this.§ y§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§%J§.length = 0;
         }
         if(this.§0f§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§%J§.length;
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
               if((_loc49_ = this.§%J§[_loc48_].toString(16)).length < 2)
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
         return this.§%J§;
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
