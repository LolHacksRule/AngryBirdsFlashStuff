package §_-Dp§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-N-§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-8H§:Dictionary = new Dictionary();
      
      private static const §_-q0§:Dictionary = new Dictionary();
      
      private static const §_-J4§:Dictionary = new Dictionary();
      
      private static const §_-DP§:int = 4;
      
      private static const §_-PE§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-h1§:uint = 12;
      
      private static const §_-43§:uint = 16;
      
      private static const §_-Kx§:uint = 20;
      
      private static const §_-S4§:uint = 24;
      
      private static const §_-DA§:uint = 28;
      
      private static const §_-pZ§:uint = 1;
      
      private static const §_-nQ§:uint = 2;
      
      private static const §_-vn§:uint = 32;
      
      private static const §_-Hb§:uint = 64;
      
      private static const §_-UW§:uint = 1;
      
      private static const §_-kY§:uint = 2;
      
      private static const §_-4m§:uint = 4;
      
      private static const §_-EL§:uint = 8;
      
      private static const §_-1R§:uint = 16;
      
      private static const §_-jV§:uint = 32;
      
      private static const §_-dX§:uint = 64;
      
      private static const §_-gW§:uint = 128;
      
      private static const §_-Hg§:String = "mov";
      
      private static const §_-jb§:String = "add";
      
      private static const §_-af§:String = "sub";
      
      private static const §_-i9§:String = "mul";
      
      private static const §_-uk§:String = "div";
      
      private static const §_-au§:String = "rcp";
      
      private static const §_-pB§:String = "min";
      
      private static const §_-2T§:String = "max";
      
      private static const §_-JE§:String = "frc";
      
      private static const §_-BG§:String = "sqt";
      
      private static const §_-OE§:String = "rsq";
      
      private static const §_-Yy§:String = "pow";
      
      private static const §_-s-§:String = "log";
      
      private static const §_-oW§:String = "exp";
      
      private static const §_-fr§:String = "nrm";
      
      private static const §_-2z§:String = "sin";
      
      private static const §_-G6§:String = "cos";
      
      private static const §_-x9§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-gp§:String = "abs";
      
      private static const §_-no§:String = "neg";
      
      private static const §_-hZ§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-Iv§:String = "ifz";
      
      private static const §_-EP§:String = "inz";
      
      private static const §_-SZ§:String = "ife";
      
      private static const §_-0U§:String = "ine";
      
      private static const §_-lJ§:String = "ifg";
      
      private static const §_-LH§:String = "ifl";
      
      private static const §_-Jg§:String = "ieg";
      
      private static const §_-rm§:String = "iel";
      
      private static const §_-Ps§:String = "els";
      
      private static const §_-4u§:String = "eif";
      
      private static const §_-Cw§:String = "rep";
      
      private static const §_-5A§:String = "erp";
      
      private static const §_-F§:String = "brk";
      
      private static const §_-gb§:String = "kil";
      
      private static const §_-aN§:String = "tex";
      
      private static const §_-r3§:String = "sge";
      
      private static const §_-JY§:String = "slt";
      
      private static const §_-FB§:String = "sgn";
      
      private static const §_-NN§:String = "va";
      
      private static const §_-xY§:String = "vc";
      
      private static const §_-6q§:String = "vt";
      
      private static const §_-EU§:String = "op";
      
      private static const §_-AF§:String = "v";
      
      private static const §_-qK§:String = "fc";
      
      private static const §_-aS§:String = "ft";
      
      private static const §_-Kt§:String = "fs";
      
      private static const §_-ic§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-ig§:String = "cube";
      
      private static const §_-bb§:String = "mipnearest";
      
      private static const §_-DS§:String = "miplinear";
      
      private static const §_-Uz§:String = "mipnone";
      
      private static const §_-jQ§:String = "nomip";
      
      private static const §_-SE§:String = "nearest";
      
      private static const §_-fU§:String = "linear";
      
      private static const §_-SC§:String = "centroid";
      
      private static const §_-OH§:String = "single";
      
      private static const §_-Cs§:String = "depth";
      
      private static const §_-wp§:String = "repeat";
      
      private static const §_-Ss§:String = "wrap";
      
      private static const §_-OZ§:String = "clamp";
       
      
      private var §_-57§:ByteArray = null;
      
      private var §_-g5§:String = "";
      
      private var §_-aa§:Boolean = false;
      
      public function §_-N-§(param1:Boolean = false)
      {
         super();
         this.§_-aa§ = param1;
         if(!initialized)
         {
            init();
         }
      }
      
      private static function init() : void
      {
         initialized = true;
         §_-8H§[§_-Hg§] = new OpCode(§_-Hg§,2,0,0);
         §_-8H§[§_-jb§] = new OpCode(§_-jb§,3,1,0);
         §_-8H§[§_-af§] = new OpCode(§_-af§,3,2,0);
         §_-8H§[§_-i9§] = new OpCode(§_-i9§,3,3,0);
         §_-8H§[§_-uk§] = new OpCode(§_-uk§,3,4,0);
         §_-8H§[§_-au§] = new OpCode(§_-au§,2,5,0);
         §_-8H§[§_-pB§] = new OpCode(§_-pB§,3,6,0);
         §_-8H§[§_-2T§] = new OpCode(§_-2T§,3,7,0);
         §_-8H§[§_-JE§] = new OpCode(§_-JE§,2,8,0);
         §_-8H§[§_-BG§] = new OpCode(§_-BG§,2,9,0);
         §_-8H§[§_-OE§] = new OpCode(§_-OE§,2,10,0);
         §_-8H§[§_-Yy§] = new OpCode(§_-Yy§,3,11,0);
         §_-8H§[§_-s-§] = new OpCode(§_-s-§,2,12,0);
         §_-8H§[§_-oW§] = new OpCode(§_-oW§,2,13,0);
         §_-8H§[§_-fr§] = new OpCode(§_-fr§,2,14,0);
         §_-8H§[§_-2z§] = new OpCode(§_-2z§,2,15,0);
         §_-8H§[§_-G6§] = new OpCode(§_-G6§,2,16,0);
         §_-8H§[§_-x9§] = new OpCode(§_-x9§,3,17,0);
         §_-8H§[DP3] = new OpCode(DP3,3,18,0);
         §_-8H§[DP4] = new OpCode(DP4,3,19,0);
         §_-8H§[§_-gp§] = new OpCode(§_-gp§,2,20,0);
         §_-8H§[§_-no§] = new OpCode(§_-no§,2,21,0);
         §_-8H§[§_-hZ§] = new OpCode(§_-hZ§,2,22,0);
         §_-8H§[M33] = new OpCode(M33,3,23,§_-1R§);
         §_-8H§[M44] = new OpCode(M44,3,24,§_-1R§);
         §_-8H§[M34] = new OpCode(M34,3,25,§_-1R§);
         §_-8H§[§_-Iv§] = new OpCode(§_-Iv§,1,26,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-EP§] = new OpCode(§_-EP§,1,27,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-SZ§] = new OpCode(§_-SZ§,2,28,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-0U§] = new OpCode(§_-0U§,2,29,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-lJ§] = new OpCode(§_-lJ§,2,30,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-LH§] = new OpCode(§_-LH§,2,31,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-Jg§] = new OpCode(§_-Jg§,2,32,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-rm§] = new OpCode(§_-rm§,2,33,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-Ps§] = new OpCode(§_-Ps§,0,34,§_-gW§ | §_-kY§ | §_-4m§);
         §_-8H§[§_-4u§] = new OpCode(§_-4u§,0,35,§_-gW§ | §_-4m§);
         §_-8H§[§_-Cw§] = new OpCode(§_-Cw§,1,36,§_-gW§ | §_-kY§ | §_-UW§);
         §_-8H§[§_-5A§] = new OpCode(§_-5A§,0,37,§_-gW§ | §_-4m§);
         §_-8H§[§_-F§] = new OpCode(§_-F§,0,38,§_-gW§);
         §_-8H§[§_-gb§] = new OpCode(§_-gb§,1,39,§_-gW§ | §_-jV§);
         §_-8H§[§_-aN§] = new OpCode(§_-aN§,3,40,§_-jV§ | §_-EL§);
         §_-8H§[§_-r3§] = new OpCode(§_-r3§,3,41,0);
         §_-8H§[§_-JY§] = new OpCode(§_-JY§,3,42,0);
         §_-8H§[§_-FB§] = new OpCode(§_-FB§,2,43,0);
         §_-q0§[§_-NN§] = new Register(§_-NN§,"vertex attribute",0,7,§_-Hb§ | §_-nQ§);
         §_-q0§[§_-xY§] = new Register(§_-xY§,"vertex constant",1,127,§_-Hb§ | §_-nQ§);
         §_-q0§[§_-6q§] = new Register(§_-6q§,"vertex temporary",2,7,§_-Hb§ | §_-pZ§ | §_-nQ§);
         §_-q0§[§_-EU§] = new Register(§_-EU§,"vertex output",3,0,§_-Hb§ | §_-pZ§);
         §_-q0§[§_-AF§] = new Register(§_-AF§,"varying",4,7,§_-Hb§ | §_-vn§ | §_-nQ§ | §_-pZ§);
         §_-q0§[§_-qK§] = new Register(§_-qK§,"fragment constant",1,27,§_-vn§ | §_-nQ§);
         §_-q0§[§_-aS§] = new Register(§_-aS§,"fragment temporary",2,7,§_-vn§ | §_-pZ§ | §_-nQ§);
         §_-q0§[§_-Kt§] = new Register(§_-Kt§,"texture sampler",5,7,§_-vn§ | §_-nQ§);
         §_-q0§[§_-ic§] = new Register(§_-ic§,"fragment output",3,0,§_-vn§ | §_-pZ§);
         §_-J4§[D2] = new Sampler(D2,§_-h1§,0);
         §_-J4§[D3] = new Sampler(D3,§_-h1§,2);
         §_-J4§[§_-ig§] = new Sampler(§_-ig§,§_-h1§,1);
         §_-J4§[§_-bb§] = new Sampler(§_-bb§,§_-S4§,1);
         §_-J4§[§_-DS§] = new Sampler(§_-DS§,§_-S4§,2);
         §_-J4§[§_-Uz§] = new Sampler(§_-Uz§,§_-S4§,0);
         §_-J4§[§_-jQ§] = new Sampler(§_-jQ§,§_-S4§,0);
         §_-J4§[§_-SE§] = new Sampler(§_-SE§,§_-DA§,0);
         §_-J4§[§_-fU§] = new Sampler(§_-fU§,§_-DA§,1);
         §_-J4§[§_-SC§] = new Sampler(§_-SC§,§_-43§,1 << 0);
         §_-J4§[§_-OH§] = new Sampler(§_-OH§,§_-43§,1 << 1);
         §_-J4§[§_-Cs§] = new Sampler(§_-Cs§,§_-43§,1 << 2);
         §_-J4§[§_-wp§] = new Sampler(§_-wp§,§_-Kx§,1);
         §_-J4§[§_-Ss§] = new Sampler(§_-Ss§,§_-Kx§,1);
         §_-J4§[§_-OZ§] = new Sampler(§_-OZ§,§_-Kx§,0);
      }
      
      public function get error() : String
      {
         return this.§_-g5§;
      }
      
      public function get §_-SY§() : ByteArray
      {
         return this.§_-57§;
      }
      
      public function §_-a3§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
         this.§_-57§ = new ByteArray();
         this.§_-g5§ = "";
         var _loc5_:Boolean = false;
         if(param1 == FRAGMENT)
         {
            _loc5_ = true;
         }
         else if(param1 != VERTEX)
         {
            this.§_-g5§ = "ERROR: mode needs to be \"" + FRAGMENT + "\" or \"" + VERTEX + "\" but is \"" + param1 + "\".";
         }
         this.§_-SY§.endian = Endian.LITTLE_ENDIAN;
         this.§_-SY§.writeByte(160);
         this.§_-SY§.writeUnsignedInt(1);
         this.§_-SY§.writeByte(161);
         this.§_-SY§.writeByte(!!_loc5_ ? 1 : 0);
         var _loc6_:Array = param2.replace(/[\f\n\r\v]+/g,"\n").split("\n");
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = _loc6_.length;
         _loc9_ = 0;
         while(_loc9_ < _loc10_ && this.§_-g5§ == "")
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
            _loc16_ = §_-8H§[_loc15_[0]];
            if(!this.§_-aa§)
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
               if(_loc16_.flags & §_-4m§)
               {
                  if(--_loc7_ < 0)
                  {
                     this.§_-g5§ = "error: conditional closes without open.";
                     break;
                  }
               }
               if(_loc16_.flags & §_-kY§)
               {
                  _loc7_++;
                  if(_loc7_ > §_-DP§)
                  {
                     this.§_-g5§ = "error: nesting to deep, maximum allowed is " + §_-DP§ + ".";
                     break;
                  }
               }
               if(_loc16_.flags & §_-jV§ && !_loc5_)
               {
                  this.§_-g5§ = "error: opcode is only allowed in fragment programs.";
                  break;
               }
               if(!param3)
               {
               }
               this.§_-SY§.writeUnsignedInt(_loc16_.emitCode);
               _loc8_++;
               if(_loc8_ > §_-PE§)
               {
                  this.§_-g5§ = "error: too many opcodes. maximum is " + §_-PE§ + ".";
                  break;
               }
               if((_loc17_ = _loc11_.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi)).length != _loc16_.numRegister)
               {
                  this.§_-g5§ = "error: wrong number of operands. found " + _loc17_.length + " but expected " + _loc16_.numRegister + ".";
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
                  _loc25_ = §_-q0§[_loc24_[0]];
                  if(!this.§_-aa§)
                  {
                  }
                  if(_loc25_ == null)
                  {
                     this.§_-g5§ = "error: could not parse operand " + _loc21_ + " (" + _loc17_[_loc21_] + ").";
                     _loc18_ = true;
                     break;
                  }
                  if(_loc5_)
                  {
                     if(!(_loc25_.flags & §_-vn§))
                     {
                        this.§_-g5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in vertex programs.";
                        _loc18_ = true;
                        break;
                     }
                     if(_loc22_)
                     {
                        this.§_-g5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") relative adressing not allowed in fragment programs.";
                        _loc18_ = true;
                        break;
                     }
                  }
                  else if(!(_loc25_.flags & §_-Hb§))
                  {
                     this.§_-g5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") only allowed in fragment programs.";
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
                     this.§_-g5§ = "error: register operand " + _loc21_ + " (" + _loc17_[_loc21_] + ") index exceeds limit of " + (_loc25_.range + 1) + ".";
                     _loc18_ = true;
                     break;
                  }
                  _loc28_ = 0;
                  _loc29_ = _loc17_[_loc21_].match(/(\.[xyzw]{1,4})/);
                  _loc30_ = _loc21_ == 0 && !(_loc16_.flags & §_-gW§);
                  _loc31_ = _loc21_ == 2 && _loc16_.flags & §_-EL§;
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = 0;
                  if(_loc30_ && _loc22_)
                  {
                     this.§_-g5§ = "error: relative can not be destination";
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
                     if((_loc39_ = §_-q0§[_loc38_[0]]) == null)
                     {
                        this.§_-g5§ = "error: bad index register";
                        _loc18_ = true;
                        break;
                     }
                     _loc32_ = _loc39_.emitCode;
                     if((_loc40_ = _loc23_[0].match(/(\.[xyzw]{1,1})/)).length == 0)
                     {
                        this.§_-g5§ = "error: bad index register select";
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
                        this.§_-g5§ = "error: index offset " + _loc34_ + " out of bounds. [0..255]";
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
                     this.§_-SY§.writeShort(_loc27_);
                     this.§_-SY§.writeByte(_loc28_);
                     this.§_-SY§.writeByte(_loc25_.emitCode);
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
                        if((_loc45_ = §_-J4§[_loc14_[_loc37_]]) == null)
                        {
                           _loc44_ = Number(_loc14_[_loc37_]);
                           if(!param3)
                           {
                           }
                        }
                        else
                        {
                           if(_loc45_.flag != §_-43§)
                           {
                              _loc42_ &= ~(15 << _loc45_.flag);
                           }
                           _loc42_ |= uint(_loc45_.mask) << uint(_loc45_.flag);
                        }
                        _loc37_++;
                     }
                     this.§_-SY§.writeShort(_loc27_);
                     this.§_-SY§.writeByte(int(_loc44_ * 8));
                     this.§_-SY§.writeByte(0);
                     this.§_-SY§.writeUnsignedInt(_loc42_);
                     if(!param3)
                     {
                     }
                     _loc19_ -= 64;
                  }
                  else
                  {
                     if(_loc21_ == 0)
                     {
                        this.§_-SY§.writeUnsignedInt(0);
                        _loc19_ -= 32;
                     }
                     this.§_-SY§.writeShort(_loc27_);
                     this.§_-SY§.writeByte(_loc34_);
                     this.§_-SY§.writeByte(_loc28_);
                     this.§_-SY§.writeByte(_loc25_.emitCode);
                     this.§_-SY§.writeByte(_loc32_);
                     this.§_-SY§.writeShort(!!_loc22_ ? _loc33_ | 1 << 15 : 0);
                     _loc19_ -= 64;
                  }
                  _loc21_++;
               }
               _loc21_ = 0;
               while(_loc21_ < _loc19_)
               {
                  this.§_-SY§.writeByte(0);
                  _loc21_ += 8;
               }
               if(_loc18_)
               {
                  break;
               }
            }
            _loc9_++;
         }
         if(this.§_-g5§ != "")
         {
            this.§_-g5§ += "\n  at line " + _loc9_ + " " + _loc6_[_loc9_];
            this.§_-SY§.length = 0;
         }
         if(this.§_-aa§)
         {
            _loc46_ = "generated bytecode:";
            _loc47_ = this.§_-SY§.length;
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
               if((_loc49_ = this.§_-SY§[_loc48_].toString(16)).length < 2)
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
         return this.§_-SY§;
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
