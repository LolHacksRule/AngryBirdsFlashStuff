package §_-yu§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-dU§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-aT§:Dictionary = new Dictionary();
      
      private static const §_-zw§:Dictionary = new Dictionary();
      
      private static const §_-Un§:Dictionary = new Dictionary();
      
      private static const §_-62§:int = 4;
      
      private static const §_-MI§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-qF§:uint = 12;
      
      private static const §_-S-§:uint = 16;
      
      private static const §_-wh§:uint = 20;
      
      private static const §_-2U§:uint = 24;
      
      private static const §_-gO§:uint = 28;
      
      private static const §_-1N§:uint = 1;
      
      private static const §_-Gj§:uint = 2;
      
      private static const §_-bC§:uint = 32;
      
      private static const §_-Jz§:uint = 64;
      
      private static const §_-Do§:uint = 1;
      
      private static const §_-LW§:uint = 2;
      
      private static const §_-bz§:uint = 4;
      
      private static const §_-Ks§:uint = 8;
      
      private static const §_-VB§:uint = 16;
      
      private static const §_-wt§:uint = 32;
      
      private static const §_-2I§:uint = 64;
      
      private static const §_-xz§:uint = 128;
      
      private static const §_-Pr§:String = "mov";
      
      private static const §_-Am§:String = "add";
      
      private static const §_-AW§:String = "sub";
      
      private static const §_-o1§:String = "mul";
      
      private static const §_-st§:String = "div";
      
      private static const §_-g§:String = "rcp";
      
      private static const §_-FI§:String = "min";
      
      private static const §_-z4§:String = "max";
      
      private static const §_-B8§:String = "frc";
      
      private static const §_-fV§:String = "sqt";
      
      private static const §_-fZ§:String = "rsq";
      
      private static const §_-IV§:String = "pow";
      
      private static const §_-KK§:String = "log";
      
      private static const §_-mj§:String = "exp";
      
      private static const §_-im§:String = "nrm";
      
      private static const §_-pe§:String = "sin";
      
      private static const §_-cu§:String = "cos";
      
      private static const §_-RJ§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-0t§:String = "abs";
      
      private static const §_-mv§:String = "neg";
      
      private static const §_-hT§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-iB§:String = "ifz";
      
      private static const §_-yS§:String = "inz";
      
      private static const §_-rt§:String = "ife";
      
      private static const §_-uh§:String = "ine";
      
      private static const §_-g8§:String = "ifg";
      
      private static const §_-F2§:String = "ifl";
      
      private static const §_-It§:String = "ieg";
      
      private static const §_-Ek§:String = "iel";
      
      private static const §_-xp§:String = "els";
      
      private static const §_-c4§:String = "eif";
      
      private static const §_-D8§:String = "rep";
      
      private static const §_-cH§:String = "erp";
      
      private static const §_-0-z§:String = "brk";
      
      private static const §_-uc§:String = "kil";
      
      private static const §_-mN§:String = "tex";
      
      private static const §_-N2§:String = "sge";
      
      private static const §_-Eo§:String = "slt";
      
      private static const §_-lm§:String = "sgn";
      
      private static const §_-O-§:String = "va";
      
      private static const §_-qx§:String = "vc";
      
      private static const §_-em§:String = "vt";
      
      private static const §_-b5§:String = "op";
      
      private static const §_-3C§:String = "v";
      
      private static const §_-h0§:String = "fc";
      
      private static const §_-yd§:String = "ft";
      
      private static const §_-kp§:String = "fs";
      
      private static const §_-PN§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-7g§:String = "cube";
      
      private static const §_-Yw§:String = "mipnearest";
      
      private static const §_-Yz§:String = "miplinear";
      
      private static const §_-009§:String = "mipnone";
      
      private static const §_-i§:String = "nomip";
      
      private static const §_-g4§:String = "nearest";
      
      private static const §_-Qv§:String = "linear";
      
      private static const §_-2D§:String = "centroid";
      
      private static const §_-XA§:String = "single";
      
      private static const §_-c6§:String = "depth";
      
      private static const §_-h5§:String = "repeat";
      
      private static const §_-yW§:String = "wrap";
      
      private static const §_-da§:String = "clamp";
       
      
      private var §_-jp§:ByteArray = null;
      
      private var §_-lI§:String = "";
      
      private var §_-Xn§:Boolean = false;
      
      public function §_-dU§(param1:Boolean = false)
      {
         super();
         this.§_-Xn§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-aT§[§_-Pr§] = new OpCode(§_-Pr§,2,0,0);
         §_-aT§[§_-Am§] = new OpCode(§_-Am§,3,1,0);
         §_-aT§[§_-AW§] = new OpCode(§_-AW§,3,2,0);
         §_-aT§[§_-o1§] = new OpCode(§_-o1§,3,3,0);
         §_-aT§[§_-st§] = new OpCode(§_-st§,3,4,0);
         §_-aT§[§_-g§] = new OpCode(§_-g§,2,5,0);
         §_-aT§[§_-FI§] = new OpCode(§_-FI§,3,6,0);
         §_-aT§[§_-z4§] = new OpCode(§_-z4§,3,7,0);
         §_-aT§[§_-B8§] = new OpCode(§_-B8§,2,8,0);
         §_-aT§[§_-fV§] = new OpCode(§_-fV§,2,9,0);
         §_-aT§[§_-fZ§] = new OpCode(§_-fZ§,2,10,0);
         §_-aT§[§_-IV§] = new OpCode(§_-IV§,3,11,0);
         §_-aT§[§_-KK§] = new OpCode(§_-KK§,2,12,0);
         §_-aT§[§_-mj§] = new OpCode(§_-mj§,2,13,0);
         §_-aT§[§_-im§] = new OpCode(§_-im§,2,14,0);
         §_-aT§[§_-pe§] = new OpCode(§_-pe§,2,15,0);
         §_-aT§[§_-cu§] = new OpCode(§_-cu§,2,16,0);
         §_-aT§[§_-RJ§] = new OpCode(§_-RJ§,3,17,0);
         §_-aT§[DP3] = new OpCode(DP3,3,18,0);
         §_-aT§[DP4] = new OpCode(DP4,3,19,0);
         §_-aT§[§_-0t§] = new OpCode(§_-0t§,2,20,0);
         §_-aT§[§_-mv§] = new OpCode(§_-mv§,2,21,0);
         §_-aT§[§_-hT§] = new OpCode(§_-hT§,2,22,0);
         §_-aT§[M33] = new OpCode(M33,3,23,§_-VB§);
         §_-aT§[M44] = new OpCode(M44,3,24,§_-VB§);
         §_-aT§[M34] = new OpCode(M34,3,25,§_-VB§);
         §_-aT§[§_-iB§] = new OpCode(§_-iB§,1,26,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-yS§] = new OpCode(§_-yS§,1,27,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-rt§] = new OpCode(§_-rt§,2,28,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-uh§] = new OpCode(§_-uh§,2,29,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-g8§] = new OpCode(§_-g8§,2,30,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-F2§] = new OpCode(§_-F2§,2,31,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-It§] = new OpCode(§_-It§,2,32,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-Ek§] = new OpCode(§_-Ek§,2,33,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-xp§] = new OpCode(§_-xp§,0,34,§_-xz§ | §_-LW§ | §_-bz§);
         §_-aT§[§_-c4§] = new OpCode(§_-c4§,0,35,§_-xz§ | §_-bz§);
         §_-aT§[§_-D8§] = new OpCode(§_-D8§,1,36,§_-xz§ | §_-LW§ | §_-Do§);
         §_-aT§[§_-cH§] = new OpCode(§_-cH§,0,37,§_-xz§ | §_-bz§);
         §_-aT§[§_-0-z§] = new OpCode(§_-0-z§,0,38,§_-xz§);
         §_-aT§[§_-uc§] = new OpCode(§_-uc§,1,39,§_-xz§ | §_-wt§);
         §_-aT§[§_-mN§] = new OpCode(§_-mN§,3,40,§_-wt§ | §_-Ks§);
         §_-aT§[§_-N2§] = new OpCode(§_-N2§,3,41,0);
         §_-aT§[§_-Eo§] = new OpCode(§_-Eo§,3,42,0);
         §_-aT§[§_-lm§] = new OpCode(§_-lm§,2,43,0);
         §_-zw§[§_-O-§] = new Register(§_-O-§,"vertex attribute",0,7,§_-Jz§ | §_-Gj§);
         §_-zw§[§_-qx§] = new Register(§_-qx§,"vertex constant",1,127,§_-Jz§ | §_-Gj§);
         §_-zw§[§_-em§] = new Register(§_-em§,"vertex temporary",2,7,§_-Jz§ | §_-1N§ | §_-Gj§);
         §_-zw§[§_-b5§] = new Register(§_-b5§,"vertex output",3,0,§_-Jz§ | §_-1N§);
         §_-zw§[§_-3C§] = new Register(§_-3C§,"varying",4,7,§_-Jz§ | §_-bC§ | §_-Gj§ | §_-1N§);
         §_-zw§[§_-h0§] = new Register(§_-h0§,"fragment constant",1,27,§_-bC§ | §_-Gj§);
         §_-zw§[§_-yd§] = new Register(§_-yd§,"fragment temporary",2,7,§_-bC§ | §_-1N§ | §_-Gj§);
         §_-zw§[§_-kp§] = new Register(§_-kp§,"texture sampler",5,7,§_-bC§ | §_-Gj§);
         §_-zw§[§_-PN§] = new Register(§_-PN§,"fragment output",3,0,§_-bC§ | §_-1N§);
         §_-Un§[D2] = new Sampler(D2,§_-qF§,0);
         §_-Un§[D3] = new Sampler(D3,§_-qF§,2);
         §_-Un§[§_-7g§] = new Sampler(§_-7g§,§_-qF§,1);
         §_-Un§[§_-Yw§] = new Sampler(§_-Yw§,§_-2U§,1);
         §_-Un§[§_-Yz§] = new Sampler(§_-Yz§,§_-2U§,2);
         §_-Un§[§_-009§] = new Sampler(§_-009§,§_-2U§,0);
         §_-Un§[§_-i§] = new Sampler(§_-i§,§_-2U§,0);
         §_-Un§[§_-g4§] = new Sampler(§_-g4§,§_-gO§,0);
         §_-Un§[§_-Qv§] = new Sampler(§_-Qv§,§_-gO§,1);
         §_-Un§[§_-2D§] = new Sampler(§_-2D§,§_-S-§,1 << 0);
         §_-Un§[§_-XA§] = new Sampler(§_-XA§,§_-S-§,1 << 1);
         §_-Un§[§_-c6§] = new Sampler(§_-c6§,§_-S-§,1 << 2);
         §_-Un§[§_-h5§] = new Sampler(§_-h5§,§_-wh§,1);
         §_-Un§[§_-yW§] = new Sampler(§_-yW§,§_-wh§,1);
         §_-Un§[§_-da§] = new Sampler(§_-da§,§_-wh§,0);
      }
      
      public function get error() : String
      {
         return this.§_-lI§;
      }
      
      public function get §_-vy§() : ByteArray
      {
         return this.§_-jp§;
      }
      
      public function §_-qY§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-jp§ = new ByteArray();
         this.§_-lI§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-lI§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-vy§.endian = Endian.LITTLE_ENDIAN;
         this.§_-vy§.writeByte(160);
         this.§_-vy§.writeUnsignedInt(1);
         this.§_-vy§.writeByte(161);
         this.§_-vy§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-lI§ == "")
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
            _loc16_ = §_-aT§[_loc15_[0]];
            if(!this.§_-Xn§)
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
               if(_loc16_.flags & §_-bz§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-lI§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-LW§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-62§)
                  {
                     this.§_-lI§ = "error: nesting to deep, maximum allowed is " + §_-62§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-wt§ && !_loc5_)
               {
                  this.§_-lI§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-vy§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-MI§)
               {
                  this.§_-lI§ = "error: too many opcodes. maximum is " + §_-MI§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-lI§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-zw§[_loc24_[0]];
                  if(!this.§_-Xn§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-lI§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-bC§))
                     {
                        this.§_-lI§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-lI§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-Jz§))
                  {
                     this.§_-lI§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-lI§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-xz§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-Ks§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-lI§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-zw§[_loc38_[0]]) == null)
                     {
                        this.§_-lI§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-lI§ = "error: bad index register select";
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
                        this.§_-lI§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-vy§.writeShort(_loc27_);
                     this.§_-vy§.writeByte(_loc28_);
                     this.§_-vy§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-Un§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-S-§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-vy§.writeShort(_loc27_);
                     this.§_-vy§.writeByte(int(_loc44_ * 8));
                     this.§_-vy§.writeByte(0);
                     this.§_-vy§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-vy§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-vy§.writeShort(_loc27_);
                     this.§_-vy§.writeByte(_loc34_);
                     this.§_-vy§.writeByte(_loc28_);
                     this.§_-vy§.writeByte(_loc25_.emitCode);
                     this.§_-vy§.writeByte(_loc32_);
                     this.§_-vy§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-vy§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-lI§ != "")
         {
            this.§_-lI§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-vy§.length = 0;
         }
         if(this.§_-Xn§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-vy§.length;
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
               if((_loc49_ = this.§_-vy§[_loc48_].toString(16)).length < 2)
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
         return this.§_-vy§;
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
