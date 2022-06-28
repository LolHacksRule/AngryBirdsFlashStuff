package §80§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §!!2§:Dictionary = new Dictionary();
      
      private static const §79§:Dictionary = new Dictionary();
      
      private static const §^>§:Dictionary = new Dictionary();
      
      private static const §"y§:int = 4;
      
      private static const §!! §:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §;3§:uint = 12;
      
      private static const §>p§:uint = 16;
      
      private static const §3b§:uint = 20;
      
      private static const §?!C§:uint = 24;
      
      private static const §-u§:uint = 28;
      
      private static const §>!2§:uint = 1;
      
      private static const §=!A§:uint = 2;
      
      private static const §7Y§:uint = 32;
      
      private static const §"5§:uint = 64;
      
      private static const §[!5§:uint = 1;
      
      private static const §2T§:uint = 2;
      
      private static const §]A§:uint = 4;
      
      private static const §-;§:uint = 8;
      
      private static const §@!-§:uint = 16;
      
      private static const §;?§:uint = 32;
      
      private static const §`j§:uint = 128;
      
      private static const §5T§:String = "mov";
      
      private static const §^L§:String = "add";
      
      private static const §#"§:String = "sub";
      
      private static const §?c§:String = "mul";
      
      private static const §4k§:String = "div";
      
      private static const §`_§:String = "rcp";
      
      private static const §"n§:String = "min";
      
      private static const §;o§:String = "max";
      
      private static const include:String = "frc";
      
      private static const §6B§:String = "sqt";
      
      private static const §>;§:String = "rsq";
      
      private static const §6d§:String = "pow";
      
      private static const §&]§:String = "log";
      
      private static const §[o§:String = "exp";
      
      private static const §5+§:String = "nrm";
      
      private static const §"s§:String = "sin";
      
      private static const §;g§:String = "cos";
      
      private static const §^R§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § _§:String = "abs";
      
      private static const §]a§:String = "neg";
      
      private static const §-<§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §^T§:String = "ifz";
      
      private static const §-q§:String = "inz";
      
      private static const §?;§:String = "ife";
      
      private static const §11§:String = "ine";
      
      private static const §^!$§:String = "ifg";
      
      private static const §[!A§:String = "ifl";
      
      private static const §;^§:String = "ieg";
      
      private static const §[+§:String = "iel";
      
      private static const §3!8§:String = "els";
      
      private static const §+M§:String = "eif";
      
      private static const §=X§:String = "rep";
      
      private static const §="§:String = "erp";
      
      private static const §?!@§:String = "brk";
      
      private static const §^[§:String = "kil";
      
      private static const §@E§:String = "tex";
      
      private static const §5!§:String = "sge";
      
      private static const §2!-§:String = "slt";
      
      private static const §1!4§:String = "sgn";
      
      private static const §4!7§:String = "va";
      
      private static const §!B§:String = "vc";
      
      private static const §#?§:String = "vt";
      
      private static const §;!A§:String = "op";
      
      private static const §4?§:String = "v";
      
      private static const §8n§:String = "fc";
      
      private static const §%j§:String = "ft";
      
      private static const §1e§:String = "fs";
      
      private static const §?g§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §%!@§:String = "cube";
      
      private static const §8!-§:String = "mipnearest";
      
      private static const §0!A§:String = "miplinear";
      
      private static const §4E§:String = "mipnone";
      
      private static const §,v§:String = "nomip";
      
      private static const §>T§:String = "nearest";
      
      private static const §'P§:String = "linear";
      
      private static const §6!8§:String = "centroid";
      
      private static const §,?§:String = "single";
      
      private static const §8p§:String = "depth";
      
      private static const §3!%§:String = "repeat";
      
      private static const §&G§:String = "wrap";
      
      private static const §%-§:String = "clamp";
       
      
      private var § y§:ByteArray = null;
      
      private var §0f§:String = "";
      
      private var §%J§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§%J§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §!!2§[§5T§] = new OpCode(§5T§,2,0,0);
         §!!2§[§^L§] = new OpCode(§^L§,3,1,0);
         §!!2§[§#"§] = new OpCode(§#"§,3,2,0);
         §!!2§[§?c§] = new OpCode(§?c§,3,3,0);
         §!!2§[§4k§] = new OpCode(§4k§,3,4,0);
         §!!2§[§`_§] = new OpCode(§`_§,2,5,0);
         §!!2§[§"n§] = new OpCode(§"n§,3,6,0);
         §!!2§[§;o§] = new OpCode(§;o§,3,7,0);
         §!!2§[include] = new OpCode(include,2,8,0);
         §!!2§[§6B§] = new OpCode(§6B§,2,9,0);
         §!!2§[§>;§] = new OpCode(§>;§,2,10,0);
         §!!2§[§6d§] = new OpCode(§6d§,3,11,0);
         §!!2§[§&]§] = new OpCode(§&]§,2,12,0);
         §!!2§[§[o§] = new OpCode(§[o§,2,13,0);
         §!!2§[§5+§] = new OpCode(§5+§,2,14,0);
         §!!2§[§"s§] = new OpCode(§"s§,2,15,0);
         §!!2§[§;g§] = new OpCode(§;g§,2,16,0);
         §!!2§[§^R§] = new OpCode(§^R§,3,17,0);
         §!!2§[DP3] = new OpCode(DP3,3,18,0);
         §!!2§[DP4] = new OpCode(DP4,3,19,0);
         §!!2§[§ _§] = new OpCode(§ _§,2,20,0);
         §!!2§[§]a§] = new OpCode(§]a§,2,21,0);
         §!!2§[§-<§] = new OpCode(§-<§,2,22,0);
         §!!2§[M33] = new OpCode(M33,3,23,§@!-§);
         §!!2§[M44] = new OpCode(M44,3,24,§@!-§);
         §!!2§[M34] = new OpCode(M34,3,25,§@!-§);
         §!!2§[§^T§] = new OpCode(§^T§,1,26,§`j§ | §2T§ | §[!5§);
         §!!2§[§-q§] = new OpCode(§-q§,1,27,§`j§ | §2T§ | §[!5§);
         §!!2§[§?;§] = new OpCode(§?;§,2,28,§`j§ | §2T§ | §[!5§);
         §!!2§[§11§] = new OpCode(§11§,2,29,§`j§ | §2T§ | §[!5§);
         §!!2§[§^!$§] = new OpCode(§^!$§,2,30,§`j§ | §2T§ | §[!5§);
         §!!2§[§[!A§] = new OpCode(§[!A§,2,31,§`j§ | §2T§ | §[!5§);
         §!!2§[§;^§] = new OpCode(§;^§,2,32,§`j§ | §2T§ | §[!5§);
         §!!2§[§[+§] = new OpCode(§[+§,2,33,§`j§ | §2T§ | §[!5§);
         §!!2§[§3!8§] = new OpCode(§3!8§,0,34,§`j§ | §2T§ | §]A§);
         §!!2§[§+M§] = new OpCode(§+M§,0,35,§`j§ | §]A§);
         §!!2§[§=X§] = new OpCode(§=X§,1,36,§`j§ | §2T§ | §[!5§);
         §!!2§[§="§] = new OpCode(§="§,0,37,§`j§ | §]A§);
         §!!2§[§?!@§] = new OpCode(§?!@§,0,38,§`j§);
         §!!2§[§^[§] = new OpCode(§^[§,1,39,§`j§ | §;?§);
         §!!2§[§@E§] = new OpCode(§@E§,3,40,§;?§ | §-;§);
         §!!2§[§5!§] = new OpCode(§5!§,3,41,0);
         §!!2§[§2!-§] = new OpCode(§2!-§,3,42,0);
         §!!2§[§1!4§] = new OpCode(§1!4§,2,43,0);
         §79§[§4!7§] = new Register(§4!7§,"vertex attribute",0,7,§"5§ | §=!A§);
         §79§[§!B§] = new Register(§!B§,"vertex constant",1,127,§"5§ | §=!A§);
         §79§[§#?§] = new Register(§#?§,"vertex temporary",2,7,§"5§ | §>!2§ | §=!A§);
         §79§[§;!A§] = new Register(§;!A§,"vertex output",3,0,§"5§ | §>!2§);
         §79§[§4?§] = new Register(§4?§,"varying",4,7,§"5§ | §7Y§ | §=!A§ | §>!2§);
         §79§[§8n§] = new Register(§8n§,"fragment constant",1,27,§7Y§ | §=!A§);
         §79§[§%j§] = new Register(§%j§,"fragment temporary",2,7,§7Y§ | §>!2§ | §=!A§);
         §79§[§1e§] = new Register(§1e§,"texture sampler",5,7,§7Y§ | §=!A§);
         §79§[§?g§] = new Register(§?g§,"fragment output",3,0,§7Y§ | §>!2§);
         §^>§[D2] = new Sampler(D2,§;3§,0);
         §^>§[D3] = new Sampler(D3,§;3§,2);
         §^>§[§%!@§] = new Sampler(§%!@§,§;3§,1);
         §^>§[§8!-§] = new Sampler(§8!-§,§?!C§,1);
         §^>§[§0!A§] = new Sampler(§0!A§,§?!C§,2);
         §^>§[§4E§] = new Sampler(§4E§,§?!C§,0);
         §^>§[§,v§] = new Sampler(§,v§,§?!C§,0);
         §^>§[§>T§] = new Sampler(§>T§,§-u§,0);
         §^>§[§'P§] = new Sampler(§'P§,§-u§,1);
         §^>§[§6!8§] = new Sampler(§6!8§,§>p§,1 << 0);
         §^>§[§,?§] = new Sampler(§,?§,§>p§,1 << 1);
         §^>§[§8p§] = new Sampler(§8p§,§>p§,1 << 2);
         §^>§[§3!%§] = new Sampler(§3!%§,§3b§,1);
         §^>§[§&G§] = new Sampler(§&G§,§3b§,1);
         §^>§[§%-§] = new Sampler(§%-§,§3b§,0);
      }
      
      public function get error() : String
      {
         return this.§0f§;
      }
      
      public function get §+V§() : ByteArray
      {
         return this.§ y§;
      }
      
      public function §=+§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§ y§ = new ByteArray();
         this.§0f§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§0f§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§+V§.endian = Endian.LITTLE_ENDIAN;
         this.§+V§.writeByte(160);
         this.§+V§.writeUnsignedInt(1);
         this.§+V§.writeByte(161);
         this.§+V§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§0f§ == "")
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
            _loc16_ = §!!2§[_loc15_[0]];
            if(!this.§%J§)
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
               if(_loc16_.flags & §]A§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§0f§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §2T§)
               {
                  _loc7_++;
                  if(_loc7_ > §"y§)
                  {
                     this.§0f§ = "error: nesting to deep, maximum allowed is " + §"y§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §;?§ && !_loc5_)
               {
                  this.§0f§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§+V§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §!! §)
               {
                  this.§0f§ = "error: too many opcodes. maximum is " + §!! § + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§0f§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §79§[_loc24_[0]];
                  if(!this.§%J§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§0f§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §7Y§))
                     {
                        this.§0f§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§0f§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §"5§))
                  {
                     this.§0f§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§0f§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §`j§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §-;§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§0f§ = "error: relative can not be destination";
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
                     if((_loc39_ = §79§[_loc38_[0]]) == null)
                     {
                        this.§0f§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§0f§ = "error: bad index register select";
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
                        this.§0f§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§+V§.writeShort(_loc27_);
                     this.§+V§.writeByte(_loc28_);
                     this.§+V§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §^>§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §>p§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§+V§.writeShort(_loc27_);
                     this.§+V§.writeByte(int(_loc44_ * 8));
                     this.§+V§.writeByte(0);
                     this.§+V§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§+V§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§+V§.writeShort(_loc27_);
                     this.§+V§.writeByte(_loc34_);
                     this.§+V§.writeByte(_loc28_);
                     this.§+V§.writeByte(_loc25_.emitCode);
                     this.§+V§.writeByte(_loc32_);
                     this.§+V§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§+V§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§0f§ != "")
         {
            this.§0f§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§+V§.length = 0;
         }
         if(this.§%J§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§+V§.length;
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
               if((_loc49_ = this.§+V§[_loc48_].toString(16)).length < 2)
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
         return this.§+V§;
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
