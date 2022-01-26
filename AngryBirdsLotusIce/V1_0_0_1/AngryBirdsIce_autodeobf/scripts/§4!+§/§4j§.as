package §4!+§
{
   import §""§.§"!A§;
   import §%?§.Texture;
   import §5!3§.§^x§;
   import §<w§.§4%§;
   import §@!%§.§+8§;
   import §@!%§.§0!4§;
   import §@!%§.§]A§;
   import §@!=§.DisplayObject;
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
   
   public class §4j§ extends DisplayObject implements §"!A§
   {
       
      
      private var §+F§:Texture;
      
      private var §5t§:Vector.<§'!!§>;
      
      private var §6!=§:Number;
      
      private var § B§:Vector.<Number>;
      
      private var §3!$§:Vector.<Number>;
      
      private var §@T§:§^x§;
      
      private var §&B§:VertexBuffer3D;
      
      private var §;p§:VertexBuffer3D;
      
      private var § ?§:VertexBuffer3D;
      
      private var §?!"§:Vector.<uint>;
      
      private var §?Q§:IndexBuffer3D;
      
      private var §-!;§:int;
      
      private var §4!@§:int;
      
      private var §@q§:Number;
      
      protected var §,X§:Number;
      
      private var §8l§:Number = 0.0;
      
      private var §8S§:Number;
      
      protected var §7F§:Number;
      
      protected var §!i§:Number;
      
      protected var §]H§:Boolean;
      
      protected var §&!3§:String;
      
      protected var §@i§:String;
      
      protected var § !D§:String;
      
      private var §^P§:int = -1;
      
      private var §"&§:Boolean = false;
      
      private var §7!"§:Number = 0.0;
      
      public function §4j§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§+F§ = param1;
         this.§]H§ = param1.premultipliedAlpha;
         this.§5t§ = new Vector.<§'!!§>(0,false);
         this.§ B§ = new Vector.<Number>();
         this.§3!$§ = new Vector.<Number>();
         this.§@T§ = new §^x§(0,this.§]H§);
         this.§?!"§ = new Vector.<uint>(0);
         this.§@q§ = param2;
         this.§8S§ = 0;
         this.§6!=§ = 0;
         this.§!i§ = 0;
         this.§7F§ = 0;
         this.§@i§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§&!3§ = param4 || (!!this.§]H§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§#!9§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§&B§)
         {
            this.§&B§.dispose();
         }
         if(this.§;p§)
         {
            this.§;p§.dispose();
         }
         if(this.§ ?§)
         {
            this.§ ?§.dispose();
         }
         if(this.§?Q§)
         {
            this.§?Q§.dispose();
         }
         this.§ B§ = null;
         this.§3!$§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §'!!§
      {
         return new §'!!§();
      }
      
      protected function initParticle(param1:§'!!§) : void
      {
         param1.x = this.§7F§;
         param1.y = this.§!i§;
         param1.currentTime = 0;
         param1.§?l§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§'!!§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§?l§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §#!9§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§ <§;
         var _loc3_:int = this.§ <§ + param1;
         var _loc4_:§^x§;
         (_loc4_ = new §^x§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§+F§.adjustVertexData(_loc4_,0,4);
         this.§5t§.fixed = false;
         this.§?!"§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§5t§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§ B§.push(0);
               this.§3!$§.push(0);
               _loc7_++;
            }
            this.§@T§.append(_loc4_);
            this.§?!"§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§5t§.fixed = true;
         this.§?!"§.fixed = true;
         this.§"&§ = true;
      }
      
      private function §8§(param1:Context3D) : Boolean
      {
         if(!this.§"&§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §4%§();
         }
         var _loc2_:int = this.§@T§.§"!B§ / 4;
         if(this.§&B§)
         {
            this.§&B§.dispose();
         }
         if(this.§;p§)
         {
            this.§;p§.dispose();
         }
         if(this.§ ?§)
         {
            this.§ ?§.dispose();
         }
         if(this.§?Q§)
         {
            this.§?Q§.dispose();
         }
         this.§&B§ = param1.createVertexBuffer(_loc2_ * 4,§^x§.§[&§);
         this.§&B§.uploadFromByteArray(this.§@T§.§>A§,0,0,_loc2_ * 4);
         this.§;p§ = param1.createVertexBuffer(_loc2_ * 4,§^x§.§>r§);
         this.§;p§.uploadFromVector(this.§@T§.§6<§,0,_loc2_ * 4);
         this.§ ?§ = param1.createVertexBuffer(_loc2_ * 4,§^x§.§4!7§);
         this.§ ?§.uploadFromVector(this.§@T§.§3P§,0,_loc2_ * 4);
         this.§?Q§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§?Q§.uploadFromVector(this.§?!"§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§@q§ != 0)
         {
            this.§8S§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§8S§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §2B§(param1);
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
      
      public function §#7§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§<]§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7!"§ = param1;
      }
      
      private function §<]§(param1:Matrix3D) : void
      {
         var _loc4_:§'!!§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§'!!§ = null;
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
         if(isNaN(this.§7!"§) || this.§7!"§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7!"§;
         this.§7!"§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!;§)
         {
            if((_loc4_ = this.§5t§[_loc3_]).currentTime < _loc4_.§?l§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§-!;§ - 1)
               {
                  _loc11_ = this.§5t§[this.§-!;§ - 1];
                  this.§5t§[this.§-!;§ - 1] = _loc4_;
                  this.§5t§[_loc3_] = _loc11_;
               }
               --this.§-!;§;
            }
         }
         if(this.§8S§ > 0)
         {
            _loc12_ = 1 / this.§@q§;
            this.§6!=§ += _loc2_;
            while(this.§6!=§ > 0)
            {
               if(this.§-!;§ == this.§ <§)
               {
                  this.§#!9§(this.§ <§);
               }
               _loc4_ = this.§5t§[this.§-!;§++] as §'!!§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6!=§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§,X§))
               {
                  _loc13_ = _loc12_ * (1 - this.§,X§ + Math.random() * this.§,X§ * 2) + this.§8l§;
               }
               this.§8l§ += _loc12_ - _loc13_;
               this.§6!=§ -= _loc13_;
            }
            if(this.§8S§ != Number.MAX_VALUE)
            {
               this.§8S§ = Math.max(0,this.§8S§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§+F§.width;
         var _loc9_:Number = this.§+F§.height;
         this.§4!@§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§`y§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§-!;§)
            {
               _loc6_ = (_loc4_ = this.§5t§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§3!$§[_loc14_ * 3];
               _loc17_ = this.§3!$§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§+8§.§-2§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §+8§.§-2§.§!!H§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§4!@§;
                  this.§@T§.§[^§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§@T§.§,i§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§@T§.§,i§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§@T§.§,i§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§@T§.§,i§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§@T§.§,i§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§@T§.§,i§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§@T§.§,i§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§@T§.§,i§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §`y§(param1:Matrix3D) : void
      {
         var _loc3_:§'!!§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!;§)
         {
            _loc3_ = this.§5t§[_loc2_];
            this.§ B§[_loc2_ * 3] = _loc3_.x;
            this.§ B§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§ B§,this.§3!$§);
      }
      
      override public function render(param1:§]A§, param2:Number) : void
      {
         this.§<]§(param1.§1k§);
         if(this.§4!@§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §0!4§.§#R§(param2 != 1,this.§+F§.mipMapping,false,this.§ !D§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§]H§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§%!D§ != this.§^P§)
         {
            this.§#!9§(0);
            this.§^P§ = param1.§%!D§;
         }
         if(!this.§8§(_loc4_))
         {
            this.§;p§.uploadFromVector(this.§@T§.§6<§,0,this.§4!@§ * 4);
            this.§ ?§.uploadFromVector(this.§@T§.§3P§,0,this.§4!@§ * 4);
         }
         _loc4_.setBlendFactors(this.§&!3§,this.§@i§);
         _loc4_.setProgram(§+8§.§-2§.§7X§(_loc3_));
         _loc4_.setTextureAt(0,this.§+F§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§ ?§,§^x§.§9q§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§&B§,§^x§.§@n§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§;p§,§^x§.§+b§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§1k§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§?Q§,0,this.§4!@§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §`R§() : Boolean
      {
         return false;
      }
      
      public function get § <§() : int
      {
         return this.§@T§.§"!B§ / 4;
      }
      
      public function get §%!'§() : int
      {
         return this.§-!;§;
      }
      
      public function get §8u§() : Number
      {
         return this.§@q§;
      }
      
      public function set §8u§(param1:Number) : void
      {
         this.§@q§ = param1;
      }
      
      public function get §9d§() : Number
      {
         return this.§7F§;
      }
      
      public function set §9d§(param1:Number) : void
      {
         this.§7F§ = param1;
      }
      
      public function get §7q§() : Number
      {
         return this.§!i§;
      }
      
      public function set §7q§(param1:Number) : void
      {
         this.§!i§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§+F§;
      }
   }
}
