package §_-gQ§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-KD§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-Qf§:Dictionary = new Dictionary();
      
      private static const §_-NM§:Dictionary = new Dictionary();
      
      private static const §_-Ho§:Dictionary = new Dictionary();
      
      private static const §_-qL§:int = 4;
      
      private static const §_-8m§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-Q4§:uint = 12;
      
      private static const §_-D7§:uint = 16;
      
      private static const §_-4M§:uint = 20;
      
      private static const §_-m§:uint = 24;
      
      private static const §_-A4§:uint = 28;
      
      private static const §_-Wj§:uint = 1;
      
      private static const §_-le§:uint = 2;
      
      private static const §_-bF§:uint = 32;
      
      private static const §_-e2§:uint = 64;
      
      private static const §_-49§:uint = 1;
      
      private static const §_-dD§:uint = 2;
      
      private static const §_-rv§:uint = 4;
      
      private static const §_-b6§:uint = 8;
      
      private static const §_-KT§:uint = 16;
      
      private static const §_-1f§:uint = 32;
      
      private static const §_-rL§:uint = 64;
      
      private static const §_-Kd§:uint = 128;
      
      private static const §_-kN§:String = "mov";
      
      private static const §_-Tu§:String = "add";
      
      private static const §_-kU§:String = "sub";
      
      private static const §_-Lb§:String = "mul";
      
      private static const §_-Nu§:String = "div";
      
      private static const §_-L3§:String = "rcp";
      
      private static const §_-d9§:String = "min";
      
      private static const §_-Pf§:String = "max";
      
      private static const §_-2l§:String = "frc";
      
      private static const §_-03§:String = "sqt";
      
      private static const §_-Sy§:String = "rsq";
      
      private static const §_-x7§:String = "pow";
      
      private static const §_-00F§:String = "log";
      
      private static const §_-lo§:String = "exp";
      
      private static const §_-1o§:String = "nrm";
      
      private static const §_-Oh§:String = "sin";
      
      private static const §_-Ni§:String = "cos";
      
      private static const §_-4X§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-2T§:String = "abs";
      
      private static const §_-Gb§:String = "neg";
      
      private static const §_-3d§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-jj§:String = "ifz";
      
      private static const §_-Nk§:String = "inz";
      
      private static const §_-NT§:String = "ife";
      
      private static const §_-eO§:String = "ine";
      
      private static const §_-Z0§:String = "ifg";
      
      private static const §_-MT§:String = "ifl";
      
      private static const §_-OH§:String = "ieg";
      
      private static const §_-tk§:String = "iel";
      
      private static const §_-00G§:String = "els";
      
      private static const §_-XC§:String = "eif";
      
      private static const §_-pX§:String = "rep";
      
      private static const §_-x0§:String = "erp";
      
      private static const §_-zp§:String = "brk";
      
      private static const §_-vM§:String = "kil";
      
      private static const §_-QB§:String = "tex";
      
      private static const §_-OW§:String = "sge";
      
      private static const §_-lf§:String = "slt";
      
      private static const §_-aF§:String = "sgn";
      
      private static const §_-6j§:String = "va";
      
      private static const §_-WR§:String = "vc";
      
      private static const §_-fV§:String = "vt";
      
      private static const §_-95§:String = "op";
      
      private static const §_-ec§:String = "v";
      
      private static const §_-DR§:String = "fc";
      
      private static const §_-dq§:String = "ft";
      
      private static const §_-VB§:String = "fs";
      
      private static const §_-pG§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-Gs§:String = "cube";
      
      private static const §_-Ta§:String = "mipnearest";
      
      private static const §_-h7§:String = "miplinear";
      
      private static const §_-j2§:String = "mipnone";
      
      private static const §_-Pj§:String = "nomip";
      
      private static const §_-aj§:String = "nearest";
      
      private static const §_-DS§:String = "linear";
      
      private static const §_-Ce§:String = "centroid";
      
      private static const §_-En§:String = "single";
      
      private static const §_-tz§:String = "depth";
      
      private static const §_-zn§:String = "repeat";
      
      private static const §_-5A§:String = "wrap";
      
      private static const §_-r1§:String = "clamp";
       
      
      private var §_-56§:ByteArray = null;
      
      private var §_-f7§:String = "";
      
      private var §_-32§:Boolean = false;
      
      public function §_-KD§(param1:Boolean = false)
      {
         super();
         this.§_-32§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-Qf§[§_-kN§] = new OpCode(§_-kN§,2,0,0);
         §_-Qf§[§_-Tu§] = new OpCode(§_-Tu§,3,1,0);
         §_-Qf§[§_-kU§] = new OpCode(§_-kU§,3,2,0);
         §_-Qf§[§_-Lb§] = new OpCode(§_-Lb§,3,3,0);
         §_-Qf§[§_-Nu§] = new OpCode(§_-Nu§,3,4,0);
         §_-Qf§[§_-L3§] = new OpCode(§_-L3§,2,5,0);
         §_-Qf§[§_-d9§] = new OpCode(§_-d9§,3,6,0);
         §_-Qf§[§_-Pf§] = new OpCode(§_-Pf§,3,7,0);
         §_-Qf§[§_-2l§] = new OpCode(§_-2l§,2,8,0);
         §_-Qf§[§_-03§] = new OpCode(§_-03§,2,9,0);
         §_-Qf§[§_-Sy§] = new OpCode(§_-Sy§,2,10,0);
         §_-Qf§[§_-x7§] = new OpCode(§_-x7§,3,11,0);
         §_-Qf§[§_-00F§] = new OpCode(§_-00F§,2,12,0);
         §_-Qf§[§_-lo§] = new OpCode(§_-lo§,2,13,0);
         §_-Qf§[§_-1o§] = new OpCode(§_-1o§,2,14,0);
         §_-Qf§[§_-Oh§] = new OpCode(§_-Oh§,2,15,0);
         §_-Qf§[§_-Ni§] = new OpCode(§_-Ni§,2,16,0);
         §_-Qf§[§_-4X§] = new OpCode(§_-4X§,3,17,0);
         §_-Qf§[DP3] = new OpCode(DP3,3,18,0);
         §_-Qf§[DP4] = new OpCode(DP4,3,19,0);
         §_-Qf§[§_-2T§] = new OpCode(§_-2T§,2,20,0);
         §_-Qf§[§_-Gb§] = new OpCode(§_-Gb§,2,21,0);
         §_-Qf§[§_-3d§] = new OpCode(§_-3d§,2,22,0);
         §_-Qf§[M33] = new OpCode(M33,3,23,§_-KT§);
         §_-Qf§[M44] = new OpCode(M44,3,24,§_-KT§);
         §_-Qf§[M34] = new OpCode(M34,3,25,§_-KT§);
         §_-Qf§[§_-jj§] = new OpCode(§_-jj§,1,26,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-Nk§] = new OpCode(§_-Nk§,1,27,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-NT§] = new OpCode(§_-NT§,2,28,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-eO§] = new OpCode(§_-eO§,2,29,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-Z0§] = new OpCode(§_-Z0§,2,30,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-MT§] = new OpCode(§_-MT§,2,31,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-OH§] = new OpCode(§_-OH§,2,32,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-tk§] = new OpCode(§_-tk§,2,33,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-00G§] = new OpCode(§_-00G§,0,34,§_-Kd§ | §_-dD§ | §_-rv§);
         §_-Qf§[§_-XC§] = new OpCode(§_-XC§,0,35,§_-Kd§ | §_-rv§);
         §_-Qf§[§_-pX§] = new OpCode(§_-pX§,1,36,§_-Kd§ | §_-dD§ | §_-49§);
         §_-Qf§[§_-x0§] = new OpCode(§_-x0§,0,37,§_-Kd§ | §_-rv§);
         §_-Qf§[§_-zp§] = new OpCode(§_-zp§,0,38,§_-Kd§);
         §_-Qf§[§_-vM§] = new OpCode(§_-vM§,1,39,§_-Kd§ | §_-1f§);
         §_-Qf§[§_-QB§] = new OpCode(§_-QB§,3,40,§_-1f§ | §_-b6§);
         §_-Qf§[§_-OW§] = new OpCode(§_-OW§,3,41,0);
         §_-Qf§[§_-lf§] = new OpCode(§_-lf§,3,42,0);
         §_-Qf§[§_-aF§] = new OpCode(§_-aF§,2,43,0);
         §_-NM§[§_-6j§] = new Register(§_-6j§,"vertex attribute",0,7,§_-e2§ | §_-le§);
         §_-NM§[§_-WR§] = new Register(§_-WR§,"vertex constant",1,127,§_-e2§ | §_-le§);
         §_-NM§[§_-fV§] = new Register(§_-fV§,"vertex temporary",2,7,§_-e2§ | §_-Wj§ | §_-le§);
         §_-NM§[§_-95§] = new Register(§_-95§,"vertex output",3,0,§_-e2§ | §_-Wj§);
         §_-NM§[§_-ec§] = new Register(§_-ec§,"varying",4,7,§_-e2§ | §_-bF§ | §_-le§ | §_-Wj§);
         §_-NM§[§_-DR§] = new Register(§_-DR§,"fragment constant",1,27,§_-bF§ | §_-le§);
         §_-NM§[§_-dq§] = new Register(§_-dq§,"fragment temporary",2,7,§_-bF§ | §_-Wj§ | §_-le§);
         §_-NM§[§_-VB§] = new Register(§_-VB§,"texture sampler",5,7,§_-bF§ | §_-le§);
         §_-NM§[§_-pG§] = new Register(§_-pG§,"fragment output",3,0,§_-bF§ | §_-Wj§);
         §_-Ho§[D2] = new Sampler(D2,§_-Q4§,0);
         §_-Ho§[D3] = new Sampler(D3,§_-Q4§,2);
         §_-Ho§[§_-Gs§] = new Sampler(§_-Gs§,§_-Q4§,1);
         §_-Ho§[§_-Ta§] = new Sampler(§_-Ta§,§_-m§,1);
         §_-Ho§[§_-h7§] = new Sampler(§_-h7§,§_-m§,2);
         §_-Ho§[§_-j2§] = new Sampler(§_-j2§,§_-m§,0);
         §_-Ho§[§_-Pj§] = new Sampler(§_-Pj§,§_-m§,0);
         §_-Ho§[§_-aj§] = new Sampler(§_-aj§,§_-A4§,0);
         §_-Ho§[§_-DS§] = new Sampler(§_-DS§,§_-A4§,1);
         §_-Ho§[§_-Ce§] = new Sampler(§_-Ce§,§_-D7§,1 << 0);
         §_-Ho§[§_-En§] = new Sampler(§_-En§,§_-D7§,1 << 1);
         §_-Ho§[§_-tz§] = new Sampler(§_-tz§,§_-D7§,1 << 2);
         §_-Ho§[§_-zn§] = new Sampler(§_-zn§,§_-4M§,1);
         §_-Ho§[§_-5A§] = new Sampler(§_-5A§,§_-4M§,1);
         §_-Ho§[§_-r1§] = new Sampler(§_-r1§,§_-4M§,0);
      }
      
      public function get error() : String
      {
         return this.§_-f7§;
      }
      
      public function get §_-qx§() : ByteArray
      {
         return this.§_-56§;
      }
      
      public function §_-9Y§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-56§ = new ByteArray();
         this.§_-f7§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-f7§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-qx§.endian = Endian.LITTLE_ENDIAN;
         this.§_-qx§.writeByte(160);
         this.§_-qx§.writeUnsignedInt(1);
         this.§_-qx§.writeByte(161);
         this.§_-qx§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-f7§ == "")
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
            _loc16_ = §_-Qf§[_loc15_[0]];
            if(!this.§_-32§)
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
               if(_loc16_.flags & §_-rv§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-f7§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-dD§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-qL§)
                  {
                     this.§_-f7§ = "error: nesting to deep, maximum allowed is " + §_-qL§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-1f§ && !_loc5_)
               {
                  this.§_-f7§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-qx§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-8m§)
               {
                  this.§_-f7§ = "error: too many opcodes. maximum is " + §_-8m§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-f7§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-NM§[_loc24_[0]];
                  if(!this.§_-32§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-f7§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-bF§))
                     {
                        this.§_-f7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-f7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-e2§))
                  {
                     this.§_-f7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-f7§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-Kd§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-b6§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-f7§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-NM§[_loc38_[0]]) == null)
                     {
                        this.§_-f7§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-f7§ = "error: bad index register select";
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
                        this.§_-f7§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-qx§.writeShort(_loc27_);
                     this.§_-qx§.writeByte(_loc28_);
                     this.§_-qx§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-Ho§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-D7§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-qx§.writeShort(_loc27_);
                     this.§_-qx§.writeByte(int(_loc44_ * 8));
                     this.§_-qx§.writeByte(0);
                     this.§_-qx§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-qx§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-qx§.writeShort(_loc27_);
                     this.§_-qx§.writeByte(_loc34_);
                     this.§_-qx§.writeByte(_loc28_);
                     this.§_-qx§.writeByte(_loc25_.emitCode);
                     this.§_-qx§.writeByte(_loc32_);
                     this.§_-qx§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-qx§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-f7§ != "")
         {
            this.§_-f7§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-qx§.length = 0;
         }
         if(this.§_-32§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-qx§.length;
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
               if((_loc49_ = this.§_-qx§[_loc48_].toString(16)).length < 2)
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
         return this.§_-qx§;
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
