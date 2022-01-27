package §`'§
{
   import §&!]§.DisplayObject;
   import §'!B§.§'Z§;
   import §'!B§.§0!p§;
   import §'!B§.§8T§;
   import §2"7§.§!!z§;
   import §6!5§.§>"C§;
   import §7!8§.§2s§;
   import §9"@§.Texture;
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
   
   public class §3!]§ extends DisplayObject implements §2s§
   {
       
      
      private var §3!2§:Texture;
      
      private var §6!E§:Vector.<§0"@§>;
      
      private var §1!@§:Number;
      
      private var §1!W§:Vector.<Number>;
      
      private var §!!1§:Vector.<Number>;
      
      private var §>R§:§>"C§;
      
      private var §>l§:VertexBuffer3D;
      
      private var §"!Q§:VertexBuffer3D;
      
      private var §4!4§:VertexBuffer3D;
      
      private var §'!e§:Vector.<uint>;
      
      private var §[o§:IndexBuffer3D;
      
      private var §#!6§:int;
      
      private var §8!@§:int;
      
      private var §+N§:Number;
      
      protected var § !v§:Number;
      
      private var §=",§:Number = 0.0;
      
      private var §9"6§:Number;
      
      protected var §+![§:Number;
      
      protected var §?N§:Number;
      
      protected var §>"7§:Boolean;
      
      protected var §;!M§:String;
      
      protected var §-!z§:String;
      
      protected var §#" §:String;
      
      private var §^![§:int = -1;
      
      private var §[0§:Boolean = false;
      
      private var §1"H§:Number = 0.0;
      
      public function §3!]§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§3!2§ = param1;
         this.§>"7§ = param1.premultipliedAlpha;
         this.§6!E§ = new Vector.<§0"@§>(0,false);
         this.§1!W§ = new Vector.<Number>();
         this.§!!1§ = new Vector.<Number>();
         this.§>R§ = new §>"C§(0,this.§>"7§);
         this.§'!e§ = new Vector.<uint>(0);
         this.§+N§ = param2;
         this.§9"6§ = 0;
         this.§1!@§ = 0;
         this.§?N§ = 0;
         this.§+![§ = 0;
         this.§-!z§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§;!M§ = param4 || (!!this.§>"7§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§]!m§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§>l§)
         {
            this.§>l§.dispose();
         }
         if(this.§"!Q§)
         {
            this.§"!Q§.dispose();
         }
         if(this.§4!4§)
         {
            this.§4!4§.dispose();
         }
         if(this.§[o§)
         {
            this.§[o§.dispose();
         }
         this.§1!W§ = null;
         this.§!!1§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §0"@§
      {
         return new §0"@§();
      }
      
      protected function initParticle(param1:§0"@§) : void
      {
         param1.x = this.§+![§;
         param1.y = this.§?N§;
         param1.§ !C§ = 0;
         param1.§3!T§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§0"@§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§ !C§ / param1.§3!T§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§ !C§ += param2;
      }
      
      private function §]!m§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§^!x§;
         var _loc3_:int = this.§^!x§ + param1;
         var _loc4_:§>"C§;
         (_loc4_ = new §>"C§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§3!2§.adjustVertexData(_loc4_,0,4);
         this.§6!E§.fixed = false;
         this.§'!e§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§6!E§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§1!W§.push(0);
               this.§!!1§.push(0);
               _loc7_++;
            }
            this.§>R§.append(_loc4_);
            this.§'!e§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§6!E§.fixed = true;
         this.§'!e§.fixed = true;
         this.§[0§ = true;
      }
      
      private function §#8§(param1:Context3D) : Boolean
      {
         if(!this.§[0§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!!z§();
         }
         var _loc2_:int = this.§>R§.§#k§ / 4;
         if(this.§>l§)
         {
            this.§>l§.dispose();
         }
         if(this.§"!Q§)
         {
            this.§"!Q§.dispose();
         }
         if(this.§4!4§)
         {
            this.§4!4§.dispose();
         }
         if(this.§[o§)
         {
            this.§[o§.dispose();
         }
         this.§>l§ = param1.createVertexBuffer(_loc2_ * 4,§>"C§.§"!?§);
         this.§>l§.uploadFromByteArray(this.§>R§.native,0,0,_loc2_ * 4);
         this.§"!Q§ = param1.createVertexBuffer(_loc2_ * 4,§>"C§.§9"C§);
         this.§"!Q§.uploadFromVector(this.§>R§.§`5§,0,_loc2_ * 4);
         this.§4!4§ = param1.createVertexBuffer(_loc2_ * 4,§>"C§.§;!l§);
         this.§4!4§.uploadFromVector(this.§>R§.§ "7§,0,_loc2_ * 4);
         this.§[o§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§[o§.uploadFromVector(this.§'!e§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§+N§ != 0)
         {
            this.§9"6§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§9"6§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §^""§(param1);
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
      
      public function §4!p§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§@=§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§1"H§ = param1;
      }
      
      private function §@=§(param1:Matrix3D) : void
      {
         var _loc4_:§0"@§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§0"@§ = null;
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
         if(isNaN(this.§1"H§) || this.§1"H§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§1"H§;
         this.§1"H§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!6§)
         {
            if((_loc4_ = this.§6!E§[_loc3_]).§ !C§ < _loc4_.§3!T§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§#!6§ - 1)
               {
                  _loc11_ = this.§6!E§[this.§#!6§ - 1];
                  this.§6!E§[this.§#!6§ - 1] = _loc4_;
                  this.§6!E§[_loc3_] = _loc11_;
               }
               --this.§#!6§;
            }
         }
         if(this.§9"6§ > 0)
         {
            _loc12_ = 1 / this.§+N§;
            this.§1!@§ += _loc2_;
            while(this.§1!@§ > 0)
            {
               if(this.§#!6§ == this.§^!x§)
               {
                  this.§]!m§(this.§^!x§);
               }
               _loc4_ = this.§6!E§[this.§#!6§++] as §0"@§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§1!@§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§ !v§))
               {
                  _loc13_ = _loc12_ * (1 - this.§ !v§ + Math.random() * this.§ !v§ * 2) + this.§=",§;
               }
               this.§=",§ += _loc12_ - _loc13_;
               this.§1!@§ -= _loc13_;
            }
            if(this.§9"6§ != Number.MAX_VALUE)
            {
               this.§9"6§ = Math.max(0,this.§9"6§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§3!2§.width;
         var _loc9_:Number = this.§3!2§.height;
         this.§8!@§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§!!f§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§#!6§)
            {
               _loc6_ = (_loc4_ = this.§6!E§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§!!1§[_loc14_ * 3];
               _loc17_ = this.§!!1§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§8T§.§5!Y§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §8T§.§5!Y§.§@+§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§8!@§;
                  this.§>R§.§<!H§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§>R§.§#m§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§>R§.§#m§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§>R§.§#m§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§>R§.§#m§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§>R§.§#m§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§>R§.§#m§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§>R§.§#m§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§>R§.§#m§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §!!f§(param1:Matrix3D) : void
      {
         var _loc3_:§0"@§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!6§)
         {
            _loc3_ = this.§6!E§[_loc2_];
            this.§1!W§[_loc2_ * 3] = _loc3_.x;
            this.§1!W§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§1!W§,this.§!!1§);
      }
      
      override public function render(param1:§0!p§, param2:Number) : void
      {
         this.§@=§(param1.§-P§);
         if(this.§8!@§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §'Z§.§7!=§(param2 != 1,this.§3!2§.mipMapping,false,this.§#" §,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§@2§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§>"7§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§9B§ != this.§^![§)
         {
            this.§]!m§(0);
            this.§^![§ = param1.§9B§;
         }
         if(!this.§#8§(_loc4_))
         {
            this.§"!Q§.uploadFromVector(this.§>R§.§`5§,0,this.§8!@§ * 4);
            this.§4!4§.uploadFromVector(this.§>R§.§ "7§,0,this.§8!@§ * 4);
         }
         _loc4_.setBlendFactors(this.§;!M§,this.§-!z§);
         _loc4_.setProgram(§8T§.§5!Y§.§+i§(_loc3_));
         _loc4_.setTextureAt(0,this.§3!2§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§4!4§,§>"C§.§!-§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§>l§,§>"C§.§-!j§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§"!Q§,§>"C§.§!"?§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§-P§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§[o§,0,this.§8!@§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §5"6§() : Boolean
      {
         return false;
      }
      
      public function get §^!x§() : int
      {
         return this.§>R§.§#k§ / 4;
      }
      
      public function get §73§() : int
      {
         return this.§#!6§;
      }
      
      public function get §3_§() : Number
      {
         return this.§+N§;
      }
      
      public function set §3_§(param1:Number) : void
      {
         this.§+N§ = param1;
      }
      
      public function get §1!R§() : Number
      {
         return this.§+![§;
      }
      
      public function set §1!R§(param1:Number) : void
      {
         this.§+![§ = param1;
      }
      
      public function get §8B§() : Number
      {
         return this.§?N§;
      }
      
      public function set §8B§(param1:Number) : void
      {
         this.§?N§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§3!2§;
      }
   }
}
