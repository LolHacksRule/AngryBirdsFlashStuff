package §_-0Y§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §else §
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-lo§:Dictionary = new Dictionary();
      
      private static const §_-gU§:Dictionary = new Dictionary();
      
      private static const §_-3O§:Dictionary = new Dictionary();
      
      private static const §_-t§:int = 4;
      
      private static const §_-YJ§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-oR§:uint = 12;
      
      private static const §_-Ii§:uint = 16;
      
      private static const §_-40§:uint = 20;
      
      private static const §_-nl§:uint = 24;
      
      private static const §_-Rf§:uint = 28;
      
      private static const §_-px§:uint = 1;
      
      private static const §_-cQ§:uint = 2;
      
      private static const §_-OM§:uint = 32;
      
      private static const §_-Rz§:uint = 64;
      
      private static const §_-Jm§:uint = 1;
      
      private static const §_-EZ§:uint = 2;
      
      private static const §_-j6§:uint = 4;
      
      private static const §_-c3§:uint = 8;
      
      private static const §_-V8§:uint = 16;
      
      private static const §_-c0§:uint = 32;
      
      private static const §_-8t§:uint = 128;
      
      private static const §_-Ne§:String = "mov";
      
      private static const §_-bf§:String = "add";
      
      private static const §_-TZ§:String = "sub";
      
      private static const §_-T8§:String = "mul";
      
      private static const §_-MO§:String = "div";
      
      private static const §_-7D§:String = "rcp";
      
      private static const §_-j5§:String = "min";
      
      private static const §_-f3§:String = "max";
      
      private static const §_-bU§:String = "frc";
      
      private static const §_-oq§:String = "sqt";
      
      private static const §_-5x§:String = "rsq";
      
      private static const §_-04§:String = "pow";
      
      private static const §_-19§:String = "log";
      
      private static const §_-Lr§:String = "exp";
      
      private static const §_-bG§:String = "nrm";
      
      private static const §_-Ao§:String = "sin";
      
      private static const §_-gh§:String = "cos";
      
      private static const §_-0-c§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-A7§:String = "abs";
      
      private static const §_-gR§:String = "neg";
      
      private static const §_-0x§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-3G§:String = "ifz";
      
      private static const §_-UH§:String = "inz";
      
      private static const §_-lE§:String = "ife";
      
      private static const §_-aW§:String = "ine";
      
      private static const §_-ze§:String = "ifg";
      
      private static const §_-0-j§:String = "ifl";
      
      private static const §_-Zj§:String = "ieg";
      
      private static const §_-N9§:String = "iel";
      
      private static const §_-LW§:String = "els";
      
      private static const §_-Nf§:String = "eif";
      
      private static const §_-GY§:String = "rep";
      
      private static const §_-h7§:String = "erp";
      
      private static const §_-uu§:String = "brk";
      
      private static const §_-1d§:String = "kil";
      
      private static const §_-30§:String = "tex";
      
      private static const §_-rB§:String = "sge";
      
      private static const §_-2S§:String = "slt";
      
      private static const §_-Zx§:String = "sgn";
      
      private static const §_-0h§:String = "va";
      
      private static const §_-TE§:String = "vc";
      
      private static const §_-5K§:String = "vt";
      
      private static const §_-e4§:String = "op";
      
      private static const §_-XG§:String = "v";
      
      private static const §_-Z7§:String = "fc";
      
      private static const §_-H4§:String = "ft";
      
      private static const §_-Rk§:String = "fs";
      
      private static const §_-3e§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-dz§:String = "cube";
      
      private static const §_-wt§:String = "mipnearest";
      
      private static const §_-un§:String = "miplinear";
      
      private static const §_-x6§:String = "mipnone";
      
      private static const §_-lV§:String = "nomip";
      
      private static const §_-Kk§:String = "nearest";
      
      private static const §_-zX§:String = "linear";
      
      private static const §_-Ei§:String = "centroid";
      
      private static const §_-Rc§:String = "single";
      
      private static const §_-74§:String = "depth";
      
      private static const §_-ml§:String = "repeat";
      
      private static const §_-s7§:String = "wrap";
      
      private static const §_-p7§:String = "clamp";
       
      
      private var §_-aZ§:ByteArray = null;
      
      private var §_-cC§:String = "";
      
      private var §_-U4§:Boolean = false;
      
      public function §else §(param1:Boolean = false)
      {
         super();
         this.§_-U4§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-lo§[§_-Ne§] = new OpCode(§_-Ne§,2,0,0);
         §_-lo§[§_-bf§] = new OpCode(§_-bf§,3,1,0);
         §_-lo§[§_-TZ§] = new OpCode(§_-TZ§,3,2,0);
         §_-lo§[§_-T8§] = new OpCode(§_-T8§,3,3,0);
         §_-lo§[§_-MO§] = new OpCode(§_-MO§,3,4,0);
         §_-lo§[§_-7D§] = new OpCode(§_-7D§,2,5,0);
         §_-lo§[§_-j5§] = new OpCode(§_-j5§,3,6,0);
         §_-lo§[§_-f3§] = new OpCode(§_-f3§,3,7,0);
         §_-lo§[§_-bU§] = new OpCode(§_-bU§,2,8,0);
         §_-lo§[§_-oq§] = new OpCode(§_-oq§,2,9,0);
         §_-lo§[§_-5x§] = new OpCode(§_-5x§,2,10,0);
         §_-lo§[§_-04§] = new OpCode(§_-04§,3,11,0);
         §_-lo§[§_-19§] = new OpCode(§_-19§,2,12,0);
         §_-lo§[§_-Lr§] = new OpCode(§_-Lr§,2,13,0);
         §_-lo§[§_-bG§] = new OpCode(§_-bG§,2,14,0);
         §_-lo§[§_-Ao§] = new OpCode(§_-Ao§,2,15,0);
         §_-lo§[§_-gh§] = new OpCode(§_-gh§,2,16,0);
         §_-lo§[§_-0-c§] = new OpCode(§_-0-c§,3,17,0);
         §_-lo§[DP3] = new OpCode(DP3,3,18,0);
         §_-lo§[DP4] = new OpCode(DP4,3,19,0);
         §_-lo§[§_-A7§] = new OpCode(§_-A7§,2,20,0);
         §_-lo§[§_-gR§] = new OpCode(§_-gR§,2,21,0);
         §_-lo§[§_-0x§] = new OpCode(§_-0x§,2,22,0);
         §_-lo§[M33] = new OpCode(M33,3,23,§_-V8§);
         §_-lo§[M44] = new OpCode(M44,3,24,§_-V8§);
         §_-lo§[M34] = new OpCode(M34,3,25,§_-V8§);
         §_-lo§[§_-3G§] = new OpCode(§_-3G§,1,26,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-UH§] = new OpCode(§_-UH§,1,27,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-lE§] = new OpCode(§_-lE§,2,28,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-aW§] = new OpCode(§_-aW§,2,29,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-ze§] = new OpCode(§_-ze§,2,30,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-0-j§] = new OpCode(§_-0-j§,2,31,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-Zj§] = new OpCode(§_-Zj§,2,32,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-N9§] = new OpCode(§_-N9§,2,33,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-LW§] = new OpCode(§_-LW§,0,34,§_-8t§ | §_-EZ§ | §_-j6§);
         §_-lo§[§_-Nf§] = new OpCode(§_-Nf§,0,35,§_-8t§ | §_-j6§);
         §_-lo§[§_-GY§] = new OpCode(§_-GY§,1,36,§_-8t§ | §_-EZ§ | §_-Jm§);
         §_-lo§[§_-h7§] = new OpCode(§_-h7§,0,37,§_-8t§ | §_-j6§);
         §_-lo§[§_-uu§] = new OpCode(§_-uu§,0,38,§_-8t§);
         §_-lo§[§_-1d§] = new OpCode(§_-1d§,1,39,§_-8t§ | §_-c0§);
         §_-lo§[§_-30§] = new OpCode(§_-30§,3,40,§_-c0§ | §_-c3§);
         §_-lo§[§_-rB§] = new OpCode(§_-rB§,3,41,0);
         §_-lo§[§_-2S§] = new OpCode(§_-2S§,3,42,0);
         §_-lo§[§_-Zx§] = new OpCode(§_-Zx§,2,43,0);
         §_-gU§[§_-0h§] = new Register(§_-0h§,"vertex attribute",0,7,§_-Rz§ | §_-cQ§);
         §_-gU§[§_-TE§] = new Register(§_-TE§,"vertex constant",1,127,§_-Rz§ | §_-cQ§);
         §_-gU§[§_-5K§] = new Register(§_-5K§,"vertex temporary",2,7,§_-Rz§ | §_-px§ | §_-cQ§);
         §_-gU§[§_-e4§] = new Register(§_-e4§,"vertex output",3,0,§_-Rz§ | §_-px§);
         §_-gU§[§_-XG§] = new Register(§_-XG§,"varying",4,7,§_-Rz§ | §_-OM§ | §_-cQ§ | §_-px§);
         §_-gU§[§_-Z7§] = new Register(§_-Z7§,"fragment constant",1,27,§_-OM§ | §_-cQ§);
         §_-gU§[§_-H4§] = new Register(§_-H4§,"fragment temporary",2,7,§_-OM§ | §_-px§ | §_-cQ§);
         §_-gU§[§_-Rk§] = new Register(§_-Rk§,"texture sampler",5,7,§_-OM§ | §_-cQ§);
         §_-gU§[§_-3e§] = new Register(§_-3e§,"fragment output",3,0,§_-OM§ | §_-px§);
         §_-3O§[D2] = new Sampler(D2,§_-oR§,0);
         §_-3O§[D3] = new Sampler(D3,§_-oR§,2);
         §_-3O§[§_-dz§] = new Sampler(§_-dz§,§_-oR§,1);
         §_-3O§[§_-wt§] = new Sampler(§_-wt§,§_-nl§,1);
         §_-3O§[§_-un§] = new Sampler(§_-un§,§_-nl§,2);
         §_-3O§[§_-x6§] = new Sampler(§_-x6§,§_-nl§,0);
         §_-3O§[§_-lV§] = new Sampler(§_-lV§,§_-nl§,0);
         §_-3O§[§_-Kk§] = new Sampler(§_-Kk§,§_-Rf§,0);
         §_-3O§[§_-zX§] = new Sampler(§_-zX§,§_-Rf§,1);
         §_-3O§[§_-Ei§] = new Sampler(§_-Ei§,§_-Ii§,1 << 0);
         §_-3O§[§_-Rc§] = new Sampler(§_-Rc§,§_-Ii§,1 << 1);
         §_-3O§[§_-74§] = new Sampler(§_-74§,§_-Ii§,1 << 2);
         §_-3O§[§_-ml§] = new Sampler(§_-ml§,§_-40§,1);
         §_-3O§[§_-s7§] = new Sampler(§_-s7§,§_-40§,1);
         §_-3O§[§_-p7§] = new Sampler(§_-p7§,§_-40§,0);
      }
      
      public function get error() : String
      {
         return this.§_-cC§;
      }
      
      public function get §_-Za§() : ByteArray
      {
         return this.§_-aZ§;
      }
      
      public function §_-fn§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-aZ§ = new ByteArray();
         this.§_-cC§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-cC§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-Za§.endian = Endian.LITTLE_ENDIAN;
         this.§_-Za§.writeByte(160);
         this.§_-Za§.writeUnsignedInt(1);
         this.§_-Za§.writeByte(161);
         this.§_-Za§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-cC§ == "")
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
            _loc16_ = §_-lo§[_loc15_[0]];
            if(!this.§_-U4§)
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
               if(_loc16_.flags & §_-j6§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-cC§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-EZ§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-t§)
                  {
                     this.§_-cC§ = "error: nesting to deep, maximum allowed is " + §_-t§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-c0§ && !_loc5_)
               {
                  this.§_-cC§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-Za§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-YJ§)
               {
                  this.§_-cC§ = "error: too many opcodes. maximum is " + §_-YJ§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-cC§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-gU§[_loc24_[0]];
                  if(!this.§_-U4§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-cC§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-OM§))
                     {
                        this.§_-cC§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-cC§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-Rz§))
                  {
                     this.§_-cC§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-cC§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-8t§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-c3§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-cC§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-gU§[_loc38_[0]]) == null)
                     {
                        this.§_-cC§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-cC§ = "error: bad index register select";
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
                        this.§_-cC§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-Za§.writeShort(_loc27_);
                     this.§_-Za§.writeByte(_loc28_);
                     this.§_-Za§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-3O§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-Ii§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-Za§.writeShort(_loc27_);
                     this.§_-Za§.writeByte(int(_loc44_ * 8));
                     this.§_-Za§.writeByte(0);
                     this.§_-Za§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-Za§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-Za§.writeShort(_loc27_);
                     this.§_-Za§.writeByte(_loc34_);
                     this.§_-Za§.writeByte(_loc28_);
                     this.§_-Za§.writeByte(_loc25_.emitCode);
                     this.§_-Za§.writeByte(_loc32_);
                     this.§_-Za§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-Za§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-cC§ != "")
         {
            this.§_-cC§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-Za§.length = 0;
         }
         if(this.§_-U4§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-Za§.length;
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
               if((_loc49_ = this.§_-Za§[_loc48_].toString(16)).length < 2)
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
         return this.§_-Za§;
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
