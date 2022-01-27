package §6i§
{
   import §"l§.§[!C§;
   import §'h§.§=!§;
   import §7G§.§2r§;
   import §86§.DisplayObject;
   import §@g§.§ O§;
   import §@g§.§'U§;
   import §@g§.§4!@§;
   import §[!A§.Texture;
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
   
   public class §6w§ extends DisplayObject implements §=!§
   {
       
      
      private var §+r§:Texture;
      
      private var §+$§:Vector.<§+0§>;
      
      private var §6[§:Number;
      
      private var §1D§:Vector.<Number>;
      
      private var §"!#§:Vector.<Number>;
      
      private var §!]§:§2r§;
      
      private var §;!1§:VertexBuffer3D;
      
      private var §-H§:VertexBuffer3D;
      
      private var §2R§:VertexBuffer3D;
      
      private var §2S§:Vector.<uint>;
      
      private var §9!+§:IndexBuffer3D;
      
      private var §5!4§:int;
      
      private var §2k§:int;
      
      private var § Z§:Number;
      
      protected var §;L§:Number;
      
      private var §@J§:Number = 0.0;
      
      private var §?]§:Number;
      
      protected var §=m§:Number;
      
      protected var §2N§:Number;
      
      protected var §8E§:Boolean;
      
      protected var §?V§:String;
      
      protected var §1!'§:String;
      
      protected var §6k§:String;
      
      private var §@§:int = -1;
      
      private var §#@§:Boolean = false;
      
      private var §!C§:Number = 0.0;
      
      public function §6w§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§+r§ = param1;
         this.§8E§ = param1.premultipliedAlpha;
         this.§+$§ = new Vector.<§+0§>(0,false);
         this.§1D§ = new Vector.<Number>();
         this.§"!#§ = new Vector.<Number>();
         this.§!]§ = new §2r§(0,this.§8E§);
         this.§2S§ = new Vector.<uint>(0);
         this.§ Z§ = param2;
         this.§?]§ = 0;
         this.§6[§ = 0;
         this.§2N§ = 0;
         this.§=m§ = 0;
         this.§1!'§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§?V§ = param4 || (!!this.§8E§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§3`§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!1§)
         {
            this.§;!1§.dispose();
         }
         if(this.§-H§)
         {
            this.§-H§.dispose();
         }
         if(this.§2R§)
         {
            this.§2R§.dispose();
         }
         if(this.§9!+§)
         {
            this.§9!+§.dispose();
         }
         this.§1D§ = null;
         this.§"!#§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §+0§
      {
         return new §+0§();
      }
      
      protected function initParticle(param1:§+0§) : void
      {
         param1.x = this.§=m§;
         param1.y = this.§2N§;
         param1.§&!L§ = 0;
         param1.§!B§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§+0§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§&!L§ / param1.§!B§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§&!L§ += param2;
      }
      
      private function §3`§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§]!%§;
         var _loc3_:int = this.§]!%§ + param1;
         var _loc4_:§2r§;
         (_loc4_ = new §2r§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§+r§.adjustVertexData(_loc4_,0,4);
         this.§+$§.fixed = false;
         this.§2S§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§+$§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§1D§.push(0);
               this.§"!#§.push(0);
               _loc7_++;
            }
            this.§!]§.append(_loc4_);
            this.§2S§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§+$§.fixed = true;
         this.§2S§.fixed = true;
         this.§#@§ = true;
      }
      
      private function §&^§(param1:Context3D) : Boolean
      {
         if(!this.§#@§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §[!C§();
         }
         var _loc2_:int = this.§!]§.§<!8§ / 4;
         if(this.§;!1§)
         {
            this.§;!1§.dispose();
         }
         if(this.§-H§)
         {
            this.§-H§.dispose();
         }
         if(this.§2R§)
         {
            this.§2R§.dispose();
         }
         if(this.§9!+§)
         {
            this.§9!+§.dispose();
         }
         this.§;!1§ = param1.createVertexBuffer(_loc2_ * 4,§2r§.§[P§);
         this.§;!1§.uploadFromByteArray(this.§!]§.§+!C§,0,0,_loc2_ * 4);
         this.§-H§ = param1.createVertexBuffer(_loc2_ * 4,§2r§.§0!K§);
         this.§-H§.uploadFromVector(this.§!]§.§9<§,0,_loc2_ * 4);
         this.§2R§ = param1.createVertexBuffer(_loc2_ * 4,§2r§.§"]§);
         this.§2R§.uploadFromVector(this.§!]§.§?E§,0,_loc2_ * 4);
         this.§9!+§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§9!+§.uploadFromVector(this.§2S§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§ Z§ != 0)
         {
            this.§?]§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§?]§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §0!#§(param1);
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
      
      public function §6!E§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§'"§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§!C§ = param1;
      }
      
      private function §'"§(param1:Matrix3D) : void
      {
         var _loc4_:§+0§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§+0§ = null;
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
         if(isNaN(this.§!C§) || this.§!C§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§!C§;
         this.§!C§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!4§)
         {
            if((_loc4_ = this.§+$§[_loc3_]).§&!L§ < _loc4_.§!B§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§5!4§ - 1)
               {
                  _loc11_ = this.§+$§[this.§5!4§ - 1];
                  this.§+$§[this.§5!4§ - 1] = _loc4_;
                  this.§+$§[_loc3_] = _loc11_;
               }
               --this.§5!4§;
            }
         }
         if(this.§?]§ > 0)
         {
            _loc12_ = 1 / this.§ Z§;
            this.§6[§ += _loc2_;
            while(this.§6[§ > 0)
            {
               if(this.§5!4§ == this.§]!%§)
               {
                  this.§3`§(this.§]!%§);
               }
               _loc4_ = this.§+$§[this.§5!4§++] as §+0§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6[§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§;L§))
               {
                  _loc13_ = _loc12_ * (1 - this.§;L§ + Math.random() * this.§;L§ * 2) + this.§@J§;
               }
               this.§@J§ += _loc12_ - _loc13_;
               this.§6[§ -= _loc13_;
            }
            if(this.§?]§ != Number.MAX_VALUE)
            {
               this.§?]§ = Math.max(0,this.§?]§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§+r§.width;
         var _loc9_:Number = this.§+r§.height;
         this.§2k§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§'Y§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§5!4§)
            {
               _loc6_ = (_loc4_ = this.§+$§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§"!#§[_loc14_ * 3];
               _loc17_ = this.§"!#§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§4!@§.§ C§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §4!@§.§ C§.§"F§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§2k§;
                  this.§!]§.§2o§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§!]§.§'s§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§!]§.§'s§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§!]§.§'s§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§!]§.§'s§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§!]§.§'s§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§!]§.§'s§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§!]§.§'s§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§!]§.§'s§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §'Y§(param1:Matrix3D) : void
      {
         var _loc3_:§+0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!4§)
         {
            _loc3_ = this.§+$§[_loc2_];
            this.§1D§[_loc2_ * 3] = _loc3_.x;
            this.§1D§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§1D§,this.§"!#§);
      }
      
      override public function render(param1:§'U§, param2:Number) : void
      {
         this.§'"§(param1.§<V§);
         if(this.§2k§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = § O§.§ t§(param2 != 1,this.§+r§.mipMapping,false,this.§6k§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§2!0§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§8E§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§3!@§ != this.§@§)
         {
            this.§3`§(0);
            this.§@§ = param1.§3!@§;
         }
         if(!this.§&^§(_loc4_))
         {
            this.§-H§.uploadFromVector(this.§!]§.§9<§,0,this.§2k§ * 4);
            this.§2R§.uploadFromVector(this.§!]§.§?E§,0,this.§2k§ * 4);
         }
         _loc4_.setBlendFactors(this.§?V§,this.§1!'§);
         _loc4_.setProgram(§4!@§.§ C§.§=!=§(_loc3_));
         _loc4_.setTextureAt(0,this.§+r§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§2R§,§2r§.§8!-§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§;!1§,§2r§.§6n§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§-H§,§2r§.§05§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§<V§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§9!+§,0,this.§2k§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §2! §() : Boolean
      {
         return false;
      }
      
      public function get §]!%§() : int
      {
         return this.§!]§.§<!8§ / 4;
      }
      
      public function get § R§() : int
      {
         return this.§5!4§;
      }
      
      public function get §%!6§() : Number
      {
         return this.§ Z§;
      }
      
      public function set §%!6§(param1:Number) : void
      {
         this.§ Z§ = param1;
      }
      
      public function get §2p§() : Number
      {
         return this.§=m§;
      }
      
      public function set §2p§(param1:Number) : void
      {
         this.§=m§ = param1;
      }
      
      public function get §1!+§() : Number
      {
         return this.§2N§;
      }
      
      public function set §1!+§(param1:Number) : void
      {
         this.§2N§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§+r§;
      }
   }
}
