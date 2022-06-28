package §0!F§
{
   import §%-§.DisplayObject;
   import §&p§.§%?§;
   import §&p§.§'_§;
   import §&p§.§`G§;
   import §4'§.§9N§;
   import §8f§.§+!A§;
   import §?!"§.Texture;
   import §]c§.§2&§;
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
   
   public class §%q§ extends DisplayObject implements §9N§
   {
       
      
      private var §9X§:Texture;
      
      private var §[r§:Vector.<§ !<§>;
      
      private var §;9§:Number;
      
      private var §#f§:Vector.<Number>;
      
      private var §9s§:Vector.<Number>;
      
      private var §5!@§:§+!A§;
      
      private var §'i§:VertexBuffer3D;
      
      private var §<T§:VertexBuffer3D;
      
      private var §&!!§:VertexBuffer3D;
      
      private var §>$§:Vector.<uint>;
      
      private var §3Q§:IndexBuffer3D;
      
      private var §1[§:int;
      
      private var §#_§:int;
      
      private var §]V§:Number;
      
      protected var §!b§:Number;
      
      private var §4`§:Number = 0.0;
      
      private var §#D§:Number;
      
      protected var §^x§:Number;
      
      protected var §@!D§:Number;
      
      protected var §2"§:Boolean;
      
      protected var §`M§:String;
      
      protected var §2p§:String;
      
      protected var §'!;§:String;
      
      private var §;! §:int = -1;
      
      private var §2P§:Boolean = false;
      
      private var §-2§:Number = 0.0;
      
      public function §%q§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§9X§ = param1;
         this.§2"§ = param1.premultipliedAlpha;
         this.§[r§ = new Vector.<§ !<§>(0,false);
         this.§#f§ = new Vector.<Number>();
         this.§9s§ = new Vector.<Number>();
         this.§5!@§ = new §+!A§(0,this.§2"§);
         this.§>$§ = new Vector.<uint>(0);
         this.§]V§ = param2;
         this.§#D§ = 0;
         this.§;9§ = 0;
         this.§@!D§ = 0;
         this.§^x§ = 0;
         this.§2p§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§`M§ = param4 || (!!this.§2"§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§=f§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§'i§)
         {
            this.§'i§.dispose();
         }
         if(this.§<T§)
         {
            this.§<T§.dispose();
         }
         if(this.§&!!§)
         {
            this.§&!!§.dispose();
         }
         if(this.§3Q§)
         {
            this.§3Q§.dispose();
         }
         this.§#f§ = null;
         this.§9s§ = null;
         super.dispose();
      }
      
      protected function createParticle() : § !<§
      {
         return new § !<§();
      }
      
      protected function initParticle(param1:§ !<§) : void
      {
         param1.x = this.§^x§;
         param1.y = this.§@!D§;
         param1.currentTime = 0;
         param1.§!D§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§ !<§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§!D§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §=f§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§^P§;
         var _loc3_:int = this.§^P§ + param1;
         var _loc4_:§+!A§;
         (_loc4_ = new §+!A§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§9X§.adjustVertexData(_loc4_,0,4);
         this.§[r§.fixed = false;
         this.§>$§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§[r§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§#f§.push(0);
               this.§9s§.push(0);
               _loc7_++;
            }
            this.§5!@§.append(_loc4_);
            this.§>$§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§[r§.fixed = true;
         this.§>$§.fixed = true;
         this.§2P§ = true;
      }
      
      private function §&b§(param1:Context3D) : Boolean
      {
         if(!this.§2P§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2&§();
         }
         var _loc2_:int = this.§5!@§.§@l§ / 4;
         if(this.§'i§)
         {
            this.§'i§.dispose();
         }
         if(this.§<T§)
         {
            this.§<T§.dispose();
         }
         if(this.§&!!§)
         {
            this.§&!!§.dispose();
         }
         if(this.§3Q§)
         {
            this.§3Q§.dispose();
         }
         this.§'i§ = param1.createVertexBuffer(_loc2_ * 4,§+!A§.§5H§);
         this.§'i§.uploadFromByteArray(this.§5!@§.§]C§,0,0,_loc2_ * 4);
         this.§<T§ = param1.createVertexBuffer(_loc2_ * 4,§+!A§.§%%§);
         this.§<T§.uploadFromVector(this.§5!@§.§!!'§,0,_loc2_ * 4);
         this.§&!!§ = param1.createVertexBuffer(_loc2_ * 4,§+!A§.§#0§);
         this.§&!!§.uploadFromVector(this.§5!@§.§%2§,0,_loc2_ * 4);
         this.§3Q§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§3Q§.uploadFromVector(this.§>$§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§]V§ != 0)
         {
            this.§#D§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§#D§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §#!1§(param1);
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
      
      public function §?_§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§[!+§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§-2§ = param1;
      }
      
      private function §[!+§(param1:Matrix3D) : void
      {
         var _loc4_:§ !<§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§ !<§ = null;
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
         if(isNaN(this.§-2§) || this.§-2§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§-2§;
         this.§-2§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§1[§)
         {
            if((_loc4_ = this.§[r§[_loc3_]).currentTime < _loc4_.§!D§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§1[§ - 1)
               {
                  _loc11_ = this.§[r§[this.§1[§ - 1];
                  this.§[r§[this.§1[§ - 1] = _loc4_;
                  this.§[r§[_loc3_] = _loc11_;
               }
               --this.§1[§;
            }
         }
         if(this.§#D§ > 0)
         {
            _loc12_ = 1 / this.§]V§;
            this.§;9§ += _loc2_;
            while(this.§;9§ > 0)
            {
               if(this.§1[§ == this.§^P§)
               {
                  this.§=f§(this.§^P§);
               }
               _loc4_ = this.§[r§[this.§1[§++] as § !<§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§;9§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§!b§))
               {
                  _loc13_ = _loc12_ * (1 - this.§!b§ + Math.random() * this.§!b§ * 2) + this.§4`§;
               }
               this.§4`§ += _loc12_ - _loc13_;
               this.§;9§ -= _loc13_;
            }
            if(this.§#D§ != Number.MAX_VALUE)
            {
               this.§#D§ = Math.max(0,this.§#D§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§9X§.width;
         var _loc9_:Number = this.§9X§.height;
         this.§#_§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§,[§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§1[§)
            {
               _loc6_ = (_loc4_ = this.§[r§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§9s§[_loc14_ * 3];
               _loc17_ = this.§9s§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§'_§.§17§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §'_§.§17§.§8$§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§#_§;
                  this.§5!@§.§^6§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§5!@§.§!d§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§5!@§.§!d§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§5!@§.§!d§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§5!@§.§!d§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§5!@§.§!d§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§5!@§.§!d§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§5!@§.§!d§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§5!@§.§!d§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §,[§(param1:Matrix3D) : void
      {
         var _loc3_:§ !<§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1[§)
         {
            _loc3_ = this.§[r§[_loc2_];
            this.§#f§[_loc2_ * 3] = _loc3_.x;
            this.§#f§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§#f§,this.§9s§);
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         this.§[!+§(param1.§1!<§);
         if(this.§#_§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §%?§.§5W§(param2 != 1,this.§9X§.mipMapping,false,this.§'!;§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§2"§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§4O§ != this.§;! §)
         {
            this.§=f§(0);
            this.§;! § = param1.§4O§;
         }
         if(!this.§&b§(_loc4_))
         {
            this.§<T§.uploadFromVector(this.§5!@§.§!!'§,0,this.§#_§ * 4);
            this.§&!!§.uploadFromVector(this.§5!@§.§%2§,0,this.§#_§ * 4);
         }
         _loc4_.setBlendFactors(this.§`M§,this.§2p§);
         _loc4_.setProgram(§'_§.§17§.§>m§(_loc3_));
         _loc4_.setTextureAt(0,this.§9X§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§&!!§,§+!A§.§@5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§'i§,§+!A§.§!Y§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§<T§,§+!A§.§'7§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§1!<§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§3Q§,0,this.§#_§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §=<§() : Boolean
      {
         return false;
      }
      
      public function get §^P§() : int
      {
         return this.§5!@§.§@l§ / 4;
      }
      
      public function get §3g§() : int
      {
         return this.§1[§;
      }
      
      public function get §=q§() : Number
      {
         return this.§]V§;
      }
      
      public function set §=q§(param1:Number) : void
      {
         this.§]V§ = param1;
      }
      
      public function get §'!!§() : Number
      {
         return this.§^x§;
      }
      
      public function set §'!!§(param1:Number) : void
      {
         this.§^x§ = param1;
      }
      
      public function get §each §() : Number
      {
         return this.§@!D§;
      }
      
      public function set §each §(param1:Number) : void
      {
         this.§@!D§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§9X§;
      }
   }
}
