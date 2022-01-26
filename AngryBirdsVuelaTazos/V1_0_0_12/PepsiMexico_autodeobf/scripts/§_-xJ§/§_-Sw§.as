package §_-xJ§
{
   import §_-0b§.§_-Bn§;
   import §_-S4§.Texture;
   import §_-S4§.§_-Gb§;
   import §_-nh§.§_-Hm§;
   import §_-pF§.DisplayObject;
   import §_-pF§.§_-gY§;
   import §_-qn§.§_-qd§;
   import §_-v3§.§_-G3§;
   import §_-v3§.§_-L4§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Sw§ extends DisplayObject implements §_-qd§
   {
       
      
      private var §_-sb§:Texture;
      
      private var §_-4x§:Vector.<§_-mQ§>;
      
      private var §_-ag§:Number;
      
      private var §_-iv§:§_-Bn§;
      
      private var §_-Sf§:VertexBuffer3D;
      
      private var §_-hO§:VertexBuffer3D;
      
      private var §_-jA§:Vector.<uint>;
      
      private var §_-37§:IndexBuffer3D;
      
      private var §_-nC§:int;
      
      private var §_-js§:Number;
      
      private var §_-YR§:Number;
      
      protected var §_-0U§:Number;
      
      protected var §_-ng§:Number;
      
      protected var §_-hD§:Boolean;
      
      protected var §_-kg§:String;
      
      protected var §_-P8§:String;
      
      private var §_-Y6§:int = -1;
      
      public function §_-Sw§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-sb§ = param1;
         this.§_-hD§ = param1.premultipliedAlpha;
         this.§_-4x§ = new Vector.<§_-mQ§>(0,false);
         this.§_-iv§ = new §_-Bn§(0,this.§_-hD§);
         this.§_-jA§ = new Vector.<uint>(0);
         this.§_-js§ = param2;
         this.§_-YR§ = 0;
         this.§_-ag§ = 0;
         this.§_-ng§ = 0;
         this.§_-0U§ = 0;
         this.§_-P8§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-kg§ = param4 || (!!this.§_-hD§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         this.§_-no§(param3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-Sf§)
         {
            this.§_-Sf§.dispose();
         }
         if(this.§_-hO§)
         {
            this.§_-hO§.dispose();
         }
         if(this.§_-37§)
         {
            this.§_-37§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-mQ§
      {
         return new §_-mQ§();
      }
      
      protected function initParticle(param1:§_-mQ§) : void
      {
         param1.x = this.§_-0U§;
         param1.y = this.§_-ng§;
         param1.§_-l-§ = 0;
         param1.§_-tb§ = 1;
         param1.color = Math.random() * 16777215;
      }
      
      protected function advanceParticle(param1:§_-mQ§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-l-§ / param1.§_-tb§;
         param1.scale = 1 - param1.alpha;
         param1.§_-l-§ += param2;
      }
      
      private function §_-no§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-cJ§;
         var _loc3_:int = this.§_-cJ§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-G3§.§_-FH§) == null)
         {
            throw new §_-Hm§();
         }
         var _loc5_:§_-Bn§;
         (_loc5_ = new §_-Bn§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-sb§.adjustVertexData(_loc5_);
         this.§_-4x§.fixed = false;
         this.§_-jA§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-4x§.push(this.createParticle());
            this.§_-iv§.§_-QU§(_loc5_);
            this.§_-jA§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-4x§.fixed = true;
         this.§_-jA§.fixed = true;
         if(this.§_-Sf§)
         {
            this.§_-Sf§.dispose();
         }
         if(this.§_-hO§)
         {
            this.§_-hO§.dispose();
         }
         if(this.§_-37§)
         {
            this.§_-37§.dispose();
         }
         this.§_-Sf§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-Bn§.§_-FG§);
         this.§_-Sf§.uploadFromVector(this.§_-iv§.data,0,_loc3_ * 4);
         this.§_-hO§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-Bn§.§_-§);
         this.§_-hO§.uploadFromVector(this.§_-iv§.§_-dj§,0,_loc3_ * 4);
         this.§_-37§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-37§.uploadFromVector(this.§_-jA§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-js§ != 0)
         {
            this.§_-YR§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-YR§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-4e§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-CR§(param1:Number) : void
      {
         var _loc3_:§_-mQ§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:§_-mQ§ = null;
         var _loc15_:Number = NaN;
         param1 = Math.min(0.2,param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-nC§)
         {
            _loc3_ = this.§_-4x§[_loc2_] as §_-mQ§;
            if(_loc3_.§_-l-§ < _loc3_.§_-tb§)
            {
               this.advanceParticle(_loc3_,param1);
               _loc2_++;
            }
            else
            {
               if(_loc2_ != this.§_-nC§ - 1)
               {
                  _loc14_ = this.§_-4x§[this.§_-nC§ - 1] as §_-mQ§;
                  this.§_-4x§[this.§_-nC§ - 1] = _loc3_;
                  this.§_-4x§[_loc2_] = _loc14_;
               }
               --this.§_-nC§;
            }
         }
         if(this.§_-YR§ > 0)
         {
            _loc15_ = 1 / this.§_-js§;
            this.§_-ag§ += param1;
            while(this.§_-ag§ > 0)
            {
               if(this.§_-nC§ == this.§_-cJ§)
               {
                  this.§_-no§(this.§_-cJ§);
               }
               _loc3_ = this.§_-4x§[this.§_-nC§++] as §_-mQ§;
               this.initParticle(_loc3_);
               this.advanceParticle(_loc3_,this.§_-ag§);
               this.§_-ag§ -= _loc15_;
            }
            if(this.§_-YR§ != Number.MAX_VALUE)
            {
               this.§_-YR§ = Math.max(0,this.§_-YR§ - param1);
            }
         }
         var _loc4_:* = 0;
         var _loc11_:Number = this.§_-sb§.width;
         var _loc12_:Number = this.§_-sb§.height;
         var _loc13_:int = 0;
         while(_loc13_ < this.§_-nC§)
         {
            _loc4_ = _loc13_ << 2;
            _loc3_ = this.§_-4x§[_loc13_] as §_-mQ§;
            _loc5_ = _loc3_.color;
            _loc6_ = _loc3_.alpha;
            _loc7_ = _loc3_.x;
            _loc8_ = _loc3_.y;
            _loc9_ = _loc11_ * _loc3_.scale / 2;
            _loc10_ = _loc12_ * _loc3_.scale / 2;
            this.§_-iv§.§_-ge§(_loc4_,4,_loc5_,_loc6_);
            this.§_-iv§.setPosition(_loc4_,_loc7_ - _loc9_,_loc8_ - _loc10_);
            this.§_-iv§.setPosition(_loc4_ + 1,_loc7_ + _loc9_,_loc8_ - _loc10_);
            this.§_-iv§.setPosition(_loc4_ + 2,_loc7_ - _loc9_,_loc8_ + _loc10_);
            this.§_-iv§.setPosition(_loc4_ + 3,_loc7_ + _loc9_,_loc8_ + _loc10_);
            _loc13_++;
         }
      }
      
      override public function render(param1:§_-L4§, param2:Number) : void
      {
         if(this.§_-nC§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-gY§.§_-ZO§(this.§_-sb§.mipMapping,false,§_-Gb§.§_-LT§,true);
         var _loc4_:Context3D = §_-G3§.§_-FH§;
         var _loc5_:Vector.<Number> = !!this.§_-hD§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-Hm§();
         }
         var _loc6_:§_-G3§ = §_-G3§.§_-9S§;
         if(§_-G3§.§_-LJ§ != this.§_-Y6§)
         {
            this.§_-no§(0);
            this.§_-Y6§ = §_-G3§.§_-LJ§;
         }
         this.§_-Sf§.uploadFromVector(this.§_-iv§.data,0,this.§_-nC§ * 4);
         this.§_-hO§.uploadFromVector(this.§_-iv§.§_-dj§,0,this.§_-nC§ * 4);
         _loc4_.setBlendFactors(this.§_-kg§,this.§_-P8§);
         param1.setProgram(§_-G3§.§_-9S§.§_-nf§(_loc3_));
         param1.setTextureAt(1,this.§_-sb§.base);
         _loc4_.setVertexBufferAt(0,this.§_-hO§,§_-Bn§.§_-u5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-Sf§,§_-Bn§.§_-25§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-Sf§,§_-Bn§.§_-3V§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Qz§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-37§,0,this.§_-nC§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-aE§() : Boolean
      {
         return false;
      }
      
      public function get §_-cJ§() : int
      {
         return this.§_-iv§.§_-8N§ / 4;
      }
      
      public function get §_-uh§() : int
      {
         return this.§_-nC§;
      }
      
      public function get §_-r4§() : Number
      {
         return this.§_-js§;
      }
      
      public function set §_-r4§(param1:Number) : void
      {
         this.§_-js§ = param1;
      }
      
      public function get §_-Ig§() : Number
      {
         return this.§_-0U§;
      }
      
      public function set §_-Ig§(param1:Number) : void
      {
         this.§_-0U§ = param1;
      }
      
      public function get §_-LK§() : Number
      {
         return this.§_-ng§;
      }
      
      public function set §_-LK§(param1:Number) : void
      {
         this.§_-ng§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-sb§;
      }
   }
}
