package §8`§
{
   import §#v§.§-l§;
   import §6D§.§8[§;
   import §8!#§.§,8§;
   import §8!#§.§-!§;
   import §8!#§.§<n§;
   import §8j§.§=§;
   import §>u§.Texture;
   import §]!6§.DisplayObject;
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
   
   public class §5s§ extends DisplayObject implements §-l§
   {
       
      
      private var §,=§:Texture;
      
      private var §=>§:Vector.<§+!G§>;
      
      private var §?N§:Number;
      
      private var §;7§:Vector.<Number>;
      
      private var §0?§:Vector.<Number>;
      
      private var §'U§:§=§;
      
      private var §<!@§:VertexBuffer3D;
      
      private var §5j§:VertexBuffer3D;
      
      private var §%N§:VertexBuffer3D;
      
      private var §=!'§:Vector.<uint>;
      
      private var §%<§:IndexBuffer3D;
      
      private var §5!5§:int;
      
      private var §0i§:int;
      
      private var §"!&§:Number;
      
      protected var §85§:Number;
      
      private var §&!?§:Number = 0.0;
      
      private var §62§:Number;
      
      protected var §>w§:Number;
      
      protected var §7n§:Number;
      
      protected var §0m§:Boolean;
      
      protected var §+!F§:String;
      
      protected var §@!3§:String;
      
      protected var §>f§:String;
      
      private var §`U§:int = -1;
      
      private var §2g§:Boolean = false;
      
      private var §?8§:Number = 0.0;
      
      public function §5s§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§,=§ = param1;
         this.§0m§ = param1.premultipliedAlpha;
         this.§=>§ = new Vector.<§+!G§>(0,false);
         this.§;7§ = new Vector.<Number>();
         this.§0?§ = new Vector.<Number>();
         this.§'U§ = new §=§(0,this.§0m§);
         this.§=!'§ = new Vector.<uint>(0);
         this.§"!&§ = param2;
         this.§62§ = 0;
         this.§?N§ = 0;
         this.§7n§ = 0;
         this.§>w§ = 0;
         this.§@!3§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§+!F§ = param4 || (!!this.§0m§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§7j§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§<!@§)
         {
            this.§<!@§.dispose();
         }
         if(this.§5j§)
         {
            this.§5j§.dispose();
         }
         if(this.§%N§)
         {
            this.§%N§.dispose();
         }
         if(this.§%<§)
         {
            this.§%<§.dispose();
         }
         this.§;7§ = null;
         this.§0?§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §+!G§
      {
         return new §+!G§();
      }
      
      protected function initParticle(param1:§+!G§) : void
      {
         param1.x = this.§>w§;
         param1.y = this.§7n§;
         param1.currentTime = 0;
         param1.§1t§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§+!G§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§1t§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §7j§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§4!$§;
         var _loc3_:int = this.§4!$§ + param1;
         var _loc4_:§=§;
         (_loc4_ = new §=§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§,=§.adjustVertexData(_loc4_,0,4);
         this.§=>§.fixed = false;
         this.§=!'§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§=>§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§;7§.push(0);
               this.§0?§.push(0);
               _loc7_++;
            }
            this.§'U§.append(_loc4_);
            this.§=!'§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§=>§.fixed = true;
         this.§=!'§.fixed = true;
         this.§2g§ = true;
      }
      
      private function §&!A§(param1:Context3D) : Boolean
      {
         if(!this.§2g§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §8[§();
         }
         var _loc2_:int = this.§'U§.§@!7§ / 4;
         if(this.§<!@§)
         {
            this.§<!@§.dispose();
         }
         if(this.§5j§)
         {
            this.§5j§.dispose();
         }
         if(this.§%N§)
         {
            this.§%N§.dispose();
         }
         if(this.§%<§)
         {
            this.§%<§.dispose();
         }
         this.§<!@§ = param1.createVertexBuffer(_loc2_ * 4,§=§.§;[§);
         this.§<!@§.uploadFromByteArray(this.§'U§.§?!F§,0,0,_loc2_ * 4);
         this.§5j§ = param1.createVertexBuffer(_loc2_ * 4,§=§.§@+§);
         this.§5j§.uploadFromVector(this.§'U§.§%F§,0,_loc2_ * 4);
         this.§%N§ = param1.createVertexBuffer(_loc2_ * 4,§=§.§@6§);
         this.§%N§.uploadFromVector(this.§'U§.§0!=§,0,_loc2_ * 4);
         this.§%<§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%<§.uploadFromVector(this.§=!'§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§"!&§ != 0)
         {
            this.§62§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§62§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §5D§(param1);
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
      
      public function §5@§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§!!;§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§?8§ = param1;
      }
      
      private function §!!;§(param1:Matrix3D) : void
      {
         var _loc4_:§+!G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§+!G§ = null;
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
         if(isNaN(this.§?8§) || this.§?8§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§?8§;
         this.§?8§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!5§)
         {
            if((_loc4_ = this.§=>§[_loc3_]).currentTime < _loc4_.§1t§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§5!5§ - 1)
               {
                  _loc11_ = this.§=>§[this.§5!5§ - 1];
                  this.§=>§[this.§5!5§ - 1] = _loc4_;
                  this.§=>§[_loc3_] = _loc11_;
               }
               --this.§5!5§;
            }
         }
         if(this.§62§ > 0)
         {
            _loc12_ = 1 / this.§"!&§;
            this.§?N§ += _loc2_;
            while(this.§?N§ > 0)
            {
               if(this.§5!5§ == this.§4!$§)
               {
                  this.§7j§(this.§4!$§);
               }
               _loc4_ = this.§=>§[this.§5!5§++] as §+!G§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§?N§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§85§))
               {
                  _loc13_ = _loc12_ * (1 - this.§85§ + Math.random() * this.§85§ * 2) + this.§&!?§;
               }
               this.§&!?§ += _loc12_ - _loc13_;
               this.§?N§ -= _loc13_;
            }
            if(this.§62§ != Number.MAX_VALUE)
            {
               this.§62§ = Math.max(0,this.§62§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§,=§.width;
         var _loc9_:Number = this.§,=§.height;
         this.§0i§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§^@§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§5!5§)
            {
               _loc6_ = (_loc4_ = this.§=>§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§0?§[_loc14_ * 3];
               _loc17_ = this.§0?§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§<n§.§?@§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §<n§.§?@§.§?z§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§0i§;
                  this.§'U§.§=,§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§'U§.§4J§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§'U§.§4J§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§'U§.§4J§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§'U§.§4J§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§'U§.§4J§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§'U§.§4J§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§'U§.§4J§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§'U§.§4J§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §^@§(param1:Matrix3D) : void
      {
         var _loc3_:§+!G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!5§)
         {
            _loc3_ = this.§=>§[_loc2_];
            this.§;7§[_loc2_ * 3] = _loc3_.x;
            this.§;7§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§;7§,this.§0?§);
      }
      
      override public function render(param1:§-!§, param2:Number) : void
      {
         this.§!!;§(param1.§3C§);
         if(this.§0i§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §,8§.§^m§(param2 != 1,this.§,=§.mipMapping,false,this.§>f§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§0m§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§@c§ != this.§`U§)
         {
            this.§7j§(0);
            this.§`U§ = param1.§@c§;
         }
         if(!this.§&!A§(_loc4_))
         {
            this.§5j§.uploadFromVector(this.§'U§.§%F§,0,this.§0i§ * 4);
            this.§%N§.uploadFromVector(this.§'U§.§0!=§,0,this.§0i§ * 4);
         }
         _loc4_.setBlendFactors(this.§+!F§,this.§@!3§);
         _loc4_.setProgram(§<n§.§?@§.§8T§(_loc3_));
         _loc4_.setTextureAt(0,this.§,=§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§%N§,§=§.§`d§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§<!@§,§=§.§^!§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§5j§,§=§.§?l§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§3C§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§%<§,0,this.§0i§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §"B§() : Boolean
      {
         return false;
      }
      
      public function get §4!$§() : int
      {
         return this.§'U§.§@!7§ / 4;
      }
      
      public function get §>?§() : int
      {
         return this.§5!5§;
      }
      
      public function get §]_§() : Number
      {
         return this.§"!&§;
      }
      
      public function set §]_§(param1:Number) : void
      {
         this.§"!&§ = param1;
      }
      
      public function get §5!'§() : Number
      {
         return this.§>w§;
      }
      
      public function set §5!'§(param1:Number) : void
      {
         this.§>w§ = param1;
      }
      
      public function get §+v§() : Number
      {
         return this.§7n§;
      }
      
      public function set §+v§(param1:Number) : void
      {
         this.§7n§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§,=§;
      }
   }
}
