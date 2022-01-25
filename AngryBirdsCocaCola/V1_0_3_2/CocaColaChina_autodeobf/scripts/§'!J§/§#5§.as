package §'!J§
{
   import §#!a§.Texture;
   import §+R§.§0O§;
   import §+R§.§4!b§;
   import §+R§.§6W§;
   import §;t§.DisplayObject;
   import §?X§.§8A§;
   import §@@§.§6!%§;
   import §^!L§.§-2§;
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
   
   public class §#5§ extends DisplayObject implements §6!%§
   {
       
      
      private var §]Z§:Texture;
      
      private var §-,§:Vector.<§8m§>;
      
      private var §'B§:Number;
      
      private var §;8§:Vector.<Number>;
      
      private var §>!#§:Vector.<Number>;
      
      private var §0&§:§-2§;
      
      private var §8+§:VertexBuffer3D;
      
      private var §3,§:VertexBuffer3D;
      
      private var §3!O§:VertexBuffer3D;
      
      private var §>!V§:Vector.<uint>;
      
      private var §!!c§:IndexBuffer3D;
      
      private var §0W§:int;
      
      private var §<$§:int;
      
      private var §+!'§:Number;
      
      protected var §?!3§:Number;
      
      private var §5&§:Number = 0.0;
      
      private var §-Y§:Number;
      
      protected var §2!C§:Number;
      
      protected var §5G§:Number;
      
      protected var §5!W§:Boolean;
      
      protected var §5m§:String;
      
      protected var §6!a§:String;
      
      protected var §%!7§:String;
      
      private var § !d§:int = -1;
      
      private var §@+§:Boolean = false;
      
      private var §#B§:Number = 0.0;
      
      public function §#5§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§]Z§ = param1;
         this.§5!W§ = param1.premultipliedAlpha;
         this.§-,§ = new Vector.<§8m§>(0,false);
         this.§;8§ = new Vector.<Number>();
         this.§>!#§ = new Vector.<Number>();
         this.§0&§ = new §-2§(0,this.§5!W§);
         this.§>!V§ = new Vector.<uint>(0);
         this.§+!'§ = param2;
         this.§-Y§ = 0;
         this.§'B§ = 0;
         this.§5G§ = 0;
         this.§2!C§ = 0;
         this.§6!a§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§5m§ = param4 || (!!this.§5!W§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^5§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8+§)
         {
            this.§8+§.dispose();
         }
         if(this.§3,§)
         {
            this.§3,§.dispose();
         }
         if(this.§3!O§)
         {
            this.§3!O§.dispose();
         }
         if(this.§!!c§)
         {
            this.§!!c§.dispose();
         }
         this.§;8§ = null;
         this.§>!#§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §8m§
      {
         return new §8m§();
      }
      
      protected function initParticle(param1:§8m§) : void
      {
         param1.x = this.§2!C§;
         param1.y = this.§5G§;
         param1.§3!#§ = 0;
         param1.§^!+§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§8m§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§3!#§ / param1.§^!+§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§3!#§ += param2;
      }
      
      private function §^5§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§9!%§;
         var _loc3_:int = this.§9!%§ + param1;
         var _loc4_:§-2§;
         (_loc4_ = new §-2§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§]Z§.adjustVertexData(_loc4_,0,4);
         this.§-,§.fixed = false;
         this.§>!V§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§-,§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§;8§.push(0);
               this.§>!#§.push(0);
               _loc7_++;
            }
            this.§0&§.append(_loc4_);
            this.§>!V§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§-,§.fixed = true;
         this.§>!V§.fixed = true;
         this.§@+§ = true;
      }
      
      private function §%Y§(param1:Context3D) : Boolean
      {
         if(!this.§@+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §8A§();
         }
         var _loc2_:int = this.§0&§.§'!3§ / 4;
         if(this.§8+§)
         {
            this.§8+§.dispose();
         }
         if(this.§3,§)
         {
            this.§3,§.dispose();
         }
         if(this.§3!O§)
         {
            this.§3!O§.dispose();
         }
         if(this.§!!c§)
         {
            this.§!!c§.dispose();
         }
         this.§8+§ = param1.createVertexBuffer(_loc2_ * 4,§-2§.§+!&§);
         this.§8+§.uploadFromByteArray(this.§0&§.§=@§,0,0,_loc2_ * 4);
         this.§3,§ = param1.createVertexBuffer(_loc2_ * 4,§-2§.§4!G§);
         this.§3,§.uploadFromVector(this.§0&§.§!!#§,0,_loc2_ * 4);
         this.§3!O§ = param1.createVertexBuffer(_loc2_ * 4,§-2§.§]!7§);
         this.§3!O§.uploadFromVector(this.§0&§.§#!%§,0,_loc2_ * 4);
         this.§!!c§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!!c§.uploadFromVector(this.§>!V§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§+!'§ != 0)
         {
            this.§-Y§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-Y§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §7!P§(param1);
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
      
      public function §+!I§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§7!=§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§#B§ = param1;
      }
      
      private function §7!=§(param1:Matrix3D) : void
      {
         var _loc4_:§8m§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§8m§ = null;
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
         if(isNaN(this.§#B§) || this.§#B§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§#B§;
         this.§#B§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§0W§)
         {
            if((_loc4_ = this.§-,§[_loc3_]).§3!#§ < _loc4_.§^!+§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§0W§ - 1)
               {
                  _loc11_ = this.§-,§[this.§0W§ - 1];
                  this.§-,§[this.§0W§ - 1] = _loc4_;
                  this.§-,§[_loc3_] = _loc11_;
               }
               --this.§0W§;
            }
         }
         if(this.§-Y§ > 0)
         {
            _loc12_ = 1 / this.§+!'§;
            this.§'B§ += _loc2_;
            while(this.§'B§ > 0)
            {
               if(this.§0W§ == this.§9!%§)
               {
                  this.§^5§(this.§9!%§);
               }
               _loc4_ = this.§-,§[this.§0W§++] as §8m§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§'B§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§?!3§))
               {
                  _loc13_ = _loc12_ * (1 - this.§?!3§ + Math.random() * this.§?!3§ * 2) + this.§5&§;
               }
               this.§5&§ += _loc12_ - _loc13_;
               this.§'B§ -= _loc13_;
            }
            if(this.§-Y§ != Number.MAX_VALUE)
            {
               this.§-Y§ = Math.max(0,this.§-Y§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§]Z§.width;
         var _loc9_:Number = this.§]Z§.height;
         this.§<$§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§1!?§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§0W§)
            {
               _loc6_ = (_loc4_ = this.§-,§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§>!#§[_loc14_ * 3];
               _loc17_ = this.§>!#§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§0O§.§=&§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §0O§.§=&§.§@a§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§<$§;
                  this.§0&§.§4S§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§0&§.§[g§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§0&§.§[g§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§0&§.§[g§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§0&§.§[g§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§0&§.§[g§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§0&§.§[g§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§0&§.§[g§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§0&§.§[g§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §1!?§(param1:Matrix3D) : void
      {
         var _loc3_:§8m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0W§)
         {
            _loc3_ = this.§-,§[_loc2_];
            this.§;8§[_loc2_ * 3] = _loc3_.x;
            this.§;8§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§;8§,this.§>!#§);
      }
      
      override public function render(param1:§4!b§, param2:Number) : void
      {
         this.§7!=§(param1.§,!#§);
         if(this.§<$§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §6W§.§[6§(param2 != 1,this.§]Z§.mipMapping,false,this.§%!7§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§;!?§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§5!W§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§4!Q§ != this.§ !d§)
         {
            this.§^5§(0);
            this.§ !d§ = param1.§4!Q§;
         }
         if(!this.§%Y§(_loc4_))
         {
            this.§3,§.uploadFromVector(this.§0&§.§!!#§,0,this.§<$§ * 4);
            this.§3!O§.uploadFromVector(this.§0&§.§#!%§,0,this.§<$§ * 4);
         }
         _loc4_.setBlendFactors(this.§5m§,this.§6!a§);
         _loc4_.setProgram(§0O§.§=&§.§8!b§(_loc3_));
         _loc4_.setTextureAt(0,this.§]Z§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§3!O§,§-2§.§"[§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§8+§,§-2§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§3,§,§-2§.§2b§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§,!#§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!!c§,0,this.§<$§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §@!G§() : Boolean
      {
         return false;
      }
      
      public function get §9!%§() : int
      {
         return this.§0&§.§'!3§ / 4;
      }
      
      public function get §&!T§() : int
      {
         return this.§0W§;
      }
      
      public function get §1!Z§() : Number
      {
         return this.§+!'§;
      }
      
      public function set §1!Z§(param1:Number) : void
      {
         this.§+!'§ = param1;
      }
      
      public function get §!C§() : Number
      {
         return this.§2!C§;
      }
      
      public function set §!C§(param1:Number) : void
      {
         this.§2!C§ = param1;
      }
      
      public function get §3!^§() : Number
      {
         return this.§5G§;
      }
      
      public function set §3!^§(param1:Number) : void
      {
         this.§5G§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§]Z§;
      }
   }
}
