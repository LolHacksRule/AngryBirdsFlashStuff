package §]!"§
{
   import § !9§.Texture;
   import §#!J§.§9!O§;
   import §8!4§.§>'§;
   import §=R§.§3!N§;
   import §>Q§.§4?§;
   import §>Q§.§5!5§;
   import §>Q§.§<!%§;
   import §[=§.DisplayObject;
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
   
   public class §!m§ extends DisplayObject implements §3!N§
   {
       
      
      private var §4! §:Texture;
      
      private var §'!1§:Vector.<§0!"§>;
      
      private var § x§:Number;
      
      private var §=!$§:Vector.<Number>;
      
      private var §;8§:Vector.<Number>;
      
      private var §,!"§:§>'§;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §'R§:VertexBuffer3D;
      
      private var §8!O§:VertexBuffer3D;
      
      private var §3!_§:Vector.<uint>;
      
      private var §[V§:IndexBuffer3D;
      
      private var §#!!§:int;
      
      private var §1D§:int;
      
      private var §1@§:Number;
      
      protected var §[!<§:Number;
      
      private var §!<§:Number = 0.0;
      
      private var §7!J§:Number;
      
      protected var §<]§:Number;
      
      protected var §#F§:Number;
      
      protected var §&!;§:Boolean;
      
      protected var §!!1§:String;
      
      protected var §>!b§:String;
      
      protected var §-!F§:String;
      
      private var §do §:int = -1;
      
      private var §,!8§:Boolean = false;
      
      private var §7w§:Number = 0.0;
      
      public function §!m§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§4! § = param1;
         this.§&!;§ = param1.premultipliedAlpha;
         this.§'!1§ = new Vector.<§0!"§>(0,false);
         this.§=!$§ = new Vector.<Number>();
         this.§;8§ = new Vector.<Number>();
         this.§,!"§ = new §>'§(0,this.§&!;§);
         this.§3!_§ = new Vector.<uint>(0);
         this.§1@§ = param2;
         this.§7!J§ = 0;
         this.§ x§ = 0;
         this.§#F§ = 0;
         this.§<]§ = 0;
         this.§>!b§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§!!1§ = param4 || (!!this.§&!;§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§&!H§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§'R§)
         {
            this.§'R§.dispose();
         }
         if(this.§8!O§)
         {
            this.§8!O§.dispose();
         }
         if(this.§[V§)
         {
            this.§[V§.dispose();
         }
         this.§=!$§ = null;
         this.§;8§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §0!"§
      {
         return new §0!"§();
      }
      
      protected function initParticle(param1:§0!"§) : void
      {
         param1.x = this.§<]§;
         param1.y = this.§#F§;
         param1.§"!3§ = 0;
         param1.§>! § = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§0!"§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§"!3§ / param1.§>! §;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§"!3§ += param2;
      }
      
      private function §&!H§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§[A§;
         var _loc3_:int = this.§[A§ + param1;
         var _loc4_:§>'§;
         (_loc4_ = new §>'§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§4! §.adjustVertexData(_loc4_,0,4);
         this.§'!1§.fixed = false;
         this.§3!_§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§'!1§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§=!$§.push(0);
               this.§;8§.push(0);
               _loc7_++;
            }
            this.§,!"§.append(_loc4_);
            this.§3!_§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§'!1§.fixed = true;
         this.§3!_§.fixed = true;
         this.§,!8§ = true;
      }
      
      private function §@b§(param1:Context3D) : Boolean
      {
         if(!this.§,!8§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §9!O§();
         }
         var _loc2_:int = this.§,!"§.§<Z§ / 4;
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§'R§)
         {
            this.§'R§.dispose();
         }
         if(this.§8!O§)
         {
            this.§8!O§.dispose();
         }
         if(this.§[V§)
         {
            this.§[V§.dispose();
         }
         this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§>'§.§=F§);
         this.§+!>§.uploadFromByteArray(this.§,!"§.§[! §,0,0,_loc2_ * 4);
         this.§'R§ = param1.createVertexBuffer(_loc2_ * 4,§>'§.§!!a§);
         this.§'R§.uploadFromVector(this.§,!"§.§2t§,0,_loc2_ * 4);
         this.§8!O§ = param1.createVertexBuffer(_loc2_ * 4,§>'§.§]!L§);
         this.§8!O§.uploadFromVector(this.§,!"§.§>!W§,0,_loc2_ * 4);
         this.§[V§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§[V§.uploadFromVector(this.§3!_§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§1@§ != 0)
         {
            this.§7!J§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§7!J§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §5y§(param1);
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
      
      public function §5!Z§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§!'§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7w§ = param1;
      }
      
      private function §!'§(param1:Matrix3D) : void
      {
         var _loc4_:§0!"§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§0!"§ = null;
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
         if(isNaN(this.§7w§) || this.§7w§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7w§;
         this.§7w§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!!§)
         {
            if((_loc4_ = this.§'!1§[_loc3_]).§"!3§ < _loc4_.§>! §)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§#!!§ - 1)
               {
                  _loc11_ = this.§'!1§[this.§#!!§ - 1];
                  this.§'!1§[this.§#!!§ - 1] = _loc4_;
                  this.§'!1§[_loc3_] = _loc11_;
               }
               --this.§#!!§;
            }
         }
         if(this.§7!J§ > 0)
         {
            _loc12_ = 1 / this.§1@§;
            this.§ x§ += _loc2_;
            while(this.§ x§ > 0)
            {
               if(this.§#!!§ == this.§[A§)
               {
                  this.§&!H§(this.§[A§);
               }
               _loc4_ = this.§'!1§[this.§#!!§++] as §0!"§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§ x§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§[!<§))
               {
                  _loc13_ = _loc12_ * (1 - this.§[!<§ + Math.random() * this.§[!<§ * 2) + this.§!<§;
               }
               this.§!<§ += _loc12_ - _loc13_;
               this.§ x§ -= _loc13_;
            }
            if(this.§7!J§ != Number.MAX_VALUE)
            {
               this.§7!J§ = Math.max(0,this.§7!J§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§4! §.width;
         var _loc9_:Number = this.§4! §.height;
         this.§1D§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§]e§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§#!!§)
            {
               _loc6_ = (_loc4_ = this.§'!1§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§;8§[_loc14_ * 3];
               _loc17_ = this.§;8§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§5!5§.§5F§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §5!5§.§5F§.§"!%§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§1D§;
                  this.§,!"§.§3!J§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§,!"§.§7!T§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§,!"§.§7!T§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§,!"§.§7!T§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§,!"§.§7!T§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§,!"§.§7!T§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§,!"§.§7!T§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§,!"§.§7!T§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§,!"§.§7!T§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §]e§(param1:Matrix3D) : void
      {
         var _loc3_:§0!"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!!§)
         {
            _loc3_ = this.§'!1§[_loc2_];
            this.§=!$§[_loc2_ * 3] = _loc3_.x;
            this.§=!$§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§=!$§,this.§;8§);
      }
      
      override public function render(param1:§<!%§, param2:Number) : void
      {
         this.§!'§(param1.§'!D§);
         if(this.§1D§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §4?§.§7!G§(param2 != 1,this.§4! §.mipMapping,false,this.§-!F§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§`O§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§&!;§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§@U§ != this.§do §)
         {
            this.§&!H§(0);
            this.§do § = param1.§@U§;
         }
         if(!this.§@b§(_loc4_))
         {
            this.§'R§.uploadFromVector(this.§,!"§.§2t§,0,this.§1D§ * 4);
            this.§8!O§.uploadFromVector(this.§,!"§.§>!W§,0,this.§1D§ * 4);
         }
         _loc4_.setBlendFactors(this.§!!1§,this.§>!b§);
         _loc4_.setProgram(§5!5§.§5F§.§,t§(_loc3_));
         _loc4_.setTextureAt(0,this.§4! §.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§8!O§,§>'§.§+d§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+!>§,§>'§.§%!<§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§'R§,§>'§.§0P§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§'!D§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§[V§,0,this.§1D§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §3!R§() : Boolean
      {
         return false;
      }
      
      public function get §[A§() : int
      {
         return this.§,!"§.§<Z§ / 4;
      }
      
      public function get §,=§() : int
      {
         return this.§#!!§;
      }
      
      public function get §5!4§() : Number
      {
         return this.§1@§;
      }
      
      public function set §5!4§(param1:Number) : void
      {
         this.§1@§ = param1;
      }
      
      public function get §`!M§() : Number
      {
         return this.§<]§;
      }
      
      public function set §`!M§(param1:Number) : void
      {
         this.§<]§ = param1;
      }
      
      public function get §@!9§() : Number
      {
         return this.§#F§;
      }
      
      public function set §@!9§(param1:Number) : void
      {
         this.§#F§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§4! §;
      }
   }
}
