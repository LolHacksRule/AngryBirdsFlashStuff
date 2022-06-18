package §"-§
{
   import §&b§.§true§;
   import §,H§.DisplayObject;
   import §,Y§.Texture;
   import §2!P§.§6=§;
   import §2!P§.§?!1§;
   import §2!P§.§@9§;
   import §9!5§.§&!&§;
   import §][§.§&!E§;
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
   
   public class §&g§ extends DisplayObject implements §&!&§
   {
       
      
      private var §&%§:Texture;
      
      private var §<!E§:Vector.<§`c§>;
      
      private var §6_§:Number;
      
      private var §1!W§:Vector.<Number>;
      
      private var §>!]§:Vector.<Number>;
      
      private var §4!P§:§true§;
      
      private var §2!+§:VertexBuffer3D;
      
      private var §@!3§:VertexBuffer3D;
      
      private var §2!^§:VertexBuffer3D;
      
      private var §9l§:Vector.<uint>;
      
      private var §<!&§:IndexBuffer3D;
      
      private var §?=§:int;
      
      private var §,A§:int;
      
      private var §-!0§:Number;
      
      protected var §,!P§:Number;
      
      private var §@z§:Number = 0.0;
      
      private var §2M§:Number;
      
      protected var §9,§:Number;
      
      protected var §6]§:Number;
      
      protected var §+M§:Boolean;
      
      protected var §0!L§:String;
      
      protected var §14§:String;
      
      protected var §+!<§:String;
      
      private var §;w§:int = -1;
      
      private var § C§:Boolean = false;
      
      private var §4!L§:Number = 0.0;
      
      public function §&g§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§&%§ = param1;
         this.§+M§ = param1.premultipliedAlpha;
         this.§<!E§ = new Vector.<§`c§>(0,false);
         this.§1!W§ = new Vector.<Number>();
         this.§>!]§ = new Vector.<Number>();
         this.§4!P§ = new §true§(0,this.§+M§);
         this.§9l§ = new Vector.<uint>(0);
         this.§-!0§ = param2;
         this.§2M§ = 0;
         this.§6_§ = 0;
         this.§6]§ = 0;
         this.§9,§ = 0;
         this.§14§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§0!L§ = param4 || (!!this.§+M§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§[!!§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§2!+§)
         {
            this.§2!+§.dispose();
         }
         if(this.§@!3§)
         {
            this.§@!3§.dispose();
         }
         if(this.§2!^§)
         {
            this.§2!^§.dispose();
         }
         if(this.§<!&§)
         {
            this.§<!&§.dispose();
         }
         this.§1!W§ = null;
         this.§>!]§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §`c§
      {
         return new §`c§();
      }
      
      protected function initParticle(param1:§`c§) : void
      {
         param1.x = this.§9,§;
         param1.y = this.§6]§;
         param1.§%>§ = 0;
         param1.§#]§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§`c§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§%>§ / param1.§#]§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§%>§ += param2;
      }
      
      private function §[!!§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§1S§;
         var _loc3_:int = this.§1S§ + param1;
         var _loc4_:§true§;
         (_loc4_ = new §true§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§&%§.adjustVertexData(_loc4_,0,4);
         this.§<!E§.fixed = false;
         this.§9l§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§<!E§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§1!W§.push(0);
               this.§>!]§.push(0);
               _loc7_++;
            }
            this.§4!P§.append(_loc4_);
            this.§9l§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§<!E§.fixed = true;
         this.§9l§.fixed = true;
         this.§ C§ = true;
      }
      
      private function §;!?§(param1:Context3D) : Boolean
      {
         if(!this.§ C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&!E§();
         }
         var _loc2_:int = this.§4!P§.§2b§ / 4;
         if(this.§2!+§)
         {
            this.§2!+§.dispose();
         }
         if(this.§@!3§)
         {
            this.§@!3§.dispose();
         }
         if(this.§2!^§)
         {
            this.§2!^§.dispose();
         }
         if(this.§<!&§)
         {
            this.§<!&§.dispose();
         }
         this.§2!+§ = param1.createVertexBuffer(_loc2_ * 4,§true§.§8!$§);
         this.§2!+§.uploadFromByteArray(this.§4!P§.§2'§,0,0,_loc2_ * 4);
         this.§@!3§ = param1.createVertexBuffer(_loc2_ * 4,§true§.§-C§);
         this.§@!3§.uploadFromVector(this.§4!P§.§',§,0,_loc2_ * 4);
         this.§2!^§ = param1.createVertexBuffer(_loc2_ * 4,§true§.§0!N§);
         this.§2!^§.uploadFromVector(this.§4!P§.§8k§,0,_loc2_ * 4);
         this.§<!&§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§<!&§.uploadFromVector(this.§9l§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§-!0§ != 0)
         {
            this.§2M§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§2M§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §implements§(param1);
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
      
      public function §>!#§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§4!1§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§4!L§ = param1;
      }
      
      private function §4!1§(param1:Matrix3D) : void
      {
         var _loc4_:§`c§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§`c§ = null;
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
         if(isNaN(this.§4!L§) || this.§4!L§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§4!L§;
         this.§4!L§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?=§)
         {
            if((_loc4_ = this.§<!E§[_loc3_]).§%>§ < _loc4_.§#]§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?=§ - 1)
               {
                  _loc11_ = this.§<!E§[this.§?=§ - 1];
                  this.§<!E§[this.§?=§ - 1] = _loc4_;
                  this.§<!E§[_loc3_] = _loc11_;
               }
               --this.§?=§;
            }
         }
         if(this.§2M§ > 0)
         {
            _loc12_ = 1 / this.§-!0§;
            this.§6_§ += _loc2_;
            while(this.§6_§ > 0)
            {
               if(this.§?=§ == this.§1S§)
               {
                  this.§[!!§(this.§1S§);
               }
               _loc4_ = this.§<!E§[this.§?=§++] as §`c§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6_§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§,!P§))
               {
                  _loc13_ = _loc12_ * (1 - this.§,!P§ + Math.random() * this.§,!P§ * 2) + this.§@z§;
               }
               this.§@z§ += _loc12_ - _loc13_;
               this.§6_§ -= _loc13_;
            }
            if(this.§2M§ != Number.MAX_VALUE)
            {
               this.§2M§ = Math.max(0,this.§2M§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§&%§.width;
         var _loc9_:Number = this.§&%§.height;
         this.§,A§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§4H§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?=§)
            {
               _loc6_ = (_loc4_ = this.§<!E§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§>!]§[_loc14_ * 3];
               _loc17_ = this.§>!]§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§6=§.§4!8§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §6=§.§4!8§.§0u§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§,A§;
                  this.§4!P§.§-[§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§4!P§.§52§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§4!P§.§52§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§4!P§.§52§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§4!P§.§52§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§4!P§.§52§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§4!P§.§52§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§4!P§.§52§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§4!P§.§52§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §4H§(param1:Matrix3D) : void
      {
         var _loc3_:§`c§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?=§)
         {
            _loc3_ = this.§<!E§[_loc2_];
            this.§1!W§[_loc2_ * 3] = _loc3_.x;
            this.§1!W§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§1!W§,this.§>!]§);
      }
      
      override public function render(param1:§@9§, param2:Number) : void
      {
         this.§4!1§(param1.§8!M§);
         if(this.§,A§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §?!1§.§,!L§(param2 != 1,this.§&%§.mipMapping,false,this.§+!<§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§+V§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§+M§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§1m§ != this.§;w§)
         {
            this.§[!!§(0);
            this.§;w§ = param1.§1m§;
         }
         if(!this.§;!?§(_loc4_))
         {
            this.§@!3§.uploadFromVector(this.§4!P§.§',§,0,this.§,A§ * 4);
            this.§2!^§.uploadFromVector(this.§4!P§.§8k§,0,this.§,A§ * 4);
         }
         _loc4_.setBlendFactors(this.§0!L§,this.§14§);
         _loc4_.setProgram(§6=§.§4!8§.§2d§(_loc3_));
         _loc4_.setTextureAt(0,this.§&%§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§2!^§,§true§.§+O§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§2!+§,§true§.§-2§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§@!3§,§true§.§<'§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§8!M§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§<!&§,0,this.§,A§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §;!R§() : Boolean
      {
         return false;
      }
      
      public function get §1S§() : int
      {
         return this.§4!P§.§2b§ / 4;
      }
      
      public function get §0!K§() : int
      {
         return this.§?=§;
      }
      
      public function get § !?§() : Number
      {
         return this.§-!0§;
      }
      
      public function set § !?§(param1:Number) : void
      {
         this.§-!0§ = param1;
      }
      
      public function get §%q§() : Number
      {
         return this.§9,§;
      }
      
      public function set §%q§(param1:Number) : void
      {
         this.§9,§ = param1;
      }
      
      public function get §[!%§() : Number
      {
         return this.§6]§;
      }
      
      public function set §[!%§(param1:Number) : void
      {
         this.§6]§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§&%§;
      }
   }
}
