package §1!D§
{
   import §%%§.§,!<§;
   import §%%§.§3P§;
   import §%%§.§^!6§;
   import §&7§.Texture;
   import §-P§.§&s§;
   import §3!'§.§5!G§;
   import §>!a§.§;!V§;
   import §`!n§.DisplayObject;
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
   
   public class §7!1§ extends DisplayObject implements §&s§
   {
       
      
      private var §!W§:Texture;
      
      private var §-^§:Vector.<§7L§>;
      
      private var §?!A§:Number;
      
      private var §%!+§:Vector.<Number>;
      
      private var §[!<§:Vector.<Number>;
      
      private var §@Y§:§;!V§;
      
      private var §-!Q§:VertexBuffer3D;
      
      private var §??§:VertexBuffer3D;
      
      private var §+B§:VertexBuffer3D;
      
      private var §<!-§:Vector.<uint>;
      
      private var §4!#§:IndexBuffer3D;
      
      private var §%?§:int;
      
      private var §&I§:int;
      
      private var §%!f§:Number;
      
      protected var §2!B§:Number;
      
      private var §"!`§:Number = 0.0;
      
      private var §<+§:Number;
      
      protected var §7!_§:Number;
      
      protected var §=V§:Number;
      
      protected var §4!U§:Boolean;
      
      protected var §4!<§:String;
      
      protected var §`!Q§:String;
      
      protected var §-1§:String;
      
      private var §<!o§:int = -1;
      
      private var §=`§:Boolean = false;
      
      private var §;h§:Number = 0.0;
      
      public function §7!1§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!W§ = param1;
         this.§4!U§ = param1.premultipliedAlpha;
         this.§-^§ = new Vector.<§7L§>(0,false);
         this.§%!+§ = new Vector.<Number>();
         this.§[!<§ = new Vector.<Number>();
         this.§@Y§ = new §;!V§(0,this.§4!U§);
         this.§<!-§ = new Vector.<uint>(0);
         this.§%!f§ = param2;
         this.§<+§ = 0;
         this.§?!A§ = 0;
         this.§=V§ = 0;
         this.§7!_§ = 0;
         this.§`!Q§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§4!<§ = param4 || (!!this.§4!U§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§8X§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-!Q§)
         {
            this.§-!Q§.dispose();
         }
         if(this.§??§)
         {
            this.§??§.dispose();
         }
         if(this.§+B§)
         {
            this.§+B§.dispose();
         }
         if(this.§4!#§)
         {
            this.§4!#§.dispose();
         }
         this.§%!+§ = null;
         this.§[!<§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §7L§
      {
         return new §7L§();
      }
      
      protected function initParticle(param1:§7L§) : void
      {
         param1.x = this.§7!_§;
         param1.y = this.§=V§;
         param1.§4!c§ = 0;
         param1.§!L§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§7L§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§4!c§ / param1.§!L§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§4!c§ += param2;
      }
      
      private function §8X§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§0A§;
         var _loc3_:int = this.§0A§ + param1;
         var _loc4_:§;!V§;
         (_loc4_ = new §;!V§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!W§.adjustVertexData(_loc4_,0,4);
         this.§-^§.fixed = false;
         this.§<!-§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§-^§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§%!+§.push(0);
               this.§[!<§.push(0);
               _loc7_++;
            }
            this.§@Y§.append(_loc4_);
            this.§<!-§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§-^§.fixed = true;
         this.§<!-§.fixed = true;
         this.§=`§ = true;
      }
      
      private function §?C§(param1:Context3D) : Boolean
      {
         if(!this.§=`§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §5!G§();
         }
         var _loc2_:int = this.§@Y§.§#[§ / 4;
         if(this.§-!Q§)
         {
            this.§-!Q§.dispose();
         }
         if(this.§??§)
         {
            this.§??§.dispose();
         }
         if(this.§+B§)
         {
            this.§+B§.dispose();
         }
         if(this.§4!#§)
         {
            this.§4!#§.dispose();
         }
         this.§-!Q§ = param1.createVertexBuffer(_loc2_ * 4,§;!V§.§1!6§);
         this.§-!Q§.uploadFromByteArray(this.§@Y§.§1!@§,0,0,_loc2_ * 4);
         this.§??§ = param1.createVertexBuffer(_loc2_ * 4,§;!V§.§&L§);
         this.§??§.uploadFromVector(this.§@Y§.§?!9§,0,_loc2_ * 4);
         this.§+B§ = param1.createVertexBuffer(_loc2_ * 4,§;!V§.§4l§);
         this.§+B§.uploadFromVector(this.§@Y§.§=!5§,0,_loc2_ * 4);
         this.§4!#§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§4!#§.uploadFromVector(this.§<!-§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§%!f§ != 0)
         {
            this.§<+§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§<+§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §'!C§(param1);
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
      
      public function §8!_§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§,J§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§;h§ = param1;
      }
      
      private function §,J§(param1:Matrix3D) : void
      {
         var _loc4_:§7L§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§7L§ = null;
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
         if(isNaN(this.§;h§) || this.§;h§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§;h§;
         this.§;h§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§%?§)
         {
            if((_loc4_ = this.§-^§[_loc3_]).§4!c§ < _loc4_.§!L§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§%?§ - 1)
               {
                  _loc11_ = this.§-^§[this.§%?§ - 1];
                  this.§-^§[this.§%?§ - 1] = _loc4_;
                  this.§-^§[_loc3_] = _loc11_;
               }
               --this.§%?§;
            }
         }
         if(this.§<+§ > 0)
         {
            _loc12_ = 1 / this.§%!f§;
            this.§?!A§ += _loc2_;
            while(this.§?!A§ > 0)
            {
               if(this.§%?§ == this.§0A§)
               {
                  this.§8X§(this.§0A§);
               }
               _loc4_ = this.§-^§[this.§%?§++] as §7L§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§?!A§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§2!B§))
               {
                  _loc13_ = _loc12_ * (1 - this.§2!B§ + Math.random() * this.§2!B§ * 2) + this.§"!`§;
               }
               this.§"!`§ += _loc12_ - _loc13_;
               this.§?!A§ -= _loc13_;
            }
            if(this.§<+§ != Number.MAX_VALUE)
            {
               this.§<+§ = Math.max(0,this.§<+§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!W§.width;
         var _loc9_:Number = this.§!W§.height;
         this.§&I§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§8!^§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§%?§)
            {
               _loc6_ = (_loc4_ = this.§-^§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§[!<§[_loc14_ * 3];
               _loc17_ = this.§[!<§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§3P§.§6_§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §3P§.§6_§.§4!L§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§&I§;
                  this.§@Y§.§;D§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§@Y§.§+!c§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§@Y§.§+!c§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§@Y§.§+!c§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§@Y§.§+!c§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§@Y§.§+!c§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§@Y§.§+!c§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§@Y§.§+!c§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§@Y§.§+!c§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §8!^§(param1:Matrix3D) : void
      {
         var _loc3_:§7L§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%?§)
         {
            _loc3_ = this.§-^§[_loc2_];
            this.§%!+§[_loc2_ * 3] = _loc3_.x;
            this.§%!+§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§%!+§,this.§[!<§);
      }
      
      override public function render(param1:§,!<§, param2:Number) : void
      {
         this.§,J§(param1.§"!^§);
         if(this.§&I§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §^!6§.§9U§(param2 != 1,this.§!W§.mipMapping,false,this.§-1§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§=!_§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§4!U§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§%,§ != this.§<!o§)
         {
            this.§8X§(0);
            this.§<!o§ = param1.§%,§;
         }
         if(!this.§?C§(_loc4_))
         {
            this.§??§.uploadFromVector(this.§@Y§.§?!9§,0,this.§&I§ * 4);
            this.§+B§.uploadFromVector(this.§@Y§.§=!5§,0,this.§&I§ * 4);
         }
         _loc4_.setBlendFactors(this.§4!<§,this.§`!Q§);
         _loc4_.setProgram(§3P§.§6_§.§5!§(_loc3_));
         _loc4_.setTextureAt(0,this.§!W§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§+B§,§;!V§.§+r§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§-!Q§,§;!V§.§,5§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§??§,§;!V§.§"!0§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§"!^§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§4!#§,0,this.§&I§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §!!4§() : Boolean
      {
         return false;
      }
      
      public function get §0A§() : int
      {
         return this.§@Y§.§#[§ / 4;
      }
      
      public function get §+!`§() : int
      {
         return this.§%?§;
      }
      
      public function get §9&§() : Number
      {
         return this.§%!f§;
      }
      
      public function set §9&§(param1:Number) : void
      {
         this.§%!f§ = param1;
      }
      
      public function get §"J§() : Number
      {
         return this.§7!_§;
      }
      
      public function set §"J§(param1:Number) : void
      {
         this.§7!_§ = param1;
      }
      
      public function get §9z§() : Number
      {
         return this.§=V§;
      }
      
      public function set §9z§(param1:Number) : void
      {
         this.§=V§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!W§;
      }
   }
}
