package §0!-§
{
   import § F§.§9U§;
   import §-Z§.§ G§;
   import §-Z§.§0o§;
   import §-Z§.§?h§;
   import §3!$§.§+^§;
   import §5d§.§=i§;
   import §[P§.Texture;
   import §^V§.DisplayObject;
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
   
   public class §9v§ extends DisplayObject implements §9U§
   {
       
      
      private var §<i§:Texture;
      
      private var §;!4§:Vector.<§9T§>;
      
      private var §6[§:Number;
      
      private var §;a§:Vector.<Number>;
      
      private var §6i§:Vector.<Number>;
      
      private var §;#§:§+^§;
      
      private var §]#§:VertexBuffer3D;
      
      private var §]8§:VertexBuffer3D;
      
      private var §25§:VertexBuffer3D;
      
      private var §^X§:Vector.<uint>;
      
      private var §'5§:IndexBuffer3D;
      
      private var §<"§:int;
      
      private var §8_§:int;
      
      private var §<X§:Number;
      
      protected var §&E§:Number;
      
      private var §!!G§:Number = 0.0;
      
      private var §'!=§:Number;
      
      protected var §5!A§:Number;
      
      protected var §2?§:Number;
      
      protected var §3Y§:Boolean;
      
      protected var §3k§:String;
      
      protected var §9^§:String;
      
      protected var §7!8§:String;
      
      private var §9t§:int = -1;
      
      private var §<S§:Boolean = false;
      
      private var §1%§:Number = 0.0;
      
      public function §9v§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§<i§ = param1;
         this.§3Y§ = param1.premultipliedAlpha;
         this.§;!4§ = new Vector.<§9T§>(0,false);
         this.§;a§ = new Vector.<Number>();
         this.§6i§ = new Vector.<Number>();
         this.§;#§ = new §+^§(0,this.§3Y§);
         this.§^X§ = new Vector.<uint>(0);
         this.§<X§ = param2;
         this.§'!=§ = 0;
         this.§6[§ = 0;
         this.§2?§ = 0;
         this.§5!A§ = 0;
         this.§9^§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§3k§ = param4 || (!!this.§3Y§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§'_§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§]#§)
         {
            this.§]#§.dispose();
         }
         if(this.§]8§)
         {
            this.§]8§.dispose();
         }
         if(this.§25§)
         {
            this.§25§.dispose();
         }
         if(this.§'5§)
         {
            this.§'5§.dispose();
         }
         this.§;a§ = null;
         this.§6i§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §9T§
      {
         return new §9T§();
      }
      
      protected function initParticle(param1:§9T§) : void
      {
         param1.x = this.§5!A§;
         param1.y = this.§2?§;
         param1.currentTime = 0;
         param1.§6<§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§9T§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§6<§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §'_§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§#z§;
         var _loc3_:int = this.§#z§ + param1;
         var _loc4_:§+^§;
         (_loc4_ = new §+^§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§<i§.adjustVertexData(_loc4_,0,4);
         this.§;!4§.fixed = false;
         this.§^X§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§;!4§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§;a§.push(0);
               this.§6i§.push(0);
               _loc7_++;
            }
            this.§;#§.append(_loc4_);
            this.§^X§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§;!4§.fixed = true;
         this.§^X§.fixed = true;
         this.§<S§ = true;
      }
      
      private function §1+§(param1:Context3D) : Boolean
      {
         if(!this.§<S§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §=i§();
         }
         var _loc2_:int = this.§;#§.§7U§ / 4;
         if(this.§]#§)
         {
            this.§]#§.dispose();
         }
         if(this.§]8§)
         {
            this.§]8§.dispose();
         }
         if(this.§25§)
         {
            this.§25§.dispose();
         }
         if(this.§'5§)
         {
            this.§'5§.dispose();
         }
         this.§]#§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§6!4§);
         this.§]#§.uploadFromByteArray(this.§;#§.§]!E§,0,0,_loc2_ * 4);
         this.§]8§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§"!%§);
         this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,_loc2_ * 4);
         this.§25§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§>!E§);
         this.§25§.uploadFromVector(this.§;#§.§[&§,0,_loc2_ * 4);
         this.§'5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§'5§.uploadFromVector(this.§^X§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§<X§ != 0)
         {
            this.§'!=§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§'!=§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §8n§(param1);
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
      
      public function §[t§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§0!$§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§1%§ = param1;
      }
      
      private function §0!$§(param1:Matrix3D) : void
      {
         var _loc4_:§9T§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§9T§ = null;
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
         if(isNaN(this.§1%§) || this.§1%§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§1%§;
         this.§1%§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§<"§)
         {
            if((_loc4_ = this.§;!4§[_loc3_]).currentTime < _loc4_.§6<§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§<"§ - 1)
               {
                  _loc11_ = this.§;!4§[this.§<"§ - 1];
                  this.§;!4§[this.§<"§ - 1] = _loc4_;
                  this.§;!4§[_loc3_] = _loc11_;
               }
               --this.§<"§;
            }
         }
         if(this.§'!=§ > 0)
         {
            _loc12_ = 1 / this.§<X§;
            this.§6[§ += _loc2_;
            while(this.§6[§ > 0)
            {
               if(this.§<"§ == this.§#z§)
               {
                  this.§'_§(this.§#z§);
               }
               _loc4_ = this.§;!4§[this.§<"§++] as §9T§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6[§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§&E§))
               {
                  _loc13_ = _loc12_ * (1 - this.§&E§ + Math.random() * this.§&E§ * 2) + this.§!!G§;
               }
               this.§!!G§ += _loc12_ - _loc13_;
               this.§6[§ -= _loc13_;
            }
            if(this.§'!=§ != Number.MAX_VALUE)
            {
               this.§'!=§ = Math.max(0,this.§'!=§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§<i§.width;
         var _loc9_:Number = this.§<i§.height;
         this.§8_§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§^!!§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§<"§)
            {
               _loc6_ = (_loc4_ = this.§;!4§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§6i§[_loc14_ * 3];
               _loc17_ = this.§6i§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§?h§.§ n§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §?h§.§ n§.§,i§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§8_§;
                  this.§;#§.§4!F§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§;#§.§^0§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§;#§.§^0§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§;#§.§^0§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§;#§.§^0§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§;#§.§^0§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§;#§.§^0§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§;#§.§^0§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§;#§.§^0§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §^!!§(param1:Matrix3D) : void
      {
         var _loc3_:§9T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<"§)
         {
            _loc3_ = this.§;!4§[_loc2_];
            this.§;a§[_loc2_ * 3] = _loc3_.x;
            this.§;a§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§;a§,this.§6i§);
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         this.§0!$§(param1.§4L§);
         if(this.§8_§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §0o§.§4I§(param2 != 1,this.§<i§.mipMapping,false,this.§7!8§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§3Y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§@R§ != this.§9t§)
         {
            this.§'_§(0);
            this.§9t§ = param1.§@R§;
         }
         if(!this.§1+§(_loc4_))
         {
            this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,this.§8_§ * 4);
            this.§25§.uploadFromVector(this.§;#§.§[&§,0,this.§8_§ * 4);
         }
         _loc4_.setBlendFactors(this.§3k§,this.§9^§);
         _loc4_.setProgram(§?h§.§ n§.§;?§(_loc3_));
         _loc4_.setTextureAt(0,this.§<i§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§25§,§+^§.§;u§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§]#§,§+^§.§!^§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§]8§,§+^§.§;F§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§4L§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§'5§,0,this.§8_§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §7L§() : Boolean
      {
         return false;
      }
      
      public function get §#z§() : int
      {
         return this.§;#§.§7U§ / 4;
      }
      
      public function get §-m§() : int
      {
         return this.§<"§;
      }
      
      public function get §,b§() : Number
      {
         return this.§<X§;
      }
      
      public function set §,b§(param1:Number) : void
      {
         this.§<X§ = param1;
      }
      
      public function get §!T§() : Number
      {
         return this.§5!A§;
      }
      
      public function set §!T§(param1:Number) : void
      {
         this.§5!A§ = param1;
      }
      
      public function get §%P§() : Number
      {
         return this.§2?§;
      }
      
      public function set §%P§(param1:Number) : void
      {
         this.§2?§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§<i§;
      }
   }
}
