package §9!>§
{
   import §,!,§.§&v§;
   import §,!,§.§2t§;
   import §,!,§.§^!'§;
   import §1!D§.§=!B§;
   import §21§.Texture;
   import §57§.§>#§;
   import §5^§.§6B§;
   import §90§.DisplayObject;
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
   
   public class §<@§ extends DisplayObject implements §=!B§
   {
       
      
      private var §!r§:Texture;
      
      private var §;0§:Vector.<§0'§>;
      
      private var §2Q§:Number;
      
      private var §=p§:Vector.<Number>;
      
      private var §"2§:Vector.<Number>;
      
      private var §;!3§:§6B§;
      
      private var §-&§:VertexBuffer3D;
      
      private var § R§:VertexBuffer3D;
      
      private var §'k§:VertexBuffer3D;
      
      private var §@A§:Vector.<uint>;
      
      private var §-!O§:IndexBuffer3D;
      
      private var §9o§:int;
      
      private var §1J§:int;
      
      private var §`m§:Number;
      
      protected var §6g§:Number;
      
      private var §9!0§:Number = 0.0;
      
      private var §!P§:Number;
      
      protected var §-v§:Number;
      
      protected var §?!A§:Number;
      
      protected var §'!C§:Boolean;
      
      protected var §<u§:String;
      
      protected var §&!-§:String;
      
      protected var §=X§:String;
      
      private var §8!#§:int = -1;
      
      private var §2!,§:Boolean = false;
      
      private var §8!0§:Number = 0.0;
      
      public function §<@§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!r§ = param1;
         this.§'!C§ = param1.premultipliedAlpha;
         this.§;0§ = new Vector.<§0'§>(0,false);
         this.§=p§ = new Vector.<Number>();
         this.§"2§ = new Vector.<Number>();
         this.§;!3§ = new §6B§(0,this.§'!C§);
         this.§@A§ = new Vector.<uint>(0);
         this.§`m§ = param2;
         this.§!P§ = 0;
         this.§2Q§ = 0;
         this.§?!A§ = 0;
         this.§-v§ = 0;
         this.§&!-§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§<u§ = param4 || (!!this.§'!C§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§,!1§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-&§)
         {
            this.§-&§.dispose();
         }
         if(this.§ R§)
         {
            this.§ R§.dispose();
         }
         if(this.§'k§)
         {
            this.§'k§.dispose();
         }
         if(this.§-!O§)
         {
            this.§-!O§.dispose();
         }
         this.§=p§ = null;
         this.§"2§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §0'§
      {
         return new §0'§();
      }
      
      protected function initParticle(param1:§0'§) : void
      {
         param1.x = this.§-v§;
         param1.y = this.§?!A§;
         param1.currentTime = 0;
         param1.§#!&§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§0'§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§#!&§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §,!1§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§1!<§;
         var _loc3_:int = this.§1!<§ + param1;
         var _loc4_:§6B§;
         (_loc4_ = new §6B§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!r§.adjustVertexData(_loc4_,0,4);
         this.§;0§.fixed = false;
         this.§@A§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§;0§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§=p§.push(0);
               this.§"2§.push(0);
               _loc7_++;
            }
            this.§;!3§.append(_loc4_);
            this.§@A§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§;0§.fixed = true;
         this.§@A§.fixed = true;
         this.§2!,§ = true;
      }
      
      private function §,i§(param1:Context3D) : Boolean
      {
         if(!this.§2!,§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>#§();
         }
         var _loc2_:int = this.§;!3§.§!k§ / 4;
         if(this.§-&§)
         {
            this.§-&§.dispose();
         }
         if(this.§ R§)
         {
            this.§ R§.dispose();
         }
         if(this.§'k§)
         {
            this.§'k§.dispose();
         }
         if(this.§-!O§)
         {
            this.§-!O§.dispose();
         }
         this.§-&§ = param1.createVertexBuffer(_loc2_ * 4,§6B§.§"%§);
         this.§-&§.uploadFromByteArray(this.§;!3§.§%c§,0,0,_loc2_ * 4);
         this.§ R§ = param1.createVertexBuffer(_loc2_ * 4,§6B§.§0H§);
         this.§ R§.uploadFromVector(this.§;!3§.§6!§,0,_loc2_ * 4);
         this.§'k§ = param1.createVertexBuffer(_loc2_ * 4,§6B§.§'!§);
         this.§'k§.uploadFromVector(this.§;!3§.§0a§,0,_loc2_ * 4);
         this.§-!O§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-!O§.uploadFromVector(this.§@A§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§`m§ != 0)
         {
            this.§!P§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§!P§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §?!#§(param1);
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
      
      public function §84§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§3B§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§8!0§ = param1;
      }
      
      private function §3B§(param1:Matrix3D) : void
      {
         var _loc4_:§0'§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§0'§ = null;
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
         if(isNaN(this.§8!0§) || this.§8!0§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§8!0§;
         this.§8!0§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§9o§)
         {
            if((_loc4_ = this.§;0§[_loc3_]).currentTime < _loc4_.§#!&§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§9o§ - 1)
               {
                  _loc11_ = this.§;0§[this.§9o§ - 1];
                  this.§;0§[this.§9o§ - 1] = _loc4_;
                  this.§;0§[_loc3_] = _loc11_;
               }
               --this.§9o§;
            }
         }
         if(this.§!P§ > 0)
         {
            _loc12_ = 1 / this.§`m§;
            this.§2Q§ += _loc2_;
            while(this.§2Q§ > 0)
            {
               if(this.§9o§ == this.§1!<§)
               {
                  this.§,!1§(this.§1!<§);
               }
               _loc4_ = this.§;0§[this.§9o§++] as §0'§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§2Q§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§6g§))
               {
                  _loc13_ = _loc12_ * (1 - this.§6g§ + Math.random() * this.§6g§ * 2) + this.§9!0§;
               }
               this.§9!0§ += _loc12_ - _loc13_;
               this.§2Q§ -= _loc13_;
            }
            if(this.§!P§ != Number.MAX_VALUE)
            {
               this.§!P§ = Math.max(0,this.§!P§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!r§.width;
         var _loc9_:Number = this.§!r§.height;
         this.§1J§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§[6§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§9o§)
            {
               _loc6_ = (_loc4_ = this.§;0§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§"2§[_loc14_ * 3];
               _loc17_ = this.§"2§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§2t§.§,!E§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §2t§.§,!E§.§;!L§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§1J§;
                  this.§;!3§.§8a§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§;!3§.§3M§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§;!3§.§3M§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§;!3§.§3M§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§;!3§.§3M§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§;!3§.§3M§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§;!3§.§3M§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§;!3§.§3M§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§;!3§.§3M§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §[6§(param1:Matrix3D) : void
      {
         var _loc3_:§0'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9o§)
         {
            _loc3_ = this.§;0§[_loc2_];
            this.§=p§[_loc2_ * 3] = _loc3_.x;
            this.§=p§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§=p§,this.§"2§);
      }
      
      override public function render(param1:§&v§, param2:Number) : void
      {
         this.§3B§(param1.§66§);
         if(this.§1J§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §^!'§.§5j§(param2 != 1,this.§!r§.mipMapping,false,this.§=X§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§'!C§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§?!7§ != this.§8!#§)
         {
            this.§,!1§(0);
            this.§8!#§ = param1.§?!7§;
         }
         if(!this.§,i§(_loc4_))
         {
            this.§ R§.uploadFromVector(this.§;!3§.§6!§,0,this.§1J§ * 4);
            this.§'k§.uploadFromVector(this.§;!3§.§0a§,0,this.§1J§ * 4);
         }
         _loc4_.setBlendFactors(this.§<u§,this.§&!-§);
         _loc4_.setProgram(§2t§.§,!E§.§1Q§(_loc3_));
         _loc4_.setTextureAt(0,this.§!r§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§'k§,§6B§.§!!G§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§-&§,§6B§.§!u§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§ R§,§6B§.§2&§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§66§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§-!O§,0,this.§1J§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §"7§() : Boolean
      {
         return false;
      }
      
      public function get §1!<§() : int
      {
         return this.§;!3§.§!k§ / 4;
      }
      
      public function get §%<§() : int
      {
         return this.§9o§;
      }
      
      public function get §5!=§() : Number
      {
         return this.§`m§;
      }
      
      public function set §5!=§(param1:Number) : void
      {
         this.§`m§ = param1;
      }
      
      public function get §5w§() : Number
      {
         return this.§-v§;
      }
      
      public function set §5w§(param1:Number) : void
      {
         this.§-v§ = param1;
      }
      
      public function get §[!<§() : Number
      {
         return this.§?!A§;
      }
      
      public function set §[!<§(param1:Number) : void
      {
         this.§?!A§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!r§;
      }
   }
}
