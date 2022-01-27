package §06§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §&1§:Dictionary = new Dictionary();
      
      private static const §7F§:Dictionary = new Dictionary();
      
      private static const §1g§:Dictionary = new Dictionary();
      
      private static const §=!"§:int = 4;
      
      private static const §<K§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §,r§:uint = 12;
      
      private static const §4`§:uint = 16;
      
      private static const §"Y§:uint = 20;
      
      private static const §4J§:uint = 24;
      
      private static const §,!@§:uint = 28;
      
      private static const §!N§:uint = 1;
      
      private static const §""§:uint = 2;
      
      private static const §+L§:uint = 32;
      
      private static const §@!L§:uint = 64;
      
      private static const §1!N§:uint = 1;
      
      private static const §]c§:uint = 2;
      
      private static const §+j§:uint = 4;
      
      private static const §^H§:uint = 8;
      
      private static const §[!@§:uint = 16;
      
      private static const §,!H§:uint = 32;
      
      private static const §51§:uint = 128;
      
      private static const §?!$§:String = "mov";
      
      private static const §6-§:String = "add";
      
      private static const § o§:String = "sub";
      
      private static const §@f§:String = "mul";
      
      private static const §;v§:String = "div";
      
      private static const §1!A§:String = "rcp";
      
      private static const §^Y§:String = "min";
      
      private static const § P§:String = "max";
      
      private static const §]O§:String = "frc";
      
      private static const §'h§:String = "sqt";
      
      private static const §?S§:String = "rsq";
      
      private static const §[Y§:String = "pow";
      
      private static const §69§:String = "log";
      
      private static const §5-§:String = "exp";
      
      private static const §+]§:String = "nrm";
      
      private static const §?V§:String = "sin";
      
      private static const §`o§:String = "cos";
      
      private static const §@!C§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §`V§:String = "abs";
      
      private static const §?N§:String = "neg";
      
      private static const §7!1§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §;!;§:String = "ifz";
      
      private static const §;p§:String = "inz";
      
      private static const §[!3§:String = "ife";
      
      private static const §,a§:String = "ine";
      
      private static const §6r§:String = "ifg";
      
      private static const §6s§:String = "ifl";
      
      private static const §8!?§:String = "ieg";
      
      private static const §#!8§:String = "iel";
      
      private static const § W§:String = "els";
      
      private static const §;!&§:String = "eif";
      
      private static const §>K§:String = "rep";
      
      private static const §;X§:String = "erp";
      
      private static const §4!E§:String = "brk";
      
      private static const §"T§:String = "kil";
      
      private static const §+X§:String = "tex";
      
      private static const §[`§:String = "sge";
      
      private static const §!!?§:String = "slt";
      
      private static const §6h§:String = "sgn";
      
      private static const §8!3§:String = "va";
      
      private static const §9! §:String = "vc";
      
      private static const §5F§:String = "vt";
      
      private static const §'!J§:String = "op";
      
      private static const §'i§:String = "v";
      
      private static const §[!F§:String = "fc";
      
      private static const §>!E§:String = "ft";
      
      private static const §`w§:String = "fs";
      
      private static const § !;§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §>s§:String = "cube";
      
      private static const §!'§:String = "mipnearest";
      
      private static const §3K§:String = "miplinear";
      
      private static const §#h§:String = "mipnone";
      
      private static const §>q§:String = "nomip";
      
      private static const § ! §:String = "nearest";
      
      private static const §!!O§:String = "linear";
      
      private static const set:String = "centroid";
      
      private static const § !I§:String = "single";
      
      private static const §]=§:String = "depth";
      
      private static const § if§:String = "repeat";
      
      private static const §#o§:String = "wrap";
      
      private static const §&@§:String = "clamp";
       
      
      private var §0!4§:ByteArray = null;
      
      private var §6!H§:String = "";
      
      private var §8!"§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§8!"§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §&1§[§?!$§] = new OpCode(§?!$§,2,0,0);
         §&1§[§6-§] = new OpCode(§6-§,3,1,0);
         §&1§[§ o§] = new OpCode(§ o§,3,2,0);
         §&1§[§@f§] = new OpCode(§@f§,3,3,0);
         §&1§[§;v§] = new OpCode(§;v§,3,4,0);
         §&1§[§1!A§] = new OpCode(§1!A§,2,5,0);
         §&1§[§^Y§] = new OpCode(§^Y§,3,6,0);
         §&1§[§ P§] = new OpCode(§ P§,3,7,0);
         §&1§[§]O§] = new OpCode(§]O§,2,8,0);
         §&1§[§'h§] = new OpCode(§'h§,2,9,0);
         §&1§[§?S§] = new OpCode(§?S§,2,10,0);
         §&1§[§[Y§] = new OpCode(§[Y§,3,11,0);
         §&1§[§69§] = new OpCode(§69§,2,12,0);
         §&1§[§5-§] = new OpCode(§5-§,2,13,0);
         §&1§[§+]§] = new OpCode(§+]§,2,14,0);
         §&1§[§?V§] = new OpCode(§?V§,2,15,0);
         §&1§[§`o§] = new OpCode(§`o§,2,16,0);
         §&1§[§@!C§] = new OpCode(§@!C§,3,17,0);
         §&1§[DP3] = new OpCode(DP3,3,18,0);
         §&1§[DP4] = new OpCode(DP4,3,19,0);
         §&1§[§`V§] = new OpCode(§`V§,2,20,0);
         §&1§[§?N§] = new OpCode(§?N§,2,21,0);
         §&1§[§7!1§] = new OpCode(§7!1§,2,22,0);
         §&1§[M33] = new OpCode(M33,3,23,§[!@§);
         §&1§[M44] = new OpCode(M44,3,24,§[!@§);
         §&1§[M34] = new OpCode(M34,3,25,§[!@§);
         §&1§[§;!;§] = new OpCode(§;!;§,1,26,§51§ | §]c§ | §1!N§);
         §&1§[§;p§] = new OpCode(§;p§,1,27,§51§ | §]c§ | §1!N§);
         §&1§[§[!3§] = new OpCode(§[!3§,2,28,§51§ | §]c§ | §1!N§);
         §&1§[§,a§] = new OpCode(§,a§,2,29,§51§ | §]c§ | §1!N§);
         §&1§[§6r§] = new OpCode(§6r§,2,30,§51§ | §]c§ | §1!N§);
         §&1§[§6s§] = new OpCode(§6s§,2,31,§51§ | §]c§ | §1!N§);
         §&1§[§8!?§] = new OpCode(§8!?§,2,32,§51§ | §]c§ | §1!N§);
         §&1§[§#!8§] = new OpCode(§#!8§,2,33,§51§ | §]c§ | §1!N§);
         §&1§[§ W§] = new OpCode(§ W§,0,34,§51§ | §]c§ | §+j§);
         §&1§[§;!&§] = new OpCode(§;!&§,0,35,§51§ | §+j§);
         §&1§[§>K§] = new OpCode(§>K§,1,36,§51§ | §]c§ | §1!N§);
         §&1§[§;X§] = new OpCode(§;X§,0,37,§51§ | §+j§);
         §&1§[§4!E§] = new OpCode(§4!E§,0,38,§51§);
         §&1§[§"T§] = new OpCode(§"T§,1,39,§51§ | §,!H§);
         §&1§[§+X§] = new OpCode(§+X§,3,40,§,!H§ | §^H§);
         §&1§[§[`§] = new OpCode(§[`§,3,41,0);
         §&1§[§!!?§] = new OpCode(§!!?§,3,42,0);
         §&1§[§6h§] = new OpCode(§6h§,2,43,0);
         §7F§[§8!3§] = new Register(§8!3§,"vertex attribute",0,7,§@!L§ | §""§);
         §7F§[§9! §] = new Register(§9! §,"vertex constant",1,127,§@!L§ | §""§);
         §7F§[§5F§] = new Register(§5F§,"vertex temporary",2,7,§@!L§ | §!N§ | §""§);
         §7F§[§'!J§] = new Register(§'!J§,"vertex output",3,0,§@!L§ | §!N§);
         §7F§[§'i§] = new Register(§'i§,"varying",4,7,§@!L§ | §+L§ | §""§ | §!N§);
         §7F§[§[!F§] = new Register(§[!F§,"fragment constant",1,27,§+L§ | §""§);
         §7F§[§>!E§] = new Register(§>!E§,"fragment temporary",2,7,§+L§ | §!N§ | §""§);
         §7F§[§`w§] = new Register(§`w§,"texture sampler",5,7,§+L§ | §""§);
         §7F§[§ !;§] = new Register(§ !;§,"fragment output",3,0,§+L§ | §!N§);
         §1g§[D2] = new Sampler(D2,§,r§,0);
         §1g§[D3] = new Sampler(D3,§,r§,2);
         §1g§[§>s§] = new Sampler(§>s§,§,r§,1);
         §1g§[§!'§] = new Sampler(§!'§,§4J§,1);
         §1g§[§3K§] = new Sampler(§3K§,§4J§,2);
         §1g§[§#h§] = new Sampler(§#h§,§4J§,0);
         §1g§[§>q§] = new Sampler(§>q§,§4J§,0);
         §1g§[§ ! §] = new Sampler(§ ! §,§,!@§,0);
         §1g§[§!!O§] = new Sampler(§!!O§,§,!@§,1);
         §1g§[set] = new Sampler(set,§4`§,1 << 0);
         §1g§[§ !I§] = new Sampler(§ !I§,§4`§,1 << 1);
         §1g§[§]=§] = new Sampler(§]=§,§4`§,1 << 2);
         §1g§[§ if§] = new Sampler(§ if§,§"Y§,1);
         §1g§[§#o§] = new Sampler(§#o§,§"Y§,1);
         §1g§[§&@§] = new Sampler(§&@§,§"Y§,0);
      }
      
      public function get error() : String
      {
         return this.§6!H§;
      }
      
      public function get §6]§() : ByteArray
      {
         return this.§0!4§;
      }
      
      public function §^b§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§0!4§ = new ByteArray();
         this.§6!H§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§6!H§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§6]§.endian = Endian.LITTLE_ENDIAN;
         this.§6]§.writeByte(160);
         this.§6]§.writeUnsignedInt(1);
         this.§6]§.writeByte(161);
         this.§6]§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§6!H§ == "")
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
            _loc16_ = §&1§[_loc15_[0]];
            if(!this.§8!"§)
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
               if(_loc16_.flags & §+j§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§6!H§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §]c§)
               {
                  _loc7_++;
                  if(_loc7_ > §=!"§)
                  {
                     this.§6!H§ = "error: nesting to deep, maximum allowed is " + §=!"§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §,!H§ && !_loc5_)
               {
                  this.§6!H§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§6]§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §<K§)
               {
                  this.§6!H§ = "error: too many opcodes. maximum is " + §<K§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§6!H§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §7F§[_loc24_[0]];
                  if(!this.§8!"§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§6!H§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §+L§))
                     {
                        this.§6!H§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§6!H§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §@!L§))
                  {
                     this.§6!H§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§6!H§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §51§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §^H§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§6!H§ = "error: relative can not be destination";
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
                     if((_loc39_ = §7F§[_loc38_[0]]) == null)
                     {
                        this.§6!H§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§6!H§ = "error: bad index register select";
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
                        this.§6!H§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§6]§.writeShort(_loc27_);
                     this.§6]§.writeByte(_loc28_);
                     this.§6]§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §1g§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §4`§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§6]§.writeShort(_loc27_);
                     this.§6]§.writeByte(int(_loc44_ * 8));
                     this.§6]§.writeByte(0);
                     this.§6]§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§6]§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§6]§.writeShort(_loc27_);
                     this.§6]§.writeByte(_loc34_);
                     this.§6]§.writeByte(_loc28_);
                     this.§6]§.writeByte(_loc25_.emitCode);
                     this.§6]§.writeByte(_loc32_);
                     this.§6]§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§6]§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§6!H§ != "")
         {
            this.§6!H§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§6]§.length = 0;
         }
         if(this.§8!"§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§6]§.length;
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
               if((_loc49_ = this.§6]§[_loc48_].toString(16)).length < 2)
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
         return this.§6]§;
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
