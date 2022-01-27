package §<v§
{
   import §!"u§.§@p§;
   import §1"s§.DisplayObject;
   import §3"e§.§;P§;
   import §3[§.§+",§;
   import §9!!§.§ _§;
   import §9!!§.§=!S§;
   import §9!!§.§@!§;
   import §<"L§.Texture;
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
   
   public class §@!T§ extends DisplayObject implements §+",§
   {
       
      
      private var §!!Z§:Texture;
      
      private var §7#7§:Vector.<§3!8§>;
      
      private var §^!Q§:Number;
      
      private var §,"U§:Vector.<Number>;
      
      private var §46§:Vector.<Number>;
      
      private var §0#4§:§;P§;
      
      private var §8#0§:VertexBuffer3D;
      
      private var §>q§:VertexBuffer3D;
      
      private var §["w§:VertexBuffer3D;
      
      private var §1Y§:Vector.<uint>;
      
      private var §;!5§:IndexBuffer3D;
      
      private var §6"S§:int;
      
      private var § for§:int;
      
      private var §`"&§:Number;
      
      protected var §]"z§:Number;
      
      private var §&!'§:Number = 0.0;
      
      private var §catch§:Number;
      
      protected var §`"n§:Number;
      
      protected var §0M§:Number;
      
      protected var §2!N§:Boolean;
      
      protected var §[! §:String;
      
      protected var §>"a§:String;
      
      protected var §9O§:String;
      
      private var § !=§:int = -1;
      
      private var §0"?§:Boolean = false;
      
      private var §9"i§:Number = 0.0;
      
      public function §@!T§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!!Z§ = param1;
         this.§2!N§ = param1.premultipliedAlpha;
         this.§7#7§ = new Vector.<§3!8§>(0,false);
         this.§,"U§ = new Vector.<Number>();
         this.§46§ = new Vector.<Number>();
         this.§0#4§ = new §;P§(0,this.§2!N§);
         this.§1Y§ = new Vector.<uint>(0);
         this.§`"&§ = param2;
         this.§catch§ = 0;
         this.§^!Q§ = 0;
         this.§0M§ = 0;
         this.§`"n§ = 0;
         this.§>"a§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§[! § = param4 || (!!this.§2!N§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§-C§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8#0§)
         {
            this.§8#0§.dispose();
         }
         if(this.§>q§)
         {
            this.§>q§.dispose();
         }
         if(this.§["w§)
         {
            this.§["w§.dispose();
         }
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
         }
         this.§,"U§ = null;
         this.§46§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §3!8§
      {
         return new §3!8§();
      }
      
      protected function initParticle(param1:§3!8§) : void
      {
         param1.x = this.§`"n§;
         param1.y = this.§0M§;
         param1.currentTime = 0;
         param1.§%m§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§3!8§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§%m§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §-C§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§9r§;
         var _loc3_:int = this.§9r§ + param1;
         var _loc4_:§;P§;
         (_loc4_ = new §;P§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!!Z§.adjustVertexData(_loc4_,0,4);
         this.§7#7§.fixed = false;
         this.§1Y§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§7#7§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§,"U§.push(0);
               this.§46§.push(0);
               _loc7_++;
            }
            this.§0#4§.append(_loc4_);
            this.§1Y§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§7#7§.fixed = true;
         this.§1Y§.fixed = true;
         this.§0"?§ = true;
      }
      
      private function §9+§(param1:Context3D) : Boolean
      {
         if(!this.§0"?§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@p§();
         }
         var _loc2_:int = this.§0#4§.§8!u§ / 4;
         if(this.§8#0§)
         {
            this.§8#0§.dispose();
         }
         if(this.§>q§)
         {
            this.§>q§.dispose();
         }
         if(this.§["w§)
         {
            this.§["w§.dispose();
         }
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
         }
         this.§8#0§ = param1.createVertexBuffer(_loc2_ * 4,§;P§.§^b§);
         this.§8#0§.uploadFromByteArray(this.§0#4§.§3s§,0,0,_loc2_ * 4);
         this.§>q§ = param1.createVertexBuffer(_loc2_ * 4,§;P§.§1# §);
         this.§>q§.uploadFromVector(this.§0#4§.§&"3§,0,_loc2_ * 4);
         this.§["w§ = param1.createVertexBuffer(_loc2_ * 4,§;P§.§'""§);
         this.§["w§.uploadFromVector(this.§0#4§.§1!A§,0,_loc2_ * 4);
         this.§;!5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§;!5§.uploadFromVector(this.§1Y§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§`"&§ != 0)
         {
            this.§catch§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§catch§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §>"`§(param1);
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
      
      public function §]'§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§,!,§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§9"i§ = param1;
      }
      
      private function §,!,§(param1:Matrix3D) : void
      {
         var _loc4_:§3!8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§3!8§ = null;
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
         if(isNaN(this.§9"i§) || this.§9"i§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§9"i§;
         this.§9"i§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§6"S§)
         {
            if((_loc4_ = this.§7#7§[_loc3_]).currentTime < _loc4_.§%m§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§6"S§ - 1)
               {
                  _loc11_ = this.§7#7§[this.§6"S§ - 1];
                  this.§7#7§[this.§6"S§ - 1] = _loc4_;
                  this.§7#7§[_loc3_] = _loc11_;
               }
               --this.§6"S§;
            }
         }
         if(this.§catch§ > 0)
         {
            _loc12_ = 1 / this.§`"&§;
            this.§^!Q§ += _loc2_;
            while(this.§^!Q§ > 0)
            {
               if(this.§6"S§ == this.§9r§)
               {
                  this.§-C§(this.§9r§);
               }
               _loc4_ = this.§7#7§[this.§6"S§++] as §3!8§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§^!Q§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§]"z§))
               {
                  _loc13_ = _loc12_ * (1 - this.§]"z§ + Math.random() * this.§]"z§ * 2) + this.§&!'§;
               }
               this.§&!'§ += _loc12_ - _loc13_;
               this.§^!Q§ -= _loc13_;
            }
            if(this.§catch§ != Number.MAX_VALUE)
            {
               this.§catch§ = Math.max(0,this.§catch§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!!Z§.width;
         var _loc9_:Number = this.§!!Z§.height;
         this.§ for§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§>"w§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§6"S§)
            {
               _loc6_ = (_loc4_ = this.§7#7§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§46§[_loc14_ * 3];
               _loc17_ = this.§46§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§=!S§.§8y§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §=!S§.§8y§.§3!?§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§ for§;
                  this.§0#4§.§?!s§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§0#4§.§0<§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§0#4§.§0<§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§0#4§.§0<§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§0#4§.§0<§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§0#4§.§0<§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§0#4§.§0<§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§0#4§.§0<§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§0#4§.§0<§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §>"w§(param1:Matrix3D) : void
      {
         var _loc3_:§3!8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6"S§)
         {
            _loc3_ = this.§7#7§[_loc2_];
            this.§,"U§[_loc2_ * 3] = _loc3_.x;
            this.§,"U§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§,"U§,this.§46§);
      }
      
      override public function render(param1:§ _§, param2:Number) : void
      {
         this.§,!,§(param1.§2i§);
         if(this.§ for§ == 0)
         {
            return;
         }
         param1.§62§();
         param2 *= this.alpha;
         var _loc3_:String = §@!§.§7"q§(param2 != 1,this.§!!Z§.mipMapping,false,this.§9O§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§7!>§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§2!N§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§7!Q§ != this.§ !=§)
         {
            this.§-C§(0);
            this.§ !=§ = param1.§7!Q§;
         }
         if(!this.§9+§(_loc4_))
         {
            this.§>q§.uploadFromVector(this.§0#4§.§&"3§,0,this.§ for§ * 4);
            this.§["w§.uploadFromVector(this.§0#4§.§1!A§,0,this.§ for§ * 4);
         }
         _loc4_.setBlendFactors(this.§[! §,this.§>"a§);
         _loc4_.setProgram(§=!S§.§8y§.§@"J§(_loc3_));
         _loc4_.setTextureAt(0,this.§!!Z§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§["w§,§;P§.§,#5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§8#0§,§;P§.§^<§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§>q§,§;P§.§4%§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§2i§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§;!5§,0,this.§ for§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get isComplete() : Boolean
      {
         return false;
      }
      
      public function get §9r§() : int
      {
         return this.§0#4§.§8!u§ / 4;
      }
      
      public function get §8!B§() : int
      {
         return this.§6"S§;
      }
      
      public function get §9V§() : Number
      {
         return this.§`"&§;
      }
      
      public function set §9V§(param1:Number) : void
      {
         this.§`"&§ = param1;
      }
      
      public function get §1I§() : Number
      {
         return this.§`"n§;
      }
      
      public function set §1I§(param1:Number) : void
      {
         this.§`"n§ = param1;
      }
      
      public function get §0d§() : Number
      {
         return this.§0M§;
      }
      
      public function set §0d§(param1:Number) : void
      {
         this.§0M§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!!Z§;
      }
   }
}
