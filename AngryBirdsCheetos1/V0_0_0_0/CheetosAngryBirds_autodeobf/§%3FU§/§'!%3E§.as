package §?U§
{
   import § !+§.§!!Q§;
   import § !+§.§%L§;
   import § !+§.§0Z§;
   import §"! §.§@+§;
   import §0j§.§,!Z§;
   import §2!-§.Texture;
   import §<!M§.§;Z§;
   import §`a§.DisplayObject;
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
   
   public class §'!>§ extends DisplayObject implements §,!Z§
   {
       
      
      private var §[!H§:Texture;
      
      private var §8!B§:Vector.<§^&§>;
      
      private var §@#§:Number;
      
      private var § !!§:Vector.<Number>;
      
      private var §;n§:Vector.<Number>;
      
      private var §"T§:§;Z§;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §[9§:VertexBuffer3D;
      
      private var §+N§:VertexBuffer3D;
      
      private var §1B§:Vector.<uint>;
      
      private var §',§:IndexBuffer3D;
      
      private var §7!U§:int;
      
      private var §@Q§:int;
      
      private var §>!N§:Number;
      
      protected var § !7§:Number;
      
      private var §5I§:Number = 0.0;
      
      private var §>e§:Number;
      
      protected var §9H§:Number;
      
      protected var §9!L§:Number;
      
      protected var §<!8§:Boolean;
      
      protected var §3!0§:String;
      
      protected var §#!Z§:String;
      
      protected var §52§:String;
      
      private var §7N§:int = -1;
      
      private var §!!C§:Boolean = false;
      
      private var §-9§:Number = 0.0;
      
      public function §'!>§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§[!H§ = param1;
         this.§<!8§ = param1.premultipliedAlpha;
         this.§8!B§ = new Vector.<§^&§>(0,false);
         this.§ !!§ = new Vector.<Number>();
         this.§;n§ = new Vector.<Number>();
         this.§"T§ = new §;Z§(0,this.§<!8§);
         this.§1B§ = new Vector.<uint>(0);
         this.§>!N§ = param2;
         this.§>e§ = 0;
         this.§@#§ = 0;
         this.§9!L§ = 0;
         this.§9H§ = 0;
         this.§#!Z§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§3!0§ = param4 || (!!this.§<!8§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§=!'§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§[9§)
         {
            this.§[9§.dispose();
         }
         if(this.§+N§)
         {
            this.§+N§.dispose();
         }
         if(this.§',§)
         {
            this.§',§.dispose();
         }
         this.§ !!§ = null;
         this.§;n§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §^&§
      {
         return new §^&§();
      }
      
      protected function initParticle(param1:§^&§) : void
      {
         param1.x = this.§9H§;
         param1.y = this.§9!L§;
         param1.§>!Y§ = 0;
         param1.§'"§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§^&§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§>!Y§ / param1.§'"§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§>!Y§ += param2;
      }
      
      private function §=!'§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§7!N§;
         var _loc3_:int = this.§7!N§ + param1;
         var _loc4_:§;Z§;
         (_loc4_ = new §;Z§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§[!H§.adjustVertexData(_loc4_,0,4);
         this.§8!B§.fixed = false;
         this.§1B§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§8!B§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§ !!§.push(0);
               this.§;n§.push(0);
               _loc7_++;
            }
            this.§"T§.append(_loc4_);
            this.§1B§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§8!B§.fixed = true;
         this.§1B§.fixed = true;
         this.§!!C§ = true;
      }
      
      private function §6j§(param1:Context3D) : Boolean
      {
         if(!this.§!!C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@+§();
         }
         var _loc2_:int = this.§"T§.§[O§ / 4;
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§[9§)
         {
            this.§[9§.dispose();
         }
         if(this.§+N§)
         {
            this.§+N§.dispose();
         }
         if(this.§',§)
         {
            this.§',§.dispose();
         }
         this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§=!1§);
         this.§+!>§.uploadFromByteArray(this.§"T§.§3v§,0,0,_loc2_ * 4);
         this.§[9§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§[3§);
         this.§[9§.uploadFromVector(this.§"T§.§@'§,0,_loc2_ * 4);
         this.§+N§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§"1§);
         this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,_loc2_ * 4);
         this.§',§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§',§.uploadFromVector(this.§1B§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§>!N§ != 0)
         {
            this.§>e§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§>e§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §`! §(param1);
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
      
      public function §,9§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§[%§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§-9§ = param1;
      }
      
      private function §[%§(param1:Matrix3D) : void
      {
         var _loc4_:§^&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§^&§ = null;
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
         if(isNaN(this.§-9§) || this.§-9§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§-9§;
         this.§-9§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§7!U§)
         {
            if((_loc4_ = this.§8!B§[_loc3_]).§>!Y§ < _loc4_.§'"§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§7!U§ - 1)
               {
                  _loc11_ = this.§8!B§[this.§7!U§ - 1];
                  this.§8!B§[this.§7!U§ - 1] = _loc4_;
                  this.§8!B§[_loc3_] = _loc11_;
               }
               --this.§7!U§;
            }
         }
         if(this.§>e§ > 0)
         {
            _loc12_ = 1 / this.§>!N§;
            this.§@#§ += _loc2_;
            while(this.§@#§ > 0)
            {
               if(this.§7!U§ == this.§7!N§)
               {
                  this.§=!'§(this.§7!N§);
               }
               _loc4_ = this.§8!B§[this.§7!U§++] as §^&§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§@#§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§ !7§))
               {
                  _loc13_ = _loc12_ * (1 - this.§ !7§ + Math.random() * this.§ !7§ * 2) + this.§5I§;
               }
               this.§5I§ += _loc12_ - _loc13_;
               this.§@#§ -= _loc13_;
            }
            if(this.§>e§ != Number.MAX_VALUE)
            {
               this.§>e§ = Math.max(0,this.§>e§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§[!H§.width;
         var _loc9_:Number = this.§[!H§.height;
         this.§@Q§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§+8§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§7!U§)
            {
               _loc6_ = (_loc4_ = this.§8!B§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§;n§[_loc14_ * 3];
               _loc17_ = this.§;n§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§0Z§.§4J§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §0Z§.§4J§.§@1§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§@Q§;
                  this.§"T§.§7w§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§"T§.§0!A§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§"T§.§0!A§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§"T§.§0!A§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§"T§.§0!A§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§"T§.§0!A§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§"T§.§0!A§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§"T§.§0!A§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§"T§.§0!A§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §+8§(param1:Matrix3D) : void
      {
         var _loc3_:§^&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!U§)
         {
            _loc3_ = this.§8!B§[_loc2_];
            this.§ !!§[_loc2_ * 3] = _loc3_.x;
            this.§ !!§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§ !!§,this.§;n§);
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         this.§[%§(param1.§5!8§);
         if(this.§@Q§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §!!Q§.§4=§(param2 != 1,this.§[!H§.mipMapping,false,this.§52§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§9!>§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§<!8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§=6§ != this.§7N§)
         {
            this.§=!'§(0);
            this.§7N§ = param1.§=6§;
         }
         if(!this.§6j§(_loc4_))
         {
            this.§[9§.uploadFromVector(this.§"T§.§@'§,0,this.§@Q§ * 4);
            this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,this.§@Q§ * 4);
         }
         _loc4_.setBlendFactors(this.§3!0§,this.§#!Z§);
         _loc4_.setProgram(§0Z§.§4J§.§3!3§(_loc3_));
         _loc4_.setTextureAt(0,this.§[!H§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§+N§,§;Z§.§%E§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+!>§,§;Z§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§[9§,§;Z§.§>`§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§5!8§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§',§,0,this.§@Q§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §;!§() : Boolean
      {
         return false;
      }
      
      public function get §7!N§() : int
      {
         return this.§"T§.§[O§ / 4;
      }
      
      public function get §<!4§() : int
      {
         return this.§7!U§;
      }
      
      public function get §'@§() : Number
      {
         return this.§>!N§;
      }
      
      public function set §'@§(param1:Number) : void
      {
         this.§>!N§ = param1;
      }
      
      public function get §=#§() : Number
      {
         return this.§9H§;
      }
      
      public function set §=#§(param1:Number) : void
      {
         this.§9H§ = param1;
      }
      
      public function get §if §() : Number
      {
         return this.§9!L§;
      }
      
      public function set §if §(param1:Number) : void
      {
         this.§9!L§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§[!H§;
      }
   }
}
