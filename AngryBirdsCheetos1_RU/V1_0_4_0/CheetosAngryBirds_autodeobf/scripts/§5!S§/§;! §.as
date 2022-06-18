package §5!S§
{
   import §+![§.Texture;
   import §1v§.§,!Y§;
   import §3§.DisplayObject;
   import §9![§.§%!L§;
   import §94§.§#!a§;
   import §94§.§&!7§;
   import §94§.§6!N§;
   import §?C§.§3-§;
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
   
   public class §;! § extends DisplayObject implements §,!Y§
   {
       
      
      private var §>b§:Texture;
      
      private var § !I§:Vector.<§`!D§>;
      
      private var §;!,§:Number;
      
      private var §=!L§:Vector.<Number>;
      
      private var §2!A§:Vector.<Number>;
      
      private var §5h§:§%!L§;
      
      private var §7!,§:VertexBuffer3D;
      
      private var §0d§:VertexBuffer3D;
      
      private var §8!§:VertexBuffer3D;
      
      private var §@!'§:Vector.<uint>;
      
      private var §3E§:IndexBuffer3D;
      
      private var §]!E§:int;
      
      private var §;b§:int;
      
      private var §>D§:Number;
      
      protected var §4!_§:Number;
      
      private var §7§:Number = 0.0;
      
      private var §?q§:Number;
      
      protected var §5b§:Number;
      
      protected var §[=§:Number;
      
      protected var §4&§:Boolean;
      
      protected var §+3§:String;
      
      protected var §3@§:String;
      
      protected var §&!S§:String;
      
      private var §`!^§:int = -1;
      
      private var §,G§:Boolean = false;
      
      private var §6`§:Number = 0.0;
      
      public function §;! §(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§>b§ = param1;
         this.§4&§ = param1.premultipliedAlpha;
         this.§ !I§ = new Vector.<§`!D§>(0,false);
         this.§=!L§ = new Vector.<Number>();
         this.§2!A§ = new Vector.<Number>();
         this.§5h§ = new §%!L§(0,this.§4&§);
         this.§@!'§ = new Vector.<uint>(0);
         this.§>D§ = param2;
         this.§?q§ = 0;
         this.§;!,§ = 0;
         this.§[=§ = 0;
         this.§5b§ = 0;
         this.§3@§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§+3§ = param4 || (!!this.§4&§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^!G§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§7!,§)
         {
            this.§7!,§.dispose();
         }
         if(this.§0d§)
         {
            this.§0d§.dispose();
         }
         if(this.§8!§)
         {
            this.§8!§.dispose();
         }
         if(this.§3E§)
         {
            this.§3E§.dispose();
         }
         this.§=!L§ = null;
         this.§2!A§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §`!D§
      {
         return new §`!D§();
      }
      
      protected function initParticle(param1:§`!D§) : void
      {
         param1.x = this.§5b§;
         param1.y = this.§[=§;
         param1.§@a§ = 0;
         param1.§[O§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§`!D§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§@a§ / param1.§[O§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§@a§ += param2;
      }
      
      private function §^!G§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§"!0§;
         var _loc3_:int = this.§"!0§ + param1;
         var _loc4_:§%!L§;
         (_loc4_ = new §%!L§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§>b§.adjustVertexData(_loc4_,0,4);
         this.§ !I§.fixed = false;
         this.§@!'§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§ !I§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§=!L§.push(0);
               this.§2!A§.push(0);
               _loc7_++;
            }
            this.§5h§.append(_loc4_);
            this.§@!'§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§ !I§.fixed = true;
         this.§@!'§.fixed = true;
         this.§,G§ = true;
      }
      
      private function §+!T§(param1:Context3D) : Boolean
      {
         if(!this.§,G§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §3-§();
         }
         var _loc2_:int = this.§5h§.§'!-§ / 4;
         if(this.§7!,§)
         {
            this.§7!,§.dispose();
         }
         if(this.§0d§)
         {
            this.§0d§.dispose();
         }
         if(this.§8!§)
         {
            this.§8!§.dispose();
         }
         if(this.§3E§)
         {
            this.§3E§.dispose();
         }
         this.§7!,§ = param1.createVertexBuffer(_loc2_ * 4,§%!L§.§<'§);
         this.§7!,§.uploadFromByteArray(this.§5h§.§4a§,0,0,_loc2_ * 4);
         this.§0d§ = param1.createVertexBuffer(_loc2_ * 4,§%!L§.§[o§);
         this.§0d§.uploadFromVector(this.§5h§.§^!?§,0,_loc2_ * 4);
         this.§8!§ = param1.createVertexBuffer(_loc2_ * 4,§%!L§.§1E§);
         this.§8!§.uploadFromVector(this.§5h§.§<h§,0,_loc2_ * 4);
         this.§3E§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§3E§.uploadFromVector(this.§@!'§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§>D§ != 0)
         {
            this.§?q§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§?q§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §8!V§(param1);
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
      
      public function §]6§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§"u§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§6`§ = param1;
      }
      
      private function §"u§(param1:Matrix3D) : void
      {
         var _loc4_:§`!D§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§`!D§ = null;
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
         if(isNaN(this.§6`§) || this.§6`§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§6`§;
         this.§6`§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§]!E§)
         {
            if((_loc4_ = this.§ !I§[_loc3_]).§@a§ < _loc4_.§[O§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§]!E§ - 1)
               {
                  _loc11_ = this.§ !I§[this.§]!E§ - 1];
                  this.§ !I§[this.§]!E§ - 1] = _loc4_;
                  this.§ !I§[_loc3_] = _loc11_;
               }
               --this.§]!E§;
            }
         }
         if(this.§?q§ > 0)
         {
            _loc12_ = 1 / this.§>D§;
            this.§;!,§ += _loc2_;
            while(this.§;!,§ > 0)
            {
               if(this.§]!E§ == this.§"!0§)
               {
                  this.§^!G§(this.§"!0§);
               }
               _loc4_ = this.§ !I§[this.§]!E§++] as §`!D§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§;!,§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§4!_§))
               {
                  _loc13_ = _loc12_ * (1 - this.§4!_§ + Math.random() * this.§4!_§ * 2) + this.§7§;
               }
               this.§7§ += _loc12_ - _loc13_;
               this.§;!,§ -= _loc13_;
            }
            if(this.§?q§ != Number.MAX_VALUE)
            {
               this.§?q§ = Math.max(0,this.§?q§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§>b§.width;
         var _loc9_:Number = this.§>b§.height;
         this.§;b§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§4!,§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§]!E§)
            {
               _loc6_ = (_loc4_ = this.§ !I§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§2!A§[_loc14_ * 3];
               _loc17_ = this.§2!A§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§&!7§.§>!M§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §&!7§.§>!M§.§0M§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§;b§;
                  this.§5h§.§<%§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§5h§.§@N§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§5h§.§@N§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§5h§.§@N§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§5h§.§@N§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§5h§.§@N§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§5h§.§@N§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§5h§.§@N§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§5h§.§@N§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §4!,§(param1:Matrix3D) : void
      {
         var _loc3_:§`!D§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!E§)
         {
            _loc3_ = this.§ !I§[_loc2_];
            this.§=!L§[_loc2_ * 3] = _loc3_.x;
            this.§=!L§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§=!L§,this.§2!A§);
      }
      
      override public function render(param1:§#!a§, param2:Number) : void
      {
         this.§"u§(param1.§>^§);
         if(this.§;b§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §6!N§.§!9§(param2 != 1,this.§>b§.mipMapping,false,this.§&!S§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§&!T§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§4&§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§>3§ != this.§`!^§)
         {
            this.§^!G§(0);
            this.§`!^§ = param1.§>3§;
         }
         if(!this.§+!T§(_loc4_))
         {
            this.§0d§.uploadFromVector(this.§5h§.§^!?§,0,this.§;b§ * 4);
            this.§8!§.uploadFromVector(this.§5h§.§<h§,0,this.§;b§ * 4);
         }
         _loc4_.setBlendFactors(this.§+3§,this.§3@§);
         _loc4_.setProgram(§&!7§.§>!M§.§@2§(_loc3_));
         _loc4_.setTextureAt(0,this.§>b§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§8!§,§%!L§.§58§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§7!,§,§%!L§.§]<§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§0d§,§%!L§.§`!U§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§>^§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§3E§,0,this.§;b§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §8c§() : Boolean
      {
         return false;
      }
      
      public function get §"!0§() : int
      {
         return this.§5h§.§'!-§ / 4;
      }
      
      public function get §2!W§() : int
      {
         return this.§]!E§;
      }
      
      public function get § !$§() : Number
      {
         return this.§>D§;
      }
      
      public function set § !$§(param1:Number) : void
      {
         this.§>D§ = param1;
      }
      
      public function get §9!'§() : Number
      {
         return this.§5b§;
      }
      
      public function set §9!'§(param1:Number) : void
      {
         this.§5b§ = param1;
      }
      
      public function get §;%§() : Number
      {
         return this.§[=§;
      }
      
      public function set §;%§(param1:Number) : void
      {
         this.§[=§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§>b§;
      }
   }
}
