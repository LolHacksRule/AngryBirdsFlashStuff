package §_-CY§
{
   import §_-9A§.§_-ID§;
   import §_-Cy§.Texture;
   import §_-Cy§.§_-qF§;
   import §_-JR§.§_-t2§;
   import §_-JR§.§_-yh§;
   import §_-UX§.DisplayObject;
   import §_-UX§.§_-2S§;
   import §_-kX§.§_-hW§;
   import §_-ls§.§_-YQ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-rV§ extends DisplayObject implements §_-ID§
   {
       
      
      private var §_-lT§:Texture;
      
      private var §_-Am§:Vector.<§_-0w§>;
      
      private var §_-UN§:Number;
      
      private var §_-fM§:§_-hW§;
      
      private var §_-q6§:VertexBuffer3D;
      
      private var §_-jf§:VertexBuffer3D;
      
      private var §_-ij§:Vector.<uint>;
      
      private var §_-wD§:IndexBuffer3D;
      
      private var §_-q-§:int;
      
      private var §_-D3§:Number;
      
      private var §_-fR§:Number;
      
      protected var §_-GC§:Number;
      
      protected var §_-9i§:Number;
      
      protected var §_-Hn§:Boolean;
      
      protected var §_-tO§:String;
      
      protected var §_-0F§:String;
      
      private var §_-sp§:int = -1;
      
      public function §_-rV§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-lT§ = param1;
         this.§_-Hn§ = param1.premultipliedAlpha;
         this.§_-Am§ = new Vector.<§_-0w§>(0,false);
         this.§_-fM§ = new §_-hW§(0,this.§_-Hn§);
         this.§_-ij§ = new Vector.<uint>(0);
         this.§_-D3§ = param2;
         this.§_-fR§ = 0;
         this.§_-UN§ = 0;
         this.§_-9i§ = 0;
         this.§_-GC§ = 0;
         this.§_-0F§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-tO§ = param4 || (!!this.§_-Hn§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         this.§_-cI§(param3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-q6§)
         {
            this.§_-q6§.dispose();
         }
         if(this.§_-jf§)
         {
            this.§_-jf§.dispose();
         }
         if(this.§_-wD§)
         {
            this.§_-wD§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-0w§
      {
         return new §_-0w§();
      }
      
      protected function initParticle(param1:§_-0w§) : void
      {
         param1.x = this.§_-GC§;
         param1.y = this.§_-9i§;
         param1.§_-Zs§ = 0;
         param1.§_-1g§ = 1;
         param1.color = Math.random() * 16777215;
      }
      
      protected function advanceParticle(param1:§_-0w§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-Zs§ / param1.§_-1g§;
         param1.scale = 1 - param1.alpha;
         param1.§_-Zs§ += param2;
      }
      
      private function §_-cI§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-Sb§;
         var _loc3_:int = this.§_-Sb§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-yh§.§_-gS§) == null)
         {
            throw new §_-YQ§();
         }
         var _loc5_:§_-hW§;
         (_loc5_ = new §_-hW§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-lT§.adjustVertexData(_loc5_);
         this.§_-Am§.fixed = false;
         this.§_-ij§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-Am§.push(this.createParticle());
            this.§_-fM§.§_-51§(_loc5_);
            this.§_-ij§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-Am§.fixed = true;
         this.§_-ij§.fixed = true;
         if(this.§_-q6§)
         {
            this.§_-q6§.dispose();
         }
         if(this.§_-jf§)
         {
            this.§_-jf§.dispose();
         }
         if(this.§_-wD§)
         {
            this.§_-wD§.dispose();
         }
         this.§_-q6§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-hW§.§_-QY§);
         this.§_-q6§.uploadFromVector(this.§_-fM§.data,0,_loc3_ * 4);
         this.§_-jf§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-hW§.§_-1y§);
         this.§_-jf§.uploadFromVector(this.§_-fM§.§_-IU§,0,_loc3_ * 4);
         this.§_-wD§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-wD§.uploadFromVector(this.§_-ij§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-D3§ != 0)
         {
            this.§_-fR§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-fR§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-Iy§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-rp§(param1:Number) : void
      {
         var _loc3_:§_-0w§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:§_-0w§ = null;
         var _loc15_:Number = NaN;
         param1 = Math.min(0.2,param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-q-§)
         {
            _loc3_ = this.§_-Am§[_loc2_] as §_-0w§;
            if(_loc3_.§_-Zs§ < _loc3_.§_-1g§)
            {
               this.advanceParticle(_loc3_,param1);
               _loc2_++;
            }
            else
            {
               if(_loc2_ != this.§_-q-§ - 1)
               {
                  _loc14_ = this.§_-Am§[this.§_-q-§ - 1] as §_-0w§;
                  this.§_-Am§[this.§_-q-§ - 1] = _loc3_;
                  this.§_-Am§[_loc2_] = _loc14_;
               }
               --this.§_-q-§;
            }
         }
         if(this.§_-fR§ > 0)
         {
            _loc15_ = 1 / this.§_-D3§;
            this.§_-UN§ += param1;
            while(this.§_-UN§ > 0)
            {
               if(this.§_-q-§ == this.§_-Sb§)
               {
                  this.§_-cI§(this.§_-Sb§);
               }
               _loc3_ = this.§_-Am§[this.§_-q-§++] as §_-0w§;
               this.initParticle(_loc3_);
               this.advanceParticle(_loc3_,this.§_-UN§);
               this.§_-UN§ -= _loc15_;
            }
            if(this.§_-fR§ != Number.MAX_VALUE)
            {
               this.§_-fR§ = Math.max(0,this.§_-fR§ - param1);
            }
         }
         var _loc4_:* = 0;
         var _loc11_:Number = this.§_-lT§.width;
         var _loc12_:Number = this.§_-lT§.height;
         var _loc13_:int = 0;
         while(_loc13_ < this.§_-q-§)
         {
            _loc4_ = _loc13_ << 2;
            _loc3_ = this.§_-Am§[_loc13_] as §_-0w§;
            _loc5_ = _loc3_.color;
            _loc6_ = _loc3_.alpha;
            _loc7_ = _loc3_.x;
            _loc8_ = _loc3_.y;
            _loc9_ = _loc11_ * _loc3_.scale / 2;
            _loc10_ = _loc12_ * _loc3_.scale / 2;
            this.§_-fM§.§_-d3§(_loc4_,4,_loc5_,_loc6_);
            this.§_-fM§.setPosition(_loc4_,_loc7_ - _loc9_,_loc8_ - _loc10_);
            this.§_-fM§.setPosition(_loc4_ + 1,_loc7_ + _loc9_,_loc8_ - _loc10_);
            this.§_-fM§.setPosition(_loc4_ + 2,_loc7_ - _loc9_,_loc8_ + _loc10_);
            this.§_-fM§.setPosition(_loc4_ + 3,_loc7_ + _loc9_,_loc8_ + _loc10_);
            _loc13_++;
         }
      }
      
      override public function render(param1:§_-t2§, param2:Number) : void
      {
         if(this.§_-q-§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-2S§.§_-O9§(this.§_-lT§.mipMapping,false,§_-qF§.§_-iU§,true);
         var _loc4_:Context3D = §_-yh§.§_-gS§;
         var _loc5_:Vector.<Number> = !!this.§_-Hn§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-YQ§();
         }
         var _loc6_:§_-yh§ = §_-yh§.§_-1o§;
         if(§_-yh§.§_-9E§ != this.§_-sp§)
         {
            this.§_-cI§(0);
            this.§_-sp§ = §_-yh§.§_-9E§;
         }
         this.§_-q6§.uploadFromVector(this.§_-fM§.data,0,this.§_-q-§ * 4);
         this.§_-jf§.uploadFromVector(this.§_-fM§.§_-IU§,0,this.§_-q-§ * 4);
         _loc4_.setBlendFactors(this.§_-tO§,this.§_-0F§);
         param1.setProgram(§_-yh§.§_-1o§.§_-F8§(_loc3_));
         param1.setTextureAt(1,this.§_-lT§.base);
         _loc4_.setVertexBufferAt(0,this.§_-jf§,§_-hW§.§_-e5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-q6§,§_-hW§.§_-fH§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-q6§,§_-hW§.§_-1n§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-EN§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-wD§,0,this.§_-q-§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-22§() : Boolean
      {
         return false;
      }
      
      public function get §_-Sb§() : int
      {
         return this.§_-fM§.§_-yR§ / 4;
      }
      
      public function get §_-wi§() : int
      {
         return this.§_-q-§;
      }
      
      public function get §_-KY§() : Number
      {
         return this.§_-D3§;
      }
      
      public function set §_-KY§(param1:Number) : void
      {
         this.§_-D3§ = param1;
      }
      
      public function get §_-ky§() : Number
      {
         return this.§_-GC§;
      }
      
      public function set §_-ky§(param1:Number) : void
      {
         this.§_-GC§ = param1;
      }
      
      public function get §_-Dq§() : Number
      {
         return this.§_-9i§;
      }
      
      public function set §_-Dq§(param1:Number) : void
      {
         this.§_-9i§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-lT§;
      }
   }
}
