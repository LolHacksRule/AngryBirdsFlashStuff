package §!C§
{
   import §"s§.§<!A§;
   import §1Q§.§=!6§;
   import §6s§.Texture;
   import §=!d§.§5!5§;
   import §=!d§.§6!0§;
   import §=!d§.§`J§;
   import §[!F§.§<!m§;
   import §`!B§.DisplayObject;
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
   
   public class §!!y§ extends DisplayObject implements §<!A§
   {
       
      
      private var §^V§:Texture;
      
      private var §!0§:Vector.<§8§>;
      
      private var §5"6§:Number;
      
      private var §;!0§:Vector.<Number>;
      
      private var §^e§:Vector.<Number>;
      
      private var §[n§:§=!6§;
      
      private var §2!4§:VertexBuffer3D;
      
      private var §>!-§:VertexBuffer3D;
      
      private var §5"$§:VertexBuffer3D;
      
      private var §4r§:Vector.<uint>;
      
      private var §%_§:IndexBuffer3D;
      
      private var §&!,§:int;
      
      private var §2?§:int;
      
      private var §%M§:Number;
      
      protected var §6"&§:Number;
      
      private var §"C§:Number = 0.0;
      
      private var §3D§:Number;
      
      protected var §=k§:Number;
      
      protected var §2!I§:Number;
      
      protected var §="%§:Boolean;
      
      protected var §5<§:String;
      
      protected var §?!P§:String;
      
      protected var §2+§:String;
      
      private var § !3§:int = -1;
      
      private var § 5§:Boolean = false;
      
      private var §>""§:Number = 0.0;
      
      public function §!!y§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§^V§ = param1;
         this.§="%§ = param1.premultipliedAlpha;
         this.§!0§ = new Vector.<§8§>(0,false);
         this.§;!0§ = new Vector.<Number>();
         this.§^e§ = new Vector.<Number>();
         this.§[n§ = new §=!6§(0,this.§="%§);
         this.§4r§ = new Vector.<uint>(0);
         this.§%M§ = param2;
         this.§3D§ = 0;
         this.§5"6§ = 0;
         this.§2!I§ = 0;
         this.§=k§ = 0;
         this.§?!P§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§5<§ = param4 || (!!this.§="%§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§!s§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§2!4§)
         {
            this.§2!4§.dispose();
         }
         if(this.§>!-§)
         {
            this.§>!-§.dispose();
         }
         if(this.§5"$§)
         {
            this.§5"$§.dispose();
         }
         if(this.§%_§)
         {
            this.§%_§.dispose();
         }
         this.§;!0§ = null;
         this.§^e§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §8§
      {
         return new §8§();
      }
      
      protected function initParticle(param1:§8§) : void
      {
         param1.x = this.§=k§;
         param1.y = this.§2!I§;
         param1.§#4§ = 0;
         param1.§8a§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§8§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§#4§ / param1.§8a§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§#4§ += param2;
      }
      
      private function §!s§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§4!>§;
         var _loc3_:int = this.§4!>§ + param1;
         var _loc4_:§=!6§;
         (_loc4_ = new §=!6§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§^V§.adjustVertexData(_loc4_,0,4);
         this.§!0§.fixed = false;
         this.§4r§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§!0§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§;!0§.push(0);
               this.§^e§.push(0);
               _loc7_++;
            }
            this.§[n§.append(_loc4_);
            this.§4r§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§!0§.fixed = true;
         this.§4r§.fixed = true;
         this.§ 5§ = true;
      }
      
      private function §6u§(param1:Context3D) : Boolean
      {
         if(!this.§ 5§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!m§();
         }
         var _loc2_:int = this.§[n§.§<!e§ / 4;
         if(this.§2!4§)
         {
            this.§2!4§.dispose();
         }
         if(this.§>!-§)
         {
            this.§>!-§.dispose();
         }
         if(this.§5"$§)
         {
            this.§5"$§.dispose();
         }
         if(this.§%_§)
         {
            this.§%_§.dispose();
         }
         this.§2!4§ = param1.createVertexBuffer(_loc2_ * 4,§=!6§.§>@§);
         this.§2!4§.uploadFromByteArray(this.§[n§.§?!S§,0,0,_loc2_ * 4);
         this.§>!-§ = param1.createVertexBuffer(_loc2_ * 4,§=!6§.§"g§);
         this.§>!-§.uploadFromVector(this.§[n§.§'!W§,0,_loc2_ * 4);
         this.§5"$§ = param1.createVertexBuffer(_loc2_ * 4,§=!6§.§''§);
         this.§5"$§.uploadFromVector(this.§[n§.§=!u§,0,_loc2_ * 4);
         this.§%_§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%_§.uploadFromVector(this.§4r§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§%M§ != 0)
         {
            this.§3D§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§3D§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §6"7§(param1);
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
      
      public function §!A§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§8t§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§>""§ = param1;
      }
      
      private function §8t§(param1:Matrix3D) : void
      {
         var _loc4_:§8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§8§ = null;
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
         if(isNaN(this.§>""§) || this.§>""§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§>""§;
         this.§>""§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!,§)
         {
            if((_loc4_ = this.§!0§[_loc3_]).§#4§ < _loc4_.§8a§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§&!,§ - 1)
               {
                  _loc11_ = this.§!0§[this.§&!,§ - 1];
                  this.§!0§[this.§&!,§ - 1] = _loc4_;
                  this.§!0§[_loc3_] = _loc11_;
               }
               --this.§&!,§;
            }
         }
         if(this.§3D§ > 0)
         {
            _loc12_ = 1 / this.§%M§;
            this.§5"6§ += _loc2_;
            while(this.§5"6§ > 0)
            {
               if(this.§&!,§ == this.§4!>§)
               {
                  this.§!s§(this.§4!>§);
               }
               _loc4_ = this.§!0§[this.§&!,§++] as §8§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5"6§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§6"&§))
               {
                  _loc13_ = _loc12_ * (1 - this.§6"&§ + Math.random() * this.§6"&§ * 2) + this.§"C§;
               }
               this.§"C§ += _loc12_ - _loc13_;
               this.§5"6§ -= _loc13_;
            }
            if(this.§3D§ != Number.MAX_VALUE)
            {
               this.§3D§ = Math.max(0,this.§3D§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§^V§.width;
         var _loc9_:Number = this.§^V§.height;
         this.§2?§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§76§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§&!,§)
            {
               _loc6_ = (_loc4_ = this.§!0§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§^e§[_loc14_ * 3];
               _loc17_ = this.§^e§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§5!5§.§^'§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §5!5§.§^'§.§[!R§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§2?§;
                  this.§[n§.§&7§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§[n§.§,!Z§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§[n§.§,!Z§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§[n§.§,!Z§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§[n§.§,!Z§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§[n§.§,!Z§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§[n§.§,!Z§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§[n§.§,!Z§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§[n§.§,!Z§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §76§(param1:Matrix3D) : void
      {
         var _loc3_:§8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!,§)
         {
            _loc3_ = this.§!0§[_loc2_];
            this.§;!0§[_loc2_ * 3] = _loc3_.x;
            this.§;!0§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§;!0§,this.§^e§);
      }
      
      override public function render(param1:§`J§, param2:Number) : void
      {
         this.§8t§(param1.§2!x§);
         if(this.§2?§ == 0)
         {
            return;
         }
         param1.§,! §();
         param2 *= this.alpha;
         var _loc3_:String = §6!0§.§02§(param2 != 1,this.§^V§.mipMapping,false,this.§2+§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§9!$§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§="%§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§&"4§ != this.§ !3§)
         {
            this.§!s§(0);
            this.§ !3§ = param1.§&"4§;
         }
         if(!this.§6u§(_loc4_))
         {
            this.§>!-§.uploadFromVector(this.§[n§.§'!W§,0,this.§2?§ * 4);
            this.§5"$§.uploadFromVector(this.§[n§.§=!u§,0,this.§2?§ * 4);
         }
         _loc4_.setBlendFactors(this.§5<§,this.§?!P§);
         _loc4_.setProgram(§5!5§.§^'§.§1!d§(_loc3_));
         _loc4_.setTextureAt(0,this.§^V§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§5"$§,§=!6§.§in§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§2!4§,§=!6§.§3!z§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§>!-§,§=!6§.§`f§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§2!x§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§%_§,0,this.§2?§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §6!3§() : Boolean
      {
         return false;
      }
      
      public function get §4!>§() : int
      {
         return this.§[n§.§<!e§ / 4;
      }
      
      public function get §0!&§() : int
      {
         return this.§&!,§;
      }
      
      public function get §'-§() : Number
      {
         return this.§%M§;
      }
      
      public function set §'-§(param1:Number) : void
      {
         this.§%M§ = param1;
      }
      
      public function get §?!!§() : Number
      {
         return this.§=k§;
      }
      
      public function set §?!!§(param1:Number) : void
      {
         this.§=k§ = param1;
      }
      
      public function get §"[§() : Number
      {
         return this.§2!I§;
      }
      
      public function set §"[§(param1:Number) : void
      {
         this.§2!I§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§^V§;
      }
   }
}
