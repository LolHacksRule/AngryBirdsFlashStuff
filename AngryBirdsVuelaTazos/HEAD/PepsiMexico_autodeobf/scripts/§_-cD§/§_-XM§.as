package §_-cD§
{
   import §_-Ku§.§_-Ha§;
   import §_-Ku§.§_-Nq§;
   import §_-OP§.§_-fW§;
   import §_-Q0§.Texture;
   import §_-QR§.§_-Ft§;
   import §_-SE§.DisplayObject;
   import §_-SE§.§_-rl§;
   import §_-W0§.§_-Ei§;
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
   
   public class §_-XM§ extends DisplayObject implements §_-Ei§
   {
       
      
      private var §_-C6§:Texture;
      
      private var §_-FD§:Vector.<§_-dI§>;
      
      private var §_-B3§:Number;
      
      private var §_-ny§:§_-fW§;
      
      private var §_-cr§:VertexBuffer3D;
      
      private var §_-3u§:VertexBuffer3D;
      
      private var §_-OO§:Vector.<uint>;
      
      private var §_-O0§:IndexBuffer3D;
      
      private var §_-FR§:int;
      
      private var §_-f1§:int;
      
      private var §_-uD§:Number;
      
      protected var §_-YU§:Number;
      
      private var §_-IL§:Number = 0.0;
      
      private var §_-UT§:Number;
      
      protected var §_-eK§:Number;
      
      protected var §_-IF§:Number;
      
      protected var §_-Yr§:Boolean;
      
      protected var §_-hc§:String;
      
      protected var §_-75§:String;
      
      protected var §_-7y§:String;
      
      private var §_-cZ§:int = -1;
      
      private var §_-QH§:Number = 0.0;
      
      public function §_-XM§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-C6§ = param1;
         this.§_-Yr§ = param1.premultipliedAlpha;
         this.§_-FD§ = new Vector.<§_-dI§>(0,false);
         this.§_-ny§ = new §_-fW§(0,this.§_-Yr§);
         this.§_-OO§ = new Vector.<uint>(0);
         this.§_-uD§ = param2;
         this.§_-UT§ = 0;
         this.§_-B3§ = 0;
         this.§_-IF§ = 0;
         this.§_-eK§ = 0;
         this.§_-75§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-hc§ = param4 || (!!this.§_-Yr§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§_-rk§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-cr§)
         {
            this.§_-cr§.dispose();
         }
         if(this.§_-3u§)
         {
            this.§_-3u§.dispose();
         }
         if(this.§_-O0§)
         {
            this.§_-O0§.dispose();
         }
         super.dispose();
      }
      
      protected function createParticle() : §_-dI§
      {
         return new §_-dI§();
      }
      
      protected function initParticle(param1:§_-dI§) : void
      {
         param1.x = this.§_-eK§;
         param1.y = this.§_-IF§;
         param1.§_-0t§ = 0;
         param1.§_-aW§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§_-dI§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-0t§ / param1.§_-aW§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§_-0t§ += param2;
      }
      
      private function §_-rk§(param1:int) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-ht§;
         var _loc3_:int = this.§_-ht§ + param1;
         var _loc4_:Context3D;
         if((_loc4_ = §_-Ha§.§_-8o§) == null)
         {
            throw new §_-Ft§();
         }
         var _loc5_:§_-fW§;
         (_loc5_ = new §_-fW§(4)).setTexCoords(0,0,0);
         _loc5_.setTexCoords(1,1,0);
         _loc5_.setTexCoords(2,0,1);
         _loc5_.setTexCoords(3,1,1);
         _loc5_ = this.§_-C6§.adjustVertexData(_loc5_);
         this.§_-FD§.fixed = false;
         this.§_-OO§.fixed = false;
         var _loc6_:int = _loc2_;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc6_ * 4;
            this.§_-FD§.push(this.createParticle());
            this.§_-ny§.§_-yk§(_loc5_);
            this.§_-OO§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
            _loc6_++;
         }
         this.§_-FD§.fixed = true;
         this.§_-OO§.fixed = true;
         if(this.§_-cr§)
         {
            this.§_-cr§.dispose();
         }
         if(this.§_-3u§)
         {
            this.§_-3u§.dispose();
         }
         if(this.§_-O0§)
         {
            this.§_-O0§.dispose();
         }
         this.§_-cr§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-fW§.§_-qY§);
         this.§_-cr§.uploadFromVector(this.§_-ny§.data,0,_loc3_ * 4);
         this.§_-3u§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-fW§.§_-Cf§);
         this.§_-3u§.uploadFromVector(this.§_-ny§.§_-7f§,0,_loc3_ * 4);
         this.§_-O0§ = _loc4_.createIndexBuffer(_loc3_ * 6);
         this.§_-O0§.uploadFromVector(this.§_-OO§,0,_loc3_ * 6);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-uD§ != 0)
         {
            this.§_-UT§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-UT§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-Bv§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-JC§(param1:Number) : void
      {
         this.§_-TL§(param1);
         this.§_-c5§(null);
      }
      
      public function §_-TL§(param1:Number) : void
      {
         this.§_-QH§ = param1;
      }
      
      private function §_-c5§(param1:Matrix3D) : void
      {
         var _loc4_:§_-dI§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc13_:§_-dI§ = null;
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
         if(isNaN(this.§_-QH§) || this.§_-QH§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§_-QH§;
         this.§_-QH§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-FR§)
         {
            if((_loc4_ = this.§_-FD§[_loc3_]).§_-0t§ < _loc4_.§_-aW§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§_-FR§ - 1)
               {
                  _loc13_ = this.§_-FD§[this.§_-FR§ - 1] as §_-dI§;
                  this.§_-FD§[this.§_-FR§ - 1] = _loc4_;
                  this.§_-FD§[_loc3_] = _loc13_;
               }
               --this.§_-FR§;
            }
         }
         if(this.§_-UT§ > 0)
         {
            _loc14_ = 1 / this.§_-uD§;
            this.§_-B3§ += _loc2_;
            while(this.§_-B3§ > 0)
            {
               if(this.§_-FR§ == this.§_-ht§)
               {
                  this.§_-rk§(this.§_-ht§);
               }
               _loc4_ = this.§_-FD§[this.§_-FR§++] as §_-dI§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§_-B3§);
               _loc15_ = _loc14_;
               if(!isNaN(this.§_-YU§))
               {
                  _loc15_ = _loc14_ * (1 - this.§_-YU§ + Math.random() * this.§_-YU§ * 2) + this.§_-IL§;
               }
               this.§_-IL§ += _loc14_ - _loc15_;
               this.§_-B3§ -= _loc15_;
            }
            if(this.§_-UT§ != Number.MAX_VALUE)
            {
               this.§_-UT§ = Math.max(0,this.§_-UT§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc9_:Number = this.§_-C6§.width;
         var _loc10_:Number = this.§_-C6§.height;
         this.§_-f1§ = 0;
         var _loc11_:Vector3D = new Vector3D();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-FR§)
         {
            _loc7_ = (_loc4_ = this.§_-FD§[_loc12_]).x;
            _loc8_ = _loc4_.y;
            _loc16_ = false;
            if(param1)
            {
               _loc16_ = true;
               _loc11_.x = _loc7_;
               _loc11_.y = _loc8_;
               if((_loc17_ = param1.transformVector(_loc11_)).x < -1.15 || _loc17_.x > 1.15 || _loc17_.y < -1.15 || _loc17_.y > 1.15)
               {
                  if(§_-Ha§.§_-Aq§)
                  {
                     _loc18_ = (_loc18_ = Math.max(_loc9_ * _loc4_.scaleX / 2,_loc10_ * _loc4_.scaleY / 2)) / §_-Ha§.§_-Aq§.§_-dE§;
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
               ++this.§_-f1§;
               this.§_-ny§.§_-M1§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc20_);
               this.§_-ny§.setPosition(_loc5_,_loc7_ + _loc27_,_loc8_ + _loc28_);
               this.§_-ny§.setPosition(_loc5_ + 1,_loc7_ + _loc25_,_loc8_ + _loc26_);
               this.§_-ny§.setPosition(_loc5_ + 2,_loc7_ + _loc31_,_loc8_ + _loc32_);
               this.§_-ny§.setPosition(_loc5_ + 3,_loc7_ + _loc29_,_loc8_ + _loc30_);
               _loc5_ += 4;
            }
            _loc12_++;
         }
      }
      
      override public function render(param1:§_-Nq§, param2:Number) : void
      {
         this.§_-c5§(param1.§_-Tm§);
         if(this.§_-f1§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-rl§.§_-in§(this.§_-C6§.mipMapping,false,this.§_-7y§,true);
         var _loc4_:Context3D = §_-Ha§.§_-8o§;
         var _loc5_:Vector.<Number> = !!this.§_-Yr§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc4_ == null)
         {
            throw new §_-Ft§();
         }
         if(§_-Ha§.§_-Gg§ != this.§_-cZ§)
         {
            this.§_-rk§(0);
            this.§_-cZ§ = §_-Ha§.§_-Gg§;
         }
         this.§_-cr§.uploadFromVector(this.§_-ny§.data,0,this.§_-f1§ * 4);
         this.§_-3u§.uploadFromVector(this.§_-ny§.§_-7f§,0,this.§_-f1§ * 4);
         _loc4_.setBlendFactors(this.§_-hc§,this.§_-75§);
         param1.setProgram(§_-Ha§.§_-Aq§.§_-w2§(_loc3_));
         param1.setTextureAt(1,this.§_-C6§.base);
         _loc4_.setVertexBufferAt(0,this.§_-3u§,§_-fW§.§_-Jx§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-cr§,§_-fW§.§_-JR§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-cr§,§_-fW§.§_-Ef§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Tm§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-O0§,0,this.§_-f1§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-qD§() : Boolean
      {
         return false;
      }
      
      public function get §_-ht§() : int
      {
         return this.§_-ny§.§_-RN§ / 4;
      }
      
      public function get §_-X6§() : int
      {
         return this.§_-FR§;
      }
      
      public function get §_-9-§() : Number
      {
         return this.§_-uD§;
      }
      
      public function set §_-9-§(param1:Number) : void
      {
         this.§_-uD§ = param1;
      }
      
      public function get §_-RC§() : Number
      {
         return this.§_-eK§;
      }
      
      public function set §_-RC§(param1:Number) : void
      {
         this.§_-eK§ = param1;
      }
      
      public function get §_-ti§() : Number
      {
         return this.§_-IF§;
      }
      
      public function set §_-ti§(param1:Number) : void
      {
         this.§_-IF§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-C6§;
      }
   }
}
