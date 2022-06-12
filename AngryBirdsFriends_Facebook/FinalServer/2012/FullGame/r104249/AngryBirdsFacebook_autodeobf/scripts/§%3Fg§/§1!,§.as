package §?g§
{
   import §+!F§.§1!D§;
   import §+!F§.§7U§;
   import §+!F§.§<!l§;
   import §,!"§.§+!3§;
   import §8!8§.§`g§;
   import §;5§.§?@§;
   import §?7§.Texture;
   import §]!v§.DisplayObject;
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
   
   public class §1!,§ extends DisplayObject implements §+!3§
   {
       
      
      private var §&P§:Texture;
      
      private var §0!i§:Vector.<§+4§>;
      
      private var §6!N§:Number;
      
      private var §3]§:Vector.<Number>;
      
      private var §;t§:Vector.<Number>;
      
      private var §`!a§:§`g§;
      
      private var §0!F§:VertexBuffer3D;
      
      private var §`C§:VertexBuffer3D;
      
      private var §6H§:VertexBuffer3D;
      
      private var §8!%§:Vector.<uint>;
      
      private var §!s§:IndexBuffer3D;
      
      private var §&X§:int;
      
      private var §7=§:int;
      
      private var §=P§:Number;
      
      protected var §,#§:Number;
      
      private var §0z§:Number = 0.0;
      
      private var §-!M§:Number;
      
      protected var §9j§:Number;
      
      protected var §!#§:Number;
      
      protected var §8-§:Boolean;
      
      protected var §'d§:String;
      
      protected var §5U§:String;
      
      protected var §[<§:String;
      
      private var §`c§:int = -1;
      
      private var §`U§:Boolean = false;
      
      private var §7!p§:Number = 0.0;
      
      public function §1!,§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§&P§ = param1;
         this.§8-§ = param1.premultipliedAlpha;
         this.§0!i§ = new Vector.<§+4§>(0,false);
         this.§3]§ = new Vector.<Number>();
         this.§;t§ = new Vector.<Number>();
         this.§`!a§ = new §`g§(0,this.§8-§);
         this.§8!%§ = new Vector.<uint>(0);
         this.§=P§ = param2;
         this.§-!M§ = 0;
         this.§6!N§ = 0;
         this.§!#§ = 0;
         this.§9j§ = 0;
         this.§5U§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§'d§ = param4 || (!!this.§8-§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§6"'§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§0!F§)
         {
            this.§0!F§.dispose();
         }
         if(this.§`C§)
         {
            this.§`C§.dispose();
         }
         if(this.§6H§)
         {
            this.§6H§.dispose();
         }
         if(this.§!s§)
         {
            this.§!s§.dispose();
         }
         this.§3]§ = null;
         this.§;t§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §+4§
      {
         return new §+4§();
      }
      
      protected function initParticle(param1:§+4§) : void
      {
         param1.x = this.§9j§;
         param1.y = this.§!#§;
         param1.§+X§ = 0;
         param1.§=g§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§+4§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§+X§ / param1.§=g§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§+X§ += param2;
      }
      
      private function §6"'§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§2!]§;
         var _loc3_:int = this.§2!]§ + param1;
         var _loc4_:§`g§;
         (_loc4_ = new §`g§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§&P§.adjustVertexData(_loc4_,0,4);
         this.§0!i§.fixed = false;
         this.§8!%§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§0!i§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§3]§.push(0);
               this.§;t§.push(0);
               _loc7_++;
            }
            this.§`!a§.append(_loc4_);
            this.§8!%§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§0!i§.fixed = true;
         this.§8!%§.fixed = true;
         this.§`U§ = true;
      }
      
      private function §;V§(param1:Context3D) : Boolean
      {
         if(!this.§`U§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §?@§();
         }
         var _loc2_:int = this.§`!a§.§"!U§ / 4;
         if(this.§0!F§)
         {
            this.§0!F§.dispose();
         }
         if(this.§`C§)
         {
            this.§`C§.dispose();
         }
         if(this.§6H§)
         {
            this.§6H§.dispose();
         }
         if(this.§!s§)
         {
            this.§!s§.dispose();
         }
         this.§0!F§ = param1.createVertexBuffer(_loc2_ * 4,§`g§.§"!4§);
         this.§0!F§.uploadFromByteArray(this.§`!a§.§,!4§,0,0,_loc2_ * 4);
         this.§`C§ = param1.createVertexBuffer(_loc2_ * 4,§`g§.§-=§);
         this.§`C§.uploadFromVector(this.§`!a§.§0!!§,0,_loc2_ * 4);
         this.§6H§ = param1.createVertexBuffer(_loc2_ * 4,§`g§.§0f§);
         this.§6H§.uploadFromVector(this.§`!a§.§4"7§,0,_loc2_ * 4);
         this.§!s§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!s§.uploadFromVector(this.§8!%§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§=P§ != 0)
         {
            this.§-!M§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-!M§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §["+§(param1);
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
      
      public function §4"G§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§+§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7!p§ = param1;
      }
      
      private function §+§(param1:Matrix3D) : void
      {
         var _loc4_:§+4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§+4§ = null;
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
         if(isNaN(this.§7!p§) || this.§7!p§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7!p§;
         this.§7!p§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§&X§)
         {
            if((_loc4_ = this.§0!i§[_loc3_]).§+X§ < _loc4_.§=g§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§&X§ - 1)
               {
                  _loc11_ = this.§0!i§[this.§&X§ - 1];
                  this.§0!i§[this.§&X§ - 1] = _loc4_;
                  this.§0!i§[_loc3_] = _loc11_;
               }
               --this.§&X§;
            }
         }
         if(this.§-!M§ > 0)
         {
            _loc12_ = 1 / this.§=P§;
            this.§6!N§ += _loc2_;
            while(this.§6!N§ > 0)
            {
               if(this.§&X§ == this.§2!]§)
               {
                  this.§6"'§(this.§2!]§);
               }
               _loc4_ = this.§0!i§[this.§&X§++] as §+4§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6!N§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§,#§))
               {
                  _loc13_ = _loc12_ * (1 - this.§,#§ + Math.random() * this.§,#§ * 2) + this.§0z§;
               }
               this.§0z§ += _loc12_ - _loc13_;
               this.§6!N§ -= _loc13_;
            }
            if(this.§-!M§ != Number.MAX_VALUE)
            {
               this.§-!M§ = Math.max(0,this.§-!M§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§&P§.width;
         var _loc9_:Number = this.§&P§.height;
         this.§7=§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§9! §(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§&X§)
            {
               _loc6_ = (_loc4_ = this.§0!i§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§;t§[_loc14_ * 3];
               _loc17_ = this.§;t§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§1!D§.§7!T§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §1!D§.§7!T§.§""E§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§7=§;
                  this.§`!a§.§[!d§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§`!a§.§"!y§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§`!a§.§"!y§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§`!a§.§"!y§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§`!a§.§"!y§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§`!a§.§"!y§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§`!a§.§"!y§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§`!a§.§"!y§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§`!a§.§"!y§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §9! §(param1:Matrix3D) : void
      {
         var _loc3_:§+4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&X§)
         {
            _loc3_ = this.§0!i§[_loc2_];
            this.§3]§[_loc2_ * 3] = _loc3_.x;
            this.§3]§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§3]§,this.§;t§);
      }
      
      override public function render(param1:§<!l§, param2:Number) : void
      {
         this.§+§(param1.§7a§);
         if(this.§7=§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §7U§.§`!B§(param2 != 1,this.§&P§.mipMapping,false,this.§[<§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§>4§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§8-§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§@B§ != this.§`c§)
         {
            this.§6"'§(0);
            this.§`c§ = param1.§@B§;
         }
         if(!this.§;V§(_loc4_))
         {
            this.§`C§.uploadFromVector(this.§`!a§.§0!!§,0,this.§7=§ * 4);
            this.§6H§.uploadFromVector(this.§`!a§.§4"7§,0,this.§7=§ * 4);
         }
         _loc4_.setBlendFactors(this.§'d§,this.§5U§);
         _loc4_.setProgram(§1!D§.§7!T§.§^!Y§(_loc3_));
         _loc4_.setTextureAt(0,this.§&P§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§6H§,§`g§.§6C§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§0!F§,§`g§.§"!h§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§`C§,§`g§.§`<§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7a§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!s§,0,this.§7=§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §!r§() : Boolean
      {
         return false;
      }
      
      public function get §2!]§() : int
      {
         return this.§`!a§.§"!U§ / 4;
      }
      
      public function get §?b§() : int
      {
         return this.§&X§;
      }
      
      public function get §7§() : Number
      {
         return this.§=P§;
      }
      
      public function set §7§(param1:Number) : void
      {
         this.§=P§ = param1;
      }
      
      public function get §?";§() : Number
      {
         return this.§9j§;
      }
      
      public function set §?";§(param1:Number) : void
      {
         this.§9j§ = param1;
      }
      
      public function get §2!^§() : Number
      {
         return this.§!#§;
      }
      
      public function set §2!^§(param1:Number) : void
      {
         this.§!#§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§&P§;
      }
   }
}
