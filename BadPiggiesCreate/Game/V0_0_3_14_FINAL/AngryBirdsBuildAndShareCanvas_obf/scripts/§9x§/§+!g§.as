package §9x§
{
   import §+!Y§.§7!@§;
   import §2!F§.§0M§;
   import §3W§.§>!-§;
   import §6p§.§5!W§;
   import §6p§.§50§;
   import §6p§.§?%§;
   import §7R§.Texture;
   import §default§.DisplayObject;
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
   
   public class §+!g§ extends DisplayObject implements §7!@§
   {
       
      
      private var §+!m§:Texture;
      
      private var §^!r§:Vector.<§>>§>;
      
      private var §&"<§:Number;
      
      private var §8!U§:Vector.<Number>;
      
      private var §%`§:Vector.<Number>;
      
      private var §8!m§:§>!-§;
      
      private var §="<§:VertexBuffer3D;
      
      private var §[!n§:VertexBuffer3D;
      
      private var §^">§:VertexBuffer3D;
      
      private var §,!T§:Vector.<uint>;
      
      private var §?!U§:IndexBuffer3D;
      
      private var §^R§:int;
      
      private var §]2§:int;
      
      private var §2C§:Number;
      
      protected var §5!#§:Number;
      
      private var §%v§:Number = 0.0;
      
      private var §7'§:Number;
      
      protected var § "7§:Number;
      
      protected var §2D§:Number;
      
      protected var §,";§:Boolean;
      
      protected var §'!o§:String;
      
      protected var §%[§:String;
      
      protected var §,!#§:String;
      
      private var §^!!§:int = -1;
      
      private var §?O§:Boolean = false;
      
      private var §^=§:Number = 0.0;
      
      public function §+!g§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§+!m§ = param1;
         this.§,";§ = param1.premultipliedAlpha;
         this.§^!r§ = new Vector.<§>>§>(0,false);
         this.§8!U§ = new Vector.<Number>();
         this.§%`§ = new Vector.<Number>();
         this.§8!m§ = new §>!-§(0,this.§,";§);
         this.§,!T§ = new Vector.<uint>(0);
         this.§2C§ = param2;
         this.§7'§ = 0;
         this.§&"<§ = 0;
         this.§2D§ = 0;
         this.§ "7§ = 0;
         this.§%[§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§'!o§ = param4 || (!!this.§,";§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§set §(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§="<§)
         {
            this.§="<§.dispose();
         }
         if(this.§[!n§)
         {
            this.§[!n§.dispose();
         }
         if(this.§^">§)
         {
            this.§^">§.dispose();
         }
         if(this.§?!U§)
         {
            this.§?!U§.dispose();
         }
         this.§8!U§ = null;
         this.§%`§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §>>§
      {
         return new §>>§();
      }
      
      protected function initParticle(param1:§>>§) : void
      {
         param1.x = this.§ "7§;
         param1.y = this.§2D§;
         param1.§@!=§ = 0;
         param1.§!P§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§>>§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§@!=§ / param1.§!P§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§@!=§ += param2;
      }
      
      private function §set §(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§<!G§;
         var _loc3_:int = this.§<!G§ + param1;
         var _loc4_:§>!-§;
         (_loc4_ = new §>!-§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§+!m§.adjustVertexData(_loc4_,0,4);
         this.§^!r§.fixed = false;
         this.§,!T§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§^!r§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§8!U§.push(0);
               this.§%`§.push(0);
               _loc7_++;
            }
            this.§8!m§.append(_loc4_);
            this.§,!T§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§^!r§.fixed = true;
         this.§,!T§.fixed = true;
         this.§?O§ = true;
      }
      
      private function §""&§(param1:Context3D) : Boolean
      {
         if(!this.§?O§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §0M§();
         }
         var _loc2_:int = this.§8!m§.§!>§ / 4;
         if(this.§="<§)
         {
            this.§="<§.dispose();
         }
         if(this.§[!n§)
         {
            this.§[!n§.dispose();
         }
         if(this.§^">§)
         {
            this.§^">§.dispose();
         }
         if(this.§?!U§)
         {
            this.§?!U§.dispose();
         }
         this.§="<§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§@d§);
         this.§="<§.uploadFromByteArray(this.§8!m§.§7L§,0,0,_loc2_ * 4);
         this.§[!n§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§6!S§);
         this.§[!n§.uploadFromVector(this.§8!m§.§[I§,0,_loc2_ * 4);
         this.§^">§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§[e§);
         this.§^">§.uploadFromVector(this.§8!m§.§0!E§,0,_loc2_ * 4);
         this.§?!U§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§?!U§.uploadFromVector(this.§,!T§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§2C§ != 0)
         {
            this.§7'§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§7'§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §5!m§(param1);
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
      
      public function §`!B§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§=1§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§^=§ = param1;
      }
      
      private function §=1§(param1:Matrix3D) : void
      {
         var _loc4_:§>>§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§>>§ = null;
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
         if(isNaN(this.§^=§) || this.§^=§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§^=§;
         this.§^=§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§^R§)
         {
            if((_loc4_ = this.§^!r§[_loc3_]).§@!=§ < _loc4_.§!P§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§^R§ - 1)
               {
                  _loc11_ = this.§^!r§[this.§^R§ - 1];
                  this.§^!r§[this.§^R§ - 1] = _loc4_;
                  this.§^!r§[_loc3_] = _loc11_;
               }
               --this.§^R§;
            }
         }
         if(this.§7'§ > 0)
         {
            _loc12_ = 1 / this.§2C§;
            this.§&"<§ += _loc2_;
            while(this.§&"<§ > 0)
            {
               if(this.§^R§ == this.§<!G§)
               {
                  this.§set §(this.§<!G§);
               }
               _loc4_ = this.§^!r§[this.§^R§++] as §>>§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§&"<§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§5!#§))
               {
                  _loc13_ = _loc12_ * (1 - this.§5!#§ + Math.random() * this.§5!#§ * 2) + this.§%v§;
               }
               this.§%v§ += _loc12_ - _loc13_;
               this.§&"<§ -= _loc13_;
            }
            if(this.§7'§ != Number.MAX_VALUE)
            {
               this.§7'§ = Math.max(0,this.§7'§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§+!m§.width;
         var _loc9_:Number = this.§+!m§.height;
         this.§]2§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§1l§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§^R§)
            {
               _loc6_ = (_loc4_ = this.§^!r§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§%`§[_loc14_ * 3];
               _loc17_ = this.§%`§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§?%§.§%b§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §?%§.§%b§.§ 4§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§]2§;
                  this.§8!m§.§!d§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§8!m§.§9!q§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§8!m§.§9!q§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§8!m§.§9!q§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§8!m§.§9!q§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§8!m§.§9!q§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§8!m§.§9!q§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§8!m§.§9!q§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§8!m§.§9!q§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §1l§(param1:Matrix3D) : void
      {
         var _loc3_:§>>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^R§)
         {
            _loc3_ = this.§^!r§[_loc2_];
            this.§8!U§[_loc2_ * 3] = _loc3_.x;
            this.§8!U§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§8!U§,this.§%`§);
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         this.§=1§(param1.§[!3§);
         if(this.§]2§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §50§.§["3§(param2 != 1,this.§+!m§.mipMapping,false,this.§,!#§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§`-§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§,";§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§%!U§ != this.§^!!§)
         {
            this.§set §(0);
            this.§^!!§ = param1.§%!U§;
         }
         if(!this.§""&§(_loc4_))
         {
            this.§[!n§.uploadFromVector(this.§8!m§.§[I§,0,this.§]2§ * 4);
            this.§^">§.uploadFromVector(this.§8!m§.§0!E§,0,this.§]2§ * 4);
         }
         _loc4_.setBlendFactors(this.§'!o§,this.§%[§);
         _loc4_.setProgram(§?%§.§%b§.§!!t§(_loc3_));
         _loc4_.setTextureAt(0,this.§+!m§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§^">§,§>!-§.§[+§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§="<§,§>!-§.§8A§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§[!n§,§>!-§.§!!^§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§[!3§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§?!U§,0,this.§]2§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §8-§() : Boolean
      {
         return false;
      }
      
      public function get §<!G§() : int
      {
         return this.§8!m§.§!>§ / 4;
      }
      
      public function get §9! §() : int
      {
         return this.§^R§;
      }
      
      public function get §'?§() : Number
      {
         return this.§2C§;
      }
      
      public function set §'?§(param1:Number) : void
      {
         this.§2C§ = param1;
      }
      
      public function get §#!6§() : Number
      {
         return this.§ "7§;
      }
      
      public function set §#!6§(param1:Number) : void
      {
         this.§ "7§ = param1;
      }
      
      public function get §3d§() : Number
      {
         return this.§2D§;
      }
      
      public function set §3d§(param1:Number) : void
      {
         this.§2D§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§+!m§;
      }
   }
}
