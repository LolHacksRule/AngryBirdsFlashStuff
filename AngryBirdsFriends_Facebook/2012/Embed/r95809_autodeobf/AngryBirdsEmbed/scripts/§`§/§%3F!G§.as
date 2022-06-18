package §`§
{
   import §&!7§.Texture;
   import §&I§.§3! §;
   import §&I§.§8]§;
   import §&I§.§?!§;
   import §,!5§.§"e§;
   import §->§.DisplayObject;
   import §7!9§.§>O§;
   import §<§.§?!5§;
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
   
   public class §?!G§ extends DisplayObject implements §"e§
   {
       
      
      private var §3P§:Texture;
      
      private var §,R§:Vector.<§#m§>;
      
      private var §=!>§:Number;
      
      private var §6!G§:Vector.<Number>;
      
      private var §;5§:Vector.<Number>;
      
      private var §#f§:§?!5§;
      
      private var §'U§:VertexBuffer3D;
      
      private var §4M§:VertexBuffer3D;
      
      private var §%p§:VertexBuffer3D;
      
      private var §-[§:Vector.<uint>;
      
      private var §0T§:IndexBuffer3D;
      
      private var §^I§:int;
      
      private var §9;§:int;
      
      private var §!_§:Number;
      
      protected var §7l§:Number;
      
      private var §-b§:Number = 0.0;
      
      private var §2q§:Number;
      
      protected var §#5§:Number;
      
      protected var §^q§:Number;
      
      protected var §'i§:Boolean;
      
      protected var §4!8§:String;
      
      protected var §,8§:String;
      
      protected var §7]§:String;
      
      private var §%i§:int = -1;
      
      private var §0^§:Boolean = false;
      
      private var §7Q§:Number = 0.0;
      
      public function §?!G§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§3P§ = param1;
         this.§'i§ = param1.premultipliedAlpha;
         this.§,R§ = new Vector.<§#m§>(0,false);
         this.§6!G§ = new Vector.<Number>();
         this.§;5§ = new Vector.<Number>();
         this.§#f§ = new §?!5§(0,this.§'i§);
         this.§-[§ = new Vector.<uint>(0);
         this.§!_§ = param2;
         this.§2q§ = 0;
         this.§=!>§ = 0;
         this.§^q§ = 0;
         this.§#5§ = 0;
         this.§,8§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§4!8§ = param4 || (!!this.§'i§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§1!7§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§'U§)
         {
            this.§'U§.dispose();
         }
         if(this.§4M§)
         {
            this.§4M§.dispose();
         }
         if(this.§%p§)
         {
            this.§%p§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         this.§6!G§ = null;
         this.§;5§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §#m§
      {
         return new §#m§();
      }
      
      protected function initParticle(param1:§#m§) : void
      {
         param1.x = this.§#5§;
         param1.y = this.§^q§;
         param1.currentTime = 0;
         param1.§?r§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§#m§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§?r§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §1!7§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§;1§;
         var _loc3_:int = this.§;1§ + param1;
         var _loc4_:§?!5§;
         (_loc4_ = new §?!5§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§3P§.adjustVertexData(_loc4_,0,4);
         this.§,R§.fixed = false;
         this.§-[§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§,R§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§6!G§.push(0);
               this.§;5§.push(0);
               _loc7_++;
            }
            this.§#f§.append(_loc4_);
            this.§-[§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§,R§.fixed = true;
         this.§-[§.fixed = true;
         this.§0^§ = true;
      }
      
      private function §`Y§(param1:Context3D) : Boolean
      {
         if(!this.§0^§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>O§();
         }
         var _loc2_:int = this.§#f§.§!o§ / 4;
         if(this.§'U§)
         {
            this.§'U§.dispose();
         }
         if(this.§4M§)
         {
            this.§4M§.dispose();
         }
         if(this.§%p§)
         {
            this.§%p§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         this.§'U§ = param1.createVertexBuffer(_loc2_ * 4,§?!5§.§'&§);
         this.§'U§.uploadFromByteArray(this.§#f§.§ G§,0,0,_loc2_ * 4);
         this.§4M§ = param1.createVertexBuffer(_loc2_ * 4,§?!5§.§+9§);
         this.§4M§.uploadFromVector(this.§#f§.§=-§,0,_loc2_ * 4);
         this.§%p§ = param1.createVertexBuffer(_loc2_ * 4,§?!5§.§]4§);
         this.§%p§.uploadFromVector(this.§#f§.§16§,0,_loc2_ * 4);
         this.§0T§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§0T§.uploadFromVector(this.§-[§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§!_§ != 0)
         {
            this.§2q§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§2q§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = § I§(param1);
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
      
      public function §#!<§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§ !>§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7Q§ = param1;
      }
      
      private function § !>§(param1:Matrix3D) : void
      {
         var _loc4_:§#m§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§#m§ = null;
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
         if(isNaN(this.§7Q§) || this.§7Q§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7Q§;
         this.§7Q§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§^I§)
         {
            if((_loc4_ = this.§,R§[_loc3_]).currentTime < _loc4_.§?r§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§^I§ - 1)
               {
                  _loc11_ = this.§,R§[this.§^I§ - 1];
                  this.§,R§[this.§^I§ - 1] = _loc4_;
                  this.§,R§[_loc3_] = _loc11_;
               }
               --this.§^I§;
            }
         }
         if(this.§2q§ > 0)
         {
            _loc12_ = 1 / this.§!_§;
            this.§=!>§ += _loc2_;
            while(this.§=!>§ > 0)
            {
               if(this.§^I§ == this.§;1§)
               {
                  this.§1!7§(this.§;1§);
               }
               _loc4_ = this.§,R§[this.§^I§++] as §#m§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§=!>§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§7l§))
               {
                  _loc13_ = _loc12_ * (1 - this.§7l§ + Math.random() * this.§7l§ * 2) + this.§-b§;
               }
               this.§-b§ += _loc12_ - _loc13_;
               this.§=!>§ -= _loc13_;
            }
            if(this.§2q§ != Number.MAX_VALUE)
            {
               this.§2q§ = Math.max(0,this.§2q§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§3P§.width;
         var _loc9_:Number = this.§3P§.height;
         this.§9;§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§2!H§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§^I§)
            {
               _loc6_ = (_loc4_ = this.§,R§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§;5§[_loc14_ * 3];
               _loc17_ = this.§;5§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§3! §.§"n§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §3! §.§"n§.§6!2§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§9;§;
                  this.§#f§.§`W§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§#f§.§<,§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§#f§.§<,§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§#f§.§<,§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§#f§.§<,§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§#f§.§<,§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§#f§.§<,§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§#f§.§<,§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§#f§.§<,§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §2!H§(param1:Matrix3D) : void
      {
         var _loc3_:§#m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^I§)
         {
            _loc3_ = this.§,R§[_loc2_];
            this.§6!G§[_loc2_ * 3] = _loc3_.x;
            this.§6!G§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§6!G§,this.§;5§);
      }
      
      override public function render(param1:§?!§, param2:Number) : void
      {
         this.§ !>§(param1.§&U§);
         if(this.§9;§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §8]§.§2!8§(param2 != 1,this.§3P§.mipMapping,false,this.§7]§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§'i§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§'S§ != this.§%i§)
         {
            this.§1!7§(0);
            this.§%i§ = param1.§'S§;
         }
         if(!this.§`Y§(_loc4_))
         {
            this.§4M§.uploadFromVector(this.§#f§.§=-§,0,this.§9;§ * 4);
            this.§%p§.uploadFromVector(this.§#f§.§16§,0,this.§9;§ * 4);
         }
         _loc4_.setBlendFactors(this.§4!8§,this.§,8§);
         _loc4_.setProgram(§3! §.§"n§.§0d§(_loc3_));
         _loc4_.setTextureAt(0,this.§3P§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§%p§,§?!5§.§@!;§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§'U§,§?!5§.§#!%§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§4M§,§?!5§.§+!C§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&U§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§0T§,0,this.§9;§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §2Z§() : Boolean
      {
         return false;
      }
      
      public function get §;1§() : int
      {
         return this.§#f§.§!o§ / 4;
      }
      
      public function get §-8§() : int
      {
         return this.§^I§;
      }
      
      public function get §?!?§() : Number
      {
         return this.§!_§;
      }
      
      public function set §?!?§(param1:Number) : void
      {
         this.§!_§ = param1;
      }
      
      public function get §;!0§() : Number
      {
         return this.§#5§;
      }
      
      public function set §;!0§(param1:Number) : void
      {
         this.§#5§ = param1;
      }
      
      public function get §[!8§() : Number
      {
         return this.§^q§;
      }
      
      public function set §[!8§(param1:Number) : void
      {
         this.§^q§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§3P§;
      }
   }
}
