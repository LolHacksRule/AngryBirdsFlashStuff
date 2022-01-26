package §_-iJ§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-hs§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-O3§:Dictionary = new Dictionary();
      
      private static const §_-2r§:Dictionary = new Dictionary();
      
      private static const §_-Mv§:Dictionary = new Dictionary();
      
      private static const §_-Wo§:int = 4;
      
      private static const §_-il§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-N-§:uint = 12;
      
      private static const §_-d7§:uint = 16;
      
      private static const §_-4M§:uint = 20;
      
      private static const §_-MD§:uint = 24;
      
      private static const §_-Nw§:uint = 28;
      
      private static const §_-LF§:uint = 1;
      
      private static const §_-qr§:uint = 2;
      
      private static const §_-w4§:uint = 32;
      
      private static const §_-Em§:uint = 64;
      
      private static const §_-kL§:uint = 1;
      
      private static const §_-hH§:uint = 2;
      
      private static const §_-EF§:uint = 4;
      
      private static const §_-BD§:uint = 8;
      
      private static const §_-gO§:uint = 16;
      
      private static const §_-3v§:uint = 32;
      
      private static const §_-5w§:uint = 64;
      
      private static const §_-Hr§:uint = 128;
      
      private static const §_-Xs§:String = "mov";
      
      private static const §_-Xd§:String = "add";
      
      private static const §_-F2§:String = "sub";
      
      private static const §_-rc§:String = "mul";
      
      private static const §_-eR§:String = "div";
      
      private static const §_-Jd§:String = "rcp";
      
      private static const §_-YL§:String = "min";
      
      private static const §_-gQ§:String = "max";
      
      private static const §_-ip§:String = "frc";
      
      private static const §_-KO§:String = "sqt";
      
      private static const §_-U0§:String = "rsq";
      
      private static const §_-2L§:String = "pow";
      
      private static const §_-Mw§:String = "log";
      
      private static const §_-VX§:String = "exp";
      
      private static const §_-Xt§:String = "nrm";
      
      private static const §_-GN§:String = "sin";
      
      private static const §_-AR§:String = "cos";
      
      private static const §_-eG§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-0I§:String = "abs";
      
      private static const §_-vM§:String = "neg";
      
      private static const §_-3E§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-cB§:String = "ifz";
      
      private static const §_-bo§:String = "inz";
      
      private static const §_-dY§:String = "ife";
      
      private static const §_-8F§:String = "ine";
      
      private static const §_-oW§:String = "ifg";
      
      private static const §_-AD§:String = "ifl";
      
      private static const §_-Kc§:String = "ieg";
      
      private static const static:String = "iel";
      
      private static const §_-DS§:String = "els";
      
      private static const §_-4d§:String = "eif";
      
      private static const §_-Zz§:String = "rep";
      
      private static const §_-eV§:String = "erp";
      
      private static const §_-Tr§:String = "brk";
      
      private static const §_-gG§:String = "kil";
      
      private static const §_-bG§:String = "tex";
      
      private static const §_-aj§:String = "sge";
      
      private static const §_-9H§:String = "slt";
      
      private static const §_-gc§:String = "sgn";
      
      private static const §_-7d§:String = "va";
      
      private static const §_-7U§:String = "vc";
      
      private static const §_-rq§:String = "vt";
      
      private static const §_-rK§:String = "op";
      
      private static const §_-5L§:String = "v";
      
      private static const §_-oh§:String = "fc";
      
      private static const §_-W1§:String = "ft";
      
      private static const §_-NI§:String = "fs";
      
      private static const §_-2g§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-Eq§:String = "cube";
      
      private static const §_-sO§:String = "mipnearest";
      
      private static const §_-Ww§:String = "miplinear";
      
      private static const §_-BE§:String = "mipnone";
      
      private static const §_-Yy§:String = "nomip";
      
      private static const §_-bS§:String = "nearest";
      
      private static const §_-kc§:String = "linear";
      
      private static const §_-CB§:String = "centroid";
      
      private static const §_-rl§:String = "single";
      
      private static const §_-bY§:String = "depth";
      
      private static const §_-RQ§:String = "repeat";
      
      private static const §_-sS§:String = "wrap";
      
      private static const §_-Wa§:String = "clamp";
       
      
      private var §_-in§:ByteArray = null;
      
      private var §_-SA§:String = "";
      
      private var §_-r7§:Boolean = false;
      
      public function §_-hs§(param1:Boolean = false)
      {
         super();
         this.§_-r7§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-O3§[§_-Xs§] = new OpCode(§_-Xs§,2,0,0);
         §_-O3§[§_-Xd§] = new OpCode(§_-Xd§,3,1,0);
         §_-O3§[§_-F2§] = new OpCode(§_-F2§,3,2,0);
         §_-O3§[§_-rc§] = new OpCode(§_-rc§,3,3,0);
         §_-O3§[§_-eR§] = new OpCode(§_-eR§,3,4,0);
         §_-O3§[§_-Jd§] = new OpCode(§_-Jd§,2,5,0);
         §_-O3§[§_-YL§] = new OpCode(§_-YL§,3,6,0);
         §_-O3§[§_-gQ§] = new OpCode(§_-gQ§,3,7,0);
         §_-O3§[§_-ip§] = new OpCode(§_-ip§,2,8,0);
         §_-O3§[§_-KO§] = new OpCode(§_-KO§,2,9,0);
         §_-O3§[§_-U0§] = new OpCode(§_-U0§,2,10,0);
         §_-O3§[§_-2L§] = new OpCode(§_-2L§,3,11,0);
         §_-O3§[§_-Mw§] = new OpCode(§_-Mw§,2,12,0);
         §_-O3§[§_-VX§] = new OpCode(§_-VX§,2,13,0);
         §_-O3§[§_-Xt§] = new OpCode(§_-Xt§,2,14,0);
         §_-O3§[§_-GN§] = new OpCode(§_-GN§,2,15,0);
         §_-O3§[§_-AR§] = new OpCode(§_-AR§,2,16,0);
         §_-O3§[§_-eG§] = new OpCode(§_-eG§,3,17,0);
         §_-O3§[DP3] = new OpCode(DP3,3,18,0);
         §_-O3§[DP4] = new OpCode(DP4,3,19,0);
         §_-O3§[§_-0I§] = new OpCode(§_-0I§,2,20,0);
         §_-O3§[§_-vM§] = new OpCode(§_-vM§,2,21,0);
         §_-O3§[§_-3E§] = new OpCode(§_-3E§,2,22,0);
         §_-O3§[M33] = new OpCode(M33,3,23,§_-gO§);
         §_-O3§[M44] = new OpCode(M44,3,24,§_-gO§);
         §_-O3§[M34] = new OpCode(M34,3,25,§_-gO§);
         §_-O3§[§_-cB§] = new OpCode(§_-cB§,1,26,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-bo§] = new OpCode(§_-bo§,1,27,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-dY§] = new OpCode(§_-dY§,2,28,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-8F§] = new OpCode(§_-8F§,2,29,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-oW§] = new OpCode(§_-oW§,2,30,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-AD§] = new OpCode(§_-AD§,2,31,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-Kc§] = new OpCode(§_-Kc§,2,32,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[static] = new OpCode(static,2,33,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-DS§] = new OpCode(§_-DS§,0,34,§_-Hr§ | §_-hH§ | §_-EF§);
         §_-O3§[§_-4d§] = new OpCode(§_-4d§,0,35,§_-Hr§ | §_-EF§);
         §_-O3§[§_-Zz§] = new OpCode(§_-Zz§,1,36,§_-Hr§ | §_-hH§ | §_-kL§);
         §_-O3§[§_-eV§] = new OpCode(§_-eV§,0,37,§_-Hr§ | §_-EF§);
         §_-O3§[§_-Tr§] = new OpCode(§_-Tr§,0,38,§_-Hr§);
         §_-O3§[§_-gG§] = new OpCode(§_-gG§,1,39,§_-Hr§ | §_-3v§);
         §_-O3§[§_-bG§] = new OpCode(§_-bG§,3,40,§_-3v§ | §_-BD§);
         §_-O3§[§_-aj§] = new OpCode(§_-aj§,3,41,0);
         §_-O3§[§_-9H§] = new OpCode(§_-9H§,3,42,0);
         §_-O3§[§_-gc§] = new OpCode(§_-gc§,2,43,0);
         §_-2r§[§_-7d§] = new Register(§_-7d§,"vertex attribute",0,7,§_-Em§ | §_-qr§);
         §_-2r§[§_-7U§] = new Register(§_-7U§,"vertex constant",1,127,§_-Em§ | §_-qr§);
         §_-2r§[§_-rq§] = new Register(§_-rq§,"vertex temporary",2,7,§_-Em§ | §_-LF§ | §_-qr§);
         §_-2r§[§_-rK§] = new Register(§_-rK§,"vertex output",3,0,§_-Em§ | §_-LF§);
         §_-2r§[§_-5L§] = new Register(§_-5L§,"varying",4,7,§_-Em§ | §_-w4§ | §_-qr§ | §_-LF§);
         §_-2r§[§_-oh§] = new Register(§_-oh§,"fragment constant",1,27,§_-w4§ | §_-qr§);
         §_-2r§[§_-W1§] = new Register(§_-W1§,"fragment temporary",2,7,§_-w4§ | §_-LF§ | §_-qr§);
         §_-2r§[§_-NI§] = new Register(§_-NI§,"texture sampler",5,7,§_-w4§ | §_-qr§);
         §_-2r§[§_-2g§] = new Register(§_-2g§,"fragment output",3,0,§_-w4§ | §_-LF§);
         §_-Mv§[D2] = new Sampler(D2,§_-N-§,0);
         §_-Mv§[D3] = new Sampler(D3,§_-N-§,2);
         §_-Mv§[§_-Eq§] = new Sampler(§_-Eq§,§_-N-§,1);
         §_-Mv§[§_-sO§] = new Sampler(§_-sO§,§_-MD§,1);
         §_-Mv§[§_-Ww§] = new Sampler(§_-Ww§,§_-MD§,2);
         §_-Mv§[§_-BE§] = new Sampler(§_-BE§,§_-MD§,0);
         §_-Mv§[§_-Yy§] = new Sampler(§_-Yy§,§_-MD§,0);
         §_-Mv§[§_-bS§] = new Sampler(§_-bS§,§_-Nw§,0);
         §_-Mv§[§_-kc§] = new Sampler(§_-kc§,§_-Nw§,1);
         §_-Mv§[§_-CB§] = new Sampler(§_-CB§,§_-d7§,1 << 0);
         §_-Mv§[§_-rl§] = new Sampler(§_-rl§,§_-d7§,1 << 1);
         §_-Mv§[§_-bY§] = new Sampler(§_-bY§,§_-d7§,1 << 2);
         §_-Mv§[§_-RQ§] = new Sampler(§_-RQ§,§_-4M§,1);
         §_-Mv§[§_-sS§] = new Sampler(§_-sS§,§_-4M§,1);
         §_-Mv§[§_-Wa§] = new Sampler(§_-Wa§,§_-4M§,0);
      }
      
      public function get error() : String
      {
         return this.§_-SA§;
      }
      
      public function get §_-NX§() : ByteArray
      {
         return this.§_-in§;
      }
      
      public function §_-wS§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-in§ = new ByteArray();
         this.§_-SA§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-SA§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-NX§.endian = Endian.LITTLE_ENDIAN;
         this.§_-NX§.writeByte(160);
         this.§_-NX§.writeUnsignedInt(1);
         this.§_-NX§.writeByte(161);
         this.§_-NX§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-SA§ == "")
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
            _loc16_ = §_-O3§[_loc15_[0]];
            if(!this.§_-r7§)
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
               if(_loc16_.flags & §_-EF§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-SA§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-hH§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-Wo§)
                  {
                     this.§_-SA§ = "error: nesting to deep, maximum allowed is " + §_-Wo§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-3v§ && !_loc5_)
               {
                  this.§_-SA§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-NX§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-il§)
               {
                  this.§_-SA§ = "error: too many opcodes. maximum is " + §_-il§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-SA§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-2r§[_loc24_[0]];
                  if(!this.§_-r7§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-SA§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-w4§))
                     {
                        this.§_-SA§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-SA§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-Em§))
                  {
                     this.§_-SA§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-SA§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-Hr§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-BD§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-SA§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-2r§[_loc38_[0]]) == null)
                     {
                        this.§_-SA§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-SA§ = "error: bad index register select";
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
                        this.§_-SA§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-NX§.writeShort(_loc27_);
                     this.§_-NX§.writeByte(_loc28_);
                     this.§_-NX§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-Mv§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-d7§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-NX§.writeShort(_loc27_);
                     this.§_-NX§.writeByte(int(_loc44_ * 8));
                     this.§_-NX§.writeByte(0);
                     this.§_-NX§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-NX§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-NX§.writeShort(_loc27_);
                     this.§_-NX§.writeByte(_loc34_);
                     this.§_-NX§.writeByte(_loc28_);
                     this.§_-NX§.writeByte(_loc25_.emitCode);
                     this.§_-NX§.writeByte(_loc32_);
                     this.§_-NX§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-NX§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-SA§ != "")
         {
            this.§_-SA§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-NX§.length = 0;
         }
         if(this.§_-r7§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-NX§.length;
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
               if((_loc49_ = this.§_-NX§[_loc48_].toString(16)).length < 2)
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
         return this.§_-NX§;
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
