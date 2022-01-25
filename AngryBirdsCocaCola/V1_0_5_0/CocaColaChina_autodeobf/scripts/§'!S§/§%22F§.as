package §'!S§
{
   import §#!S§.§'`§;
   import §%Q§.§`j§;
   import §8!R§.§8$§;
   import §9]§.§!!P§;
   import §9]§.§0`§;
   import §9]§.§9J§;
   import §<!$§.DisplayObject;
   import §@'§.Texture;
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
   
   public class §"F§ extends DisplayObject implements §8$§
   {
       
      
      private var §3!+§:Texture;
      
      private var §!j§:Vector.<§[!+§>;
      
      private var §'!A§:Number;
      
      private var §91§:Vector.<Number>;
      
      private var §`a§:Vector.<Number>;
      
      private var § g§:§`j§;
      
      private var §%!P§:VertexBuffer3D;
      
      private var §3V§:VertexBuffer3D;
      
      private var §!x§:VertexBuffer3D;
      
      private var §^i§:Vector.<uint>;
      
      private var §8!@§:IndexBuffer3D;
      
      private var §7!4§:int;
      
      private var §`_§:int;
      
      private var §-=§:Number;
      
      protected var §?m§:Number;
      
      private var §1g§:Number = 0.0;
      
      private var §3!8§:Number;
      
      protected var §!k§:Number;
      
      protected var §8!`§:Number;
      
      protected var §2"§:Boolean;
      
      protected var §@!N§:String;
      
      protected var §3K§:String;
      
      protected var §]!K§:String;
      
      private var §=!$§:int = -1;
      
      private var §[!3§:Boolean = false;
      
      private var §?^§:Number = 0.0;
      
      public function §"F§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§3!+§ = param1;
         this.§2"§ = param1.premultipliedAlpha;
         this.§!j§ = new Vector.<§[!+§>(0,false);
         this.§91§ = new Vector.<Number>();
         this.§`a§ = new Vector.<Number>();
         this.§ g§ = new §`j§(0,this.§2"§);
         this.§^i§ = new Vector.<uint>(0);
         this.§-=§ = param2;
         this.§3!8§ = 0;
         this.§'!A§ = 0;
         this.§8!`§ = 0;
         this.§!k§ = 0;
         this.§3K§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§@!N§ = param4 || (!!this.§2"§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§0a§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§%!P§)
         {
            this.§%!P§.dispose();
         }
         if(this.§3V§)
         {
            this.§3V§.dispose();
         }
         if(this.§!x§)
         {
            this.§!x§.dispose();
         }
         if(this.§8!@§)
         {
            this.§8!@§.dispose();
         }
         this.§91§ = null;
         this.§`a§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §[!+§
      {
         return new §[!+§();
      }
      
      protected function initParticle(param1:§[!+§) : void
      {
         param1.x = this.§!k§;
         param1.y = this.§8!`§;
         param1.§3H§ = 0;
         param1.§3E§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§[!+§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§3H§ / param1.§3E§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§3H§ += param2;
      }
      
      private function §0a§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§??§;
         var _loc3_:int = this.§??§ + param1;
         var _loc4_:§`j§;
         (_loc4_ = new §`j§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§3!+§.adjustVertexData(_loc4_,0,4);
         this.§!j§.fixed = false;
         this.§^i§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§!j§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§91§.push(0);
               this.§`a§.push(0);
               _loc7_++;
            }
            this.§ g§.append(_loc4_);
            this.§^i§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§!j§.fixed = true;
         this.§^i§.fixed = true;
         this.§[!3§ = true;
      }
      
      private function §[![§(param1:Context3D) : Boolean
      {
         if(!this.§[!3§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'`§();
         }
         var _loc2_:int = this.§ g§.§8R§ / 4;
         if(this.§%!P§)
         {
            this.§%!P§.dispose();
         }
         if(this.§3V§)
         {
            this.§3V§.dispose();
         }
         if(this.§!x§)
         {
            this.§!x§.dispose();
         }
         if(this.§8!@§)
         {
            this.§8!@§.dispose();
         }
         this.§%!P§ = param1.createVertexBuffer(_loc2_ * 4,§`j§.§%!T§);
         this.§%!P§.uploadFromByteArray(this.§ g§.§;!K§,0,0,_loc2_ * 4);
         this.§3V§ = param1.createVertexBuffer(_loc2_ * 4,§`j§.§@!b§);
         this.§3V§.uploadFromVector(this.§ g§.§"H§,0,_loc2_ * 4);
         this.§!x§ = param1.createVertexBuffer(_loc2_ * 4,§`j§.§0f§);
         this.§!x§.uploadFromVector(this.§ g§.§6e§,0,_loc2_ * 4);
         this.§8!@§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8!@§.uploadFromVector(this.§^i§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§-=§ != 0)
         {
            this.§3!8§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§3!8§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §>]§(param1);
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
      
      public function §28§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§]@§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§?^§ = param1;
      }
      
      private function §]@§(param1:Matrix3D) : void
      {
         var _loc4_:§[!+§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§[!+§ = null;
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
         if(isNaN(this.§?^§) || this.§?^§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§?^§;
         this.§?^§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§7!4§)
         {
            if((_loc4_ = this.§!j§[_loc3_]).§3H§ < _loc4_.§3E§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§7!4§ - 1)
               {
                  _loc11_ = this.§!j§[this.§7!4§ - 1];
                  this.§!j§[this.§7!4§ - 1] = _loc4_;
                  this.§!j§[_loc3_] = _loc11_;
               }
               --this.§7!4§;
            }
         }
         if(this.§3!8§ > 0)
         {
            _loc12_ = 1 / this.§-=§;
            this.§'!A§ += _loc2_;
            while(this.§'!A§ > 0)
            {
               if(this.§7!4§ == this.§??§)
               {
                  this.§0a§(this.§??§);
               }
               _loc4_ = this.§!j§[this.§7!4§++] as §[!+§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§'!A§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§?m§))
               {
                  _loc13_ = _loc12_ * (1 - this.§?m§ + Math.random() * this.§?m§ * 2) + this.§1g§;
               }
               this.§1g§ += _loc12_ - _loc13_;
               this.§'!A§ -= _loc13_;
            }
            if(this.§3!8§ != Number.MAX_VALUE)
            {
               this.§3!8§ = Math.max(0,this.§3!8§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§3!+§.width;
         var _loc9_:Number = this.§3!+§.height;
         this.§`_§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§4F§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§7!4§)
            {
               _loc6_ = (_loc4_ = this.§!j§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§`a§[_loc14_ * 3];
               _loc17_ = this.§`a§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§9J§.§?X§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §9J§.§?X§.§`!^§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§`_§;
                  this.§ g§.§,8§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§ g§.§@&§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§ g§.§@&§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§ g§.§@&§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§ g§.§@&§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§ g§.§@&§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§ g§.§@&§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§ g§.§@&§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§ g§.§@&§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §4F§(param1:Matrix3D) : void
      {
         var _loc3_:§[!+§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!4§)
         {
            _loc3_ = this.§!j§[_loc2_];
            this.§91§[_loc2_ * 3] = _loc3_.x;
            this.§91§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§91§,this.§`a§);
      }
      
      override public function render(param1:§0`§, param2:Number) : void
      {
         this.§]@§(param1.§-3§);
         if(this.§`_§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §!!P§.§@!2§(param2 != 1,this.§3!+§.mipMapping,false,this.§]!K§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§;!Z§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§2"§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§[!A§ != this.§=!$§)
         {
            this.§0a§(0);
            this.§=!$§ = param1.§[!A§;
         }
         if(!this.§[![§(_loc4_))
         {
            this.§3V§.uploadFromVector(this.§ g§.§"H§,0,this.§`_§ * 4);
            this.§!x§.uploadFromVector(this.§ g§.§6e§,0,this.§`_§ * 4);
         }
         _loc4_.setBlendFactors(this.§@!N§,this.§3K§);
         _loc4_.setProgram(§9J§.§?X§.§?!B§(_loc3_));
         _loc4_.setTextureAt(0,this.§3!+§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§!x§,§`j§.§^!2§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§%!P§,§`j§.§+_§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§3V§,§`j§.§8`§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§-3§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§8!@§,0,this.§`_§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §!!+§() : Boolean
      {
         return false;
      }
      
      public function get §??§() : int
      {
         return this.§ g§.§8R§ / 4;
      }
      
      public function get §%!V§() : int
      {
         return this.§7!4§;
      }
      
      public function get dynamic() : Number
      {
         return this.§-=§;
      }
      
      public function set dynamic(param1:Number) : void
      {
         this.§-=§ = param1;
      }
      
      public function get §>6§() : Number
      {
         return this.§!k§;
      }
      
      public function set §>6§(param1:Number) : void
      {
         this.§!k§ = param1;
      }
      
      public function get §3k§() : Number
      {
         return this.§8!`§;
      }
      
      public function set §3k§(param1:Number) : void
      {
         this.§8!`§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§3!+§;
      }
   }
}
