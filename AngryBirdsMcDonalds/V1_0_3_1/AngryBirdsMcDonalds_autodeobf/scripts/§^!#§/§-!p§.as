package §^!#§
{
   import § %§.§3!e§;
   import § %§.§?!I§;
   import § %§.§`M§;
   import §![§.§5R§;
   import §&Y§.Texture;
   import §&c§.DisplayObject;
   import §=G§.§#!N§;
   import §^!L§.§5!%§;
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
   
   public class §-!p§ extends DisplayObject implements §5R§
   {
       
      
      private var §'C§:Texture;
      
      private var §>c§:Vector.<§0! §>;
      
      private var §]§:Number;
      
      private var §>I§:Vector.<Number>;
      
      private var §[!C§:Vector.<Number>;
      
      private var §5!L§:§#!N§;
      
      private var §%s§:VertexBuffer3D;
      
      private var §[!6§:VertexBuffer3D;
      
      private var §8!,§:VertexBuffer3D;
      
      private var §04§:Vector.<uint>;
      
      private var §4X§:IndexBuffer3D;
      
      private var §,F§:int;
      
      private var §8s§:int;
      
      private var §9!M§:Number;
      
      protected var §1i§:Number;
      
      private var §[R§:Number = 0.0;
      
      private var §7!9§:Number;
      
      protected var §0!1§:Number;
      
      protected var §#a§:Number;
      
      protected var §6H§:Boolean;
      
      protected var §'!d§:String;
      
      protected var §9!F§:String;
      
      protected var §[F§:String;
      
      private var §"!c§:int = -1;
      
      private var §<!Q§:Boolean = false;
      
      private var §[!_§:Number = 0.0;
      
      public function §-!p§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§'C§ = param1;
         this.§6H§ = param1.premultipliedAlpha;
         this.§>c§ = new Vector.<§0! §>(0,false);
         this.§>I§ = new Vector.<Number>();
         this.§[!C§ = new Vector.<Number>();
         this.§5!L§ = new §#!N§(0,this.§6H§);
         this.§04§ = new Vector.<uint>(0);
         this.§9!M§ = param2;
         this.§7!9§ = 0;
         this.§]§ = 0;
         this.§#a§ = 0;
         this.§0!1§ = 0;
         this.§9!F§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§'!d§ = param4 || (!!this.§6H§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§>k§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§%s§)
         {
            this.§%s§.dispose();
         }
         if(this.§[!6§)
         {
            this.§[!6§.dispose();
         }
         if(this.§8!,§)
         {
            this.§8!,§.dispose();
         }
         if(this.§4X§)
         {
            this.§4X§.dispose();
         }
         this.§>I§ = null;
         this.§[!C§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §0! §
      {
         return new §0! §();
      }
      
      protected function initParticle(param1:§0! §) : void
      {
         param1.x = this.§0!1§;
         param1.y = this.§#a§;
         param1.§;]§ = 0;
         param1.§&a§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§0! §, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§;]§ / param1.§&a§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§;]§ += param2;
      }
      
      private function §>k§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§?!Q§;
         var _loc3_:int = this.§?!Q§ + param1;
         var _loc4_:§#!N§;
         (_loc4_ = new §#!N§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§'C§.adjustVertexData(_loc4_,0,4);
         this.§>c§.fixed = false;
         this.§04§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§>c§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§>I§.push(0);
               this.§[!C§.push(0);
               _loc7_++;
            }
            this.§5!L§.append(_loc4_);
            this.§04§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§>c§.fixed = true;
         this.§04§.fixed = true;
         this.§<!Q§ = true;
      }
      
      private function §-!R§(param1:Context3D) : Boolean
      {
         if(!this.§<!Q§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §5!%§();
         }
         var _loc2_:int = this.§5!L§.§>Y§ / 4;
         if(this.§%s§)
         {
            this.§%s§.dispose();
         }
         if(this.§[!6§)
         {
            this.§[!6§.dispose();
         }
         if(this.§8!,§)
         {
            this.§8!,§.dispose();
         }
         if(this.§4X§)
         {
            this.§4X§.dispose();
         }
         this.§%s§ = param1.createVertexBuffer(_loc2_ * 4,§#!N§.§'7§);
         this.§%s§.uploadFromByteArray(this.§5!L§.§5p§,0,0,_loc2_ * 4);
         this.§[!6§ = param1.createVertexBuffer(_loc2_ * 4,§#!N§.§+T§);
         this.§[!6§.uploadFromVector(this.§5!L§.§4t§,0,_loc2_ * 4);
         this.§8!,§ = param1.createVertexBuffer(_loc2_ * 4,§#!N§.§!c§);
         this.§8!,§.uploadFromVector(this.§5!L§.§3!I§,0,_loc2_ * 4);
         this.§4X§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§4X§.uploadFromVector(this.§04§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§9!M§ != 0)
         {
            this.§7!9§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§7!9§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §1d§(param1);
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
      
      public function §@!b§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§'X§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§[!_§ = param1;
      }
      
      private function §'X§(param1:Matrix3D) : void
      {
         var _loc4_:§0! § = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§0! § = null;
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
         if(isNaN(this.§[!_§) || this.§[!_§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§[!_§;
         this.§[!_§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§,F§)
         {
            if((_loc4_ = this.§>c§[_loc3_]).§;]§ < _loc4_.§&a§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§,F§ - 1)
               {
                  _loc11_ = this.§>c§[this.§,F§ - 1];
                  this.§>c§[this.§,F§ - 1] = _loc4_;
                  this.§>c§[_loc3_] = _loc11_;
               }
               --this.§,F§;
            }
         }
         if(this.§7!9§ > 0)
         {
            _loc12_ = 1 / this.§9!M§;
            this.§]§ += _loc2_;
            while(this.§]§ > 0)
            {
               if(this.§,F§ == this.§?!Q§)
               {
                  this.§>k§(this.§?!Q§);
               }
               _loc4_ = this.§>c§[this.§,F§++] as §0! §;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§]§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§1i§))
               {
                  _loc13_ = _loc12_ * (1 - this.§1i§ + Math.random() * this.§1i§ * 2) + this.§[R§;
               }
               this.§[R§ += _loc12_ - _loc13_;
               this.§]§ -= _loc13_;
            }
            if(this.§7!9§ != Number.MAX_VALUE)
            {
               this.§7!9§ = Math.max(0,this.§7!9§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§'C§.width;
         var _loc9_:Number = this.§'C§.height;
         this.§8s§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§[^§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§,F§)
            {
               _loc6_ = (_loc4_ = this.§>c§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§[!C§[_loc14_ * 3];
               _loc17_ = this.§[!C§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§`M§.§93§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §`M§.§93§.§]l§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§8s§;
                  this.§5!L§.§9s§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§5!L§.§9z§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§5!L§.§9z§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§5!L§.§9z§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§5!L§.§9z§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§5!L§.§9z§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§5!L§.§9z§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§5!L§.§9z§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§5!L§.§9z§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §[^§(param1:Matrix3D) : void
      {
         var _loc3_:§0! § = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,F§)
         {
            _loc3_ = this.§>c§[_loc2_];
            this.§>I§[_loc2_ * 3] = _loc3_.x;
            this.§>I§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§>I§,this.§[!C§);
      }
      
      override public function render(param1:§3!e§, param2:Number) : void
      {
         this.§'X§(param1.§7!P§);
         if(this.§8s§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §?!I§.§;a§(param2 != 1,this.§'C§.mipMapping,false,this.§[F§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§ !L§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§6H§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§6!O§ != this.§"!c§)
         {
            this.§>k§(0);
            this.§"!c§ = param1.§6!O§;
         }
         if(!this.§-!R§(_loc4_))
         {
            this.§[!6§.uploadFromVector(this.§5!L§.§4t§,0,this.§8s§ * 4);
            this.§8!,§.uploadFromVector(this.§5!L§.§3!I§,0,this.§8s§ * 4);
         }
         _loc4_.setBlendFactors(this.§'!d§,this.§9!F§);
         _loc4_.setProgram(§`M§.§93§.§99§(_loc3_));
         _loc4_.setTextureAt(0,this.§'C§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§8!,§,§#!N§.§[!X§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§%s§,§#!N§.§9!5§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§[!6§,§#!N§.§3L§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7!P§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§4X§,0,this.§8s§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §+A§() : Boolean
      {
         return false;
      }
      
      public function get §?!Q§() : int
      {
         return this.§5!L§.§>Y§ / 4;
      }
      
      public function get §!!?§() : int
      {
         return this.§,F§;
      }
      
      public function get §6!G§() : Number
      {
         return this.§9!M§;
      }
      
      public function set §6!G§(param1:Number) : void
      {
         this.§9!M§ = param1;
      }
      
      public function get §-!Q§() : Number
      {
         return this.§0!1§;
      }
      
      public function set §-!Q§(param1:Number) : void
      {
         this.§0!1§ = param1;
      }
      
      public function get §>!K§() : Number
      {
         return this.§#a§;
      }
      
      public function set §>!K§(param1:Number) : void
      {
         this.§#a§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§'C§;
      }
   }
}
