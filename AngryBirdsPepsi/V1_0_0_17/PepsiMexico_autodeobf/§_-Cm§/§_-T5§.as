package §_-Cm§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-T5§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-VV§:Dictionary = new Dictionary();
      
      private static const §_-Sq§:Dictionary = new Dictionary();
      
      private static const §_-Ev§:Dictionary = new Dictionary();
      
      private static const § try§:int = 4;
      
      private static const §_-io§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-fW§:uint = 12;
      
      private static const §_-4l§:uint = 16;
      
      private static const §_-g7§:uint = 20;
      
      private static const §_-mR§:uint = 24;
      
      private static const §_-43§:uint = 28;
      
      private static const §_-yr§:uint = 1;
      
      private static const §_-yI§:uint = 2;
      
      private static const §_-yz§:uint = 32;
      
      private static const §_-cc§:uint = 64;
      
      private static const §_-RN§:uint = 1;
      
      private static const §for§:uint = 2;
      
      private static const §_-xp§:uint = 4;
      
      private static const §_-kJ§:uint = 8;
      
      private static const §_-s1§:uint = 16;
      
      private static const §_-EM§:uint = 32;
      
      private static const §_-pK§:uint = 64;
      
      private static const §_-r6§:uint = 128;
      
      private static const §_-AO§:String = "mov";
      
      private static const §_-6e§:String = "add";
      
      private static const §_-Vt§:String = "sub";
      
      private static const §_-Ch§:String = "mul";
      
      private static const §_-94§:String = "div";
      
      private static const §_-Ol§:String = "rcp";
      
      private static const §_-1x§:String = "min";
      
      private static const §_-Jn§:String = "max";
      
      private static const §_-4H§:String = "frc";
      
      private static const §_-Hf§:String = "sqt";
      
      private static const §_-KP§:String = "rsq";
      
      private static const §_-hN§:String = "pow";
      
      private static const §_-6J§:String = "log";
      
      private static const §_-Tv§:String = "exp";
      
      private static const §_-Ad§:String = "nrm";
      
      private static const §_-I2§:String = "sin";
      
      private static const §_-ul§:String = "cos";
      
      private static const §_-pI§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-Gw§:String = "abs";
      
      private static const §_-zb§:String = "neg";
      
      private static const §_-ce§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-Oc§:String = "ifz";
      
      private static const §_-b3§:String = "inz";
      
      private static const §_-XU§:String = "ife";
      
      private static const §_-qH§:String = "ine";
      
      private static const §_-fY§:String = "ifg";
      
      private static const §_-P7§:String = "ifl";
      
      private static const §_-3I§:String = "ieg";
      
      private static const §_-km§:String = "iel";
      
      private static const §_-i4§:String = "els";
      
      private static const §_-sH§:String = "eif";
      
      private static const §_-bq§:String = "rep";
      
      private static const §_-Mh§:String = "erp";
      
      private static const §_-hL§:String = "brk";
      
      private static const §_-1r§:String = "kil";
      
      private static const §_-lB§:String = "tex";
      
      private static const §_-W§:String = "sge";
      
      private static const §with§:String = "slt";
      
      private static const §_-No§:String = "sgn";
      
      private static const §_-SM§:String = "va";
      
      private static const §_-pe§:String = "vc";
      
      private static const §import§:String = "vt";
      
      private static const §_-fP§:String = "op";
      
      private static const §_-ph§:String = "v";
      
      private static const §_-Ik§:String = "fc";
      
      private static const §_-p6§:String = "ft";
      
      private static const §_-kG§:String = "fs";
      
      private static const §_-nm§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-fL§:String = "cube";
      
      private static const §_-of§:String = "mipnearest";
      
      private static const §_-qf§:String = "miplinear";
      
      private static const §_-gU§:String = "mipnone";
      
      private static const §_-y0§:String = "nomip";
      
      private static const §_-mU§:String = "nearest";
      
      private static const §_-yD§:String = "linear";
      
      private static const §_-5k§:String = "centroid";
      
      private static const §_-hc§:String = "single";
      
      private static const §_-UD§:String = "depth";
      
      private static const §_-RV§:String = "repeat";
      
      private static const §_-Dm§:String = "wrap";
      
      private static const §_-b1§:String = "clamp";
       
      
      private var §_-fH§:ByteArray = null;
      
      private var §_-c8§:String = "";
      
      private var §_-es§:Boolean = false;
      
      public function §_-T5§(param1:Boolean = false)
      {
         super();
         this.§_-es§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-VV§[§_-AO§] = new OpCode(§_-AO§,2,0,0);
         §_-VV§[§_-6e§] = new OpCode(§_-6e§,3,1,0);
         §_-VV§[§_-Vt§] = new OpCode(§_-Vt§,3,2,0);
         §_-VV§[§_-Ch§] = new OpCode(§_-Ch§,3,3,0);
         §_-VV§[§_-94§] = new OpCode(§_-94§,3,4,0);
         §_-VV§[§_-Ol§] = new OpCode(§_-Ol§,2,5,0);
         §_-VV§[§_-1x§] = new OpCode(§_-1x§,3,6,0);
         §_-VV§[§_-Jn§] = new OpCode(§_-Jn§,3,7,0);
         §_-VV§[§_-4H§] = new OpCode(§_-4H§,2,8,0);
         §_-VV§[§_-Hf§] = new OpCode(§_-Hf§,2,9,0);
         §_-VV§[§_-KP§] = new OpCode(§_-KP§,2,10,0);
         §_-VV§[§_-hN§] = new OpCode(§_-hN§,3,11,0);
         §_-VV§[§_-6J§] = new OpCode(§_-6J§,2,12,0);
         §_-VV§[§_-Tv§] = new OpCode(§_-Tv§,2,13,0);
         §_-VV§[§_-Ad§] = new OpCode(§_-Ad§,2,14,0);
         §_-VV§[§_-I2§] = new OpCode(§_-I2§,2,15,0);
         §_-VV§[§_-ul§] = new OpCode(§_-ul§,2,16,0);
         §_-VV§[§_-pI§] = new OpCode(§_-pI§,3,17,0);
         §_-VV§[DP3] = new OpCode(DP3,3,18,0);
         §_-VV§[DP4] = new OpCode(DP4,3,19,0);
         §_-VV§[§_-Gw§] = new OpCode(§_-Gw§,2,20,0);
         §_-VV§[§_-zb§] = new OpCode(§_-zb§,2,21,0);
         §_-VV§[§_-ce§] = new OpCode(§_-ce§,2,22,0);
         §_-VV§[M33] = new OpCode(M33,3,23,§_-s1§);
         §_-VV§[M44] = new OpCode(M44,3,24,§_-s1§);
         §_-VV§[M34] = new OpCode(M34,3,25,§_-s1§);
         §_-VV§[§_-Oc§] = new OpCode(§_-Oc§,1,26,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-b3§] = new OpCode(§_-b3§,1,27,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-XU§] = new OpCode(§_-XU§,2,28,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-qH§] = new OpCode(§_-qH§,2,29,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-fY§] = new OpCode(§_-fY§,2,30,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-P7§] = new OpCode(§_-P7§,2,31,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-3I§] = new OpCode(§_-3I§,2,32,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-km§] = new OpCode(§_-km§,2,33,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-i4§] = new OpCode(§_-i4§,0,34,§_-r6§ | §for§ | §_-xp§);
         §_-VV§[§_-sH§] = new OpCode(§_-sH§,0,35,§_-r6§ | §_-xp§);
         §_-VV§[§_-bq§] = new OpCode(§_-bq§,1,36,§_-r6§ | §for§ | §_-RN§);
         §_-VV§[§_-Mh§] = new OpCode(§_-Mh§,0,37,§_-r6§ | §_-xp§);
         §_-VV§[§_-hL§] = new OpCode(§_-hL§,0,38,§_-r6§);
         §_-VV§[§_-1r§] = new OpCode(§_-1r§,1,39,§_-r6§ | §_-EM§);
         §_-VV§[§_-lB§] = new OpCode(§_-lB§,3,40,§_-EM§ | §_-kJ§);
         §_-VV§[§_-W§] = new OpCode(§_-W§,3,41,0);
         §_-VV§[§with§] = new OpCode(§with§,3,42,0);
         §_-VV§[§_-No§] = new OpCode(§_-No§,2,43,0);
         §_-Sq§[§_-SM§] = new Register(§_-SM§,"vertex attribute",0,7,§_-cc§ | §_-yI§);
         §_-Sq§[§_-pe§] = new Register(§_-pe§,"vertex constant",1,127,§_-cc§ | §_-yI§);
         §_-Sq§[§import§] = new Register(§import§,"vertex temporary",2,7,§_-cc§ | §_-yr§ | §_-yI§);
         §_-Sq§[§_-fP§] = new Register(§_-fP§,"vertex output",3,0,§_-cc§ | §_-yr§);
         §_-Sq§[§_-ph§] = new Register(§_-ph§,"varying",4,7,§_-cc§ | §_-yz§ | §_-yI§ | §_-yr§);
         §_-Sq§[§_-Ik§] = new Register(§_-Ik§,"fragment constant",1,27,§_-yz§ | §_-yI§);
         §_-Sq§[§_-p6§] = new Register(§_-p6§,"fragment temporary",2,7,§_-yz§ | §_-yr§ | §_-yI§);
         §_-Sq§[§_-kG§] = new Register(§_-kG§,"texture sampler",5,7,§_-yz§ | §_-yI§);
         §_-Sq§[§_-nm§] = new Register(§_-nm§,"fragment output",3,0,§_-yz§ | §_-yr§);
         §_-Ev§[D2] = new Sampler(D2,§_-fW§,0);
         §_-Ev§[D3] = new Sampler(D3,§_-fW§,2);
         §_-Ev§[§_-fL§] = new Sampler(§_-fL§,§_-fW§,1);
         §_-Ev§[§_-of§] = new Sampler(§_-of§,§_-mR§,1);
         §_-Ev§[§_-qf§] = new Sampler(§_-qf§,§_-mR§,2);
         §_-Ev§[§_-gU§] = new Sampler(§_-gU§,§_-mR§,0);
         §_-Ev§[§_-y0§] = new Sampler(§_-y0§,§_-mR§,0);
         §_-Ev§[§_-mU§] = new Sampler(§_-mU§,§_-43§,0);
         §_-Ev§[§_-yD§] = new Sampler(§_-yD§,§_-43§,1);
         §_-Ev§[§_-5k§] = new Sampler(§_-5k§,§_-4l§,1 << 0);
         §_-Ev§[§_-hc§] = new Sampler(§_-hc§,§_-4l§,1 << 1);
         §_-Ev§[§_-UD§] = new Sampler(§_-UD§,§_-4l§,1 << 2);
         §_-Ev§[§_-RV§] = new Sampler(§_-RV§,§_-g7§,1);
         §_-Ev§[§_-Dm§] = new Sampler(§_-Dm§,§_-g7§,1);
         §_-Ev§[§_-b1§] = new Sampler(§_-b1§,§_-g7§,0);
      }
      
      public function get error() : String
      {
         return this.§_-c8§;
      }
      
      public function get §_-Ob§() : ByteArray
      {
         return this.§_-fH§;
      }
      
      public function §_-xm§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-fH§ = new ByteArray();
         this.§_-c8§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-c8§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-Ob§.endian = Endian.LITTLE_ENDIAN;
         this.§_-Ob§.writeByte(160);
         this.§_-Ob§.writeUnsignedInt(1);
         this.§_-Ob§.writeByte(161);
         this.§_-Ob§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-c8§ == "")
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
            _loc16_ = §_-VV§[_loc15_[0]];
            if(!this.§_-es§)
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
               if(_loc16_.flags & §_-xp§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-c8§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §for§)
               {
                  _loc7_++;
                  if(_loc7_ > § try§)
                  {
                     this.§_-c8§ = "error: nesting to deep, maximum allowed is " + § try§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-EM§ && !_loc5_)
               {
                  this.§_-c8§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-Ob§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-io§)
               {
                  this.§_-c8§ = "error: too many opcodes. maximum is " + §_-io§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-c8§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-Sq§[_loc24_[0]];
                  if(!this.§_-es§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-c8§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-yz§))
                     {
                        this.§_-c8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-c8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-cc§))
                  {
                     this.§_-c8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-c8§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-r6§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-kJ§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-c8§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-Sq§[_loc38_[0]]) == null)
                     {
                        this.§_-c8§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-c8§ = "error: bad index register select";
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
                        this.§_-c8§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-Ob§.writeShort(_loc27_);
                     this.§_-Ob§.writeByte(_loc28_);
                     this.§_-Ob§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-Ev§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-4l§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-Ob§.writeShort(_loc27_);
                     this.§_-Ob§.writeByte(int(_loc44_ * 8));
                     this.§_-Ob§.writeByte(0);
                     this.§_-Ob§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-Ob§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-Ob§.writeShort(_loc27_);
                     this.§_-Ob§.writeByte(_loc34_);
                     this.§_-Ob§.writeByte(_loc28_);
                     this.§_-Ob§.writeByte(_loc25_.emitCode);
                     this.§_-Ob§.writeByte(_loc32_);
                     this.§_-Ob§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-Ob§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-c8§ != "")
         {
            this.§_-c8§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-Ob§.length = 0;
         }
         if(this.§_-es§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-Ob§.length;
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
               if((_loc49_ = this.§_-Ob§[_loc48_].toString(16)).length < 2)
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
         return this.§_-Ob§;
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
