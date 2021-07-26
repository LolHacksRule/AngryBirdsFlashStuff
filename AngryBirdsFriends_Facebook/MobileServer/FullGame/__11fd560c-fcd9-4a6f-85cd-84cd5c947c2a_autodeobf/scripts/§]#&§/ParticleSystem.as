package §]#&§
{
   import §!!1§.AGALMiniAssembler;
   import §&!2§.§;"=§;
   import §+#B§.§;$%§;
   import §5!D§.§`e§;
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §?"e§.§[!Z§;
   import §^"S§.§9$=§;
   import §^"S§.DisplayObject;
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
   
   public class ParticleSystem extends DisplayObject implements §;"=§
   {
       
      
      private var §6!4§:Texture;
      
      private var §&""§:Vector.<§%$0§>;
      
      private var §6"8§:Number;
      
      private var §@#o§:Program3D;
      
      private var §[!L§:Vector.<Number>;
      
      private var §%$>§:Vector.<Number>;
      
      private var §3!n§:§`e§;
      
      private var §!"_§:VertexBuffer3D;
      
      private var §3"6§:VertexBuffer3D;
      
      private var §?!T§:VertexBuffer3D;
      
      private var §^"8§:Vector.<uint>;
      
      private var §#"?§:IndexBuffer3D;
      
      private var §`#9§:int;
      
      private var §[!M§:int;
      
      private var §<"B§:Number;
      
      protected var §1$;§:Number;
      
      private var §7!8§:Number = 0.0;
      
      private var §2!#§:Number;
      
      protected var §0"P§:Number;
      
      protected var §]$ §:Number;
      
      protected var §!D§:Boolean;
      
      protected var §2$4§:String;
      
      protected var §@!m§:String;
      
      protected var §]$3§:int = 1;
      
      private var §`$>§:int = -1;
      
      private var §="%§:Boolean = false;
      
      private var §#"C§:Number = 0.0;
      
      protected var §+x§:Boolean = false;
      
      protected var §1!"§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§1!"§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§6!4§ = param1;
         this.§!D§ = param1.premultipliedAlpha;
         this.§&""§ = new Vector.<§%$0§>(0,false);
         this.§[!L§ = new Vector.<Number>();
         this.§%$>§ = new Vector.<Number>();
         this.createProgram();
         this.§3!n§ = new §`e§(0,this.§!D§);
         this.§^"8§ = new Vector.<uint>(0);
         this.§<"B§ = param2;
         this.§2!#§ = 0;
         this.§6"8§ = 0;
         this.§]$ § = 0;
         this.§0"P§ = 0;
         this.§@!m§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§2$4§ = param4 || (!!this.§!D§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§8b§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!"_§)
         {
            this.§!"_§.dispose();
         }
         if(this.§3"6§)
         {
            this.§3"6§.dispose();
         }
         if(this.§?!T§)
         {
            this.§?!T§.dispose();
         }
         if(this.§#"?§)
         {
            this.§#"?§.dispose();
         }
         this.§[!L§ = null;
         this.§%$>§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §%$0§
      {
         return new §%$0§();
      }
      
      protected function initParticle(param1:§%$0§) : void
      {
         param1.x = this.§0"P§;
         param1.y = this.§]$ §;
         param1.§-#M§ = 0;
         param1.§5"Q§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§%$0§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§-#M§ / param1.§5"Q§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§-#M§ += param2;
      }
      
      private function §8b§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§,'§;
         var _loc3_:int = this.§,'§ + param1;
         var _loc4_:§`e§;
         (_loc4_ = new §`e§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§6!4§.adjustVertexData(_loc4_,0,4);
         this.§&""§.fixed = false;
         this.§^"8§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§&""§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§[!L§.push(0);
               this.§%$>§.push(0);
               _loc7_++;
            }
            this.§3!n§.§8"t§(_loc4_);
            this.§^"8§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§&""§.fixed = true;
         this.§^"8§.fixed = true;
         this.§="%§ = true;
      }
      
      private function §=d§(param1:Context3D) : Boolean
      {
         if(!this.§="%§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §;$%§();
         }
         var _loc2_:int = this.§3!n§.numVertices / 4;
         if(this.§!"_§)
         {
            this.§!"_§.dispose();
         }
         if(this.§3"6§)
         {
            this.§3"6§.dispose();
         }
         if(this.§?!T§)
         {
            this.§?!T§.dispose();
         }
         if(this.§#"?§)
         {
            this.§#"?§.dispose();
         }
         this.§!"_§ = param1.createVertexBuffer(_loc2_ * 4,§`e§.§,$9§);
         this.§!"_§.uploadFromVector(this.§3!n§.§7""§,0,_loc2_ * 4);
         this.§3"6§ = param1.createVertexBuffer(_loc2_ * 4,§`e§.§#'§);
         this.§3"6§.uploadFromVector(this.§3!n§.§3"`§,0,_loc2_ * 4);
         this.§?!T§ = param1.createVertexBuffer(_loc2_ * 4,§`e§.§9$3§);
         this.§?!T§.uploadFromVector(this.§3!n§.§;!M§,0,_loc2_ * 4);
         this.§#"?§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§#"?§.uploadFromVector(this.§^"8§,0,_loc2_ * 6);
         this.§="%§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§<"B§ != 0)
         {
            this.§2!#§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§2!#§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §3[§(param1);
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
      
      public function §##f§(param1:Number) : void
      {
         this.§'#F§(param1);
         this.§,J§(null);
      }
      
      public function §'#F§(param1:Number) : void
      {
         this.§#"C§ = param1;
      }
      
      private function §,J§(param1:Matrix3D) : void
      {
         var _loc4_:§%$0§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§%$0§ = null;
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
         if(isNaN(this.§#"C§) || this.§#"C§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§#"C§;
         this.§#"C§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§`#9§)
         {
            if((_loc4_ = this.§&""§[_loc3_]).§-#M§ < _loc4_.§5"Q§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§`#9§ - 1)
               {
                  _loc10_ = this.§&""§[this.§`#9§ - 1];
                  this.§&""§[this.§`#9§ - 1] = _loc4_;
                  this.§&""§[_loc3_] = _loc10_;
               }
               --this.§`#9§;
            }
         }
         if(this.§2!#§ > 0)
         {
            _loc11_ = 1 / this.§<"B§;
            this.§6"8§ += _loc2_;
            while(this.§6"8§ > 0)
            {
               if(this.§`#9§ == this.§,'§)
               {
                  this.§8b§(this.§,'§);
               }
               _loc4_ = this.§&""§[this.§`#9§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6"8§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§1$;§))
               {
                  _loc12_ = _loc11_ * (1 - this.§1$;§ + Math.random() * this.§1$;§ * 2) + this.§7!8§;
               }
               this.§7!8§ += _loc11_ - _loc12_;
               this.§6"8§ -= _loc12_;
            }
            if(this.§2!#§ != Number.MAX_VALUE)
            {
               this.§2!#§ = Math.max(0,this.§2!#§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§6!4§.width / 2;
         var _loc9_:Number = this.§6!4§.height / 2;
         this.§[!M§ = 0;
         if(param1 && Starling.§@#K§)
         {
            _loc13_ = Starling.§@#K§.§[m§;
            this.§@"]§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§`#9§)
            {
               _loc4_ = this.§&""§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§%$>§[_loc14_ * 3];
               _loc17_ = this.§%$>§[_loc14_ * 3 + 1];
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
                  ++this.§[!M§;
                  if(this.§+x§)
                  {
                     this.§3!n§.§^#L§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§3!n§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§3!n§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§3!n§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§3!n§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§3!n§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§3!n§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§3!n§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§3!n§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function §@"]§(param1:Matrix3D) : void
      {
         var _loc3_:§%$0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`#9§)
         {
            _loc3_ = this.§&""§[_loc2_];
            this.§[!L§[_loc2_ * 3] = _loc3_.x;
            this.§[!L§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§[!L§,this.§%$>§);
      }
      
      override public function render(param1:§[!Z§, param2:Number) : void
      {
         this.§,J§(param1.mvpMatrix3D);
         if(this.§[!M§ == 0)
         {
            return;
         }
         param1.§>#s§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§!D§)
         {
            this.§1!"§[0] = param2;
            this.§1!"§[1] = param2;
            this.§1!"§[2] = param2;
            this.§1!"§[3] = param2;
         }
         else
         {
            this.§1!"§[0] = 1;
            this.§1!"§[1] = 1;
            this.§1!"§[2] = 1;
            this.§1!"§[3] = param2;
         }
         if(param1.§!!N§ != this.§`$>§)
         {
            this.§8b§(0);
            this.createProgram();
            this.§`$>§ = param1.§!!N§;
         }
         if(!this.§=d§(_loc3_))
         {
            if(this.§+x§)
            {
               this.§3"6§.uploadFromVector(this.§3!n§.§3"`§,0,this.§[!M§ * 4);
            }
            this.§?!T§.uploadFromVector(this.§3!n§.§;!M§,0,this.§[!M§ * 4);
         }
         _loc3_.setBlendFactors(this.§2$4§,this.§@!m§);
         param1.§5U§(this.§@#o§);
         _loc3_.setTextureAt(0,this.§6!4§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§1!"§,1);
         _loc3_.setVertexBufferAt(0,this.§?!T§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§3"6§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§!"_§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§#"?§,0,this.§[!M§ * 2);
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
         var _loc1_:Boolean = this.§6!4§.mipMapping;
         var _loc2_:String = this.§6!4§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§]$3§ + (!!_loc1_ ? "+mm" : "");
         this.§@#o§ = Starling.§@#K§.§"#F§(_loc3_);
         if(this.§@#o§ == null)
         {
            _loc4_ = this.§]$3§ != §9$=§.§^"9§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§@#K§.§;F§(_loc3_,_loc8_.§2#1§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§2#1§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§@#o§ = Starling.§@#K§.§"#F§(_loc3_);
         }
      }
      
      public function get §'#[§() : Boolean
      {
         return false;
      }
      
      public function get §,'§() : int
      {
         return this.§3!n§.numVertices / 4;
      }
      
      public function get §#"W§() : int
      {
         return this.§`#9§;
      }
      
      public function get §;"_§() : Number
      {
         return this.§<"B§;
      }
      
      public function set §;"_§(param1:Number) : void
      {
         this.§<"B§ = param1;
      }
      
      public function get §9D§() : Number
      {
         return this.§0"P§;
      }
      
      public function set §9D§(param1:Number) : void
      {
         this.§0"P§ = param1;
      }
      
      public function get §>$!§() : Number
      {
         return this.§]$ §;
      }
      
      public function set §>$!§(param1:Number) : void
      {
         this.§]$ § = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§6!4§;
      }
   }
}
