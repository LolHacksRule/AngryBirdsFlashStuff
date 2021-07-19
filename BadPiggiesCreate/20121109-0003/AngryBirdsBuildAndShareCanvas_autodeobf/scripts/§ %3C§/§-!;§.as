package § <§
{
   import §"&§.§=q§;
   import §%!j§.§%K§;
   import §%!j§.§&Y§;
   import §%!j§.§,5§;
   import §+!-§.DisplayObject;
   import §0!%§.Texture;
   import §]!R§.§2"2§;
   import §`!=§.§?!X§;
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
   
   public class §-!;§ extends DisplayObject implements §=q§
   {
       
      
      private var §=#§:Texture;
      
      private var §]!r§:Vector.<§#!G§>;
      
      private var §4j§:Number;
      
      private var §9d§:Vector.<Number>;
      
      private var §>1§:Vector.<Number>;
      
      private var §2!b§:§?!X§;
      
      private var §6!7§:VertexBuffer3D;
      
      private var §6S§:VertexBuffer3D;
      
      private var §%I§:VertexBuffer3D;
      
      private var §^!;§:Vector.<uint>;
      
      private var §&Q§:IndexBuffer3D;
      
      private var §-!J§:int;
      
      private var §6!y§:int;
      
      private var §-E§:Number;
      
      protected var §3"6§:Number;
      
      private var §^!s§:Number = 0.0;
      
      private var §9-§:Number;
      
      protected var §9!^§:Number;
      
      protected var §,!^§:Number;
      
      protected var §[!k§:Boolean;
      
      protected var §-!V§:String;
      
      protected var §&!A§:String;
      
      protected var §'"3§:String;
      
      private var §>!!§:int = -1;
      
      private var §8!=§:Boolean = false;
      
      private var § N§:Number = 0.0;
      
      public function §-!;§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§=#§ = param1;
         this.§[!k§ = param1.premultipliedAlpha;
         this.§]!r§ = new Vector.<§#!G§>(0,false);
         this.§9d§ = new Vector.<Number>();
         this.§>1§ = new Vector.<Number>();
         this.§2!b§ = new §?!X§(0,this.§[!k§);
         this.§^!;§ = new Vector.<uint>(0);
         this.§-E§ = param2;
         this.§9-§ = 0;
         this.§4j§ = 0;
         this.§,!^§ = 0;
         this.§9!^§ = 0;
         this.§&!A§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-!V§ = param4 || (!!this.§[!k§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§?-§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§6!7§)
         {
            this.§6!7§.dispose();
         }
         if(this.§6S§)
         {
            this.§6S§.dispose();
         }
         if(this.§%I§)
         {
            this.§%I§.dispose();
         }
         if(this.§&Q§)
         {
            this.§&Q§.dispose();
         }
         this.§9d§ = null;
         this.§>1§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §#!G§
      {
         return new §#!G§();
      }
      
      protected function initParticle(param1:§#!G§) : void
      {
         param1.x = this.§9!^§;
         param1.y = this.§,!^§;
         param1.§=""§ = 0;
         param1.§4!4§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§#!G§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§=""§ / param1.§4!4§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§=""§ += param2;
      }
      
      private function §?-§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§4!A§;
         var _loc3_:int = this.§4!A§ + param1;
         var _loc4_:§?!X§;
         (_loc4_ = new §?!X§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§=#§.adjustVertexData(_loc4_,0,4);
         this.§]!r§.fixed = false;
         this.§^!;§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§]!r§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§9d§.push(0);
               this.§>1§.push(0);
               _loc7_++;
            }
            this.§2!b§.append(_loc4_);
            this.§^!;§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§]!r§.fixed = true;
         this.§^!;§.fixed = true;
         this.§8!=§ = true;
      }
      
      private function §-!D§(param1:Context3D) : Boolean
      {
         if(!this.§8!=§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2"2§();
         }
         var _loc2_:int = this.§2!b§.§8!B§ / 4;
         if(this.§6!7§)
         {
            this.§6!7§.dispose();
         }
         if(this.§6S§)
         {
            this.§6S§.dispose();
         }
         if(this.§%I§)
         {
            this.§%I§.dispose();
         }
         if(this.§&Q§)
         {
            this.§&Q§.dispose();
         }
         this.§6!7§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§5;§);
         this.§6!7§.uploadFromByteArray(this.§2!b§.§3!T§,0,0,_loc2_ * 4);
         this.§6S§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§-p§);
         this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,_loc2_ * 4);
         this.§%I§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§0[§);
         this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,_loc2_ * 4);
         this.§&Q§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§&Q§.uploadFromVector(this.§^!;§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§-E§ != 0)
         {
            this.§9-§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§9-§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §1!%§(param1);
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
      
      public function §6K§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§3_§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§ N§ = param1;
      }
      
      private function §3_§(param1:Matrix3D) : void
      {
         var _loc4_:§#!G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§#!G§ = null;
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
         if(isNaN(this.§ N§) || this.§ N§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§ N§;
         this.§ N§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!J§)
         {
            if((_loc4_ = this.§]!r§[_loc3_]).§=""§ < _loc4_.§4!4§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§-!J§ - 1)
               {
                  _loc11_ = this.§]!r§[this.§-!J§ - 1];
                  this.§]!r§[this.§-!J§ - 1] = _loc4_;
                  this.§]!r§[_loc3_] = _loc11_;
               }
               --this.§-!J§;
            }
         }
         if(this.§9-§ > 0)
         {
            _loc12_ = 1 / this.§-E§;
            this.§4j§ += _loc2_;
            while(this.§4j§ > 0)
            {
               if(this.§-!J§ == this.§4!A§)
               {
                  this.§?-§(this.§4!A§);
               }
               _loc4_ = this.§]!r§[this.§-!J§++] as §#!G§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§4j§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§3"6§))
               {
                  _loc13_ = _loc12_ * (1 - this.§3"6§ + Math.random() * this.§3"6§ * 2) + this.§^!s§;
               }
               this.§^!s§ += _loc12_ - _loc13_;
               this.§4j§ -= _loc13_;
            }
            if(this.§9-§ != Number.MAX_VALUE)
            {
               this.§9-§ = Math.max(0,this.§9-§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§=#§.width;
         var _loc9_:Number = this.§=#§.height;
         this.§6!y§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§"4§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§-!J§)
            {
               _loc6_ = (_loc4_ = this.§]!r§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§>1§[_loc14_ * 3];
               _loc17_ = this.§>1§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§%K§.§`9§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §%K§.§`9§.§+!6§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§6!y§;
                  this.§2!b§.§"!<§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§2!b§.§;![§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§2!b§.§;![§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§2!b§.§;![§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§2!b§.§;![§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§2!b§.§;![§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§2!b§.§;![§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§2!b§.§;![§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§2!b§.§;![§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §"4§(param1:Matrix3D) : void
      {
         var _loc3_:§#!G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!J§)
         {
            _loc3_ = this.§]!r§[_loc2_];
            this.§9d§[_loc2_ * 3] = _loc3_.x;
            this.§9d§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§9d§,this.§>1§);
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         this.§3_§(param1.§'D§);
         if(this.§6!y§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §,5§.§=S§(param2 != 1,this.§=#§.mipMapping,false,this.§'"3§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§-!K§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§[!k§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§ !Z§ != this.§>!!§)
         {
            this.§?-§(0);
            this.§>!!§ = param1.§ !Z§;
         }
         if(!this.§-!D§(_loc4_))
         {
            this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,this.§6!y§ * 4);
            this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,this.§6!y§ * 4);
         }
         _loc4_.setBlendFactors(this.§-!V§,this.§&!A§);
         _loc4_.setProgram(§%K§.§`9§.§^"9§(_loc3_));
         _loc4_.setTextureAt(0,this.§=#§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§%I§,§?!X§.§^!5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§6!7§,§?!X§.§<[§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§6S§,§?!X§.§-!e§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§'D§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§&Q§,0,this.§6!y§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §3r§() : Boolean
      {
         return false;
      }
      
      public function get §4!A§() : int
      {
         return this.§2!b§.§8!B§ / 4;
      }
      
      public function get §20§() : int
      {
         return this.§-!J§;
      }
      
      public function get §+!Y§() : Number
      {
         return this.§-E§;
      }
      
      public function set §+!Y§(param1:Number) : void
      {
         this.§-E§ = param1;
      }
      
      public function get §+D§() : Number
      {
         return this.§9!^§;
      }
      
      public function set §+D§(param1:Number) : void
      {
         this.§9!^§ = param1;
      }
      
      public function get §!Z§() : Number
      {
         return this.§,!^§;
      }
      
      public function set §!Z§(param1:Number) : void
      {
         this.§,!^§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
   }
}
