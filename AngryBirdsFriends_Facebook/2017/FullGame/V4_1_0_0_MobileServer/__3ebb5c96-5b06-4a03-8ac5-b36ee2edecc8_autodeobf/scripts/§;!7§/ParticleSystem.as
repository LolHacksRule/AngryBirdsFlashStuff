package §;!7§
{
   import §&!v§.DisplayObject;
   import §&!v§.§^"L§;
   import §,!p§.AGALMiniAssembler;
   import §-"+§.Texture;
   import §7v§.§-D§;
   import §9+§.Starling;
   import §9+§.§]"+§;
   import §;"K§.§5#$§;
   import §>l§.§%"O§;
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
   
   public class ParticleSystem extends DisplayObject implements §5#$§
   {
       
      
      private var §9$0§:Texture;
      
      private var §]Q§:Vector.<§2#W§>;
      
      private var §3"u§:Number;
      
      private var §+!m§:Program3D;
      
      private var §>L§:Vector.<Number>;
      
      private var §6b§:Vector.<Number>;
      
      private var §4Z§:§%"O§;
      
      private var §^Z§:VertexBuffer3D;
      
      private var §0#m§:VertexBuffer3D;
      
      private var §2$4§:VertexBuffer3D;
      
      private var §`#F§:Vector.<uint>;
      
      private var §,#O§:IndexBuffer3D;
      
      private var §]#d§:int;
      
      private var §%!L§:int;
      
      private var §!$9§:Number;
      
      protected var §4!u§:Number;
      
      private var §]"X§:Number = 0.0;
      
      private var §[#w§:Number;
      
      protected var §8#!§:Number;
      
      protected var §-!?§:Number;
      
      protected var §=S§:Boolean;
      
      protected var §@!A§:String;
      
      protected var §;"<§:String;
      
      protected var §,"`§:int = 1;
      
      private var §]"R§:int = -1;
      
      private var §4[§:Boolean = false;
      
      private var §?#Z§:Number = 0.0;
      
      protected var §?!6§:Boolean = false;
      
      protected var §&!Q§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§&!Q§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§9$0§ = param1;
         this.§=S§ = param1.premultipliedAlpha;
         this.§]Q§ = new Vector.<§2#W§>(0,false);
         this.§>L§ = new Vector.<Number>();
         this.§6b§ = new Vector.<Number>();
         this.createProgram();
         this.§4Z§ = new §%"O§(0,this.§=S§);
         this.§`#F§ = new Vector.<uint>(0);
         this.§!$9§ = param2;
         this.§[#w§ = 0;
         this.§3"u§ = 0;
         this.§-!?§ = 0;
         this.§8#!§ = 0;
         this.§;"<§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§@!A§ = param4 || (!!this.§=S§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§&!H§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§^Z§)
         {
            this.§^Z§.dispose();
         }
         if(this.§0#m§)
         {
            this.§0#m§.dispose();
         }
         if(this.§2$4§)
         {
            this.§2$4§.dispose();
         }
         if(this.§,#O§)
         {
            this.§,#O§.dispose();
         }
         this.§>L§ = null;
         this.§6b§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §2#W§
      {
         return new §2#W§();
      }
      
      protected function initParticle(param1:§2#W§) : void
      {
         param1.x = this.§8#!§;
         param1.y = this.§-!?§;
         param1.§5#9§ = 0;
         param1.§9!=§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§2#W§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§5#9§ / param1.§9!=§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§5#9§ += param2;
      }
      
      private function §&!H§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§9#Q§;
         var _loc3_:int = this.§9#Q§ + param1;
         var _loc4_:§%"O§;
         (_loc4_ = new §%"O§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§9$0§.adjustVertexData(_loc4_,0,4);
         this.§]Q§.fixed = false;
         this.§`#F§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§]Q§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§>L§.push(0);
               this.§6b§.push(0);
               _loc7_++;
            }
            this.§4Z§.§5#f§(_loc4_);
            this.§`#F§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§]Q§.fixed = true;
         this.§`#F§.fixed = true;
         this.§4[§ = true;
      }
      
      private function §;!d§(param1:Context3D) : Boolean
      {
         if(!this.§4[§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-D§();
         }
         var _loc2_:int = this.§4Z§.numVertices / 4;
         if(this.§^Z§)
         {
            this.§^Z§.dispose();
         }
         if(this.§0#m§)
         {
            this.§0#m§.dispose();
         }
         if(this.§2$4§)
         {
            this.§2$4§.dispose();
         }
         if(this.§,#O§)
         {
            this.§,#O§.dispose();
         }
         this.§^Z§ = param1.createVertexBuffer(_loc2_ * 4,§%"O§.§1-§);
         this.§^Z§.uploadFromVector(this.§4Z§.§@8§,0,_loc2_ * 4);
         this.§0#m§ = param1.createVertexBuffer(_loc2_ * 4,§%"O§.§5q§);
         this.§0#m§.uploadFromVector(this.§4Z§.§ "e§,0,_loc2_ * 4);
         this.§2$4§ = param1.createVertexBuffer(_loc2_ * 4,§%"O§.§"#l§);
         this.§2$4§.uploadFromVector(this.§4Z§.§@"d§,0,_loc2_ * 4);
         this.§,#O§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§,#O§.uploadFromVector(this.§`#F§,0,_loc2_ * 6);
         this.§4[§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§!$9§ != 0)
         {
            this.§[#w§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§[#w§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §='§(param1);
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
      
      public function § !T§(param1:Number) : void
      {
         this.§2!X§(param1);
         this.§%"9§(null);
      }
      
      public function §2!X§(param1:Number) : void
      {
         this.§?#Z§ = param1;
      }
      
      private function §%"9§(param1:Matrix3D) : void
      {
         var _loc4_:§2#W§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§2#W§ = null;
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
         if(isNaN(this.§?#Z§) || this.§?#Z§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§?#Z§;
         this.§?#Z§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§]#d§)
         {
            if((_loc4_ = this.§]Q§[_loc3_]).§5#9§ < _loc4_.§9!=§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§]#d§ - 1)
               {
                  _loc10_ = this.§]Q§[this.§]#d§ - 1];
                  this.§]Q§[this.§]#d§ - 1] = _loc4_;
                  this.§]Q§[_loc3_] = _loc10_;
               }
               --this.§]#d§;
            }
         }
         if(this.§[#w§ > 0)
         {
            _loc11_ = 1 / this.§!$9§;
            this.§3"u§ += _loc2_;
            while(this.§3"u§ > 0)
            {
               if(this.§]#d§ == this.§9#Q§)
               {
                  this.§&!H§(this.§9#Q§);
               }
               _loc4_ = this.§]Q§[this.§]#d§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§3"u§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§4!u§))
               {
                  _loc12_ = _loc11_ * (1 - this.§4!u§ + Math.random() * this.§4!u§ * 2) + this.§]"X§;
               }
               this.§]"X§ += _loc11_ - _loc12_;
               this.§3"u§ -= _loc12_;
            }
            if(this.§[#w§ != Number.MAX_VALUE)
            {
               this.§[#w§ = Math.max(0,this.§[#w§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§9$0§.width / 2;
         var _loc9_:Number = this.§9$0§.height / 2;
         this.§%!L§ = 0;
         if(param1 && Starling.§?$#§)
         {
            _loc13_ = Starling.§?$#§.§@§;
            this.§ #j§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§]#d§)
            {
               _loc4_ = this.§]Q§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§6b§[_loc14_ * 3];
               _loc17_ = this.§6b§[_loc14_ * 3 + 1];
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
                  ++this.§%!L§;
                  if(this.§?!6§)
                  {
                     this.§4Z§.§4%§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§4Z§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§4Z§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§4Z§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§4Z§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§4Z§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§4Z§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§4Z§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§4Z§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function § #j§(param1:Matrix3D) : void
      {
         var _loc3_:§2#W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]#d§)
         {
            _loc3_ = this.§]Q§[_loc2_];
            this.§>L§[_loc2_ * 3] = _loc3_.x;
            this.§>L§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§>L§,this.§6b§);
      }
      
      override public function render(param1:§]"+§, param2:Number) : void
      {
         this.§%"9§(param1.mvpMatrix3D);
         if(this.§%!L§ == 0)
         {
            return;
         }
         param1.§&!K§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§=S§)
         {
            this.§&!Q§[0] = param2;
            this.§&!Q§[1] = param2;
            this.§&!Q§[2] = param2;
            this.§&!Q§[3] = param2;
         }
         else
         {
            this.§&!Q§[0] = 1;
            this.§&!Q§[1] = 1;
            this.§&!Q§[2] = 1;
            this.§&!Q§[3] = param2;
         }
         if(param1.§'!i§ != this.§]"R§)
         {
            this.§&!H§(0);
            this.createProgram();
            this.§]"R§ = param1.§'!i§;
         }
         if(!this.§;!d§(_loc3_))
         {
            if(this.§?!6§)
            {
               this.§0#m§.uploadFromVector(this.§4Z§.§ "e§,0,this.§%!L§ * 4);
            }
            this.§2$4§.uploadFromVector(this.§4Z§.§@"d§,0,this.§%!L§ * 4);
         }
         _loc3_.setBlendFactors(this.§@!A§,this.§;"<§);
         param1.§<$3§(this.§+!m§);
         _loc3_.setTextureAt(0,this.§9$0§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§&!Q§,1);
         _loc3_.setVertexBufferAt(0,this.§2$4§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§0#m§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§^Z§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§,#O§,0,this.§%!L§ * 2);
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
         var _loc1_:Boolean = this.§9$0§.mipMapping;
         var _loc2_:String = this.§9$0§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§,"`§ + (!!_loc1_ ? "+mm" : "");
         this.§+!m§ = Starling.§?$#§.§,T§(_loc3_);
         if(this.§+!m§ == null)
         {
            _loc4_ = this.§,"`§ != §^"L§.§&#=§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§?$#§.§?"E§(_loc3_,_loc8_.§+"3§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§+"3§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§+!m§ = Starling.§?$#§.§,T§(_loc3_);
         }
      }
      
      public function get §6#N§() : Boolean
      {
         return false;
      }
      
      public function get §9#Q§() : int
      {
         return this.§4Z§.numVertices / 4;
      }
      
      public function get §>#D§() : int
      {
         return this.§]#d§;
      }
      
      public function get §]##§() : Number
      {
         return this.§!$9§;
      }
      
      public function set §]##§(param1:Number) : void
      {
         this.§!$9§ = param1;
      }
      
      public function get §!]§() : Number
      {
         return this.§8#!§;
      }
      
      public function set §!]§(param1:Number) : void
      {
         this.§8#!§ = param1;
      }
      
      public function get §]#X§() : Number
      {
         return this.§-!?§;
      }
      
      public function set §]#X§(param1:Number) : void
      {
         this.§-!?§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§9$0§;
      }
   }
}
