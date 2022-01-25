package §30§
{
   import § !K§.DisplayObject;
   import §"![§.Texture;
   import §6l§.§23§;
   import §6l§.§79§;
   import §6l§.§9d§;
   import §9!^§.§17§;
   import §;S§.§2w§;
   import §?r§.§`C§;
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
   
   public class §+G§ extends DisplayObject implements §`C§
   {
       
      
      private var §<Y§:Texture;
      
      private var §0!D§:Vector.<§"k§>;
      
      private var §"$§:Number;
      
      private var §7!6§:Vector.<Number>;
      
      private var §?4§:Vector.<Number>;
      
      private var §>!@§:§17§;
      
      private var §0!>§:VertexBuffer3D;
      
      private var §1!!§:VertexBuffer3D;
      
      private var §7!4§:VertexBuffer3D;
      
      private var §"S§:Vector.<uint>;
      
      private var §-i§:IndexBuffer3D;
      
      private var §%!%§:int;
      
      private var §8!2§:int;
      
      private var §;>§:Number;
      
      protected var §default§:Number;
      
      private var §20§:Number = 0.0;
      
      private var §^!T§:Number;
      
      protected var §]!I§:Number;
      
      protected var §&!B§:Number;
      
      protected var §[=§:Boolean;
      
      protected var §0!I§:String;
      
      protected var §=!F§:String;
      
      protected var §[S§:String;
      
      private var §71§:int = -1;
      
      private var §-C§:Boolean = false;
      
      private var §00§:Number = 0.0;
      
      public function §+G§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§<Y§ = param1;
         this.§[=§ = param1.premultipliedAlpha;
         this.§0!D§ = new Vector.<§"k§>(0,false);
         this.§7!6§ = new Vector.<Number>();
         this.§?4§ = new Vector.<Number>();
         this.§>!@§ = new §17§(0,this.§[=§);
         this.§"S§ = new Vector.<uint>(0);
         this.§;>§ = param2;
         this.§^!T§ = 0;
         this.§"$§ = 0;
         this.§&!B§ = 0;
         this.§]!I§ = 0;
         this.§=!F§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§0!I§ = param4 || (!!this.§[=§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§6Z§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§0!>§)
         {
            this.§0!>§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         if(this.§7!4§)
         {
            this.§7!4§.dispose();
         }
         if(this.§-i§)
         {
            this.§-i§.dispose();
         }
         this.§7!6§ = null;
         this.§?4§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §"k§
      {
         return new §"k§();
      }
      
      protected function initParticle(param1:§"k§) : void
      {
         param1.x = this.§]!I§;
         param1.y = this.§&!B§;
         param1.§1O§ = 0;
         param1.§;!T§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§"k§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§1O§ / param1.§;!T§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§1O§ += param2;
      }
      
      private function §6Z§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§5!9§;
         var _loc3_:int = this.§5!9§ + param1;
         var _loc4_:§17§;
         (_loc4_ = new §17§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§<Y§.adjustVertexData(_loc4_,0,4);
         this.§0!D§.fixed = false;
         this.§"S§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§0!D§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§7!6§.push(0);
               this.§?4§.push(0);
               _loc7_++;
            }
            this.§>!@§.append(_loc4_);
            this.§"S§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§0!D§.fixed = true;
         this.§"S§.fixed = true;
         this.§-C§ = true;
      }
      
      private function §>a§(param1:Context3D) : Boolean
      {
         if(!this.§-C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2w§();
         }
         var _loc2_:int = this.§>!@§.§ x§ / 4;
         if(this.§0!>§)
         {
            this.§0!>§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         if(this.§7!4§)
         {
            this.§7!4§.dispose();
         }
         if(this.§-i§)
         {
            this.§-i§.dispose();
         }
         this.§0!>§ = param1.createVertexBuffer(_loc2_ * 4,§17§.§!!+§);
         this.§0!>§.uploadFromByteArray(this.§>!@§.§%<§,0,0,_loc2_ * 4);
         this.§1!!§ = param1.createVertexBuffer(_loc2_ * 4,§17§.§+!"§);
         this.§1!!§.uploadFromVector(this.§>!@§.§4!'§,0,_loc2_ * 4);
         this.§7!4§ = param1.createVertexBuffer(_loc2_ * 4,§17§.§>!_§);
         this.§7!4§.uploadFromVector(this.§>!@§.§0!;§,0,_loc2_ * 4);
         this.§-i§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-i§.uploadFromVector(this.§"S§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§;>§ != 0)
         {
            this.§^!T§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§^!T§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §]`§(param1);
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
      
      public function §%!D§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§5K§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§00§ = param1;
      }
      
      private function §5K§(param1:Matrix3D) : void
      {
         var _loc4_:§"k§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§"k§ = null;
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
         if(isNaN(this.§00§) || this.§00§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§00§;
         this.§00§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§%!%§)
         {
            if((_loc4_ = this.§0!D§[_loc3_]).§1O§ < _loc4_.§;!T§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§%!%§ - 1)
               {
                  _loc11_ = this.§0!D§[this.§%!%§ - 1];
                  this.§0!D§[this.§%!%§ - 1] = _loc4_;
                  this.§0!D§[_loc3_] = _loc11_;
               }
               --this.§%!%§;
            }
         }
         if(this.§^!T§ > 0)
         {
            _loc12_ = 1 / this.§;>§;
            this.§"$§ += _loc2_;
            while(this.§"$§ > 0)
            {
               if(this.§%!%§ == this.§5!9§)
               {
                  this.§6Z§(this.§5!9§);
               }
               _loc4_ = this.§0!D§[this.§%!%§++] as §"k§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§"$§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§default§))
               {
                  _loc13_ = _loc12_ * (1 - this.§default§ + Math.random() * this.§default§ * 2) + this.§20§;
               }
               this.§20§ += _loc12_ - _loc13_;
               this.§"$§ -= _loc13_;
            }
            if(this.§^!T§ != Number.MAX_VALUE)
            {
               this.§^!T§ = Math.max(0,this.§^!T§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§<Y§.width;
         var _loc9_:Number = this.§<Y§.height;
         this.§8!2§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§=q§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§%!%§)
            {
               _loc6_ = (_loc4_ = this.§0!D§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§?4§[_loc14_ * 3];
               _loc17_ = this.§?4§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§79§.§#[§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §79§.§#[§.§?!b§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§8!2§;
                  this.§>!@§.§'3§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§>!@§.§<S§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§>!@§.§<S§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§>!@§.§<S§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§>!@§.§<S§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§>!@§.§<S§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§>!@§.§<S§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§>!@§.§<S§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§>!@§.§<S§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §=q§(param1:Matrix3D) : void
      {
         var _loc3_:§"k§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!%§)
         {
            _loc3_ = this.§0!D§[_loc2_];
            this.§7!6§[_loc2_ * 3] = _loc3_.x;
            this.§7!6§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§7!6§,this.§?4§);
      }
      
      override public function render(param1:§23§, param2:Number) : void
      {
         this.§5K§(param1.§?A§);
         if(this.§8!2§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §9d§.§"!"§(param2 != 1,this.§<Y§.mipMapping,false,this.§[S§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§@!Q§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§[=§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§<H§ != this.§71§)
         {
            this.§6Z§(0);
            this.§71§ = param1.§<H§;
         }
         if(!this.§>a§(_loc4_))
         {
            this.§1!!§.uploadFromVector(this.§>!@§.§4!'§,0,this.§8!2§ * 4);
            this.§7!4§.uploadFromVector(this.§>!@§.§0!;§,0,this.§8!2§ * 4);
         }
         _loc4_.setBlendFactors(this.§0!I§,this.§=!F§);
         _loc4_.setProgram(§79§.§#[§.§?B§(_loc3_));
         _loc4_.setTextureAt(0,this.§<Y§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§7!4§,§17§.§#i§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§0!>§,§17§.§+!@§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§1!!§,§17§.§3!L§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§?A§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§-i§,0,this.§8!2§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §&>§() : Boolean
      {
         return false;
      }
      
      public function get §5!9§() : int
      {
         return this.§>!@§.§ x§ / 4;
      }
      
      public function get §;^§() : int
      {
         return this.§%!%§;
      }
      
      public function get §+!Z§() : Number
      {
         return this.§;>§;
      }
      
      public function set §+!Z§(param1:Number) : void
      {
         this.§;>§ = param1;
      }
      
      public function get §>!P§() : Number
      {
         return this.§]!I§;
      }
      
      public function set §>!P§(param1:Number) : void
      {
         this.§]!I§ = param1;
      }
      
      public function get §?a§() : Number
      {
         return this.§&!B§;
      }
      
      public function set §?a§(param1:Number) : void
      {
         this.§&!B§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§<Y§;
      }
   }
}
