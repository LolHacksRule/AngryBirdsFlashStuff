package §&$&§
{
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'!j§.§^$$§;
   import §,#=§.§0C§;
   import §0g§.§'"P§;
   import §6#H§.§<O§;
   import §6#H§.DisplayObject;
   import §]"Q§.AGALMiniAssembler;
   import §]#a§.§;L§;
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
   
   public class ParticleSystem extends DisplayObject implements §'"P§
   {
       
      
      private var §;!D§:Texture;
      
      private var §^U§:Vector.<§^"^§>;
      
      private var §3"F§:Number;
      
      private var §&"e§:Program3D;
      
      private var §=#`§:Vector.<Number>;
      
      private var §<!e§:Vector.<Number>;
      
      private var §0$9§:§0C§;
      
      private var §,$+§:VertexBuffer3D;
      
      private var §3"S§:VertexBuffer3D;
      
      private var §;!0§:VertexBuffer3D;
      
      private var §,!h§:Vector.<uint>;
      
      private var § #+§:IndexBuffer3D;
      
      private var §#$2§:int;
      
      private var §%#Y§:int;
      
      private var §!_§:Number;
      
      protected var §5!h§:Number;
      
      private var §-$2§:Number = 0.0;
      
      private var §'"r§:Number;
      
      protected var §'`§:Number;
      
      protected var §6#r§:Number;
      
      protected var §9! §:Boolean;
      
      protected var §`#3§:String;
      
      protected var §1<§:String;
      
      protected var §?$4§:int = 1;
      
      private var §3!q§:int = -1;
      
      private var §&"?§:Boolean = false;
      
      private var §'#I§:Number = 0.0;
      
      protected var §["y§:Boolean = false;
      
      protected var §<!j§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§<!j§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§;!D§ = param1;
         this.§9! § = param1.premultipliedAlpha;
         this.§^U§ = new Vector.<§^"^§>(0,false);
         this.§=#`§ = new Vector.<Number>();
         this.§<!e§ = new Vector.<Number>();
         this.createProgram();
         this.§0$9§ = new §0C§(0,this.§9! §);
         this.§,!h§ = new Vector.<uint>(0);
         this.§!_§ = param2;
         this.§'"r§ = 0;
         this.§3"F§ = 0;
         this.§6#r§ = 0;
         this.§'`§ = 0;
         this.§1<§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§`#3§ = param4 || (!!this.§9! § ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§2#g§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§,$+§)
         {
            this.§,$+§.dispose();
         }
         if(this.§3"S§)
         {
            this.§3"S§.dispose();
         }
         if(this.§;!0§)
         {
            this.§;!0§.dispose();
         }
         if(this.§ #+§)
         {
            this.§ #+§.dispose();
         }
         this.§=#`§ = null;
         this.§<!e§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §^"^§
      {
         return new §^"^§();
      }
      
      protected function initParticle(param1:§^"^§) : void
      {
         param1.x = this.§'`§;
         param1.y = this.§6#r§;
         param1.§7"A§ = 0;
         param1.§!E§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§^"^§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§7"A§ / param1.§!E§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§7"A§ += param2;
      }
      
      private function §2#g§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6#5§;
         var _loc3_:int = this.§6#5§ + param1;
         var _loc4_:§0C§;
         (_loc4_ = new §0C§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§;!D§.adjustVertexData(_loc4_,0,4);
         this.§^U§.fixed = false;
         this.§,!h§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§^U§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§=#`§.push(0);
               this.§<!e§.push(0);
               _loc7_++;
            }
            this.§0$9§.§]"P§(_loc4_);
            this.§,!h§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§^U§.fixed = true;
         this.§,!h§.fixed = true;
         this.§&"?§ = true;
      }
      
      private function §@#c§(param1:Context3D) : Boolean
      {
         if(!this.§&"?§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §;L§();
         }
         var _loc2_:int = this.§0$9§.numVertices / 4;
         if(this.§,$+§)
         {
            this.§,$+§.dispose();
         }
         if(this.§3"S§)
         {
            this.§3"S§.dispose();
         }
         if(this.§;!0§)
         {
            this.§;!0§.dispose();
         }
         if(this.§ #+§)
         {
            this.§ #+§.dispose();
         }
         this.§,$+§ = param1.createVertexBuffer(_loc2_ * 4,§0C§.§<!2§);
         this.§,$+§.uploadFromVector(this.§0$9§.§3#3§,0,_loc2_ * 4);
         this.§3"S§ = param1.createVertexBuffer(_loc2_ * 4,§0C§.§1!C§);
         this.§3"S§.uploadFromVector(this.§0$9§.§?#e§,0,_loc2_ * 4);
         this.§;!0§ = param1.createVertexBuffer(_loc2_ * 4,§0C§.§&#Y§);
         this.§;!0§.uploadFromVector(this.§0$9§.§8"B§,0,_loc2_ * 4);
         this.§ #+§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§ #+§.uploadFromVector(this.§,!h§,0,_loc2_ * 6);
         this.§&"?§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§!_§ != 0)
         {
            this.§'"r§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§'"r§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §+#W§(param1);
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
      
      public function §^"3§(param1:Number) : void
      {
         this.§-"%§(param1);
         this.§%'§(null);
      }
      
      public function §-"%§(param1:Number) : void
      {
         this.§'#I§ = param1;
      }
      
      private function §%'§(param1:Matrix3D) : void
      {
         var _loc4_:§^"^§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§^"^§ = null;
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
         if(isNaN(this.§'#I§) || this.§'#I§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§'#I§;
         this.§'#I§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§#$2§)
         {
            if((_loc4_ = this.§^U§[_loc3_]).§7"A§ < _loc4_.§!E§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§#$2§ - 1)
               {
                  _loc10_ = this.§^U§[this.§#$2§ - 1];
                  this.§^U§[this.§#$2§ - 1] = _loc4_;
                  this.§^U§[_loc3_] = _loc10_;
               }
               --this.§#$2§;
            }
         }
         if(this.§'"r§ > 0)
         {
            _loc11_ = 1 / this.§!_§;
            this.§3"F§ += _loc2_;
            while(this.§3"F§ > 0)
            {
               if(this.§#$2§ == this.§6#5§)
               {
                  this.§2#g§(this.§6#5§);
               }
               _loc4_ = this.§^U§[this.§#$2§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§3"F§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§5!h§))
               {
                  _loc12_ = _loc11_ * (1 - this.§5!h§ + Math.random() * this.§5!h§ * 2) + this.§-$2§;
               }
               this.§-$2§ += _loc11_ - _loc12_;
               this.§3"F§ -= _loc12_;
            }
            if(this.§'"r§ != Number.MAX_VALUE)
            {
               this.§'"r§ = Math.max(0,this.§'"r§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§;!D§.width / 2;
         var _loc9_:Number = this.§;!D§.height / 2;
         this.§%#Y§ = 0;
         if(param1 && Starling.§>x§)
         {
            _loc13_ = Starling.§>x§.§=$C§;
            this.§?!+§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§#$2§)
            {
               _loc4_ = this.§^U§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§<!e§[_loc14_ * 3];
               _loc17_ = this.§<!e§[_loc14_ * 3 + 1];
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
                  ++this.§%#Y§;
                  if(this.§["y§)
                  {
                     this.§0$9§.§0"§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§0$9§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§0$9§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§0$9§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§0$9§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§0$9§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§0$9§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§0$9§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§0$9§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function §?!+§(param1:Matrix3D) : void
      {
         var _loc3_:§^"^§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#$2§)
         {
            _loc3_ = this.§^U§[_loc2_];
            this.§=#`§[_loc2_ * 3] = _loc3_.x;
            this.§=#`§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§=#`§,this.§<!e§);
      }
      
      override public function render(param1:§^$$§, param2:Number) : void
      {
         this.§%'§(param1.mvpMatrix3D);
         if(this.§%#Y§ == 0)
         {
            return;
         }
         param1.§5!#§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§9! §)
         {
            this.§<!j§[0] = param2;
            this.§<!j§[1] = param2;
            this.§<!j§[2] = param2;
            this.§<!j§[3] = param2;
         }
         else
         {
            this.§<!j§[0] = 1;
            this.§<!j§[1] = 1;
            this.§<!j§[2] = 1;
            this.§<!j§[3] = param2;
         }
         if(param1.§9"N§ != this.§3!q§)
         {
            this.§2#g§(0);
            this.createProgram();
            this.§3!q§ = param1.§9"N§;
         }
         if(!this.§@#c§(_loc3_))
         {
            if(this.§["y§)
            {
               this.§3"S§.uploadFromVector(this.§0$9§.§?#e§,0,this.§%#Y§ * 4);
            }
            this.§;!0§.uploadFromVector(this.§0$9§.§8"B§,0,this.§%#Y§ * 4);
         }
         _loc3_.setBlendFactors(this.§`#3§,this.§1<§);
         param1.§8$C§(this.§&"e§);
         _loc3_.setTextureAt(0,this.§;!D§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§<!j§,1);
         _loc3_.setVertexBufferAt(0,this.§;!0§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§3"S§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§,$+§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§ #+§,0,this.§%#Y§ * 2);
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
         var _loc1_:Boolean = this.§;!D§.mipMapping;
         var _loc2_:String = this.§;!D§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§?$4§ + (!!_loc1_ ? "+mm" : "");
         this.§&"e§ = Starling.§>x§.§!"l§(_loc3_);
         if(this.§&"e§ == null)
         {
            _loc4_ = this.§?$4§ != §<O§.§]X§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§>x§.§;$>§(_loc3_,_loc8_.§5#?§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§5#?§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§&"e§ = Starling.§>x§.§!"l§(_loc3_);
         }
      }
      
      public function get §"$C§() : Boolean
      {
         return false;
      }
      
      public function get §6#5§() : int
      {
         return this.§0$9§.numVertices / 4;
      }
      
      public function get §+!6§() : int
      {
         return this.§#$2§;
      }
      
      public function get §!#d§() : Number
      {
         return this.§!_§;
      }
      
      public function set §!#d§(param1:Number) : void
      {
         this.§!_§ = param1;
      }
      
      public function get §9!^§() : Number
      {
         return this.§'`§;
      }
      
      public function set §9!^§(param1:Number) : void
      {
         this.§'`§ = param1;
      }
      
      public function get §8]§() : Number
      {
         return this.§6#r§;
      }
      
      public function set §8]§(param1:Number) : void
      {
         this.§6#r§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§;!D§;
      }
   }
}
