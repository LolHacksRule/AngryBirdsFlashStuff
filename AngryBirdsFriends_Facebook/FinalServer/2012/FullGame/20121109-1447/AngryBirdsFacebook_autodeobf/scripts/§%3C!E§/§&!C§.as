package §<!E§
{
   import §#x§.§2n§;
   import §&!-§.§?!#§;
   import §'6§.§"]§;
   import §'6§.§'"3§;
   import §'6§.§[!f§;
   import §0!R§.Texture;
   import §1!$§.DisplayObject;
   import §1V§.§1!-§;
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
   
   public class §&!C§ extends DisplayObject implements §2n§
   {
       
      
      private var §&M§:Texture;
      
      private var §'">§:Vector.<§[M§>;
      
      private var §]T§:Number;
      
      private var §8!!§:Vector.<Number>;
      
      private var §'L§:Vector.<Number>;
      
      private var §0E§:§1!-§;
      
      private var §9!;§:VertexBuffer3D;
      
      private var §?M§:VertexBuffer3D;
      
      private var §#!?§:VertexBuffer3D;
      
      private var §<!$§:Vector.<uint>;
      
      private var §0!n§:IndexBuffer3D;
      
      private var §?!y§:int;
      
      private var §[!>§:int;
      
      private var §@!1§:Number;
      
      protected var §8!L§:Number;
      
      private var §"L§:Number = 0.0;
      
      private var §>"E§:Number;
      
      protected var §'"9§:Number;
      
      protected var §0!d§:Number;
      
      protected var §;!n§:Boolean;
      
      protected var §6"=§:String;
      
      protected var §'!"§:String;
      
      protected var §<!7§:String;
      
      private var §%-§:int = -1;
      
      private var §1"7§:Boolean = false;
      
      private var §^!!§:Number = 0.0;
      
      public function §&!C§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§&M§ = param1;
         this.§;!n§ = param1.premultipliedAlpha;
         this.§'">§ = new Vector.<§[M§>(0,false);
         this.§8!!§ = new Vector.<Number>();
         this.§'L§ = new Vector.<Number>();
         this.§0E§ = new §1!-§(0,this.§;!n§);
         this.§<!$§ = new Vector.<uint>(0);
         this.§@!1§ = param2;
         this.§>"E§ = 0;
         this.§]T§ = 0;
         this.§0!d§ = 0;
         this.§'"9§ = 0;
         this.§'!"§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§6"=§ = param4 || (!!this.§;!n§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§;e§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§9!;§)
         {
            this.§9!;§.dispose();
         }
         if(this.§?M§)
         {
            this.§?M§.dispose();
         }
         if(this.§#!?§)
         {
            this.§#!?§.dispose();
         }
         if(this.§0!n§)
         {
            this.§0!n§.dispose();
         }
         this.§8!!§ = null;
         this.§'L§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §[M§
      {
         return new §[M§();
      }
      
      protected function initParticle(param1:§[M§) : void
      {
         param1.x = this.§'"9§;
         param1.y = this.§0!d§;
         param1.§^#§ = 0;
         param1.§ B§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§[M§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§^#§ / param1.§ B§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§^#§ += param2;
      }
      
      private function §;e§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6!]§;
         var _loc3_:int = this.§6!]§ + param1;
         var _loc4_:§1!-§;
         (_loc4_ = new §1!-§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§&M§.adjustVertexData(_loc4_,0,4);
         this.§'">§.fixed = false;
         this.§<!$§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§'">§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§8!!§.push(0);
               this.§'L§.push(0);
               _loc7_++;
            }
            this.§0E§.append(_loc4_);
            this.§<!$§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§'">§.fixed = true;
         this.§<!$§.fixed = true;
         this.§1"7§ = true;
      }
      
      private function §;!;§(param1:Context3D) : Boolean
      {
         if(!this.§1"7§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §?!#§();
         }
         var _loc2_:int = this.§0E§.§8=§ / 4;
         if(this.§9!;§)
         {
            this.§9!;§.dispose();
         }
         if(this.§?M§)
         {
            this.§?M§.dispose();
         }
         if(this.§#!?§)
         {
            this.§#!?§.dispose();
         }
         if(this.§0!n§)
         {
            this.§0!n§.dispose();
         }
         this.§9!;§ = param1.createVertexBuffer(_loc2_ * 4,§1!-§.§%0§);
         this.§9!;§.uploadFromByteArray(this.§0E§.§`I§,0,0,_loc2_ * 4);
         this.§?M§ = param1.createVertexBuffer(_loc2_ * 4,§1!-§.§!!J§);
         this.§?M§.uploadFromVector(this.§0E§.§%3§,0,_loc2_ * 4);
         this.§#!?§ = param1.createVertexBuffer(_loc2_ * 4,§1!-§.§6V§);
         this.§#!?§.uploadFromVector(this.§0E§.§%!8§,0,_loc2_ * 4);
         this.§0!n§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§0!n§.uploadFromVector(this.§<!$§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§@!1§ != 0)
         {
            this.§>"E§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§>"E§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §&!e§(param1);
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
      
      public function §8D§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§;!z§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§^!!§ = param1;
      }
      
      private function §;!z§(param1:Matrix3D) : void
      {
         var _loc4_:§[M§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§[M§ = null;
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
         if(isNaN(this.§^!!§) || this.§^!!§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§^!!§;
         this.§^!!§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!y§)
         {
            if((_loc4_ = this.§'">§[_loc3_]).§^#§ < _loc4_.§ B§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?!y§ - 1)
               {
                  _loc11_ = this.§'">§[this.§?!y§ - 1];
                  this.§'">§[this.§?!y§ - 1] = _loc4_;
                  this.§'">§[_loc3_] = _loc11_;
               }
               --this.§?!y§;
            }
         }
         if(this.§>"E§ > 0)
         {
            _loc12_ = 1 / this.§@!1§;
            this.§]T§ += _loc2_;
            while(this.§]T§ > 0)
            {
               if(this.§?!y§ == this.§6!]§)
               {
                  this.§;e§(this.§6!]§);
               }
               _loc4_ = this.§'">§[this.§?!y§++] as §[M§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§]T§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§8!L§))
               {
                  _loc13_ = _loc12_ * (1 - this.§8!L§ + Math.random() * this.§8!L§ * 2) + this.§"L§;
               }
               this.§"L§ += _loc12_ - _loc13_;
               this.§]T§ -= _loc13_;
            }
            if(this.§>"E§ != Number.MAX_VALUE)
            {
               this.§>"E§ = Math.max(0,this.§>"E§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§&M§.width;
         var _loc9_:Number = this.§&M§.height;
         this.§[!>§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§,d§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?!y§)
            {
               _loc6_ = (_loc4_ = this.§'">§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§'L§[_loc14_ * 3];
               _loc17_ = this.§'L§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§"]§.§!X§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §"]§.§!X§.§!"5§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§[!>§;
                  this.§0E§.§ "@§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§0E§.§?Y§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§0E§.§?Y§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§0E§.§?Y§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§0E§.§?Y§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§0E§.§?Y§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§0E§.§?Y§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§0E§.§?Y§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§0E§.§?Y§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §,d§(param1:Matrix3D) : void
      {
         var _loc3_:§[M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!y§)
         {
            _loc3_ = this.§'">§[_loc2_];
            this.§8!!§[_loc2_ * 3] = _loc3_.x;
            this.§8!!§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§8!!§,this.§'L§);
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         this.§;!z§(param1.§&b§);
         if(this.§[!>§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §[!f§.§3"?§(param2 != 1,this.§&M§.mipMapping,false,this.§<!7§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§,§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§;!n§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§2'§ != this.§%-§)
         {
            this.§;e§(0);
            this.§%-§ = param1.§2'§;
         }
         if(!this.§;!;§(_loc4_))
         {
            this.§?M§.uploadFromVector(this.§0E§.§%3§,0,this.§[!>§ * 4);
            this.§#!?§.uploadFromVector(this.§0E§.§%!8§,0,this.§[!>§ * 4);
         }
         _loc4_.setBlendFactors(this.§6"=§,this.§'!"§);
         _loc4_.setProgram(§"]§.§!X§.§&2§(_loc3_));
         _loc4_.setTextureAt(0,this.§&M§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§#!?§,§1!-§.§9"6§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§9!;§,§1!-§.§,N§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§?M§,§1!-§.§#Y§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&b§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§0!n§,0,this.§[!>§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §!U§() : Boolean
      {
         return false;
      }
      
      public function get §6!]§() : int
      {
         return this.§0E§.§8=§ / 4;
      }
      
      public function get §#!z§() : int
      {
         return this.§?!y§;
      }
      
      public function get §#!f§() : Number
      {
         return this.§@!1§;
      }
      
      public function set §#!f§(param1:Number) : void
      {
         this.§@!1§ = param1;
      }
      
      public function get §true §() : Number
      {
         return this.§'"9§;
      }
      
      public function set §true §(param1:Number) : void
      {
         this.§'"9§ = param1;
      }
      
      public function get §7v§() : Number
      {
         return this.§0!d§;
      }
      
      public function set §7v§(param1:Number) : void
      {
         this.§0!d§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§&M§;
      }
   }
}
