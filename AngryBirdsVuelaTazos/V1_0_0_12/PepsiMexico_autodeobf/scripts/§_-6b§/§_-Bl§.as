package §_-6b§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-Bl§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-IF§:Dictionary = new Dictionary();
      
      private static const §_-FX§:Dictionary = new Dictionary();
      
      private static const §_-av§:Dictionary = new Dictionary();
      
      private static const §_-dr§:int = 4;
      
      private static const §_-jp§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-Hp§:uint = 12;
      
      private static const §_-22§:uint = 16;
      
      private static const §_-Ek§:uint = 20;
      
      private static const §_-k6§:uint = 24;
      
      private static const §_-Cb§:uint = 28;
      
      private static const §_-j3§:uint = 1;
      
      private static const §_-7Z§:uint = 2;
      
      private static const §_-Q4§:uint = 32;
      
      private static const §_-BQ§:uint = 64;
      
      private static const §_-tp§:uint = 1;
      
      private static const §_-E9§:uint = 2;
      
      private static const §_-br§:uint = 4;
      
      private static const §_-LR§:uint = 8;
      
      private static const §_-J0§:uint = 16;
      
      private static const §_-fz§:uint = 32;
      
      private static const §_-MP§:uint = 64;
      
      private static const §_-ao§:uint = 128;
      
      private static const §_-Ni§:String = "mov";
      
      private static const §_-wy§:String = "add";
      
      private static const §_-1D§:String = "sub";
      
      private static const §_-nZ§:String = "mul";
      
      private static const §_-Cn§:String = "div";
      
      private static const §_-wd§:String = "rcp";
      
      private static const §_-v4§:String = "min";
      
      private static const §_-aO§:String = "max";
      
      private static const §_-Xq§:String = "frc";
      
      private static const §_-qk§:String = "sqt";
      
      private static const §_-MV§:String = "rsq";
      
      private static const §_-hh§:String = "pow";
      
      private static const §_-ve§:String = "log";
      
      private static const §_-eY§:String = "exp";
      
      private static const §_-9k§:String = "nrm";
      
      private static const §_-Ma§:String = "sin";
      
      private static const §in §:String = "cos";
      
      private static const §_-Vk§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-US§:String = "abs";
      
      private static const §_-4f§:String = "neg";
      
      private static const § do§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-hg§:String = "ifz";
      
      private static const §_-3i§:String = "inz";
      
      private static const §_-Qy§:String = "ife";
      
      private static const §_-Wy§:String = "ine";
      
      private static const §_-Yj§:String = "ifg";
      
      private static const §_-NY§:String = "ifl";
      
      private static const §_-U2§:String = "ieg";
      
      private static const §_-Jq§:String = "iel";
      
      private static const §_-uQ§:String = "els";
      
      private static const §_-u6§:String = "eif";
      
      private static const §_-sW§:String = "rep";
      
      private static const §_-Iz§:String = "erp";
      
      private static const §_-3h§:String = "brk";
      
      private static const §_-Vo§:String = "kil";
      
      private static const §_-6d§:String = "tex";
      
      private static const §_-8S§:String = "sge";
      
      private static const §_-sh§:String = "slt";
      
      private static const §_-a5§:String = "sgn";
      
      private static const §default§:String = "va";
      
      private static const §_-Kp§:String = "vc";
      
      private static const §_-GO§:String = "vt";
      
      private static const §_-OC§:String = "op";
      
      private static const §_-Dt§:String = "v";
      
      private static const §_-mg§:String = "fc";
      
      private static const §_-Xw§:String = "ft";
      
      private static const §_-FM§:String = "fs";
      
      private static const §_-w-§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-qm§:String = "cube";
      
      private static const §_-An§:String = "mipnearest";
      
      private static const §_-R4§:String = "miplinear";
      
      private static const §_-kq§:String = "mipnone";
      
      private static const §_-Fn§:String = "nomip";
      
      private static const §_-Aq§:String = "nearest";
      
      private static const §_-8A§:String = "linear";
      
      private static const §_-wu§:String = "centroid";
      
      private static const §_-Z1§:String = "single";
      
      private static const §_-k4§:String = "depth";
      
      private static const §_-5W§:String = "repeat";
      
      private static const §_-YQ§:String = "wrap";
      
      private static const §_-W4§:String = "clamp";
       
      
      private var §_-hN§:ByteArray = null;
      
      private var §_-UG§:String = "";
      
      private var §_-5w§:Boolean = false;
      
      public function §_-Bl§(param1:Boolean = false)
      {
         super();
         this.§_-5w§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-IF§[§_-Ni§] = new OpCode(§_-Ni§,2,0,0);
         §_-IF§[§_-wy§] = new OpCode(§_-wy§,3,1,0);
         §_-IF§[§_-1D§] = new OpCode(§_-1D§,3,2,0);
         §_-IF§[§_-nZ§] = new OpCode(§_-nZ§,3,3,0);
         §_-IF§[§_-Cn§] = new OpCode(§_-Cn§,3,4,0);
         §_-IF§[§_-wd§] = new OpCode(§_-wd§,2,5,0);
         §_-IF§[§_-v4§] = new OpCode(§_-v4§,3,6,0);
         §_-IF§[§_-aO§] = new OpCode(§_-aO§,3,7,0);
         §_-IF§[§_-Xq§] = new OpCode(§_-Xq§,2,8,0);
         §_-IF§[§_-qk§] = new OpCode(§_-qk§,2,9,0);
         §_-IF§[§_-MV§] = new OpCode(§_-MV§,2,10,0);
         §_-IF§[§_-hh§] = new OpCode(§_-hh§,3,11,0);
         §_-IF§[§_-ve§] = new OpCode(§_-ve§,2,12,0);
         §_-IF§[§_-eY§] = new OpCode(§_-eY§,2,13,0);
         §_-IF§[§_-9k§] = new OpCode(§_-9k§,2,14,0);
         §_-IF§[§_-Ma§] = new OpCode(§_-Ma§,2,15,0);
         §_-IF§[§in §] = new OpCode(§in §,2,16,0);
         §_-IF§[§_-Vk§] = new OpCode(§_-Vk§,3,17,0);
         §_-IF§[DP3] = new OpCode(DP3,3,18,0);
         §_-IF§[DP4] = new OpCode(DP4,3,19,0);
         §_-IF§[§_-US§] = new OpCode(§_-US§,2,20,0);
         §_-IF§[§_-4f§] = new OpCode(§_-4f§,2,21,0);
         §_-IF§[§ do§] = new OpCode(§ do§,2,22,0);
         §_-IF§[M33] = new OpCode(M33,3,23,§_-J0§);
         §_-IF§[M44] = new OpCode(M44,3,24,§_-J0§);
         §_-IF§[M34] = new OpCode(M34,3,25,§_-J0§);
         §_-IF§[§_-hg§] = new OpCode(§_-hg§,1,26,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-3i§] = new OpCode(§_-3i§,1,27,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-Qy§] = new OpCode(§_-Qy§,2,28,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-Wy§] = new OpCode(§_-Wy§,2,29,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-Yj§] = new OpCode(§_-Yj§,2,30,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-NY§] = new OpCode(§_-NY§,2,31,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-U2§] = new OpCode(§_-U2§,2,32,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-Jq§] = new OpCode(§_-Jq§,2,33,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-uQ§] = new OpCode(§_-uQ§,0,34,§_-ao§ | §_-E9§ | §_-br§);
         §_-IF§[§_-u6§] = new OpCode(§_-u6§,0,35,§_-ao§ | §_-br§);
         §_-IF§[§_-sW§] = new OpCode(§_-sW§,1,36,§_-ao§ | §_-E9§ | §_-tp§);
         §_-IF§[§_-Iz§] = new OpCode(§_-Iz§,0,37,§_-ao§ | §_-br§);
         §_-IF§[§_-3h§] = new OpCode(§_-3h§,0,38,§_-ao§);
         §_-IF§[§_-Vo§] = new OpCode(§_-Vo§,1,39,§_-ao§ | §_-fz§);
         §_-IF§[§_-6d§] = new OpCode(§_-6d§,3,40,§_-fz§ | §_-LR§);
         §_-IF§[§_-8S§] = new OpCode(§_-8S§,3,41,0);
         §_-IF§[§_-sh§] = new OpCode(§_-sh§,3,42,0);
         §_-IF§[§_-a5§] = new OpCode(§_-a5§,2,43,0);
         §_-FX§[§default§] = new Register(§default§,"vertex attribute",0,7,§_-BQ§ | §_-7Z§);
         §_-FX§[§_-Kp§] = new Register(§_-Kp§,"vertex constant",1,127,§_-BQ§ | §_-7Z§);
         §_-FX§[§_-GO§] = new Register(§_-GO§,"vertex temporary",2,7,§_-BQ§ | §_-j3§ | §_-7Z§);
         §_-FX§[§_-OC§] = new Register(§_-OC§,"vertex output",3,0,§_-BQ§ | §_-j3§);
         §_-FX§[§_-Dt§] = new Register(§_-Dt§,"varying",4,7,§_-BQ§ | §_-Q4§ | §_-7Z§ | §_-j3§);
         §_-FX§[§_-mg§] = new Register(§_-mg§,"fragment constant",1,27,§_-Q4§ | §_-7Z§);
         §_-FX§[§_-Xw§] = new Register(§_-Xw§,"fragment temporary",2,7,§_-Q4§ | §_-j3§ | §_-7Z§);
         §_-FX§[§_-FM§] = new Register(§_-FM§,"texture sampler",5,7,§_-Q4§ | §_-7Z§);
         §_-FX§[§_-w-§] = new Register(§_-w-§,"fragment output",3,0,§_-Q4§ | §_-j3§);
         §_-av§[D2] = new Sampler(D2,§_-Hp§,0);
         §_-av§[D3] = new Sampler(D3,§_-Hp§,2);
         §_-av§[§_-qm§] = new Sampler(§_-qm§,§_-Hp§,1);
         §_-av§[§_-An§] = new Sampler(§_-An§,§_-k6§,1);
         §_-av§[§_-R4§] = new Sampler(§_-R4§,§_-k6§,2);
         §_-av§[§_-kq§] = new Sampler(§_-kq§,§_-k6§,0);
         §_-av§[§_-Fn§] = new Sampler(§_-Fn§,§_-k6§,0);
         §_-av§[§_-Aq§] = new Sampler(§_-Aq§,§_-Cb§,0);
         §_-av§[§_-8A§] = new Sampler(§_-8A§,§_-Cb§,1);
         §_-av§[§_-wu§] = new Sampler(§_-wu§,§_-22§,1 << 0);
         §_-av§[§_-Z1§] = new Sampler(§_-Z1§,§_-22§,1 << 1);
         §_-av§[§_-k4§] = new Sampler(§_-k4§,§_-22§,1 << 2);
         §_-av§[§_-5W§] = new Sampler(§_-5W§,§_-Ek§,1);
         §_-av§[§_-YQ§] = new Sampler(§_-YQ§,§_-Ek§,1);
         §_-av§[§_-W4§] = new Sampler(§_-W4§,§_-Ek§,0);
      }
      
      public function get error() : String
      {
         return this.§_-UG§;
      }
      
      public function get §_-AN§() : ByteArray
      {
         return this.§_-hN§;
      }
      
      public function §_-C§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-hN§ = new ByteArray();
         this.§_-UG§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-UG§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-AN§.endian = Endian.LITTLE_ENDIAN;
         this.§_-AN§.writeByte(160);
         this.§_-AN§.writeUnsignedInt(1);
         this.§_-AN§.writeByte(161);
         this.§_-AN§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-UG§ == "")
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
            _loc16_ = §_-IF§[_loc15_[0]];
            if(!this.§_-5w§)
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
               if(_loc16_.flags & §_-br§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-UG§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-E9§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-dr§)
                  {
                     this.§_-UG§ = "error: nesting to deep, maximum allowed is " + §_-dr§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-fz§ && !_loc5_)
               {
                  this.§_-UG§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-AN§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-jp§)
               {
                  this.§_-UG§ = "error: too many opcodes. maximum is " + §_-jp§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-UG§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-FX§[_loc24_[0]];
                  if(!this.§_-5w§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-UG§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-Q4§))
                     {
                        this.§_-UG§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-UG§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-BQ§))
                  {
                     this.§_-UG§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-UG§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-ao§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-LR§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-UG§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-FX§[_loc38_[0]]) == null)
                     {
                        this.§_-UG§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-UG§ = "error: bad index register select";
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
                        this.§_-UG§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-AN§.writeShort(_loc27_);
                     this.§_-AN§.writeByte(_loc28_);
                     this.§_-AN§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-av§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-22§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-AN§.writeShort(_loc27_);
                     this.§_-AN§.writeByte(int(_loc44_ * 8));
                     this.§_-AN§.writeByte(0);
                     this.§_-AN§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-AN§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-AN§.writeShort(_loc27_);
                     this.§_-AN§.writeByte(_loc34_);
                     this.§_-AN§.writeByte(_loc28_);
                     this.§_-AN§.writeByte(_loc25_.emitCode);
                     this.§_-AN§.writeByte(_loc32_);
                     this.§_-AN§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-AN§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-UG§ != "")
         {
            this.§_-UG§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-AN§.length = 0;
         }
         if(this.§_-5w§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-AN§.length;
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
               if((_loc49_ = this.§_-AN§[_loc48_].toString(16)).length < 2)
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
         return this.§_-AN§;
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
