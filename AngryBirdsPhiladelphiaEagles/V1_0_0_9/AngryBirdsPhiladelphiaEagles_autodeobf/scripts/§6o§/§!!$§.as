package §6o§
{
   import §'!3§.§&!H§;
   import §'!3§.§1!<§;
   import §'!3§.§@`§;
   import §,]§.Texture;
   import §-!'§.DisplayObject;
   import §5!2§.§5>§;
   import §5D§.§3L§;
   import §]!#§.§!!C§;
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
   
   public class §!!$§ extends DisplayObject implements §5>§
   {
       
      
      private var §7R§:Texture;
      
      private var §&!2§:Vector.<§9!I§>;
      
      private var §"0§:Number;
      
      private var §<!"§:Vector.<Number>;
      
      private var §&y§:Vector.<Number>;
      
      private var §3!7§:§3L§;
      
      private var §[=§:VertexBuffer3D;
      
      private var §?P§:VertexBuffer3D;
      
      private var § !I§:VertexBuffer3D;
      
      private var §+V§:Vector.<uint>;
      
      private var §@a§:IndexBuffer3D;
      
      private var §"x§:int;
      
      private var §-!>§:int;
      
      private var §6!N§:Number;
      
      protected var §^v§:Number;
      
      private var §]!§:Number = 0.0;
      
      private var §+!'§:Number;
      
      protected var § W§:Number;
      
      protected var §9!"§:Number;
      
      protected var §^8§:Boolean;
      
      protected var §=!=§:String;
      
      protected var §"X§:String;
      
      protected var §;!0§:String;
      
      private var §=T§:int = -1;
      
      private var §'U§:Boolean = false;
      
      private var §]M§:Number = 0.0;
      
      public function §!!$§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§7R§ = param1;
         this.§^8§ = param1.premultipliedAlpha;
         this.§&!2§ = new Vector.<§9!I§>(0,false);
         this.§<!"§ = new Vector.<Number>();
         this.§&y§ = new Vector.<Number>();
         this.§3!7§ = new §3L§(0,this.§^8§);
         this.§+V§ = new Vector.<uint>(0);
         this.§6!N§ = param2;
         this.§+!'§ = 0;
         this.§"0§ = 0;
         this.§9!"§ = 0;
         this.§ W§ = 0;
         this.§"X§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§=!=§ = param4 || (!!this.§^8§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§!!'§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§[=§)
         {
            this.§[=§.dispose();
         }
         if(this.§?P§)
         {
            this.§?P§.dispose();
         }
         if(this.§ !I§)
         {
            this.§ !I§.dispose();
         }
         if(this.§@a§)
         {
            this.§@a§.dispose();
         }
         this.§<!"§ = null;
         this.§&y§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §9!I§
      {
         return new §9!I§();
      }
      
      protected function initParticle(param1:§9!I§) : void
      {
         param1.x = this.§ W§;
         param1.y = this.§9!"§;
         param1.§5V§ = 0;
         param1.§1!H§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§9!I§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§5V§ / param1.§1!H§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§5V§ += param2;
      }
      
      private function §!!'§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§^!"§;
         var _loc3_:int = this.§^!"§ + param1;
         var _loc4_:§3L§;
         (_loc4_ = new §3L§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§7R§.adjustVertexData(_loc4_,0,4);
         this.§&!2§.fixed = false;
         this.§+V§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§&!2§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§<!"§.push(0);
               this.§&y§.push(0);
               _loc7_++;
            }
            this.§3!7§.append(_loc4_);
            this.§+V§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§&!2§.fixed = true;
         this.§+V§.fixed = true;
         this.§'U§ = true;
      }
      
      private function §2!=§(param1:Context3D) : Boolean
      {
         if(!this.§'U§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!!C§();
         }
         var _loc2_:int = this.§3!7§.§1J§ / 4;
         if(this.§[=§)
         {
            this.§[=§.dispose();
         }
         if(this.§?P§)
         {
            this.§?P§.dispose();
         }
         if(this.§ !I§)
         {
            this.§ !I§.dispose();
         }
         if(this.§@a§)
         {
            this.§@a§.dispose();
         }
         this.§[=§ = param1.createVertexBuffer(_loc2_ * 4,§3L§.§;!-§);
         this.§[=§.uploadFromByteArray(this.§3!7§.§-Y§,0,0,_loc2_ * 4);
         this.§?P§ = param1.createVertexBuffer(_loc2_ * 4,§3L§.§=4§);
         this.§?P§.uploadFromVector(this.§3!7§.§]8§,0,_loc2_ * 4);
         this.§ !I§ = param1.createVertexBuffer(_loc2_ * 4,§3L§.§=Y§);
         this.§ !I§.uploadFromVector(this.§3!7§.§ g§,0,_loc2_ * 4);
         this.§@a§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§@a§.uploadFromVector(this.§+V§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§6!N§ != 0)
         {
            this.§+!'§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§+!'§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §0N§(param1);
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
      
      public function §3!-§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§`%§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§]M§ = param1;
      }
      
      private function §`%§(param1:Matrix3D) : void
      {
         var _loc4_:§9!I§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§9!I§ = null;
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
         if(isNaN(this.§]M§) || this.§]M§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§]M§;
         this.§]M§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§"x§)
         {
            if((_loc4_ = this.§&!2§[_loc3_]).§5V§ < _loc4_.§1!H§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§"x§ - 1)
               {
                  _loc11_ = this.§&!2§[this.§"x§ - 1];
                  this.§&!2§[this.§"x§ - 1] = _loc4_;
                  this.§&!2§[_loc3_] = _loc11_;
               }
               --this.§"x§;
            }
         }
         if(this.§+!'§ > 0)
         {
            _loc12_ = 1 / this.§6!N§;
            this.§"0§ += _loc2_;
            while(this.§"0§ > 0)
            {
               if(this.§"x§ == this.§^!"§)
               {
                  this.§!!'§(this.§^!"§);
               }
               _loc4_ = this.§&!2§[this.§"x§++] as §9!I§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§"0§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§^v§))
               {
                  _loc13_ = _loc12_ * (1 - this.§^v§ + Math.random() * this.§^v§ * 2) + this.§]!§;
               }
               this.§]!§ += _loc12_ - _loc13_;
               this.§"0§ -= _loc13_;
            }
            if(this.§+!'§ != Number.MAX_VALUE)
            {
               this.§+!'§ = Math.max(0,this.§+!'§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§7R§.width;
         var _loc9_:Number = this.§7R§.height;
         this.§-!>§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§;a§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§"x§)
            {
               _loc6_ = (_loc4_ = this.§&!2§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§&y§[_loc14_ * 3];
               _loc17_ = this.§&y§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§&!H§.§+!H§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §&!H§.§+!H§.§2!§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§-!>§;
                  this.§3!7§.§`!;§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§3!7§.§+K§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§3!7§.§+K§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§3!7§.§+K§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§3!7§.§+K§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§3!7§.§+K§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§3!7§.§+K§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§3!7§.§+K§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§3!7§.§+K§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §;a§(param1:Matrix3D) : void
      {
         var _loc3_:§9!I§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"x§)
         {
            _loc3_ = this.§&!2§[_loc2_];
            this.§<!"§[_loc2_ * 3] = _loc3_.x;
            this.§<!"§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§<!"§,this.§&y§);
      }
      
      override public function render(param1:§@`§, param2:Number) : void
      {
         this.§`%§(param1.§6!P§);
         if(this.§-!>§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §1!<§.§4!M§(param2 != 1,this.§7R§.mipMapping,false,this.§;!0§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§2G§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§^8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§&5§ != this.§=T§)
         {
            this.§!!'§(0);
            this.§=T§ = param1.§&5§;
         }
         if(!this.§2!=§(_loc4_))
         {
            this.§?P§.uploadFromVector(this.§3!7§.§]8§,0,this.§-!>§ * 4);
            this.§ !I§.uploadFromVector(this.§3!7§.§ g§,0,this.§-!>§ * 4);
         }
         _loc4_.setBlendFactors(this.§=!=§,this.§"X§);
         _loc4_.setProgram(§&!H§.§+!H§.§'! §(_loc3_));
         _loc4_.setTextureAt(0,this.§7R§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§ !I§,§3L§.§6#§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§[=§,§3L§.§2!0§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§?P§,§3L§.§8!&§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§6!P§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§@a§,0,this.§-!>§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §=>§() : Boolean
      {
         return false;
      }
      
      public function get §^!"§() : int
      {
         return this.§3!7§.§1J§ / 4;
      }
      
      public function get §6r§() : int
      {
         return this.§"x§;
      }
      
      public function get §switch§() : Number
      {
         return this.§6!N§;
      }
      
      public function set §switch§(param1:Number) : void
      {
         this.§6!N§ = param1;
      }
      
      public function get §9k§() : Number
      {
         return this.§ W§;
      }
      
      public function set §9k§(param1:Number) : void
      {
         this.§ W§ = param1;
      }
      
      public function get §1!,§() : Number
      {
         return this.§9!"§;
      }
      
      public function set §1!,§(param1:Number) : void
      {
         this.§9!"§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§7R§;
      }
   }
}
