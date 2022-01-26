package §_-OE§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-tC§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-du§:Dictionary = new Dictionary();
      
      private static const §_-Dc§:Dictionary = new Dictionary();
      
      private static const §_-lL§:Dictionary = new Dictionary();
      
      private static const §_-lX§:int = 4;
      
      private static const §_-HO§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-Gn§:uint = 12;
      
      private static const §_-1s§:uint = 16;
      
      private static const §_-mG§:uint = 20;
      
      private static const §_-rJ§:uint = 24;
      
      private static const §_-kS§:uint = 28;
      
      private static const §_-Zb§:uint = 1;
      
      private static const §_-Gv§:uint = 2;
      
      private static const §_-4S§:uint = 32;
      
      private static const §_-lW§:uint = 64;
      
      private static const §_-FE§:uint = 1;
      
      private static const §_-Wd§:uint = 2;
      
      private static const §_-dA§:uint = 4;
      
      private static const §_-D6§:uint = 8;
      
      private static const §_-8S§:uint = 16;
      
      private static const §_-tP§:uint = 32;
      
      private static const §_-q§:uint = 64;
      
      private static const §_-f9§:uint = 128;
      
      private static const §_-wU§:String = "mov";
      
      private static const §_-SN§:String = "add";
      
      private static const §_-bR§:String = "sub";
      
      private static const §_-eh§:String = "mul";
      
      private static const §_-ZL§:String = "div";
      
      private static const §_-rt§:String = "rcp";
      
      private static const §_-7D§:String = "min";
      
      private static const §_-ac§:String = "max";
      
      private static const §_-N6§:String = "frc";
      
      private static const §_-IY§:String = "sqt";
      
      private static const §_-cm§:String = "rsq";
      
      private static const §_-h4§:String = "pow";
      
      private static const §_-Uu§:String = "log";
      
      private static const §_-Bw§:String = "exp";
      
      private static const §_-gB§:String = "nrm";
      
      private static const §_-2Q§:String = "sin";
      
      private static const §_-CQ§:String = "cos";
      
      private static const §_-jy§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-4d§:String = "abs";
      
      private static const §_-PN§:String = "neg";
      
      private static const §_-bf§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-Ik§:String = "ifz";
      
      private static const §_-tU§:String = "inz";
      
      private static const §_-ix§:String = "ife";
      
      private static const §_-dW§:String = "ine";
      
      private static const §_-LR§:String = "ifg";
      
      private static const §_-RG§:String = "ifl";
      
      private static const §_-cd§:String = "ieg";
      
      private static const §_-Gk§:String = "iel";
      
      private static const §_-Y§:String = "els";
      
      private static const §_-gx§:String = "eif";
      
      private static const §_-V8§:String = "rep";
      
      private static const §_-PL§:String = "erp";
      
      private static const §_-s6§:String = "brk";
      
      private static const §_-7G§:String = "kil";
      
      private static const §_-RY§:String = "tex";
      
      private static const §_-Sz§:String = "sge";
      
      private static const §_-8a§:String = "slt";
      
      private static const §_-WR§:String = "sgn";
      
      private static const §_-nP§:String = "va";
      
      private static const §_-G1§:String = "vc";
      
      private static const §_-Br§:String = "vt";
      
      private static const §_-gG§:String = "op";
      
      private static const §_-7p§:String = "v";
      
      private static const §_-Ki§:String = "fc";
      
      private static const §_-bv§:String = "ft";
      
      private static const §_-VV§:String = "fs";
      
      private static const §_-bZ§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-WI§:String = "cube";
      
      private static const §_-ZA§:String = "mipnearest";
      
      private static const §_-Rk§:String = "miplinear";
      
      private static const §_-cr§:String = "mipnone";
      
      private static const §_-dF§:String = "nomip";
      
      private static const §_-tv§:String = "nearest";
      
      private static const §_-0c§:String = "linear";
      
      private static const §_-A6§:String = "centroid";
      
      private static const §_-xx§:String = "single";
      
      private static const § set§:String = "depth";
      
      private static const §_-rG§:String = "repeat";
      
      private static const §_-vY§:String = "wrap";
      
      private static const §_-RX§:String = "clamp";
       
      
      private var §_-0Y§:ByteArray = null;
      
      private var §_-D1§:String = "";
      
      private var §_-am§:Boolean = false;
      
      public function §_-tC§(param1:Boolean = false)
      {
         super();
         this.§_-am§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-du§[§_-wU§] = new OpCode(§_-wU§,2,0,0);
         §_-du§[§_-SN§] = new OpCode(§_-SN§,3,1,0);
         §_-du§[§_-bR§] = new OpCode(§_-bR§,3,2,0);
         §_-du§[§_-eh§] = new OpCode(§_-eh§,3,3,0);
         §_-du§[§_-ZL§] = new OpCode(§_-ZL§,3,4,0);
         §_-du§[§_-rt§] = new OpCode(§_-rt§,2,5,0);
         §_-du§[§_-7D§] = new OpCode(§_-7D§,3,6,0);
         §_-du§[§_-ac§] = new OpCode(§_-ac§,3,7,0);
         §_-du§[§_-N6§] = new OpCode(§_-N6§,2,8,0);
         §_-du§[§_-IY§] = new OpCode(§_-IY§,2,9,0);
         §_-du§[§_-cm§] = new OpCode(§_-cm§,2,10,0);
         §_-du§[§_-h4§] = new OpCode(§_-h4§,3,11,0);
         §_-du§[§_-Uu§] = new OpCode(§_-Uu§,2,12,0);
         §_-du§[§_-Bw§] = new OpCode(§_-Bw§,2,13,0);
         §_-du§[§_-gB§] = new OpCode(§_-gB§,2,14,0);
         §_-du§[§_-2Q§] = new OpCode(§_-2Q§,2,15,0);
         §_-du§[§_-CQ§] = new OpCode(§_-CQ§,2,16,0);
         §_-du§[§_-jy§] = new OpCode(§_-jy§,3,17,0);
         §_-du§[DP3] = new OpCode(DP3,3,18,0);
         §_-du§[DP4] = new OpCode(DP4,3,19,0);
         §_-du§[§_-4d§] = new OpCode(§_-4d§,2,20,0);
         §_-du§[§_-PN§] = new OpCode(§_-PN§,2,21,0);
         §_-du§[§_-bf§] = new OpCode(§_-bf§,2,22,0);
         §_-du§[M33] = new OpCode(M33,3,23,§_-8S§);
         §_-du§[M44] = new OpCode(M44,3,24,§_-8S§);
         §_-du§[M34] = new OpCode(M34,3,25,§_-8S§);
         §_-du§[§_-Ik§] = new OpCode(§_-Ik§,1,26,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-tU§] = new OpCode(§_-tU§,1,27,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-ix§] = new OpCode(§_-ix§,2,28,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-dW§] = new OpCode(§_-dW§,2,29,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-LR§] = new OpCode(§_-LR§,2,30,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-RG§] = new OpCode(§_-RG§,2,31,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-cd§] = new OpCode(§_-cd§,2,32,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-Gk§] = new OpCode(§_-Gk§,2,33,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-Y§] = new OpCode(§_-Y§,0,34,§_-f9§ | §_-Wd§ | §_-dA§);
         §_-du§[§_-gx§] = new OpCode(§_-gx§,0,35,§_-f9§ | §_-dA§);
         §_-du§[§_-V8§] = new OpCode(§_-V8§,1,36,§_-f9§ | §_-Wd§ | §_-FE§);
         §_-du§[§_-PL§] = new OpCode(§_-PL§,0,37,§_-f9§ | §_-dA§);
         §_-du§[§_-s6§] = new OpCode(§_-s6§,0,38,§_-f9§);
         §_-du§[§_-7G§] = new OpCode(§_-7G§,1,39,§_-f9§ | §_-tP§);
         §_-du§[§_-RY§] = new OpCode(§_-RY§,3,40,§_-tP§ | §_-D6§);
         §_-du§[§_-Sz§] = new OpCode(§_-Sz§,3,41,0);
         §_-du§[§_-8a§] = new OpCode(§_-8a§,3,42,0);
         §_-du§[§_-WR§] = new OpCode(§_-WR§,2,43,0);
         §_-Dc§[§_-nP§] = new Register(§_-nP§,"vertex attribute",0,7,§_-lW§ | §_-Gv§);
         §_-Dc§[§_-G1§] = new Register(§_-G1§,"vertex constant",1,127,§_-lW§ | §_-Gv§);
         §_-Dc§[§_-Br§] = new Register(§_-Br§,"vertex temporary",2,7,§_-lW§ | §_-Zb§ | §_-Gv§);
         §_-Dc§[§_-gG§] = new Register(§_-gG§,"vertex output",3,0,§_-lW§ | §_-Zb§);
         §_-Dc§[§_-7p§] = new Register(§_-7p§,"varying",4,7,§_-lW§ | §_-4S§ | §_-Gv§ | §_-Zb§);
         §_-Dc§[§_-Ki§] = new Register(§_-Ki§,"fragment constant",1,27,§_-4S§ | §_-Gv§);
         §_-Dc§[§_-bv§] = new Register(§_-bv§,"fragment temporary",2,7,§_-4S§ | §_-Zb§ | §_-Gv§);
         §_-Dc§[§_-VV§] = new Register(§_-VV§,"texture sampler",5,7,§_-4S§ | §_-Gv§);
         §_-Dc§[§_-bZ§] = new Register(§_-bZ§,"fragment output",3,0,§_-4S§ | §_-Zb§);
         §_-lL§[D2] = new Sampler(D2,§_-Gn§,0);
         §_-lL§[D3] = new Sampler(D3,§_-Gn§,2);
         §_-lL§[§_-WI§] = new Sampler(§_-WI§,§_-Gn§,1);
         §_-lL§[§_-ZA§] = new Sampler(§_-ZA§,§_-rJ§,1);
         §_-lL§[§_-Rk§] = new Sampler(§_-Rk§,§_-rJ§,2);
         §_-lL§[§_-cr§] = new Sampler(§_-cr§,§_-rJ§,0);
         §_-lL§[§_-dF§] = new Sampler(§_-dF§,§_-rJ§,0);
         §_-lL§[§_-tv§] = new Sampler(§_-tv§,§_-kS§,0);
         §_-lL§[§_-0c§] = new Sampler(§_-0c§,§_-kS§,1);
         §_-lL§[§_-A6§] = new Sampler(§_-A6§,§_-1s§,1 << 0);
         §_-lL§[§_-xx§] = new Sampler(§_-xx§,§_-1s§,1 << 1);
         §_-lL§[§ set§] = new Sampler(§ set§,§_-1s§,1 << 2);
         §_-lL§[§_-rG§] = new Sampler(§_-rG§,§_-mG§,1);
         §_-lL§[§_-vY§] = new Sampler(§_-vY§,§_-mG§,1);
         §_-lL§[§_-RX§] = new Sampler(§_-RX§,§_-mG§,0);
      }
      
      public function get error() : String
      {
         return this.§_-D1§;
      }
      
      public function get §_-8F§() : ByteArray
      {
         return this.§_-0Y§;
      }
      
      public function §_-S2§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-0Y§ = new ByteArray();
         this.§_-D1§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-D1§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-8F§.endian = Endian.LITTLE_ENDIAN;
         this.§_-8F§.writeByte(160);
         this.§_-8F§.writeUnsignedInt(1);
         this.§_-8F§.writeByte(161);
         this.§_-8F§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-D1§ == "")
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
            _loc16_ = §_-du§[_loc15_[0]];
            if(!this.§_-am§)
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
               if(_loc16_.flags & §_-dA§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-D1§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-Wd§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-lX§)
                  {
                     this.§_-D1§ = "error: nesting to deep, maximum allowed is " + §_-lX§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-tP§ && !_loc5_)
               {
                  this.§_-D1§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-8F§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-HO§)
               {
                  this.§_-D1§ = "error: too many opcodes. maximum is " + §_-HO§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-D1§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-Dc§[_loc24_[0]];
                  if(!this.§_-am§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-D1§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-4S§))
                     {
                        this.§_-D1§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-D1§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-lW§))
                  {
                     this.§_-D1§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-D1§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-f9§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-D6§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-D1§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-Dc§[_loc38_[0]]) == null)
                     {
                        this.§_-D1§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-D1§ = "error: bad index register select";
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
                        this.§_-D1§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-8F§.writeShort(_loc27_);
                     this.§_-8F§.writeByte(_loc28_);
                     this.§_-8F§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-lL§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-1s§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-8F§.writeShort(_loc27_);
                     this.§_-8F§.writeByte(int(_loc44_ * 8));
                     this.§_-8F§.writeByte(0);
                     this.§_-8F§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-8F§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-8F§.writeShort(_loc27_);
                     this.§_-8F§.writeByte(_loc34_);
                     this.§_-8F§.writeByte(_loc28_);
                     this.§_-8F§.writeByte(_loc25_.emitCode);
                     this.§_-8F§.writeByte(_loc32_);
                     this.§_-8F§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-8F§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-D1§ != "")
         {
            this.§_-D1§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-8F§.length = 0;
         }
         if(this.§_-am§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-8F§.length;
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
               if((_loc49_ = this.§_-8F§[_loc48_].toString(16)).length < 2)
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
         return this.§_-8F§;
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
