package §;n§
{
   import §!!!§.§-!k§;
   import §!!!§.§6!l§;
   import §!!!§.§<@§;
   import §#!M§.§,!Y§;
   import §3!J§.DisplayObject;
   import §90§.§"!z§;
   import §=!4§.Texture;
   import §^!^§.§#!_§;
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
   
   public class §""6§ extends DisplayObject implements §,!Y§
   {
       
      
      private var §>"5§:Texture;
      
      private var §53§:Vector.<§#H§>;
      
      private var §["0§:Number;
      
      private var §3!2§:Vector.<Number>;
      
      private var §3!b§:Vector.<Number>;
      
      private var §2!^§:§#!_§;
      
      private var §3%§:VertexBuffer3D;
      
      private var §17§:VertexBuffer3D;
      
      private var §>7§:VertexBuffer3D;
      
      private var §@E§:Vector.<uint>;
      
      private var §@X§:IndexBuffer3D;
      
      private var §9Q§:int;
      
      private var §;k§:int;
      
      private var §'"4§:Number;
      
      protected var §>!u§:Number;
      
      private var §"!!§:Number = 0.0;
      
      private var § in§:Number;
      
      protected var §1K§:Number;
      
      protected var §&!U§:Number;
      
      protected var §40§:Boolean;
      
      protected var §+!R§:String;
      
      protected var §,!D§:String;
      
      protected var §<!Z§:String;
      
      private var §]V§:int = -1;
      
      private var §?!5§:Boolean = false;
      
      private var §%b§:Number = 0.0;
      
      public function §""6§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§>"5§ = param1;
         this.§40§ = param1.premultipliedAlpha;
         this.§53§ = new Vector.<§#H§>(0,false);
         this.§3!2§ = new Vector.<Number>();
         this.§3!b§ = new Vector.<Number>();
         this.§2!^§ = new §#!_§(0,this.§40§);
         this.§@E§ = new Vector.<uint>(0);
         this.§'"4§ = param2;
         this.§ in§ = 0;
         this.§["0§ = 0;
         this.§&!U§ = 0;
         this.§1K§ = 0;
         this.§,!D§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§+!R§ = param4 || (!!this.§40§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§;]§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3%§)
         {
            this.§3%§.dispose();
         }
         if(this.§17§)
         {
            this.§17§.dispose();
         }
         if(this.§>7§)
         {
            this.§>7§.dispose();
         }
         if(this.§@X§)
         {
            this.§@X§.dispose();
         }
         this.§3!2§ = null;
         this.§3!b§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §#H§
      {
         return new §#H§();
      }
      
      protected function initParticle(param1:§#H§) : void
      {
         param1.x = this.§1K§;
         param1.y = this.§&!U§;
         param1.§[Q§ = 0;
         param1.§ "-§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§#H§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§[Q§ / param1.§ "-§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§[Q§ += param2;
      }
      
      private function §;]§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§7!x§;
         var _loc3_:int = this.§7!x§ + param1;
         var _loc4_:§#!_§;
         (_loc4_ = new §#!_§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§>"5§.adjustVertexData(_loc4_,0,4);
         this.§53§.fixed = false;
         this.§@E§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§53§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§3!2§.push(0);
               this.§3!b§.push(0);
               _loc7_++;
            }
            this.§2!^§.append(_loc4_);
            this.§@E§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§53§.fixed = true;
         this.§@E§.fixed = true;
         this.§?!5§ = true;
      }
      
      private function §#!s§(param1:Context3D) : Boolean
      {
         if(!this.§?!5§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §"!z§();
         }
         var _loc2_:int = this.§2!^§.§-!n§ / 4;
         if(this.§3%§)
         {
            this.§3%§.dispose();
         }
         if(this.§17§)
         {
            this.§17§.dispose();
         }
         if(this.§>7§)
         {
            this.§>7§.dispose();
         }
         if(this.§@X§)
         {
            this.§@X§.dispose();
         }
         this.§3%§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.each);
         this.§3%§.uploadFromByteArray(this.§2!^§.§^%§,0,0,_loc2_ * 4);
         this.§17§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§1+§);
         this.§17§.uploadFromVector(this.§2!^§.§?c§,0,_loc2_ * 4);
         this.§>7§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§+!;§);
         this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,_loc2_ * 4);
         this.§@X§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§@X§.uploadFromVector(this.§@E§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§'"4§ != 0)
         {
            this.§ in§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§ in§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §else §(param1);
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
      
      public function §>!s§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§=e§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§%b§ = param1;
      }
      
      private function §=e§(param1:Matrix3D) : void
      {
         var _loc4_:§#H§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§#H§ = null;
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
         if(isNaN(this.§%b§) || this.§%b§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§%b§;
         this.§%b§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§9Q§)
         {
            if((_loc4_ = this.§53§[_loc3_]).§[Q§ < _loc4_.§ "-§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§9Q§ - 1)
               {
                  _loc11_ = this.§53§[this.§9Q§ - 1];
                  this.§53§[this.§9Q§ - 1] = _loc4_;
                  this.§53§[_loc3_] = _loc11_;
               }
               --this.§9Q§;
            }
         }
         if(this.§ in§ > 0)
         {
            _loc12_ = 1 / this.§'"4§;
            this.§["0§ += _loc2_;
            while(this.§["0§ > 0)
            {
               if(this.§9Q§ == this.§7!x§)
               {
                  this.§;]§(this.§7!x§);
               }
               _loc4_ = this.§53§[this.§9Q§++] as §#H§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§["0§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§>!u§))
               {
                  _loc13_ = _loc12_ * (1 - this.§>!u§ + Math.random() * this.§>!u§ * 2) + this.§"!!§;
               }
               this.§"!!§ += _loc12_ - _loc13_;
               this.§["0§ -= _loc13_;
            }
            if(this.§ in§ != Number.MAX_VALUE)
            {
               this.§ in§ = Math.max(0,this.§ in§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§>"5§.width;
         var _loc9_:Number = this.§>"5§.height;
         this.§;k§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§=!N§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§9Q§)
            {
               _loc6_ = (_loc4_ = this.§53§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§3!b§[_loc14_ * 3];
               _loc17_ = this.§3!b§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§6!l§.§+J§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §6!l§.§+J§.§ !T§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§;k§;
                  this.§2!^§.§,;§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§2!^§.§>!o§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§2!^§.§>!o§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§2!^§.§>!o§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§2!^§.§>!o§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§2!^§.§>!o§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§2!^§.§>!o§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§2!^§.§>!o§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§2!^§.§>!o§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §=!N§(param1:Matrix3D) : void
      {
         var _loc3_:§#H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9Q§)
         {
            _loc3_ = this.§53§[_loc2_];
            this.§3!2§[_loc2_ * 3] = _loc3_.x;
            this.§3!2§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§3!2§,this.§3!b§);
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         this.§=e§(param1.§6?§);
         if(this.§;k§ == 0)
         {
            return;
         }
         param1.§6!s§();
         param2 *= this.alpha;
         var _loc3_:String = §-!k§.§20§(param2 != 1,this.§>"5§.mipMapping,false,this.§<!Z§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§!! §) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§40§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§>F§ != this.§]V§)
         {
            this.§;]§(0);
            this.§]V§ = param1.§>F§;
         }
         if(!this.§#!s§(_loc4_))
         {
            this.§17§.uploadFromVector(this.§2!^§.§?c§,0,this.§;k§ * 4);
            this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,this.§;k§ * 4);
         }
         _loc4_.setBlendFactors(this.§+!R§,this.§,!D§);
         _loc4_.setProgram(§6!l§.§+J§.§=H§(_loc3_));
         _loc4_.setTextureAt(0,this.§>"5§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§>7§,§#!_§.§<U§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§3%§,§#!_§.§[!^§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§17§,§#!_§.§>!1§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§6?§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§@X§,0,this.§;k§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §^+§() : Boolean
      {
         return false;
      }
      
      public function get §7!x§() : int
      {
         return this.§2!^§.§-!n§ / 4;
      }
      
      public function get §=w§() : int
      {
         return this.§9Q§;
      }
      
      public function get §8!k§() : Number
      {
         return this.§'"4§;
      }
      
      public function set §8!k§(param1:Number) : void
      {
         this.§'"4§ = param1;
      }
      
      public function get §0G§() : Number
      {
         return this.§1K§;
      }
      
      public function set §0G§(param1:Number) : void
      {
         this.§1K§ = param1;
      }
      
      public function get §,1§() : Number
      {
         return this.§&!U§;
      }
      
      public function set §,1§(param1:Number) : void
      {
         this.§&!U§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§>"5§;
      }
   }
}
