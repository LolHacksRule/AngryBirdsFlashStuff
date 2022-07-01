package §="6§
{
   import §0P§.§!!l§;
   import §0P§.§,N§;
   import §0P§.§1!O§;
   import §1!8§.§#W§;
   import §1!Y§.DisplayObject;
   import §<;§.§3_§;
   import §=v§.§+r§;
   import §^i§.Texture;
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
   
   public class §5!u§ extends DisplayObject implements §#W§
   {
       
      
      private var §2S§:Texture;
      
      private var §>$§:Vector.<§#]§>;
      
      private var §&y§:Number;
      
      private var §"!b§:Vector.<Number>;
      
      private var §+F§:Vector.<Number>;
      
      private var §#!I§:§+r§;
      
      private var § O§:VertexBuffer3D;
      
      private var §&"2§:VertexBuffer3D;
      
      private var §[!s§:VertexBuffer3D;
      
      private var §&[§:Vector.<uint>;
      
      private var §+!Z§:IndexBuffer3D;
      
      private var §00§:int;
      
      private var §4D§:int;
      
      private var §&F§:Number;
      
      protected var §4"'§:Number;
      
      private var §@!=§:Number = 0.0;
      
      private var §]!^§:Number;
      
      protected var §]!d§:Number;
      
      protected var §3G§:Number;
      
      protected var §>h§:Boolean;
      
      protected var §-!S§:String;
      
      protected var §+!Y§:String;
      
      protected var §&!k§:String;
      
      private var §9!B§:int = -1;
      
      private var § !o§:Boolean = false;
      
      private var §+K§:Number = 0.0;
      
      public function §5!u§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§2S§ = param1;
         this.§>h§ = param1.premultipliedAlpha;
         this.§>$§ = new Vector.<§#]§>(0,false);
         this.§"!b§ = new Vector.<Number>();
         this.§+F§ = new Vector.<Number>();
         this.§#!I§ = new §+r§(0,this.§>h§);
         this.§&[§ = new Vector.<uint>(0);
         this.§&F§ = param2;
         this.§]!^§ = 0;
         this.§&y§ = 0;
         this.§3G§ = 0;
         this.§]!d§ = 0;
         this.§+!Y§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-!S§ = param4 || (!!this.§>h§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§'!4§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§ O§)
         {
            this.§ O§.dispose();
         }
         if(this.§&"2§)
         {
            this.§&"2§.dispose();
         }
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
         }
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
         }
         this.§"!b§ = null;
         this.§+F§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §#]§
      {
         return new §#]§();
      }
      
      protected function initParticle(param1:§#]§) : void
      {
         param1.x = this.§]!d§;
         param1.y = this.§3G§;
         param1.§ !H§ = 0;
         param1.§=!g§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§#]§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§ !H§ / param1.§=!g§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§ !H§ += param2;
      }
      
      private function §'!4§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§+u§;
         var _loc3_:int = this.§+u§ + param1;
         var _loc4_:§+r§;
         (_loc4_ = new §+r§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§2S§.adjustVertexData(_loc4_,0,4);
         this.§>$§.fixed = false;
         this.§&[§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§>$§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"!b§.push(0);
               this.§+F§.push(0);
               _loc7_++;
            }
            this.§#!I§.append(_loc4_);
            this.§&[§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§>$§.fixed = true;
         this.§&[§.fixed = true;
         this.§ !o§ = true;
      }
      
      private function §6!+§(param1:Context3D) : Boolean
      {
         if(!this.§ !o§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §3_§();
         }
         var _loc2_:int = this.§#!I§.§34§ / 4;
         if(this.§ O§)
         {
            this.§ O§.dispose();
         }
         if(this.§&"2§)
         {
            this.§&"2§.dispose();
         }
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
         }
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
         }
         this.§ O§ = param1.createVertexBuffer(_loc2_ * 4,§+r§.§;!H§);
         this.§ O§.uploadFromByteArray(this.§#!I§.§9!i§,0,0,_loc2_ * 4);
         this.§&"2§ = param1.createVertexBuffer(_loc2_ * 4,§+r§.§6!Q§);
         this.§&"2§.uploadFromVector(this.§#!I§.§2!'§,0,_loc2_ * 4);
         this.§[!s§ = param1.createVertexBuffer(_loc2_ * 4,§+r§.§7!X§);
         this.§[!s§.uploadFromVector(this.§#!I§.§1!"§,0,_loc2_ * 4);
         this.§+!Z§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§+!Z§.uploadFromVector(this.§&[§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§&F§ != 0)
         {
            this.§]!^§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§]!^§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §2![§(param1);
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
      
      public function §^5§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§6!U§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§+K§ = param1;
      }
      
      private function §6!U§(param1:Matrix3D) : void
      {
         var _loc4_:§#]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§#]§ = null;
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
         if(isNaN(this.§+K§) || this.§+K§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§+K§;
         this.§+K§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§00§)
         {
            if((_loc4_ = this.§>$§[_loc3_]).§ !H§ < _loc4_.§=!g§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§00§ - 1)
               {
                  _loc11_ = this.§>$§[this.§00§ - 1];
                  this.§>$§[this.§00§ - 1] = _loc4_;
                  this.§>$§[_loc3_] = _loc11_;
               }
               --this.§00§;
            }
         }
         if(this.§]!^§ > 0)
         {
            _loc12_ = 1 / this.§&F§;
            this.§&y§ += _loc2_;
            while(this.§&y§ > 0)
            {
               if(this.§00§ == this.§+u§)
               {
                  this.§'!4§(this.§+u§);
               }
               _loc4_ = this.§>$§[this.§00§++] as §#]§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§&y§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§4"'§))
               {
                  _loc13_ = _loc12_ * (1 - this.§4"'§ + Math.random() * this.§4"'§ * 2) + this.§@!=§;
               }
               this.§@!=§ += _loc12_ - _loc13_;
               this.§&y§ -= _loc13_;
            }
            if(this.§]!^§ != Number.MAX_VALUE)
            {
               this.§]!^§ = Math.max(0,this.§]!^§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§2S§.width;
         var _loc9_:Number = this.§2S§.height;
         this.§4D§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§8",§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§00§)
            {
               _loc6_ = (_loc4_ = this.§>$§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§+F§[_loc14_ * 3];
               _loc17_ = this.§+F§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§!!l§.§`7§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §!!l§.§`7§.final;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§4D§;
                  this.§#!I§.§ !1§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§#!I§.§]"$§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§#!I§.§]"$§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§#!I§.§]"$§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§#!I§.§]"$§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§#!I§.§]"$§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§#!I§.§]"$§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§#!I§.§]"$§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§#!I§.§]"$§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §8",§(param1:Matrix3D) : void
      {
         var _loc3_:§#]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§00§)
         {
            _loc3_ = this.§>$§[_loc2_];
            this.§"!b§[_loc2_ * 3] = _loc3_.x;
            this.§"!b§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"!b§,this.§+F§);
      }
      
      override public function render(param1:§1!O§, param2:Number) : void
      {
         this.§6!U§(param1.§??§);
         if(this.§4D§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §,N§.§1q§(param2 != 1,this.§2S§.mipMapping,false,this.§&!k§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§4_§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§>h§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§]8§ != this.§9!B§)
         {
            this.§'!4§(0);
            this.§9!B§ = param1.§]8§;
         }
         if(!this.§6!+§(_loc4_))
         {
            this.§&"2§.uploadFromVector(this.§#!I§.§2!'§,0,this.§4D§ * 4);
            this.§[!s§.uploadFromVector(this.§#!I§.§1!"§,0,this.§4D§ * 4);
         }
         _loc4_.setBlendFactors(this.§-!S§,this.§+!Y§);
         _loc4_.setProgram(§!!l§.§`7§.§+§(_loc3_));
         _loc4_.setTextureAt(0,this.§2S§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§[!s§,§+r§.§%"!§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§ O§,§+r§.§@#§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§&"2§,§+r§.§"!H§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§??§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§+!Z§,0,this.§4D§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §+w§() : Boolean
      {
         return false;
      }
      
      public function get §+u§() : int
      {
         return this.§#!I§.§34§ / 4;
      }
      
      public function get §,;§() : int
      {
         return this.§00§;
      }
      
      public function get §'!_§() : Number
      {
         return this.§&F§;
      }
      
      public function set §'!_§(param1:Number) : void
      {
         this.§&F§ = param1;
      }
      
      public function get §-Q§() : Number
      {
         return this.§]!d§;
      }
      
      public function set §-Q§(param1:Number) : void
      {
         this.§]!d§ = param1;
      }
      
      public function get §4"8§() : Number
      {
         return this.§3G§;
      }
      
      public function set §4"8§(param1:Number) : void
      {
         this.§3G§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§2S§;
      }
   }
}
