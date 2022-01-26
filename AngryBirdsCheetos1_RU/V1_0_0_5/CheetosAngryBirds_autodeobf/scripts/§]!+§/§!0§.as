package §]!+§
{
   import §+!=§.§%!1§;
   import §+>§.§=!E§;
   import §-A§.Texture;
   import §;!,§.§20§;
   import §]_§.§!F§;
   import §]_§.§&c§;
   import §]_§.§7o§;
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
   import §null §.DisplayObject;
   
   public class §!0§ extends DisplayObject implements §=!E§
   {
       
      
      private var §9q§:Texture;
      
      private var §&`§:Vector.<§5r§>;
      
      private var §5#§:Number;
      
      private var §>!G§:Vector.<Number>;
      
      private var §]§:Vector.<Number>;
      
      private var §!H§:§20§;
      
      private var §3!%§:VertexBuffer3D;
      
      private var §]P§:VertexBuffer3D;
      
      private var §9G§:VertexBuffer3D;
      
      private var §#!_§:Vector.<uint>;
      
      private var §`!@§:IndexBuffer3D;
      
      private var §&'§:int;
      
      private var §;!<§:int;
      
      private var §&s§:Number;
      
      protected var §5!0§:Number;
      
      private var §2_§:Number = 0.0;
      
      private var §+!,§:Number;
      
      protected var §^9§:Number;
      
      protected var §?%§:Number;
      
      protected var §-N§:Boolean;
      
      protected var §^!2§:String;
      
      protected var §2!V§:String;
      
      protected var §`!]§:String;
      
      private var §7T§:int = -1;
      
      private var §else§:Boolean = false;
      
      private var § e§:Number = 0.0;
      
      public function §!0§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§9q§ = param1;
         this.§-N§ = param1.premultipliedAlpha;
         this.§&`§ = new Vector.<§5r§>(0,false);
         this.§>!G§ = new Vector.<Number>();
         this.§]§ = new Vector.<Number>();
         this.§!H§ = new §20§(0,this.§-N§);
         this.§#!_§ = new Vector.<uint>(0);
         this.§&s§ = param2;
         this.§+!,§ = 0;
         this.§5#§ = 0;
         this.§?%§ = 0;
         this.§^9§ = 0;
         this.§2!V§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§^!2§ = param4 || (!!this.§-N§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§"Y§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3!%§)
         {
            this.§3!%§.dispose();
         }
         if(this.§]P§)
         {
            this.§]P§.dispose();
         }
         if(this.§9G§)
         {
            this.§9G§.dispose();
         }
         if(this.§`!@§)
         {
            this.§`!@§.dispose();
         }
         this.§>!G§ = null;
         this.§]§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §5r§
      {
         return new §5r§();
      }
      
      protected function initParticle(param1:§5r§) : void
      {
         param1.x = this.§^9§;
         param1.y = this.§?%§;
         param1.§]8§ = 0;
         param1.§^!$§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§5r§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§]8§ / param1.§^!$§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§]8§ += param2;
      }
      
      private function §"Y§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§"w§;
         var _loc3_:int = this.§"w§ + param1;
         var _loc4_:§20§;
         (_loc4_ = new §20§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§9q§.adjustVertexData(_loc4_,0,4);
         this.§&`§.fixed = false;
         this.§#!_§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§&`§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§>!G§.push(0);
               this.§]§.push(0);
               _loc7_++;
            }
            this.§!H§.append(_loc4_);
            this.§#!_§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§&`§.fixed = true;
         this.§#!_§.fixed = true;
         this.§else§ = true;
      }
      
      private function §<C§(param1:Context3D) : Boolean
      {
         if(!this.§else§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%!1§();
         }
         var _loc2_:int = this.§!H§.§=!^§ / 4;
         if(this.§3!%§)
         {
            this.§3!%§.dispose();
         }
         if(this.§]P§)
         {
            this.§]P§.dispose();
         }
         if(this.§9G§)
         {
            this.§9G§.dispose();
         }
         if(this.§`!@§)
         {
            this.§`!@§.dispose();
         }
         this.§3!%§ = param1.createVertexBuffer(_loc2_ * 4,§20§.§,y§);
         this.§3!%§.uploadFromByteArray(this.§!H§.§0!;§,0,0,_loc2_ * 4);
         this.§]P§ = param1.createVertexBuffer(_loc2_ * 4,§20§.§"#§);
         this.§]P§.uploadFromVector(this.§!H§.§ !§,0,_loc2_ * 4);
         this.§9G§ = param1.createVertexBuffer(_loc2_ * 4,§20§.§[@§);
         this.§9G§.uploadFromVector(this.§!H§.§@v§,0,_loc2_ * 4);
         this.§`!@§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§`!@§.uploadFromVector(this.§#!_§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§&s§ != 0)
         {
            this.§+!,§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§+!,§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §7!N§(param1);
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
      
      public function §80§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§2O§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§ e§ = param1;
      }
      
      private function §2O§(param1:Matrix3D) : void
      {
         var _loc4_:§5r§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§5r§ = null;
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
         if(isNaN(this.§ e§) || this.§ e§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§ e§;
         this.§ e§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§&'§)
         {
            if((_loc4_ = this.§&`§[_loc3_]).§]8§ < _loc4_.§^!$§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§&'§ - 1)
               {
                  _loc11_ = this.§&`§[this.§&'§ - 1];
                  this.§&`§[this.§&'§ - 1] = _loc4_;
                  this.§&`§[_loc3_] = _loc11_;
               }
               --this.§&'§;
            }
         }
         if(this.§+!,§ > 0)
         {
            _loc12_ = 1 / this.§&s§;
            this.§5#§ += _loc2_;
            while(this.§5#§ > 0)
            {
               if(this.§&'§ == this.§"w§)
               {
                  this.§"Y§(this.§"w§);
               }
               _loc4_ = this.§&`§[this.§&'§++] as §5r§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5#§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§5!0§))
               {
                  _loc13_ = _loc12_ * (1 - this.§5!0§ + Math.random() * this.§5!0§ * 2) + this.§2_§;
               }
               this.§2_§ += _loc12_ - _loc13_;
               this.§5#§ -= _loc13_;
            }
            if(this.§+!,§ != Number.MAX_VALUE)
            {
               this.§+!,§ = Math.max(0,this.§+!,§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§9q§.width;
         var _loc9_:Number = this.§9q§.height;
         this.§;!<§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§,U§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§&'§)
            {
               _loc6_ = (_loc4_ = this.§&`§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§]§[_loc14_ * 3];
               _loc17_ = this.§]§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§!F§.§[M§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §!F§.§[M§.§1!`§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§;!<§;
                  this.§!H§.§++§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§!H§.§'2§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§!H§.§'2§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§!H§.§'2§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§!H§.§'2§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§!H§.§'2§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§!H§.§'2§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§!H§.§'2§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§!H§.§'2§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §,U§(param1:Matrix3D) : void
      {
         var _loc3_:§5r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&'§)
         {
            _loc3_ = this.§&`§[_loc2_];
            this.§>!G§[_loc2_ * 3] = _loc3_.x;
            this.§>!G§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§>!G§,this.§]§);
      }
      
      override public function render(param1:§7o§, param2:Number) : void
      {
         this.§2O§(param1.§!Y§);
         if(this.§;!<§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §&c§.§@!;§(param2 != 1,this.§9q§.mipMapping,false,this.§`!]§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§>!6§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§-N§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§]x§ != this.§7T§)
         {
            this.§"Y§(0);
            this.§7T§ = param1.§]x§;
         }
         if(!this.§<C§(_loc4_))
         {
            this.§]P§.uploadFromVector(this.§!H§.§ !§,0,this.§;!<§ * 4);
            this.§9G§.uploadFromVector(this.§!H§.§@v§,0,this.§;!<§ * 4);
         }
         _loc4_.setBlendFactors(this.§^!2§,this.§2!V§);
         _loc4_.setProgram(§!F§.§[M§.§ Z§(_loc3_));
         _loc4_.setTextureAt(0,this.§9q§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§9G§,§20§.§-2§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§3!%§,§20§.§+_§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§]P§,§20§.§2!8§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§!Y§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§`!@§,0,this.§;!<§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §<!?§() : Boolean
      {
         return false;
      }
      
      public function get §"w§() : int
      {
         return this.§!H§.§=!^§ / 4;
      }
      
      public function get §<^§() : int
      {
         return this.§&'§;
      }
      
      public function get §>!?§() : Number
      {
         return this.§&s§;
      }
      
      public function set §>!?§(param1:Number) : void
      {
         this.§&s§ = param1;
      }
      
      public function get §;W§() : Number
      {
         return this.§^9§;
      }
      
      public function set §;W§(param1:Number) : void
      {
         this.§^9§ = param1;
      }
      
      public function get §^!?§() : Number
      {
         return this.§?%§;
      }
      
      public function set §^!?§(param1:Number) : void
      {
         this.§?%§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§9q§;
      }
   }
}
