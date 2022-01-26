package §_-Qj§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-vg§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-62§:Dictionary = new Dictionary();
      
      private static const §_-25§:Dictionary = new Dictionary();
      
      private static const §_-Is§:Dictionary = new Dictionary();
      
      private static const §_-NQ§:int = 4;
      
      private static const §_-lO§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-fY§:uint = 12;
      
      private static const §_-g6§:uint = 16;
      
      private static const §_-rf§:uint = 20;
      
      private static const §_-dK§:uint = 24;
      
      private static const §_-jj§:uint = 28;
      
      private static const §_-1R§:uint = 1;
      
      private static const static:uint = 2;
      
      private static const §_-VT§:uint = 32;
      
      private static const §_-dy§:uint = 64;
      
      private static const §_-H-§:uint = 1;
      
      private static const §_-FW§:uint = 2;
      
      private static const §_-K7§:uint = 4;
      
      private static const §_-j§:uint = 8;
      
      private static const §_-FN§:uint = 16;
      
      private static const §_-82§:uint = 32;
      
      private static const §_-y1§:uint = 64;
      
      private static const §_-qy§:uint = 128;
      
      private static const §_-XG§:String = "mov";
      
      private static const §_-Rv§:String = "add";
      
      private static const §_-h-§:String = "sub";
      
      private static const §_-FF§:String = "mul";
      
      private static const §_-4s§:String = "div";
      
      private static const §_-3c§:String = "rcp";
      
      private static const §_-WA§:String = "min";
      
      private static const §_-Uz§:String = "max";
      
      private static const §_-LV§:String = "frc";
      
      private static const §_-xo§:String = "sqt";
      
      private static const §_-VI§:String = "rsq";
      
      private static const §_-Cz§:String = "pow";
      
      private static const §_-ZI§:String = "log";
      
      private static const §_-wf§:String = "exp";
      
      private static const §_-XW§:String = "nrm";
      
      private static const §_-4V§:String = "sin";
      
      private static const §_-5m§:String = "cos";
      
      private static const §_-Ta§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-KJ§:String = "abs";
      
      private static const §_-d8§:String = "neg";
      
      private static const §_-tw§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-SD§:String = "ifz";
      
      private static const §_-Lt§:String = "inz";
      
      private static const §_-cs§:String = "ife";
      
      private static const §_-4I§:String = "ine";
      
      private static const §_-kM§:String = "ifg";
      
      private static const §_-5k§:String = "ifl";
      
      private static const §_-TY§:String = "ieg";
      
      private static const §_-do§:String = "iel";
      
      private static const §_-7e§:String = "els";
      
      private static const §_-3-§:String = "eif";
      
      private static const §_-Iq§:String = "rep";
      
      private static const §_-SG§:String = "erp";
      
      private static const §_-v4§:String = "brk";
      
      private static const §_-jk§:String = "kil";
      
      private static const §_-mp§:String = "tex";
      
      private static const §_-kj§:String = "sge";
      
      private static const §_-a9§:String = "slt";
      
      private static const §_-sC§:String = "sgn";
      
      private static const §_-6C§:String = "va";
      
      private static const §_-k6§:String = "vc";
      
      private static const §_-tH§:String = "vt";
      
      private static const §_-j-§:String = "op";
      
      private static const §_-qN§:String = "v";
      
      private static const §_-Yz§:String = "fc";
      
      private static const §_-io§:String = "ft";
      
      private static const §_-qf§:String = "fs";
      
      private static const §_-s6§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-0Q§:String = "cube";
      
      private static const §_-Xp§:String = "mipnearest";
      
      private static const §_-Vu§:String = "miplinear";
      
      private static const §_-QW§:String = "mipnone";
      
      private static const §_-WE§:String = "nomip";
      
      private static const §_-dc§:String = "nearest";
      
      private static const §_-Rg§:String = "linear";
      
      private static const §_-OM§:String = "centroid";
      
      private static const §_-eX§:String = "single";
      
      private static const §_-8u§:String = "depth";
      
      private static const §_-4y§:String = "repeat";
      
      private static const §_-vX§:String = "wrap";
      
      private static const §_-kr§:String = "clamp";
       
      
      private var §_-mC§:ByteArray = null;
      
      private var §_-R-§:String = "";
      
      private var §_-dF§:Boolean = false;
      
      public function §_-vg§(param1:Boolean = false)
      {
         super();
         this.§_-dF§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-62§[§_-XG§] = new OpCode(§_-XG§,2,0,0);
         §_-62§[§_-Rv§] = new OpCode(§_-Rv§,3,1,0);
         §_-62§[§_-h-§] = new OpCode(§_-h-§,3,2,0);
         §_-62§[§_-FF§] = new OpCode(§_-FF§,3,3,0);
         §_-62§[§_-4s§] = new OpCode(§_-4s§,3,4,0);
         §_-62§[§_-3c§] = new OpCode(§_-3c§,2,5,0);
         §_-62§[§_-WA§] = new OpCode(§_-WA§,3,6,0);
         §_-62§[§_-Uz§] = new OpCode(§_-Uz§,3,7,0);
         §_-62§[§_-LV§] = new OpCode(§_-LV§,2,8,0);
         §_-62§[§_-xo§] = new OpCode(§_-xo§,2,9,0);
         §_-62§[§_-VI§] = new OpCode(§_-VI§,2,10,0);
         §_-62§[§_-Cz§] = new OpCode(§_-Cz§,3,11,0);
         §_-62§[§_-ZI§] = new OpCode(§_-ZI§,2,12,0);
         §_-62§[§_-wf§] = new OpCode(§_-wf§,2,13,0);
         §_-62§[§_-XW§] = new OpCode(§_-XW§,2,14,0);
         §_-62§[§_-4V§] = new OpCode(§_-4V§,2,15,0);
         §_-62§[§_-5m§] = new OpCode(§_-5m§,2,16,0);
         §_-62§[§_-Ta§] = new OpCode(§_-Ta§,3,17,0);
         §_-62§[DP3] = new OpCode(DP3,3,18,0);
         §_-62§[DP4] = new OpCode(DP4,3,19,0);
         §_-62§[§_-KJ§] = new OpCode(§_-KJ§,2,20,0);
         §_-62§[§_-d8§] = new OpCode(§_-d8§,2,21,0);
         §_-62§[§_-tw§] = new OpCode(§_-tw§,2,22,0);
         §_-62§[M33] = new OpCode(M33,3,23,§_-FN§);
         §_-62§[M44] = new OpCode(M44,3,24,§_-FN§);
         §_-62§[M34] = new OpCode(M34,3,25,§_-FN§);
         §_-62§[§_-SD§] = new OpCode(§_-SD§,1,26,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-Lt§] = new OpCode(§_-Lt§,1,27,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-cs§] = new OpCode(§_-cs§,2,28,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-4I§] = new OpCode(§_-4I§,2,29,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-kM§] = new OpCode(§_-kM§,2,30,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-5k§] = new OpCode(§_-5k§,2,31,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-TY§] = new OpCode(§_-TY§,2,32,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-do§] = new OpCode(§_-do§,2,33,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-7e§] = new OpCode(§_-7e§,0,34,§_-qy§ | §_-FW§ | §_-K7§);
         §_-62§[§_-3-§] = new OpCode(§_-3-§,0,35,§_-qy§ | §_-K7§);
         §_-62§[§_-Iq§] = new OpCode(§_-Iq§,1,36,§_-qy§ | §_-FW§ | §_-H-§);
         §_-62§[§_-SG§] = new OpCode(§_-SG§,0,37,§_-qy§ | §_-K7§);
         §_-62§[§_-v4§] = new OpCode(§_-v4§,0,38,§_-qy§);
         §_-62§[§_-jk§] = new OpCode(§_-jk§,1,39,§_-qy§ | §_-82§);
         §_-62§[§_-mp§] = new OpCode(§_-mp§,3,40,§_-82§ | §_-j§);
         §_-62§[§_-kj§] = new OpCode(§_-kj§,3,41,0);
         §_-62§[§_-a9§] = new OpCode(§_-a9§,3,42,0);
         §_-62§[§_-sC§] = new OpCode(§_-sC§,2,43,0);
         §_-25§[§_-6C§] = new Register(§_-6C§,"vertex attribute",0,7,§_-dy§ | static);
         §_-25§[§_-k6§] = new Register(§_-k6§,"vertex constant",1,127,§_-dy§ | static);
         §_-25§[§_-tH§] = new Register(§_-tH§,"vertex temporary",2,7,§_-dy§ | §_-1R§ | static);
         §_-25§[§_-j-§] = new Register(§_-j-§,"vertex output",3,0,§_-dy§ | §_-1R§);
         §_-25§[§_-qN§] = new Register(§_-qN§,"varying",4,7,§_-dy§ | §_-VT§ | static | §_-1R§);
         §_-25§[§_-Yz§] = new Register(§_-Yz§,"fragment constant",1,27,§_-VT§ | static);
         §_-25§[§_-io§] = new Register(§_-io§,"fragment temporary",2,7,§_-VT§ | §_-1R§ | static);
         §_-25§[§_-qf§] = new Register(§_-qf§,"texture sampler",5,7,§_-VT§ | static);
         §_-25§[§_-s6§] = new Register(§_-s6§,"fragment output",3,0,§_-VT§ | §_-1R§);
         §_-Is§[D2] = new Sampler(D2,§_-fY§,0);
         §_-Is§[D3] = new Sampler(D3,§_-fY§,2);
         §_-Is§[§_-0Q§] = new Sampler(§_-0Q§,§_-fY§,1);
         §_-Is§[§_-Xp§] = new Sampler(§_-Xp§,§_-dK§,1);
         §_-Is§[§_-Vu§] = new Sampler(§_-Vu§,§_-dK§,2);
         §_-Is§[§_-QW§] = new Sampler(§_-QW§,§_-dK§,0);
         §_-Is§[§_-WE§] = new Sampler(§_-WE§,§_-dK§,0);
         §_-Is§[§_-dc§] = new Sampler(§_-dc§,§_-jj§,0);
         §_-Is§[§_-Rg§] = new Sampler(§_-Rg§,§_-jj§,1);
         §_-Is§[§_-OM§] = new Sampler(§_-OM§,§_-g6§,1 << 0);
         §_-Is§[§_-eX§] = new Sampler(§_-eX§,§_-g6§,1 << 1);
         §_-Is§[§_-8u§] = new Sampler(§_-8u§,§_-g6§,1 << 2);
         §_-Is§[§_-4y§] = new Sampler(§_-4y§,§_-rf§,1);
         §_-Is§[§_-vX§] = new Sampler(§_-vX§,§_-rf§,1);
         §_-Is§[§_-kr§] = new Sampler(§_-kr§,§_-rf§,0);
      }
      
      public function get error() : String
      {
         return this.§_-R-§;
      }
      
      public function get §_-JU§() : ByteArray
      {
         return this.§_-mC§;
      }
      
      public function §_-u7§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-mC§ = new ByteArray();
         this.§_-R-§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-R-§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-JU§.endian = Endian.LITTLE_ENDIAN;
         this.§_-JU§.writeByte(160);
         this.§_-JU§.writeUnsignedInt(1);
         this.§_-JU§.writeByte(161);
         this.§_-JU§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-R-§ == "")
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
            _loc16_ = §_-62§[_loc15_[0]];
            if(!this.§_-dF§)
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
               if(_loc16_.flags & §_-K7§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-R-§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-FW§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-NQ§)
                  {
                     this.§_-R-§ = "error: nesting to deep, maximum allowed is " + §_-NQ§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-82§ && !_loc5_)
               {
                  this.§_-R-§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-JU§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-lO§)
               {
                  this.§_-R-§ = "error: too many opcodes. maximum is " + §_-lO§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-R-§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-25§[_loc24_[0]];
                  if(!this.§_-dF§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-R-§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-VT§))
                     {
                        this.§_-R-§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-R-§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-dy§))
                  {
                     this.§_-R-§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-R-§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-qy§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-j§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-R-§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-25§[_loc38_[0]]) == null)
                     {
                        this.§_-R-§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-R-§ = "error: bad index register select";
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
                        this.§_-R-§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-JU§.writeShort(_loc27_);
                     this.§_-JU§.writeByte(_loc28_);
                     this.§_-JU§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-Is§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-g6§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-JU§.writeShort(_loc27_);
                     this.§_-JU§.writeByte(int(_loc44_ * 8));
                     this.§_-JU§.writeByte(0);
                     this.§_-JU§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-JU§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-JU§.writeShort(_loc27_);
                     this.§_-JU§.writeByte(_loc34_);
                     this.§_-JU§.writeByte(_loc28_);
                     this.§_-JU§.writeByte(_loc25_.emitCode);
                     this.§_-JU§.writeByte(_loc32_);
                     this.§_-JU§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-JU§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-R-§ != "")
         {
            this.§_-R-§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-JU§.length = 0;
         }
         if(this.§_-dF§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-JU§.length;
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
               if((_loc49_ = this.§_-JU§[_loc48_].toString(16)).length < 2)
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
         return this.§_-JU§;
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
