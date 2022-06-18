package §-e§
{
   import § G§.AGALMiniAssembler;
   import §""4§.Texture;
   import §#Z§.§6!`§;
   import §#Z§.DisplayObject;
   import §&§.§""F§;
   import §&§.Starling;
   import §0"D§.§,4§;
   import §8"'§.§1#O§;
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
   import §package§.§1#;§;
   
   public class ParticleSystem extends DisplayObject implements §1#;§
   {
       
      
      private var §+!E§:Texture;
      
      private var §5#N§:Vector.<§]"w§>;
      
      private var § q§:Number;
      
      private var §+#C§:Program3D;
      
      private var §1!T§:Vector.<Number>;
      
      private var §>!R§:Vector.<Number>;
      
      private var §3!-§:§,4§;
      
      private var §;#S§:VertexBuffer3D;
      
      private var §,;§:VertexBuffer3D;
      
      private var §^!W§:VertexBuffer3D;
      
      private var §&#[§:Vector.<uint>;
      
      private var §6#`§:IndexBuffer3D;
      
      private var §3"-§:int;
      
      private var §?#N§:int;
      
      private var §^#=§:Number;
      
      protected var §@!N§:Number;
      
      private var §<!@§:Number = 0.0;
      
      private var §6$ §:Number;
      
      protected var §?1§:Number;
      
      protected var §2!>§:Number;
      
      protected var §!#H§:Boolean;
      
      protected var §#$ §:String;
      
      protected var §#"q§:String;
      
      protected var §'$;§:int = 1;
      
      private var §8$D§:int = -1;
      
      private var §7Y§:Boolean = false;
      
      private var §=#S§:Number = 0.0;
      
      protected var §try §:Boolean = false;
      
      protected var §;n§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§;n§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§+!E§ = param1;
         this.§!#H§ = param1.premultipliedAlpha;
         this.§5#N§ = new Vector.<§]"w§>(0,false);
         this.§1!T§ = new Vector.<Number>();
         this.§>!R§ = new Vector.<Number>();
         this.createProgram();
         this.§3!-§ = new §,4§(0,this.§!#H§);
         this.§&#[§ = new Vector.<uint>(0);
         this.§^#=§ = param2;
         this.§6$ § = 0;
         this.§ q§ = 0;
         this.§2!>§ = 0;
         this.§?1§ = 0;
         this.§#"q§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§#$ § = param4 || (!!this.§!#H§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§-!y§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;#S§)
         {
            this.§;#S§.dispose();
         }
         if(this.§,;§)
         {
            this.§,;§.dispose();
         }
         if(this.§^!W§)
         {
            this.§^!W§.dispose();
         }
         if(this.§6#`§)
         {
            this.§6#`§.dispose();
         }
         this.§1!T§ = null;
         this.§>!R§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §]"w§
      {
         return new §]"w§();
      }
      
      protected function initParticle(param1:§]"w§) : void
      {
         param1.x = this.§?1§;
         param1.y = this.§2!>§;
         param1.§3!j§ = 0;
         param1.§9b§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§]"w§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§3!j§ / param1.§9b§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§3!j§ += param2;
      }
      
      private function §-!y§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§>#8§;
         var _loc3_:int = this.§>#8§ + param1;
         var _loc4_:§,4§;
         (_loc4_ = new §,4§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§+!E§.adjustVertexData(_loc4_,0,4);
         this.§5#N§.fixed = false;
         this.§&#[§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§5#N§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§1!T§.push(0);
               this.§>!R§.push(0);
               _loc7_++;
            }
            this.§3!-§.§%y§(_loc4_);
            this.§&#[§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§5#N§.fixed = true;
         this.§&#[§.fixed = true;
         this.§7Y§ = true;
      }
      
      private function §4@§(param1:Context3D) : Boolean
      {
         if(!this.§7Y§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §1#O§();
         }
         var _loc2_:int = this.§3!-§.numVertices / 4;
         if(this.§;#S§)
         {
            this.§;#S§.dispose();
         }
         if(this.§,;§)
         {
            this.§,;§.dispose();
         }
         if(this.§^!W§)
         {
            this.§^!W§.dispose();
         }
         if(this.§6#`§)
         {
            this.§6#`§.dispose();
         }
         this.§;#S§ = param1.createVertexBuffer(_loc2_ * 4,§,4§.§^$?§);
         this.§;#S§.uploadFromVector(this.§3!-§.§0"8§,0,_loc2_ * 4);
         this.§,;§ = param1.createVertexBuffer(_loc2_ * 4,§,4§.§^f§);
         this.§,;§.uploadFromVector(this.§3!-§.§9^§,0,_loc2_ * 4);
         this.§^!W§ = param1.createVertexBuffer(_loc2_ * 4,§,4§.§1#>§);
         this.§^!W§.uploadFromVector(this.§3!-§.§^$§,0,_loc2_ * 4);
         this.§6#`§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§6#`§.uploadFromVector(this.§&#[§,0,_loc2_ * 6);
         this.§7Y§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§^#=§ != 0)
         {
            this.§6$ § = param1;
         }
      }
      
      public function stop() : void
      {
         this.§6$ § = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §?P§(param1);
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
      
      public function §0#m§(param1:Number) : void
      {
         this.§["[§(param1);
         this.§[$A§(null);
      }
      
      public function §["[§(param1:Number) : void
      {
         this.§=#S§ = param1;
      }
      
      private function §[$A§(param1:Matrix3D) : void
      {
         var _loc4_:§]"w§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§]"w§ = null;
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
         if(isNaN(this.§=#S§) || this.§=#S§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§=#S§;
         this.§=#S§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§3"-§)
         {
            if((_loc4_ = this.§5#N§[_loc3_]).§3!j§ < _loc4_.§9b§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§3"-§ - 1)
               {
                  _loc10_ = this.§5#N§[this.§3"-§ - 1];
                  this.§5#N§[this.§3"-§ - 1] = _loc4_;
                  this.§5#N§[_loc3_] = _loc10_;
               }
               --this.§3"-§;
            }
         }
         if(this.§6$ § > 0)
         {
            _loc11_ = 1 / this.§^#=§;
            this.§ q§ += _loc2_;
            while(this.§ q§ > 0)
            {
               if(this.§3"-§ == this.§>#8§)
               {
                  this.§-!y§(this.§>#8§);
               }
               _loc4_ = this.§5#N§[this.§3"-§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§ q§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§@!N§))
               {
                  _loc12_ = _loc11_ * (1 - this.§@!N§ + Math.random() * this.§@!N§ * 2) + this.§<!@§;
               }
               this.§<!@§ += _loc11_ - _loc12_;
               this.§ q§ -= _loc12_;
            }
            if(this.§6$ § != Number.MAX_VALUE)
            {
               this.§6$ § = Math.max(0,this.§6$ § - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§+!E§.width / 2;
         var _loc9_:Number = this.§+!E§.height / 2;
         this.§?#N§ = 0;
         if(param1 && Starling.§%!q§)
         {
            _loc13_ = Starling.§%!q§.§5!n§;
            this.§`#^§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§3"-§)
            {
               _loc4_ = this.§5#N§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§>!R§[_loc14_ * 3];
               _loc17_ = this.§>!R§[_loc14_ * 3 + 1];
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
                  ++this.§?#N§;
                  if(this.§try §)
                  {
                     this.§3!-§.§+A§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§3!-§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§3!-§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§3!-§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§3!-§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§3!-§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§3!-§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§3!-§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§3!-§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function §`#^§(param1:Matrix3D) : void
      {
         var _loc3_:§]"w§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"-§)
         {
            _loc3_ = this.§5#N§[_loc2_];
            this.§1!T§[_loc2_ * 3] = _loc3_.x;
            this.§1!T§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§1!T§,this.§>!R§);
      }
      
      override public function render(param1:§""F§, param2:Number) : void
      {
         this.§[$A§(param1.mvpMatrix3D);
         if(this.§?#N§ == 0)
         {
            return;
         }
         param1.§&"!§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§!#H§)
         {
            this.§;n§[0] = param2;
            this.§;n§[1] = param2;
            this.§;n§[2] = param2;
            this.§;n§[3] = param2;
         }
         else
         {
            this.§;n§[0] = 1;
            this.§;n§[1] = 1;
            this.§;n§[2] = 1;
            this.§;n§[3] = param2;
         }
         if(param1.§'4§ != this.§8$D§)
         {
            this.§-!y§(0);
            this.createProgram();
            this.§8$D§ = param1.§'4§;
         }
         if(!this.§4@§(_loc3_))
         {
            if(this.§try §)
            {
               this.§,;§.uploadFromVector(this.§3!-§.§9^§,0,this.§?#N§ * 4);
            }
            this.§^!W§.uploadFromVector(this.§3!-§.§^$§,0,this.§?#N§ * 4);
         }
         _loc3_.setBlendFactors(this.§#$ §,this.§#"q§);
         param1.§?#5§(this.§+#C§);
         _loc3_.setTextureAt(0,this.§+!E§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§;n§,1);
         _loc3_.setVertexBufferAt(0,this.§^!W§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§,;§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§;#S§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§6#`§,0,this.§?#N§ * 2);
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
         var _loc1_:Boolean = this.§+!E§.mipMapping;
         var _loc2_:String = this.§+!E§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§'$;§ + (!!_loc1_ ? "+mm" : "");
         this.§+#C§ = Starling.§%!q§.§8#j§(_loc3_);
         if(this.§+#C§ == null)
         {
            _loc4_ = this.§'$;§ != §6!`§.§"m§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§%!q§.§,#§(_loc3_,_loc8_.§6$!§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§6$!§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§+#C§ = Starling.§%!q§.§8#j§(_loc3_);
         }
      }
      
      public function get §?#^§() : Boolean
      {
         return false;
      }
      
      public function get §>#8§() : int
      {
         return this.§3!-§.numVertices / 4;
      }
      
      public function get §4#&§() : int
      {
         return this.§3"-§;
      }
      
      public function get §8!z§() : Number
      {
         return this.§^#=§;
      }
      
      public function set §8!z§(param1:Number) : void
      {
         this.§^#=§ = param1;
      }
      
      public function get §3"g§() : Number
      {
         return this.§?1§;
      }
      
      public function set §3"g§(param1:Number) : void
      {
         this.§?1§ = param1;
      }
      
      public function get §@$4§() : Number
      {
         return this.§2!>§;
      }
      
      public function set §@$4§(param1:Number) : void
      {
         this.§2!>§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§+!E§;
      }
   }
}
