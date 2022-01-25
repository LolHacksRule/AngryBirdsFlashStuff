package § !g§
{
   import §&!9§.Texture;
   import §'!>§.§3K§;
   import §0@§.DisplayObject;
   import §[! §.§'b§;
   import §each §.§ if§;
   import §each §.§'!3§;
   import §each §.§<F§;
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
   import §true §.§3t§;
   
   public class §@n§ extends DisplayObject implements §3t§
   {
       
      
      private var §#d§:Texture;
      
      private var §&$§:Vector.<§]!^§>;
      
      private var §extends§:Number;
      
      private var §3!R§:Vector.<Number>;
      
      private var §?r§:Vector.<Number>;
      
      private var §!e§:§3K§;
      
      private var § L§:VertexBuffer3D;
      
      private var §-!&§:VertexBuffer3D;
      
      private var §"^§:VertexBuffer3D;
      
      private var §9<§:Vector.<uint>;
      
      private var §0N§:IndexBuffer3D;
      
      private var § !2§:int;
      
      private var §@!7§:int;
      
      private var §[!A§:Number;
      
      protected var §2!6§:Number;
      
      private var §>'§:Number = 0.0;
      
      private var §8!K§:Number;
      
      protected var §?!]§:Number;
      
      protected var §]!Y§:Number;
      
      protected var §+d§:Boolean;
      
      protected var §4w§:String;
      
      protected var §"[§:String;
      
      protected var §^!9§:String;
      
      private var §1!7§:int = -1;
      
      private var §^!m§:Boolean = false;
      
      private var §2x§:Number = 0.0;
      
      public function §@n§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§#d§ = param1;
         this.§+d§ = param1.premultipliedAlpha;
         this.§&$§ = new Vector.<§]!^§>(0,false);
         this.§3!R§ = new Vector.<Number>();
         this.§?r§ = new Vector.<Number>();
         this.§!e§ = new §3K§(0,this.§+d§);
         this.§9<§ = new Vector.<uint>(0);
         this.§[!A§ = param2;
         this.§8!K§ = 0;
         this.§extends§ = 0;
         this.§]!Y§ = 0;
         this.§?!]§ = 0;
         this.§"[§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§4w§ = param4 || (!!this.§+d§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^!e§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§ L§)
         {
            this.§ L§.dispose();
         }
         if(this.§-!&§)
         {
            this.§-!&§.dispose();
         }
         if(this.§"^§)
         {
            this.§"^§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         this.§3!R§ = null;
         this.§?r§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §]!^§
      {
         return new §]!^§();
      }
      
      protected function initParticle(param1:§]!^§) : void
      {
         param1.x = this.§?!]§;
         param1.y = this.§]!Y§;
         param1.§2!F§ = 0;
         param1.§,v§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§]!^§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§2!F§ / param1.§,v§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§2!F§ += param2;
      }
      
      private function §^!e§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§ '§;
         var _loc3_:int = this.§ '§ + param1;
         var _loc4_:§3K§;
         (_loc4_ = new §3K§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§#d§.adjustVertexData(_loc4_,0,4);
         this.§&$§.fixed = false;
         this.§9<§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§&$§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§3!R§.push(0);
               this.§?r§.push(0);
               _loc7_++;
            }
            this.§!e§.append(_loc4_);
            this.§9<§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§&$§.fixed = true;
         this.§9<§.fixed = true;
         this.§^!m§ = true;
      }
      
      private function §=k§(param1:Context3D) : Boolean
      {
         if(!this.§^!m§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'b§();
         }
         var _loc2_:int = this.§!e§.§1q§ / 4;
         if(this.§ L§)
         {
            this.§ L§.dispose();
         }
         if(this.§-!&§)
         {
            this.§-!&§.dispose();
         }
         if(this.§"^§)
         {
            this.§"^§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         this.§ L§ = param1.createVertexBuffer(_loc2_ * 4,§3K§.§#Q§);
         this.§ L§.uploadFromByteArray(this.§!e§.§5J§,0,0,_loc2_ * 4);
         this.§-!&§ = param1.createVertexBuffer(_loc2_ * 4,§3K§.§ null§);
         this.§-!&§.uploadFromVector(this.§!e§.§%!"§,0,_loc2_ * 4);
         this.§"^§ = param1.createVertexBuffer(_loc2_ * 4,§3K§.§+p§);
         this.§"^§.uploadFromVector(this.§!e§.§8I§,0,_loc2_ * 4);
         this.§0N§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§0N§.uploadFromVector(this.§9<§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§[!A§ != 0)
         {
            this.§8!K§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§8!K§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §3!6§(param1);
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
      
      public function §2!@§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§1&§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§2x§ = param1;
      }
      
      private function §1&§(param1:Matrix3D) : void
      {
         var _loc4_:§]!^§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§]!^§ = null;
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
         if(isNaN(this.§2x§) || this.§2x§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§2x§;
         this.§2x§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !2§)
         {
            if((_loc4_ = this.§&$§[_loc3_]).§2!F§ < _loc4_.§,v§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§ !2§ - 1)
               {
                  _loc11_ = this.§&$§[this.§ !2§ - 1];
                  this.§&$§[this.§ !2§ - 1] = _loc4_;
                  this.§&$§[_loc3_] = _loc11_;
               }
               --this.§ !2§;
            }
         }
         if(this.§8!K§ > 0)
         {
            _loc12_ = 1 / this.§[!A§;
            this.§extends§ += _loc2_;
            while(this.§extends§ > 0)
            {
               if(this.§ !2§ == this.§ '§)
               {
                  this.§^!e§(this.§ '§);
               }
               _loc4_ = this.§&$§[this.§ !2§++] as §]!^§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§extends§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§2!6§))
               {
                  _loc13_ = _loc12_ * (1 - this.§2!6§ + Math.random() * this.§2!6§ * 2) + this.§>'§;
               }
               this.§>'§ += _loc12_ - _loc13_;
               this.§extends§ -= _loc13_;
            }
            if(this.§8!K§ != Number.MAX_VALUE)
            {
               this.§8!K§ = Math.max(0,this.§8!K§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§#d§.width;
         var _loc9_:Number = this.§#d§.height;
         this.§@!7§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§<&§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§ !2§)
            {
               _loc6_ = (_loc4_ = this.§&$§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§?r§[_loc14_ * 3];
               _loc17_ = this.§?r§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§'!3§.§1!n§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §'!3§.§1!n§.§<!D§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§@!7§;
                  this.§!e§.§[9§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§!e§.§"!j§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§!e§.§"!j§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§!e§.§"!j§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§!e§.§"!j§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§!e§.§"!j§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§!e§.§"!j§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§!e§.§"!j§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§!e§.§"!j§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §<&§(param1:Matrix3D) : void
      {
         var _loc3_:§]!^§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !2§)
         {
            _loc3_ = this.§&$§[_loc2_];
            this.§3!R§[_loc2_ * 3] = _loc3_.x;
            this.§3!R§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§3!R§,this.§?r§);
      }
      
      override public function render(param1:§ if§, param2:Number) : void
      {
         this.§1&§(param1.§[!^§);
         if(this.§@!7§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §<F§.§#z§(param2 != 1,this.§#d§.mipMapping,false,this.§^!9§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§^!3§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§+d§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§?N§ != this.§1!7§)
         {
            this.§^!e§(0);
            this.§1!7§ = param1.§?N§;
         }
         if(!this.§=k§(_loc4_))
         {
            this.§-!&§.uploadFromVector(this.§!e§.§%!"§,0,this.§@!7§ * 4);
            this.§"^§.uploadFromVector(this.§!e§.§8I§,0,this.§@!7§ * 4);
         }
         _loc4_.setBlendFactors(this.§4w§,this.§"[§);
         _loc4_.setProgram(§'!3§.§1!n§.§try §(_loc3_));
         _loc4_.setTextureAt(0,this.§#d§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§"^§,§3K§.§[@§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§ L§,§3K§.§]!O§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§-!&§,§3K§.§@!J§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§[!^§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§0N§,0,this.§@!7§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §2A§() : Boolean
      {
         return false;
      }
      
      public function get § '§() : int
      {
         return this.§!e§.§1q§ / 4;
      }
      
      public function get §9!E§() : int
      {
         return this.§ !2§;
      }
      
      public function get §=i§() : Number
      {
         return this.§[!A§;
      }
      
      public function set §=i§(param1:Number) : void
      {
         this.§[!A§ = param1;
      }
      
      public function get §<6§() : Number
      {
         return this.§?!]§;
      }
      
      public function set §<6§(param1:Number) : void
      {
         this.§?!]§ = param1;
      }
      
      public function get §+!4§() : Number
      {
         return this.§]!Y§;
      }
      
      public function set §+!4§(param1:Number) : void
      {
         this.§]!Y§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§#d§;
      }
   }
}
