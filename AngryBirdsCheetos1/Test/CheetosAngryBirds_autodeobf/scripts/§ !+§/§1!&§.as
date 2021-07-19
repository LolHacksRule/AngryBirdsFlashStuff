package § !+§
{
   import §4v§.§40§;
   import §6;§.§%[§;
   import §6;§.§1!B§;
   import §6;§.§2^§;
   import §[!-§.§>'§;
   import §]!a§.Texture;
   import §]u§.§6J§;
   import §^a§.DisplayObject;
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
   
   public class §1!&§ extends DisplayObject implements §>'§
   {
       
      
      private var §7Y§:Texture;
      
      private var §3I§:Vector.<§]!N§>;
      
      private var §6!F§:Number;
      
      private var §,!U§:Vector.<Number>;
      
      private var §0N§:Vector.<Number>;
      
      private var §`§:§40§;
      
      private var §@M§:VertexBuffer3D;
      
      private var §2e§:VertexBuffer3D;
      
      private var §&2§:VertexBuffer3D;
      
      private var §`q§:Vector.<uint>;
      
      private var §!h§:IndexBuffer3D;
      
      private var §1!0§:int;
      
      private var §]o§:int;
      
      private var §65§:Number;
      
      protected var §;!E§:Number;
      
      private var §@p§:Number = 0.0;
      
      private var §',§:Number;
      
      protected var §5v§:Number;
      
      protected var §9!I§:Number;
      
      protected var §@!,§:Boolean;
      
      protected var §6W§:String;
      
      protected var §,!i§:String;
      
      protected var §#H§:String;
      
      private var §"`§:int = -1;
      
      private var §?V§:Boolean = false;
      
      private var §'+§:Number = 0.0;
      
      public function §1!&§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§7Y§ = param1;
         this.§@!,§ = param1.premultipliedAlpha;
         this.§3I§ = new Vector.<§]!N§>(0,false);
         this.§,!U§ = new Vector.<Number>();
         this.§0N§ = new Vector.<Number>();
         this.§`§ = new §40§(0,this.§@!,§);
         this.§`q§ = new Vector.<uint>(0);
         this.§65§ = param2;
         this.§',§ = 0;
         this.§6!F§ = 0;
         this.§9!I§ = 0;
         this.§5v§ = 0;
         this.§,!i§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§6W§ = param4 || (!!this.§@!,§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§2,§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@M§)
         {
            this.§@M§.dispose();
         }
         if(this.§2e§)
         {
            this.§2e§.dispose();
         }
         if(this.§&2§)
         {
            this.§&2§.dispose();
         }
         if(this.§!h§)
         {
            this.§!h§.dispose();
         }
         this.§,!U§ = null;
         this.§0N§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §]!N§
      {
         return new §]!N§();
      }
      
      protected function initParticle(param1:§]!N§) : void
      {
         param1.x = this.§5v§;
         param1.y = this.§9!I§;
         param1.§]!h§ = 0;
         param1.§4A§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§]!N§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§]!h§ / param1.§4A§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§]!h§ += param2;
      }
      
      private function §2,§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§9!&§;
         var _loc3_:int = this.§9!&§ + param1;
         var _loc4_:§40§;
         (_loc4_ = new §40§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§7Y§.adjustVertexData(_loc4_,0,4);
         this.§3I§.fixed = false;
         this.§`q§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§3I§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§,!U§.push(0);
               this.§0N§.push(0);
               _loc7_++;
            }
            this.§`§.append(_loc4_);
            this.§`q§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§3I§.fixed = true;
         this.§`q§.fixed = true;
         this.§?V§ = true;
      }
      
      private function §>H§(param1:Context3D) : Boolean
      {
         if(!this.§?V§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §6J§();
         }
         var _loc2_:int = this.§`§.§-Z§ / 4;
         if(this.§@M§)
         {
            this.§@M§.dispose();
         }
         if(this.§2e§)
         {
            this.§2e§.dispose();
         }
         if(this.§&2§)
         {
            this.§&2§.dispose();
         }
         if(this.§!h§)
         {
            this.§!h§.dispose();
         }
         this.§@M§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§9!+§);
         this.§@M§.uploadFromByteArray(this.§`§.§!2§,0,0,_loc2_ * 4);
         this.§2e§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§;!^§);
         this.§2e§.uploadFromVector(this.§`§.§[K§,0,_loc2_ * 4);
         this.§&2§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§%!;§);
         this.§&2§.uploadFromVector(this.§`§.§]!"§,0,_loc2_ * 4);
         this.§!h§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!h§.uploadFromVector(this.§`q§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§65§ != 0)
         {
            this.§',§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§',§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §?z§(param1);
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
      
      public function §6!9§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§]!L§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§'+§ = param1;
      }
      
      private function §]!L§(param1:Matrix3D) : void
      {
         var _loc4_:§]!N§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§]!N§ = null;
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
         if(isNaN(this.§'+§) || this.§'+§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§'+§;
         this.§'+§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§1!0§)
         {
            if((_loc4_ = this.§3I§[_loc3_]).§]!h§ < _loc4_.§4A§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§1!0§ - 1)
               {
                  _loc11_ = this.§3I§[this.§1!0§ - 1];
                  this.§3I§[this.§1!0§ - 1] = _loc4_;
                  this.§3I§[_loc3_] = _loc11_;
               }
               --this.§1!0§;
            }
         }
         if(this.§',§ > 0)
         {
            _loc12_ = 1 / this.§65§;
            this.§6!F§ += _loc2_;
            while(this.§6!F§ > 0)
            {
               if(this.§1!0§ == this.§9!&§)
               {
                  this.§2,§(this.§9!&§);
               }
               _loc4_ = this.§3I§[this.§1!0§++] as §]!N§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6!F§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§;!E§))
               {
                  _loc13_ = _loc12_ * (1 - this.§;!E§ + Math.random() * this.§;!E§ * 2) + this.§@p§;
               }
               this.§@p§ += _loc12_ - _loc13_;
               this.§6!F§ -= _loc13_;
            }
            if(this.§',§ != Number.MAX_VALUE)
            {
               this.§',§ = Math.max(0,this.§',§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§7Y§.width;
         var _loc9_:Number = this.§7Y§.height;
         this.§]o§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§9!H§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§1!0§)
            {
               _loc6_ = (_loc4_ = this.§3I§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§0N§[_loc14_ * 3];
               _loc17_ = this.§0N§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§%[§.§`1§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §%[§.§`1§.§ "§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§]o§;
                  this.§`§.§!X§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§`§.§5!E§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§`§.§5!E§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§`§.§5!E§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§`§.§5!E§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§`§.§5!E§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§`§.§5!E§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§`§.§5!E§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§`§.§5!E§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §9!H§(param1:Matrix3D) : void
      {
         var _loc3_:§]!N§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!0§)
         {
            _loc3_ = this.§3I§[_loc2_];
            this.§,!U§[_loc2_ * 3] = _loc3_.x;
            this.§,!U§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§,!U§,this.§0N§);
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         this.§]!L§(param1.§?#§);
         if(this.§]o§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §1!B§.§ V§(param2 != 1,this.§7Y§.mipMapping,false,this.§#H§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§'!&§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§@!,§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§?N§ != this.§"`§)
         {
            this.§2,§(0);
            this.§"`§ = param1.§?N§;
         }
         if(!this.§>H§(_loc4_))
         {
            this.§2e§.uploadFromVector(this.§`§.§[K§,0,this.§]o§ * 4);
            this.§&2§.uploadFromVector(this.§`§.§]!"§,0,this.§]o§ * 4);
         }
         _loc4_.setBlendFactors(this.§6W§,this.§,!i§);
         _loc4_.setProgram(§%[§.§`1§.§-!c§(_loc3_));
         _loc4_.setTextureAt(0,this.§7Y§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§&2§,§40§.§]a§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§@M§,§40§.§9!i§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§2e§,§40§.§[W§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§?#§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!h§,0,this.§]o§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §9p§() : Boolean
      {
         return false;
      }
      
      public function get §9!&§() : int
      {
         return this.§`§.§-Z§ / 4;
      }
      
      public function get §-!#§() : int
      {
         return this.§1!0§;
      }
      
      public function get §;!F§() : Number
      {
         return this.§65§;
      }
      
      public function set §;!F§(param1:Number) : void
      {
         this.§65§ = param1;
      }
      
      public function get §"+§() : Number
      {
         return this.§5v§;
      }
      
      public function set §"+§(param1:Number) : void
      {
         this.§5v§ = param1;
      }
      
      public function get §57§() : Number
      {
         return this.§9!I§;
      }
      
      public function set §57§(param1:Number) : void
      {
         this.§9!I§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§7Y§;
      }
   }
}
