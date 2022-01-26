package §_-s7§
{
   import §_-6A§.§_-po§;
   import §_-Q2§.Texture;
   import §_-Q2§.§_-ZO§;
   import §_-bI§.§_-48§;
   import §_-d5§.§_-6Y§;
   import §_-d5§.§_-F§;
   import §_-iA§.§_-vS§;
   import §_-vO§.DisplayObject;
   import §_-vO§.§_-OW§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-VO§ extends DisplayObject implements §_-vS§
   {
       
      
      private var §_-QH§:Texture;
      
      private var §_-FA§:Vector.<§_-m7§>;
      
      private var §_-Bo§:Number;
      
      private var §_-k0§:§_-po§;
      
      private var §_-K7§:VertexBuffer3D;
      
      private var §_-iF§:VertexBuffer3D;
      
      private var §_-ju§:Vector.<uint>;
      
      private var §_-Jq§:IndexBuffer3D;
      
      private var §_-rh§:int;
      
      private var §_-BK§:Number;
      
      private var §_-8M§:Number;
      
      protected var §_-pL§:Number;
      
      protected var §_-ZY§:Number;
      
      protected var §_-9I§:Boolean;
      
      protected var §_-ZP§:String;
      
      protected var §_-R3§:String;
      
      private var §_-Ui§:int = -1;
      
      public function §_-VO§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-QH§ = param1;
         this.§_-9I§ = param1.premultipliedAlpha;
         this.§_-FA§ = new Vector.<§_-m7§>(0,false);
         this.§_-k0§ = new §_-po§(0,this.§_-9I§);
         this.§_-ju§ = new Vector.<uint>(0);
         this.§_-BK§ = param2;
         this.§_-8M§ = 0;
         this.§_-Bo§ = 0;
         this.§_-ZY§ = 0;
         this.§_-pL§ = 0;
         this.§_-R3§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-ZP§ = param4 || (!!this.§_-9I§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         this.§_-J1§(param3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-K7§)
         {
            this.§_-K7§.dispose();
         }
         if(this.§_-iF§)
         {
            this.§_-iF§.dispose();
         }
         if(this.§_-Jq§)
         {
            this.§_-Jq§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-m7§
      {
         return new §_-m7§();
      }
      
      protected function initParticle(param1:§_-m7§) : void
      {
         param1.x = this.§_-pL§;
         param1.y = this.§_-ZY§;
         param1.§_-V9§ = 0;
         param1.§_-Re§ = 1;
         param1.color = Math.random() * 16777215;
      }
      
      protected function advanceParticle(param1:§_-m7§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-V9§ / param1.§_-Re§;
         param1.scale = 1 - param1.alpha;
         param1.§_-V9§ += param2;
      }
      
      private function §_-J1§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-wG§;
         var _loc3_:int = this.§_-wG§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-6Y§.§_-0D§) == null)
         {
            throw new §_-48§();
         }
         var _loc5_:§_-po§;
         (_loc5_ = new §_-po§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-QH§.adjustVertexData(_loc5_);
         this.§_-FA§.fixed = false;
         this.§_-ju§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-FA§.push(this.createParticle());
            this.§_-k0§.§_-vV§(_loc5_);
            this.§_-ju§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-FA§.fixed = true;
         this.§_-ju§.fixed = true;
         if(this.§_-K7§)
         {
            this.§_-K7§.dispose();
         }
         if(this.§_-iF§)
         {
            this.§_-iF§.dispose();
         }
         if(this.§_-Jq§)
         {
            this.§_-Jq§.dispose();
         }
         this.§_-K7§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-po§.§_-9L§);
         this.§_-K7§.uploadFromVector(this.§_-k0§.data,0,_loc3_ * 4);
         this.§_-iF§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-po§.§_-Gj§);
         this.§_-iF§.uploadFromVector(this.§_-k0§.§_-Di§,0,_loc3_ * 4);
         this.§_-Jq§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-Jq§.uploadFromVector(this.§_-ju§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-BK§ != 0)
         {
            this.§_-8M§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-8M§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-R9§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-An§(param1:Number) : void
      {
         var _loc3_:§_-m7§ = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:§_-m7§ = null;
         var _loc15_:Number = NaN;
         param1 = Math.min(0.2,param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rh§)
         {
            _loc3_ = this.§_-FA§[_loc2_] as §_-m7§;
            if(_loc3_.§_-V9§ < _loc3_.§_-Re§)
            {
               this.advanceParticle(_loc3_,param1);
               _loc2_++;
            }
            else
            {
               if(_loc2_ != this.§_-rh§ - 1)
               {
                  _loc14_ = this.§_-FA§[this.§_-rh§ - 1] as §_-m7§;
                  this.§_-FA§[this.§_-rh§ - 1] = _loc3_;
                  this.§_-FA§[_loc2_] = _loc14_;
               }
               --this.§_-rh§;
            }
         }
         if(this.§_-8M§ > 0)
         {
            _loc15_ = 1 / this.§_-BK§;
            this.§_-Bo§ += param1;
            while(this.§_-Bo§ > 0)
            {
               if(this.§_-rh§ == this.§_-wG§)
               {
                  this.§_-J1§(this.§_-wG§);
               }
               _loc3_ = this.§_-FA§[this.§_-rh§++] as §_-m7§;
               this.initParticle(_loc3_);
               this.advanceParticle(_loc3_,this.§_-Bo§);
               this.§_-Bo§ -= _loc15_;
            }
            if(this.§_-8M§ != Number.MAX_VALUE)
            {
               this.§_-8M§ = Math.max(0,this.§_-8M§ - param1);
            }
         }
         var _loc4_:* = 0;
         var _loc11_:Number = this.§_-QH§.width;
         var _loc12_:Number = this.§_-QH§.height;
         var _loc13_:int = 0;
         while(_loc13_ < this.§_-rh§)
         {
            _loc4_ = _loc13_ << 2;
            _loc3_ = this.§_-FA§[_loc13_] as §_-m7§;
            _loc5_ = _loc3_.color;
            _loc6_ = _loc3_.alpha;
            _loc7_ = _loc3_.x;
            _loc8_ = _loc3_.y;
            _loc9_ = _loc11_ * _loc3_.scale / 2;
            _loc10_ = _loc12_ * _loc3_.scale / 2;
            this.§_-k0§.§_-QZ§(_loc4_,4,_loc5_,_loc6_);
            this.§_-k0§.setPosition(_loc4_,_loc7_ - _loc9_,_loc8_ - _loc10_);
            this.§_-k0§.setPosition(_loc4_ + 1,_loc7_ + _loc9_,_loc8_ - _loc10_);
            this.§_-k0§.setPosition(_loc4_ + 2,_loc7_ - _loc9_,_loc8_ + _loc10_);
            this.§_-k0§.setPosition(_loc4_ + 3,_loc7_ + _loc9_,_loc8_ + _loc10_);
            _loc13_++;
         }
      }
      
      override public function render(param1:§_-F§, param2:Number) : void
      {
         if(this.§_-rh§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-OW§.§_-U9§(this.§_-QH§.mipMapping,false,§_-ZO§.§_-Su§,true);
         var _loc4_:Context3D = §_-6Y§.§_-0D§;
         var _loc5_:Vector.<Number> = !!this.§_-9I§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-48§();
         }
         var _loc6_:§_-6Y§ = §_-6Y§.§true§;
         if(§_-6Y§.§_-X7§ != this.§_-Ui§)
         {
            this.§_-J1§(0);
            this.§_-Ui§ = §_-6Y§.§_-X7§;
         }
         this.§_-K7§.uploadFromVector(this.§_-k0§.data,0,this.§_-rh§ * 4);
         this.§_-iF§.uploadFromVector(this.§_-k0§.§_-Di§,0,this.§_-rh§ * 4);
         _loc4_.setBlendFactors(this.§_-ZP§,this.§_-R3§);
         param1.setProgram(§_-6Y§.§true§.§_-O2§(_loc3_));
         param1.setTextureAt(1,this.§_-QH§.base);
         _loc4_.setVertexBufferAt(0,this.§_-iF§,§_-po§.§_-hR§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-K7§,§_-po§.§_-L8§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-K7§,§_-po§.§_-XJ§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-5y§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-Jq§,0,this.§_-rh§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-9e§() : Boolean
      {
         return false;
      }
      
      public function get §_-wG§() : int
      {
         return this.§_-k0§.§_-Kb§ / 4;
      }
      
      public function get §_-B4§() : int
      {
         return this.§_-rh§;
      }
      
      public function get §throw§() : Number
      {
         return this.§_-BK§;
      }
      
      public function set §throw§(param1:Number) : void
      {
         this.§_-BK§ = param1;
      }
      
      public function get §_-iE§() : Number
      {
         return this.§_-pL§;
      }
      
      public function set §_-iE§(param1:Number) : void
      {
         this.§_-pL§ = param1;
      }
      
      public function get §_-2M§() : Number
      {
         return this.§_-ZY§;
      }
      
      public function set §_-2M§(param1:Number) : void
      {
         this.§_-ZY§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-QH§;
      }
   }
}
