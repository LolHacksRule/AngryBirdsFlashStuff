package §]K§
{
   import §&!Z§.§6!r§;
   import §5Q§.§%!t§;
   import §5Q§.§,Q§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §=5§.§""C§;
   import §>!7§.§`B§;
   import §`!#§.Texture;
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
   
   public class §2!k§ extends DisplayObject implements §`B§
   {
       
      
      private var §2-§:Texture;
      
      private var §3R§:Vector.<§;!`§>;
      
      private var §6N§:Number;
      
      private var §"3§:Vector.<Number>;
      
      private var §>!M§:Vector.<Number>;
      
      private var §'!O§:§6!r§;
      
      private var §6"=§:VertexBuffer3D;
      
      private var § !"§:VertexBuffer3D;
      
      private var §7!3§:VertexBuffer3D;
      
      private var §+B§:Vector.<uint>;
      
      private var §=!f§:IndexBuffer3D;
      
      private var §`"F§:int;
      
      private var §4§:int;
      
      private var §?!H§:Number;
      
      protected var § !f§:Number;
      
      private var §"8§:Number = 0.0;
      
      private var §&!J§:Number;
      
      protected var §%"D§:Number;
      
      protected var §9!J§:Number;
      
      protected var §<!l§:Boolean;
      
      protected var §&!d§:String;
      
      protected var §'!c§:String;
      
      protected var §'"5§:String;
      
      private var §+!0§:int = -1;
      
      private var §[P§:Boolean = false;
      
      private var §[R§:Number = 0.0;
      
      public function §2!k§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§2-§ = param1;
         this.§<!l§ = param1.premultipliedAlpha;
         this.§3R§ = new Vector.<§;!`§>(0,false);
         this.§"3§ = new Vector.<Number>();
         this.§>!M§ = new Vector.<Number>();
         this.§'!O§ = new §6!r§(0,this.§<!l§);
         this.§+B§ = new Vector.<uint>(0);
         this.§?!H§ = param2;
         this.§&!J§ = 0;
         this.§6N§ = 0;
         this.§9!J§ = 0;
         this.§%"D§ = 0;
         this.§'!c§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§&!d§ = param4 || (!!this.§<!l§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§,!1§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§6"=§)
         {
            this.§6"=§.dispose();
         }
         if(this.§ !"§)
         {
            this.§ !"§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§=!f§)
         {
            this.§=!f§.dispose();
         }
         this.§"3§ = null;
         this.§>!M§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §;!`§
      {
         return new §;!`§();
      }
      
      protected function initParticle(param1:§;!`§) : void
      {
         param1.x = this.§%"D§;
         param1.y = this.§9!J§;
         param1.§+V§ = 0;
         param1.§#F§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§;!`§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§+V§ / param1.§#F§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§+V§ += param2;
      }
      
      private function §,!1§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§!l§;
         var _loc3_:int = this.§!l§ + param1;
         var _loc4_:§6!r§;
         (_loc4_ = new §6!r§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§2-§.adjustVertexData(_loc4_,0,4);
         this.§3R§.fixed = false;
         this.§+B§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§3R§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"3§.push(0);
               this.§>!M§.push(0);
               _loc7_++;
            }
            this.§'!O§.append(_loc4_);
            this.§+B§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§3R§.fixed = true;
         this.§+B§.fixed = true;
         this.§[P§ = true;
      }
      
      private function §[!^§(param1:Context3D) : Boolean
      {
         if(!this.§[P§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §""C§();
         }
         var _loc2_:int = this.§'!O§.§[">§ / 4;
         if(this.§6"=§)
         {
            this.§6"=§.dispose();
         }
         if(this.§ !"§)
         {
            this.§ !"§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§=!f§)
         {
            this.§=!f§.dispose();
         }
         this.§6"=§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§""A§);
         this.§6"=§.uploadFromByteArray(this.§'!O§.§3"8§,0,0,_loc2_ * 4);
         this.§ !"§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§5m§);
         this.§ !"§.uploadFromVector(this.§'!O§.§2!l§,0,_loc2_ * 4);
         this.§7!3§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§%d§);
         this.§7!3§.uploadFromVector(this.§'!O§.§7'§,0,_loc2_ * 4);
         this.§=!f§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=!f§.uploadFromVector(this.§+B§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§?!H§ != 0)
         {
            this.§&!J§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§&!J§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §]!U§(param1);
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
      
      public function §;";§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§0!!§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§[R§ = param1;
      }
      
      private function §0!!§(param1:Matrix3D) : void
      {
         var _loc4_:§;!`§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§;!`§ = null;
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
         if(isNaN(this.§[R§) || this.§[R§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§[R§;
         this.§[R§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§`"F§)
         {
            if((_loc4_ = this.§3R§[_loc3_]).§+V§ < _loc4_.§#F§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§`"F§ - 1)
               {
                  _loc11_ = this.§3R§[this.§`"F§ - 1];
                  this.§3R§[this.§`"F§ - 1] = _loc4_;
                  this.§3R§[_loc3_] = _loc11_;
               }
               --this.§`"F§;
            }
         }
         if(this.§&!J§ > 0)
         {
            _loc12_ = 1 / this.§?!H§;
            this.§6N§ += _loc2_;
            while(this.§6N§ > 0)
            {
               if(this.§`"F§ == this.§!l§)
               {
                  this.§,!1§(this.§!l§);
               }
               _loc4_ = this.§3R§[this.§`"F§++] as §;!`§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6N§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§ !f§))
               {
                  _loc13_ = _loc12_ * (1 - this.§ !f§ + Math.random() * this.§ !f§ * 2) + this.§"8§;
               }
               this.§"8§ += _loc12_ - _loc13_;
               this.§6N§ -= _loc13_;
            }
            if(this.§&!J§ != Number.MAX_VALUE)
            {
               this.§&!J§ = Math.max(0,this.§&!J§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§2-§.width;
         var _loc9_:Number = this.§2-§.height;
         this.§4§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§"!$§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§`"F§)
            {
               _loc6_ = (_loc4_ = this.§3R§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§>!M§[_loc14_ * 3];
               _loc17_ = this.§>!M§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§^!e§.§`?§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §^!e§.§`?§.§8!0§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§4§;
                  this.§'!O§.§9!9§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§'!O§.§'&§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§'!O§.§'&§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§'!O§.§'&§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§'!O§.§'&§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§'!O§.§'&§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§'!O§.§'&§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§'!O§.§'&§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§'!O§.§'&§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §"!$§(param1:Matrix3D) : void
      {
         var _loc3_:§;!`§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`"F§)
         {
            _loc3_ = this.§3R§[_loc2_];
            this.§"3§[_loc2_ * 3] = _loc3_.x;
            this.§"3§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"3§,this.§>!M§);
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         this.§0!!§(param1.§^s§);
         if(this.§4§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §,Q§.§8i§(param2 != 1,this.§2-§.mipMapping,false,this.§'"5§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§"!G§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§<!l§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§;!c§ != this.§+!0§)
         {
            this.§,!1§(0);
            this.§+!0§ = param1.§;!c§;
         }
         if(!this.§[!^§(_loc4_))
         {
            this.§ !"§.uploadFromVector(this.§'!O§.§2!l§,0,this.§4§ * 4);
            this.§7!3§.uploadFromVector(this.§'!O§.§7'§,0,this.§4§ * 4);
         }
         _loc4_.setBlendFactors(this.§&!d§,this.§'!c§);
         _loc4_.setProgram(§^!e§.§`?§.§ §(_loc3_));
         _loc4_.setTextureAt(0,this.§2-§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§7!3§,§6!r§.§^A§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§6"=§,§6!r§.§8!d§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§ !"§,§6!r§.§%§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^s§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§=!f§,0,this.§4§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §6!^§() : Boolean
      {
         return false;
      }
      
      public function get §!l§() : int
      {
         return this.§'!O§.§[">§ / 4;
      }
      
      public function get §?!D§() : int
      {
         return this.§`"F§;
      }
      
      public function get §^""§() : Number
      {
         return this.§?!H§;
      }
      
      public function set §^""§(param1:Number) : void
      {
         this.§?!H§ = param1;
      }
      
      public function get §8!;§() : Number
      {
         return this.§%"D§;
      }
      
      public function set §8!;§(param1:Number) : void
      {
         this.§%"D§ = param1;
      }
      
      public function get §"!%§() : Number
      {
         return this.§9!J§;
      }
      
      public function set §"!%§(param1:Number) : void
      {
         this.§9!J§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§2-§;
      }
   }
}
