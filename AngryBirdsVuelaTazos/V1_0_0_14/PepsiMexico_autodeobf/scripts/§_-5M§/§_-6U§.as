package §_-5M§
{
   import §_-1y§.§_-Z6§;
   import §_-CG§.§_-gk§;
   import §_-DQ§.Texture;
   import §_-DQ§.§_-mG§;
   import §_-b5§.DisplayObject;
   import §_-b5§.§_-Xj§;
   import §_-fI§.§_-6W§;
   import §_-fI§.§_-BI§;
   import §_-kc§.§_-EV§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-6U§ extends DisplayObject implements §_-EV§
   {
       
      
      private var §_-Ix§:Texture;
      
      private var §_-lf§:Vector.<§_-RP§>;
      
      private var §_-rl§:Number;
      
      private var §_-T6§:§_-gk§;
      
      private var §_-Wd§:VertexBuffer3D;
      
      private var §_-MM§:VertexBuffer3D;
      
      private var §_-iG§:Vector.<uint>;
      
      private var §_-gw§:IndexBuffer3D;
      
      private var §_-QJ§:int;
      
      private var §_-46§:Number;
      
      private var §_-CN§:Number;
      
      protected var §_-r0§:Number;
      
      protected var §_-if§:Number;
      
      protected var §_-dx§:Boolean;
      
      protected var §_-8H§:String;
      
      protected var §_-ry§:String;
      
      private var §_-Sx§:int = -1;
      
      public function §_-6U§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-Ix§ = param1;
         this.§_-dx§ = param1.premultipliedAlpha;
         this.§_-lf§ = new Vector.<§_-RP§>(0,false);
         this.§_-T6§ = new §_-gk§(0,this.§_-dx§);
         this.§_-iG§ = new Vector.<uint>(0);
         this.§_-46§ = param2;
         this.§_-CN§ = 0;
         this.§_-rl§ = 0;
         this.§_-if§ = 0;
         this.§_-r0§ = 0;
         this.§_-ry§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-8H§ = param4 || (!!this.§_-dx§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         this.§_-8T§(param3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-Wd§)
         {
            this.§_-Wd§.dispose();
         }
         if(this.§_-MM§)
         {
            this.§_-MM§.dispose();
         }
         if(this.§_-gw§)
         {
            this.§_-gw§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-RP§
      {
         return new §_-RP§();
      }
      
      protected function initParticle(param1:§_-RP§) : void
      {
         param1.x = this.§_-r0§;
         param1.y = this.§_-if§;
         param1.§_-QZ§ = 0;
         param1.§_-ms§ = 1;
         param1.color = Math.random() * 16777215;
      }
      
      protected function advanceParticle(param1:§_-RP§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-QZ§ / param1.§_-ms§;
         param1.scale = 1 - param1.alpha;
         param1.§_-QZ§ += param2;
      }
      
      private function §_-8T§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-7t§;
         var _loc3_:int = this.§_-7t§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-BI§.§_-Pw§) == null)
         {
            throw new §_-Z6§();
         }
         var _loc5_:§_-gk§;
         (_loc5_ = new §_-gk§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-Ix§.adjustVertexData(_loc5_);
         this.§_-lf§.fixed = false;
         this.§_-iG§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-lf§.push(this.createParticle());
            this.§_-T6§.§_-5s§(_loc5_);
            this.§_-iG§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-lf§.fixed = true;
         this.§_-iG§.fixed = true;
         if(this.§_-Wd§)
         {
            this.§_-Wd§.dispose();
         }
         if(this.§_-MM§)
         {
            this.§_-MM§.dispose();
         }
         if(this.§_-gw§)
         {
            this.§_-gw§.dispose();
         }
         this.§_-Wd§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-gk§.§_-aU§);
         this.§_-Wd§.uploadFromVector(this.§_-T6§.data,0,_loc3_ * 4);
         this.§_-MM§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-gk§.§_-7-§);
         this.§_-MM§.uploadFromVector(this.§_-T6§.§_-lC§,0,_loc3_ * 4);
         this.§_-gw§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-gw§.uploadFromVector(this.§_-iG§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-46§ != 0)
         {
            this.§_-CN§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-CN§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-C4§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-XZ§(param1:Number) : void
      {
         var _loc3_:§_-RP§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:§_-RP§ = null;
         var _loc15_:Number = NaN;
         param1 = Math.min(0.2,param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-QJ§)
         {
            _loc3_ = this.§_-lf§[_loc2_] as §_-RP§;
            if(_loc3_.§_-QZ§ < _loc3_.§_-ms§)
            {
               this.advanceParticle(_loc3_,param1);
               _loc2_++;
            }
            else
            {
               if(_loc2_ != this.§_-QJ§ - 1)
               {
                  _loc14_ = this.§_-lf§[this.§_-QJ§ - 1] as §_-RP§;
                  this.§_-lf§[this.§_-QJ§ - 1] = _loc3_;
                  this.§_-lf§[_loc2_] = _loc14_;
               }
               --this.§_-QJ§;
            }
         }
         if(this.§_-CN§ > 0)
         {
            _loc15_ = 1 / this.§_-46§;
            this.§_-rl§ += param1;
            while(this.§_-rl§ > 0)
            {
               if(this.§_-QJ§ == this.§_-7t§)
               {
                  this.§_-8T§(this.§_-7t§);
               }
               _loc3_ = this.§_-lf§[this.§_-QJ§++] as §_-RP§;
               this.initParticle(_loc3_);
               this.advanceParticle(_loc3_,this.§_-rl§);
               this.§_-rl§ -= _loc15_;
            }
            if(this.§_-CN§ != Number.MAX_VALUE)
            {
               this.§_-CN§ = Math.max(0,this.§_-CN§ - param1);
            }
         }
         var _loc4_:* = 0;
         var _loc11_:Number = this.§_-Ix§.width;
         var _loc12_:Number = this.§_-Ix§.height;
         var _loc13_:int = 0;
         while(_loc13_ < this.§_-QJ§)
         {
            _loc4_ = _loc13_ << 2;
            _loc3_ = this.§_-lf§[_loc13_] as §_-RP§;
            _loc5_ = _loc3_.color;
            _loc6_ = _loc3_.alpha;
            _loc7_ = _loc3_.x;
            _loc8_ = _loc3_.y;
            _loc9_ = _loc11_ * _loc3_.scale / 2;
            _loc10_ = _loc12_ * _loc3_.scale / 2;
            this.§_-T6§.§_-XP§(_loc4_,4,_loc5_,_loc6_);
            this.§_-T6§.setPosition(_loc4_,_loc7_ - _loc9_,_loc8_ - _loc10_);
            this.§_-T6§.setPosition(_loc4_ + 1,_loc7_ + _loc9_,_loc8_ - _loc10_);
            this.§_-T6§.setPosition(_loc4_ + 2,_loc7_ - _loc9_,_loc8_ + _loc10_);
            this.§_-T6§.setPosition(_loc4_ + 3,_loc7_ + _loc9_,_loc8_ + _loc10_);
            _loc13_++;
         }
      }
      
      override public function render(param1:§_-6W§, param2:Number) : void
      {
         if(this.§_-QJ§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-Xj§.§_-Ri§(this.§_-Ix§.mipMapping,false,§_-mG§.§_-Fp§,true);
         var _loc4_:Context3D = §_-BI§.§_-Pw§;
         var _loc5_:Vector.<Number> = !!this.§_-dx§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-Z6§();
         }
         var _loc6_:§_-BI§ = §_-BI§.§_-44§;
         if(§_-BI§.§_-3W§ != this.§_-Sx§)
         {
            this.§_-8T§(0);
            this.§_-Sx§ = §_-BI§.§_-3W§;
         }
         this.§_-Wd§.uploadFromVector(this.§_-T6§.data,0,this.§_-QJ§ * 4);
         this.§_-MM§.uploadFromVector(this.§_-T6§.§_-lC§,0,this.§_-QJ§ * 4);
         _loc4_.setBlendFactors(this.§_-8H§,this.§_-ry§);
         param1.setProgram(§_-BI§.§_-44§.§_-Ew§(_loc3_));
         param1.setTextureAt(1,this.§_-Ix§.base);
         _loc4_.setVertexBufferAt(0,this.§_-MM§,§_-gk§.§_-bD§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-Wd§,§_-gk§.§_-am§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-Wd§,§_-gk§.§_-JD§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-tN§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-gw§,0,this.§_-QJ§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-Kc§() : Boolean
      {
         return false;
      }
      
      public function get §_-7t§() : int
      {
         return this.§_-T6§.§_-YV§ / 4;
      }
      
      public function get §_-Yi§() : int
      {
         return this.§_-QJ§;
      }
      
      public function get §_-sf§() : Number
      {
         return this.§_-46§;
      }
      
      public function set §_-sf§(param1:Number) : void
      {
         this.§_-46§ = param1;
      }
      
      public function get §_-ko§() : Number
      {
         return this.§_-r0§;
      }
      
      public function set §_-ko§(param1:Number) : void
      {
         this.§_-r0§ = param1;
      }
      
      public function get §_-IS§() : Number
      {
         return this.§_-if§;
      }
      
      public function set §_-IS§(param1:Number) : void
      {
         this.§_-if§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-Ix§;
      }
   }
}
