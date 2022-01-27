package §1D§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §0G§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §`"3§:Dictionary = new Dictionary();
      
      private static const §9n§:Dictionary = new Dictionary();
      
      private static const §["P§:Dictionary = new Dictionary();
      
      private static const §'"3§:int = 4;
      
      private static const §1"%§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §0"_§:uint = 12;
      
      private static const §-d§:uint = 16;
      
      private static const §>l§:uint = 20;
      
      private static const §8N§:uint = 24;
      
      private static const §`^§:uint = 28;
      
      private static const §@"o§:uint = 1;
      
      private static const §]"_§:uint = 2;
      
      private static const §3"n§:uint = 32;
      
      private static const §'# §:uint = 64;
      
      private static const §'!1§:uint = 1;
      
      private static const §6#5§:uint = 2;
      
      private static const §8"#§:uint = 4;
      
      private static const §1u§:uint = 8;
      
      private static const §!!h§:uint = 16;
      
      private static const §!M§:uint = 32;
      
      private static const §<g§:uint = 128;
      
      private static const §]"E§:String = "mov";
      
      private static const §<!F§:String = "add";
      
      private static const §["_§:String = "sub";
      
      private static const §85§:String = "mul";
      
      private static const §65§:String = "div";
      
      private static const §;"r§:String = "rcp";
      
      private static const §,"c§:String = "min";
      
      private static const §6!E§:String = "max";
      
      private static const §4![§:String = "frc";
      
      private static const §,#6§:String = "sqt";
      
      private static const §`<§:String = "rsq";
      
      private static const §;2§:String = "pow";
      
      private static const §]!A§:String = "log";
      
      private static const §="I§:String = "exp";
      
      private static const §6"N§:String = "nrm";
      
      private static const §`W§:String = "sin";
      
      private static const §-E§:String = "cos";
      
      private static const §;!?§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § "&§:String = "abs";
      
      private static const §9#1§:String = "neg";
      
      private static const §,!'§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §'"U§:String = "ifz";
      
      private static const §4A§:String = "inz";
      
      private static const §@"^§:String = "ife";
      
      private static const §"!G§:String = "ine";
      
      private static const §-"[§:String = "ifg";
      
      private static const §0"c§:String = "ifl";
      
      private static const §0!j§:String = "ieg";
      
      private static const §!a§:String = "iel";
      
      private static const §^"B§:String = "els";
      
      private static const §,!<§:String = "eif";
      
      private static const §'m§:String = "rep";
      
      private static const §<#5§:String = "erp";
      
      private static const §=! §:String = "brk";
      
      private static const §'4§:String = "kil";
      
      private static const §!"d§:String = "tex";
      
      private static const §2R§:String = "sge";
      
      private static const §;"D§:String = "slt";
      
      private static const §`#4§:String = "sgn";
      
      private static const §',§:String = "va";
      
      private static const §>'§:String = "vc";
      
      private static const §?"p§:String = "vt";
      
      private static const §=8§:String = "op";
      
      private static const § !K§:String = "v";
      
      private static const §^#%§:String = "fc";
      
      private static const §50§:String = "ft";
      
      private static const §%!%§:String = "fs";
      
      private static const §=!<§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §+"5§:String = "cube";
      
      private static const §9!$§:String = "mipnearest";
      
      private static const § !l§:String = "miplinear";
      
      private static const §2X§:String = "mipnone";
      
      private static const §+" §:String = "nomip";
      
      private static const §0!B§:String = "nearest";
      
      private static const §-!Y§:String = "linear";
      
      private static const §"!_§:String = "centroid";
      
      private static const §6!B§:String = "single";
      
      private static const §+#4§:String = "depth";
      
      private static const §@t§:String = "repeat";
      
      private static const §2"=§:String = "wrap";
      
      private static const §>"i§:String = "clamp";
       
      
      private var §+y§:ByteArray = null;
      
      private var §8o§:String = "";
      
      private var §`"7§:Boolean = false;
      
      public function §0G§(param1:Boolean = false)
      {
         super();
         this.§`"7§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §`"3§[§]"E§] = new OpCode(§]"E§,2,0,0);
         §`"3§[§<!F§] = new OpCode(§<!F§,3,1,0);
         §`"3§[§["_§] = new OpCode(§["_§,3,2,0);
         §`"3§[§85§] = new OpCode(§85§,3,3,0);
         §`"3§[§65§] = new OpCode(§65§,3,4,0);
         §`"3§[§;"r§] = new OpCode(§;"r§,2,5,0);
         §`"3§[§,"c§] = new OpCode(§,"c§,3,6,0);
         §`"3§[§6!E§] = new OpCode(§6!E§,3,7,0);
         §`"3§[§4![§] = new OpCode(§4![§,2,8,0);
         §`"3§[§,#6§] = new OpCode(§,#6§,2,9,0);
         §`"3§[§`<§] = new OpCode(§`<§,2,10,0);
         §`"3§[§;2§] = new OpCode(§;2§,3,11,0);
         §`"3§[§]!A§] = new OpCode(§]!A§,2,12,0);
         §`"3§[§="I§] = new OpCode(§="I§,2,13,0);
         §`"3§[§6"N§] = new OpCode(§6"N§,2,14,0);
         §`"3§[§`W§] = new OpCode(§`W§,2,15,0);
         §`"3§[§-E§] = new OpCode(§-E§,2,16,0);
         §`"3§[§;!?§] = new OpCode(§;!?§,3,17,0);
         §`"3§[DP3] = new OpCode(DP3,3,18,0);
         §`"3§[DP4] = new OpCode(DP4,3,19,0);
         §`"3§[§ "&§] = new OpCode(§ "&§,2,20,0);
         §`"3§[§9#1§] = new OpCode(§9#1§,2,21,0);
         §`"3§[§,!'§] = new OpCode(§,!'§,2,22,0);
         §`"3§[M33] = new OpCode(M33,3,23,§!!h§);
         §`"3§[M44] = new OpCode(M44,3,24,§!!h§);
         §`"3§[M34] = new OpCode(M34,3,25,§!!h§);
         §`"3§[§'"U§] = new OpCode(§'"U§,1,26,§<g§ | §6#5§ | §'!1§);
         §`"3§[§4A§] = new OpCode(§4A§,1,27,§<g§ | §6#5§ | §'!1§);
         §`"3§[§@"^§] = new OpCode(§@"^§,2,28,§<g§ | §6#5§ | §'!1§);
         §`"3§[§"!G§] = new OpCode(§"!G§,2,29,§<g§ | §6#5§ | §'!1§);
         §`"3§[§-"[§] = new OpCode(§-"[§,2,30,§<g§ | §6#5§ | §'!1§);
         §`"3§[§0"c§] = new OpCode(§0"c§,2,31,§<g§ | §6#5§ | §'!1§);
         §`"3§[§0!j§] = new OpCode(§0!j§,2,32,§<g§ | §6#5§ | §'!1§);
         §`"3§[§!a§] = new OpCode(§!a§,2,33,§<g§ | §6#5§ | §'!1§);
         §`"3§[§^"B§] = new OpCode(§^"B§,0,34,§<g§ | §6#5§ | §8"#§);
         §`"3§[§,!<§] = new OpCode(§,!<§,0,35,§<g§ | §8"#§);
         §`"3§[§'m§] = new OpCode(§'m§,1,36,§<g§ | §6#5§ | §'!1§);
         §`"3§[§<#5§] = new OpCode(§<#5§,0,37,§<g§ | §8"#§);
         §`"3§[§=! §] = new OpCode(§=! §,0,38,§<g§);
         §`"3§[§'4§] = new OpCode(§'4§,1,39,§<g§ | §!M§);
         §`"3§[§!"d§] = new OpCode(§!"d§,3,40,§!M§ | §1u§);
         §`"3§[§2R§] = new OpCode(§2R§,3,41,0);
         §`"3§[§;"D§] = new OpCode(§;"D§,3,42,0);
         §`"3§[§`#4§] = new OpCode(§`#4§,2,43,0);
         §9n§[§',§] = new Register(§',§,"vertex attribute",0,7,§'# § | §]"_§);
         §9n§[§>'§] = new Register(§>'§,"vertex constant",1,127,§'# § | §]"_§);
         §9n§[§?"p§] = new Register(§?"p§,"vertex temporary",2,7,§'# § | §@"o§ | §]"_§);
         §9n§[§=8§] = new Register(§=8§,"vertex output",3,0,§'# § | §@"o§);
         §9n§[§ !K§] = new Register(§ !K§,"varying",4,7,§'# § | §3"n§ | §]"_§ | §@"o§);
         §9n§[§^#%§] = new Register(§^#%§,"fragment constant",1,27,§3"n§ | §]"_§);
         §9n§[§50§] = new Register(§50§,"fragment temporary",2,7,§3"n§ | §@"o§ | §]"_§);
         §9n§[§%!%§] = new Register(§%!%§,"texture sampler",5,7,§3"n§ | §]"_§);
         §9n§[§=!<§] = new Register(§=!<§,"fragment output",3,0,§3"n§ | §@"o§);
         §["P§[D2] = new Sampler(D2,§0"_§,0);
         §["P§[D3] = new Sampler(D3,§0"_§,2);
         §["P§[§+"5§] = new Sampler(§+"5§,§0"_§,1);
         §["P§[§9!$§] = new Sampler(§9!$§,§8N§,1);
         §["P§[§ !l§] = new Sampler(§ !l§,§8N§,2);
         §["P§[§2X§] = new Sampler(§2X§,§8N§,0);
         §["P§[§+" §] = new Sampler(§+" §,§8N§,0);
         §["P§[§0!B§] = new Sampler(§0!B§,§`^§,0);
         §["P§[§-!Y§] = new Sampler(§-!Y§,§`^§,1);
         §["P§[§"!_§] = new Sampler(§"!_§,§-d§,1 << 0);
         §["P§[§6!B§] = new Sampler(§6!B§,§-d§,1 << 1);
         §["P§[§+#4§] = new Sampler(§+#4§,§-d§,1 << 2);
         §["P§[§@t§] = new Sampler(§@t§,§>l§,1);
         §["P§[§2"=§] = new Sampler(§2"=§,§>l§,1);
         §["P§[§>"i§] = new Sampler(§>"i§,§>l§,0);
      }
      
      public function get error() : String
      {
         return this.§8o§;
      }
      
      public function get §&u§() : ByteArray
      {
         return this.§+y§;
      }
      
      public function §0!Z§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§+y§ = new ByteArray();
         this.§8o§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§8o§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§&u§.endian = Endian.LITTLE_ENDIAN;
         this.§&u§.writeByte(160);
         this.§&u§.writeUnsignedInt(1);
         this.§&u§.writeByte(161);
         this.§&u§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§8o§ == "")
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
            _loc16_ = §`"3§[_loc15_[0]];
            if(!this.§`"7§)
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
               if(_loc16_.flags & §8"#§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§8o§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §6#5§)
               {
                  _loc7_++;
                  if(_loc7_ > §'"3§)
                  {
                     this.§8o§ = "error: nesting to deep, maximum allowed is " + §'"3§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §!M§ && !_loc5_)
               {
                  this.§8o§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§&u§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §1"%§)
               {
                  this.§8o§ = "error: too many opcodes. maximum is " + §1"%§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§8o§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §9n§[_loc24_[0]];
                  if(!this.§`"7§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§8o§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §3"n§))
                     {
                        this.§8o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§8o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §'# §))
                  {
                     this.§8o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§8o§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §<g§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §1u§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§8o§ = "error: relative can not be destination";
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
                     if((_loc39_ = §9n§[_loc38_[0]]) == null)
                     {
                        this.§8o§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§8o§ = "error: bad index register select";
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
                        this.§8o§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§&u§.writeShort(_loc27_);
                     this.§&u§.writeByte(_loc28_);
                     this.§&u§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §["P§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §-d§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§&u§.writeShort(_loc27_);
                     this.§&u§.writeByte(int(_loc44_ * 8));
                     this.§&u§.writeByte(0);
                     this.§&u§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§&u§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§&u§.writeShort(_loc27_);
                     this.§&u§.writeByte(_loc34_);
                     this.§&u§.writeByte(_loc28_);
                     this.§&u§.writeByte(_loc25_.emitCode);
                     this.§&u§.writeByte(_loc32_);
                     this.§&u§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§&u§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§8o§ != "")
         {
            this.§8o§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§&u§.length = 0;
         }
         if(this.§`"7§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§&u§.length;
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
               if((_loc49_ = this.§&u§[_loc48_].toString(16)).length < 2)
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
         return this.§&u§;
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
