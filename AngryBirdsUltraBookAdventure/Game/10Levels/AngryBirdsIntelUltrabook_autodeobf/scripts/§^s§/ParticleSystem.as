package §^s§
{
   import §#!,§.DisplayObject;
   import §'7§.VertexData;
   import §+8§.§<!a§;
   import §6!J§.Texture;
   import §7!>§.QuadBatch;
   import §7!>§.RenderSupport;
   import §7!>§.Starling;
   import §^n§.§"!>§;
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
   
   public class ParticleSystem extends DisplayObject implements §"!>§
   {
       
      
      private var §>!S§:Texture;
      
      private var §0d§:Vector.<§#-§>;
      
      private var §]!L§:Number;
      
      private var §7+§:Vector.<Number>;
      
      private var §9!i§:Vector.<Number>;
      
      private var §7!$§:VertexData;
      
      private var §0![§:VertexBuffer3D;
      
      private var §^!K§:VertexBuffer3D;
      
      private var §&-§:VertexBuffer3D;
      
      private var §9!2§:Vector.<uint>;
      
      private var §'d§:IndexBuffer3D;
      
      private var §?!A§:int;
      
      private var §7A§:int;
      
      private var §&u§:Number;
      
      protected var §4!F§:Number;
      
      private var §6q§:Number = 0.0;
      
      private var §6!7§:Number;
      
      protected var §&!!§:Number;
      
      protected var §1!0§:Number;
      
      protected var §@!Y§:Boolean;
      
      protected var §-!9§:String;
      
      protected var §-w§:String;
      
      protected var §-x§:String;
      
      private var §=!N§:int = -1;
      
      private var §]C§:Boolean = false;
      
      private var §0E§:Number = 0.0;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§>!S§ = param1;
         this.§@!Y§ = param1.premultipliedAlpha;
         this.§0d§ = new Vector.<§#-§>(0,false);
         this.§7+§ = new Vector.<Number>();
         this.§9!i§ = new Vector.<Number>();
         this.§7!$§ = new VertexData(0,this.§@!Y§);
         this.§9!2§ = new Vector.<uint>(0);
         this.§&u§ = param2;
         this.§6!7§ = 0;
         this.§]!L§ = 0;
         this.§1!0§ = 0;
         this.§&!!§ = 0;
         this.§-w§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-!9§ = param4 || (!!this.§@!Y§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§=!6§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§0![§)
         {
            this.§0![§.dispose();
         }
         if(this.§^!K§)
         {
            this.§^!K§.dispose();
         }
         if(this.§&-§)
         {
            this.§&-§.dispose();
         }
         if(this.§'d§)
         {
            this.§'d§.dispose();
         }
         this.§7+§ = null;
         this.§9!i§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §#-§
      {
         return new §#-§();
      }
      
      protected function initParticle(param1:§#-§) : void
      {
         param1.x = this.§&!!§;
         param1.y = this.§1!0§;
         param1.§,b§ = 0;
         param1.§%!2§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§#-§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§,b§ / param1.§%!2§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§,b§ += param2;
      }
      
      private function §=!6§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§#`§;
         var _loc3_:int = this.§#`§ + param1;
         var _loc4_:VertexData = new VertexData(4);
         _loc4_.setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§>!S§.adjustVertexData(_loc4_,0,4);
         this.§0d§.fixed = false;
         this.§9!2§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§0d§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§7+§.push(0);
               this.§9!i§.push(0);
               _loc7_++;
            }
            this.§7!$§.append(_loc4_);
            this.§9!2§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§0d§.fixed = true;
         this.§9!2§.fixed = true;
         this.§]C§ = true;
      }
      
      private function §1!_§(param1:Context3D) : Boolean
      {
         if(!this.§]C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!a§();
         }
         var _loc2_:int = this.§7!$§.§ !Z§ / 4;
         if(this.§0![§)
         {
            this.§0![§.dispose();
         }
         if(this.§^!K§)
         {
            this.§^!K§.dispose();
         }
         if(this.§&-§)
         {
            this.§&-§.dispose();
         }
         if(this.§'d§)
         {
            this.§'d§.dispose();
         }
         this.§0![§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§4d§);
         this.§0![§.uploadFromByteArray(this.§7!$§.§%!T§,0,0,_loc2_ * 4);
         this.§^!K§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§@!e§);
         this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,_loc2_ * 4);
         this.§&-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§!<§);
         this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,_loc2_ * 4);
         this.§'d§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§'d§.uploadFromVector(this.§9!2§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§&u§ != 0)
         {
            this.§6!7§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§6!7§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §@!7§(param1);
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
      
      public function §1!5§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§5w§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§0E§ = param1;
      }
      
      private function §5w§(param1:Matrix3D) : void
      {
         var _loc4_:§#-§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§#-§ = null;
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
         if(isNaN(this.§0E§) || this.§0E§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§0E§;
         this.§0E§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!A§)
         {
            _loc4_ = this.§0d§[_loc3_];
            if(_loc4_.§,b§ < _loc4_.§%!2§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?!A§ - 1)
               {
                  _loc11_ = this.§0d§[this.§?!A§ - 1];
                  this.§0d§[this.§?!A§ - 1] = _loc4_;
                  this.§0d§[_loc3_] = _loc11_;
               }
               --this.§?!A§;
            }
         }
         if(this.§6!7§ > 0)
         {
            _loc12_ = 1 / this.§&u§;
            this.§]!L§ += _loc2_;
            while(this.§]!L§ > 0)
            {
               if(this.§?!A§ == this.§#`§)
               {
                  this.§=!6§(this.§#`§);
               }
               _loc4_ = this.§0d§[this.§?!A§++] as §#-§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§]!L§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§4!F§))
               {
                  _loc13_ = _loc12_ * (1 - this.§4!F§ + Math.random() * this.§4!F§ * 2) + this.§6q§;
               }
               this.§6q§ += _loc12_ - _loc13_;
               this.§]!L§ -= _loc13_;
            }
            if(this.§6!7§ != Number.MAX_VALUE)
            {
               this.§6!7§ = Math.max(0,this.§6!7§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§>!S§.width;
         var _loc9_:Number = this.§>!S§.height;
         this.§7A§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§2F§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?!A§)
            {
               _loc4_ = this.§0d§[_loc14_];
               _loc6_ = _loc4_.x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§9!i§[_loc14_ * 3];
               _loc17_ = this.§9!i§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(Starling.§7!+§)
                  {
                     _loc20_ = Math.max(_loc18_,_loc19_);
                     _loc20_ /= Starling.§7!+§.§8!L§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§7A§;
                  this.§7!$§.§1%§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§7!$§.§`!%§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§7!$§.§`!%§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§7!$§.§`!%§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§7!$§.§`!%§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§7!$§.§`!%§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§7!$§.§`!%§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§7!$§.§`!%§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§7!$§.§`!%§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §2F§(param1:Matrix3D) : void
      {
         var _loc3_:§#-§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!A§)
         {
            _loc3_ = this.§0d§[_loc2_];
            this.§7+§[_loc2_ * 3] = _loc3_.x;
            this.§7+§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§7+§,this.§9!i§);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         this.§5w§(param1.§<!=§);
         if(this.§7A§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = QuadBatch.§9%§(param2 != 1,this.§>!S§.mipMapping,false,this.§-x§,true);
         var _loc4_:Context3D = param1.§0v§;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§@!Y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§=V§ != this.§=!N§)
         {
            this.§=!6§(0);
            this.§=!N§ = param1.§=V§;
         }
         if(!this.§1!_§(_loc4_))
         {
            this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,this.§7A§ * 4);
            this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,this.§7A§ * 4);
         }
         _loc4_.setBlendFactors(this.§-!9§,this.§-w§);
         _loc4_.setProgram(Starling.§7!+§.§#+§(_loc3_));
         _loc4_.setTextureAt(0,this.§>!S§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§&-§,VertexData.§@8§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§0![§,VertexData.§+!h§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§^!K§,VertexData.§8!Y§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§<!=§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§'d§,0,this.§7A§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §8!V§() : Boolean
      {
         return false;
      }
      
      public function get §#`§() : int
      {
         return this.§7!$§.§ !Z§ / 4;
      }
      
      public function get §-<§() : int
      {
         return this.§?!A§;
      }
      
      public function get §&!i§() : Number
      {
         return this.§&u§;
      }
      
      public function set §&!i§(param1:Number) : void
      {
         this.§&u§ = param1;
      }
      
      public function get §"t§() : Number
      {
         return this.§&!!§;
      }
      
      public function set §"t§(param1:Number) : void
      {
         this.§&!!§ = param1;
      }
      
      public function get §5!7§() : Number
      {
         return this.§1!0§;
      }
      
      public function set §5!7§(param1:Number) : void
      {
         this.§1!0§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§>!S§;
      }
   }
}
