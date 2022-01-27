package §'p§
{
   import §"!<§.Texture;
   import §'z§.§33§;
   import §8!1§.§ _§;
   import §;!F§.§1!2§;
   import §<!-§.DisplayObject;
   import §?!5§.§&2§;
   import §?!5§.§2d§;
   import §?!5§.§;P§;
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
   
   public class §6!=§ extends DisplayObject implements § _§
   {
       
      
      private var §]m§:Texture;
      
      private var §+!`§:Vector.<§"!M§>;
      
      private var §6<§:Number;
      
      private var §?g§:Vector.<Number>;
      
      private var §,!W§:Vector.<Number>;
      
      private var §#!Y§:§1!2§;
      
      private var §"l§:VertexBuffer3D;
      
      private var §<;§:VertexBuffer3D;
      
      private var §0q§:VertexBuffer3D;
      
      private var §-!!§:Vector.<uint>;
      
      private var §5V§:IndexBuffer3D;
      
      private var §0w§:int;
      
      private var §%!T§:int;
      
      private var §+!?§:Number;
      
      protected var §^m§:Number;
      
      private var §[!I§:Number = 0.0;
      
      private var §;b§:Number;
      
      protected var §"v§:Number;
      
      protected var §^M§:Number;
      
      protected var §-!'§:Boolean;
      
      protected var §=!2§:String;
      
      protected var §"_§:String;
      
      protected var §=!<§:String;
      
      private var §6N§:int = -1;
      
      private var §0!0§:Boolean = false;
      
      private var §1w§:Number = 0.0;
      
      public function §6!=§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§]m§ = param1;
         this.§-!'§ = param1.premultipliedAlpha;
         this.§+!`§ = new Vector.<§"!M§>(0,false);
         this.§?g§ = new Vector.<Number>();
         this.§,!W§ = new Vector.<Number>();
         this.§#!Y§ = new §1!2§(0,this.§-!'§);
         this.§-!!§ = new Vector.<uint>(0);
         this.§+!?§ = param2;
         this.§;b§ = 0;
         this.§6<§ = 0;
         this.§^M§ = 0;
         this.§"v§ = 0;
         this.§"_§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§=!2§ = param4 || (!!this.§-!'§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§7Z§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§"l§)
         {
            this.§"l§.dispose();
         }
         if(this.§<;§)
         {
            this.§<;§.dispose();
         }
         if(this.§0q§)
         {
            this.§0q§.dispose();
         }
         if(this.§5V§)
         {
            this.§5V§.dispose();
         }
         this.§?g§ = null;
         this.§,!W§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §"!M§
      {
         return new §"!M§();
      }
      
      protected function initParticle(param1:§"!M§) : void
      {
         param1.x = this.§"v§;
         param1.y = this.§^M§;
         param1.§@!-§ = 0;
         param1.§7!?§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§"!M§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§@!-§ / param1.§7!?§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§@!-§ += param2;
      }
      
      private function §7Z§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§ !_§;
         var _loc3_:int = this.§ !_§ + param1;
         var _loc4_:§1!2§;
         (_loc4_ = new §1!2§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§]m§.adjustVertexData(_loc4_,0,4);
         this.§+!`§.fixed = false;
         this.§-!!§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§+!`§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§?g§.push(0);
               this.§,!W§.push(0);
               _loc7_++;
            }
            this.§#!Y§.append(_loc4_);
            this.§-!!§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§+!`§.fixed = true;
         this.§-!!§.fixed = true;
         this.§0!0§ = true;
      }
      
      private function §+?§(param1:Context3D) : Boolean
      {
         if(!this.§0!0§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §33§();
         }
         var _loc2_:int = this.§#!Y§.§=C§ / 4;
         if(this.§"l§)
         {
            this.§"l§.dispose();
         }
         if(this.§<;§)
         {
            this.§<;§.dispose();
         }
         if(this.§0q§)
         {
            this.§0q§.dispose();
         }
         if(this.§5V§)
         {
            this.§5V§.dispose();
         }
         this.§"l§ = param1.createVertexBuffer(_loc2_ * 4,§1!2§.§8!6§);
         this.§"l§.uploadFromByteArray(this.§#!Y§.§4!$§,0,0,_loc2_ * 4);
         this.§<;§ = param1.createVertexBuffer(_loc2_ * 4,§1!2§.§65§);
         this.§<;§.uploadFromVector(this.§#!Y§.§0!K§,0,_loc2_ * 4);
         this.§0q§ = param1.createVertexBuffer(_loc2_ * 4,§1!2§.§'^§);
         this.§0q§.uploadFromVector(this.§#!Y§.§#A§,0,_loc2_ * 4);
         this.§5V§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5V§.uploadFromVector(this.§-!!§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§+!?§ != 0)
         {
            this.§;b§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§;b§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §^!V§(param1);
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
      
      public function §'!_§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§0!,§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§1w§ = param1;
      }
      
      private function §0!,§(param1:Matrix3D) : void
      {
         var _loc4_:§"!M§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§"!M§ = null;
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
         if(isNaN(this.§1w§) || this.§1w§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§1w§;
         this.§1w§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§0w§)
         {
            if((_loc4_ = this.§+!`§[_loc3_]).§@!-§ < _loc4_.§7!?§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§0w§ - 1)
               {
                  _loc11_ = this.§+!`§[this.§0w§ - 1];
                  this.§+!`§[this.§0w§ - 1] = _loc4_;
                  this.§+!`§[_loc3_] = _loc11_;
               }
               --this.§0w§;
            }
         }
         if(this.§;b§ > 0)
         {
            _loc12_ = 1 / this.§+!?§;
            this.§6<§ += _loc2_;
            while(this.§6<§ > 0)
            {
               if(this.§0w§ == this.§ !_§)
               {
                  this.§7Z§(this.§ !_§);
               }
               _loc4_ = this.§+!`§[this.§0w§++] as §"!M§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6<§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§^m§))
               {
                  _loc13_ = _loc12_ * (1 - this.§^m§ + Math.random() * this.§^m§ * 2) + this.§[!I§;
               }
               this.§[!I§ += _loc12_ - _loc13_;
               this.§6<§ -= _loc13_;
            }
            if(this.§;b§ != Number.MAX_VALUE)
            {
               this.§;b§ = Math.max(0,this.§;b§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§]m§.width;
         var _loc9_:Number = this.§]m§.height;
         this.§%!T§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§8!5§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§0w§)
            {
               _loc6_ = (_loc4_ = this.§+!`§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§,!W§[_loc14_ * 3];
               _loc17_ = this.§,!W§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§2d§.§0A§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §2d§.§0A§.§>5§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§%!T§;
                  this.§#!Y§.§09§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§#!Y§.§;j§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§#!Y§.§;j§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§#!Y§.§;j§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§#!Y§.§;j§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§#!Y§.§;j§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§#!Y§.§;j§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§#!Y§.§;j§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§#!Y§.§;j§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §8!5§(param1:Matrix3D) : void
      {
         var _loc3_:§"!M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0w§)
         {
            _loc3_ = this.§+!`§[_loc2_];
            this.§?g§[_loc2_ * 3] = _loc3_.x;
            this.§?g§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§?g§,this.§,!W§);
      }
      
      override public function render(param1:§;P§, param2:Number) : void
      {
         this.§0!,§(param1.§8#§);
         if(this.§%!T§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §&2§.§'1§(param2 != 1,this.§]m§.mipMapping,false,this.§=!<§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§ !5§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§-!'§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§7!Q§ != this.§6N§)
         {
            this.§7Z§(0);
            this.§6N§ = param1.§7!Q§;
         }
         if(!this.§+?§(_loc4_))
         {
            this.§<;§.uploadFromVector(this.§#!Y§.§0!K§,0,this.§%!T§ * 4);
            this.§0q§.uploadFromVector(this.§#!Y§.§#A§,0,this.§%!T§ * 4);
         }
         _loc4_.setBlendFactors(this.§=!2§,this.§"_§);
         _loc4_.setProgram(§2d§.§0A§.§3!<§(_loc3_));
         _loc4_.setTextureAt(0,this.§]m§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§0q§,§1!2§.§?h§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§"l§,§1!2§.§,o§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§<;§,§1!2§.§#-§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§8#§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§5V§,0,this.§%!T§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §>N§() : Boolean
      {
         return false;
      }
      
      public function get § !_§() : int
      {
         return this.§#!Y§.§=C§ / 4;
      }
      
      public function get §#!§() : int
      {
         return this.§0w§;
      }
      
      public function get §9!Y§() : Number
      {
         return this.§+!?§;
      }
      
      public function set §9!Y§(param1:Number) : void
      {
         this.§+!?§ = param1;
      }
      
      public function get §in §() : Number
      {
         return this.§"v§;
      }
      
      public function set §in §(param1:Number) : void
      {
         this.§"v§ = param1;
      }
      
      public function get §3;§() : Number
      {
         return this.§^M§;
      }
      
      public function set §3;§(param1:Number) : void
      {
         this.§^M§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§]m§;
      }
   }
}
