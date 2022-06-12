package §<"+§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%!g§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § !d§:Dictionary = new Dictionary();
      
      private static const §4q§:Dictionary = new Dictionary();
      
      private static const §8y§:Dictionary = new Dictionary();
      
      private static const §7!n§:int = 4;
      
      private static const §83§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §@!R§:uint = 12;
      
      private static const §4H§:uint = 16;
      
      private static const §[!X§:uint = 20;
      
      private static const § C§:uint = 24;
      
      private static const §^!e§:uint = 28;
      
      private static const §"O§:uint = 1;
      
      private static const §"6§:uint = 2;
      
      private static const §@s§:uint = 32;
      
      private static const §9"5§:uint = 64;
      
      private static const §?!y§:uint = 1;
      
      private static const §06§:uint = 2;
      
      private static const §!?§:uint = 4;
      
      private static const §^![§:uint = 8;
      
      private static const §37§:uint = 16;
      
      private static const §^1§:uint = 32;
      
      private static const §7">§:uint = 128;
      
      private static const §4"2§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §!"3§:String = "sub";
      
      private static const §4![§:String = "mul";
      
      private static const § U§:String = "div";
      
      private static const §'""§:String = "rcp";
      
      private static const §2K§:String = "min";
      
      private static const §'!f§:String = "max";
      
      private static const §=3§:String = "frc";
      
      private static const §!s§:String = "sqt";
      
      private static const §-Y§:String = "rsq";
      
      private static const §>B§:String = "pow";
      
      private static const §?w§:String = "log";
      
      private static const §9!-§:String = "exp";
      
      private static const §;!A§:String = "nrm";
      
      private static const §%S§:String = "sin";
      
      private static const §-!v§:String = "cos";
      
      private static const §`?§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §88§:String = "abs";
      
      private static const §5!8§:String = "neg";
      
      private static const §,-§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §7!f§:String = "ifz";
      
      private static const §1""§:String = "inz";
      
      private static const §>C§:String = "ife";
      
      private static const §>!l§:String = "ine";
      
      private static const §[n§:String = "ifg";
      
      private static const §`!k§:String = "ifl";
      
      private static const §+";§:String = "ieg";
      
      private static const §["8§:String = "iel";
      
      private static const §&!R§:String = "els";
      
      private static const §`p§:String = "eif";
      
      private static const §`!b§:String = "rep";
      
      private static const § "-§:String = "erp";
      
      private static const §#q§:String = "brk";
      
      private static const §^!I§:String = "kil";
      
      private static const §!"9§:String = "tex";
      
      private static const §>F§:String = "sge";
      
      private static const §4S§:String = "slt";
      
      private static const § "1§:String = "sgn";
      
      private static const §%J§:String = "va";
      
      private static const §'"9§:String = "vc";
      
      private static const §;8§:String = "vt";
      
      private static const §!=§:String = "op";
      
      private static const V:String = "v";
      
      private static const §%!6§:String = "fc";
      
      private static const §,!O§:String = "ft";
      
      private static const § %§:String = "fs";
      
      private static const §4!a§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&q§:String = "cube";
      
      private static const §0!N§:String = "mipnearest";
      
      private static const §<H§:String = "miplinear";
      
      private static const §5c§:String = "mipnone";
      
      private static const §5"?§:String = "nomip";
      
      private static const §8!b§:String = "nearest";
      
      private static const §-!F§:String = "linear";
      
      private static const §#!O§:String = "centroid";
      
      private static const §@!n§:String = "single";
      
      private static const §#Q§:String = "depth";
      
      private static const § !x§:String = "repeat";
      
      private static const §;!l§:String = "wrap";
      
      private static const §>v§:String = "clamp";
       
      
      private var §5!;§:ByteArray = null;
      
      private var §!"&§:String = "";
      
      private var §5T§:Boolean = false;
      
      public function §%!g§(param1:Boolean = false)
      {
         super();
         this.§5T§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         § !d§[§4"2§] = new OpCode(§4"2§,2,0,0);
         § !d§[ADD] = new OpCode(ADD,3,1,0);
         § !d§[§!"3§] = new OpCode(§!"3§,3,2,0);
         § !d§[§4![§] = new OpCode(§4![§,3,3,0);
         § !d§[§ U§] = new OpCode(§ U§,3,4,0);
         § !d§[§'""§] = new OpCode(§'""§,2,5,0);
         § !d§[§2K§] = new OpCode(§2K§,3,6,0);
         § !d§[§'!f§] = new OpCode(§'!f§,3,7,0);
         § !d§[§=3§] = new OpCode(§=3§,2,8,0);
         § !d§[§!s§] = new OpCode(§!s§,2,9,0);
         § !d§[§-Y§] = new OpCode(§-Y§,2,10,0);
         § !d§[§>B§] = new OpCode(§>B§,3,11,0);
         § !d§[§?w§] = new OpCode(§?w§,2,12,0);
         § !d§[§9!-§] = new OpCode(§9!-§,2,13,0);
         § !d§[§;!A§] = new OpCode(§;!A§,2,14,0);
         § !d§[§%S§] = new OpCode(§%S§,2,15,0);
         § !d§[§-!v§] = new OpCode(§-!v§,2,16,0);
         § !d§[§`?§] = new OpCode(§`?§,3,17,0);
         § !d§[DP3] = new OpCode(DP3,3,18,0);
         § !d§[DP4] = new OpCode(DP4,3,19,0);
         § !d§[§88§] = new OpCode(§88§,2,20,0);
         § !d§[§5!8§] = new OpCode(§5!8§,2,21,0);
         § !d§[§,-§] = new OpCode(§,-§,2,22,0);
         § !d§[M33] = new OpCode(M33,3,23,§37§);
         § !d§[M44] = new OpCode(M44,3,24,§37§);
         § !d§[M34] = new OpCode(M34,3,25,§37§);
         § !d§[§7!f§] = new OpCode(§7!f§,1,26,§7">§ | §06§ | §?!y§);
         § !d§[§1""§] = new OpCode(§1""§,1,27,§7">§ | §06§ | §?!y§);
         § !d§[§>C§] = new OpCode(§>C§,2,28,§7">§ | §06§ | §?!y§);
         § !d§[§>!l§] = new OpCode(§>!l§,2,29,§7">§ | §06§ | §?!y§);
         § !d§[§[n§] = new OpCode(§[n§,2,30,§7">§ | §06§ | §?!y§);
         § !d§[§`!k§] = new OpCode(§`!k§,2,31,§7">§ | §06§ | §?!y§);
         § !d§[§+";§] = new OpCode(§+";§,2,32,§7">§ | §06§ | §?!y§);
         § !d§[§["8§] = new OpCode(§["8§,2,33,§7">§ | §06§ | §?!y§);
         § !d§[§&!R§] = new OpCode(§&!R§,0,34,§7">§ | §06§ | §!?§);
         § !d§[§`p§] = new OpCode(§`p§,0,35,§7">§ | §!?§);
         § !d§[§`!b§] = new OpCode(§`!b§,1,36,§7">§ | §06§ | §?!y§);
         § !d§[§ "-§] = new OpCode(§ "-§,0,37,§7">§ | §!?§);
         § !d§[§#q§] = new OpCode(§#q§,0,38,§7">§);
         § !d§[§^!I§] = new OpCode(§^!I§,1,39,§7">§ | §^1§);
         § !d§[§!"9§] = new OpCode(§!"9§,3,40,§^1§ | §^![§);
         § !d§[§>F§] = new OpCode(§>F§,3,41,0);
         § !d§[§4S§] = new OpCode(§4S§,3,42,0);
         § !d§[§ "1§] = new OpCode(§ "1§,2,43,0);
         §4q§[§%J§] = new Register(§%J§,"vertex attribute",0,7,§9"5§ | §"6§);
         §4q§[§'"9§] = new Register(§'"9§,"vertex constant",1,127,§9"5§ | §"6§);
         §4q§[§;8§] = new Register(§;8§,"vertex temporary",2,7,§9"5§ | §"O§ | §"6§);
         §4q§[§!=§] = new Register(§!=§,"vertex output",3,0,§9"5§ | §"O§);
         §4q§[V] = new Register(V,"varying",4,7,§9"5§ | §@s§ | §"6§ | §"O§);
         §4q§[§%!6§] = new Register(§%!6§,"fragment constant",1,27,§@s§ | §"6§);
         §4q§[§,!O§] = new Register(§,!O§,"fragment temporary",2,7,§@s§ | §"O§ | §"6§);
         §4q§[§ %§] = new Register(§ %§,"texture sampler",5,7,§@s§ | §"6§);
         §4q§[§4!a§] = new Register(§4!a§,"fragment output",3,0,§@s§ | §"O§);
         §8y§[D2] = new Sampler(D2,§@!R§,0);
         §8y§[D3] = new Sampler(D3,§@!R§,2);
         §8y§[§&q§] = new Sampler(§&q§,§@!R§,1);
         §8y§[§0!N§] = new Sampler(§0!N§,§ C§,1);
         §8y§[§<H§] = new Sampler(§<H§,§ C§,2);
         §8y§[§5c§] = new Sampler(§5c§,§ C§,0);
         §8y§[§5"?§] = new Sampler(§5"?§,§ C§,0);
         §8y§[§8!b§] = new Sampler(§8!b§,§^!e§,0);
         §8y§[§-!F§] = new Sampler(§-!F§,§^!e§,1);
         §8y§[§#!O§] = new Sampler(§#!O§,§4H§,1 << 0);
         §8y§[§@!n§] = new Sampler(§@!n§,§4H§,1 << 1);
         §8y§[§#Q§] = new Sampler(§#Q§,§4H§,1 << 2);
         §8y§[§ !x§] = new Sampler(§ !x§,§[!X§,1);
         §8y§[§;!l§] = new Sampler(§;!l§,§[!X§,1);
         §8y§[§>v§] = new Sampler(§>v§,§[!X§,0);
      }
      
      public function get error() : String
      {
         return this.§!"&§;
      }
      
      public function get §6"%§() : ByteArray
      {
         return this.§5!;§;
      }
      
      public function §6!<§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§5!;§ = new ByteArray();
         this.§!"&§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§!"&§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§6"%§.endian = Endian.LITTLE_ENDIAN;
         this.§6"%§.writeByte(160);
         this.§6"%§.writeUnsignedInt(1);
         this.§6"%§.writeByte(161);
         this.§6"%§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§!"&§ == "")
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
            _loc16_ = § !d§[_loc15_[0]];
            if(!this.§5T§)
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
               if(_loc16_.flags & §!?§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§!"&§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §06§)
               {
                  _loc7_++;
                  if(_loc7_ > §7!n§)
                  {
                     this.§!"&§ = "error: nesting to deep, maximum allowed is " + §7!n§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §^1§ && !_loc5_)
               {
                  this.§!"&§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§6"%§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §83§)
               {
                  this.§!"&§ = "error: too many opcodes. maximum is " + §83§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§!"&§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §4q§[_loc24_[0]];
                  if(!this.§5T§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§!"&§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §@s§))
                     {
                        this.§!"&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§!"&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §9"5§))
                  {
                     this.§!"&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§!"&§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §7">§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §^![§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§!"&§ = "error: relative can not be destination";
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
                     if((_loc39_ = §4q§[_loc38_[0]]) == null)
                     {
                        this.§!"&§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§!"&§ = "error: bad index register select";
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
                        this.§!"&§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§6"%§.writeShort(_loc27_);
                     this.§6"%§.writeByte(_loc28_);
                     this.§6"%§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §8y§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §4H§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§6"%§.writeShort(_loc27_);
                     this.§6"%§.writeByte(int(_loc44_ * 8));
                     this.§6"%§.writeByte(0);
                     this.§6"%§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§6"%§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§6"%§.writeShort(_loc27_);
                     this.§6"%§.writeByte(_loc34_);
                     this.§6"%§.writeByte(_loc28_);
                     this.§6"%§.writeByte(_loc25_.emitCode);
                     this.§6"%§.writeByte(_loc32_);
                     this.§6"%§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§6"%§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§!"&§ != "")
         {
            this.§!"&§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§6"%§.length = 0;
         }
         if(this.§5T§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§6"%§.length;
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
               if((_loc49_ = this.§6"%§[_loc48_].toString(16)).length < 2)
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
         return this.§6"%§;
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
