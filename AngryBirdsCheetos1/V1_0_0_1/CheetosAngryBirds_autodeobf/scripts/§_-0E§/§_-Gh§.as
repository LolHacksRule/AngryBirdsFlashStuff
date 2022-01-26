package §_-0E§
{
   import §_-Bt§.§_-Ty§;
   import §_-Dk§.Texture;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.§_-Nd§;
   import §_-lh§.§_-UW§;
   import §_-uz§.§_-J4§;
   import §_-vB§.§_-7p§;
   import §_-vB§.§_-Kk§;
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
   
   public class §_-Gh§ extends DisplayObject implements §_-UW§
   {
       
      
      private var §_-AF§:Texture;
      
      private var §_-pH§:Vector.<§_-WW§>;
      
      private var §_-lQ§:Number;
      
      private var §_-ye§:§_-Ty§;
      
      private var §_-ao§:VertexBuffer3D;
      
      private var §_-3k§:VertexBuffer3D;
      
      private var §_-4l§:Vector.<uint>;
      
      private var §_-mx§:IndexBuffer3D;
      
      private var §_-Z6§:int;
      
      private var §_-0A§:int;
      
      private var §_-Dz§:Number;
      
      protected var §_-QH§:Number;
      
      private var §_-ef§:Number = 0.0;
      
      private var §_-uM§:Number;
      
      protected var §_-Sm§:Number;
      
      protected var §_-hQ§:Number;
      
      protected var §_-Wp§:Boolean;
      
      protected var §_-4n§:String;
      
      protected var §_-qc§:String;
      
      protected var §_-fq§:String;
      
      private var §_-v5§:int = -1;
      
      private var §_-tU§:Number = 0.0;
      
      public function §_-Gh§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-AF§ = param1;
         this.§_-Wp§ = param1.premultipliedAlpha;
         this.§_-pH§ = new Vector.<§_-WW§>(0,false);
         this.§_-ye§ = new §_-Ty§(0,this.§_-Wp§);
         this.§_-4l§ = new Vector.<uint>(0);
         this.§_-Dz§ = param2;
         this.§_-uM§ = 0;
         this.§_-lQ§ = 0;
         this.§_-hQ§ = 0;
         this.§_-Sm§ = 0;
         this.§_-qc§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-4n§ = param4 || (!!this.§_-Wp§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§_-Mp§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-ao§)
         {
            this.§_-ao§.dispose();
         }
         if(this.§_-3k§)
         {
            this.§_-3k§.dispose();
         }
         if(this.§_-mx§)
         {
            this.§_-mx§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-WW§
      {
         return new §_-WW§();
      }
      
      protected function initParticle(param1:§_-WW§) : void
      {
         param1.x = this.§_-Sm§;
         param1.y = this.§_-hQ§;
         param1.§_-Ho§ = 0;
         param1.§_-vF§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§_-WW§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-Ho§ / param1.§_-vF§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§_-Ho§ += param2;
      }
      
      private function §_-Mp§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-sI§;
         var _loc3_:int = this.§_-sI§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-Kk§.§_-r9§) == null)
         {
            throw new §_-J4§();
         }
         var _loc5_:§_-Ty§;
         (_loc5_ = new §_-Ty§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-AF§.adjustVertexData(_loc5_);
         this.§_-pH§.fixed = false;
         this.§_-4l§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-pH§.push(this.createParticle());
            this.§_-ye§.§_-ms§(_loc5_);
            this.§_-4l§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-pH§.fixed = true;
         this.§_-4l§.fixed = true;
         if(this.§_-ao§)
         {
            this.§_-ao§.dispose();
         }
         if(this.§_-3k§)
         {
            this.§_-3k§.dispose();
         }
         if(this.§_-mx§)
         {
            this.§_-mx§.dispose();
         }
         this.§_-ao§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-Ty§.§_-1G§);
         this.§_-ao§.uploadFromVector(this.§_-ye§.data,0,_loc3_ * 4);
         this.§_-3k§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-Ty§.§_-oB§);
         this.§_-3k§.uploadFromVector(this.§_-ye§.§_-n6§,0,_loc3_ * 4);
         this.§_-mx§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-mx§.uploadFromVector(this.§_-4l§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-Dz§ != 0)
         {
            this.§_-uM§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-uM§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-R0§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-bJ§(param1:Number) : void
      {
         this.§_-DS§(param1);
         this.§_-tI§(null);
      }
      
      public function §_-DS§(param1:Number) : void
      {
         this.§_-tU§ = param1;
      }
      
      private function §_-tI§(param1:Matrix3D) : void
      {
         var _loc4_:§_-WW§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc13_:§_-WW§ = null;
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
         if(isNaN(this.§_-tU§) || this.§_-tU§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§_-tU§;
         this.§_-tU§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-Z6§)
         {
            if((_loc4_ = this.§_-pH§[_loc3_]).§_-Ho§ < _loc4_.§_-vF§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§_-Z6§ - 1)
               {
                  _loc13_ = this.§_-pH§[this.§_-Z6§ - 1] as §_-WW§;
                  this.§_-pH§[this.§_-Z6§ - 1] = _loc4_;
                  this.§_-pH§[_loc3_] = _loc13_;
               }
               --this.§_-Z6§;
            }
         }
         if(this.§_-uM§ > 0)
         {
            _loc14_ = 1 / this.§_-Dz§;
            this.§_-lQ§ += _loc2_;
            while(this.§_-lQ§ > 0)
            {
               if(this.§_-Z6§ == this.§_-sI§)
               {
                  this.§_-Mp§(this.§_-sI§);
               }
               _loc4_ = this.§_-pH§[this.§_-Z6§++] as §_-WW§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§_-lQ§);
               _loc15_ = _loc14_;
               if(!isNaN(this.§_-QH§))
               {
                  _loc15_ = _loc14_ * (1 - this.§_-QH§ + Math.random() * this.§_-QH§ * 2) + this.§_-ef§;
               }
               this.§_-ef§ += _loc14_ - _loc15_;
               this.§_-lQ§ -= _loc15_;
            }
            if(this.§_-uM§ != Number.MAX_VALUE)
            {
               this.§_-uM§ = Math.max(0,this.§_-uM§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc9_:Number = this.§_-AF§.width;
         var _loc10_:Number = this.§_-AF§.height;
         this.§_-0A§ = 0;
         var _loc11_:Vector3D = new Vector3D();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-Z6§)
         {
            _loc7_ = (_loc4_ = this.§_-pH§[_loc12_]).x;
            _loc8_ = _loc4_.y;
            _loc16_ = false;
            if(param1)
            {
               _loc16_ = true;
               _loc11_.x = _loc7_;
               _loc11_.y = _loc8_;
               if((_loc17_ = param1.transformVector(_loc11_)).x < -1.15 || _loc17_.x > 1.15 || _loc17_.y < -1.15 || _loc17_.y > 1.15)
               {
                  if(§_-Kk§.§_-NR§)
                  {
                     _loc18_ = (_loc18_ = Math.max(_loc9_ * _loc4_.scaleX / 2,_loc10_ * _loc4_.scaleY / 2)) / §_-Kk§.§_-NR§.§_-5E§;
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
               ++this.§_-0A§;
               this.§_-ye§.§_-NC§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc20_);
               this.§_-ye§.setPosition(_loc5_,_loc7_ + _loc27_,_loc8_ + _loc28_);
               this.§_-ye§.setPosition(_loc5_ + 1,_loc7_ + _loc25_,_loc8_ + _loc26_);
               this.§_-ye§.setPosition(_loc5_ + 2,_loc7_ + _loc31_,_loc8_ + _loc32_);
               this.§_-ye§.setPosition(_loc5_ + 3,_loc7_ + _loc29_,_loc8_ + _loc30_);
               _loc5_ += 4;
            }
            _loc12_++;
         }
      }
      
      override public function render(param1:§_-7p§, param2:Number) : void
      {
         this.§_-tI§(param1.§_-0-9§);
         if(this.§_-0A§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-Nd§.§_-9w§(this.§_-AF§.mipMapping,false,this.§_-fq§,true);
         var _loc4_:Context3D = §_-Kk§.§_-r9§;
         var _loc5_:Vector.<Number> = !!this.§_-Wp§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-J4§();
         }
         if(§_-Kk§.§_-gK§ != this.§_-v5§)
         {
            this.§_-Mp§(0);
            this.§_-v5§ = §_-Kk§.§_-gK§;
         }
         this.§_-ao§.uploadFromVector(this.§_-ye§.data,0,this.§_-0A§ * 4);
         this.§_-3k§.uploadFromVector(this.§_-ye§.§_-n6§,0,this.§_-0A§ * 4);
         _loc4_.setBlendFactors(this.§_-4n§,this.§_-qc§);
         param1.setProgram(§_-Kk§.§_-NR§.§_-DI§(_loc3_));
         param1.setTextureAt(1,this.§_-AF§.base);
         _loc4_.setVertexBufferAt(0,this.§_-3k§,§_-Ty§.§_-iD§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-ao§,§_-Ty§.§_-dL§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-ao§,§_-Ty§.§_-eN§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-0-9§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-mx§,0,this.§_-0A§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-sY§() : Boolean
      {
         return false;
      }
      
      public function get §_-sI§() : int
      {
         return this.§_-ye§.§_-1b§ / 4;
      }
      
      public function get §_-Rg§() : int
      {
         return this.§_-Z6§;
      }
      
      public function get §_-qT§() : Number
      {
         return this.§_-Dz§;
      }
      
      public function set §_-qT§(param1:Number) : void
      {
         this.§_-Dz§ = param1;
      }
      
      public function get §_-e0§() : Number
      {
         return this.§_-Sm§;
      }
      
      public function set §_-e0§(param1:Number) : void
      {
         this.§_-Sm§ = param1;
      }
      
      public function get §_-kT§() : Number
      {
         return this.§_-hQ§;
      }
      
      public function set §_-kT§(param1:Number) : void
      {
         this.§_-hQ§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-AF§;
      }
   }
}
