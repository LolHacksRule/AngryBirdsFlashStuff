package §=U§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §6!9§:Dictionary = new Dictionary();
      
      private static const §&!7§:Dictionary = new Dictionary();
      
      private static const §#!5§:Dictionary = new Dictionary();
      
      private static const §3U§:int = 4;
      
      private static const §8!&§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §'g§:uint = 12;
      
      private static const §;[§:uint = 16;
      
      private static const §36§:uint = 20;
      
      private static const §%P§:uint = 24;
      
      private static const §3u§:uint = 28;
      
      private static const §0t§:uint = 1;
      
      private static const §`?§:uint = 2;
      
      private static const §%l§:uint = 32;
      
      private static const §0§:uint = 64;
      
      private static const §6o§:uint = 1;
      
      private static const §2>§:uint = 2;
      
      private static const §#J§:uint = 4;
      
      private static const §,!;§:uint = 8;
      
      private static const §1V§:uint = 16;
      
      private static const § 3§:uint = 32;
      
      private static const §]p§:uint = 128;
      
      private static const §+]§:String = "mov";
      
      private static const §&'§:String = "add";
      
      private static const §2!<§:String = "sub";
      
      private static const §>C§:String = "mul";
      
      private static const §2!B§:String = "div";
      
      private static const §0P§:String = "rcp";
      
      private static const §;W§:String = "min";
      
      private static const §'h§:String = "max";
      
      private static const §+M§:String = "frc";
      
      private static const §[f§:String = "sqt";
      
      private static const §7E§:String = "rsq";
      
      private static const §!P§:String = "pow";
      
      private static const §`2§:String = "log";
      
      private static const § z§:String = "exp";
      
      private static const §>=§:String = "nrm";
      
      private static const §]b§:String = "sin";
      
      private static const §,!'§:String = "cos";
      
      private static const §[u§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §]u§:String = "abs";
      
      private static const §%!"§:String = "neg";
      
      private static const § c§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §^d§:String = "ifz";
      
      private static const §2!@§:String = "inz";
      
      private static const §1a§:String = "ife";
      
      private static const §4!E§:String = "ine";
      
      private static const §?y§:String = "ifg";
      
      private static const §=z§:String = "ifl";
      
      private static const §61§:String = "ieg";
      
      private static const §,r§:String = "iel";
      
      private static const §-!6§:String = "els";
      
      private static const §?J§:String = "eif";
      
      private static const §!!,§:String = "rep";
      
      private static const §?!@§:String = "erp";
      
      private static const §7$§:String = "brk";
      
      private static const §=7§:String = "kil";
      
      private static const §4c§:String = "tex";
      
      private static const §8!C§:String = "sge";
      
      private static const §?!!§:String = "slt";
      
      private static const §<f§:String = "sgn";
      
      private static const §'D§:String = "va";
      
      private static const §[!=§:String = "vc";
      
      private static const §]x§:String = "vt";
      
      private static const §%Y§:String = "op";
      
      private static const §6!,§:String = "v";
      
      private static const §+!9§:String = "fc";
      
      private static const §'!+§:String = "ft";
      
      private static const §;z§:String = "fs";
      
      private static const §!I§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §-!%§:String = "cube";
      
      private static const §,T§:String = "mipnearest";
      
      private static const §]+§:String = "miplinear";
      
      private static const §4x§:String = "mipnone";
      
      private static const §!M§:String = "nomip";
      
      private static const §8E§:String = "nearest";
      
      private static const §6A§:String = "linear";
      
      private static const §80§:String = "centroid";
      
      private static const §;+§:String = "single";
      
      private static const §<E§:String = "depth";
      
      private static const §1!=§:String = "repeat";
      
      private static const §4!5§:String = "wrap";
      
      private static const §+q§:String = "clamp";
       
      
      private var §<!8§:ByteArray = null;
      
      private var §>!'§:String = "";
      
      private var §;K§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§;K§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §6!9§[§+]§] = new OpCode(§+]§,2,0,0);
         §6!9§[§&'§] = new OpCode(§&'§,3,1,0);
         §6!9§[§2!<§] = new OpCode(§2!<§,3,2,0);
         §6!9§[§>C§] = new OpCode(§>C§,3,3,0);
         §6!9§[§2!B§] = new OpCode(§2!B§,3,4,0);
         §6!9§[§0P§] = new OpCode(§0P§,2,5,0);
         §6!9§[§;W§] = new OpCode(§;W§,3,6,0);
         §6!9§[§'h§] = new OpCode(§'h§,3,7,0);
         §6!9§[§+M§] = new OpCode(§+M§,2,8,0);
         §6!9§[§[f§] = new OpCode(§[f§,2,9,0);
         §6!9§[§7E§] = new OpCode(§7E§,2,10,0);
         §6!9§[§!P§] = new OpCode(§!P§,3,11,0);
         §6!9§[§`2§] = new OpCode(§`2§,2,12,0);
         §6!9§[§ z§] = new OpCode(§ z§,2,13,0);
         §6!9§[§>=§] = new OpCode(§>=§,2,14,0);
         §6!9§[§]b§] = new OpCode(§]b§,2,15,0);
         §6!9§[§,!'§] = new OpCode(§,!'§,2,16,0);
         §6!9§[§[u§] = new OpCode(§[u§,3,17,0);
         §6!9§[DP3] = new OpCode(DP3,3,18,0);
         §6!9§[DP4] = new OpCode(DP4,3,19,0);
         §6!9§[§]u§] = new OpCode(§]u§,2,20,0);
         §6!9§[§%!"§] = new OpCode(§%!"§,2,21,0);
         §6!9§[§ c§] = new OpCode(§ c§,2,22,0);
         §6!9§[M33] = new OpCode(M33,3,23,§1V§);
         §6!9§[M44] = new OpCode(M44,3,24,§1V§);
         §6!9§[M34] = new OpCode(M34,3,25,§1V§);
         §6!9§[§^d§] = new OpCode(§^d§,1,26,§]p§ | §2>§ | §6o§);
         §6!9§[§2!@§] = new OpCode(§2!@§,1,27,§]p§ | §2>§ | §6o§);
         §6!9§[§1a§] = new OpCode(§1a§,2,28,§]p§ | §2>§ | §6o§);
         §6!9§[§4!E§] = new OpCode(§4!E§,2,29,§]p§ | §2>§ | §6o§);
         §6!9§[§?y§] = new OpCode(§?y§,2,30,§]p§ | §2>§ | §6o§);
         §6!9§[§=z§] = new OpCode(§=z§,2,31,§]p§ | §2>§ | §6o§);
         §6!9§[§61§] = new OpCode(§61§,2,32,§]p§ | §2>§ | §6o§);
         §6!9§[§,r§] = new OpCode(§,r§,2,33,§]p§ | §2>§ | §6o§);
         §6!9§[§-!6§] = new OpCode(§-!6§,0,34,§]p§ | §2>§ | §#J§);
         §6!9§[§?J§] = new OpCode(§?J§,0,35,§]p§ | §#J§);
         §6!9§[§!!,§] = new OpCode(§!!,§,1,36,§]p§ | §2>§ | §6o§);
         §6!9§[§?!@§] = new OpCode(§?!@§,0,37,§]p§ | §#J§);
         §6!9§[§7$§] = new OpCode(§7$§,0,38,§]p§);
         §6!9§[§=7§] = new OpCode(§=7§,1,39,§]p§ | § 3§);
         §6!9§[§4c§] = new OpCode(§4c§,3,40,§ 3§ | §,!;§);
         §6!9§[§8!C§] = new OpCode(§8!C§,3,41,0);
         §6!9§[§?!!§] = new OpCode(§?!!§,3,42,0);
         §6!9§[§<f§] = new OpCode(§<f§,2,43,0);
         §&!7§[§'D§] = new Register(§'D§,"vertex attribute",0,7,§0§ | §`?§);
         §&!7§[§[!=§] = new Register(§[!=§,"vertex constant",1,127,§0§ | §`?§);
         §&!7§[§]x§] = new Register(§]x§,"vertex temporary",2,7,§0§ | §0t§ | §`?§);
         §&!7§[§%Y§] = new Register(§%Y§,"vertex output",3,0,§0§ | §0t§);
         §&!7§[§6!,§] = new Register(§6!,§,"varying",4,7,§0§ | §%l§ | §`?§ | §0t§);
         §&!7§[§+!9§] = new Register(§+!9§,"fragment constant",1,27,§%l§ | §`?§);
         §&!7§[§'!+§] = new Register(§'!+§,"fragment temporary",2,7,§%l§ | §0t§ | §`?§);
         §&!7§[§;z§] = new Register(§;z§,"texture sampler",5,7,§%l§ | §`?§);
         §&!7§[§!I§] = new Register(§!I§,"fragment output",3,0,§%l§ | §0t§);
         §#!5§[D2] = new Sampler(D2,§'g§,0);
         §#!5§[D3] = new Sampler(D3,§'g§,2);
         §#!5§[§-!%§] = new Sampler(§-!%§,§'g§,1);
         §#!5§[§,T§] = new Sampler(§,T§,§%P§,1);
         §#!5§[§]+§] = new Sampler(§]+§,§%P§,2);
         §#!5§[§4x§] = new Sampler(§4x§,§%P§,0);
         §#!5§[§!M§] = new Sampler(§!M§,§%P§,0);
         §#!5§[§8E§] = new Sampler(§8E§,§3u§,0);
         §#!5§[§6A§] = new Sampler(§6A§,§3u§,1);
         §#!5§[§80§] = new Sampler(§80§,§;[§,1 << 0);
         §#!5§[§;+§] = new Sampler(§;+§,§;[§,1 << 1);
         §#!5§[§<E§] = new Sampler(§<E§,§;[§,1 << 2);
         §#!5§[§1!=§] = new Sampler(§1!=§,§36§,1);
         §#!5§[§4!5§] = new Sampler(§4!5§,§36§,1);
         §#!5§[§+q§] = new Sampler(§+q§,§36§,0);
      }
      
      public function get error() : String
      {
         return this.§>!'§;
      }
      
      public function get §^!=§() : ByteArray
      {
         return this.§<!8§;
      }
      
      public function §0F§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§<!8§ = new ByteArray();
         this.§>!'§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§>!'§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§^!=§.endian = Endian.LITTLE_ENDIAN;
         this.§^!=§.writeByte(160);
         this.§^!=§.writeUnsignedInt(1);
         this.§^!=§.writeByte(161);
         this.§^!=§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§>!'§ == "")
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
            _loc16_ = §6!9§[_loc15_[0]];
            if(!this.§;K§)
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
               if(_loc16_.flags & §#J§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§>!'§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §2>§)
               {
                  _loc7_++;
                  if(_loc7_ > §3U§)
                  {
                     this.§>!'§ = "error: nesting to deep, maximum allowed is " + §3U§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & § 3§ && !_loc5_)
               {
                  this.§>!'§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§^!=§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §8!&§)
               {
                  this.§>!'§ = "error: too many opcodes. maximum is " + §8!&§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§>!'§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §&!7§[_loc24_[0]];
                  if(!this.§;K§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§>!'§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §%l§))
                     {
                        this.§>!'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§>!'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §0§))
                  {
                     this.§>!'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§>!'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §]p§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §,!;§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§>!'§ = "error: relative can not be destination";
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
                     if((_loc39_ = §&!7§[_loc38_[0]]) == null)
                     {
                        this.§>!'§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§>!'§ = "error: bad index register select";
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
                        this.§>!'§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§^!=§.writeShort(_loc27_);
                     this.§^!=§.writeByte(_loc28_);
                     this.§^!=§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §#!5§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §;[§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§^!=§.writeShort(_loc27_);
                     this.§^!=§.writeByte(int(_loc44_ * 8));
                     this.§^!=§.writeByte(0);
                     this.§^!=§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§^!=§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§^!=§.writeShort(_loc27_);
                     this.§^!=§.writeByte(_loc34_);
                     this.§^!=§.writeByte(_loc28_);
                     this.§^!=§.writeByte(_loc25_.emitCode);
                     this.§^!=§.writeByte(_loc32_);
                     this.§^!=§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§^!=§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§>!'§ != "")
         {
            this.§>!'§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§^!=§.length = 0;
         }
         if(this.§;K§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§^!=§.length;
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
               if((_loc49_ = this.§^!=§[_loc48_].toString(16)).length < 2)
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
         return this.§^!=§;
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
