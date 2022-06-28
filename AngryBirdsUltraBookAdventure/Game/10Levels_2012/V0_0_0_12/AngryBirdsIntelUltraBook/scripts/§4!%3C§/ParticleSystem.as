package §4!<§
{
   import §"v§.§`!M§;
   import §0P§.QuadBatch;
   import §0P§.RenderSupport;
   import §0P§.Starling;
   import §2!9§.§"m§;
   import §6!7§.DisplayObject;
   import §7i§.Texture;
   import §8g§.VertexData;
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
   
   public class ParticleSystem extends DisplayObject implements §"m§
   {
       
      
      private var §5@§:Texture;
      
      private var §7D§:Vector.<§0!W§>;
      
      private var §3!2§:Number;
      
      private var §-B§:Vector.<Number>;
      
      private var §`i§:Vector.<Number>;
      
      private var §;H§:VertexData;
      
      private var §"-§:VertexBuffer3D;
      
      private var §-!^§:VertexBuffer3D;
      
      private var §8!F§:VertexBuffer3D;
      
      private var §3k§:Vector.<uint>;
      
      private var §%!Z§:IndexBuffer3D;
      
      private var §>!e§:int;
      
      private var §9!`§:int;
      
      private var §63§:Number;
      
      protected var §^4§:Number;
      
      private var §[!g§:Number = 0.0;
      
      private var §^X§:Number;
      
      protected var §]W§:Number;
      
      protected var §+!6§:Number;
      
      protected var §1y§:Boolean;
      
      protected var §?`§:String;
      
      protected var §@f§:String;
      
      protected var § !3§:String;
      
      private var §7J§:int = -1;
      
      private var §#!!§:Boolean = false;
      
      private var §[k§:Number = 0.0;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§5@§ = param1;
         this.§1y§ = param1.premultipliedAlpha;
         this.§7D§ = new Vector.<§0!W§>(0,false);
         this.§-B§ = new Vector.<Number>();
         this.§`i§ = new Vector.<Number>();
         this.§;H§ = new VertexData(0,this.§1y§);
         this.§3k§ = new Vector.<uint>(0);
         this.§63§ = param2;
         this.§^X§ = 0;
         this.§3!2§ = 0;
         this.§+!6§ = 0;
         this.§]W§ = 0;
         this.§@f§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§?`§ = param4 || (!!this.§1y§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§[s§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§"-§)
         {
            this.§"-§.dispose();
         }
         if(this.§-!^§)
         {
            this.§-!^§.dispose();
         }
         if(this.§8!F§)
         {
            this.§8!F§.dispose();
         }
         if(this.§%!Z§)
         {
            this.§%!Z§.dispose();
         }
         this.§-B§ = null;
         this.§`i§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §0!W§
      {
         return new §0!W§();
      }
      
      protected function initParticle(param1:§0!W§) : void
      {
         param1.x = this.§]W§;
         param1.y = this.§+!6§;
         param1.§6§ = 0;
         param1.§?!D§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§0!W§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§6§ / param1.§?!D§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§6§ += param2;
      }
      
      private function §[s§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6!-§;
         var _loc3_:int = this.§6!-§ + param1;
         var _loc4_:VertexData = new VertexData(4);
         _loc4_.setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§5@§.adjustVertexData(_loc4_,0,4);
         this.§7D§.fixed = false;
         this.§3k§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§7D§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§-B§.push(0);
               this.§`i§.push(0);
               _loc7_++;
            }
            this.§;H§.append(_loc4_);
            this.§3k§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§7D§.fixed = true;
         this.§3k§.fixed = true;
         this.§#!!§ = true;
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         if(!this.§#!!§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §`!M§();
         }
         var _loc2_:int = this.§;H§.§>!B§ / 4;
         if(this.§"-§)
         {
            this.§"-§.dispose();
         }
         if(this.§-!^§)
         {
            this.§-!^§.dispose();
         }
         if(this.§8!F§)
         {
            this.§8!F§.dispose();
         }
         if(this.§%!Z§)
         {
            this.§%!Z§.dispose();
         }
         this.§"-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§1!§);
         this.§"-§.uploadFromByteArray(this.§;H§.§7k§,0,0,_loc2_ * 4);
         this.§-!^§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§`!-§);
         this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,_loc2_ * 4);
         this.§8!F§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§9;§);
         this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,_loc2_ * 4);
         this.§%!Z§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%!Z§.uploadFromVector(this.§3k§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§63§ != 0)
         {
            this.§^X§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§^X§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §[!4§(param1);
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
      
      public function §^!e§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§3!B§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§[k§ = param1;
      }
      
      private function §3!B§(param1:Matrix3D) : void
      {
         var _loc4_:§0!W§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§0!W§ = null;
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
         if(isNaN(this.§[k§) || this.§[k§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§[k§;
         this.§[k§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§>!e§)
         {
            _loc4_ = this.§7D§[_loc3_];
            if(_loc4_.§6§ < _loc4_.§?!D§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§>!e§ - 1)
               {
                  _loc11_ = this.§7D§[this.§>!e§ - 1];
                  this.§7D§[this.§>!e§ - 1] = _loc4_;
                  this.§7D§[_loc3_] = _loc11_;
               }
               --this.§>!e§;
            }
         }
         if(this.§^X§ > 0)
         {
            _loc12_ = 1 / this.§63§;
            this.§3!2§ += _loc2_;
            while(this.§3!2§ > 0)
            {
               if(this.§>!e§ == this.§6!-§)
               {
                  this.§[s§(this.§6!-§);
               }
               _loc4_ = this.§7D§[this.§>!e§++] as §0!W§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§3!2§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§^4§))
               {
                  _loc13_ = _loc12_ * (1 - this.§^4§ + Math.random() * this.§^4§ * 2) + this.§[!g§;
               }
               this.§[!g§ += _loc12_ - _loc13_;
               this.§3!2§ -= _loc13_;
            }
            if(this.§^X§ != Number.MAX_VALUE)
            {
               this.§^X§ = Math.max(0,this.§^X§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§5@§.width;
         var _loc9_:Number = this.§5@§.height;
         this.§9!`§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§&!,§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§>!e§)
            {
               _loc4_ = this.§7D§[_loc14_];
               _loc6_ = _loc4_.x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§`i§[_loc14_ * 3];
               _loc17_ = this.§`i§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(Starling.§!!F§)
                  {
                     _loc20_ = Math.max(_loc18_,_loc19_);
                     _loc20_ /= Starling.§!!F§.§#8§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§9!`§;
                  this.§;H§.§if§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§;H§.§<a§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§;H§.§<a§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§;H§.§<a§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§;H§.§<a§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§;H§.§<a§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§;H§.§<a§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§;H§.§<a§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§;H§.§<a§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §&!,§(param1:Matrix3D) : void
      {
         var _loc3_:§0!W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!e§)
         {
            _loc3_ = this.§7D§[_loc2_];
            this.§-B§[_loc2_ * 3] = _loc3_.x;
            this.§-B§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§-B§,this.§`i§);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         this.§3!B§(param1.§>!C§);
         if(this.§9!`§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = QuadBatch.§&!%§(param2 != 1,this.§5@§.mipMapping,false,this.§ !3§,true);
         var _loc4_:Context3D = param1.§#F§;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§1y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§^!6§ != this.§7J§)
         {
            this.§[s§(0);
            this.§7J§ = param1.§^!6§;
         }
         if(!this.§<!R§(_loc4_))
         {
            this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,this.§9!`§ * 4);
            this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,this.§9!`§ * 4);
         }
         _loc4_.setBlendFactors(this.§?`§,this.§@f§);
         _loc4_.setProgram(Starling.§!!F§.§9!J§(_loc3_));
         _loc4_.setTextureAt(0,this.§5@§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§8!F§,VertexData.§=!c§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§"-§,VertexData.§ N§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§-!^§,VertexData.§0J§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§>!C§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§%!Z§,0,this.§9!`§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §6!5§() : Boolean
      {
         return false;
      }
      
      public function get §6!-§() : int
      {
         return this.§;H§.§>!B§ / 4;
      }
      
      public function get §>!+§() : int
      {
         return this.§>!e§;
      }
      
      public function get §%!0§() : Number
      {
         return this.§63§;
      }
      
      public function set §%!0§(param1:Number) : void
      {
         this.§63§ = param1;
      }
      
      public function get §8t§() : Number
      {
         return this.§]W§;
      }
      
      public function set §8t§(param1:Number) : void
      {
         this.§]W§ = param1;
      }
      
      public function get §'c§() : Number
      {
         return this.§+!6§;
      }
      
      public function set §'c§(param1:Number) : void
      {
         this.§+!6§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§5@§;
      }
   }
}
