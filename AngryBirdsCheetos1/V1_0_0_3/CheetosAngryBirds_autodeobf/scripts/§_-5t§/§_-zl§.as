package §_-5t§
{
   import §_-KM§.§_-0A§;
   import §_-KM§.§_-H9§;
   import §_-KM§.§_-g8§;
   import §_-dY§.§default§;
   import §_-i9§.Texture;
   import §_-kC§.§_-DS§;
   import §_-mS§.§_-yF§;
   import §case §.DisplayObject;
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
   
   public class §_-zl§ extends DisplayObject implements §default§
   {
       
      
      private var §_-Mg§:Texture;
      
      private var §_-45§:Vector.<§_-M4§>;
      
      private var §_-OO§:Number;
      
      private var §_-5A§:Vector.<Number>;
      
      private var §_-ks§:Vector.<Number>;
      
      private var §_-eQ§:§_-DS§;
      
      private var §_-0§:VertexBuffer3D;
      
      private var §_-zs§:VertexBuffer3D;
      
      private var §_-zM§:VertexBuffer3D;
      
      private var §_-4P§:Vector.<uint>;
      
      private var §_-Tu§:IndexBuffer3D;
      
      private var §_-Tl§:int;
      
      private var §_-w-§:int;
      
      private var §_-hn§:Number;
      
      protected var §_-mW§:Number;
      
      private var §_-7Q§:Number = 0.0;
      
      private var §_-00S§:Number;
      
      protected var §_-Pm§:Number;
      
      protected var §_-r-§:Number;
      
      protected var §_-ra§:Boolean;
      
      protected var §_-bR§:String;
      
      protected var §_-F9§:String;
      
      protected var §_-sa§:String;
      
      private var §_-g5§:int = -1;
      
      private var §_-Ce§:Boolean = false;
      
      private var §_-hH§:Number = 0.0;
      
      public function §_-zl§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§_-Mg§ = param1;
         this.§_-ra§ = param1.premultipliedAlpha;
         this.§_-45§ = new Vector.<§_-M4§>(0,false);
         this.§_-5A§ = new Vector.<Number>();
         this.§_-ks§ = new Vector.<Number>();
         this.§_-eQ§ = new §_-DS§(0,this.§_-ra§);
         this.§_-4P§ = new Vector.<uint>(0);
         this.§_-hn§ = param2;
         this.§_-00S§ = 0;
         this.§_-OO§ = 0;
         this.§_-r-§ = 0;
         this.§_-Pm§ = 0;
         this.§_-F9§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§_-bR§ = param4 || (!!this.§_-ra§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§_-0-N§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-0§)
         {
            this.§_-0§.dispose();
         }
         if(this.§_-zs§)
         {
            this.§_-zs§.dispose();
         }
         if(this.§_-zM§)
         {
            this.§_-zM§.dispose();
         }
         if(this.§_-Tu§)
         {
            this.§_-Tu§.dispose();
         }
         this.§_-5A§ = null;
         this.§_-ks§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §_-M4§
      {
         return new §_-M4§();
      }
      
      protected function initParticle(param1:§_-M4§) : void
      {
         param1.x = this.§_-Pm§;
         param1.y = this.§_-r-§;
         param1.§_-cT§ = 0;
         param1.§_-Ig§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§_-M4§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§_-cT§ / param1.§_-Ig§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§_-cT§ += param2;
      }
      
      private function §_-0-N§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§_-g-§;
         var _loc3_:int = this.§_-g-§ + param1;
         var _loc4_:§_-DS§;
         (_loc4_ = new §_-DS§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§_-Mg§.adjustVertexData(_loc4_,0,4);
         this.§_-45§.fixed = false;
         this.§_-4P§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§_-45§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§_-5A§.push(0);
               this.§_-ks§.push(0);
               _loc7_++;
            }
            this.§_-eQ§.append(_loc4_);
            this.§_-4P§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§_-45§.fixed = true;
         this.§_-4P§.fixed = true;
         this.§_-Ce§ = true;
      }
      
      private function §_-mQ§(param1:Context3D) : Boolean
      {
         if(!this.§_-Ce§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §_-yF§();
         }
         var _loc2_:int = this.§_-eQ§.§_-AO§ / 4;
         if(this.§_-0§)
         {
            this.§_-0§.dispose();
         }
         if(this.§_-zs§)
         {
            this.§_-zs§.dispose();
         }
         if(this.§_-zM§)
         {
            this.§_-zM§.dispose();
         }
         if(this.§_-Tu§)
         {
            this.§_-Tu§.dispose();
         }
         this.§_-0§ = param1.createVertexBuffer(_loc2_ * 4,§_-DS§.§_-3v§);
         this.§_-0§.uploadFromByteArray(this.§_-eQ§.§_-IR§,0,0,_loc2_ * 4);
         this.§_-zs§ = param1.createVertexBuffer(_loc2_ * 4,§_-DS§.§_-GI§);
         this.§_-zs§.uploadFromVector(this.§_-eQ§.§_-TU§,0,_loc2_ * 4);
         this.§_-zM§ = param1.createVertexBuffer(_loc2_ * 4,§_-DS§.§_-ut§);
         this.§_-zM§.uploadFromVector(this.§_-eQ§.§_-EV§,0,_loc2_ * 4);
         this.§_-Tu§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§_-Tu§.uploadFromVector(this.§_-4P§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§_-hn§ != 0)
         {
            this.§_-00S§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§_-00S§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §_-P4§(param1);
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
      
      public function §_-7c§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§_-GG§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§_-hH§ = param1;
      }
      
      private function §_-GG§(param1:Matrix3D) : void
      {
         var _loc4_:§_-M4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§_-M4§ = null;
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
         if(isNaN(this.§_-hH§) || this.§_-hH§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§_-hH§;
         this.§_-hH§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-Tl§)
         {
            if((_loc4_ = this.§_-45§[_loc3_]).§_-cT§ < _loc4_.§_-Ig§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§_-Tl§ - 1)
               {
                  _loc11_ = this.§_-45§[this.§_-Tl§ - 1];
                  this.§_-45§[this.§_-Tl§ - 1] = _loc4_;
                  this.§_-45§[_loc3_] = _loc11_;
               }
               --this.§_-Tl§;
            }
         }
         if(this.§_-00S§ > 0)
         {
            _loc12_ = 1 / this.§_-hn§;
            this.§_-OO§ += _loc2_;
            while(this.§_-OO§ > 0)
            {
               if(this.§_-Tl§ == this.§_-g-§)
               {
                  this.§_-0-N§(this.§_-g-§);
               }
               _loc4_ = this.§_-45§[this.§_-Tl§++] as §_-M4§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§_-OO§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§_-mW§))
               {
                  _loc13_ = _loc12_ * (1 - this.§_-mW§ + Math.random() * this.§_-mW§ * 2) + this.§_-7Q§;
               }
               this.§_-7Q§ += _loc12_ - _loc13_;
               this.§_-OO§ -= _loc13_;
            }
            if(this.§_-00S§ != Number.MAX_VALUE)
            {
               this.§_-00S§ = Math.max(0,this.§_-00S§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§_-Mg§.width;
         var _loc9_:Number = this.§_-Mg§.height;
         this.§_-w-§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§_-se§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§_-Tl§)
            {
               _loc6_ = (_loc4_ = this.§_-45§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§_-ks§[_loc14_ * 3];
               _loc17_ = this.§_-ks§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§_-0A§.§_-bz§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §_-0A§.§_-bz§.§_-Sb§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§_-w-§;
                  this.§_-eQ§.§_-no§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§_-eQ§.§_-HW§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§_-eQ§.§_-HW§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§_-eQ§.§_-HW§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§_-eQ§.§_-HW§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§_-eQ§.§_-HW§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§_-eQ§.§_-HW§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§_-eQ§.§_-HW§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§_-eQ§.§_-HW§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §_-se§(param1:Matrix3D) : void
      {
         var _loc3_:§_-M4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Tl§)
         {
            _loc3_ = this.§_-45§[_loc2_];
            this.§_-5A§[_loc2_ * 3] = _loc3_.x;
            this.§_-5A§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§_-5A§,this.§_-ks§);
      }
      
      override public function render(param1:§_-H9§, param2:Number) : void
      {
         this.§_-GG§(param1.§_-Tj§);
         if(this.§_-w-§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §_-g8§.§_-Gl§(param2 != 1,this.§_-Mg§.mipMapping,false,this.§_-sa§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§_-6W§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§_-ra§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§_-JC§ != this.§_-g5§)
         {
            this.§_-0-N§(0);
            this.§_-g5§ = param1.§_-JC§;
         }
         if(!this.§_-mQ§(_loc4_))
         {
            this.§_-zs§.uploadFromVector(this.§_-eQ§.§_-TU§,0,this.§_-w-§ * 4);
            this.§_-zM§.uploadFromVector(this.§_-eQ§.§_-EV§,0,this.§_-w-§ * 4);
         }
         _loc4_.setBlendFactors(this.§_-bR§,this.§_-F9§);
         _loc4_.setProgram(§_-0A§.§_-bz§.§_-0-w§(_loc3_));
         _loc4_.setTextureAt(0,this.§_-Mg§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§_-zM§,§_-DS§.§_-2k§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-0§,§_-DS§.§_-CF§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§_-zs§,§_-DS§.§_-T7§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Tj§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§_-Tu§,0,this.§_-w-§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §_-7i§() : Boolean
      {
         return false;
      }
      
      public function get §_-g-§() : int
      {
         return this.§_-eQ§.§_-AO§ / 4;
      }
      
      public function get §_-qv§() : int
      {
         return this.§_-Tl§;
      }
      
      public function get §_-ru§() : Number
      {
         return this.§_-hn§;
      }
      
      public function set §_-ru§(param1:Number) : void
      {
         this.§_-hn§ = param1;
      }
      
      public function get §_-OB§() : Number
      {
         return this.§_-Pm§;
      }
      
      public function set §_-OB§(param1:Number) : void
      {
         this.§_-Pm§ = param1;
      }
      
      public function get §_-ZZ§() : Number
      {
         return this.§_-r-§;
      }
      
      public function set §_-ZZ§(param1:Number) : void
      {
         this.§_-r-§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§_-Mg§;
      }
   }
}
