package §7x§
{
   import §&?§.§3l§;
   import §-!A§.§1!K§;
   import §<!N§.DisplayObject;
   import §=!C§.§>Z§;
   import §@M§.Texture;
   import §^h§.§2l§;
   import §^h§.§?!D§;
   import §^h§.§^M§;
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
   
   public class §2h§ extends DisplayObject implements §3l§
   {
       
      
      private var §#!9§:Texture;
      
      private var §@g§:Vector.<§`V§>;
      
      private var §`H§:Number;
      
      private var §-C§:Vector.<Number>;
      
      private var §0!G§:Vector.<Number>;
      
      private var §2!6§:§1!K§;
      
      private var §'x§:VertexBuffer3D;
      
      private var §@'§:VertexBuffer3D;
      
      private var §[4§:VertexBuffer3D;
      
      private var §!!"§:Vector.<uint>;
      
      private var §!1§:IndexBuffer3D;
      
      private var §<d§:int;
      
      private var §#-§:int;
      
      private var §=k§:Number;
      
      protected var §3s§:Number;
      
      private var §4!G§:Number = 0.0;
      
      private var §-!0§:Number;
      
      protected var §@6§:Number;
      
      protected var § 6§:Number;
      
      protected var §77§:Boolean;
      
      protected var §%!9§:String;
      
      protected var §,1§:String;
      
      protected var §&!4§:String;
      
      private var §,a§:int = -1;
      
      private var §`!L§:Boolean = false;
      
      private var §;!%§:Number = 0.0;
      
      public function §2h§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§#!9§ = param1;
         this.§77§ = param1.premultipliedAlpha;
         this.§@g§ = new Vector.<§`V§>(0,false);
         this.§-C§ = new Vector.<Number>();
         this.§0!G§ = new Vector.<Number>();
         this.§2!6§ = new §1!K§(0,this.§77§);
         this.§!!"§ = new Vector.<uint>(0);
         this.§=k§ = param2;
         this.§-!0§ = 0;
         this.§`H§ = 0;
         this.§ 6§ = 0;
         this.§@6§ = 0;
         this.§,1§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§%!9§ = param4 || (!!this.§77§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§#e§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§'x§)
         {
            this.§'x§.dispose();
         }
         if(this.§@'§)
         {
            this.§@'§.dispose();
         }
         if(this.§[4§)
         {
            this.§[4§.dispose();
         }
         if(this.§!1§)
         {
            this.§!1§.dispose();
         }
         this.§-C§ = null;
         this.§0!G§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §`V§
      {
         return new §`V§();
      }
      
      protected function initParticle(param1:§`V§) : void
      {
         param1.x = this.§@6§;
         param1.y = this.§ 6§;
         param1.§9;§ = 0;
         param1.§>1§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§`V§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§9;§ / param1.§>1§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§9;§ += param2;
      }
      
      private function §#e§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§]!#§;
         var _loc3_:int = this.§]!#§ + param1;
         var _loc4_:§1!K§;
         (_loc4_ = new §1!K§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§#!9§.adjustVertexData(_loc4_,0,4);
         this.§@g§.fixed = false;
         this.§!!"§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§@g§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§-C§.push(0);
               this.§0!G§.push(0);
               _loc7_++;
            }
            this.§2!6§.append(_loc4_);
            this.§!!"§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§@g§.fixed = true;
         this.§!!"§.fixed = true;
         this.§`!L§ = true;
      }
      
      private function §^!5§(param1:Context3D) : Boolean
      {
         if(!this.§`!L§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>Z§();
         }
         var _loc2_:int = this.§2!6§.§2r§ / 4;
         if(this.§'x§)
         {
            this.§'x§.dispose();
         }
         if(this.§@'§)
         {
            this.§@'§.dispose();
         }
         if(this.§[4§)
         {
            this.§[4§.dispose();
         }
         if(this.§!1§)
         {
            this.§!1§.dispose();
         }
         this.§'x§ = param1.createVertexBuffer(_loc2_ * 4,§1!K§.§&!&§);
         this.§'x§.uploadFromByteArray(this.§2!6§.§7!9§,0,0,_loc2_ * 4);
         this.§@'§ = param1.createVertexBuffer(_loc2_ * 4,§1!K§.§&!1§);
         this.§@'§.uploadFromVector(this.§2!6§.§4!#§,0,_loc2_ * 4);
         this.§[4§ = param1.createVertexBuffer(_loc2_ * 4,§1!K§.§>!9§);
         this.§[4§.uploadFromVector(this.§2!6§.§>!6§,0,_loc2_ * 4);
         this.§!1§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!1§.uploadFromVector(this.§!!"§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§=k§ != 0)
         {
            this.§-!0§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-!0§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §1!H§(param1);
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
      
      public function §&#§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§29§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§;!%§ = param1;
      }
      
      private function §29§(param1:Matrix3D) : void
      {
         var _loc4_:§`V§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§`V§ = null;
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
         if(isNaN(this.§;!%§) || this.§;!%§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§;!%§;
         this.§;!%§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§<d§)
         {
            if((_loc4_ = this.§@g§[_loc3_]).§9;§ < _loc4_.§>1§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§<d§ - 1)
               {
                  _loc11_ = this.§@g§[this.§<d§ - 1];
                  this.§@g§[this.§<d§ - 1] = _loc4_;
                  this.§@g§[_loc3_] = _loc11_;
               }
               --this.§<d§;
            }
         }
         if(this.§-!0§ > 0)
         {
            _loc12_ = 1 / this.§=k§;
            this.§`H§ += _loc2_;
            while(this.§`H§ > 0)
            {
               if(this.§<d§ == this.§]!#§)
               {
                  this.§#e§(this.§]!#§);
               }
               _loc4_ = this.§@g§[this.§<d§++] as §`V§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§`H§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§3s§))
               {
                  _loc13_ = _loc12_ * (1 - this.§3s§ + Math.random() * this.§3s§ * 2) + this.§4!G§;
               }
               this.§4!G§ += _loc12_ - _loc13_;
               this.§`H§ -= _loc13_;
            }
            if(this.§-!0§ != Number.MAX_VALUE)
            {
               this.§-!0§ = Math.max(0,this.§-!0§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§#!9§.width;
         var _loc9_:Number = this.§#!9§.height;
         this.§#-§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§+>§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§<d§)
            {
               _loc6_ = (_loc4_ = this.§@g§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§0!G§[_loc14_ * 3];
               _loc17_ = this.§0!G§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§2l§.§7K§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §2l§.§7K§.§7a§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§#-§;
                  this.§2!6§.§07§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§2!6§.§9[§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§2!6§.§9[§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§2!6§.§9[§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§2!6§.§9[§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§2!6§.§9[§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§2!6§.§9[§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§2!6§.§9[§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§2!6§.§9[§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §+>§(param1:Matrix3D) : void
      {
         var _loc3_:§`V§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<d§)
         {
            _loc3_ = this.§@g§[_loc2_];
            this.§-C§[_loc2_ * 3] = _loc3_.x;
            this.§-C§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§-C§,this.§0!G§);
      }
      
      override public function render(param1:§?!D§, param2:Number) : void
      {
         this.§29§(param1.§?D§);
         if(this.§#-§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §^M§.§6!1§(param2 != 1,this.§#!9§.mipMapping,false,this.§&!4§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§]7§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§77§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§9!E§ != this.§,a§)
         {
            this.§#e§(0);
            this.§,a§ = param1.§9!E§;
         }
         if(!this.§^!5§(_loc4_))
         {
            this.§@'§.uploadFromVector(this.§2!6§.§4!#§,0,this.§#-§ * 4);
            this.§[4§.uploadFromVector(this.§2!6§.§>!6§,0,this.§#-§ * 4);
         }
         _loc4_.setBlendFactors(this.§%!9§,this.§,1§);
         _loc4_.setProgram(§2l§.§7K§.§"!'§(_loc3_));
         _loc4_.setTextureAt(0,this.§#!9§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§[4§,§1!K§.§6!3§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§'x§,§1!K§.§ <§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§@'§,§1!K§.§ U§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§?D§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!1§,0,this.§#-§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §3j§() : Boolean
      {
         return false;
      }
      
      public function get §]!#§() : int
      {
         return this.§2!6§.§2r§ / 4;
      }
      
      public function get §,C§() : int
      {
         return this.§<d§;
      }
      
      public function get §^^§() : Number
      {
         return this.§=k§;
      }
      
      public function set §^^§(param1:Number) : void
      {
         this.§=k§ = param1;
      }
      
      public function get §?c§() : Number
      {
         return this.§@6§;
      }
      
      public function set §?c§(param1:Number) : void
      {
         this.§@6§ = param1;
      }
      
      public function get §>K§() : Number
      {
         return this.§ 6§;
      }
      
      public function set §>K§(param1:Number) : void
      {
         this.§ 6§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§#!9§;
      }
   }
}
