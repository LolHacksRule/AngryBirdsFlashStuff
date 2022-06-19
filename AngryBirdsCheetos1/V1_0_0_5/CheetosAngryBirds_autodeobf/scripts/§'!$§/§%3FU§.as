package §'!$§
{
   import §!!R§.DisplayObject;
   import §"! §.§@+§;
   import §2k§.Texture;
   import §7W§.§ !+§;
   import §7W§.§4!8§;
   import §7W§.§[C§;
   import §<!M§.§;Z§;
   import §^U§.§0j§;
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
   
   public class §?U§ extends DisplayObject implements §0j§
   {
       
      
      private var §>c§:Texture;
      
      private var §@!F§:Vector.<§if §>;
      
      private var §'!>§:Number;
      
      private var §@#§:Vector.<Number>;
      
      private var § !!§:Vector.<Number>;
      
      private var §6h§:§;Z§;
      
      private var §"T§:VertexBuffer3D;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §[9§:VertexBuffer3D;
      
      private var §;n§:Vector.<uint>;
      
      private var §9W§:IndexBuffer3D;
      
      private var §1B§:int;
      
      private var §7!U§:int;
      
      private var §@Q§:Number;
      
      protected var §>!N§:Number;
      
      private var § !7§:Number = 0.0;
      
      private var §5I§:Number;
      
      protected var §>e§:Number;
      
      protected var §9H§:Number;
      
      protected var §<!8§:Boolean;
      
      protected var §9!L§:String;
      
      protected var §3!0§:String;
      
      protected var §#!Z§:String;
      
      private var §52§:int = -1;
      
      private var §',§:Boolean = false;
      
      private var §7N§:Number = 0.0;
      
      public function §?U§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§>c§ = param1;
         this.§<!8§ = param1.premultipliedAlpha;
         this.§@!F§ = new Vector.<§if §>(0,false);
         this.§@#§ = new Vector.<Number>();
         this.§ !!§ = new Vector.<Number>();
         this.§6h§ = new §;Z§(0,this.§<!8§);
         this.§;n§ = new Vector.<uint>(0);
         this.§@Q§ = param2;
         this.§5I§ = 0;
         this.§'!>§ = 0;
         this.§9H§ = 0;
         this.§>e§ = 0;
         this.§3!0§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§9!L§ = param4 || (!!this.§<!8§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§-9§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§"T§)
         {
            this.§"T§.dispose();
         }
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§[9§)
         {
            this.§[9§.dispose();
         }
         if(this.§9W§)
         {
            this.§9W§.dispose();
         }
         this.§@#§ = null;
         this.§ !!§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §if §
      {
         return new §if §();
      }
      
      protected function initParticle(param1:§if §) : void
      {
         param1.x = this.§>e§;
         param1.y = this.§9H§;
         param1.§'"§ = 0;
         param1.§;!§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§if §, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§'"§ / param1.§;!§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§'"§ += param2;
      }
      
      private function §-9§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§+8§;
         var _loc3_:int = this.§+8§ + param1;
         var _loc4_:§;Z§;
         (_loc4_ = new §;Z§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§>c§.adjustVertexData(_loc4_,0,4);
         this.§@!F§.fixed = false;
         this.§;n§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§@!F§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§@#§.push(0);
               this.§ !!§.push(0);
               _loc7_++;
            }
            this.§6h§.append(_loc4_);
            this.§;n§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§@!F§.fixed = true;
         this.§;n§.fixed = true;
         this.§',§ = true;
      }
      
      private function §5!>§(param1:Context3D) : Boolean
      {
         if(!this.§',§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@+§();
         }
         var _loc2_:int = this.§6h§.§[O§ / 4;
         if(this.§"T§)
         {
            this.§"T§.dispose();
         }
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§[9§)
         {
            this.§[9§.dispose();
         }
         if(this.§9W§)
         {
            this.§9W§.dispose();
         }
         this.§"T§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§=!1§);
         this.§"T§.uploadFromByteArray(this.§6h§.§3v§,0,0,_loc2_ * 4);
         this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§[3§);
         this.§+!>§.uploadFromVector(this.§6h§.§@'§,0,_loc2_ * 4);
         this.§[9§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§"1§);
         this.§[9§.uploadFromVector(this.§6h§.§;!2§,0,_loc2_ * 4);
         this.§9W§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§9W§.uploadFromVector(this.§;n§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§@Q§ != 0)
         {
            this.§5I§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§5I§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §,r§(param1);
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
      
      public function §=!'§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§,9§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7N§ = param1;
      }
      
      private function §,9§(param1:Matrix3D) : void
      {
         var _loc4_:§if § = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§if § = null;
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
         if(isNaN(this.§7N§) || this.§7N§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7N§;
         this.§7N§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§1B§)
         {
            if((_loc4_ = this.§@!F§[_loc3_]).§'"§ < _loc4_.§;!§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§1B§ - 1)
               {
                  _loc11_ = this.§@!F§[this.§1B§ - 1];
                  this.§@!F§[this.§1B§ - 1] = _loc4_;
                  this.§@!F§[_loc3_] = _loc11_;
               }
               --this.§1B§;
            }
         }
         if(this.§5I§ > 0)
         {
            _loc12_ = 1 / this.§@Q§;
            this.§'!>§ += _loc2_;
            while(this.§'!>§ > 0)
            {
               if(this.§1B§ == this.§+8§)
               {
                  this.§-9§(this.§+8§);
               }
               _loc4_ = this.§@!F§[this.§1B§++] as §if §;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§'!>§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§>!N§))
               {
                  _loc13_ = _loc12_ * (1 - this.§>!N§ + Math.random() * this.§>!N§ * 2) + this.§ !7§;
               }
               this.§ !7§ += _loc12_ - _loc13_;
               this.§'!>§ -= _loc13_;
            }
            if(this.§5I§ != Number.MAX_VALUE)
            {
               this.§5I§ = Math.max(0,this.§5I§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§>c§.width;
         var _loc9_:Number = this.§>c§.height;
         this.§7!U§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§[%§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§1B§)
            {
               _loc6_ = (_loc4_ = this.§@!F§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§ !!§[_loc14_ * 3];
               _loc17_ = this.§ !!§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§ !+§.§ Z§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / § !+§.§ Z§.§'w§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§7!U§;
                  this.§6h§.§7w§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§6h§.§0!A§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§6h§.§0!A§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§6h§.§0!A§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§6h§.§0!A§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§6h§.§0!A§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§6h§.§0!A§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§6h§.§0!A§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§6h§.§0!A§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §[%§(param1:Matrix3D) : void
      {
         var _loc3_:§if § = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1B§)
         {
            _loc3_ = this.§@!F§[_loc2_];
            this.§@#§[_loc2_ * 3] = _loc3_.x;
            this.§@#§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§@#§,this.§ !!§);
      }
      
      override public function render(param1:§4!8§, param2:Number) : void
      {
         this.§,9§(param1.§4!<§);
         if(this.§7!U§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §[C§.§82§(param2 != 1,this.§>c§.mipMapping,false,this.§#!Z§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§+!T§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§<!8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§9!>§ != this.§52§)
         {
            this.§-9§(0);
            this.§52§ = param1.§9!>§;
         }
         if(!this.§5!>§(_loc4_))
         {
            this.§+!>§.uploadFromVector(this.§6h§.§@'§,0,this.§7!U§ * 4);
            this.§[9§.uploadFromVector(this.§6h§.§;!2§,0,this.§7!U§ * 4);
         }
         _loc4_.setBlendFactors(this.§9!L§,this.§3!0§);
         _loc4_.setProgram(§ !+§.§ Z§.§@!2§(_loc3_));
         _loc4_.setTextureAt(0,this.§>c§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§[9§,§;Z§.§%E§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§"T§,§;Z§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§+!>§,§;Z§.§>`§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§4!<§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§9W§,0,this.§7!U§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §>R§() : Boolean
      {
         return false;
      }
      
      public function get §+8§() : int
      {
         return this.§6h§.§[O§ / 4;
      }
      
      public function get §7!N§() : int
      {
         return this.§1B§;
      }
      
      public function get §<!4§() : Number
      {
         return this.§@Q§;
      }
      
      public function set §<!4§(param1:Number) : void
      {
         this.§@Q§ = param1;
      }
      
      public function get §'@§() : Number
      {
         return this.§>e§;
      }
      
      public function set §'@§(param1:Number) : void
      {
         this.§>e§ = param1;
      }
      
      public function get §=#§() : Number
      {
         return this.§9H§;
      }
      
      public function set §=#§(param1:Number) : void
      {
         this.§9H§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§>c§;
      }
   }
}
