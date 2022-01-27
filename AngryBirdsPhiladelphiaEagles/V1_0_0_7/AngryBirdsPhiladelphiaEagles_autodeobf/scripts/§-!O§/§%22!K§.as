package §-!O§
{
   import §"`§.Texture;
   import §#!5§.§case §;
   import §+!$§.§ !H§;
   import §4G§.DisplayObject;
   import §8H§.§=b§;
   import §>w§.§"!,§;
   import §>w§.;
   import §>w§.§[C§;
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
   
   public class §"!K§ extends DisplayObject implements §=b§
   {
       
      
      private var §>a§:Texture;
      
      private var §9m§:Vector.<§2P§>;
      
      private var §4!#§:Number;
      
      private var §8!J§:Vector.<Number>;
      
      private var §'T§:Vector.<Number>;
      
      private var §=i§:§case §;
      
      private var §!!K§:VertexBuffer3D;
      
      private var §9j§:VertexBuffer3D;
      
      private var §@R§:VertexBuffer3D;
      
      private var §^!0§:Vector.<uint>;
      
      private var §%C§:IndexBuffer3D;
      
      private var §8u§:int;
      
      private var §1#§:int;
      
      private var §;!3§:Number;
      
      protected var §`<§:Number;
      
      private var §9y§:Number = 0.0;
      
      private var §-^§:Number;
      
      protected var §=+§:Number;
      
      protected var §?U§:Number;
      
      protected var §-!J§:Boolean;
      
      protected var §8!'§:String;
      
      protected var §"!3§:String;
      
      protected var §`x§:String;
      
      private var §4Z§:int = -1;
      
      private var §9Q§:Boolean = false;
      
      private var §-!<§:Number = 0.0;
      
      public function §"!K§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§>a§ = param1;
         this.§-!J§ = param1.premultipliedAlpha;
         this.§9m§ = new Vector.<§2P§>(0,false);
         this.§8!J§ = new Vector.<Number>();
         this.§'T§ = new Vector.<Number>();
         this.§=i§ = new §case §(0,this.§-!J§);
         this.§^!0§ = new Vector.<uint>(0);
         this.§;!3§ = param2;
         this.§-^§ = 0;
         this.§4!#§ = 0;
         this.§?U§ = 0;
         this.§=+§ = 0;
         this.§"!3§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§8!'§ = param4 || (!!this.§-!J§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§1!4§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!!K§)
         {
            this.§!!K§.dispose();
         }
         if(this.§9j§)
         {
            this.§9j§.dispose();
         }
         if(this.§@R§)
         {
            this.§@R§.dispose();
         }
         if(this.§%C§)
         {
            this.§%C§.dispose();
         }
         this.§8!J§ = null;
         this.§'T§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §2P§
      {
         return new §2P§();
      }
      
      protected function initParticle(param1:§2P§) : void
      {
         param1.x = this.§=+§;
         param1.y = this.§?U§;
         param1.§=@§ = 0;
         param1.§7z§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§2P§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§=@§ / param1.§7z§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§=@§ += param2;
      }
      
      private function §1!4§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§1i§;
         var _loc3_:int = this.§1i§ + param1;
         var _loc4_:§case §;
         (_loc4_ = new §case §(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§>a§.adjustVertexData(_loc4_,0,4);
         this.§9m§.fixed = false;
         this.§^!0§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§9m§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§8!J§.push(0);
               this.§'T§.push(0);
               _loc7_++;
            }
            this.§=i§.append(_loc4_);
            this.§^!0§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§9m§.fixed = true;
         this.§^!0§.fixed = true;
         this.§9Q§ = true;
      }
      
      private function §2!§(param1:Context3D) : Boolean
      {
         if(!this.§9Q§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new § !H§();
         }
         var _loc2_:int = this.§=i§.§^q§ / 4;
         if(this.§!!K§)
         {
            this.§!!K§.dispose();
         }
         if(this.§9j§)
         {
            this.§9j§.dispose();
         }
         if(this.§@R§)
         {
            this.§@R§.dispose();
         }
         if(this.§%C§)
         {
            this.§%C§.dispose();
         }
         this.§!!K§ = param1.createVertexBuffer(_loc2_ * 4,§case §.§+'§);
         this.§!!K§.uploadFromByteArray(this.§=i§.§<Z§,0,0,_loc2_ * 4);
         this.§9j§ = param1.createVertexBuffer(_loc2_ * 4,§case §.§5!>§);
         this.§9j§.uploadFromVector(this.§=i§.§]!2§,0,_loc2_ * 4);
         this.§@R§ = param1.createVertexBuffer(_loc2_ * 4,§case §.§2f§);
         this.§@R§.uploadFromVector(this.§=i§.§,!!§,0,_loc2_ * 4);
         this.§%C§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%C§.uploadFromVector(this.§^!0§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§;!3§ != 0)
         {
            this.§-^§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-^§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §2Y§(param1);
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
      
      public function §5!§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§0j§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§-!<§ = param1;
      }
      
      private function §0j§(param1:Matrix3D) : void
      {
         var _loc4_:§2P§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§2P§ = null;
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
         if(isNaN(this.§-!<§) || this.§-!<§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§-!<§;
         this.§-!<§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§8u§)
         {
            if((_loc4_ = this.§9m§[_loc3_]).§=@§ < _loc4_.§7z§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§8u§ - 1)
               {
                  _loc11_ = this.§9m§[this.§8u§ - 1];
                  this.§9m§[this.§8u§ - 1] = _loc4_;
                  this.§9m§[_loc3_] = _loc11_;
               }
               --this.§8u§;
            }
         }
         if(this.§-^§ > 0)
         {
            _loc12_ = 1 / this.§;!3§;
            this.§4!#§ += _loc2_;
            while(this.§4!#§ > 0)
            {
               if(this.§8u§ == this.§1i§)
               {
                  this.§1!4§(this.§1i§);
               }
               _loc4_ = this.§9m§[this.§8u§++] as §2P§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§4!#§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§`<§))
               {
                  _loc13_ = _loc12_ * (1 - this.§`<§ + Math.random() * this.§`<§ * 2) + this.§9y§;
               }
               this.§9y§ += _loc12_ - _loc13_;
               this.§4!#§ -= _loc13_;
            }
            if(this.§-^§ != Number.MAX_VALUE)
            {
               this.§-^§ = Math.max(0,this.§-^§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§>a§.width;
         var _loc9_:Number = this.§>a§.height;
         this.§1#§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§2[§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§8u§)
            {
               _loc6_ = (_loc4_ = this.§9m§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§'T§[_loc14_ * 3];
               _loc17_ = this.§'T§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§#0§.§#4§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §#0§.§#4§.§'!N§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§1#§;
                  this.§=i§.§^%§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§=i§.§6!L§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§=i§.§6!L§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§=i§.§6!L§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§=i§.§6!L§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§=i§.§6!L§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§=i§.§6!L§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§=i§.§6!L§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§=i§.§6!L§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §2[§(param1:Matrix3D) : void
      {
         var _loc3_:§2P§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§8u§)
         {
            _loc3_ = this.§9m§[_loc2_];
            this.§8!J§[_loc2_ * 3] = _loc3_.x;
            this.§8!J§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§8!J§,this.§'T§);
      }
      
      override public function render(param1:§"!,§, param2:Number) : void
      {
         this.§0j§(param1.§&R§);
         if(this.§1#§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §[C§.§ !3§(param2 != 1,this.§>a§.mipMapping,false,this.§`x§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§2N§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§-!J§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§-!=§ != this.§4Z§)
         {
            this.§1!4§(0);
            this.§4Z§ = param1.§-!=§;
         }
         if(!this.§2!§(_loc4_))
         {
            this.§9j§.uploadFromVector(this.§=i§.§]!2§,0,this.§1#§ * 4);
            this.§@R§.uploadFromVector(this.§=i§.§,!!§,0,this.§1#§ * 4);
         }
         _loc4_.setBlendFactors(this.§8!'§,this.§"!3§);
         _loc4_.setProgram(§#0§.§#4§.§ x§(_loc3_));
         _loc4_.setTextureAt(0,this.§>a§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§@R§,§case §.§=N§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§!!K§,§case §.§2V§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§9j§,§case §.§6?§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&R§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§%C§,0,this.§1#§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §1@§() : Boolean
      {
         return false;
      }
      
      public function get §1i§() : int
      {
         return this.§=i§.§^q§ / 4;
      }
      
      public function get § !&§() : int
      {
         return this.§8u§;
      }
      
      public function get §>i§() : Number
      {
         return this.§;!3§;
      }
      
      public function set §>i§(param1:Number) : void
      {
         this.§;!3§ = param1;
      }
      
      public function get §+!E§() : Number
      {
         return this.§=+§;
      }
      
      public function set §+!E§(param1:Number) : void
      {
         this.§=+§ = param1;
      }
      
      public function get §4!;§() : Number
      {
         return this.§?U§;
      }
      
      public function set §4!;§(param1:Number) : void
      {
         this.§?U§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§>a§;
      }
   }
}
