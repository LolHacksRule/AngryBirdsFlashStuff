package §,O§
{
   import § N§.DisplayObject;
   import §!`§.§%9§;
   import §+§.§0&§;
   import §5Z§.§4]§;
   import §5Z§.§[Z§;
   import §5Z§.§]5§;
   import §7!O§.§-!C§;
   import §8z§.Texture;
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
   
   public class § d§ extends DisplayObject implements §%9§
   {
       
      
      private var §-`§:Texture;
      
      private var §6l§:Vector.<§50§>;
      
      private var §4!=§:Number;
      
      private var §#d§:Vector.<Number>;
      
      private var §]!"§:Vector.<Number>;
      
      private var §"!F§:§0&§;
      
      private var §=t§:VertexBuffer3D;
      
      private var § >§:VertexBuffer3D;
      
      private var §;F§:VertexBuffer3D;
      
      private var §4!"§:Vector.<uint>;
      
      private var §+!P§:IndexBuffer3D;
      
      private var §?!"§:int;
      
      private var dynamic:int;
      
      private var §-o§:Number;
      
      protected var §'!L§:Number;
      
      private var § '§:Number = 0.0;
      
      private var §7!L§:Number;
      
      protected var §^!4§:Number;
      
      protected var §>g§:Number;
      
      protected var §7o§:Boolean;
      
      protected var §;p§:String;
      
      protected var §>=§:String;
      
      protected var §=o§:String;
      
      private var §4!<§:int = -1;
      
      private var §9E§:Boolean = false;
      
      private var §4!&§:Number = 0.0;
      
      public function § d§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§-`§ = param1;
         this.§7o§ = param1.premultipliedAlpha;
         this.§6l§ = new Vector.<§50§>(0,false);
         this.§#d§ = new Vector.<Number>();
         this.§]!"§ = new Vector.<Number>();
         this.§"!F§ = new §0&§(0,this.§7o§);
         this.§4!"§ = new Vector.<uint>(0);
         this.§-o§ = param2;
         this.§7!L§ = 0;
         this.§4!=§ = 0;
         this.§>g§ = 0;
         this.§^!4§ = 0;
         this.§>=§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§;p§ = param4 || (!!this.§7o§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§#!D§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         if(this.§ >§)
         {
            this.§ >§.dispose();
         }
         if(this.§;F§)
         {
            this.§;F§.dispose();
         }
         if(this.§+!P§)
         {
            this.§+!P§.dispose();
         }
         this.§#d§ = null;
         this.§]!"§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §50§
      {
         return new §50§();
      }
      
      protected function initParticle(param1:§50§) : void
      {
         param1.x = this.§^!4§;
         param1.y = this.§>g§;
         param1.§=d§ = 0;
         param1.§[@§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§50§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§=d§ / param1.§[@§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§=d§ += param2;
      }
      
      private function §#!D§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§5j§;
         var _loc3_:int = this.§5j§ + param1;
         var _loc4_:§0&§;
         (_loc4_ = new §0&§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§-`§.adjustVertexData(_loc4_,0,4);
         this.§6l§.fixed = false;
         this.§4!"§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§6l§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§#d§.push(0);
               this.§]!"§.push(0);
               _loc7_++;
            }
            this.§"!F§.append(_loc4_);
            this.§4!"§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§6l§.fixed = true;
         this.§4!"§.fixed = true;
         this.§9E§ = true;
      }
      
      private function §finally§(param1:Context3D) : Boolean
      {
         if(!this.§9E§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-!C§();
         }
         var _loc2_:int = this.§"!F§.§6P§ / 4;
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         if(this.§ >§)
         {
            this.§ >§.dispose();
         }
         if(this.§;F§)
         {
            this.§;F§.dispose();
         }
         if(this.§+!P§)
         {
            this.§+!P§.dispose();
         }
         this.§=t§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§7R§);
         this.§=t§.uploadFromByteArray(this.§"!F§.§4!#§,0,0,_loc2_ * 4);
         this.§ >§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§<W§);
         this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,_loc2_ * 4);
         this.§;F§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§&!H§);
         this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,_loc2_ * 4);
         this.§+!P§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§+!P§.uploadFromVector(this.§4!"§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§-o§ != 0)
         {
            this.§7!L§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§7!L§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §>!B§(param1);
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
      
      public function §^m§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§!!>§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§4!&§ = param1;
      }
      
      private function §!!>§(param1:Matrix3D) : void
      {
         var _loc4_:§50§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§50§ = null;
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
         if(isNaN(this.§4!&§) || this.§4!&§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§4!&§;
         this.§4!&§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!"§)
         {
            if((_loc4_ = this.§6l§[_loc3_]).§=d§ < _loc4_.§[@§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?!"§ - 1)
               {
                  _loc11_ = this.§6l§[this.§?!"§ - 1];
                  this.§6l§[this.§?!"§ - 1] = _loc4_;
                  this.§6l§[_loc3_] = _loc11_;
               }
               --this.§?!"§;
            }
         }
         if(this.§7!L§ > 0)
         {
            _loc12_ = 1 / this.§-o§;
            this.§4!=§ += _loc2_;
            while(this.§4!=§ > 0)
            {
               if(this.§?!"§ == this.§5j§)
               {
                  this.§#!D§(this.§5j§);
               }
               _loc4_ = this.§6l§[this.§?!"§++] as §50§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§4!=§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§'!L§))
               {
                  _loc13_ = _loc12_ * (1 - this.§'!L§ + Math.random() * this.§'!L§ * 2) + this.§ '§;
               }
               this.§ '§ += _loc12_ - _loc13_;
               this.§4!=§ -= _loc13_;
            }
            if(this.§7!L§ != Number.MAX_VALUE)
            {
               this.§7!L§ = Math.max(0,this.§7!L§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§-`§.width;
         var _loc9_:Number = this.§-`§.height;
         this.dynamic = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§>_§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?!"§)
            {
               _loc6_ = (_loc4_ = this.§6l§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§]!"§[_loc14_ * 3];
               _loc17_ = this.§]!"§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§[Z§.§%m§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §[Z§.§%m§.§ !8§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.dynamic;
                  this.§"!F§.§0!H§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§"!F§.§7! §(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§"!F§.§7! §(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§"!F§.§7! §(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§"!F§.§7! §(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§"!F§.§7! §(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§"!F§.§7! §(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§"!F§.§7! §(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§"!F§.§7! §(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §>_§(param1:Matrix3D) : void
      {
         var _loc3_:§50§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!"§)
         {
            _loc3_ = this.§6l§[_loc2_];
            this.§#d§[_loc2_ * 3] = _loc3_.x;
            this.§#d§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§#d§,this.§]!"§);
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         this.§!!>§(param1.§^Z§);
         if(this.dynamic == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §]5§.§ !L§(param2 != 1,this.§-`§.mipMapping,false,this.§=o§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§,!D§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§7o§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§!!E§ != this.§4!<§)
         {
            this.§#!D§(0);
            this.§4!<§ = param1.§!!E§;
         }
         if(!this.§finally§(_loc4_))
         {
            this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,this.dynamic * 4);
            this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,this.dynamic * 4);
         }
         _loc4_.setBlendFactors(this.§;p§,this.§>=§);
         _loc4_.setProgram(§[Z§.§%m§.§ %§(_loc3_));
         _loc4_.setTextureAt(0,this.§-`§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§;F§,§0&§.§%#§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§=t§,§0&§.§@!%§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§ >§,§0&§.§ C§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^Z§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§+!P§,0,this.dynamic * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §,y§() : Boolean
      {
         return false;
      }
      
      public function get §5j§() : int
      {
         return this.§"!F§.§6P§ / 4;
      }
      
      public function get §>!!§() : int
      {
         return this.§?!"§;
      }
      
      public function get §^!?§() : Number
      {
         return this.§-o§;
      }
      
      public function set §^!?§(param1:Number) : void
      {
         this.§-o§ = param1;
      }
      
      public function get §8!%§() : Number
      {
         return this.§^!4§;
      }
      
      public function set §8!%§(param1:Number) : void
      {
         this.§^!4§ = param1;
      }
      
      public function get §7N§() : Number
      {
         return this.§>g§;
      }
      
      public function set §7N§(param1:Number) : void
      {
         this.§>g§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§-`§;
      }
   }
}
