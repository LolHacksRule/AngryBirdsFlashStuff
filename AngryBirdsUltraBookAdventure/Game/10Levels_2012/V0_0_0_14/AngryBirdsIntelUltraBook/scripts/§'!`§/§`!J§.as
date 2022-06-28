package §'!`§
{
   import §!!9§.Texture;
   import §2N§.§,!J§;
   import §4g§.§@7§;
   import §9E§.DisplayObject;
   import §@4§.§,!]§;
   import §@4§.§<!I§;
   import §@4§.§]!8§;
   import §`5§.§@2§;
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
   
   public class §`!J§ extends DisplayObject implements §@7§
   {
       
      
      private var §,!Q§:Texture;
      
      private var §^0§:Vector.<§+A§>;
      
      private var §7!F§:Number;
      
      private var §"!B§:Vector.<Number>;
      
      private var §"!h§:Vector.<Number>;
      
      private var §3!^§:§,!J§;
      
      private var §-c§:VertexBuffer3D;
      
      private var §0T§:VertexBuffer3D;
      
      private var §?5§:VertexBuffer3D;
      
      private var §;!&§:Vector.<uint>;
      
      private var §9S§:IndexBuffer3D;
      
      private var §72§:int;
      
      private var §,D§:int;
      
      private var §>!=§:Number;
      
      protected var §0!j§:Number;
      
      private var §<e§:Number = 0.0;
      
      private var §for §:Number;
      
      protected var §3!m§:Number;
      
      protected var §0!^§:Number;
      
      protected var §5N§:Boolean;
      
      protected var §0!l§:String;
      
      protected var §7e§:String;
      
      protected var §>!j§:String;
      
      private var §-!?§:int = -1;
      
      private var §8!'§:Boolean = false;
      
      private var §!!?§:Number = 0.0;
      
      public function §`!J§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§,!Q§ = param1;
         this.§5N§ = param1.premultipliedAlpha;
         this.§^0§ = new Vector.<§+A§>(0,false);
         this.§"!B§ = new Vector.<Number>();
         this.§"!h§ = new Vector.<Number>();
         this.§3!^§ = new §,!J§(0,this.§5N§);
         this.§;!&§ = new Vector.<uint>(0);
         this.§>!=§ = param2;
         this.§for § = 0;
         this.§7!F§ = 0;
         this.§0!^§ = 0;
         this.§3!m§ = 0;
         this.§7e§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§0!l§ = param4 || (!!this.§5N§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§]4§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-c§)
         {
            this.§-c§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         if(this.§?5§)
         {
            this.§?5§.dispose();
         }
         if(this.§9S§)
         {
            this.§9S§.dispose();
         }
         this.§"!B§ = null;
         this.§"!h§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §+A§
      {
         return new §+A§();
      }
      
      protected function initParticle(param1:§+A§) : void
      {
         param1.x = this.§3!m§;
         param1.y = this.§0!^§;
         param1.§&a§ = 0;
         param1.§9!t§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§+A§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§&a§ / param1.§9!t§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§&a§ += param2;
      }
      
      private function §]4§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§'!i§;
         var _loc3_:int = this.§'!i§ + param1;
         var _loc4_:§,!J§;
         (_loc4_ = new §,!J§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§,!Q§.adjustVertexData(_loc4_,0,4);
         this.§^0§.fixed = false;
         this.§;!&§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§^0§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"!B§.push(0);
               this.§"!h§.push(0);
               _loc7_++;
            }
            this.§3!^§.append(_loc4_);
            this.§;!&§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§^0§.fixed = true;
         this.§;!&§.fixed = true;
         this.§8!'§ = true;
      }
      
      private function §3H§(param1:Context3D) : Boolean
      {
         if(!this.§8!'§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@2§();
         }
         var _loc2_:int = this.§3!^§.§8!w§ / 4;
         if(this.§-c§)
         {
            this.§-c§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         if(this.§?5§)
         {
            this.§?5§.dispose();
         }
         if(this.§9S§)
         {
            this.§9S§.dispose();
         }
         this.§-c§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§#8§);
         this.§-c§.uploadFromByteArray(this.§3!^§.§!]§,0,0,_loc2_ * 4);
         this.§0T§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§&g§);
         this.§0T§.uploadFromVector(this.§3!^§.§0<§,0,_loc2_ * 4);
         this.§?5§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§<!a§);
         this.§?5§.uploadFromVector(this.§3!^§.§94§,0,_loc2_ * 4);
         this.§9S§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§9S§.uploadFromVector(this.§;!&§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§>!=§ != 0)
         {
            this.§for § = param1;
         }
      }
      
      public function stop() : void
      {
         this.§for § = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §@P§(param1);
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
      
      public function §7Y§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§2!6§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§!!?§ = param1;
      }
      
      private function §2!6§(param1:Matrix3D) : void
      {
         var _loc4_:§+A§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§+A§ = null;
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
         if(isNaN(this.§!!?§) || this.§!!?§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§!!?§;
         this.§!!?§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§72§)
         {
            if((_loc4_ = this.§^0§[_loc3_]).§&a§ < _loc4_.§9!t§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§72§ - 1)
               {
                  _loc11_ = this.§^0§[this.§72§ - 1];
                  this.§^0§[this.§72§ - 1] = _loc4_;
                  this.§^0§[_loc3_] = _loc11_;
               }
               --this.§72§;
            }
         }
         if(this.§for § > 0)
         {
            _loc12_ = 1 / this.§>!=§;
            this.§7!F§ += _loc2_;
            while(this.§7!F§ > 0)
            {
               if(this.§72§ == this.§'!i§)
               {
                  this.§]4§(this.§'!i§);
               }
               _loc4_ = this.§^0§[this.§72§++] as §+A§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§7!F§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§0!j§))
               {
                  _loc13_ = _loc12_ * (1 - this.§0!j§ + Math.random() * this.§0!j§ * 2) + this.§<e§;
               }
               this.§<e§ += _loc12_ - _loc13_;
               this.§7!F§ -= _loc13_;
            }
            if(this.§for § != Number.MAX_VALUE)
            {
               this.§for § = Math.max(0,this.§for § - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§,!Q§.width;
         var _loc9_:Number = this.§,!Q§.height;
         this.§,D§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§3j§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§72§)
            {
               _loc6_ = (_loc4_ = this.§^0§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§"!h§[_loc14_ * 3];
               _loc17_ = this.§"!h§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§,!]§.§!9§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §,!]§.§!9§.§;!I§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§,D§;
                  this.§3!^§.§&>§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§3!^§.§;#§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§3!^§.§;#§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§3!^§.§;#§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§3!^§.§;#§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§3!^§.§;#§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§3!^§.§;#§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§3!^§.§;#§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§3!^§.§;#§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §3j§(param1:Matrix3D) : void
      {
         var _loc3_:§+A§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§72§)
         {
            _loc3_ = this.§^0§[_loc2_];
            this.§"!B§[_loc2_ * 3] = _loc3_.x;
            this.§"!B§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"!B§,this.§"!h§);
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
      {
         this.§2!6§(param1.§?!G§);
         if(this.§,D§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §]!8§.§7!?§(param2 != 1,this.§,!Q§.mipMapping,false,this.§>!j§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§@?§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§5N§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§-x§ != this.§-!?§)
         {
            this.§]4§(0);
            this.§-!?§ = param1.§-x§;
         }
         if(!this.§3H§(_loc4_))
         {
            this.§0T§.uploadFromVector(this.§3!^§.§0<§,0,this.§,D§ * 4);
            this.§?5§.uploadFromVector(this.§3!^§.§94§,0,this.§,D§ * 4);
         }
         _loc4_.setBlendFactors(this.§0!l§,this.§7e§);
         _loc4_.setProgram(§,!]§.§!9§.§,g§(_loc3_));
         _loc4_.setTextureAt(0,this.§,!Q§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§?5§,§,!J§.§'x§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§-c§,§,!J§.§,q§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§0T§,§,!J§.§`C§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§?!G§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§9S§,0,this.§,D§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §^!_§() : Boolean
      {
         return false;
      }
      
      public function get §'!i§() : int
      {
         return this.§3!^§.§8!w§ / 4;
      }
      
      public function get §@!-§() : int
      {
         return this.§72§;
      }
      
      public function get §7!K§() : Number
      {
         return this.§>!=§;
      }
      
      public function set §7!K§(param1:Number) : void
      {
         this.§>!=§ = param1;
      }
      
      public function get §'!c§() : Number
      {
         return this.§3!m§;
      }
      
      public function set §'!c§(param1:Number) : void
      {
         this.§3!m§ = param1;
      }
      
      public function get §throw§() : Number
      {
         return this.§0!^§;
      }
      
      public function set §throw§(param1:Number) : void
      {
         this.§0!^§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§,!Q§;
      }
   }
}
