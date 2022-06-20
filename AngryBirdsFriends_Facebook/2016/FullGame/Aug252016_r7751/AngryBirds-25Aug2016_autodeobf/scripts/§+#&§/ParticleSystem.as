package §+#&§
{
   import §'#Z§.§1#w§;
   import §1&§.Texture;
   import §4"D§.§,#@§;
   import §9#U§.AGALMiniAssembler;
   import §9$§.§3f§;
   import §9$§.DisplayObject;
   import §[,§.§4#r§;
   import §^a§.§'"1§;
   import §^a§.Starling;
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
   
   public class ParticleSystem extends DisplayObject implements §4#r§
   {
       
      
      private var §3!L§:Texture;
      
      private var §%"b§:Vector.<§;5§>;
      
      private var §="X§:Number;
      
      private var §"f§:Program3D;
      
      private var §7!?§:Vector.<Number>;
      
      private var §=#_§:Vector.<Number>;
      
      private var §'#B§:§,#@§;
      
      private var §0#4§:VertexBuffer3D;
      
      private var §4$7§:VertexBuffer3D;
      
      private var §5$0§:VertexBuffer3D;
      
      private var §[n§:Vector.<uint>;
      
      private var §=t§:IndexBuffer3D;
      
      private var §+!J§:int;
      
      private var §;T§:int;
      
      private var §8#5§:Number;
      
      protected var §7#w§:Number;
      
      private var §4"1§:Number = 0.0;
      
      private var §4$;§:Number;
      
      protected var §]K§:Number;
      
      protected var §<$4§:Number;
      
      protected var §^!-§:Boolean;
      
      protected var §9<§:String;
      
      protected var §!!;§:String;
      
      protected var §<"b§:int = 1;
      
      private var §]#I§:int = -1;
      
      private var §#x§:Boolean = false;
      
      private var §`#F§:Number = 0.0;
      
      protected var §-!>§:Boolean = false;
      
      protected var §]#7§:Vector.<Number>;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         this.§]#7§ = new Vector.<Number>();
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§3!L§ = param1;
         this.§^!-§ = param1.premultipliedAlpha;
         this.§%"b§ = new Vector.<§;5§>(0,false);
         this.§7!?§ = new Vector.<Number>();
         this.§=#_§ = new Vector.<Number>();
         this.createProgram();
         this.§'#B§ = new §,#@§(0,this.§^!-§);
         this.§[n§ = new Vector.<uint>(0);
         this.§8#5§ = param2;
         this.§4$;§ = 0;
         this.§="X§ = 0;
         this.§<$4§ = 0;
         this.§]K§ = 0;
         this.§!!;§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§9<§ = param4 || (!!this.§^!-§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^!V§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§0#4§)
         {
            this.§0#4§.dispose();
         }
         if(this.§4$7§)
         {
            this.§4$7§.dispose();
         }
         if(this.§5$0§)
         {
            this.§5$0§.dispose();
         }
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         this.§7!?§ = null;
         this.§=#_§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §;5§
      {
         return new §;5§();
      }
      
      protected function initParticle(param1:§;5§) : void
      {
         param1.x = this.§]K§;
         param1.y = this.§<$4§;
         param1.§<$!§ = 0;
         param1.§;B§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§;5§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§<$!§ / param1.§;B§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§<$!§ += param2;
      }
      
      private function §^!V§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§]#_§;
         var _loc3_:int = this.§]#_§ + param1;
         var _loc4_:§,#@§;
         (_loc4_ = new §,#@§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§3!L§.adjustVertexData(_loc4_,0,4);
         this.§%"b§.fixed = false;
         this.§[n§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§%"b§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§7!?§.push(0);
               this.§=#_§.push(0);
               _loc7_++;
            }
            this.§'#B§.§&!o§(_loc4_);
            this.§[n§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§%"b§.fixed = true;
         this.§[n§.fixed = true;
         this.§#x§ = true;
      }
      
      private function §2"_§(param1:Context3D) : Boolean
      {
         if(!this.§#x§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §1#w§();
         }
         var _loc2_:int = this.§'#B§.numVertices / 4;
         if(this.§0#4§)
         {
            this.§0#4§.dispose();
         }
         if(this.§4$7§)
         {
            this.§4$7§.dispose();
         }
         if(this.§5$0§)
         {
            this.§5$0§.dispose();
         }
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         this.§0#4§ = param1.createVertexBuffer(_loc2_ * 4,§,#@§.§&$-§);
         this.§0#4§.uploadFromVector(this.§'#B§.§4!&§,0,_loc2_ * 4);
         this.§4$7§ = param1.createVertexBuffer(_loc2_ * 4,§,#@§.§"[§);
         this.§4$7§.uploadFromVector(this.§'#B§.§3#7§,0,_loc2_ * 4);
         this.§5$0§ = param1.createVertexBuffer(_loc2_ * 4,§,#@§.§74§);
         this.§5$0§.uploadFromVector(this.§'#B§.§!3§,0,_loc2_ * 4);
         this.§=t§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=t§.uploadFromVector(this.§[n§,0,_loc2_ * 6);
         this.§#x§ = false;
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§8#5§ != 0)
         {
            this.§4$;§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§4$;§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §"i§(param1);
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
      
      public function §;9§(param1:Number) : void
      {
         this.§%"f§(param1);
         this.§2#t§(null);
      }
      
      public function §%"f§(param1:Number) : void
      {
         this.§`#F§ = param1;
      }
      
      private function §2#t§(param1:Matrix3D) : void
      {
         var _loc4_:§;5§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:§;5§ = null;
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
         if(isNaN(this.§`#F§) || this.§`#F§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§`#F§;
         this.§`#F§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+!J§)
         {
            if((_loc4_ = this.§%"b§[_loc3_]).§<$!§ < _loc4_.§;B§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§+!J§ - 1)
               {
                  _loc10_ = this.§%"b§[this.§+!J§ - 1];
                  this.§%"b§[this.§+!J§ - 1] = _loc4_;
                  this.§%"b§[_loc3_] = _loc10_;
               }
               --this.§+!J§;
            }
         }
         if(this.§4$;§ > 0)
         {
            _loc11_ = 1 / this.§8#5§;
            this.§="X§ += _loc2_;
            while(this.§="X§ > 0)
            {
               if(this.§+!J§ == this.§]#_§)
               {
                  this.§^!V§(this.§]#_§);
               }
               _loc4_ = this.§%"b§[this.§+!J§++];
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§="X§);
               _loc12_ = _loc11_;
               if(!isNaN(this.§7#w§))
               {
                  _loc12_ = _loc11_ * (1 - this.§7#w§ + Math.random() * this.§7#w§ * 2) + this.§4"1§;
               }
               this.§4"1§ += _loc11_ - _loc12_;
               this.§="X§ -= _loc12_;
            }
            if(this.§4$;§ != Number.MAX_VALUE)
            {
               this.§4$;§ = Math.max(0,this.§4$;§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§3!L§.width / 2;
         var _loc9_:Number = this.§3!L§.height / 2;
         this.§;T§ = 0;
         if(param1 && Starling.§<#`§)
         {
            _loc13_ = Starling.§<#`§.§'"o§;
            this.§-"e§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§+!J§)
            {
               _loc4_ = this.§%"b§[_loc14_];
               _loc15_ = true;
               _loc16_ = this.§=#_§[_loc14_ * 3];
               _loc17_ = this.§=#_§[_loc14_ * 3 + 1];
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
                  ++this.§;T§;
                  if(this.§-!>§)
                  {
                     this.§'#B§.§=#$§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§'#B§.setPosition(_loc5_++,_loc6_ - _loc24_ - _loc27_,_loc7_ + _loc25_ - _loc26_);
                     this.§'#B§.setPosition(_loc5_++,_loc6_ + _loc24_ - _loc27_,_loc7_ - _loc25_ - _loc26_);
                     this.§'#B§.setPosition(_loc5_++,_loc6_ - _loc24_ + _loc27_,_loc7_ + _loc25_ + _loc26_);
                     this.§'#B§.setPosition(_loc5_++,_loc6_ + _loc24_ + _loc27_,_loc7_ - _loc25_ + _loc26_);
                  }
                  else
                  {
                     this.§'#B§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§'#B§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§'#B§.setPosition(_loc5_++,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§'#B§.setPosition(_loc5_++,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
               }
               _loc14_++;
            }
         }
      }
      
      private function §-"e§(param1:Matrix3D) : void
      {
         var _loc3_:§;5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!J§)
         {
            _loc3_ = this.§%"b§[_loc2_];
            this.§7!?§[_loc2_ * 3] = _loc3_.x;
            this.§7!?§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§7!?§,this.§=#_§);
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         this.§2#t§(param1.mvpMatrix3D);
         if(this.§;T§ == 0)
         {
            return;
         }
         param1.§^!u§();
         param2 *= this.alpha;
         var _loc3_:Context3D = param1.context;
         if(_loc3_ == null)
         {
            return;
         }
         if(this.§^!-§)
         {
            this.§]#7§[0] = param2;
            this.§]#7§[1] = param2;
            this.§]#7§[2] = param2;
            this.§]#7§[3] = param2;
         }
         else
         {
            this.§]#7§[0] = 1;
            this.§]#7§[1] = 1;
            this.§]#7§[2] = 1;
            this.§]#7§[3] = param2;
         }
         if(param1.§-#L§ != this.§]#I§)
         {
            this.§^!V§(0);
            this.createProgram();
            this.§]#I§ = param1.§-#L§;
         }
         if(!this.§2"_§(_loc3_))
         {
            if(this.§-!>§)
            {
               this.§4$7§.uploadFromVector(this.§'#B§.§3#7§,0,this.§;T§ * 4);
            }
            this.§5$0§.uploadFromVector(this.§'#B§.§!3§,0,this.§;T§ * 4);
         }
         _loc3_.setBlendFactors(this.§9<§,this.§!!;§);
         param1.§0#0§(this.§"f§);
         _loc3_.setTextureAt(0,this.§3!L§.getBase(_loc3_));
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix3D,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.§]#7§,1);
         _loc3_.setVertexBufferAt(0,this.§5$0§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.setVertexBufferAt(1,this.§4$7§,0,Context3DVertexBufferFormat.FLOAT_4);
         _loc3_.setVertexBufferAt(2,this.§0#4§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc3_.drawTriangles(this.§=t§,0,this.§;T§ * 2);
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
         var _loc1_:Boolean = this.§3!L§.mipMapping;
         var _loc2_:String = this.§3!L§.format;
         var _loc3_:String = "ext.ParticleSystem." + _loc2_ + "/" + this.§<"b§ + (!!_loc1_ ? "+mm" : "");
         this.§"f§ = Starling.§<#`§.§7$,§(_loc3_);
         if(this.§"f§ == null)
         {
            _loc4_ = this.§<"b§ != §3f§.§="8§;
            _loc5_ = !!("<2d,repeat," + _loc4_) ? "linear," : (!!("nearest," + _loc1_) ? "mipnearest>" : "mipnone>");
            _loc6_ = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            _loc7_ = "tex ft1, v1, fs0 " + _loc5_ + "\n" + "mul oc, ft1, v0";
            _loc8_ = new AGALMiniAssembler();
            Starling.§<#`§.§5#c§(_loc3_,_loc8_.§@_§(Context3DProgramType.VERTEX,_loc6_),_loc8_.§@_§(Context3DProgramType.FRAGMENT,_loc7_));
            this.§"f§ = Starling.§<#`§.§7$,§(_loc3_);
         }
      }
      
      public function get §>N§() : Boolean
      {
         return false;
      }
      
      public function get §]#_§() : int
      {
         return this.§'#B§.numVertices / 4;
      }
      
      public function get §,!s§() : int
      {
         return this.§+!J§;
      }
      
      public function get §2#%§() : Number
      {
         return this.§8#5§;
      }
      
      public function set §2#%§(param1:Number) : void
      {
         this.§8#5§ = param1;
      }
      
      public function get §8'§() : Number
      {
         return this.§]K§;
      }
      
      public function set §8'§(param1:Number) : void
      {
         this.§]K§ = param1;
      }
      
      public function get §1#^§() : Number
      {
         return this.§<$4§;
      }
      
      public function set §1#^§(param1:Number) : void
      {
         this.§<$4§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§3!L§;
      }
   }
}
