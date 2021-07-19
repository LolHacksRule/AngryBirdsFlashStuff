package §'!3§
{
   import §%q§.Texture;
   import §'O§.§+!-§;
   import §+o§.§3C§;
   import §6![§.DisplayObject;
   import §9!B§.§ _§;
   import §`!a§.§0L§;
   import §`!a§.§1"&§;
   import §`!a§.§4>§;
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
   
   public class §"L§ extends DisplayObject implements § _§
   {
       
      
      private var §'!t§:Texture;
      
      private var §#z§:Vector.<§;x§>;
      
      private var §5"$§:Number;
      
      private var §%!_§:Vector.<Number>;
      
      private var §0",§:Vector.<Number>;
      
      private var §1!&§:§3C§;
      
      private var §8"&§:VertexBuffer3D;
      
      private var §<!]§:VertexBuffer3D;
      
      private var §4H§:VertexBuffer3D;
      
      private var §!!r§:Vector.<uint>;
      
      private var §&8§:IndexBuffer3D;
      
      private var §3X§:int;
      
      private var §-A§:int;
      
      private var §08§:Number;
      
      protected var §9!e§:Number;
      
      private var §^$§:Number = 0.0;
      
      private var §!!t§:Number;
      
      protected var §!!I§:Number;
      
      protected var §?!q§:Number;
      
      protected var §>#§:Boolean;
      
      protected var §&!H§:String;
      
      protected var §9!K§:String;
      
      protected var §<,§:String;
      
      private var §4B§:int = -1;
      
      private var §<!N§:Boolean = false;
      
      private var §9u§:Number = 0.0;
      
      public function §"L§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§'!t§ = param1;
         this.§>#§ = param1.premultipliedAlpha;
         this.§#z§ = new Vector.<§;x§>(0,false);
         this.§%!_§ = new Vector.<Number>();
         this.§0",§ = new Vector.<Number>();
         this.§1!&§ = new §3C§(0,this.§>#§);
         this.§!!r§ = new Vector.<uint>(0);
         this.§08§ = param2;
         this.§!!t§ = 0;
         this.§5"$§ = 0;
         this.§?!q§ = 0;
         this.§!!I§ = 0;
         this.§9!K§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§&!H§ = param4 || (!!this.§>#§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§&"%§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8"&§)
         {
            this.§8"&§.dispose();
         }
         if(this.§<!]§)
         {
            this.§<!]§.dispose();
         }
         if(this.§4H§)
         {
            this.§4H§.dispose();
         }
         if(this.§&8§)
         {
            this.§&8§.dispose();
         }
         this.§%!_§ = null;
         this.§0",§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §;x§
      {
         return new §;x§();
      }
      
      protected function initParticle(param1:§;x§) : void
      {
         param1.x = this.§!!I§;
         param1.y = this.§?!q§;
         param1.§+L§ = 0;
         param1.§,!Q§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§;x§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§+L§ / param1.§,!Q§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§+L§ += param2;
      }
      
      private function §&"%§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§-E§;
         var _loc3_:int = this.§-E§ + param1;
         var _loc4_:§3C§;
         (_loc4_ = new §3C§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§'!t§.adjustVertexData(_loc4_,0,4);
         this.§#z§.fixed = false;
         this.§!!r§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§#z§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§%!_§.push(0);
               this.§0",§.push(0);
               _loc7_++;
            }
            this.§1!&§.append(_loc4_);
            this.§!!r§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§#z§.fixed = true;
         this.§!!r§.fixed = true;
         this.§<!N§ = true;
      }
      
      private function §?!s§(param1:Context3D) : Boolean
      {
         if(!this.§<!N§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §+!-§();
         }
         var _loc2_:int = this.§1!&§.§6<§ / 4;
         if(this.§8"&§)
         {
            this.§8"&§.dispose();
         }
         if(this.§<!]§)
         {
            this.§<!]§.dispose();
         }
         if(this.§4H§)
         {
            this.§4H§.dispose();
         }
         if(this.§&8§)
         {
            this.§&8§.dispose();
         }
         this.§8"&§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§^!§);
         this.§8"&§.uploadFromByteArray(this.§1!&§.§8!b§,0,0,_loc2_ * 4);
         this.§<!]§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§!"&§);
         this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,_loc2_ * 4);
         this.§4H§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§'!F§);
         this.§4H§.uploadFromVector(this.§1!&§.§''§,0,_loc2_ * 4);
         this.§&8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§&8§.uploadFromVector(this.§!!r§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§08§ != 0)
         {
            this.§!!t§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§!!t§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §3!+§(param1);
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
      
      public function §^Y§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§#6§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§9u§ = param1;
      }
      
      private function §#6§(param1:Matrix3D) : void
      {
         var _loc4_:§;x§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§;x§ = null;
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
         if(isNaN(this.§9u§) || this.§9u§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§9u§;
         this.§9u§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§3X§)
         {
            if((_loc4_ = this.§#z§[_loc3_]).§+L§ < _loc4_.§,!Q§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§3X§ - 1)
               {
                  _loc11_ = this.§#z§[this.§3X§ - 1];
                  this.§#z§[this.§3X§ - 1] = _loc4_;
                  this.§#z§[_loc3_] = _loc11_;
               }
               --this.§3X§;
            }
         }
         if(this.§!!t§ > 0)
         {
            _loc12_ = 1 / this.§08§;
            this.§5"$§ += _loc2_;
            while(this.§5"$§ > 0)
            {
               if(this.§3X§ == this.§-E§)
               {
                  this.§&"%§(this.§-E§);
               }
               _loc4_ = this.§#z§[this.§3X§++] as §;x§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5"$§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§9!e§))
               {
                  _loc13_ = _loc12_ * (1 - this.§9!e§ + Math.random() * this.§9!e§ * 2) + this.§^$§;
               }
               this.§^$§ += _loc12_ - _loc13_;
               this.§5"$§ -= _loc13_;
            }
            if(this.§!!t§ != Number.MAX_VALUE)
            {
               this.§!!t§ = Math.max(0,this.§!!t§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§'!t§.width;
         var _loc9_:Number = this.§'!t§.height;
         this.§-A§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§8!u§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§3X§)
            {
               _loc6_ = (_loc4_ = this.§#z§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§0",§[_loc14_ * 3];
               _loc17_ = this.§0",§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§1"&§.§1i§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §1"&§.§1i§.§5_§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§-A§;
                  this.§1!&§.§#!g§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§1!&§.§null§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§1!&§.§null§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§1!&§.§null§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§1!&§.§null§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§1!&§.§null§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§1!&§.§null§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§1!&§.§null§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§1!&§.§null§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §8!u§(param1:Matrix3D) : void
      {
         var _loc3_:§;x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3X§)
         {
            _loc3_ = this.§#z§[_loc2_];
            this.§%!_§[_loc2_ * 3] = _loc3_.x;
            this.§%!_§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§%!_§,this.§0",§);
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         this.§#6§(param1.§+!c§);
         if(this.§-A§ == 0)
         {
            return;
         }
         param1.§6"$§();
         param2 *= this.alpha;
         var _loc3_:String = §4>§.§0!<§(param2 != 1,this.§'!t§.mipMapping,false,this.§<,§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§`r§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§>#§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§#A§ != this.§4B§)
         {
            this.§&"%§(0);
            this.§4B§ = param1.§#A§;
         }
         if(!this.§?!s§(_loc4_))
         {
            this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,this.§-A§ * 4);
            this.§4H§.uploadFromVector(this.§1!&§.§''§,0,this.§-A§ * 4);
         }
         _loc4_.setBlendFactors(this.§&!H§,this.§9!K§);
         _loc4_.setProgram(§1"&§.§1i§.§>p§(_loc3_));
         _loc4_.setTextureAt(0,this.§'!t§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§4H§,§3C§.§2!F§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§8"&§,§3C§.§null §,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§<!]§,§3C§.§0!g§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§+!c§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§&8§,0,this.§-A§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §1]§() : Boolean
      {
         return false;
      }
      
      public function get §-E§() : int
      {
         return this.§1!&§.§6<§ / 4;
      }
      
      public function get §3'§() : int
      {
         return this.§3X§;
      }
      
      public function get §package§() : Number
      {
         return this.§08§;
      }
      
      public function set §package§(param1:Number) : void
      {
         this.§08§ = param1;
      }
      
      public function get §#!E§() : Number
      {
         return this.§!!I§;
      }
      
      public function set §#!E§(param1:Number) : void
      {
         this.§!!I§ = param1;
      }
      
      public function get §=!E§() : Number
      {
         return this.§?!q§;
      }
      
      public function set §=!E§(param1:Number) : void
      {
         this.§?!q§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§'!t§;
      }
   }
}
