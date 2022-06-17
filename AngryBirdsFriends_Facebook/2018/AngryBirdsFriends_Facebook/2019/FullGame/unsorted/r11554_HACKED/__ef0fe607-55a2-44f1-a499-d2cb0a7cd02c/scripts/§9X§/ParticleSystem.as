package §9X§
{
   import §!6§.§9$'§;
   import §!6§.DisplayObject;
   import §""'§.Texture;
   import §#"l§.§ #b§;
   import §'!I§.AGALMiniAssembler;
   import §3!z§.§^!g§;
   import §6#k§.§8C§;
   import §]"P§.§4!9§;
   import §]"P§.Starling;
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
   
   public class ParticleSystem extends DisplayObject implements §8C§
   {
       
      
      private var §;Z§:Texture;
      
      private var §0"t§:Vector.<§3#5§>;
      
      private var §0#+§:Number;
      
      private var §;§:Program3D;
      
      private var § "n§:Vector.<Number>;
      
      private var §3!p§:Vector.<Number>;
      
      private var §[#7§:§ #b§;
      
      private var §&"Z§:VertexBuffer3D;
      
      private var §?E§:VertexBuffer3D;
      
      private var §3#x§:VertexBuffer3D;
      
      private var §7!n§:Vector.<uint>;
      
      private var §,#c§:IndexBuffer3D;
      
      private var §+#O§:int;
      
      private var §-#e§:int;
      
      private var §["t§:Number;
      
      protected var § #<§:Number;
      
      private var §#!M§:Number = 0.0;
      
      private var §]#-§:Number;
      
      protected var §4#X§:Number;
      
      protected var §"#J§:Number;
      
      protected var §-$&§:Boolean;
      
      protected var §7"d§:String;
      
      protected var §+&§:String;
      
      protected var §28§:int = 1;
      
      private var §]!2§:int = -1;
      
      private var §?#j§:Boolean = false;
      
      private var §9!k§:Number = 0.0;
      
      protected var §,#H§:Boolean = false;
      
      protected var §!#8§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§!#8§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§;Z§ = param1;
         this.§-$&§ = param1.premultipliedAlpha;
         this.§0"t§ = new Vector.<§3#5§>(0,false);
         this.§ "n§ = new Vector.<Number>();
         this.§3!p§ = new Vector.<Number>();
         this.createProgram();
         this.§[#7§ = new § #b§(0,this.§-$&§);
         this.§7!n§ = new Vector.<uint>(0);
         this.§["t§ = param2;
         this.§]#-§ = 0;
         this.§0#+§ = 0;
         this.§"#J§ = 0;
         this.§4#X§ = 0;
         this.§+&§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§7"d§ = param4 || (!!this.§-$&§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§%U§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§&"Z§)
         {
            this.§&"Z§.dispose();
         }
         if(this.§?E§)
         {
            this.§?E§.dispose();
         }
         if(this.§3#x§)
         {
            this.§3#x§.dispose();
         }
         if(this.§,#c§)
         {
            this.§,#c§.dispose();
         }
         this.§ "n§ = null;
         this.§3!p§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §3#5§
      {
         return new §3#5§();
      }
      
      protected function initParticle(param1:§3#5§) : void
      {
         param1.x = this.§4#X§;
         param1.y = this.§"#J§;
         param1.§,$B§ = 0;
         param1.§^!1§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§3#5§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§,$B§ / param1.§^!1§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§,$B§ += param2;
      }
      
      private function §%U§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§[4§;
         var _loc3_:int = this.§[4§ + param1;
         var _loc4_:§ #b§;
         (_loc4_ = new § #b§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§;Z§.adjustVertexData(_loc4_,0,4);
         this.§0"t§.fixed = false;
         this.§7!n§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§0"t§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§ "n§.push(0);
               this.§3!p§.push(0);
               _loc7_++;
            }
            this.§[#7§.§ #8§(_loc4_);
            this.§7!n§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§0"t§.fixed = true;
         this.§7!n§.fixed = true;
         this.§?#j§ = true;
      }
      
      private function §6!w§(param1:Context3D) : Boolean
      {
         if(!this.§?#j§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §^!g§();
         }
         var _loc2_:int = this.§[#7§.numVertices / 4;
         if(this.§&"Z§)
         {
            this.§&"Z§.dispose();
         }
         if(this.§?E§)
         {
            this.§?E§.dispose();
         }
         if(this.§3#x§)
         {
            this.§3#x§.dispose();
         }
         if(this.§,#c§)
         {
            this.§,#c§.dispose();
         }
         this.§&"Z§ = param1.createVertexBuffer(_loc2_ * 4,§ #b§.§&"q§);
         this.§&"Z§.uploadFromVector(this.§[#7§.§`#d§,0,_loc2_ * 4);
         this.§?E§ = param1.createVertexBuffer(_loc2_ * 4,§ #b§.§@5§);
         this.§?E§.uploadFromVector(this.§[#7§.§[#h§,0,_loc2_ * 4);
         this.§3#x§ = param1.createVertexBuffer(_loc2_ * 4,§ #b§.§%";§);
         this.§3#x§.uploadFromVector(this.§[#7§.§>!H§,0,_loc2_ * 4);
         this.§,#c§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§,#c§.uploadFromVector(this.§7!n§,0,_loc2_ * 6);
         this.§?#j§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§["t§ != 0)
         {
            this.§]#-§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§]#-§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §!"?§(param1);
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
      
      public function §&"9§(param1:Number) : void
      {
         this.§#+§(param1);
         this.§0"v§(null);
      }
      
      public function §#+§(param1:Number) : void
      {
         this.§9!k§ = param1;
      }
      
      private function §0"v§(param1:Matrix3D) : void
      {
         var _loc4_:§3#5§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§3#5§ = null;
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
         if(isNaN(this.§9!k§) || this.§9!k§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§9!k§;
         this.§9!k§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+#O§)
         {
            if((_loc4_ = this.§0"t§[_loc3_]).§,$B§ < _loc4_.§^!1§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§+#O§ - 1)
               {
                  _loc10_ = this.§0"t§[this.§+#O§ - 1];
                  this.§0"t§[this.§+#O§ - 1] = _loc4_;
                  this.§0"t§[_loc3_] = _loc10_;
               }
               --this.§+#O§;
            }
         }
         if(this.§]#-§ > 0)
         {
            _loc11_ = 1 / this.§["t§;
            this.§0#+§ += _loc2_;
            while(this.§0#+§ > 0)
            {
               if(this.§+#O§ == this.§[4§)
               {
                  this.§%U§(this.§[4§);
               }
               _loc4_ = this.§0"t§[this.§+#O§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§0#+§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§ #<§))
               {
                  _loc12_ = _loc11_ * (1 - this.§ #<§ + Math.random() * this.§ #<§ * 2) + this.§#!M§;
               }
               this.§#!M§ += _loc11_ - _loc12_;
               this.§0#+§ -= _loc12_;
            }
            if(this.§]#-§ != Number.MAX_VALUE)
            {
               this.§]#-§ = Math.max(0,this.§]#-§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§;Z§.width / 2;
         var _loc9_:Number = this.§;Z§.height / 2;
         this.§-#e§ = 0;
         if(param1 && Starling.§3!I§)
         {
            _loc13_ = Starling.§3!I§.§1#!§;
            this.§+$@§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§+#O§)
            {
               _loc4_ = this.§0"t§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§3!p§[_loc14_ * 3];
               _loc17_ = this.§3!p§[_loc14_ * 3 + 1];
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
                  ++this.§-#e§;
                  if(this.§,#H§)
                  {
                     this.§[#7§.§3"a§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§[#7§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§[#7§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§[#7§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§[#7§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§[#7§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§[#7§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§[#7§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§[#7§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function §+$@§(param1:Matrix3D) : void
      {
         var _loc3_:§3#5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+#O§)
         {
            _loc3_ = this.§0"t§[_loc2_];
            this.§ "n§[_loc2_ * 3] = _loc3_.x;
            this.§ "n§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§ "n§,this.§3!p§);
      }
      
      override public function render(param1:§4!9§, param2:Number) : void
      {
         this.§0"v§(param1.mvpMatrix3D);
         if(this.§-#e§ == 0)
         {
            return;
         }
         param1.§%"6§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§-$&§)
         {
            this.§!#8§[0] = param2;
            this.§!#8§[1] = param2;
            this.§!#8§[2] = param2;
            this.§!#8§[3] = param2;
         }
         else
         {
            this.§!#8§[0] = 1;
            this.§!#8§[1] = 1;
            this.§!#8§[2] = 1;
            this.§!#8§[3] = param2;
         }
         if(param1.§'y§ != this.§]!2§)
         {
            this.§%U§(0);
            this.createProgram();
            this.§]!2§ = param1.§'y§;
         }
         if(!this.§6!w§(_loc3_))
         {
            if(this.§,#H§)
            {
               this.§?E§.uploadFromVector(this.§[#7§.§[#h§,0,this.§-#e§ * 4);
            }
            this.§3#x§.uploadFromVector(this.§[#7§.§>!H§,0,this.§-#e§ * 4);
         }
         _loc3_.setBlendFactors(this.§7"d§,this.§+&§);
         param1.§=h§(this.§;§);
         _loc3_.setTextureAt(0,this.§;Z§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§!#8§,1);
         _loc3_.setVertexBufferAt(0,this.§3#x§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§?E§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§&"Z§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§,#c§,0,this.§-#e§ * 2);
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
         var _loc1_:Boolean = this.§;Z§.mipMapping;
         var _loc2_:String = this.§;Z§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§28§ + (!!_loc1_ ? "+mm" : "");
         this.§;§ = Starling.§3!I§.§"#r§(_loc3_);
         if(this.§;§ == null)
         {
            _loc4_ = this.§28§ != §9$'§.§;!,§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§3!I§.§`"I§(_loc3_,_loc8_.§-l§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§-l§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§;§ = Starling.§3!I§.§"#r§(_loc3_);
         }
      }
      
      public function get §?#d§() : Boolean
      {
         return false;
      }
      
      public function get §[4§() : int
      {
         return this.§[#7§.numVertices / 4;
      }
      
      public function get §=k§() : int
      {
         return this.§+#O§;
      }
      
      public function get §,!^§() : Number
      {
         return this.§["t§;
      }
      
      public function set §,!^§(param1:Number) : void
      {
         this.§["t§ = param1;
      }
      
      public function get §3$>§() : Number
      {
         return this.§4#X§;
      }
      
      public function set §3$>§(param1:Number) : void
      {
         this.§4#X§ = param1;
      }
      
      public function get §=7§() : Number
      {
         return this.§"#J§;
      }
      
      public function set §=7§(param1:Number) : void
      {
         this.§"#J§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§;Z§;
      }
   }
}
