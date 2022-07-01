package §?!c§
{
   import §0!Y§.DisplayObject;
   import §5!W§.§&@§;
   import §5!W§.§>P§;
   import §5!W§.§`+§;
   import §=F§.§>!&§;
   import §@!Z§.§ '§;
   import §^z§.Texture;
   import §`!"§.§&-§;
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
   
   public class §do § extends DisplayObject implements § '§
   {
       
      
      private var §^!T§:Texture;
      
      private var § each§:Vector.<§<!'§>;
      
      private var §5!N§:Number;
      
      private var §4!q§:Vector.<Number>;
      
      private var §?a§:Vector.<Number>;
      
      private var §use§:§&-§;
      
      private var §+0§:VertexBuffer3D;
      
      private var §2M§:VertexBuffer3D;
      
      private var §]!$§:VertexBuffer3D;
      
      private var §8!9§:Vector.<uint>;
      
      private var §!![§:IndexBuffer3D;
      
      private var §'$§:int;
      
      private var §3!l§:int;
      
      private var §0Q§:Number;
      
      protected var §`p§:Number;
      
      private var §&!U§:Number = 0.0;
      
      private var §#I§:Number;
      
      protected var §6" §:Number;
      
      protected var §6!2§:Number;
      
      protected var §;!d§:Boolean;
      
      protected var §;2§:String;
      
      protected var §,!z§:String;
      
      protected var §^&§:String;
      
      private var §+!z§:int = -1;
      
      private var §2!-§:Boolean = false;
      
      private var §6Z§:Number = 0.0;
      
      public function §do §(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§^!T§ = param1;
         this.§;!d§ = param1.premultipliedAlpha;
         this.§ each§ = new Vector.<§<!'§>(0,false);
         this.§4!q§ = new Vector.<Number>();
         this.§?a§ = new Vector.<Number>();
         this.§use§ = new §&-§(0,this.§;!d§);
         this.§8!9§ = new Vector.<uint>(0);
         this.§0Q§ = param2;
         this.§#I§ = 0;
         this.§5!N§ = 0;
         this.§6!2§ = 0;
         this.§6" § = 0;
         this.§,!z§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§;2§ = param4 || (!!this.§;!d§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§+5§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+0§)
         {
            this.§+0§.dispose();
         }
         if(this.§2M§)
         {
            this.§2M§.dispose();
         }
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
         }
         if(this.§!![§)
         {
            this.§!![§.dispose();
         }
         this.§4!q§ = null;
         this.§?a§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §<!'§
      {
         return new §<!'§();
      }
      
      protected function initParticle(param1:§<!'§) : void
      {
         param1.x = this.§6" §;
         param1.y = this.§6!2§;
         param1.§^!&§ = 0;
         param1.§+!v§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§<!'§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§^!&§ / param1.§+!v§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§^!&§ += param2;
      }
      
      private function §+5§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6!p§;
         var _loc3_:int = this.§6!p§ + param1;
         var _loc4_:§&-§;
         (_loc4_ = new §&-§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§^!T§.adjustVertexData(_loc4_,0,4);
         this.§ each§.fixed = false;
         this.§8!9§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§ each§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§4!q§.push(0);
               this.§?a§.push(0);
               _loc7_++;
            }
            this.§use§.append(_loc4_);
            this.§8!9§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§ each§.fixed = true;
         this.§8!9§.fixed = true;
         this.§2!-§ = true;
      }
      
      private function §`!g§(param1:Context3D) : Boolean
      {
         if(!this.§2!-§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>!&§();
         }
         var _loc2_:int = this.§use§.§@!^§ / 4;
         if(this.§+0§)
         {
            this.§+0§.dispose();
         }
         if(this.§2M§)
         {
            this.§2M§.dispose();
         }
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
         }
         if(this.§!![§)
         {
            this.§!![§.dispose();
         }
         this.§+0§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§7I§);
         this.§+0§.uploadFromByteArray(this.§use§.§^"0§,0,0,_loc2_ * 4);
         this.§2M§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§[f§);
         this.§2M§.uploadFromVector(this.§use§.§>!$§,0,_loc2_ * 4);
         this.§]!$§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§9!W§);
         this.§]!$§.uploadFromVector(this.§use§.§="%§,0,_loc2_ * 4);
         this.§!![§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!![§.uploadFromVector(this.§8!9§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§0Q§ != 0)
         {
            this.§#I§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§#I§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §8t§(param1);
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
      
      public function §;#§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§%5§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§6Z§ = param1;
      }
      
      private function §%5§(param1:Matrix3D) : void
      {
         var _loc4_:§<!'§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§<!'§ = null;
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
         if(isNaN(this.§6Z§) || this.§6Z§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§6Z§;
         this.§6Z§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§'$§)
         {
            if((_loc4_ = this.§ each§[_loc3_]).§^!&§ < _loc4_.§+!v§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§'$§ - 1)
               {
                  _loc11_ = this.§ each§[this.§'$§ - 1];
                  this.§ each§[this.§'$§ - 1] = _loc4_;
                  this.§ each§[_loc3_] = _loc11_;
               }
               --this.§'$§;
            }
         }
         if(this.§#I§ > 0)
         {
            _loc12_ = 1 / this.§0Q§;
            this.§5!N§ += _loc2_;
            while(this.§5!N§ > 0)
            {
               if(this.§'$§ == this.§6!p§)
               {
                  this.§+5§(this.§6!p§);
               }
               _loc4_ = this.§ each§[this.§'$§++] as §<!'§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5!N§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§`p§))
               {
                  _loc13_ = _loc12_ * (1 - this.§`p§ + Math.random() * this.§`p§ * 2) + this.§&!U§;
               }
               this.§&!U§ += _loc12_ - _loc13_;
               this.§5!N§ -= _loc13_;
            }
            if(this.§#I§ != Number.MAX_VALUE)
            {
               this.§#I§ = Math.max(0,this.§#I§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§^!T§.width;
         var _loc9_:Number = this.§^!T§.height;
         this.§3!l§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§ 4§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§'$§)
            {
               _loc6_ = (_loc4_ = this.§ each§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§?a§[_loc14_ * 3];
               _loc17_ = this.§?a§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§>P§.§;_§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §>P§.§;_§.§`"%§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§3!l§;
                  this.§use§.§9""§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§use§.§+@§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§use§.§+@§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§use§.§+@§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§use§.§+@§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§use§.§+@§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§use§.§+@§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§use§.§+@§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§use§.§+@§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function § 4§(param1:Matrix3D) : void
      {
         var _loc3_:§<!'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'$§)
         {
            _loc3_ = this.§ each§[_loc2_];
            this.§4!q§[_loc2_ * 3] = _loc3_.x;
            this.§4!q§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§4!q§,this.§?a§);
      }
      
      override public function render(param1:§`+§, param2:Number) : void
      {
         this.§%5§(param1.§#!@§);
         if(this.§3!l§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §&@§.§4"'§(param2 != 1,this.§^!T§.mipMapping,false,this.§^&§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§@!C§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§;!d§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§%_§ != this.§+!z§)
         {
            this.§+5§(0);
            this.§+!z§ = param1.§%_§;
         }
         if(!this.§`!g§(_loc4_))
         {
            this.§2M§.uploadFromVector(this.§use§.§>!$§,0,this.§3!l§ * 4);
            this.§]!$§.uploadFromVector(this.§use§.§="%§,0,this.§3!l§ * 4);
         }
         _loc4_.setBlendFactors(this.§;2§,this.§,!z§);
         _loc4_.setProgram(§>P§.§;_§.§<!M§(_loc3_));
         _loc4_.setTextureAt(0,this.§^!T§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§]!$§,§&-§.§6!q§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+0§,§&-§.§7!%§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§2M§,§&-§.§>!"§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§#!@§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!![§,0,this.§3!l§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §8!S§() : Boolean
      {
         return false;
      }
      
      public function get §6!p§() : int
      {
         return this.§use§.§@!^§ / 4;
      }
      
      public function get §2!]§() : int
      {
         return this.§'$§;
      }
      
      public function get §5K§() : Number
      {
         return this.§0Q§;
      }
      
      public function set §5K§(param1:Number) : void
      {
         this.§0Q§ = param1;
      }
      
      public function get §]!4§() : Number
      {
         return this.§6" §;
      }
      
      public function set §]!4§(param1:Number) : void
      {
         this.§6" § = param1;
      }
      
      public function get § !A§() : Number
      {
         return this.§6!2§;
      }
      
      public function set § !A§(param1:Number) : void
      {
         this.§6!2§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§^!T§;
      }
   }
}
