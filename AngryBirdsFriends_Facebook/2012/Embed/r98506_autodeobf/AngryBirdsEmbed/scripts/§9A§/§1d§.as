package §9A§
{
   import § !"§.§`!B§;
   import §%R§.§@1§;
   import §2c§.§&H§;
   import §5@§.Texture;
   import §;%§.§ Q§;
   import §;%§.§8S§;
   import §;%§.§8o§;
   import §;q§.DisplayObject;
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
   
   public class §1d§ extends DisplayObject implements §`!B§
   {
       
      
      private var §+Z§:Texture;
      
      private var §2Y§:Vector.<§5!"§>;
      
      private var §+a§:Number;
      
      private var §38§:Vector.<Number>;
      
      private var §5d§:Vector.<Number>;
      
      private var §2!@§:§&H§;
      
      private var §+w§:VertexBuffer3D;
      
      private var §%=§:VertexBuffer3D;
      
      private var §,`§:VertexBuffer3D;
      
      private var §+;§:Vector.<uint>;
      
      private var §>'§:IndexBuffer3D;
      
      private var §[m§:int;
      
      private var §0I§:int;
      
      private var §6o§:Number;
      
      protected var §&!B§:Number;
      
      private var §9]§:Number = 0.0;
      
      private var §2!'§:Number;
      
      protected var §?!,§:Number;
      
      protected var §7`§:Number;
      
      protected var §&n§:Boolean;
      
      protected var §0i§:String;
      
      protected var §%L§:String;
      
      protected var §8h§:String;
      
      private var §!!J§:int = -1;
      
      private var §;x§:Boolean = false;
      
      private var §null §:Number = 0.0;
      
      public function §1d§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§+Z§ = param1;
         this.§&n§ = param1.premultipliedAlpha;
         this.§2Y§ = new Vector.<§5!"§>(0,false);
         this.§38§ = new Vector.<Number>();
         this.§5d§ = new Vector.<Number>();
         this.§2!@§ = new §&H§(0,this.§&n§);
         this.§+;§ = new Vector.<uint>(0);
         this.§6o§ = param2;
         this.§2!'§ = 0;
         this.§+a§ = 0;
         this.§7`§ = 0;
         this.§?!,§ = 0;
         this.§%L§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§0i§ = param4 || (!!this.§&n§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^!+§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+w§)
         {
            this.§+w§.dispose();
         }
         if(this.§%=§)
         {
            this.§%=§.dispose();
         }
         if(this.§,`§)
         {
            this.§,`§.dispose();
         }
         if(this.§>'§)
         {
            this.§>'§.dispose();
         }
         this.§38§ = null;
         this.§5d§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §5!"§
      {
         return new §5!"§();
      }
      
      protected function initParticle(param1:§5!"§) : void
      {
         param1.x = this.§?!,§;
         param1.y = this.§7`§;
         param1.currentTime = 0;
         param1.§]!§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§5!"§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§]!§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §^!+§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§1=§;
         var _loc3_:int = this.§1=§ + param1;
         var _loc4_:§&H§;
         (_loc4_ = new §&H§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§+Z§.adjustVertexData(_loc4_,0,4);
         this.§2Y§.fixed = false;
         this.§+;§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§2Y§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§38§.push(0);
               this.§5d§.push(0);
               _loc7_++;
            }
            this.§2!@§.append(_loc4_);
            this.§+;§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§2Y§.fixed = true;
         this.§+;§.fixed = true;
         this.§;x§ = true;
      }
      
      private function §%q§(param1:Context3D) : Boolean
      {
         if(!this.§;x§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@1§();
         }
         var _loc2_:int = this.§2!@§.§2$§ / 4;
         if(this.§+w§)
         {
            this.§+w§.dispose();
         }
         if(this.§%=§)
         {
            this.§%=§.dispose();
         }
         if(this.§,`§)
         {
            this.§,`§.dispose();
         }
         if(this.§>'§)
         {
            this.§>'§.dispose();
         }
         this.§+w§ = param1.createVertexBuffer(_loc2_ * 4,§&H§.§]B§);
         this.§+w§.uploadFromByteArray(this.§2!@§.§ -§,0,0,_loc2_ * 4);
         this.§%=§ = param1.createVertexBuffer(_loc2_ * 4,§&H§.§[!E§);
         this.§%=§.uploadFromVector(this.§2!@§.§ B§,0,_loc2_ * 4);
         this.§,`§ = param1.createVertexBuffer(_loc2_ * 4,§&H§.§!X§);
         this.§,`§.uploadFromVector(this.§2!@§.§>"§,0,_loc2_ * 4);
         this.§>'§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§>'§.uploadFromVector(this.§+;§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§6o§ != 0)
         {
            this.§2!'§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§2!'§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §&Z§(param1);
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
      
      public function §'`§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§8^§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§null § = param1;
      }
      
      private function §8^§(param1:Matrix3D) : void
      {
         var _loc4_:§5!"§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§5!"§ = null;
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
         if(isNaN(this.§null §) || this.§null § == 0)
         {
            return;
         }
         var _loc2_:Number = this.§null §;
         this.§null § = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§[m§)
         {
            if((_loc4_ = this.§2Y§[_loc3_]).currentTime < _loc4_.§]!§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§[m§ - 1)
               {
                  _loc11_ = this.§2Y§[this.§[m§ - 1];
                  this.§2Y§[this.§[m§ - 1] = _loc4_;
                  this.§2Y§[_loc3_] = _loc11_;
               }
               --this.§[m§;
            }
         }
         if(this.§2!'§ > 0)
         {
            _loc12_ = 1 / this.§6o§;
            this.§+a§ += _loc2_;
            while(this.§+a§ > 0)
            {
               if(this.§[m§ == this.§1=§)
               {
                  this.§^!+§(this.§1=§);
               }
               _loc4_ = this.§2Y§[this.§[m§++] as §5!"§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§+a§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§&!B§))
               {
                  _loc13_ = _loc12_ * (1 - this.§&!B§ + Math.random() * this.§&!B§ * 2) + this.§9]§;
               }
               this.§9]§ += _loc12_ - _loc13_;
               this.§+a§ -= _loc13_;
            }
            if(this.§2!'§ != Number.MAX_VALUE)
            {
               this.§2!'§ = Math.max(0,this.§2!'§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§+Z§.width;
         var _loc9_:Number = this.§+Z§.height;
         this.§0I§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§8!5§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§[m§)
            {
               _loc6_ = (_loc4_ = this.§2Y§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§5d§[_loc14_ * 3];
               _loc17_ = this.§5d§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§8o§.§5J§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §8o§.§5J§.§"L§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§0I§;
                  this.§2!@§.§6!A§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§2!@§.§4%§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§2!@§.§4%§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§2!@§.§4%§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§2!@§.§4%§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§2!@§.§4%§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§2!@§.§4%§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§2!@§.§4%§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§2!@§.§4%§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §8!5§(param1:Matrix3D) : void
      {
         var _loc3_:§5!"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[m§)
         {
            _loc3_ = this.§2Y§[_loc2_];
            this.§38§[_loc2_ * 3] = _loc3_.x;
            this.§38§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§38§,this.§5d§);
      }
      
      override public function render(param1:§8S§, param2:Number) : void
      {
         this.§8^§(param1.§%!@§);
         if(this.§0I§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = § Q§.§?!1§(param2 != 1,this.§+Z§.mipMapping,false,this.§8h§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§&n§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§9!&§ != this.§!!J§)
         {
            this.§^!+§(0);
            this.§!!J§ = param1.§9!&§;
         }
         if(!this.§%q§(_loc4_))
         {
            this.§%=§.uploadFromVector(this.§2!@§.§ B§,0,this.§0I§ * 4);
            this.§,`§.uploadFromVector(this.§2!@§.§>"§,0,this.§0I§ * 4);
         }
         _loc4_.setBlendFactors(this.§0i§,this.§%L§);
         _loc4_.setProgram(§8o§.§5J§.§ get§(_loc3_));
         _loc4_.setTextureAt(0,this.§+Z§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§,`§,§&H§.§[!I§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+w§,§&H§.§3^§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§%=§,§&H§.§4!I§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§%!@§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§>'§,0,this.§0I§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §'[§() : Boolean
      {
         return false;
      }
      
      public function get §1=§() : int
      {
         return this.§2!@§.§2$§ / 4;
      }
      
      public function get §"!8§() : int
      {
         return this.§[m§;
      }
      
      public function get §?4§() : Number
      {
         return this.§6o§;
      }
      
      public function set §?4§(param1:Number) : void
      {
         this.§6o§ = param1;
      }
      
      public function get §?A§() : Number
      {
         return this.§?!,§;
      }
      
      public function set §?A§(param1:Number) : void
      {
         this.§?!,§ = param1;
      }
      
      public function get §>k§() : Number
      {
         return this.§7`§;
      }
      
      public function set §>k§(param1:Number) : void
      {
         this.§7`§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§+Z§;
      }
   }
}
