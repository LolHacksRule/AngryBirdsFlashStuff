package §_-XZ§
{
   import §_-B2§.§_-H4§;
   import §_-B2§.§_-Ke§;
   import §_-MS§.§_-xc§;
   import §_-Zq§.§_-8O§;
   import §_-dQ§.§_-uz§;
   import §_-jY§.Texture;
   import §_-jY§.§_-h5§;
   import §_-se§.DisplayObject;
   import §_-se§.§_-N§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Kp§ extends DisplayObject implements §_-xc§
   {
       
      
      private var §_-OI§:Texture;
      
      private var §_-BK§:Vector.<§_-N8§>;
      
      private var §_-ux§:Number;
      
      private var §_-oi§:§_-8O§;
      
      private var §_-bw§:VertexBuffer3D;
      
      private var §_-Dk§:VertexBuffer3D;
      
      private var §_-bW§:Vector.<uint>;
      
      private var §_-xO§:IndexBuffer3D;
      
      private var §_-jN§:int;
      
      private var §_-QS§:Number;
      
      private var §_-ak§:Number;
      
      protected var §_-bQ§:Number;
      
      protected var final:Number;
      
      protected var §_-Hr§:Boolean;
      
      protected var §_-iX§:String;
      
      protected var §_-El§:String;
      
      private var §_-oC§:int = -1;
      
      public function §_-Kp§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-OI§ = param1;
         this.§_-Hr§ = param1.premultipliedAlpha;
         this.§_-BK§ = new Vector.<§_-N8§>(0,false);
         this.§_-oi§ = new §_-8O§(0,this.§_-Hr§);
         this.§_-bW§ = new Vector.<uint>(0);
         this.§_-QS§ = param2;
         this.§_-ak§ = 0;
         this.§_-ux§ = 0;
         this.final = 0;
         this.§_-bQ§ = 0;
         this.§_-El§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-iX§ = param4 || (!!this.§_-Hr§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         this.§_-00§(param3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-bw§)
         {
            this.§_-bw§.dispose();
         }
         if(this.§_-Dk§)
         {
            this.§_-Dk§.dispose();
         }
         if(this.§_-xO§)
         {
            this.§_-xO§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-N8§
      {
         return new §_-N8§();
      }
      
      protected function initParticle(param1:§_-N8§) : void
      {
         param1.x = this.§_-bQ§;
         param1.y = this.final;
         param1.§_-xC§ = 0;
         param1.§_-7K§ = 1;
         param1.color = Math.random() * 16777215;
      }
      
      protected function advanceParticle(param1:§_-N8§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-xC§ / param1.§_-7K§;
         param1.scale = 1 - param1.alpha;
         param1.§_-xC§ += param2;
      }
      
      private function §_-00§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-wr§;
         var _loc3_:int = this.§_-wr§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-H4§.§_-Eu§) == null)
         {
            throw new §_-uz§();
         }
         var _loc5_:§_-8O§;
         (_loc5_ = new §_-8O§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-OI§.adjustVertexData(_loc5_);
         this.§_-BK§.fixed = false;
         this.§_-bW§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-BK§.push(this.createParticle());
            this.§_-oi§.append(_loc5_);
            this.§_-bW§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-BK§.fixed = true;
         this.§_-bW§.fixed = true;
         if(this.§_-bw§)
         {
            this.§_-bw§.dispose();
         }
         if(this.§_-Dk§)
         {
            this.§_-Dk§.dispose();
         }
         if(this.§_-xO§)
         {
            this.§_-xO§.dispose();
         }
         this.§_-bw§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-8O§.§_-ht§);
         this.§_-bw§.uploadFromVector(this.§_-oi§.data,0,_loc3_ * 4);
         this.§_-Dk§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-8O§.§_-uI§);
         this.§_-Dk§.uploadFromVector(this.§_-oi§.§_-6H§,0,_loc3_ * 4);
         this.§_-xO§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-xO§.uploadFromVector(this.§_-bW§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-QS§ != 0)
         {
            this.§_-ak§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-ak§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-h3§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-DV§(param1:Number) : void
      {
         var _loc3_:§_-N8§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:§_-N8§ = null;
         var _loc15_:Number = NaN;
         param1 = Math.min(0.2,param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-jN§)
         {
            _loc3_ = this.§_-BK§[_loc2_] as §_-N8§;
            if(_loc3_.§_-xC§ < _loc3_.§_-7K§)
            {
               this.advanceParticle(_loc3_,param1);
               _loc2_++;
            }
            else
            {
               if(_loc2_ != this.§_-jN§ - 1)
               {
                  _loc14_ = this.§_-BK§[this.§_-jN§ - 1] as §_-N8§;
                  this.§_-BK§[this.§_-jN§ - 1] = _loc3_;
                  this.§_-BK§[_loc2_] = _loc14_;
               }
               --this.§_-jN§;
            }
         }
         if(this.§_-ak§ > 0)
         {
            _loc15_ = 1 / this.§_-QS§;
            this.§_-ux§ += param1;
            while(this.§_-ux§ > 0)
            {
               if(this.§_-jN§ == this.§_-wr§)
               {
                  this.§_-00§(this.§_-wr§);
               }
               _loc3_ = this.§_-BK§[this.§_-jN§++] as §_-N8§;
               this.initParticle(_loc3_);
               this.advanceParticle(_loc3_,this.§_-ux§);
               this.§_-ux§ -= _loc15_;
            }
            if(this.§_-ak§ != Number.MAX_VALUE)
            {
               this.§_-ak§ = Math.max(0,this.§_-ak§ - param1);
            }
         }
         var _loc4_:* = 0;
         var _loc11_:Number = this.§_-OI§.width;
         var _loc12_:Number = this.§_-OI§.height;
         var _loc13_:int = 0;
         while(_loc13_ < this.§_-jN§)
         {
            _loc4_ = _loc13_ << 2;
            _loc3_ = this.§_-BK§[_loc13_] as §_-N8§;
            _loc5_ = _loc3_.color;
            _loc6_ = _loc3_.alpha;
            _loc7_ = _loc3_.x;
            _loc8_ = _loc3_.y;
            _loc9_ = _loc11_ * _loc3_.scale / 2;
            _loc10_ = _loc12_ * _loc3_.scale / 2;
            this.§_-oi§.§_-t4§(_loc4_,4,_loc5_,_loc6_);
            this.§_-oi§.setPosition(_loc4_,_loc7_ - _loc9_,_loc8_ - _loc10_);
            this.§_-oi§.setPosition(_loc4_ + 1,_loc7_ + _loc9_,_loc8_ - _loc10_);
            this.§_-oi§.setPosition(_loc4_ + 2,_loc7_ - _loc9_,_loc8_ + _loc10_);
            this.§_-oi§.setPosition(_loc4_ + 3,_loc7_ + _loc9_,_loc8_ + _loc10_);
            _loc13_++;
         }
      }
      
      override public function render(param1:§_-Ke§, param2:Number) : void
      {
         if(this.§_-jN§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-N§.§_-dl§(this.§_-OI§.mipMapping,false,§_-h5§.§_-0q§,true);
         var _loc4_:Context3D = §_-H4§.§_-Eu§;
         var _loc5_:Vector.<Number> = !!this.§_-Hr§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-uz§();
         }
         var _loc6_:§_-H4§ = §_-H4§.§_-I9§;
         if(§_-H4§.§_-qV§ != this.§_-oC§)
         {
            this.§_-00§(0);
            this.§_-oC§ = §_-H4§.§_-qV§;
         }
         this.§_-bw§.uploadFromVector(this.§_-oi§.data,0,this.§_-jN§ * 4);
         this.§_-Dk§.uploadFromVector(this.§_-oi§.§_-6H§,0,this.§_-jN§ * 4);
         _loc4_.setBlendFactors(this.§_-iX§,this.§_-El§);
         param1.setProgram(§_-H4§.§_-I9§.§_-4C§(_loc3_));
         param1.setTextureAt(1,this.§_-OI§.base);
         _loc4_.setVertexBufferAt(0,this.§_-Dk§,§_-8O§.§_-Fz§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-bw§,§_-8O§.§_-px§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-bw§,§_-8O§.§_-Md§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Lp§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-xO§,0,this.§_-jN§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-N1§() : Boolean
      {
         return false;
      }
      
      public function get §_-wr§() : int
      {
         return this.§_-oi§.§_-wF§ / 4;
      }
      
      public function get §_-bj§() : int
      {
         return this.§_-jN§;
      }
      
      public function get §_-ii§() : Number
      {
         return this.§_-QS§;
      }
      
      public function set §_-ii§(param1:Number) : void
      {
         this.§_-QS§ = param1;
      }
      
      public function get §_-xA§() : Number
      {
         return this.§_-bQ§;
      }
      
      public function set §_-xA§(param1:Number) : void
      {
         this.§_-bQ§ = param1;
      }
      
      public function get § do§() : Number
      {
         return this.final;
      }
      
      public function set § do§(param1:Number) : void
      {
         this.final = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-OI§;
      }
   }
}
