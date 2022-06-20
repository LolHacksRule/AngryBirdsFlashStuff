package §+"B§
{
   import § "7§.§1t§;
   import §+"6§.§2!6§;
   import §+"6§.§5!H§;
   import §+"6§.§9"+§;
   import §6!3§.§1!+§;
   import §<L§.Texture;
   import §>!+§.§2!%§;
   import §]&§.DisplayObject;
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
   
   public class §]$§ extends DisplayObject implements §1t§
   {
       
      
      private var §,x§:Texture;
      
      private var §]c§:Vector.<§=;§>;
      
      private var §]"&§:Number;
      
      private var §5!<§:Vector.<Number>;
      
      private var §]!+§:Vector.<Number>;
      
      private var §6" §:§2!%§;
      
      private var §>"9§:VertexBuffer3D;
      
      private var §0N§:VertexBuffer3D;
      
      private var §7J§:VertexBuffer3D;
      
      private var §%!Q§:Vector.<uint>;
      
      private var §1!!§:IndexBuffer3D;
      
      private var §`!t§:int;
      
      private var §3!>§:int;
      
      private var §9!"§:Number;
      
      protected var §-",§:Number;
      
      private var §!!S§:Number = 0.0;
      
      private var §;"'§:Number;
      
      protected var §3<§:Number;
      
      protected var §5!D§:Number;
      
      protected var §-!8§:Boolean;
      
      protected var § 4§:String;
      
      protected var §&"+§:String;
      
      protected var §&"5§:String;
      
      private var §,!>§:int = -1;
      
      private var §4!X§:Boolean = false;
      
      private var §!!o§:Number = 0.0;
      
      public function §]$§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§,x§ = param1;
         this.§-!8§ = param1.premultipliedAlpha;
         this.§]c§ = new Vector.<§=;§>(0,false);
         this.§5!<§ = new Vector.<Number>();
         this.§]!+§ = new Vector.<Number>();
         this.§6" § = new §2!%§(0,this.§-!8§);
         this.§%!Q§ = new Vector.<uint>(0);
         this.§9!"§ = param2;
         this.§;"'§ = 0;
         this.§]"&§ = 0;
         this.§5!D§ = 0;
         this.§3<§ = 0;
         this.§&"+§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§ 4§ = param4 || (!!this.§-!8§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§'"#§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§>"9§)
         {
            this.§>"9§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         if(this.§7J§)
         {
            this.§7J§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         this.§5!<§ = null;
         this.§]!+§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §=;§
      {
         return new §=;§();
      }
      
      protected function initParticle(param1:§=;§) : void
      {
         param1.x = this.§3<§;
         param1.y = this.§5!D§;
         param1.§>"6§ = 0;
         param1.§,[§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§=;§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§>"6§ / param1.§,[§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§>"6§ += param2;
      }
      
      private function §'"#§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§3!&§;
         var _loc3_:int = this.§3!&§ + param1;
         var _loc4_:§2!%§;
         (_loc4_ = new §2!%§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§,x§.adjustVertexData(_loc4_,0,4);
         this.§]c§.fixed = false;
         this.§%!Q§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§]c§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§5!<§.push(0);
               this.§]!+§.push(0);
               _loc7_++;
            }
            this.§6" §.append(_loc4_);
            this.§%!Q§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§]c§.fixed = true;
         this.§%!Q§.fixed = true;
         this.§4!X§ = true;
      }
      
      private function §?!T§(param1:Context3D) : Boolean
      {
         if(!this.§4!X§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §1!+§();
         }
         var _loc2_:int = this.§6" §.§<"8§ / 4;
         if(this.§>"9§)
         {
            this.§>"9§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         if(this.§7J§)
         {
            this.§7J§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         this.§>"9§ = param1.createVertexBuffer(_loc2_ * 4,§2!%§.§!!%§);
         this.§>"9§.uploadFromByteArray(this.§6" §.§@"@§,0,0,_loc2_ * 4);
         this.§0N§ = param1.createVertexBuffer(_loc2_ * 4,§2!%§.§^!j§);
         this.§0N§.uploadFromVector(this.§6" §.§=!W§,0,_loc2_ * 4);
         this.§7J§ = param1.createVertexBuffer(_loc2_ * 4,§2!%§.§;o§);
         this.§7J§.uploadFromVector(this.§6" §.§]! §,0,_loc2_ * 4);
         this.§1!!§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§1!!§.uploadFromVector(this.§%!Q§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§9!"§ != 0)
         {
            this.§;"'§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§;"'§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §%!b§(param1);
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
      
      public function §+!u§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§["1§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§!!o§ = param1;
      }
      
      private function §["1§(param1:Matrix3D) : void
      {
         var _loc4_:§=;§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§=;§ = null;
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
         if(isNaN(this.§!!o§) || this.§!!o§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§!!o§;
         this.§!!o§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§`!t§)
         {
            if((_loc4_ = this.§]c§[_loc3_]).§>"6§ < _loc4_.§,[§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§`!t§ - 1)
               {
                  _loc11_ = this.§]c§[this.§`!t§ - 1];
                  this.§]c§[this.§`!t§ - 1] = _loc4_;
                  this.§]c§[_loc3_] = _loc11_;
               }
               --this.§`!t§;
            }
         }
         if(this.§;"'§ > 0)
         {
            _loc12_ = 1 / this.§9!"§;
            this.§]"&§ += _loc2_;
            while(this.§]"&§ > 0)
            {
               if(this.§`!t§ == this.§3!&§)
               {
                  this.§'"#§(this.§3!&§);
               }
               _loc4_ = this.§]c§[this.§`!t§++] as §=;§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§]"&§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§-",§))
               {
                  _loc13_ = _loc12_ * (1 - this.§-",§ + Math.random() * this.§-",§ * 2) + this.§!!S§;
               }
               this.§!!S§ += _loc12_ - _loc13_;
               this.§]"&§ -= _loc13_;
            }
            if(this.§;"'§ != Number.MAX_VALUE)
            {
               this.§;"'§ = Math.max(0,this.§;"'§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§,x§.width;
         var _loc9_:Number = this.§,x§.height;
         this.§3!>§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§"!%§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§`!t§)
            {
               _loc6_ = (_loc4_ = this.§]c§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§]!+§[_loc14_ * 3];
               _loc17_ = this.§]!+§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§5!H§.§%n§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §5!H§.§%n§.§;![§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§3!>§;
                  this.§6" §.§7"2§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§6" §.§#!%§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§6" §.§#!%§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§6" §.§#!%§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§6" §.§#!%§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§6" §.§#!%§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§6" §.§#!%§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§6" §.§#!%§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§6" §.§#!%§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §"!%§(param1:Matrix3D) : void
      {
         var _loc3_:§=;§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!t§)
         {
            _loc3_ = this.§]c§[_loc2_];
            this.§5!<§[_loc2_ * 3] = _loc3_.x;
            this.§5!<§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§5!<§,this.§]!+§);
      }
      
      override public function render(param1:§2!6§, param2:Number) : void
      {
         this.§["1§(param1.§ d§);
         if(this.§3!>§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §9"+§.§7!j§(param2 != 1,this.§,x§.mipMapping,false,this.§&"5§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§&l§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§-!8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§`9§ != this.§,!>§)
         {
            this.§'"#§(0);
            this.§,!>§ = param1.§`9§;
         }
         if(!this.§?!T§(_loc4_))
         {
            this.§0N§.uploadFromVector(this.§6" §.§=!W§,0,this.§3!>§ * 4);
            this.§7J§.uploadFromVector(this.§6" §.§]! §,0,this.§3!>§ * 4);
         }
         _loc4_.setBlendFactors(this.§ 4§,this.§&"+§);
         _loc4_.setProgram(§5!H§.§%n§.§?!a§(_loc3_));
         _loc4_.setTextureAt(0,this.§,x§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§7J§,§2!%§.§?8§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§>"9§,§2!%§.§"_§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§0N§,§2!%§.§@!0§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§ d§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§1!!§,0,this.§3!>§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §<T§() : Boolean
      {
         return false;
      }
      
      public function get §3!&§() : int
      {
         return this.§6" §.§<"8§ / 4;
      }
      
      public function get § get§() : int
      {
         return this.§`!t§;
      }
      
      public function get §4!t§() : Number
      {
         return this.§9!"§;
      }
      
      public function set §4!t§(param1:Number) : void
      {
         this.§9!"§ = param1;
      }
      
      public function get §]!i§() : Number
      {
         return this.§3<§;
      }
      
      public function set §]!i§(param1:Number) : void
      {
         this.§3<§ = param1;
      }
      
      public function get §&!T§() : Number
      {
         return this.§5!D§;
      }
      
      public function set §&!T§(param1:Number) : void
      {
         this.§5!D§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§,x§;
      }
   }
}
