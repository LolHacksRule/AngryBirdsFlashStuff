package §_-O1§
{
   import §_-BS§.§_-De§;
   import §_-GY§.DisplayObject;
   import §_-GY§.§_-4W§;
   import §_-V9§.§_-oT§;
   import §_-Ye§.§_-CT§;
   import §_-Ye§.§_-cP§;
   import §_-mb§.§_-GZ§;
   import §_-yp§.Texture;
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
   
   public class §_-wj§ extends DisplayObject implements §_-De§
   {
       
      
      private var §_-eE§:Texture;
      
      private var §_-5Q§:Vector.<§_-Lu§>;
      
      private var §_-yx§:Number;
      
      private var §_-MU§:§_-GZ§;
      
      private var §_-sD§:VertexBuffer3D;
      
      private var §_-lm§:VertexBuffer3D;
      
      private var §_-pi§:Vector.<uint>;
      
      private var §_-r3§:IndexBuffer3D;
      
      private var §_-ty§:int;
      
      private var §_-48§:int;
      
      private var §_-In§:Number;
      
      protected var §_-Ok§:Number;
      
      private var §_-dW§:Number = 0.0;
      
      private var §_-Ak§:Number;
      
      protected var §_-hn§:Number;
      
      protected var §_-DB§:Number;
      
      protected var §_-Qx§:Boolean;
      
      protected var §_-vT§:String;
      
      protected var §_-Jb§:String;
      
      protected var §_-Gn§:String;
      
      private var §_-OE§:int = -1;
      
      private var §_-Wm§:Number = 0.0;
      
      public function §_-wj§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-eE§ = param1;
         this.§_-Qx§ = param1.premultipliedAlpha;
         this.§_-5Q§ = new Vector.<§_-Lu§>(0,false);
         this.§_-MU§ = new §_-GZ§(0,this.§_-Qx§);
         this.§_-pi§ = new Vector.<uint>(0);
         this.§_-In§ = param2;
         this.§_-Ak§ = 0;
         this.§_-yx§ = 0;
         this.§_-DB§ = 0;
         this.§_-hn§ = 0;
         this.§_-Jb§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-vT§ = param4 || (!!this.§_-Qx§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§_-eu§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-sD§)
         {
            this.§_-sD§.dispose();
         }
         if(this.§_-lm§)
         {
            this.§_-lm§.dispose();
         }
         if(this.§_-r3§)
         {
            this.§_-r3§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-Lu§
      {
         return new §_-Lu§();
      }
      
      protected function initParticle(param1:§_-Lu§) : void
      {
         param1.x = this.§_-hn§;
         param1.y = this.§_-DB§;
         param1.§_-bB§ = 0;
         param1.§_-eN§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§_-Lu§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-bB§ / param1.§_-eN§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§_-bB§ += param2;
      }
      
      private function §_-eu§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-Pk§;
         var _loc3_:int = this.§_-Pk§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-cP§.§_-eZ§) == null)
         {
            throw new §_-oT§();
         }
         var _loc5_:§_-GZ§;
         (_loc5_ = new §_-GZ§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-eE§.adjustVertexData(_loc5_);
         this.§_-5Q§.fixed = false;
         this.§_-pi§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-5Q§.push(this.createParticle());
            this.§_-MU§.§_-kM§(_loc5_);
            this.§_-pi§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-5Q§.fixed = true;
         this.§_-pi§.fixed = true;
         if(this.§_-sD§)
         {
            this.§_-sD§.dispose();
         }
         if(this.§_-lm§)
         {
            this.§_-lm§.dispose();
         }
         if(this.§_-r3§)
         {
            this.§_-r3§.dispose();
         }
         this.§_-sD§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-GZ§.§_-8e§);
         this.§_-sD§.uploadFromVector(this.§_-MU§.data,0,_loc3_ * 4);
         this.§_-lm§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-GZ§.§_-bJ§);
         this.§_-lm§.uploadFromVector(this.§_-MU§.§_-jS§,0,_loc3_ * 4);
         this.§_-r3§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-r3§.uploadFromVector(this.§_-pi§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-In§ != 0)
         {
            this.§_-Ak§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-Ak§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-c2§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-Da§(param1:Number) : void
      {
         this.§_-cj§(param1);
         this.§_-ht§(null);
      }
      
      public function §_-cj§(param1:Number) : void
      {
         this.§_-Wm§ = param1;
      }
      
      private function §_-ht§(param1:Matrix3D) : void
      {
         var _loc4_:§_-Lu§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc13_:§_-Lu§ = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Boolean = false;
         var _loc17_:Vector3D = null;
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
         var _loc32_:Number = NaN;
         if(isNaN(this.§_-Wm§) || this.§_-Wm§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§_-Wm§;
         this.§_-Wm§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-ty§)
         {
            if((_loc4_ = this.§_-5Q§[_loc3_]).§_-bB§ < _loc4_.§_-eN§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§_-ty§ - 1)
               {
                  _loc13_ = this.§_-5Q§[this.§_-ty§ - 1] as §_-Lu§;
                  this.§_-5Q§[this.§_-ty§ - 1] = _loc4_;
                  this.§_-5Q§[_loc3_] = _loc13_;
               }
               --this.§_-ty§;
            }
         }
         if(this.§_-Ak§ > 0)
         {
            _loc14_ = 1 / this.§_-In§;
            this.§_-yx§ += _loc2_;
            while(this.§_-yx§ > 0)
            {
               if(this.§_-ty§ == this.§_-Pk§)
               {
                  this.§_-eu§(this.§_-Pk§);
               }
               _loc4_ = this.§_-5Q§[this.§_-ty§++] as §_-Lu§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§_-yx§);
               _loc15_ = _loc14_;
               if(!isNaN(this.§_-Ok§))
               {
                  _loc15_ = _loc14_ * (1 - this.§_-Ok§ + Math.random() * this.§_-Ok§ * 2) + this.§_-dW§;
               }
               this.§_-dW§ += _loc14_ - _loc15_;
               this.§_-yx§ -= _loc15_;
            }
            if(this.§_-Ak§ != Number.MAX_VALUE)
            {
               this.§_-Ak§ = Math.max(0,this.§_-Ak§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc9_:Number = this.§_-eE§.width;
         var _loc10_:Number = this.§_-eE§.height;
         this.§_-48§ = 0;
         var _loc11_:Vector3D = new Vector3D();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-ty§)
         {
            _loc7_ = (_loc4_ = this.§_-5Q§[_loc12_]).x;
            _loc8_ = _loc4_.y;
            _loc16_ = false;
            if(param1)
            {
               _loc16_ = true;
               _loc11_.x = _loc7_;
               _loc11_.y = _loc8_;
               if((_loc17_ = param1.transformVector(_loc11_)).x < -1.15 || _loc17_.x > 1.15 || _loc17_.y < -1.15 || _loc17_.y > 1.15)
               {
                  if(§_-cP§.§_-004§)
                  {
                     _loc18_ = (_loc18_ = Math.max(_loc9_ * _loc4_.scaleX / 2,_loc10_ * _loc4_.scaleY / 2)) / §_-cP§.§_-004§.§_-tB§;
                     _loc19_ = 1.1 + _loc18_;
                     if(_loc17_.x < -_loc19_ || _loc17_.x > _loc19_ || _loc17_.y < -_loc19_ || _loc17_.y > _loc19_)
                     {
                        _loc16_ = false;
                     }
                  }
               }
            }
            if(_loc16_)
            {
               _loc20_ = _loc4_.alpha;
               _loc21_ = _loc9_ * _loc4_.scaleX / 2;
               _loc22_ = _loc10_ * _loc4_.scaleY / 2;
               _loc23_ = Math.cos(_loc4_.rotation);
               _loc24_ = Math.sin(_loc4_.rotation);
               _loc25_ = _loc21_ * _loc23_ - _loc22_ * _loc24_;
               _loc26_ = -(_loc21_ * _loc24_ + _loc22_ * _loc23_);
               _loc27_ = -_loc21_ * _loc23_ - _loc22_ * _loc24_;
               _loc28_ = -(-_loc21_ * _loc24_ + _loc22_ * _loc23_);
               _loc29_ = _loc21_ * _loc23_ + _loc22_ * _loc24_;
               _loc30_ = -(_loc21_ * _loc24_ - _loc22_ * _loc23_);
               _loc31_ = -_loc21_ * _loc23_ + _loc22_ * _loc24_;
               _loc32_ = -(-_loc21_ * _loc24_ - _loc22_ * _loc23_);
               ++this.§_-48§;
               this.§_-MU§.§_-hG§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc20_);
               this.§_-MU§.setPosition(_loc5_,_loc7_ + _loc27_,_loc8_ + _loc28_);
               this.§_-MU§.setPosition(_loc5_ + 1,_loc7_ + _loc25_,_loc8_ + _loc26_);
               this.§_-MU§.setPosition(_loc5_ + 2,_loc7_ + _loc31_,_loc8_ + _loc32_);
               this.§_-MU§.setPosition(_loc5_ + 3,_loc7_ + _loc29_,_loc8_ + _loc30_);
               _loc5_ += 4;
            }
            _loc12_++;
         }
      }
      
      override public function render(param1:§_-CT§, param2:Number) : void
      {
         this.§_-ht§(param1.§_-hA§);
         if(this.§_-48§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-4W§.§_-zj§(this.§_-eE§.mipMapping,false,this.§_-Gn§,true);
         var _loc4_:Context3D = §_-cP§.§_-eZ§;
         var _loc5_:Vector.<Number> = !!this.§_-Qx§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-oT§();
         }
         if(§_-cP§.§_-Fb§ != this.§_-OE§)
         {
            this.§_-eu§(0);
            this.§_-OE§ = §_-cP§.§_-Fb§;
         }
         this.§_-sD§.uploadFromVector(this.§_-MU§.data,0,this.§_-48§ * 4);
         this.§_-lm§.uploadFromVector(this.§_-MU§.§_-jS§,0,this.§_-48§ * 4);
         _loc4_.setBlendFactors(this.§_-vT§,this.§_-Jb§);
         param1.setProgram(§_-cP§.§_-004§.§_-Bj§(_loc3_));
         param1.setTextureAt(1,this.§_-eE§.base);
         _loc4_.setVertexBufferAt(0,this.§_-lm§,§_-GZ§.§_-Wu§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-sD§,§_-GZ§.§_-Os§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-sD§,§_-GZ§.§_-hv§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-hA§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-r3§,0,this.§_-48§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-ej§() : Boolean
      {
         return false;
      }
      
      public function get §_-Pk§() : int
      {
         return this.§_-MU§.§_-CY§ / 4;
      }
      
      public function get §_-EG§() : int
      {
         return this.§_-ty§;
      }
      
      public function get §_-pB§() : Number
      {
         return this.§_-In§;
      }
      
      public function set §_-pB§(param1:Number) : void
      {
         this.§_-In§ = param1;
      }
      
      public function get §_-XT§() : Number
      {
         return this.§_-hn§;
      }
      
      public function set §_-XT§(param1:Number) : void
      {
         this.§_-hn§ = param1;
      }
      
      public function get §_-nq§() : Number
      {
         return this.§_-DB§;
      }
      
      public function set §_-nq§(param1:Number) : void
      {
         this.§_-DB§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-eE§;
      }
   }
}
