package §_-M2§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-Lg§:Dictionary = new Dictionary();
      
      private static const §_-KY§:Dictionary = new Dictionary();
      
      private static const §_-0AU§:Dictionary = new Dictionary();
      
      private static const §_-032§:int = 4;
      
      private static const §_-X3§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-g8§:uint = 12;
      
      private static const §_-66§:uint = 16;
      
      private static const §_-vA§:uint = 20;
      
      private static const §_-08d§:uint = 24;
      
      private static const §_-CD§:uint = 28;
      
      private static const §_-g1§:uint = 1;
      
      private static const §_-8E§:uint = 2;
      
      private static const §_-Ar§:uint = 32;
      
      private static const §_-046§:uint = 64;
      
      private static const §_-mc§:uint = 1;
      
      private static const §_-2L§:uint = 2;
      
      private static const §extends§:uint = 4;
      
      private static const §_-is§:uint = 8;
      
      private static const §_-0-G§:uint = 16;
      
      private static const §_-0C1§:uint = 32;
      
      private static const §_-lO§:uint = 128;
      
      private static const §_-e4§:String = "mov";
      
      private static const §_-D§:String = "add";
      
      private static const §_-uX§:String = "sub";
      
      private static const §_-fT§:String = "mul";
      
      private static const §_-I§:String = "div";
      
      private static const §_-Qf§:String = "rcp";
      
      private static const §_-01o§:String = "min";
      
      private static const §_-ob§:String = "max";
      
      private static const §_-Kr§:String = "frc";
      
      private static const §_-04i§:String = "sqt";
      
      private static const §_-bW§:String = "rsq";
      
      private static const §_-ou§:String = "pow";
      
      private static const §_-vm§:String = "log";
      
      private static const §_-08i§:String = "exp";
      
      private static const §_-0Ei§:String = "nrm";
      
      private static const §_-Uc§:String = "sin";
      
      private static const §_-JP§:String = "cos";
      
      private static const §_-oc§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-VO§:String = "abs";
      
      private static const §_-ZX§:String = "neg";
      
      private static const §_-dq§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-fj§:String = "ifz";
      
      private static const §_-83§:String = "inz";
      
      private static const §_-ne§:String = "ife";
      
      private static const §_-01M§:String = "ine";
      
      private static const §_-zU§:String = "ifg";
      
      private static const §_-7v§:String = "ifl";
      
      private static const §_-0D1§:String = "ieg";
      
      private static const §_-0Ce§:String = "iel";
      
      private static const §_-0Y§:String = "els";
      
      private static const §_-gu§:String = "eif";
      
      private static const §_-M-§:String = "rep";
      
      private static const §_-0Eb§:String = "erp";
      
      private static const §_-Lu§:String = "brk";
      
      private static const §_-56§:String = "kil";
      
      private static const §_-Ij§:String = "tex";
      
      private static const §_-Ws§:String = "sge";
      
      private static const §_-8m§:String = "slt";
      
      private static const §_-H1§:String = "sgn";
      
      private static const §_-Yt§:String = "va";
      
      private static const §_-uH§:String = "vc";
      
      private static const §_-Xe§:String = "vt";
      
      private static const §_-08O§:String = "op";
      
      private static const §_-Aq§:String = "v";
      
      private static const §_-u3§:String = "fc";
      
      private static const §_-hT§:String = "ft";
      
      private static const §_-mO§:String = "fs";
      
      private static const §_-MD§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-07B§:String = "cube";
      
      private static const §_-kz§:String = "mipnearest";
      
      private static const §_-9F§:String = "miplinear";
      
      private static const §_-BA§:String = "mipnone";
      
      private static const §_-0Az§:String = "nomip";
      
      private static const §_-HP§:String = "nearest";
      
      private static const §_-08v§:String = "linear";
      
      private static const §_-0R§:String = "centroid";
      
      private static const §_-gQ§:String = "single";
      
      private static const §_-0Bz§:String = "depth";
      
      private static const §_-CN§:String = "repeat";
      
      private static const §_-hR§:String = "wrap";
      
      private static const §_-sk§:String = "clamp";
       
      
      private var §_-sN§:ByteArray = null;
      
      private var §_-03d§:String = "";
      
      private var §_-eU§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         super();
         this.§_-eU§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-Lg§[§_-e4§] = new OpCode(§_-e4§,2,0,0);
         §_-Lg§[§_-D§] = new OpCode(§_-D§,3,1,0);
         §_-Lg§[§_-uX§] = new OpCode(§_-uX§,3,2,0);
         §_-Lg§[§_-fT§] = new OpCode(§_-fT§,3,3,0);
         §_-Lg§[§_-I§] = new OpCode(§_-I§,3,4,0);
         §_-Lg§[§_-Qf§] = new OpCode(§_-Qf§,2,5,0);
         §_-Lg§[§_-01o§] = new OpCode(§_-01o§,3,6,0);
         §_-Lg§[§_-ob§] = new OpCode(§_-ob§,3,7,0);
         §_-Lg§[§_-Kr§] = new OpCode(§_-Kr§,2,8,0);
         §_-Lg§[§_-04i§] = new OpCode(§_-04i§,2,9,0);
         §_-Lg§[§_-bW§] = new OpCode(§_-bW§,2,10,0);
         §_-Lg§[§_-ou§] = new OpCode(§_-ou§,3,11,0);
         §_-Lg§[§_-vm§] = new OpCode(§_-vm§,2,12,0);
         §_-Lg§[§_-08i§] = new OpCode(§_-08i§,2,13,0);
         §_-Lg§[§_-0Ei§] = new OpCode(§_-0Ei§,2,14,0);
         §_-Lg§[§_-Uc§] = new OpCode(§_-Uc§,2,15,0);
         §_-Lg§[§_-JP§] = new OpCode(§_-JP§,2,16,0);
         §_-Lg§[§_-oc§] = new OpCode(§_-oc§,3,17,0);
         §_-Lg§[DP3] = new OpCode(DP3,3,18,0);
         §_-Lg§[DP4] = new OpCode(DP4,3,19,0);
         §_-Lg§[§_-VO§] = new OpCode(§_-VO§,2,20,0);
         §_-Lg§[§_-ZX§] = new OpCode(§_-ZX§,2,21,0);
         §_-Lg§[§_-dq§] = new OpCode(§_-dq§,2,22,0);
         §_-Lg§[M33] = new OpCode(M33,3,23,§_-0-G§);
         §_-Lg§[M44] = new OpCode(M44,3,24,§_-0-G§);
         §_-Lg§[M34] = new OpCode(M34,3,25,§_-0-G§);
         §_-Lg§[§_-fj§] = new OpCode(§_-fj§,1,26,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-83§] = new OpCode(§_-83§,1,27,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-ne§] = new OpCode(§_-ne§,2,28,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-01M§] = new OpCode(§_-01M§,2,29,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-zU§] = new OpCode(§_-zU§,2,30,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-7v§] = new OpCode(§_-7v§,2,31,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-0D1§] = new OpCode(§_-0D1§,2,32,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-0Ce§] = new OpCode(§_-0Ce§,2,33,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-0Y§] = new OpCode(§_-0Y§,0,34,§_-lO§ | §_-2L§ | §extends§);
         §_-Lg§[§_-gu§] = new OpCode(§_-gu§,0,35,§_-lO§ | §extends§);
         §_-Lg§[§_-M-§] = new OpCode(§_-M-§,1,36,§_-lO§ | §_-2L§ | §_-mc§);
         §_-Lg§[§_-0Eb§] = new OpCode(§_-0Eb§,0,37,§_-lO§ | §extends§);
         §_-Lg§[§_-Lu§] = new OpCode(§_-Lu§,0,38,§_-lO§);
         §_-Lg§[§_-56§] = new OpCode(§_-56§,1,39,§_-lO§ | §_-0C1§);
         §_-Lg§[§_-Ij§] = new OpCode(§_-Ij§,3,40,§_-0C1§ | §_-is§);
         §_-Lg§[§_-Ws§] = new OpCode(§_-Ws§,3,41,0);
         §_-Lg§[§_-8m§] = new OpCode(§_-8m§,3,42,0);
         §_-Lg§[§_-H1§] = new OpCode(§_-H1§,2,43,0);
         §_-KY§[§_-Yt§] = new Register(§_-Yt§,"vertex attribute",0,7,§_-046§ | §_-8E§);
         §_-KY§[§_-uH§] = new Register(§_-uH§,"vertex constant",1,127,§_-046§ | §_-8E§);
         §_-KY§[§_-Xe§] = new Register(§_-Xe§,"vertex temporary",2,7,§_-046§ | §_-g1§ | §_-8E§);
         §_-KY§[§_-08O§] = new Register(§_-08O§,"vertex output",3,0,§_-046§ | §_-g1§);
         §_-KY§[§_-Aq§] = new Register(§_-Aq§,"varying",4,7,§_-046§ | §_-Ar§ | §_-8E§ | §_-g1§);
         §_-KY§[§_-u3§] = new Register(§_-u3§,"fragment constant",1,27,§_-Ar§ | §_-8E§);
         §_-KY§[§_-hT§] = new Register(§_-hT§,"fragment temporary",2,7,§_-Ar§ | §_-g1§ | §_-8E§);
         §_-KY§[§_-mO§] = new Register(§_-mO§,"texture sampler",5,7,§_-Ar§ | §_-8E§);
         §_-KY§[§_-MD§] = new Register(§_-MD§,"fragment output",3,0,§_-Ar§ | §_-g1§);
         §_-0AU§[D2] = new Sampler(D2,§_-g8§,0);
         §_-0AU§[D3] = new Sampler(D3,§_-g8§,2);
         §_-0AU§[§_-07B§] = new Sampler(§_-07B§,§_-g8§,1);
         §_-0AU§[§_-kz§] = new Sampler(§_-kz§,§_-08d§,1);
         §_-0AU§[§_-9F§] = new Sampler(§_-9F§,§_-08d§,2);
         §_-0AU§[§_-BA§] = new Sampler(§_-BA§,§_-08d§,0);
         §_-0AU§[§_-0Az§] = new Sampler(§_-0Az§,§_-08d§,0);
         §_-0AU§[§_-HP§] = new Sampler(§_-HP§,§_-CD§,0);
         §_-0AU§[§_-08v§] = new Sampler(§_-08v§,§_-CD§,1);
         §_-0AU§[§_-0R§] = new Sampler(§_-0R§,§_-66§,1 << 0);
         §_-0AU§[§_-gQ§] = new Sampler(§_-gQ§,§_-66§,1 << 1);
         §_-0AU§[§_-0Bz§] = new Sampler(§_-0Bz§,§_-66§,1 << 2);
         §_-0AU§[§_-CN§] = new Sampler(§_-CN§,§_-vA§,1);
         §_-0AU§[§_-hR§] = new Sampler(§_-hR§,§_-vA§,1);
         §_-0AU§[§_-sk§] = new Sampler(§_-sk§,§_-vA§,0);
      }
      
      public function get error() : String
      {
         return this.§_-03d§;
      }
      
      public function get §case§() : ByteArray
      {
         return this.§_-sN§;
      }
      
      public function §_-AM§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-sN§ = new ByteArray();
         this.§_-03d§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-03d§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§case§.endian = Endian.LITTLE_ENDIAN;
         this.§case§.writeByte(160);
         this.§case§.writeUnsignedInt(1);
         this.§case§.writeByte(161);
         this.§case§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-03d§ == "")
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
            _loc16_ = §_-Lg§[_loc15_[0]];
            if(!this.§_-eU§)
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
               if(_loc16_.flags & §extends§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-03d§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-2L§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-032§)
                  {
                     this.§_-03d§ = "error: nesting to deep, maximum allowed is " + §_-032§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-0C1§ && !_loc5_)
               {
                  this.§_-03d§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§case§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-X3§)
               {
                  this.§_-03d§ = "error: too many opcodes. maximum is " + §_-X3§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-03d§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-KY§[_loc24_[0]];
                  if(!this.§_-eU§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-03d§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-Ar§))
                     {
                        this.§_-03d§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-03d§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-046§))
                  {
                     this.§_-03d§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-03d§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-lO§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-is§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-03d§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-KY§[_loc38_[0]]) == null)
                     {
                        this.§_-03d§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-03d§ = "error: bad index register select";
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
                        this.§_-03d§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§case§.writeShort(_loc27_);
                     this.§case§.writeByte(_loc28_);
                     this.§case§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-0AU§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-66§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§case§.writeShort(_loc27_);
                     this.§case§.writeByte(int(_loc44_ * 8));
                     this.§case§.writeByte(0);
                     this.§case§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§case§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§case§.writeShort(_loc27_);
                     this.§case§.writeByte(_loc34_);
                     this.§case§.writeByte(_loc28_);
                     this.§case§.writeByte(_loc25_.emitCode);
                     this.§case§.writeByte(_loc32_);
                     this.§case§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§case§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-03d§ != "")
         {
            this.§_-03d§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§case§.length = 0;
         }
         if(this.§_-eU§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§case§.length;
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
               if((_loc49_ = this.§case§[_loc48_].toString(16)).length < 2)
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
         return this.§case§;
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
