package §_-oa§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-9B§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-Zv§:Dictionary = new Dictionary();
      
      private static const §_-Xx§:Dictionary = new Dictionary();
      
      private static const §_-2h§:Dictionary = new Dictionary();
      
      private static const §_-2Z§:int = 4;
      
      private static const §_-rE§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-ZJ§:uint = 12;
      
      private static const §_-Fz§:uint = 16;
      
      private static const §_-KG§:uint = 20;
      
      private static const §_-pn§:uint = 24;
      
      private static const §_-WH§:uint = 28;
      
      private static const §_-C3§:uint = 1;
      
      private static const §_-0N§:uint = 2;
      
      private static const §_-r9§:uint = 32;
      
      private static const §_-S1§:uint = 64;
      
      private static const §_-CZ§:uint = 1;
      
      private static const §_-U0§:uint = 2;
      
      private static const §_-fa§:uint = 4;
      
      private static const §_-f4§:uint = 8;
      
      private static const §_-kI§:uint = 16;
      
      private static const §_-8M§:uint = 32;
      
      private static const §_-Xt§:uint = 64;
      
      private static const §_-fw§:uint = 128;
      
      private static const §_-NC§:String = "mov";
      
      private static const §_-Xs§:String = "add";
      
      private static const §_-Kq§:String = "sub";
      
      private static const §_-Aj§:String = "mul";
      
      private static const §_-L5§:String = "div";
      
      private static const §_-Be§:String = "rcp";
      
      private static const §_-bD§:String = "min";
      
      private static const §_-ce§:String = "max";
      
      private static const §_-iy§:String = "frc";
      
      private static const §_-PK§:String = "sqt";
      
      private static const §_-yy§:String = "rsq";
      
      private static const §_-By§:String = "pow";
      
      private static const §_-lB§:String = "log";
      
      private static const §_-df§:String = "exp";
      
      private static const §_-YD§:String = "nrm";
      
      private static const §_-l§:String = "sin";
      
      private static const §_-gy§:String = "cos";
      
      private static const §_-Mp§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-TF§:String = "abs";
      
      private static const §_-gI§:String = "neg";
      
      private static const §_-7C§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-Wr§:String = "ifz";
      
      private static const §_-vK§:String = "inz";
      
      private static const §_-ni§:String = "ife";
      
      private static const §_-8l§:String = "ine";
      
      private static const §_-pK§:String = "ifg";
      
      private static const §_-FC§:String = "ifl";
      
      private static const §_-xI§:String = "ieg";
      
      private static const §_-ZP§:String = "iel";
      
      private static const §_-Dn§:String = "els";
      
      private static const §_-dA§:String = "eif";
      
      private static const §_-T0§:String = "rep";
      
      private static const §_-vB§:String = "erp";
      
      private static const §_-lp§:String = "brk";
      
      private static const §else §:String = "kil";
      
      private static const §_-Md§:String = "tex";
      
      private static const §_-jF§:String = "sge";
      
      private static const §_-AM§:String = "slt";
      
      private static const §_-ik§:String = "sgn";
      
      private static const §_-OX§:String = "va";
      
      private static const §_-vo§:String = "vc";
      
      private static const §_-lF§:String = "vt";
      
      private static const §_-O4§:String = "op";
      
      private static const §_-1L§:String = "v";
      
      private static const §_-rP§:String = "fc";
      
      private static const §_-6N§:String = "ft";
      
      private static const §_-NM§:String = "fs";
      
      private static const §_-e2§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-ST§:String = "cube";
      
      private static const §_-Sf§:String = "mipnearest";
      
      private static const §_-EF§:String = "miplinear";
      
      private static const §_-jS§:String = "mipnone";
      
      private static const §_-L6§:String = "nomip";
      
      private static const §_-NU§:String = "nearest";
      
      private static const §_-h9§:String = "linear";
      
      private static const §_-Fm§:String = "centroid";
      
      private static const §_-am§:String = "single";
      
      private static const §_-uC§:String = "depth";
      
      private static const §_-nQ§:String = "repeat";
      
      private static const §_-ve§:String = "wrap";
      
      private static const §_-E5§:String = "clamp";
       
      
      private var §_-88§:ByteArray = null;
      
      private var §_-2N§:String = "";
      
      private var §_-Mh§:Boolean = false;
      
      public function §_-9B§(param1:Boolean = false)
      {
         super();
         this.§_-Mh§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-Zv§[§_-NC§] = new OpCode(§_-NC§,2,0,0);
         §_-Zv§[§_-Xs§] = new OpCode(§_-Xs§,3,1,0);
         §_-Zv§[§_-Kq§] = new OpCode(§_-Kq§,3,2,0);
         §_-Zv§[§_-Aj§] = new OpCode(§_-Aj§,3,3,0);
         §_-Zv§[§_-L5§] = new OpCode(§_-L5§,3,4,0);
         §_-Zv§[§_-Be§] = new OpCode(§_-Be§,2,5,0);
         §_-Zv§[§_-bD§] = new OpCode(§_-bD§,3,6,0);
         §_-Zv§[§_-ce§] = new OpCode(§_-ce§,3,7,0);
         §_-Zv§[§_-iy§] = new OpCode(§_-iy§,2,8,0);
         §_-Zv§[§_-PK§] = new OpCode(§_-PK§,2,9,0);
         §_-Zv§[§_-yy§] = new OpCode(§_-yy§,2,10,0);
         §_-Zv§[§_-By§] = new OpCode(§_-By§,3,11,0);
         §_-Zv§[§_-lB§] = new OpCode(§_-lB§,2,12,0);
         §_-Zv§[§_-df§] = new OpCode(§_-df§,2,13,0);
         §_-Zv§[§_-YD§] = new OpCode(§_-YD§,2,14,0);
         §_-Zv§[§_-l§] = new OpCode(§_-l§,2,15,0);
         §_-Zv§[§_-gy§] = new OpCode(§_-gy§,2,16,0);
         §_-Zv§[§_-Mp§] = new OpCode(§_-Mp§,3,17,0);
         §_-Zv§[DP3] = new OpCode(DP3,3,18,0);
         §_-Zv§[DP4] = new OpCode(DP4,3,19,0);
         §_-Zv§[§_-TF§] = new OpCode(§_-TF§,2,20,0);
         §_-Zv§[§_-gI§] = new OpCode(§_-gI§,2,21,0);
         §_-Zv§[§_-7C§] = new OpCode(§_-7C§,2,22,0);
         §_-Zv§[M33] = new OpCode(M33,3,23,§_-kI§);
         §_-Zv§[M44] = new OpCode(M44,3,24,§_-kI§);
         §_-Zv§[M34] = new OpCode(M34,3,25,§_-kI§);
         §_-Zv§[§_-Wr§] = new OpCode(§_-Wr§,1,26,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-vK§] = new OpCode(§_-vK§,1,27,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-ni§] = new OpCode(§_-ni§,2,28,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-8l§] = new OpCode(§_-8l§,2,29,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-pK§] = new OpCode(§_-pK§,2,30,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-FC§] = new OpCode(§_-FC§,2,31,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-xI§] = new OpCode(§_-xI§,2,32,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-ZP§] = new OpCode(§_-ZP§,2,33,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-Dn§] = new OpCode(§_-Dn§,0,34,§_-fw§ | §_-U0§ | §_-fa§);
         §_-Zv§[§_-dA§] = new OpCode(§_-dA§,0,35,§_-fw§ | §_-fa§);
         §_-Zv§[§_-T0§] = new OpCode(§_-T0§,1,36,§_-fw§ | §_-U0§ | §_-CZ§);
         §_-Zv§[§_-vB§] = new OpCode(§_-vB§,0,37,§_-fw§ | §_-fa§);
         §_-Zv§[§_-lp§] = new OpCode(§_-lp§,0,38,§_-fw§);
         §_-Zv§[§else §] = new OpCode(§else §,1,39,§_-fw§ | §_-8M§);
         §_-Zv§[§_-Md§] = new OpCode(§_-Md§,3,40,§_-8M§ | §_-f4§);
         §_-Zv§[§_-jF§] = new OpCode(§_-jF§,3,41,0);
         §_-Zv§[§_-AM§] = new OpCode(§_-AM§,3,42,0);
         §_-Zv§[§_-ik§] = new OpCode(§_-ik§,2,43,0);
         §_-Xx§[§_-OX§] = new Register(§_-OX§,"vertex attribute",0,7,§_-S1§ | §_-0N§);
         §_-Xx§[§_-vo§] = new Register(§_-vo§,"vertex constant",1,127,§_-S1§ | §_-0N§);
         §_-Xx§[§_-lF§] = new Register(§_-lF§,"vertex temporary",2,7,§_-S1§ | §_-C3§ | §_-0N§);
         §_-Xx§[§_-O4§] = new Register(§_-O4§,"vertex output",3,0,§_-S1§ | §_-C3§);
         §_-Xx§[§_-1L§] = new Register(§_-1L§,"varying",4,7,§_-S1§ | §_-r9§ | §_-0N§ | §_-C3§);
         §_-Xx§[§_-rP§] = new Register(§_-rP§,"fragment constant",1,27,§_-r9§ | §_-0N§);
         §_-Xx§[§_-6N§] = new Register(§_-6N§,"fragment temporary",2,7,§_-r9§ | §_-C3§ | §_-0N§);
         §_-Xx§[§_-NM§] = new Register(§_-NM§,"texture sampler",5,7,§_-r9§ | §_-0N§);
         §_-Xx§[§_-e2§] = new Register(§_-e2§,"fragment output",3,0,§_-r9§ | §_-C3§);
         §_-2h§[D2] = new Sampler(D2,§_-ZJ§,0);
         §_-2h§[D3] = new Sampler(D3,§_-ZJ§,2);
         §_-2h§[§_-ST§] = new Sampler(§_-ST§,§_-ZJ§,1);
         §_-2h§[§_-Sf§] = new Sampler(§_-Sf§,§_-pn§,1);
         §_-2h§[§_-EF§] = new Sampler(§_-EF§,§_-pn§,2);
         §_-2h§[§_-jS§] = new Sampler(§_-jS§,§_-pn§,0);
         §_-2h§[§_-L6§] = new Sampler(§_-L6§,§_-pn§,0);
         §_-2h§[§_-NU§] = new Sampler(§_-NU§,§_-WH§,0);
         §_-2h§[§_-h9§] = new Sampler(§_-h9§,§_-WH§,1);
         §_-2h§[§_-Fm§] = new Sampler(§_-Fm§,§_-Fz§,1 << 0);
         §_-2h§[§_-am§] = new Sampler(§_-am§,§_-Fz§,1 << 1);
         §_-2h§[§_-uC§] = new Sampler(§_-uC§,§_-Fz§,1 << 2);
         §_-2h§[§_-nQ§] = new Sampler(§_-nQ§,§_-KG§,1);
         §_-2h§[§_-ve§] = new Sampler(§_-ve§,§_-KG§,1);
         §_-2h§[§_-E5§] = new Sampler(§_-E5§,§_-KG§,0);
      }
      
      public function get error() : String
      {
         return this.§_-2N§;
      }
      
      public function get §_-n8§() : ByteArray
      {
         return this.§_-88§;
      }
      
      public function §_-aM§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-88§ = new ByteArray();
         this.§_-2N§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-2N§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-n8§.endian = Endian.LITTLE_ENDIAN;
         this.§_-n8§.writeByte(160);
         this.§_-n8§.writeUnsignedInt(1);
         this.§_-n8§.writeByte(161);
         this.§_-n8§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-2N§ == "")
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
            _loc16_ = §_-Zv§[_loc15_[0]];
            if(!this.§_-Mh§)
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
               if(_loc16_.flags & §_-fa§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-2N§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-U0§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-2Z§)
                  {
                     this.§_-2N§ = "error: nesting to deep, maximum allowed is " + §_-2Z§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-8M§ && !_loc5_)
               {
                  this.§_-2N§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-n8§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-rE§)
               {
                  this.§_-2N§ = "error: too many opcodes. maximum is " + §_-rE§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-2N§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-Xx§[_loc24_[0]];
                  if(!this.§_-Mh§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-2N§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-r9§))
                     {
                        this.§_-2N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-2N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-S1§))
                  {
                     this.§_-2N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-2N§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-fw§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-f4§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-2N§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-Xx§[_loc38_[0]]) == null)
                     {
                        this.§_-2N§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-2N§ = "error: bad index register select";
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
                        this.§_-2N§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-n8§.writeShort(_loc27_);
                     this.§_-n8§.writeByte(_loc28_);
                     this.§_-n8§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-2h§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-Fz§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-n8§.writeShort(_loc27_);
                     this.§_-n8§.writeByte(int(_loc44_ * 8));
                     this.§_-n8§.writeByte(0);
                     this.§_-n8§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-n8§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-n8§.writeShort(_loc27_);
                     this.§_-n8§.writeByte(_loc34_);
                     this.§_-n8§.writeByte(_loc28_);
                     this.§_-n8§.writeByte(_loc25_.emitCode);
                     this.§_-n8§.writeByte(_loc32_);
                     this.§_-n8§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-n8§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-2N§ != "")
         {
            this.§_-2N§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-n8§.length = 0;
         }
         if(this.§_-Mh§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-n8§.length;
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
               if((_loc49_ = this.§_-n8§[_loc48_].toString(16)).length < 2)
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
         return this.§_-n8§;
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
