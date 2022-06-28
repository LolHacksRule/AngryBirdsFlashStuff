package §_-0O§
{
   import §_-0Ea§.§_-AY§;
   import §_-0Ea§.§_-XW§;
   import §_-0Ea§.§_-zM§;
   import §_-JM§.§_-05z§;
   import §_-Nq§.§_-eI§;
   import §_-UD§.§_-9f§;
   import §_-uY§.DisplayObject;
   import §_-z4§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-mz§ extends DisplayObject implements §_-eI§
   {
       
      
      private var §_-7u§:Texture;
      
      private var §_-04Q§:Vector.<§_-0D8§>;
      
      private var §_-Ke§:Number;
      
      private var §_-nu§:Vector.<Number>;
      
      private var §_-D6§:Vector.<Number>;
      
      private var §_-BF§:§_-9f§;
      
      private var §_-Ll§:VertexBuffer3D;
      
      private var §_-Sv§:VertexBuffer3D;
      
      private var §_-8x§:VertexBuffer3D;
      
      private var §_-00C§:Vector.<uint>;
      
      private var §_-uo§:IndexBuffer3D;
      
      private var §_-5J§:int;
      
      private var §_-2k§:int;
      
      private var §_-07j§:Number;
      
      protected var §_-PG§:Number;
      
      private var §_-0B§:Number = 0.0;
      
      private var §_-026§:Number;
      
      protected var §_-7o§:Number;
      
      protected var §_-bO§:Number;
      
      protected var §_-XA§:Boolean;
      
      protected var §_-LL§:String;
      
      protected var §_-r4§:String;
      
      protected var §_-OP§:String;
      
      private var §_-lm§:int = -1;
      
      private var §_-0CQ§:Boolean = false;
      
      private var §each §:Number = 0.0;
      
      public function §_-mz§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-7u§ = param1;
         this.§_-XA§ = param1.premultipliedAlpha;
         this.§_-04Q§ = new Vector.<§_-0D8§>(0,false);
         this.§_-nu§ = new Vector.<Number>();
         this.§_-D6§ = new Vector.<Number>();
         this.§_-BF§ = new §_-9f§(0,this.§_-XA§);
         this.§_-00C§ = new Vector.<uint>(0);
         this.§_-07j§ = param2;
         this.§_-026§ = 0;
         this.§_-Ke§ = 0;
         this.§_-bO§ = 0;
         this.§_-7o§ = 0;
         this.§_-r4§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-LL§ = param4 || (!!this.§_-XA§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§_-WT§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-Ll§)
         {
            this.§_-Ll§.dispose();
         }
         if(this.§_-Sv§)
         {
            this.§_-Sv§.dispose();
         }
         if(this.§_-8x§)
         {
            this.§_-8x§.dispose();
         }
         if(this.§_-uo§)
         {
            this.§_-uo§.dispose();
         }
         this.§_-nu§ = null;
         this.§_-D6§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §_-0D8§
      {
         return new §_-0D8§();
      }
      
      protected function initParticle(param1:§_-0D8§) : void
      {
         param1.x = this.§_-7o§;
         param1.y = this.§_-bO§;
         param1.§_-Ms§ = 0;
         param1.§_-8f§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§_-0D8§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-Ms§ / param1.§_-8f§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§_-Ms§ += param2;
      }
      
      private function §_-WT§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-rS§;
         var _loc3_:int = this.§_-rS§ + param1;
         var _loc4_:§_-9f§;
         (_loc4_ = new §_-9f§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§_-7u§.adjustVertexData(_loc4_,0,4);
         this.§_-04Q§.fixed = false;
         this.§_-00C§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§_-04Q§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§_-nu§.push(0);
               this.§_-D6§.push(0);
               _loc7_++;
            }
            this.§_-BF§.append(_loc4_);
            this.§_-00C§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§_-04Q§.fixed = true;
         this.§_-00C§.fixed = true;
         this.§_-0CQ§ = true;
      }
      
      private function §_-ZT§(param1:Context3D) : Boolean
      {
         if(!this.§_-0CQ§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §_-05z§();
         }
         var _loc2_:int = this.§_-BF§.§_-Tz§ / 4;
         if(this.§_-Ll§)
         {
            this.§_-Ll§.dispose();
         }
         if(this.§_-Sv§)
         {
            this.§_-Sv§.dispose();
         }
         if(this.§_-8x§)
         {
            this.§_-8x§.dispose();
         }
         if(this.§_-uo§)
         {
            this.§_-uo§.dispose();
         }
         this.§_-Ll§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-u7§);
         this.§_-Ll§.uploadFromByteArray(this.§_-BF§.§_-ho§,0,0,_loc2_ * 4);
         this.§_-Sv§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-vj§);
         this.§_-Sv§.uploadFromVector(this.§_-BF§.§_-ge§,0,_loc2_ * 4);
         this.§_-8x§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-3x§);
         this.§_-8x§.uploadFromVector(this.§_-BF§.§_-y2§,0,_loc2_ * 4);
         this.§_-uo§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§_-uo§.uploadFromVector(this.§_-00C§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-07j§ != 0)
         {
            this.§_-026§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-026§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §_-mP§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(param2 == null)
         {
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         param2.x = _loc4_.x;
         param2.y = _loc4_.y;
         param2.width = 0;
         param2.height = 0;
         return param2;
      }
      
      public function §_-hL§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§_-QJ§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§each § = param1;
      }
      
      private function §_-QJ§(param1:Matrix3D) : void
      {
         var _loc4_:§_-0D8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§_-0D8§ = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:Boolean = false;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         if(isNaN(this.§each §) || this.§each § == 0)
         {
            return;
         }
         var _loc2_:Number = this.§each §;
         this.§each § = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-5J§)
         {
            if((_loc4_ = this.§_-04Q§[_loc3_]).§_-Ms§ < _loc4_.§_-8f§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§_-5J§ - 1)
               {
                  _loc11_ = this.§_-04Q§[this.§_-5J§ - 1];
                  this.§_-04Q§[this.§_-5J§ - 1] = _loc4_;
                  this.§_-04Q§[_loc3_] = _loc11_;
               }
               --this.§_-5J§;
            }
         }
         if(this.§_-026§ > 0)
         {
            _loc12_ = 1 / this.§_-07j§;
            this.§_-Ke§ += _loc2_;
            while(this.§_-Ke§ > 0)
            {
               if(this.§_-5J§ == this.§_-rS§)
               {
                  this.§_-WT§(this.§_-rS§);
               }
               _loc4_ = this.§_-04Q§[this.§_-5J§++] as §_-0D8§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§_-Ke§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§_-PG§))
               {
                  _loc13_ = _loc12_ * (1 - this.§_-PG§ + Math.random() * this.§_-PG§ * 2) + this.§_-0B§;
               }
               this.§_-0B§ += _loc12_ - _loc13_;
               this.§_-Ke§ -= _loc13_;
            }
            if(this.§_-026§ != Number.MAX_VALUE)
            {
               this.§_-026§ = Math.max(0,this.§_-026§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§_-7u§.width;
         var _loc9_:Number = this.§_-7u§.height;
         this.§_-2k§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§_-Nz§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§_-5J§)
            {
               _loc6_ = (_loc4_ = this.§_-04Q§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§_-D6§[_loc14_ * 3];
               _loc17_ = this.§_-D6§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§_-AY§.§_-un§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §_-AY§.§_-un§.§_-0-8§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§_-2k§;
                  this.§_-BF§.§_-di§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                  if(_loc4_.rotation != 0 && Math.abs(_loc18_ - _loc19_) > 0.5)
                  {
                     _loc22_ = Math.cos(_loc4_.rotation);
                     _loc23_ = Math.sin(_loc4_.rotation);
                     _loc24_ = _loc18_ * _loc22_ - _loc19_ * _loc23_;
                     _loc25_ = -(_loc18_ * _loc23_ + _loc19_ * _loc22_);
                     _loc26_ = -_loc18_ * _loc22_ - _loc19_ * _loc23_;
                     _loc27_ = -(-_loc18_ * _loc23_ + _loc19_ * _loc22_);
                     _loc28_ = _loc18_ * _loc22_ + _loc19_ * _loc23_;
                     _loc29_ = -(_loc18_ * _loc23_ - _loc19_ * _loc22_);
                     _loc30_ = -_loc18_ * _loc22_ + _loc19_ * _loc23_;
                     _loc31_ = -(-_loc18_ * _loc23_ - _loc19_ * _loc22_);
                     this.§_-BF§.§_-0AQ§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§_-BF§.§_-0AQ§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§_-BF§.§_-0AQ§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§_-BF§.§_-0AQ§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§_-BF§.§_-0AQ§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§_-BF§.§_-0AQ§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§_-BF§.§_-0AQ§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§_-BF§.§_-0AQ§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §_-Nz§(param1:Matrix3D) : void
      {
         var _loc3_:§_-0D8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-5J§)
         {
            _loc3_ = this.§_-04Q§[_loc2_];
            this.§_-nu§[_loc2_ * 3] = _loc3_.x;
            this.§_-nu§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§_-nu§,this.§_-D6§);
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         this.§_-QJ§(param1.§_-bc§);
         if(this.§_-2k§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-XW§.§_-aN§(param2 != 1,this.§_-7u§.mipMapping,false,this.§_-OP§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§_-FC§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§_-XA§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§_-dH§ != this.§_-lm§)
         {
            this.§_-WT§(0);
            this.§_-lm§ = param1.§_-dH§;
         }
         if(!this.§_-ZT§(_loc4_))
         {
            this.§_-Sv§.uploadFromVector(this.§_-BF§.§_-ge§,0,this.§_-2k§ * 4);
            this.§_-8x§.uploadFromVector(this.§_-BF§.§_-y2§,0,this.§_-2k§ * 4);
         }
         _loc4_.setBlendFactors(this.§_-LL§,this.§_-r4§);
         _loc4_.setProgram(§_-AY§.§_-un§.§_-NB§(_loc3_));
         _loc4_.setTextureAt(0,this.§_-7u§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§_-8x§,§_-9f§.§_-gg§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-Ll§,§_-9f§.§_-AV§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-Sv§,§_-9f§.§_-0CW§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-bc§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-uo§,0,this.§_-2k§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-yF§() : Boolean
      {
         return false;
      }
      
      public function get §_-rS§() : int
      {
         return this.§_-BF§.§_-Tz§ / 4;
      }
      
      public function get §_-xf§() : int
      {
         return this.§_-5J§;
      }
      
      public function get §_-03z§() : Number
      {
         return this.§_-07j§;
      }
      
      public function set §_-03z§(param1:Number) : void
      {
         this.§_-07j§ = param1;
      }
      
      public function get §_-s9§() : Number
      {
         return this.§_-7o§;
      }
      
      public function set §_-s9§(param1:Number) : void
      {
         this.§_-7o§ = param1;
      }
      
      public function get §_-8K§() : Number
      {
         return this.§_-bO§;
      }
      
      public function set §_-8K§(param1:Number) : void
      {
         this.§_-bO§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-7u§;
      }
   }
}
