package §5j§
{
   import § F§.§&U§;
   import § F§.§,!>§;
   import § F§.§3!&§;
   import §+!S§.Texture;
   import §,!Q§.DisplayObject;
   import §;S§.§2w§;
   import §<_§.§?!0§;
   import §?!Z§.§4k§;
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
   
   public class §30§ extends DisplayObject implements §?!0§
   {
       
      
      private var §3!"§:Texture;
      
      private var §=!-§:Vector.<§?a§>;
      
      private var §+G§:Number;
      
      private var §"$§:Vector.<Number>;
      
      private var §7!6§:Vector.<Number>;
      
      private var §-!@§:§4k§;
      
      private var §]!0§:VertexBuffer3D;
      
      private var §9d§:VertexBuffer3D;
      
      private var §;]§:VertexBuffer3D;
      
      private var §?4§:Vector.<uint>;
      
      private var §5n§:IndexBuffer3D;
      
      private var §"S§:int;
      
      private var §%!%§:int;
      
      private var §8!2§:Number;
      
      protected var §;>§:Number;
      
      private var §default§:Number = 0.0;
      
      private var §20§:Number;
      
      protected var §^!T§:Number;
      
      protected var §]!I§:Number;
      
      protected var dynamic:Boolean;
      
      protected var §&!B§:String;
      
      protected var §0!I§:String;
      
      protected var §=!F§:String;
      
      private var §[S§:int = -1;
      
      private var §>!@§:Boolean = false;
      
      private var §71§:Number = 0.0;
      
      public function §30§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§3!"§ = param1;
         this.dynamic = param1.premultipliedAlpha;
         this.§=!-§ = new Vector.<§?a§>(0,false);
         this.§"$§ = new Vector.<Number>();
         this.§7!6§ = new Vector.<Number>();
         this.§-!@§ = new §4k§(0,this.dynamic);
         this.§?4§ = new Vector.<uint>(0);
         this.§8!2§ = param2;
         this.§20§ = 0;
         this.§+G§ = 0;
         this.§]!I§ = 0;
         this.§^!T§ = 0;
         this.§0!I§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§&!B§ = param4 || (!!this.dynamic ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§00§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§]!0§)
         {
            this.§]!0§.dispose();
         }
         if(this.§9d§)
         {
            this.§9d§.dispose();
         }
         if(this.§;]§)
         {
            this.§;]§.dispose();
         }
         if(this.§5n§)
         {
            this.§5n§.dispose();
         }
         this.§"$§ = null;
         this.§7!6§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §?a§
      {
         return new §?a§();
      }
      
      protected function initParticle(param1:§?a§) : void
      {
         param1.x = this.§^!T§;
         param1.y = this.§]!I§;
         param1.§=K§ = 0;
         param1.§,d§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§?a§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§=K§ / param1.§,d§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§=K§ += param2;
      }
      
      private function §00§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§=q§;
         var _loc3_:int = this.§=q§ + param1;
         var _loc4_:§4k§;
         (_loc4_ = new §4k§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§3!"§.adjustVertexData(_loc4_,0,4);
         this.§=!-§.fixed = false;
         this.§?4§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§=!-§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"$§.push(0);
               this.§7!6§.push(0);
               _loc7_++;
            }
            this.§-!@§.append(_loc4_);
            this.§?4§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§=!-§.fixed = true;
         this.§?4§.fixed = true;
         this.§>!@§ = true;
      }
      
      private function §7!4§(param1:Context3D) : Boolean
      {
         if(!this.§>!@§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2w§();
         }
         var _loc2_:int = this.§-!@§.§'3§ / 4;
         if(this.§]!0§)
         {
            this.§]!0§.dispose();
         }
         if(this.§9d§)
         {
            this.§9d§.dispose();
         }
         if(this.§;]§)
         {
            this.§;]§.dispose();
         }
         if(this.§5n§)
         {
            this.§5n§.dispose();
         }
         this.§]!0§ = param1.createVertexBuffer(_loc2_ * 4,§4k§.§0!;§);
         this.§]!0§.uploadFromByteArray(this.§-!@§.§+!F§,0,0,_loc2_ * 4);
         this.§9d§ = param1.createVertexBuffer(_loc2_ * 4,§4k§.§4!'§);
         this.§9d§.uploadFromVector(this.§-!@§.§ x§,0,_loc2_ * 4);
         this.§;]§ = param1.createVertexBuffer(_loc2_ * 4,§4k§.§+!"§);
         this.§;]§.uploadFromVector(this.§-!@§.§%<§,0,_loc2_ * 4);
         this.§5n§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5n§.uploadFromVector(this.§?4§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§8!2§ != 0)
         {
            this.§20§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§20§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = § !K§(param1);
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
      
      public function §6Z§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§%!D§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§71§ = param1;
      }
      
      private function §%!D§(param1:Matrix3D) : void
      {
         var _loc4_:§?a§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§?a§ = null;
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
         if(isNaN(this.§71§) || this.§71§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§71§;
         this.§71§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§"S§)
         {
            if((_loc4_ = this.§=!-§[_loc3_]).§=K§ < _loc4_.§,d§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§"S§ - 1)
               {
                  _loc11_ = this.§=!-§[this.§"S§ - 1];
                  this.§=!-§[this.§"S§ - 1] = _loc4_;
                  this.§=!-§[_loc3_] = _loc11_;
               }
               --this.§"S§;
            }
         }
         if(this.§20§ > 0)
         {
            _loc12_ = 1 / this.§8!2§;
            this.§+G§ += _loc2_;
            while(this.§+G§ > 0)
            {
               if(this.§"S§ == this.§=q§)
               {
                  this.§00§(this.§=q§);
               }
               _loc4_ = this.§=!-§[this.§"S§++] as §?a§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§+G§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§;>§))
               {
                  _loc13_ = _loc12_ * (1 - this.§;>§ + Math.random() * this.§;>§ * 2) + this.§default§;
               }
               this.§default§ += _loc12_ - _loc13_;
               this.§+G§ -= _loc13_;
            }
            if(this.§20§ != Number.MAX_VALUE)
            {
               this.§20§ = Math.max(0,this.§20§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§3!"§.width;
         var _loc9_:Number = this.§3!"§.height;
         this.§%!%§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§5K§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§"S§)
            {
               _loc6_ = (_loc4_ = this.§=!-§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§7!6§[_loc14_ * 3];
               _loc17_ = this.§7!6§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§3!&§.§<1§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §3!&§.§<1§.§ true§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§%!%§;
                  this.§-!@§.§for §(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§-!@§.§%,§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§-!@§.§%,§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§-!@§.§%,§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§-!@§.§%,§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§-!@§.§%,§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§-!@§.§%,§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§-!@§.§%,§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§-!@§.§%,§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §5K§(param1:Matrix3D) : void
      {
         var _loc3_:§?a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"S§)
         {
            _loc3_ = this.§=!-§[_loc2_];
            this.§"$§[_loc2_ * 3] = _loc3_.x;
            this.§"$§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"$§,this.§7!6§);
      }
      
      override public function render(param1:§,!>§, param2:Number) : void
      {
         this.§%!D§(param1.§0G§);
         if(this.§%!%§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §&U§.§'!W§(param2 != 1,this.§3!"§.mipMapping,false,this.§=!F§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§7!"§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.dynamic ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§`#§ != this.§[S§)
         {
            this.§00§(0);
            this.§[S§ = param1.§`#§;
         }
         if(!this.§7!4§(_loc4_))
         {
            this.§9d§.uploadFromVector(this.§-!@§.§ x§,0,this.§%!%§ * 4);
            this.§;]§.uploadFromVector(this.§-!@§.§%<§,0,this.§%!%§ * 4);
         }
         _loc4_.setBlendFactors(this.§&!B§,this.§0!I§);
         _loc4_.setProgram(§3!&§.§<1§.§#!6§(_loc3_));
         _loc4_.setTextureAt(0,this.§3!"§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§;]§,§4k§.§>!_§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§]!0§,§4k§.§#i§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§9d§,§4k§.§2$§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§0G§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§5n§,0,this.§%!%§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §]!H§() : Boolean
      {
         return false;
      }
      
      public function get §=q§() : int
      {
         return this.§-!@§.§'3§ / 4;
      }
      
      public function get §5!9§() : int
      {
         return this.§"S§;
      }
      
      public function get §;^§() : Number
      {
         return this.§8!2§;
      }
      
      public function set §;^§(param1:Number) : void
      {
         this.§8!2§ = param1;
      }
      
      public function get §+!Z§() : Number
      {
         return this.§^!T§;
      }
      
      public function set §+!Z§(param1:Number) : void
      {
         this.§^!T§ = param1;
      }
      
      public function get §>!P§() : Number
      {
         return this.§]!I§;
      }
      
      public function set §>!P§(param1:Number) : void
      {
         this.§]!I§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§3!"§;
      }
   }
}
