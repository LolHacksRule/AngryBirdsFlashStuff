package §-R§
{
   import §"=§.§@!#§;
   import §2!+§.§5!§;
   import §9! §.§,!3§;
   import §9!2§.§7N§;
   import §9!2§.§<!0§;
   import §9!2§.§>P§;
   import §<-§.Texture;
   import §<k§.DisplayObject;
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
   
   public class § s§ extends DisplayObject implements §,!3§
   {
       
      
      private var §[d§:Texture;
      
      private var §`T§:Vector.<§"v§>;
      
      private var §[!%§:Number;
      
      private var §`C§:Vector.<Number>;
      
      private var §3!1§:Vector.<Number>;
      
      private var §0!<§:§5!§;
      
      private var §+#§:VertexBuffer3D;
      
      private var §1!C§:VertexBuffer3D;
      
      private var §="§:VertexBuffer3D;
      
      private var §<<§:Vector.<uint>;
      
      private var §7d§:IndexBuffer3D;
      
      private var §?]§:int;
      
      private var §;!"§:int;
      
      private var §`a§:Number;
      
      protected var §;x§:Number;
      
      private var §`9§:Number = 0.0;
      
      private var § z§:Number;
      
      protected var §6Z§:Number;
      
      protected var §&[§:Number;
      
      protected var §4E§:Boolean;
      
      protected var §6!0§:String;
      
      protected var §<e§:String;
      
      protected var §1G§:String;
      
      private var §@O§:int = -1;
      
      private var §5!6§:Boolean = false;
      
      private var §"j§:Number = 0.0;
      
      public function § s§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§[d§ = param1;
         this.§4E§ = param1.premultipliedAlpha;
         this.§`T§ = new Vector.<§"v§>(0,false);
         this.§`C§ = new Vector.<Number>();
         this.§3!1§ = new Vector.<Number>();
         this.§0!<§ = new §5!§(0,this.§4E§);
         this.§<<§ = new Vector.<uint>(0);
         this.§`a§ = param2;
         this.§ z§ = 0;
         this.§[!%§ = 0;
         this.§&[§ = 0;
         this.§6Z§ = 0;
         this.§<e§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§6!0§ = param4 || (!!this.§4E§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§=3§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+#§)
         {
            this.§+#§.dispose();
         }
         if(this.§1!C§)
         {
            this.§1!C§.dispose();
         }
         if(this.§="§)
         {
            this.§="§.dispose();
         }
         if(this.§7d§)
         {
            this.§7d§.dispose();
         }
         this.§`C§ = null;
         this.§3!1§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §"v§
      {
         return new §"v§();
      }
      
      protected function initParticle(param1:§"v§) : void
      {
         param1.x = this.§6Z§;
         param1.y = this.§&[§;
         param1.currentTime = 0;
         param1.§4U§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§"v§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§4U§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §=3§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6&§;
         var _loc3_:int = this.§6&§ + param1;
         var _loc4_:§5!§;
         (_loc4_ = new §5!§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§[d§.adjustVertexData(_loc4_,0,4);
         this.§`T§.fixed = false;
         this.§<<§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§`T§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§`C§.push(0);
               this.§3!1§.push(0);
               _loc7_++;
            }
            this.§0!<§.append(_loc4_);
            this.§<<§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§`T§.fixed = true;
         this.§<<§.fixed = true;
         this.§5!6§ = true;
      }
      
      private function §!!5§(param1:Context3D) : Boolean
      {
         if(!this.§5!6§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@!#§();
         }
         var _loc2_:int = this.§0!<§.§;"§ / 4;
         if(this.§+#§)
         {
            this.§+#§.dispose();
         }
         if(this.§1!C§)
         {
            this.§1!C§.dispose();
         }
         if(this.§="§)
         {
            this.§="§.dispose();
         }
         if(this.§7d§)
         {
            this.§7d§.dispose();
         }
         this.§+#§ = param1.createVertexBuffer(_loc2_ * 4,§5!§.§,w§);
         this.§+#§.uploadFromByteArray(this.§0!<§.§8Q§,0,0,_loc2_ * 4);
         this.§1!C§ = param1.createVertexBuffer(_loc2_ * 4,§5!§.§]!7§);
         this.§1!C§.uploadFromVector(this.§0!<§.§0_§,0,_loc2_ * 4);
         this.§="§ = param1.createVertexBuffer(_loc2_ * 4,§5!§.§5!>§);
         this.§="§.uploadFromVector(this.§0!<§.§-W§,0,_loc2_ * 4);
         this.§7d§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7d§.uploadFromVector(this.§<<§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§`a§ != 0)
         {
            this.§ z§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§ z§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §!!?§(param1);
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
      
      public function §+s§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§>5§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§"j§ = param1;
      }
      
      private function §>5§(param1:Matrix3D) : void
      {
         var _loc4_:§"v§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§"v§ = null;
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
         if(isNaN(this.§"j§) || this.§"j§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§"j§;
         this.§"j§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?]§)
         {
            if((_loc4_ = this.§`T§[_loc3_]).currentTime < _loc4_.§4U§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?]§ - 1)
               {
                  _loc11_ = this.§`T§[this.§?]§ - 1];
                  this.§`T§[this.§?]§ - 1] = _loc4_;
                  this.§`T§[_loc3_] = _loc11_;
               }
               --this.§?]§;
            }
         }
         if(this.§ z§ > 0)
         {
            _loc12_ = 1 / this.§`a§;
            this.§[!%§ += _loc2_;
            while(this.§[!%§ > 0)
            {
               if(this.§?]§ == this.§6&§)
               {
                  this.§=3§(this.§6&§);
               }
               _loc4_ = this.§`T§[this.§?]§++] as §"v§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§[!%§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§;x§))
               {
                  _loc13_ = _loc12_ * (1 - this.§;x§ + Math.random() * this.§;x§ * 2) + this.§`9§;
               }
               this.§`9§ += _loc12_ - _loc13_;
               this.§[!%§ -= _loc13_;
            }
            if(this.§ z§ != Number.MAX_VALUE)
            {
               this.§ z§ = Math.max(0,this.§ z§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§[d§.width;
         var _loc9_:Number = this.§[d§.height;
         this.§;!"§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§]!C§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?]§)
            {
               _loc6_ = (_loc4_ = this.§`T§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§3!1§[_loc14_ * 3];
               _loc17_ = this.§3!1§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§7N§.§17§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §7N§.§17§.§@W§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§;!"§;
                  this.§0!<§.§5g§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§0!<§.§3s§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§0!<§.§3s§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§0!<§.§3s§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§0!<§.§3s§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§0!<§.§3s§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§0!<§.§3s§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§0!<§.§3s§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§0!<§.§3s§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §]!C§(param1:Matrix3D) : void
      {
         var _loc3_:§"v§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?]§)
         {
            _loc3_ = this.§`T§[_loc2_];
            this.§`C§[_loc2_ * 3] = _loc3_.x;
            this.§`C§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§`C§,this.§3!1§);
      }
      
      override public function render(param1:§>P§, param2:Number) : void
      {
         this.§>5§(param1.§^P§);
         if(this.§;!"§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §<!0§.§%§(param2 != 1,this.§[d§.mipMapping,false,this.§1G§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§4E§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§+!3§ != this.§@O§)
         {
            this.§=3§(0);
            this.§@O§ = param1.§+!3§;
         }
         if(!this.§!!5§(_loc4_))
         {
            this.§1!C§.uploadFromVector(this.§0!<§.§0_§,0,this.§;!"§ * 4);
            this.§="§.uploadFromVector(this.§0!<§.§-W§,0,this.§;!"§ * 4);
         }
         _loc4_.setBlendFactors(this.§6!0§,this.§<e§);
         _loc4_.setProgram(§7N§.§17§.§5!+§(_loc3_));
         _loc4_.setTextureAt(0,this.§[d§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§="§,§5!§.§0I§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+#§,§5!§.§?p§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§1!C§,§5!§.§#o§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^P§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§7d§,0,this.§;!"§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §38§() : Boolean
      {
         return false;
      }
      
      public function get §6&§() : int
      {
         return this.§0!<§.§;"§ / 4;
      }
      
      public function get §3b§() : int
      {
         return this.§?]§;
      }
      
      public function get §#R§() : Number
      {
         return this.§`a§;
      }
      
      public function set §#R§(param1:Number) : void
      {
         this.§`a§ = param1;
      }
      
      public function get §2!?§() : Number
      {
         return this.§6Z§;
      }
      
      public function set §2!?§(param1:Number) : void
      {
         this.§6Z§ = param1;
      }
      
      public function get § 7§() : Number
      {
         return this.§&[§;
      }
      
      public function set § 7§(param1:Number) : void
      {
         this.§&[§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§[d§;
      }
   }
}
