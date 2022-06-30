package §#F§
{
   import § 0§.Texture;
   import §!q§.§#!J§;
   import §"=§.§7!F§;
   import §#!f§.DisplayObject;
   import §1y§.§&!B§;
   import §1y§.§0!7§;
   import §1y§.§2n§;
   import §;!+§.§?d§;
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
   
   public class §&!?§ extends DisplayObject implements §?d§
   {
       
      
      private var §<;§:Texture;
      
      private var §>n§:Vector.<§"!_§>;
      
      private var §"e§:Number;
      
      private var §;W§:Vector.<Number>;
      
      private var §[L§:Vector.<Number>;
      
      private var §9!`§:§7!F§;
      
      private var §21§:VertexBuffer3D;
      
      private var §7`§:VertexBuffer3D;
      
      private var §@T§:VertexBuffer3D;
      
      private var §6e§:Vector.<uint>;
      
      private var §`!8§:IndexBuffer3D;
      
      private var §?r§:int;
      
      private var §9!-§:int;
      
      private var §8!W§:Number;
      
      protected var §<!c§:Number;
      
      private var § x§:Number = 0.0;
      
      private var §6!I§:Number;
      
      protected var §;`§:Number;
      
      protected var §1[§:Number;
      
      protected var §;g§:Boolean;
      
      protected var §?!D§:String;
      
      protected var §!!U§:String;
      
      protected var §>#§:String;
      
      private var §`_§:int = -1;
      
      private var §<q§:Boolean = false;
      
      private var §[0§:Number = 0.0;
      
      public function §&!?§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§<;§ = param1;
         this.§;g§ = param1.premultipliedAlpha;
         this.§>n§ = new Vector.<§"!_§>(0,false);
         this.§;W§ = new Vector.<Number>();
         this.§[L§ = new Vector.<Number>();
         this.§9!`§ = new §7!F§(0,this.§;g§);
         this.§6e§ = new Vector.<uint>(0);
         this.§8!W§ = param2;
         this.§6!I§ = 0;
         this.§"e§ = 0;
         this.§1[§ = 0;
         this.§;`§ = 0;
         this.§!!U§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§?!D§ = param4 || (!!this.§;g§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§9!P§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§21§)
         {
            this.§21§.dispose();
         }
         if(this.§7`§)
         {
            this.§7`§.dispose();
         }
         if(this.§@T§)
         {
            this.§@T§.dispose();
         }
         if(this.§`!8§)
         {
            this.§`!8§.dispose();
         }
         this.§;W§ = null;
         this.§[L§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §"!_§
      {
         return new §"!_§();
      }
      
      protected function initParticle(param1:§"!_§) : void
      {
         param1.x = this.§;`§;
         param1.y = this.§1[§;
         param1.§3S§ = 0;
         param1.§?!I§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§"!_§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§3S§ / param1.§?!I§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§3S§ += param2;
      }
      
      private function §9!P§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§'>§;
         var _loc3_:int = this.§'>§ + param1;
         var _loc4_:§7!F§;
         (_loc4_ = new §7!F§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§<;§.adjustVertexData(_loc4_,0,4);
         this.§>n§.fixed = false;
         this.§6e§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§>n§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§;W§.push(0);
               this.§[L§.push(0);
               _loc7_++;
            }
            this.§9!`§.append(_loc4_);
            this.§6e§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§>n§.fixed = true;
         this.§6e§.fixed = true;
         this.§<q§ = true;
      }
      
      private function §^!>§(param1:Context3D) : Boolean
      {
         if(!this.§<q§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §#!J§();
         }
         var _loc2_:int = this.§9!`§.§4k§ / 4;
         if(this.§21§)
         {
            this.§21§.dispose();
         }
         if(this.§7`§)
         {
            this.§7`§.dispose();
         }
         if(this.§@T§)
         {
            this.§@T§.dispose();
         }
         if(this.§`!8§)
         {
            this.§`!8§.dispose();
         }
         this.§21§ = param1.createVertexBuffer(_loc2_ * 4,§7!F§.§=+§);
         this.§21§.uploadFromByteArray(this.§9!`§.§;!<§,0,0,_loc2_ * 4);
         this.§7`§ = param1.createVertexBuffer(_loc2_ * 4,§7!F§.§`G§);
         this.§7`§.uploadFromVector(this.§9!`§.§59§,0,_loc2_ * 4);
         this.§@T§ = param1.createVertexBuffer(_loc2_ * 4,§7!F§.§catch§);
         this.§@T§.uploadFromVector(this.§9!`§.§"Y§,0,_loc2_ * 4);
         this.§`!8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§`!8§.uploadFromVector(this.§6e§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§8!W§ != 0)
         {
            this.§6!I§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§6!I§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §!c§(param1);
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
      
      public function §6i§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§3N§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§[0§ = param1;
      }
      
      private function §3N§(param1:Matrix3D) : void
      {
         var _loc4_:§"!_§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§"!_§ = null;
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
         if(isNaN(this.§[0§) || this.§[0§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§[0§;
         this.§[0§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?r§)
         {
            if((_loc4_ = this.§>n§[_loc3_]).§3S§ < _loc4_.§?!I§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?r§ - 1)
               {
                  _loc11_ = this.§>n§[this.§?r§ - 1];
                  this.§>n§[this.§?r§ - 1] = _loc4_;
                  this.§>n§[_loc3_] = _loc11_;
               }
               --this.§?r§;
            }
         }
         if(this.§6!I§ > 0)
         {
            _loc12_ = 1 / this.§8!W§;
            this.§"e§ += _loc2_;
            while(this.§"e§ > 0)
            {
               if(this.§?r§ == this.§'>§)
               {
                  this.§9!P§(this.§'>§);
               }
               _loc4_ = this.§>n§[this.§?r§++] as §"!_§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§"e§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§<!c§))
               {
                  _loc13_ = _loc12_ * (1 - this.§<!c§ + Math.random() * this.§<!c§ * 2) + this.§ x§;
               }
               this.§ x§ += _loc12_ - _loc13_;
               this.§"e§ -= _loc13_;
            }
            if(this.§6!I§ != Number.MAX_VALUE)
            {
               this.§6!I§ = Math.max(0,this.§6!I§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§<;§.width;
         var _loc9_:Number = this.§<;§.height;
         this.§9!-§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§]!!§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?r§)
            {
               _loc6_ = (_loc4_ = this.§>n§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§[L§[_loc14_ * 3];
               _loc17_ = this.§[L§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§&!B§.§^8§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §&!B§.§^8§.§7!!§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§9!-§;
                  this.§9!`§.§]Q§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§9!`§.§4X§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§9!`§.§4X§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§9!`§.§4X§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§9!`§.§4X§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§9!`§.§4X§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§9!`§.§4X§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§9!`§.§4X§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§9!`§.§4X§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §]!!§(param1:Matrix3D) : void
      {
         var _loc3_:§"!_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?r§)
         {
            _loc3_ = this.§>n§[_loc2_];
            this.§;W§[_loc2_ * 3] = _loc3_.x;
            this.§;W§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§;W§,this.§[L§);
      }
      
      override public function render(param1:§2n§, param2:Number) : void
      {
         this.§3N§(param1.§[E§);
         if(this.§9!-§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §0!7§.§>e§(param2 != 1,this.§<;§.mipMapping,false,this.§>#§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§#?§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§;g§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§finally§ != this.§`_§)
         {
            this.§9!P§(0);
            this.§`_§ = param1.§finally§;
         }
         if(!this.§^!>§(_loc4_))
         {
            this.§7`§.uploadFromVector(this.§9!`§.§59§,0,this.§9!-§ * 4);
            this.§@T§.uploadFromVector(this.§9!`§.§"Y§,0,this.§9!-§ * 4);
         }
         _loc4_.setBlendFactors(this.§?!D§,this.§!!U§);
         _loc4_.setProgram(§&!B§.§^8§.§&V§(_loc3_));
         _loc4_.setTextureAt(0,this.§<;§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§@T§,§7!F§.§&7§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§21§,§7!F§.§@f§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§7`§,§7!F§.§class§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§[E§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§`!8§,0,this.§9!-§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §1!B§() : Boolean
      {
         return false;
      }
      
      public function get §'>§() : int
      {
         return this.§9!`§.§4k§ / 4;
      }
      
      public function get §"8§() : int
      {
         return this.§?r§;
      }
      
      public function get §;I§() : Number
      {
         return this.§8!W§;
      }
      
      public function set §;I§(param1:Number) : void
      {
         this.§8!W§ = param1;
      }
      
      public function get § r§() : Number
      {
         return this.§;`§;
      }
      
      public function set § r§(param1:Number) : void
      {
         this.§;`§ = param1;
      }
      
      public function get §9&§() : Number
      {
         return this.§1[§;
      }
      
      public function set §9&§(param1:Number) : void
      {
         this.§1[§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§<;§;
      }
   }
}
