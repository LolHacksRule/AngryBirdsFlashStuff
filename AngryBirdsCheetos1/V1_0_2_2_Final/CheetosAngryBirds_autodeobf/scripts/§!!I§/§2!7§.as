package §!!I§
{
   import §;! §.§?!T§;
   import §=!S§.§]!G§;
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §`!M§.§ !7§;
   import §`C§.§'!!§;
   import §`C§.§'!N§;
   import §`C§.§9!'§;
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
   
   public class §2!7§ extends DisplayObject implements § !7§
   {
       
      
      private var §if§:Texture;
      
      private var §#r§:Vector.<§^!7§>;
      
      private var §3!=§:Number;
      
      private var §"6§:Vector.<Number>;
      
      private var §;!,§:Vector.<Number>;
      
      private var §6!3§:§?!T§;
      
      private var §+!@§:VertexBuffer3D;
      
      private var §&z§:VertexBuffer3D;
      
      private var §^!B§:VertexBuffer3D;
      
      private var §>w§:Vector.<uint>;
      
      private var §-!>§:IndexBuffer3D;
      
      private var §4k§:int;
      
      private var §"!@§:int;
      
      private var §0w§:Number;
      
      protected var §1G§:Number;
      
      private var §7!7§:Number = 0.0;
      
      private var §5m§:Number;
      
      protected var §`N§:Number;
      
      protected var §2+§:Number;
      
      protected var §'!P§:Boolean;
      
      protected var §0S§:String;
      
      protected var §[! §:String;
      
      protected var §5f§:String;
      
      private var §"!U§:int = -1;
      
      private var §#"§:Boolean = false;
      
      private var §6P§:Number = 0.0;
      
      public function §2!7§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§if§ = param1;
         this.§'!P§ = param1.premultipliedAlpha;
         this.§#r§ = new Vector.<§^!7§>(0,false);
         this.§"6§ = new Vector.<Number>();
         this.§;!,§ = new Vector.<Number>();
         this.§6!3§ = new §?!T§(0,this.§'!P§);
         this.§>w§ = new Vector.<uint>(0);
         this.§0w§ = param2;
         this.§5m§ = 0;
         this.§3!=§ = 0;
         this.§2+§ = 0;
         this.§`N§ = 0;
         this.§[! § = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§0S§ = param4 || (!!this.§'!P§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§@O§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.dispose();
         }
         if(this.§&z§)
         {
            this.§&z§.dispose();
         }
         if(this.§^!B§)
         {
            this.§^!B§.dispose();
         }
         if(this.§-!>§)
         {
            this.§-!>§.dispose();
         }
         this.§"6§ = null;
         this.§;!,§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §^!7§
      {
         return new §^!7§();
      }
      
      protected function initParticle(param1:§^!7§) : void
      {
         param1.x = this.§`N§;
         param1.y = this.§2+§;
         param1.§[m§ = 0;
         param1.§,l§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§^!7§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§[m§ / param1.§,l§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§[m§ += param2;
      }
      
      private function §@O§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§^o§;
         var _loc3_:int = this.§^o§ + param1;
         var _loc4_:§?!T§;
         (_loc4_ = new §?!T§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§if§.adjustVertexData(_loc4_,0,4);
         this.§#r§.fixed = false;
         this.§>w§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§#r§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"6§.push(0);
               this.§;!,§.push(0);
               _loc7_++;
            }
            this.§6!3§.append(_loc4_);
            this.§>w§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§#r§.fixed = true;
         this.§>w§.fixed = true;
         this.§#"§ = true;
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         if(!this.§#"§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §]!G§();
         }
         var _loc2_:int = this.§6!3§.§>"§ / 4;
         if(this.§+!@§)
         {
            this.§+!@§.dispose();
         }
         if(this.§&z§)
         {
            this.§&z§.dispose();
         }
         if(this.§^!B§)
         {
            this.§^!B§.dispose();
         }
         if(this.§-!>§)
         {
            this.§-!>§.dispose();
         }
         this.§+!@§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§@t§);
         this.§+!@§.uploadFromByteArray(this.§6!3§.§8!H§,0,0,_loc2_ * 4);
         this.§&z§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§`2§);
         this.§&z§.uploadFromVector(this.§6!3§.§8l§,0,_loc2_ * 4);
         this.§^!B§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§!!6§);
         this.§^!B§.uploadFromVector(this.§6!3§.§<!9§,0,_loc2_ * 4);
         this.§-!>§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-!>§.uploadFromVector(this.§>w§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§0w§ != 0)
         {
            this.§5m§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§5m§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §=!;§(param1);
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
      
      public function §#N§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§1!S§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§6P§ = param1;
      }
      
      private function §1!S§(param1:Matrix3D) : void
      {
         var _loc4_:§^!7§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§^!7§ = null;
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
         if(isNaN(this.§6P§) || this.§6P§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§6P§;
         this.§6P§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§4k§)
         {
            if((_loc4_ = this.§#r§[_loc3_]).§[m§ < _loc4_.§,l§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§4k§ - 1)
               {
                  _loc11_ = this.§#r§[this.§4k§ - 1];
                  this.§#r§[this.§4k§ - 1] = _loc4_;
                  this.§#r§[_loc3_] = _loc11_;
               }
               --this.§4k§;
            }
         }
         if(this.§5m§ > 0)
         {
            _loc12_ = 1 / this.§0w§;
            this.§3!=§ += _loc2_;
            while(this.§3!=§ > 0)
            {
               if(this.§4k§ == this.§^o§)
               {
                  this.§@O§(this.§^o§);
               }
               _loc4_ = this.§#r§[this.§4k§++] as §^!7§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§3!=§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§1G§))
               {
                  _loc13_ = _loc12_ * (1 - this.§1G§ + Math.random() * this.§1G§ * 2) + this.§7!7§;
               }
               this.§7!7§ += _loc12_ - _loc13_;
               this.§3!=§ -= _loc13_;
            }
            if(this.§5m§ != Number.MAX_VALUE)
            {
               this.§5m§ = Math.max(0,this.§5m§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§if§.width;
         var _loc9_:Number = this.§if§.height;
         this.§"!@§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§4Y§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§4k§)
            {
               _loc6_ = (_loc4_ = this.§#r§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§;!,§[_loc14_ * 3];
               _loc17_ = this.§;!,§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§9!'§.§7!Z§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §9!'§.§7!Z§.§>]§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§"!@§;
                  this.§6!3§.§[!@§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§6!3§.§6#§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§6!3§.§6#§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§6!3§.§6#§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§6!3§.§6#§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§6!3§.§6#§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§6!3§.§6#§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§6!3§.§6#§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§6!3§.§6#§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §4Y§(param1:Matrix3D) : void
      {
         var _loc3_:§^!7§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4k§)
         {
            _loc3_ = this.§#r§[_loc2_];
            this.§"6§[_loc2_ * 3] = _loc3_.x;
            this.§"6§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"6§,this.§;!,§);
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         this.§1!S§(param1.§]!I§);
         if(this.§"!@§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §'!!§.§ !S§(param2 != 1,this.§if§.mipMapping,false,this.§5f§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§+!&§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§'!P§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§6!V§ != this.§"!U§)
         {
            this.§@O§(0);
            this.§"!U§ = param1.§6!V§;
         }
         if(!this.§<!R§(_loc4_))
         {
            this.§&z§.uploadFromVector(this.§6!3§.§8l§,0,this.§"!@§ * 4);
            this.§^!B§.uploadFromVector(this.§6!3§.§<!9§,0,this.§"!@§ * 4);
         }
         _loc4_.setBlendFactors(this.§0S§,this.§[! §);
         _loc4_.setProgram(§9!'§.§7!Z§.§@!O§(_loc3_));
         _loc4_.setTextureAt(0,this.§if§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§^!B§,§?!T§.§94§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+!@§,§?!T§.§0a§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§&z§,§?!T§.§&!E§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§]!I§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§-!>§,0,this.§"!@§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §@@§() : Boolean
      {
         return false;
      }
      
      public function get §^o§() : int
      {
         return this.§6!3§.§>"§ / 4;
      }
      
      public function get §?'§() : int
      {
         return this.§4k§;
      }
      
      public function get §[!W§() : Number
      {
         return this.§0w§;
      }
      
      public function set §[!W§(param1:Number) : void
      {
         this.§0w§ = param1;
      }
      
      public function get §%?§() : Number
      {
         return this.§`N§;
      }
      
      public function set §%?§(param1:Number) : void
      {
         this.§`N§ = param1;
      }
      
      public function get §"§() : Number
      {
         return this.§2+§;
      }
      
      public function set §"§(param1:Number) : void
      {
         this.§2+§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§if§;
      }
   }
}
