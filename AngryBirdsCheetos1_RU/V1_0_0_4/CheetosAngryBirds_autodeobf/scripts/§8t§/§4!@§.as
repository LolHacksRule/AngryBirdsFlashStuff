package §8t§
{
   import §-!3§.§>!C§;
   import §1!A§.DisplayObject;
   import §5L§.§^!C§;
   import §>!?§.§>!R§;
   import §^n§.Texture;
   import §`M§.§'C§;
   import §`M§.§=!"§;
   import §`M§.§[7§;
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
   
   public class §4!@§ extends DisplayObject implements §>!R§
   {
       
      
      private var §&q§:Texture;
      
      private var §@!=§:Vector.<§>!!§>;
      
      private var §#L§:Number;
      
      private var §!y§:Vector.<Number>;
      
      private var §#!+§:Vector.<Number>;
      
      private var §^c§:§^!C§;
      
      private var §&n§:VertexBuffer3D;
      
      private var §^Q§:VertexBuffer3D;
      
      private var §[!C§:VertexBuffer3D;
      
      private var §43§:Vector.<uint>;
      
      private var §^!H§:IndexBuffer3D;
      
      private var §+F§:int;
      
      private var §5!A§:int;
      
      private var §;!G§:Number;
      
      protected var §%!+§:Number;
      
      private var §2w§:Number = 0.0;
      
      private var § J§:Number;
      
      protected var §?!P§:Number;
      
      protected var §#!A§:Number;
      
      protected var §true §:Boolean;
      
      protected var §"e§:String;
      
      protected var §3!$§:String;
      
      protected var §"!D§:String;
      
      private var §9h§:int = -1;
      
      private var §5'§:Boolean = false;
      
      private var §"Y§:Number = 0.0;
      
      public function §4!@§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§&q§ = param1;
         this.§true § = param1.premultipliedAlpha;
         this.§@!=§ = new Vector.<§>!!§>(0,false);
         this.§!y§ = new Vector.<Number>();
         this.§#!+§ = new Vector.<Number>();
         this.§^c§ = new §^!C§(0,this.§true §);
         this.§43§ = new Vector.<uint>(0);
         this.§;!G§ = param2;
         this.§ J§ = 0;
         this.§#L§ = 0;
         this.§#!A§ = 0;
         this.§?!P§ = 0;
         this.§3!$§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§"e§ = param4 || (!!this.§true § ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§&!D§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§&n§)
         {
            this.§&n§.dispose();
         }
         if(this.§^Q§)
         {
            this.§^Q§.dispose();
         }
         if(this.§[!C§)
         {
            this.§[!C§.dispose();
         }
         if(this.§^!H§)
         {
            this.§^!H§.dispose();
         }
         this.§!y§ = null;
         this.§#!+§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §>!!§
      {
         return new §>!!§();
      }
      
      protected function initParticle(param1:§>!!§) : void
      {
         param1.x = this.§?!P§;
         param1.y = this.§#!A§;
         param1.§!;§ = 0;
         param1.§[_§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§>!!§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§!;§ / param1.§[_§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§!;§ += param2;
      }
      
      private function §&!D§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6>§;
         var _loc3_:int = this.§6>§ + param1;
         var _loc4_:§^!C§;
         (_loc4_ = new §^!C§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§&q§.adjustVertexData(_loc4_,0,4);
         this.§@!=§.fixed = false;
         this.§43§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§@!=§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§!y§.push(0);
               this.§#!+§.push(0);
               _loc7_++;
            }
            this.§^c§.append(_loc4_);
            this.§43§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§@!=§.fixed = true;
         this.§43§.fixed = true;
         this.§5'§ = true;
      }
      
      private function §else §(param1:Context3D) : Boolean
      {
         if(!this.§5'§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>!C§();
         }
         var _loc2_:int = this.§^c§.§3>§ / 4;
         if(this.§&n§)
         {
            this.§&n§.dispose();
         }
         if(this.§^Q§)
         {
            this.§^Q§.dispose();
         }
         if(this.§[!C§)
         {
            this.§[!C§.dispose();
         }
         if(this.§^!H§)
         {
            this.§^!H§.dispose();
         }
         this.§&n§ = param1.createVertexBuffer(_loc2_ * 4,§^!C§.§"c§);
         this.§&n§.uploadFromByteArray(this.§^c§.final,0,0,_loc2_ * 4);
         this.§^Q§ = param1.createVertexBuffer(_loc2_ * 4,§^!C§.§5Q§);
         this.§^Q§.uploadFromVector(this.§^c§.§'O§,0,_loc2_ * 4);
         this.§[!C§ = param1.createVertexBuffer(_loc2_ * 4,§^!C§.§-L§);
         this.§[!C§.uploadFromVector(this.§^c§.§ Y§,0,_loc2_ * 4);
         this.§^!H§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§^!H§.uploadFromVector(this.§43§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§;!G§ != 0)
         {
            this.§ J§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§ J§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §0!V§(param1);
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
      
      public function §1!X§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§,t§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§"Y§ = param1;
      }
      
      private function §,t§(param1:Matrix3D) : void
      {
         var _loc4_:§>!!§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§>!!§ = null;
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
         if(isNaN(this.§"Y§) || this.§"Y§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§"Y§;
         this.§"Y§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+F§)
         {
            if((_loc4_ = this.§@!=§[_loc3_]).§!;§ < _loc4_.§[_§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§+F§ - 1)
               {
                  _loc11_ = this.§@!=§[this.§+F§ - 1];
                  this.§@!=§[this.§+F§ - 1] = _loc4_;
                  this.§@!=§[_loc3_] = _loc11_;
               }
               --this.§+F§;
            }
         }
         if(this.§ J§ > 0)
         {
            _loc12_ = 1 / this.§;!G§;
            this.§#L§ += _loc2_;
            while(this.§#L§ > 0)
            {
               if(this.§+F§ == this.§6>§)
               {
                  this.§&!D§(this.§6>§);
               }
               _loc4_ = this.§@!=§[this.§+F§++] as §>!!§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§#L§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§%!+§))
               {
                  _loc13_ = _loc12_ * (1 - this.§%!+§ + Math.random() * this.§%!+§ * 2) + this.§2w§;
               }
               this.§2w§ += _loc12_ - _loc13_;
               this.§#L§ -= _loc13_;
            }
            if(this.§ J§ != Number.MAX_VALUE)
            {
               this.§ J§ = Math.max(0,this.§ J§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§&q§.width;
         var _loc9_:Number = this.§&q§.height;
         this.§5!A§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§+!V§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§+F§)
            {
               _loc6_ = (_loc4_ = this.§@!=§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§#!+§[_loc14_ * 3];
               _loc17_ = this.§#!+§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§'C§.§3b§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §'C§.§3b§.§]v§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§5!A§;
                  this.§^c§.§']§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§^c§.§?!E§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§^c§.§?!E§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§^c§.§?!E§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§^c§.§?!E§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§^c§.§?!E§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§^c§.§?!E§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§^c§.§?!E§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§^c§.§?!E§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §+!V§(param1:Matrix3D) : void
      {
         var _loc3_:§>!!§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+F§)
         {
            _loc3_ = this.§@!=§[_loc2_];
            this.§!y§[_loc2_ * 3] = _loc3_.x;
            this.§!y§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§!y§,this.§#!+§);
      }
      
      override public function render(param1:§[7§, param2:Number) : void
      {
         this.§,t§(param1.§=9§);
         if(this.§5!A§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §=!"§.§]!F§(param2 != 1,this.§&q§.mipMapping,false,this.§"!D§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§^!%§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§true § ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§`7§ != this.§9h§)
         {
            this.§&!D§(0);
            this.§9h§ = param1.§`7§;
         }
         if(!this.§else §(_loc4_))
         {
            this.§^Q§.uploadFromVector(this.§^c§.§'O§,0,this.§5!A§ * 4);
            this.§[!C§.uploadFromVector(this.§^c§.§ Y§,0,this.§5!A§ * 4);
         }
         _loc4_.setBlendFactors(this.§"e§,this.§3!$§);
         _loc4_.setProgram(§'C§.§3b§.§;!P§(_loc3_));
         _loc4_.setTextureAt(0,this.§&q§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§[!C§,§^!C§.§5q§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§&n§,§^!C§.§`T§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§^Q§,§^!C§.§;! §,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§=9§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§^!H§,0,this.§5!A§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §1[§() : Boolean
      {
         return false;
      }
      
      public function get §6>§() : int
      {
         return this.§^c§.§3>§ / 4;
      }
      
      public function get §6L§() : int
      {
         return this.§+F§;
      }
      
      public function get §?!<§() : Number
      {
         return this.§;!G§;
      }
      
      public function set §?!<§(param1:Number) : void
      {
         this.§;!G§ = param1;
      }
      
      public function get §&!Z§() : Number
      {
         return this.§?!P§;
      }
      
      public function set §&!Z§(param1:Number) : void
      {
         this.§?!P§ = param1;
      }
      
      public function get §<_§() : Number
      {
         return this.§#!A§;
      }
      
      public function set §<_§(param1:Number) : void
      {
         this.§#!A§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§&q§;
      }
   }
}
