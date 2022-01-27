package §2,§
{
   import §!v§.§16§;
   import §!v§.§7[§;
   import §!v§.§<"§;
   import §#!6§.Texture;
   import §%!N§.§7!N§;
   import §6K§.§#!-§;
   import §6W§.§-B§;
   import §=!E§.DisplayObject;
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
   
   public class §>O§ extends DisplayObject implements §-B§
   {
       
      
      private var §6!&§:Texture;
      
      private var §6B§:Vector.<§;p§>;
      
      private var §1f§:Number;
      
      private var §-!L§:Vector.<Number>;
      
      private var §8!M§:Vector.<Number>;
      
      private var §2! §:§#!-§;
      
      private var §;!3§:VertexBuffer3D;
      
      private var § !^§:VertexBuffer3D;
      
      private var §6f§:VertexBuffer3D;
      
      private var § !-§:Vector.<uint>;
      
      private var §>!,§:IndexBuffer3D;
      
      private var § !b§:int;
      
      private var §[!!§:int;
      
      private var §;`§:Number;
      
      protected var §8=§:Number;
      
      private var §29§:Number = 0.0;
      
      private var §[!$§:Number;
      
      protected var §&o§:Number;
      
      protected var § !K§:Number;
      
      protected var §!D§:Boolean;
      
      protected var §8Y§:String;
      
      protected var §'R§:String;
      
      protected var §<6§:String;
      
      private var §5>§:int = -1;
      
      private var §6p§:Boolean = false;
      
      private var §`k§:Number = 0.0;
      
      public function §>O§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§6!&§ = param1;
         this.§!D§ = param1.premultipliedAlpha;
         this.§6B§ = new Vector.<§;p§>(0,false);
         this.§-!L§ = new Vector.<Number>();
         this.§8!M§ = new Vector.<Number>();
         this.§2! § = new §#!-§(0,this.§!D§);
         this.§ !-§ = new Vector.<uint>(0);
         this.§;`§ = param2;
         this.§[!$§ = 0;
         this.§1f§ = 0;
         this.§ !K§ = 0;
         this.§&o§ = 0;
         this.§'R§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§8Y§ = param4 || (!!this.§!D§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§;F§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!3§)
         {
            this.§;!3§.dispose();
         }
         if(this.§ !^§)
         {
            this.§ !^§.dispose();
         }
         if(this.§6f§)
         {
            this.§6f§.dispose();
         }
         if(this.§>!,§)
         {
            this.§>!,§.dispose();
         }
         this.§-!L§ = null;
         this.§8!M§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §;p§
      {
         return new §;p§();
      }
      
      protected function initParticle(param1:§;p§) : void
      {
         param1.x = this.§&o§;
         param1.y = this.§ !K§;
         param1.§5F§ = 0;
         param1.§7#§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§;p§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§5F§ / param1.§7#§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§5F§ += param2;
      }
      
      private function §;F§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§continue§;
         var _loc3_:int = this.§continue§ + param1;
         var _loc4_:§#!-§;
         (_loc4_ = new §#!-§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§6!&§.adjustVertexData(_loc4_,0,4);
         this.§6B§.fixed = false;
         this.§ !-§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§6B§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§-!L§.push(0);
               this.§8!M§.push(0);
               _loc7_++;
            }
            this.§2! §.append(_loc4_);
            this.§ !-§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§6B§.fixed = true;
         this.§ !-§.fixed = true;
         this.§6p§ = true;
      }
      
      private function §&!Q§(param1:Context3D) : Boolean
      {
         if(!this.§6p§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §7!N§();
         }
         var _loc2_:int = this.§2! §.§]5§ / 4;
         if(this.§;!3§)
         {
            this.§;!3§.dispose();
         }
         if(this.§ !^§)
         {
            this.§ !^§.dispose();
         }
         if(this.§6f§)
         {
            this.§6f§.dispose();
         }
         if(this.§>!,§)
         {
            this.§>!,§.dispose();
         }
         this.§;!3§ = param1.createVertexBuffer(_loc2_ * 4,§#!-§.§4!7§);
         this.§;!3§.uploadFromByteArray(this.§2! §.§?!7§,0,0,_loc2_ * 4);
         this.§ !^§ = param1.createVertexBuffer(_loc2_ * 4,§#!-§.§"!Z§);
         this.§ !^§.uploadFromVector(this.§2! §.§2?§,0,_loc2_ * 4);
         this.§6f§ = param1.createVertexBuffer(_loc2_ * 4,§#!-§.§"!2§);
         this.§6f§.uploadFromVector(this.§2! §.§46§,0,_loc2_ * 4);
         this.§>!,§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§>!,§.uploadFromVector(this.§ !-§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§;`§ != 0)
         {
            this.§[!$§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§[!$§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §!;§(param1);
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
      
      public function §#!]§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§3!U§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§`k§ = param1;
      }
      
      private function §3!U§(param1:Matrix3D) : void
      {
         var _loc4_:§;p§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§;p§ = null;
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
         if(isNaN(this.§`k§) || this.§`k§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§`k§;
         this.§`k§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !b§)
         {
            if((_loc4_ = this.§6B§[_loc3_]).§5F§ < _loc4_.§7#§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§ !b§ - 1)
               {
                  _loc11_ = this.§6B§[this.§ !b§ - 1];
                  this.§6B§[this.§ !b§ - 1] = _loc4_;
                  this.§6B§[_loc3_] = _loc11_;
               }
               --this.§ !b§;
            }
         }
         if(this.§[!$§ > 0)
         {
            _loc12_ = 1 / this.§;`§;
            this.§1f§ += _loc2_;
            while(this.§1f§ > 0)
            {
               if(this.§ !b§ == this.§continue§)
               {
                  this.§;F§(this.§continue§);
               }
               _loc4_ = this.§6B§[this.§ !b§++] as §;p§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§1f§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§8=§))
               {
                  _loc13_ = _loc12_ * (1 - this.§8=§ + Math.random() * this.§8=§ * 2) + this.§29§;
               }
               this.§29§ += _loc12_ - _loc13_;
               this.§1f§ -= _loc13_;
            }
            if(this.§[!$§ != Number.MAX_VALUE)
            {
               this.§[!$§ = Math.max(0,this.§[!$§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§6!&§.width;
         var _loc9_:Number = this.§6!&§.height;
         this.§[!!§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§7'§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§ !b§)
            {
               _loc6_ = (_loc4_ = this.§6B§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§8!M§[_loc14_ * 3];
               _loc17_ = this.§8!M§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§7[§.§&!J§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §7[§.§&!J§.§+h§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§[!!§;
                  this.§2! §.§,!9§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§2! §.§9p§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§2! §.§9p§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§2! §.§9p§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§2! §.§9p§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§2! §.§9p§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§2! §.§9p§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§2! §.§9p§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§2! §.§9p§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §7'§(param1:Matrix3D) : void
      {
         var _loc3_:§;p§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !b§)
         {
            _loc3_ = this.§6B§[_loc2_];
            this.§-!L§[_loc2_ * 3] = _loc3_.x;
            this.§-!L§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§-!L§,this.§8!M§);
      }
      
      override public function render(param1:§16§, param2:Number) : void
      {
         this.§3!U§(param1.§^7§);
         if(this.§[!!§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §<"§.§[F§(param2 != 1,this.§6!&§.mipMapping,false,this.§<6§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§]!V§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§!D§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§&z§ != this.§5>§)
         {
            this.§;F§(0);
            this.§5>§ = param1.§&z§;
         }
         if(!this.§&!Q§(_loc4_))
         {
            this.§ !^§.uploadFromVector(this.§2! §.§2?§,0,this.§[!!§ * 4);
            this.§6f§.uploadFromVector(this.§2! §.§46§,0,this.§[!!§ * 4);
         }
         _loc4_.setBlendFactors(this.§8Y§,this.§'R§);
         _loc4_.setProgram(§7[§.§&!J§.§&Q§(_loc3_));
         _loc4_.setTextureAt(0,this.§6!&§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§6f§,§#!-§.§4!]§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§;!3§,§#!-§.§8!O§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§ !^§,§#!-§.§7!$§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^7§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§>!,§,0,this.§[!!§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §;&§() : Boolean
      {
         return false;
      }
      
      public function get §continue§() : int
      {
         return this.§2! §.§]5§ / 4;
      }
      
      public function get §#g§() : int
      {
         return this.§ !b§;
      }
      
      public function get §@!<§() : Number
      {
         return this.§;`§;
      }
      
      public function set §@!<§(param1:Number) : void
      {
         this.§;`§ = param1;
      }
      
      public function get §5j§() : Number
      {
         return this.§&o§;
      }
      
      public function set §5j§(param1:Number) : void
      {
         this.§&o§ = param1;
      }
      
      public function get §,!Z§() : Number
      {
         return this.§ !K§;
      }
      
      public function set §,!Z§(param1:Number) : void
      {
         this.§ !K§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§6!&§;
      }
   }
}
