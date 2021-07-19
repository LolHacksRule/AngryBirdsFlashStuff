package §53§
{
   import §"^§.§'X§;
   import §"^§.§+!'§;
   import §"^§.§2v§;
   import §,M§.§6!G§;
   import §2Y§.DisplayObject;
   import §2i§.§"V§;
   import §=9§.§?!2§;
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
   
   public class §;!B§ extends DisplayObject implements §6!G§
   {
       
      
      private var §-y§:Texture;
      
      private var §@!f§:Vector.<§=!b§>;
      
      private var §#s§:Number;
      
      private var §3^§:Vector.<Number>;
      
      private var §[0§:Vector.<Number>;
      
      private var §-!^§:§?!2§;
      
      private var §%3§:VertexBuffer3D;
      
      private var §3§:VertexBuffer3D;
      
      private var §[l§:VertexBuffer3D;
      
      private var §[X§:Vector.<uint>;
      
      private var §8`§:IndexBuffer3D;
      
      private var §-!M§:int;
      
      private var §?!Z§:int;
      
      private var § D§:Number;
      
      protected var §6j§:Number;
      
      private var §9!J§:Number = 0.0;
      
      private var §3H§:Number;
      
      protected var §0!Z§:Number;
      
      protected var §@!<§:Number;
      
      protected var §][§:Boolean;
      
      protected var §-"§:String;
      
      protected var §;!"§:String;
      
      protected var §+!$§:String;
      
      private var §^d§:int = -1;
      
      private var §14§:Boolean = false;
      
      private var §#g§:Number = 0.0;
      
      public function §;!B§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§-y§ = param1;
         this.§][§ = param1.premultipliedAlpha;
         this.§@!f§ = new Vector.<§=!b§>(0,false);
         this.§3^§ = new Vector.<Number>();
         this.§[0§ = new Vector.<Number>();
         this.§-!^§ = new §?!2§(0,this.§][§);
         this.§[X§ = new Vector.<uint>(0);
         this.§ D§ = param2;
         this.§3H§ = 0;
         this.§#s§ = 0;
         this.§@!<§ = 0;
         this.§0!Z§ = 0;
         this.§;!"§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-"§ = param4 || (!!this.§][§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§7!$§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§%3§)
         {
            this.§%3§.dispose();
         }
         if(this.§3§)
         {
            this.§3§.dispose();
         }
         if(this.§[l§)
         {
            this.§[l§.dispose();
         }
         if(this.§8`§)
         {
            this.§8`§.dispose();
         }
         this.§3^§ = null;
         this.§[0§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §=!b§
      {
         return new §=!b§();
      }
      
      protected function initParticle(param1:§=!b§) : void
      {
         param1.x = this.§0!Z§;
         param1.y = this.§@!<§;
         param1.§7-§ = 0;
         param1.§2c§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§=!b§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§7-§ / param1.§2c§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§7-§ += param2;
      }
      
      private function §7!$§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§3m§;
         var _loc3_:int = this.§3m§ + param1;
         var _loc4_:§?!2§;
         (_loc4_ = new §?!2§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§-y§.adjustVertexData(_loc4_,0,4);
         this.§@!f§.fixed = false;
         this.§[X§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§@!f§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§3^§.push(0);
               this.§[0§.push(0);
               _loc7_++;
            }
            this.§-!^§.append(_loc4_);
            this.§[X§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§@!f§.fixed = true;
         this.§[X§.fixed = true;
         this.§14§ = true;
      }
      
      private function §0!X§(param1:Context3D) : Boolean
      {
         if(!this.§14§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §"V§();
         }
         var _loc2_:int = this.§-!^§.§<!§ / 4;
         if(this.§%3§)
         {
            this.§%3§.dispose();
         }
         if(this.§3§)
         {
            this.§3§.dispose();
         }
         if(this.§[l§)
         {
            this.§[l§.dispose();
         }
         if(this.§8`§)
         {
            this.§8`§.dispose();
         }
         this.§%3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§6?§);
         this.§%3§.uploadFromByteArray(this.§-!^§.§8Y§,0,0,_loc2_ * 4);
         this.§3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§1!R§);
         this.§3§.uploadFromVector(this.§-!^§.§!$§,0,_loc2_ * 4);
         this.§[l§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§#!Q§);
         this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,_loc2_ * 4);
         this.§8`§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8`§.uploadFromVector(this.§[X§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§ D§ != 0)
         {
            this.§3H§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§3H§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §6!5§(param1);
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
      
      public function §!T§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§4!A§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§#g§ = param1;
      }
      
      private function §4!A§(param1:Matrix3D) : void
      {
         var _loc4_:§=!b§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§=!b§ = null;
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
         if(isNaN(this.§#g§) || this.§#g§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§#g§;
         this.§#g§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!M§)
         {
            if((_loc4_ = this.§@!f§[_loc3_]).§7-§ < _loc4_.§2c§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§-!M§ - 1)
               {
                  _loc11_ = this.§@!f§[this.§-!M§ - 1];
                  this.§@!f§[this.§-!M§ - 1] = _loc4_;
                  this.§@!f§[_loc3_] = _loc11_;
               }
               --this.§-!M§;
            }
         }
         if(this.§3H§ > 0)
         {
            _loc12_ = 1 / this.§ D§;
            this.§#s§ += _loc2_;
            while(this.§#s§ > 0)
            {
               if(this.§-!M§ == this.§3m§)
               {
                  this.§7!$§(this.§3m§);
               }
               _loc4_ = this.§@!f§[this.§-!M§++] as §=!b§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§#s§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§6j§))
               {
                  _loc13_ = _loc12_ * (1 - this.§6j§ + Math.random() * this.§6j§ * 2) + this.§9!J§;
               }
               this.§9!J§ += _loc12_ - _loc13_;
               this.§#s§ -= _loc13_;
            }
            if(this.§3H§ != Number.MAX_VALUE)
            {
               this.§3H§ = Math.max(0,this.§3H§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§-y§.width;
         var _loc9_:Number = this.§-y§.height;
         this.§?!Z§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§<F§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§-!M§)
            {
               _loc6_ = (_loc4_ = this.§@!f§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§[0§[_loc14_ * 3];
               _loc17_ = this.§[0§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§+!'§.§2d§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §+!'§.§2d§.§[!D§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§?!Z§;
                  this.§-!^§.§7!C§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§-!^§.§!Z§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§-!^§.§!Z§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§-!^§.§!Z§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§-!^§.§!Z§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§-!^§.§!Z§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§-!^§.§!Z§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§-!^§.§!Z§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§-!^§.§!Z§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §<F§(param1:Matrix3D) : void
      {
         var _loc3_:§=!b§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!M§)
         {
            _loc3_ = this.§@!f§[_loc2_];
            this.§3^§[_loc2_ * 3] = _loc3_.x;
            this.§3^§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§3^§,this.§[0§);
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         this.§4!A§(param1.§0K§);
         if(this.§?!Z§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §2v§.§^W§(param2 != 1,this.§-y§.mipMapping,false,this.§+!$§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§&!8§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§][§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§^!G§ != this.§^d§)
         {
            this.§7!$§(0);
            this.§^d§ = param1.§^!G§;
         }
         if(!this.§0!X§(_loc4_))
         {
            this.§3§.uploadFromVector(this.§-!^§.§!$§,0,this.§?!Z§ * 4);
            this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,this.§?!Z§ * 4);
         }
         _loc4_.setBlendFactors(this.§-"§,this.§;!"§);
         _loc4_.setProgram(§+!'§.§2d§.§>!T§(_loc3_));
         _loc4_.setTextureAt(0,this.§-y§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§[l§,§?!2§.§3A§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§%3§,§?!2§.§1!,§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§3§,§?!2§.§'"§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§0K§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§8`§,0,this.§?!Z§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §5@§() : Boolean
      {
         return false;
      }
      
      public function get §3m§() : int
      {
         return this.§-!^§.§<!§ / 4;
      }
      
      public function get §,7§() : int
      {
         return this.§-!M§;
      }
      
      public function get §+3§() : Number
      {
         return this.§ D§;
      }
      
      public function set §+3§(param1:Number) : void
      {
         this.§ D§ = param1;
      }
      
      public function get § !Y§() : Number
      {
         return this.§0!Z§;
      }
      
      public function set § !Y§(param1:Number) : void
      {
         this.§0!Z§ = param1;
      }
      
      public function get §+$§() : Number
      {
         return this.§@!<§;
      }
      
      public function set §+$§(param1:Number) : void
      {
         this.§@!<§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§-y§;
      }
   }
}
