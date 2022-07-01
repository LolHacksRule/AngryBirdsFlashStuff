package §+!=§
{
   import §%x§.§^!5§;
   import §0!F§.§0!J§;
   import §0!F§.§3`§;
   import §0!F§.§^d§;
   import §3!U§.Texture;
   import §6!$§.§&!2§;
   import §9!a§.§!$§;
   import §]!2§.DisplayObject;
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
   
   public class §6!e§ extends DisplayObject implements §^!5§
   {
       
      
      private var §=#§:Texture;
      
      private var §9!Y§:Vector.<§^!T§>;
      
      private var §+2§:Number;
      
      private var §"!z§:Vector.<Number>;
      
      private var §=h§:Vector.<Number>;
      
      private var §&f§:§!$§;
      
      private var §09§:VertexBuffer3D;
      
      private var §#f§:VertexBuffer3D;
      
      private var §2!-§:VertexBuffer3D;
      
      private var §&H§:Vector.<uint>;
      
      private var §[!8§:IndexBuffer3D;
      
      private var §-4§:int;
      
      private var §?!h§:int;
      
      private var §4!C§:Number;
      
      protected var §=7§:Number;
      
      private var §;!n§:Number = 0.0;
      
      private var §@!Q§:Number;
      
      protected var §;V§:Number;
      
      protected var § !k§:Number;
      
      protected var §-!;§:Boolean;
      
      protected var §]E§:String;
      
      protected var §8!U§:String;
      
      protected var §!!w§:String;
      
      private var §#!f§:int = -1;
      
      private var §2§:Boolean = false;
      
      private var §3"%§:Number = 0.0;
      
      public function §6!e§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§=#§ = param1;
         this.§-!;§ = param1.premultipliedAlpha;
         this.§9!Y§ = new Vector.<§^!T§>(0,false);
         this.§"!z§ = new Vector.<Number>();
         this.§=h§ = new Vector.<Number>();
         this.§&f§ = new §!$§(0,this.§-!;§);
         this.§&H§ = new Vector.<uint>(0);
         this.§4!C§ = param2;
         this.§@!Q§ = 0;
         this.§+2§ = 0;
         this.§ !k§ = 0;
         this.§;V§ = 0;
         this.§8!U§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§]E§ = param4 || (!!this.§-!;§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§4!w§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§09§)
         {
            this.§09§.dispose();
         }
         if(this.§#f§)
         {
            this.§#f§.dispose();
         }
         if(this.§2!-§)
         {
            this.§2!-§.dispose();
         }
         if(this.§[!8§)
         {
            this.§[!8§.dispose();
         }
         this.§"!z§ = null;
         this.§=h§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §^!T§
      {
         return new §^!T§();
      }
      
      protected function initParticle(param1:§^!T§) : void
      {
         param1.x = this.§;V§;
         param1.y = this.§ !k§;
         param1.§'7§ = 0;
         param1.§@P§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§^!T§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§'7§ / param1.§@P§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§'7§ += param2;
      }
      
      private function §4!w§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§9#§;
         var _loc3_:int = this.§9#§ + param1;
         var _loc4_:§!$§;
         (_loc4_ = new §!$§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§=#§.adjustVertexData(_loc4_,0,4);
         this.§9!Y§.fixed = false;
         this.§&H§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§9!Y§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"!z§.push(0);
               this.§=h§.push(0);
               _loc7_++;
            }
            this.§&f§.append(_loc4_);
            this.§&H§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§9!Y§.fixed = true;
         this.§&H§.fixed = true;
         this.§2§ = true;
      }
      
      private function §-"§(param1:Context3D) : Boolean
      {
         if(!this.§2§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&!2§();
         }
         var _loc2_:int = this.§&f§.§!!d§ / 4;
         if(this.§09§)
         {
            this.§09§.dispose();
         }
         if(this.§#f§)
         {
            this.§#f§.dispose();
         }
         if(this.§2!-§)
         {
            this.§2!-§.dispose();
         }
         if(this.§[!8§)
         {
            this.§[!8§.dispose();
         }
         this.§09§ = param1.createVertexBuffer(_loc2_ * 4,§!$§.§<I§);
         this.§09§.uploadFromByteArray(this.§&f§.§'!M§,0,0,_loc2_ * 4);
         this.§#f§ = param1.createVertexBuffer(_loc2_ * 4,§!$§.§1!^§);
         this.§#f§.uploadFromVector(this.§&f§.§,&§,0,_loc2_ * 4);
         this.§2!-§ = param1.createVertexBuffer(_loc2_ * 4,§!$§.§"n§);
         this.§2!-§.uploadFromVector(this.§&f§.§2!E§,0,_loc2_ * 4);
         this.§[!8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§[!8§.uploadFromVector(this.§&H§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§4!C§ != 0)
         {
            this.§@!Q§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§@!Q§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §'!b§(param1);
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
      
      public function §;!p§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§2"$§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§3"%§ = param1;
      }
      
      private function §2"$§(param1:Matrix3D) : void
      {
         var _loc4_:§^!T§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§^!T§ = null;
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
         if(isNaN(this.§3"%§) || this.§3"%§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§3"%§;
         this.§3"%§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§-4§)
         {
            if((_loc4_ = this.§9!Y§[_loc3_]).§'7§ < _loc4_.§@P§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§-4§ - 1)
               {
                  _loc11_ = this.§9!Y§[this.§-4§ - 1];
                  this.§9!Y§[this.§-4§ - 1] = _loc4_;
                  this.§9!Y§[_loc3_] = _loc11_;
               }
               --this.§-4§;
            }
         }
         if(this.§@!Q§ > 0)
         {
            _loc12_ = 1 / this.§4!C§;
            this.§+2§ += _loc2_;
            while(this.§+2§ > 0)
            {
               if(this.§-4§ == this.§9#§)
               {
                  this.§4!w§(this.§9#§);
               }
               _loc4_ = this.§9!Y§[this.§-4§++] as §^!T§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§+2§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§=7§))
               {
                  _loc13_ = _loc12_ * (1 - this.§=7§ + Math.random() * this.§=7§ * 2) + this.§;!n§;
               }
               this.§;!n§ += _loc12_ - _loc13_;
               this.§+2§ -= _loc13_;
            }
            if(this.§@!Q§ != Number.MAX_VALUE)
            {
               this.§@!Q§ = Math.max(0,this.§@!Q§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§=#§.width;
         var _loc9_:Number = this.§=#§.height;
         this.§?!h§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§+j§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§-4§)
            {
               _loc6_ = (_loc4_ = this.§9!Y§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§=h§[_loc14_ * 3];
               _loc17_ = this.§=h§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§^d§.§+!f§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §^d§.§+!f§.§ S§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§?!h§;
                  this.§&f§.§ `§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§&f§.§>u§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§&f§.§>u§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§&f§.§>u§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§&f§.§>u§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§&f§.§>u§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§&f§.§>u§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§&f§.§>u§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§&f§.§>u§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §+j§(param1:Matrix3D) : void
      {
         var _loc3_:§^!T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-4§)
         {
            _loc3_ = this.§9!Y§[_loc2_];
            this.§"!z§[_loc2_ * 3] = _loc3_.x;
            this.§"!z§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"!z§,this.§=h§);
      }
      
      override public function render(param1:§3`§, param2:Number) : void
      {
         this.§2"$§(param1.§!!V§);
         if(this.§?!h§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §0!J§.§1!a§(param2 != 1,this.§=#§.mipMapping,false,this.§!!w§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§#!u§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§-!;§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§?"5§ != this.§#!f§)
         {
            this.§4!w§(0);
            this.§#!f§ = param1.§?"5§;
         }
         if(!this.§-"§(_loc4_))
         {
            this.§#f§.uploadFromVector(this.§&f§.§,&§,0,this.§?!h§ * 4);
            this.§2!-§.uploadFromVector(this.§&f§.§2!E§,0,this.§?!h§ * 4);
         }
         _loc4_.setBlendFactors(this.§]E§,this.§8!U§);
         _loc4_.setProgram(§^d§.§+!f§.§]!P§(_loc3_));
         _loc4_.setTextureAt(0,this.§=#§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§2!-§,§!$§.§8!-§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§09§,§!$§.§'6§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§#f§,§!$§.§&C§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§!!V§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§[!8§,0,this.§?!h§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §?" §() : Boolean
      {
         return false;
      }
      
      public function get §9#§() : int
      {
         return this.§&f§.§!!d§ / 4;
      }
      
      public function get §=A§() : int
      {
         return this.§-4§;
      }
      
      public function get §!c§() : Number
      {
         return this.§4!C§;
      }
      
      public function set §!c§(param1:Number) : void
      {
         this.§4!C§ = param1;
      }
      
      public function get §<!o§() : Number
      {
         return this.§;V§;
      }
      
      public function set §<!o§(param1:Number) : void
      {
         this.§;V§ = param1;
      }
      
      public function get §9!x§() : Number
      {
         return this.§ !k§;
      }
      
      public function set §9!x§(param1:Number) : void
      {
         this.§ !k§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
   }
}
