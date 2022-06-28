package §=s§
{
   import § M§.§]-§;
   import §#!;§.§,U§;
   import §#!;§.§;T§;
   import §#!;§.§?h§;
   import §5!@§.Texture;
   import §8k§.§&E§;
   import §9W§.DisplayObject;
   import §@e§.§;2§;
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
   
   public class §#!H§ extends DisplayObject implements §]-§
   {
       
      
      private var §7#§:Texture;
      
      private var §5o§:Vector.<§ !H§>;
      
      private var §&_§:Number;
      
      private var §=!E§:Vector.<Number>;
      
      private var §'!C§:Vector.<Number>;
      
      private var §5J§:§;2§;
      
      private var §-!H§:VertexBuffer3D;
      
      private var § e§:VertexBuffer3D;
      
      private var §?k§:VertexBuffer3D;
      
      private var §`p§:Vector.<uint>;
      
      private var §'!%§:IndexBuffer3D;
      
      private var §=i§:int;
      
      private var §1!?§:int;
      
      private var §4q§:Number;
      
      protected var §]+§:Number;
      
      private var §=!4§:Number = 0.0;
      
      private var §]p§:Number;
      
      protected var §+I§:Number;
      
      protected var §8]§:Number;
      
      protected var §+!8§:Boolean;
      
      protected var §-!&§:String;
      
      protected var §]`§:String;
      
      protected var §6@§:String;
      
      private var §#!F§:int = -1;
      
      private var §switch§:Boolean = false;
      
      private var §,T§:Number = 0.0;
      
      public function §#!H§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§7#§ = param1;
         this.§+!8§ = param1.premultipliedAlpha;
         this.§5o§ = new Vector.<§ !H§>(0,false);
         this.§=!E§ = new Vector.<Number>();
         this.§'!C§ = new Vector.<Number>();
         this.§5J§ = new §;2§(0,this.§+!8§);
         this.§`p§ = new Vector.<uint>(0);
         this.§4q§ = param2;
         this.§]p§ = 0;
         this.§&_§ = 0;
         this.§8]§ = 0;
         this.§+I§ = 0;
         this.§]`§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-!&§ = param4 || (!!this.§+!8§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§0"§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-!H§)
         {
            this.§-!H§.dispose();
         }
         if(this.§ e§)
         {
            this.§ e§.dispose();
         }
         if(this.§?k§)
         {
            this.§?k§.dispose();
         }
         if(this.§'!%§)
         {
            this.§'!%§.dispose();
         }
         this.§=!E§ = null;
         this.§'!C§ = null;
         super.dispose();
      }
      
      protected function createParticle() : § !H§
      {
         return new § !H§();
      }
      
      protected function initParticle(param1:§ !H§) : void
      {
         param1.x = this.§+I§;
         param1.y = this.§8]§;
         param1.currentTime = 0;
         param1.§=!,§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§ !H§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§=!,§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §0"§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§1v§;
         var _loc3_:int = this.§1v§ + param1;
         var _loc4_:§;2§;
         (_loc4_ = new §;2§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§7#§.adjustVertexData(_loc4_,0,4);
         this.§5o§.fixed = false;
         this.§`p§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§5o§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§=!E§.push(0);
               this.§'!C§.push(0);
               _loc7_++;
            }
            this.§5J§.append(_loc4_);
            this.§`p§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§5o§.fixed = true;
         this.§`p§.fixed = true;
         this.§switch§ = true;
      }
      
      private function §%3§(param1:Context3D) : Boolean
      {
         if(!this.§switch§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&E§();
         }
         var _loc2_:int = this.§5J§.§2!5§ / 4;
         if(this.§-!H§)
         {
            this.§-!H§.dispose();
         }
         if(this.§ e§)
         {
            this.§ e§.dispose();
         }
         if(this.§?k§)
         {
            this.§?k§.dispose();
         }
         if(this.§'!%§)
         {
            this.§'!%§.dispose();
         }
         this.§-!H§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§%]§);
         this.§-!H§.uploadFromByteArray(this.§5J§.§&!#§,0,0,_loc2_ * 4);
         this.§ e§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§-Z§);
         this.§ e§.uploadFromVector(this.§5J§.§;!3§,0,_loc2_ * 4);
         this.§?k§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§%0§);
         this.§?k§.uploadFromVector(this.§5J§.§13§,0,_loc2_ * 4);
         this.§'!%§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§'!%§.uploadFromVector(this.§`p§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§4q§ != 0)
         {
            this.§]p§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§]p§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §8w§(param1);
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
      
      public function §<!+§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§"!-§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§,T§ = param1;
      }
      
      private function §"!-§(param1:Matrix3D) : void
      {
         var _loc4_:§ !H§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§ !H§ = null;
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
         if(isNaN(this.§,T§) || this.§,T§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§,T§;
         this.§,T§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§=i§)
         {
            if((_loc4_ = this.§5o§[_loc3_]).currentTime < _loc4_.§=!,§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§=i§ - 1)
               {
                  _loc11_ = this.§5o§[this.§=i§ - 1];
                  this.§5o§[this.§=i§ - 1] = _loc4_;
                  this.§5o§[_loc3_] = _loc11_;
               }
               --this.§=i§;
            }
         }
         if(this.§]p§ > 0)
         {
            _loc12_ = 1 / this.§4q§;
            this.§&_§ += _loc2_;
            while(this.§&_§ > 0)
            {
               if(this.§=i§ == this.§1v§)
               {
                  this.§0"§(this.§1v§);
               }
               _loc4_ = this.§5o§[this.§=i§++] as § !H§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§&_§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§]+§))
               {
                  _loc13_ = _loc12_ * (1 - this.§]+§ + Math.random() * this.§]+§ * 2) + this.§=!4§;
               }
               this.§=!4§ += _loc12_ - _loc13_;
               this.§&_§ -= _loc13_;
            }
            if(this.§]p§ != Number.MAX_VALUE)
            {
               this.§]p§ = Math.max(0,this.§]p§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§7#§.width;
         var _loc9_:Number = this.§7#§.height;
         this.§1!?§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§9r§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§=i§)
            {
               _loc6_ = (_loc4_ = this.§5o§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§'!C§[_loc14_ * 3];
               _loc17_ = this.§'!C§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§;T§.§,H§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §;T§.§,H§.§"F§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§1!?§;
                  this.§5J§.§`!-§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§5J§.§3!E§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§5J§.§3!E§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§5J§.§3!E§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§5J§.§3!E§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§5J§.§3!E§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§5J§.§3!E§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§5J§.§3!E§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§5J§.§3!E§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §9r§(param1:Matrix3D) : void
      {
         var _loc3_:§ !H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=i§)
         {
            _loc3_ = this.§5o§[_loc2_];
            this.§=!E§[_loc2_ * 3] = _loc3_.x;
            this.§=!E§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§=!E§,this.§'!C§);
      }
      
      override public function render(param1:§?h§, param2:Number) : void
      {
         this.§"!-§(param1.§;+§);
         if(this.§1!?§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §,U§.§%K§(param2 != 1,this.§7#§.mipMapping,false,this.§6@§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§+!8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§4+§ != this.§#!F§)
         {
            this.§0"§(0);
            this.§#!F§ = param1.§4+§;
         }
         if(!this.§%3§(_loc4_))
         {
            this.§ e§.uploadFromVector(this.§5J§.§;!3§,0,this.§1!?§ * 4);
            this.§?k§.uploadFromVector(this.§5J§.§13§,0,this.§1!?§ * 4);
         }
         _loc4_.setBlendFactors(this.§-!&§,this.§]`§);
         _loc4_.setProgram(§;T§.§,H§.§-=§(_loc3_));
         _loc4_.setTextureAt(0,this.§7#§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§?k§,§;2§.§-!8§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§-!H§,§;2§.§ !<§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§ e§,§;2§.§>,§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§;+§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§'!%§,0,this.§1!?§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §@!+§() : Boolean
      {
         return false;
      }
      
      public function get §1v§() : int
      {
         return this.§5J§.§2!5§ / 4;
      }
      
      public function get §#!+§() : int
      {
         return this.§=i§;
      }
      
      public function get §9@§() : Number
      {
         return this.§4q§;
      }
      
      public function set §9@§(param1:Number) : void
      {
         this.§4q§ = param1;
      }
      
      public function get §]!;§() : Number
      {
         return this.§+I§;
      }
      
      public function set §]!;§(param1:Number) : void
      {
         this.§+I§ = param1;
      }
      
      public function get §%!H§() : Number
      {
         return this.§8]§;
      }
      
      public function set §%!H§(param1:Number) : void
      {
         this.§8]§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§7#§;
      }
   }
}
