package §_-NT§
{
   import §_-1Q§.§_-G7§;
   import §_-4g§.Texture;
   import §_-4g§.§_-Jq§;
   import §_-HT§.§_-8c§;
   import §_-LP§.DisplayObject;
   import §_-LP§.§_-19§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-2S§ extends DisplayObject implements §_-G7§
   {
       
      
      private var §_-cX§:Texture;
      
      private var §_-ja§:Vector.<§_-Eo§>;
      
      private var §_-68§:Number;
      
      private var §_-bk§:§_-dF§;
      
      private var §_-VU§:VertexBuffer3D;
      
      private var §_-iD§:VertexBuffer3D;
      
      private var §_-O6§:Vector.<uint>;
      
      private var §_-aB§:IndexBuffer3D;
      
      private var §_-q5§:int;
      
      private var §_-7c§:Number;
      
      private var §_-6k§:Number;
      
      protected var §_-CF§:Number;
      
      protected var §_-Pd§:Number;
      
      protected var §_-Cr§:Boolean;
      
      protected var §_-pM§:String;
      
      protected var §_-Wx§:String;
      
      private var §_-Rx§:int = -1;
      
      public function §_-2S§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-cX§ = param1;
         this.§_-Cr§ = param1.premultipliedAlpha;
         this.§_-ja§ = new Vector.<§_-Eo§>(0,false);
         this.§_-bk§ = new §_-dF§(0,this.§_-Cr§);
         this.§_-O6§ = new Vector.<uint>(0);
         this.§_-7c§ = param2;
         this.§_-6k§ = 0;
         this.§_-68§ = 0;
         this.§_-Pd§ = 0;
         this.§_-CF§ = 0;
         this.§_-Wx§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-pM§ = param4 || (!!this.§_-Cr§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         this.§_-Wq§(param3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-VU§)
         {
            this.§_-VU§.dispose();
         }
         if(this.§_-iD§)
         {
            this.§_-iD§.dispose();
         }
         if(this.§_-aB§)
         {
            this.§_-aB§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-Eo§
      {
         return new §_-Eo§();
      }
      
      protected function initParticle(param1:§_-Eo§) : void
      {
         param1.x = this.§_-CF§;
         param1.y = this.§_-Pd§;
         param1.§_-mm§ = 0;
         param1.§_-UL§ = 1;
         param1.color = Math.random() * 16777215;
      }
      
      protected function advanceParticle(param1:§_-Eo§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-mm§ / param1.§_-UL§;
         param1.scale = 1 - param1.alpha;
         param1.§_-mm§ += param2;
      }
      
      private function §_-Wq§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-HR§;
         var _loc3_:int = this.§_-HR§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-Vu§.§_-ez§) == null)
         {
            throw new §_-8c§();
         }
         var _loc5_:§_-dF§;
         (_loc5_ = new §_-dF§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-cX§.adjustVertexData(_loc5_);
         this.§_-ja§.fixed = false;
         this.§_-O6§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-ja§.push(this.createParticle());
            this.§_-bk§.§_-Zi§(_loc5_);
            this.§_-O6§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-ja§.fixed = true;
         this.§_-O6§.fixed = true;
         if(this.§_-VU§)
         {
            this.§_-VU§.dispose();
         }
         if(this.§_-iD§)
         {
            this.§_-iD§.dispose();
         }
         if(this.§_-aB§)
         {
            this.§_-aB§.dispose();
         }
         this.§_-VU§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-dF§.§_-YF§);
         this.§_-VU§.uploadFromVector(this.§_-bk§.data,0,_loc3_ * 4);
         this.§_-iD§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-dF§.§_-T6§);
         this.§_-iD§.uploadFromVector(this.§_-bk§.§_-rc§,0,_loc3_ * 4);
         this.§_-aB§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-aB§.uploadFromVector(this.§_-O6§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-7c§ != 0)
         {
            this.§_-6k§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-6k§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-OX§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc3_:§_-Eo§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:§_-Eo§ = null;
         var _loc15_:Number = NaN;
         param1 = Math.min(0.2,param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-q5§)
         {
            _loc3_ = this.§_-ja§[_loc2_] as §_-Eo§;
            if(_loc3_.§_-mm§ < _loc3_.§_-UL§)
            {
               this.advanceParticle(_loc3_,param1);
               _loc2_++;
            }
            else
            {
               if(_loc2_ != this.§_-q5§ - 1)
               {
                  _loc14_ = this.§_-ja§[this.§_-q5§ - 1] as §_-Eo§;
                  this.§_-ja§[this.§_-q5§ - 1] = _loc3_;
                  this.§_-ja§[_loc2_] = _loc14_;
               }
               --this.§_-q5§;
            }
         }
         if(this.§_-6k§ > 0)
         {
            _loc15_ = 1 / this.§_-7c§;
            this.§_-68§ += param1;
            while(this.§_-68§ > 0)
            {
               if(this.§_-q5§ == this.§_-HR§)
               {
                  this.§_-Wq§(this.§_-HR§);
               }
               _loc3_ = this.§_-ja§[this.§_-q5§++] as §_-Eo§;
               this.initParticle(_loc3_);
               this.advanceParticle(_loc3_,this.§_-68§);
               this.§_-68§ -= _loc15_;
            }
            if(this.§_-6k§ != Number.MAX_VALUE)
            {
               this.§_-6k§ = Math.max(0,this.§_-6k§ - param1);
            }
         }
         var _loc4_:* = 0;
         var _loc11_:Number = this.§_-cX§.width;
         var _loc12_:Number = this.§_-cX§.height;
         var _loc13_:int = 0;
         while(_loc13_ < this.§_-q5§)
         {
            _loc4_ = _loc13_ << 2;
            _loc3_ = this.§_-ja§[_loc13_] as §_-Eo§;
            _loc5_ = _loc3_.color;
            _loc6_ = _loc3_.alpha;
            _loc7_ = _loc3_.x;
            _loc8_ = _loc3_.y;
            _loc9_ = _loc11_ * _loc3_.scale / 2;
            _loc10_ = _loc12_ * _loc3_.scale / 2;
            this.§_-bk§.§_-9D§(_loc4_,4,_loc5_,_loc6_);
            this.§_-bk§.setPosition(_loc4_,_loc7_ - _loc9_,_loc8_ - _loc10_);
            this.§_-bk§.setPosition(_loc4_ + 1,_loc7_ + _loc9_,_loc8_ - _loc10_);
            this.§_-bk§.setPosition(_loc4_ + 2,_loc7_ - _loc9_,_loc8_ + _loc10_);
            this.§_-bk§.setPosition(_loc4_ + 3,_loc7_ + _loc9_,_loc8_ + _loc10_);
            _loc13_++;
         }
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         if(this.§_-q5§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-19§.§_-R4§(this.§_-cX§.mipMapping,false,§_-Jq§.§_-mg§,true);
         var _loc4_:Context3D = §_-Vu§.§_-ez§;
         var _loc5_:Vector.<Number> = !!this.§_-Cr§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-8c§();
         }
         var _loc6_:§_-Vu§ = §_-Vu§.§_-dq§;
         if(§_-Vu§.§_-Wf§ != this.§_-Rx§)
         {
            this.§_-Wq§(0);
            this.§_-Rx§ = §_-Vu§.§_-Wf§;
         }
         this.§_-VU§.uploadFromVector(this.§_-bk§.data,0,this.§_-q5§ * 4);
         this.§_-iD§.uploadFromVector(this.§_-bk§.§_-rc§,0,this.§_-q5§ * 4);
         _loc4_.setBlendFactors(this.§_-pM§,this.§_-Wx§);
         param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(_loc3_));
         param1.setTextureAt(1,this.§_-cX§.base);
         _loc4_.setVertexBufferAt(0,this.§_-iD§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-j4§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-aB§,0,this.§_-q5§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-ZY§() : Boolean
      {
         return false;
      }
      
      public function get §_-HR§() : int
      {
         return this.§_-bk§.§_-4f§ / 4;
      }
      
      public function get §_-K8§() : int
      {
         return this.§_-q5§;
      }
      
      public function get §_-0n§() : Number
      {
         return this.§_-7c§;
      }
      
      public function set §_-0n§(param1:Number) : void
      {
         this.§_-7c§ = param1;
      }
      
      public function get §_-jz§() : Number
      {
         return this.§_-CF§;
      }
      
      public function set §_-jz§(param1:Number) : void
      {
         this.§_-CF§ = param1;
      }
      
      public function get §_-4R§() : Number
      {
         return this.§_-Pd§;
      }
      
      public function set §_-4R§(param1:Number) : void
      {
         this.§_-Pd§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-cX§;
      }
   }
}
