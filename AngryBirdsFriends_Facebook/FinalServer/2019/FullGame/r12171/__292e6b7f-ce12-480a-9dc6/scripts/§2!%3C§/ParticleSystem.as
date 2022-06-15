package §2!<§
{
   import §"#k§.§79§;
   import §"#k§.Starling;
   import §'"T§.§^G§;
   import §,#e§.DisplayObject;
   import §,#e§.§^n§;
   import §-#]§.Texture;
   import §0U§.AGALMiniAssembler;
   import §8#p§.§>!B§;
   import §[>§.§-"w§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.Program3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ParticleSystem extends DisplayObject implements §-"w§
   {
       
      
      private var §[!-§:Texture;
      
      private var §8!c§:Vector.<§'"#§>;
      
      private var §2#S§:Number;
      
      private var §#"!§:Program3D;
      
      private var §6#m§:Vector.<Number>;
      
      private var §&!E§:Vector.<Number>;
      
      private var §?#9§:§>!B§;
      
      private var §9!T§:VertexBuffer3D;
      
      private var §^!N§:VertexBuffer3D;
      
      private var §-!;§:VertexBuffer3D;
      
      private var §?f§:Vector.<uint>;
      
      private var §3!S§:IndexBuffer3D;
      
      private var §0!B§:int;
      
      private var §5#6§:int;
      
      private var §>$@§:Number;
      
      protected var §0!Y§:Number;
      
      private var §;#i§:Number = 0.0;
      
      private var §=!E§:Number;
      
      protected var §["G§:Number;
      
      protected var §0o§:Number;
      
      protected var §1#z§:Boolean;
      
      protected var §'"z§:String;
      
      protected var §##Z§:String;
      
      protected var §4"^§:int = 1;
      
      private var §7!H§:int = -1;
      
      private var §8d§:Boolean = false;
      
      private var §#!l§:Number = 0.0;
      
      protected var §##_§:Boolean = false;
      
      protected var §2$E§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§2$E§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§[!-§ = param1;
         this.§1#z§ = param1.premultipliedAlpha;
         this.§8!c§ = new Vector.<§'"#§>(0,false);
         this.§6#m§ = new Vector.<Number>();
         this.§&!E§ = new Vector.<Number>();
         this.createProgram();
         this.§?#9§ = new §>!B§(0,this.§1#z§);
         this.§?f§ = new Vector.<uint>(0);
         this.§>$@§ = param2;
         this.§=!E§ = 0;
         this.§2#S§ = 0;
         this.§0o§ = 0;
         this.§["G§ = 0;
         this.§##Z§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§'"z§ = param4 || (!!this.§1#z§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§6!e§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§9!T§)
         {
            this.§9!T§.dispose();
         }
         if(this.§^!N§)
         {
            this.§^!N§.dispose();
         }
         if(this.§-!;§)
         {
            this.§-!;§.dispose();
         }
         if(this.§3!S§)
         {
            this.§3!S§.dispose();
         }
         this.§6#m§ = null;
         this.§&!E§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §'"#§
      {
         return new §'"#§();
      }
      
      protected function initParticle(param1:§'"#§) : void
      {
         param1.x = this.§["G§;
         param1.y = this.§0o§;
         param1.§-J§ = 0;
         param1.§!t§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§'"#§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§-J§ / param1.§!t§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§-J§ += param2;
      }
      
      private function §6!e§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§8'§;
         var _loc3_:int = this.§8'§ + param1;
         var _loc4_:§>!B§;
         (_loc4_ = new §>!B§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§[!-§.adjustVertexData(_loc4_,0,4);
         this.§8!c§.fixed = false;
         this.§?f§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§8!c§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§6#m§.push(0);
               this.§&!E§.push(0);
               _loc7_++;
            }
            this.§?#9§.§>#`§(_loc4_);
            this.§?f§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§8!c§.fixed = true;
         this.§?f§.fixed = true;
         this.§8d§ = true;
      }
      
      private function §1"p§(param1:Context3D) : Boolean
      {
         if(!this.§8d§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §^G§();
         }
         var _loc2_:int = this.§?#9§.numVertices / 4;
         if(this.§9!T§)
         {
            this.§9!T§.dispose();
         }
         if(this.§^!N§)
         {
            this.§^!N§.dispose();
         }
         if(this.§-!;§)
         {
            this.§-!;§.dispose();
         }
         if(this.§3!S§)
         {
            this.§3!S§.dispose();
         }
         this.§9!T§ = param1.createVertexBuffer(_loc2_ * 4,§>!B§.§^!c§);
         this.§9!T§.uploadFromVector(this.§?#9§.§,#%§,0,_loc2_ * 4);
         this.§^!N§ = param1.createVertexBuffer(_loc2_ * 4,§>!B§.§;",§);
         this.§^!N§.uploadFromVector(this.§?#9§.§4l§,0,_loc2_ * 4);
         this.§-!;§ = param1.createVertexBuffer(_loc2_ * 4,§>!B§.§'p§);
         this.§-!;§.uploadFromVector(this.§?#9§.§@1§,0,_loc2_ * 4);
         this.§3!S§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§3!S§.uploadFromVector(this.§?f§,0,_loc2_ * 6);
         this.§8d§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§>$@§ != 0)
         {
            this.§=!E§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§=!E§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §0#n§(param1);
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
      
      public function §+#%§(param1:Number) : void
      {
         this.§]W§(param1);
         this.§`#Q§(null);
      }
      
      public function §]W§(param1:Number) : void
      {
         this.§#!l§ = param1;
      }
      
      private function §`#Q§(param1:Matrix3D) : void
      {
         var _loc4_:§'"#§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§'"#§ = null;
         var _loc11_:Number = NaN;
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
         if(isNaN(this.§#!l§) || this.§#!l§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§#!l§;
         this.§#!l§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!B§)
         {
            if((_loc4_ = this.§8!c§[_loc3_]).§-J§ < _loc4_.§!t§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§0!B§ - 1)
               {
                  _loc10_ = this.§8!c§[this.§0!B§ - 1];
                  this.§8!c§[this.§0!B§ - 1] = _loc4_;
                  this.§8!c§[_loc3_] = _loc10_;
               }
               --this.§0!B§;
            }
         }
         if(this.§=!E§ > 0)
         {
            _loc11_ = 1 / this.§>$@§;
            this.§2#S§ += _loc2_;
            while(this.§2#S§ > 0)
            {
               if(this.§0!B§ == this.§8'§)
               {
                  this.§6!e§(this.§8'§);
               }
               _loc4_ = this.§8!c§[this.§0!B§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§2#S§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§0!Y§))
               {
                  _loc12_ = _loc11_ * (1 - this.§0!Y§ + Math.random() * this.§0!Y§ * 2) + this.§;#i§;
               }
               this.§;#i§ += _loc11_ - _loc12_;
               this.§2#S§ -= _loc12_;
            }
            if(this.§=!E§ != Number.MAX_VALUE)
            {
               this.§=!E§ = Math.max(0,this.§=!E§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§[!-§.width / 2;
         var _loc9_:Number = this.§[!-§.height / 2;
         this.§5#6§ = 0;
         if(param1 && Starling.§4$#§)
         {
            _loc13_ = Starling.§4$#§.§ #@§;
            this.§@#6§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§0!B§)
            {
               _loc4_ = this.§8!c§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§&!E§[_loc14_ * 3];
               _loc17_ = this.§&!E§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX;
               _loc19_ = _loc9_ * _loc4_.scaleY;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / _loc13_;
                  _loc21_ = 1.1 + _loc20_;
                  if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                  {
                     _loc15_ = false;
                  }
               }
               if(_loc15_)
               {
                  ++this.§5#6§;
                  if(this.§##_§)
                  {
                     this.§?#9§.§2"_§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                  }
                  _loc6_ = _loc4_.x;
                  _loc7_ = _loc4_.y;
                  if(_loc4_.rotation != 0 && Math.abs(_loc18_ - _loc19_) > 0.5)
                  {
                     _loc22_ = Math.cos(_loc4_.rotation);
                     _loc23_ = Math.sin(_loc4_.rotation);
                     _loc24_ = _loc18_ * _loc22_;
                     _loc25_ = _loc18_ * _loc23_;
                     _loc26_ = _loc19_ * _loc22_;
                     _loc27_ = _loc19_ * _loc23_;
                     this.§?#9§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§?#9§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§?#9§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§?#9§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§?#9§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§?#9§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§?#9§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§?#9§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function §@#6§(param1:Matrix3D) : void
      {
         var _loc3_:§'"#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!B§)
         {
            _loc3_ = this.§8!c§[_loc2_];
            this.§6#m§[_loc2_ * 3] = _loc3_.x;
            this.§6#m§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§6#m§,this.§&!E§);
      }
      
      override public function render(param1:§79§, param2:Number) : void
      {
         this.§`#Q§(param1.mvpMatrix3D);
         if(this.§5#6§ == 0)
         {
            return;
         }
         param1.§6@§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§1#z§)
         {
            this.§2$E§[0] = param2;
            this.§2$E§[1] = param2;
            this.§2$E§[2] = param2;
            this.§2$E§[3] = param2;
         }
         else
         {
            this.§2$E§[0] = 1;
            this.§2$E§[1] = 1;
            this.§2$E§[2] = 1;
            this.§2$E§[3] = param2;
         }
         if(param1.§``§ != this.§7!H§)
         {
            this.§6!e§(0);
            this.createProgram();
            this.§7!H§ = param1.§``§;
         }
         if(!this.§1"p§(_loc3_))
         {
            if(this.§##_§)
            {
               this.§^!N§.uploadFromVector(this.§?#9§.§4l§,0,this.§5#6§ * 4);
            }
            this.§-!;§.uploadFromVector(this.§?#9§.§@1§,0,this.§5#6§ * 4);
         }
         _loc3_.setBlendFactors(this.§'"z§,this.§##Z§);
         param1.§"!§(this.§#"!§);
         _loc3_.setTextureAt(0,this.§[!-§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§2$E§,1);
         _loc3_.setVertexBufferAt(0,this.§-!;§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§^!N§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§9!T§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§3!S§,0,this.§5#6§ * 2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         _loc3_.setVertexBufferAt(2,null);
      }
      
      private function createProgram() : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:AGALMiniAssembler = null;
         var _loc1_:Boolean = this.§[!-§.mipMapping;
         var _loc2_:String = this.§[!-§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§4"^§ + (!!_loc1_ ? "+mm" : "");
         this.§#"!§ = Starling.§4$#§.§+!!§(_loc3_);
         if(this.§#"!§ == null)
         {
            _loc4_ = this.§4"^§ != §^n§.§0#s§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§4$#§.§5!^§(_loc3_,_loc8_.§,#q§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§,#q§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§#"!§ = Starling.§4$#§.§+!!§(_loc3_);
         }
      }
      
      public function get §;# §() : Boolean
      {
         return false;
      }
      
      public function get §8'§() : int
      {
         return this.§?#9§.numVertices / 4;
      }
      
      public function get §^!3§() : int
      {
         return this.§0!B§;
      }
      
      public function get § "t§() : Number
      {
         return this.§>$@§;
      }
      
      public function set § "t§(param1:Number) : void
      {
         this.§>$@§ = param1;
      }
      
      public function get §^!d§() : Number
      {
         return this.§["G§;
      }
      
      public function set §^!d§(param1:Number) : void
      {
         this.§["G§ = param1;
      }
      
      public function get §>h§() : Number
      {
         return this.§0o§;
      }
      
      public function set §>h§(param1:Number) : void
      {
         this.§0o§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§[!-§;
      }
   }
}
