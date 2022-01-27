package §,h§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%x§:Dictionary = new Dictionary();
      
      private static const §'N§:Dictionary = new Dictionary();
      
      private static const §0K§:Dictionary = new Dictionary();
      
      private static const §4Y§:int = 4;
      
      private static const §&u§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §?I§:uint = 12;
      
      private static const §!!2§:uint = 16;
      
      private static const §<J§:uint = 20;
      
      private static const §<-§:uint = 24;
      
      private static const § !L§:uint = 28;
      
      private static const §<o§:uint = 1;
      
      private static const §1!+§:uint = 2;
      
      private static const §9U§:uint = 32;
      
      private static const §#X§:uint = 64;
      
      private static const §`!;§:uint = 1;
      
      private static const §+`§:uint = 2;
      
      private static const §0N§:uint = 4;
      
      private static const §+r§:uint = 8;
      
      private static const §4E§:uint = 16;
      
      private static const §04§:uint = 32;
      
      private static const §-!3§:uint = 128;
      
      private static const §-k§:String = "mov";
      
      private static const §4-§:String = "add";
      
      private static const §null §:String = "sub";
      
      private static const §6#§:String = "mul";
      
      private static const §%w§:String = "div";
      
      private static const §?E§:String = "rcp";
      
      private static const §9%§:String = "min";
      
      private static const §8F§:String = "max";
      
      private static const § >§:String = "frc";
      
      private static const §7!F§:String = "sqt";
      
      private static const §80§:String = "rsq";
      
      private static const §6!O§:String = "pow";
      
      private static const §6!#§:String = "log";
      
      private static const §2!D§:String = "exp";
      
      private static const §5V§:String = "nrm";
      
      private static const § !;§:String = "sin";
      
      private static const §9&§:String = "cos";
      
      private static const §"w§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §>$§:String = "abs";
      
      private static const §%!"§:String = "neg";
      
      private static const §<'§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §3!5§:String = "ifz";
      
      private static const §^!N§:String = "inz";
      
      private static const §;U§:String = "ife";
      
      private static const §>b§:String = "ine";
      
      private static const §3!B§:String = "ifg";
      
      private static const §3!J§:String = "ifl";
      
      private static const §&x§:String = "ieg";
      
      private static const §9! §:String = "iel";
      
      private static const §5!C§:String = "els";
      
      private static const §8!G§:String = "eif";
      
      private static const §<!M§:String = "rep";
      
      private static const §03§:String = "erp";
      
      private static const §"4§:String = "brk";
      
      private static const §+!+§:String = "kil";
      
      private static const §^"§:String = "tex";
      
      private static const §+#§:String = "sge";
      
      private static const §@o§:String = "slt";
      
      private static const §&U§:String = "sgn";
      
      private static const §+!§:String = "va";
      
      private static const §?N§:String = "vc";
      
      private static const §"!H§:String = "vt";
      
      private static const §5C§:String = "op";
      
      private static const §!P§:String = "v";
      
      private static const §#!A§:String = "fc";
      
      private static const § '§:String = "ft";
      
      private static const §,!'§:String = "fs";
      
      private static const §3x§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §2f§:String = "cube";
      
      private static const §6e§:String = "mipnearest";
      
      private static const §[A§:String = "miplinear";
      
      private static const §?Y§:String = "mipnone";
      
      private static const §,O§:String = "nomip";
      
      private static const §=G§:String = "nearest";
      
      private static const §2!,§:String = "linear";
      
      private static const §<!D§:String = "centroid";
      
      private static const §?l§:String = "single";
      
      private static const §try§:String = "depth";
      
      private static const §>x§:String = "repeat";
      
      private static const §"m§:String = "wrap";
      
      private static const §;V§:String = "clamp";
       
      
      private var §"!<§:ByteArray = null;
      
      private var §1'§:String = "";
      
      private var §@r§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§@r§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §%x§[§-k§] = new OpCode(§-k§,2,0,0);
         §%x§[§4-§] = new OpCode(§4-§,3,1,0);
         §%x§[§null §] = new OpCode(§null §,3,2,0);
         §%x§[§6#§] = new OpCode(§6#§,3,3,0);
         §%x§[§%w§] = new OpCode(§%w§,3,4,0);
         §%x§[§?E§] = new OpCode(§?E§,2,5,0);
         §%x§[§9%§] = new OpCode(§9%§,3,6,0);
         §%x§[§8F§] = new OpCode(§8F§,3,7,0);
         §%x§[§ >§] = new OpCode(§ >§,2,8,0);
         §%x§[§7!F§] = new OpCode(§7!F§,2,9,0);
         §%x§[§80§] = new OpCode(§80§,2,10,0);
         §%x§[§6!O§] = new OpCode(§6!O§,3,11,0);
         §%x§[§6!#§] = new OpCode(§6!#§,2,12,0);
         §%x§[§2!D§] = new OpCode(§2!D§,2,13,0);
         §%x§[§5V§] = new OpCode(§5V§,2,14,0);
         §%x§[§ !;§] = new OpCode(§ !;§,2,15,0);
         §%x§[§9&§] = new OpCode(§9&§,2,16,0);
         §%x§[§"w§] = new OpCode(§"w§,3,17,0);
         §%x§[DP3] = new OpCode(DP3,3,18,0);
         §%x§[DP4] = new OpCode(DP4,3,19,0);
         §%x§[§>$§] = new OpCode(§>$§,2,20,0);
         §%x§[§%!"§] = new OpCode(§%!"§,2,21,0);
         §%x§[§<'§] = new OpCode(§<'§,2,22,0);
         §%x§[M33] = new OpCode(M33,3,23,§4E§);
         §%x§[M44] = new OpCode(M44,3,24,§4E§);
         §%x§[M34] = new OpCode(M34,3,25,§4E§);
         §%x§[§3!5§] = new OpCode(§3!5§,1,26,§-!3§ | §+`§ | §`!;§);
         §%x§[§^!N§] = new OpCode(§^!N§,1,27,§-!3§ | §+`§ | §`!;§);
         §%x§[§;U§] = new OpCode(§;U§,2,28,§-!3§ | §+`§ | §`!;§);
         §%x§[§>b§] = new OpCode(§>b§,2,29,§-!3§ | §+`§ | §`!;§);
         §%x§[§3!B§] = new OpCode(§3!B§,2,30,§-!3§ | §+`§ | §`!;§);
         §%x§[§3!J§] = new OpCode(§3!J§,2,31,§-!3§ | §+`§ | §`!;§);
         §%x§[§&x§] = new OpCode(§&x§,2,32,§-!3§ | §+`§ | §`!;§);
         §%x§[§9! §] = new OpCode(§9! §,2,33,§-!3§ | §+`§ | §`!;§);
         §%x§[§5!C§] = new OpCode(§5!C§,0,34,§-!3§ | §+`§ | §0N§);
         §%x§[§8!G§] = new OpCode(§8!G§,0,35,§-!3§ | §0N§);
         §%x§[§<!M§] = new OpCode(§<!M§,1,36,§-!3§ | §+`§ | §`!;§);
         §%x§[§03§] = new OpCode(§03§,0,37,§-!3§ | §0N§);
         §%x§[§"4§] = new OpCode(§"4§,0,38,§-!3§);
         §%x§[§+!+§] = new OpCode(§+!+§,1,39,§-!3§ | §04§);
         §%x§[§^"§] = new OpCode(§^"§,3,40,§04§ | §+r§);
         §%x§[§+#§] = new OpCode(§+#§,3,41,0);
         §%x§[§@o§] = new OpCode(§@o§,3,42,0);
         §%x§[§&U§] = new OpCode(§&U§,2,43,0);
         §'N§[§+!§] = new Register(§+!§,"vertex attribute",0,7,§#X§ | §1!+§);
         §'N§[§?N§] = new Register(§?N§,"vertex constant",1,127,§#X§ | §1!+§);
         §'N§[§"!H§] = new Register(§"!H§,"vertex temporary",2,7,§#X§ | §<o§ | §1!+§);
         §'N§[§5C§] = new Register(§5C§,"vertex output",3,0,§#X§ | §<o§);
         §'N§[§!P§] = new Register(§!P§,"varying",4,7,§#X§ | §9U§ | §1!+§ | §<o§);
         §'N§[§#!A§] = new Register(§#!A§,"fragment constant",1,27,§9U§ | §1!+§);
         §'N§[§ '§] = new Register(§ '§,"fragment temporary",2,7,§9U§ | §<o§ | §1!+§);
         §'N§[§,!'§] = new Register(§,!'§,"texture sampler",5,7,§9U§ | §1!+§);
         §'N§[§3x§] = new Register(§3x§,"fragment output",3,0,§9U§ | §<o§);
         §0K§[D2] = new Sampler(D2,§?I§,0);
         §0K§[D3] = new Sampler(D3,§?I§,2);
         §0K§[§2f§] = new Sampler(§2f§,§?I§,1);
         §0K§[§6e§] = new Sampler(§6e§,§<-§,1);
         §0K§[§[A§] = new Sampler(§[A§,§<-§,2);
         §0K§[§?Y§] = new Sampler(§?Y§,§<-§,0);
         §0K§[§,O§] = new Sampler(§,O§,§<-§,0);
         §0K§[§=G§] = new Sampler(§=G§,§ !L§,0);
         §0K§[§2!,§] = new Sampler(§2!,§,§ !L§,1);
         §0K§[§<!D§] = new Sampler(§<!D§,§!!2§,1 << 0);
         §0K§[§?l§] = new Sampler(§?l§,§!!2§,1 << 1);
         §0K§[§try§] = new Sampler(§try§,§!!2§,1 << 2);
         §0K§[§>x§] = new Sampler(§>x§,§<J§,1);
         §0K§[§"m§] = new Sampler(§"m§,§<J§,1);
         §0K§[§;V§] = new Sampler(§;V§,§<J§,0);
      }
      
      public function get error() : String
      {
         return this.§1'§;
      }
      
      public function get §^!§() : ByteArray
      {
         return this.§"!<§;
      }
      
      public function §-e§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§"!<§ = new ByteArray();
         this.§1'§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§1'§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§^!§.endian = Endian.LITTLE_ENDIAN;
         this.§^!§.writeByte(160);
         this.§^!§.writeUnsignedInt(1);
         this.§^!§.writeByte(161);
         this.§^!§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§1'§ == "")
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
            _loc16_ = §%x§[_loc15_[0]];
            if(!this.§@r§)
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
               if(_loc16_.flags & §0N§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§1'§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §+`§)
               {
                  _loc7_++;
                  if(_loc7_ > §4Y§)
                  {
                     this.§1'§ = "error: nesting to deep, maximum allowed is " + §4Y§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §04§ && !_loc5_)
               {
                  this.§1'§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§^!§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §&u§)
               {
                  this.§1'§ = "error: too many opcodes. maximum is " + §&u§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§1'§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §'N§[_loc24_[0]];
                  if(!this.§@r§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§1'§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §9U§))
                     {
                        this.§1'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§1'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §#X§))
                  {
                     this.§1'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§1'§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §-!3§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §+r§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§1'§ = "error: relative can not be destination";
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
                     if((_loc39_ = §'N§[_loc38_[0]]) == null)
                     {
                        this.§1'§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§1'§ = "error: bad index register select";
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
                        this.§1'§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§^!§.writeShort(_loc27_);
                     this.§^!§.writeByte(_loc28_);
                     this.§^!§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §0K§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §!!2§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§^!§.writeShort(_loc27_);
                     this.§^!§.writeByte(int(_loc44_ * 8));
                     this.§^!§.writeByte(0);
                     this.§^!§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§^!§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§^!§.writeShort(_loc27_);
                     this.§^!§.writeByte(_loc34_);
                     this.§^!§.writeByte(_loc28_);
                     this.§^!§.writeByte(_loc25_.emitCode);
                     this.§^!§.writeByte(_loc32_);
                     this.§^!§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§^!§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§1'§ != "")
         {
            this.§1'§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§^!§.length = 0;
         }
         if(this.§@r§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§^!§.length;
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
               if((_loc49_ = this.§^!§[_loc48_].toString(16)).length < 2)
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
         return this.§^!§;
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
