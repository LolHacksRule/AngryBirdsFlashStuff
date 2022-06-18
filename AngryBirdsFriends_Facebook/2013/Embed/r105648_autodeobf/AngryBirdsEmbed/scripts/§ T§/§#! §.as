package § T§
{
   import §"X§.Texture;
   import §"[§.§1%§;
   import §,#§.§%!-§;
   import §;^§.DisplayObject;
   import §??§.§!0§;
   import §??§.§'§;
   import §??§.§5!@§;
   import §`8§.§^d§;
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
   
   public class §#! § extends DisplayObject implements §1%§
   {
       
      
      private var §`!G§:Texture;
      
      private var §[p§:Vector.<§>!M§>;
      
      private var §?M§:Number;
      
      private var §+J§:Vector.<Number>;
      
      private var §?s§:Vector.<Number>;
      
      private var §@V§:§^d§;
      
      private var §'!,§:VertexBuffer3D;
      
      private var §=!;§:VertexBuffer3D;
      
      private var §]L§:VertexBuffer3D;
      
      private var §]!>§:Vector.<uint>;
      
      private var §7!6§:IndexBuffer3D;
      
      private var §5!8§:int;
      
      private var §86§:int;
      
      private var §[U§:Number;
      
      protected var §+!N§:Number;
      
      private var §5!I§:Number = 0.0;
      
      private var §`p§:Number;
      
      protected var §=p§:Number;
      
      protected var §+0§:Number;
      
      protected var §+i§:Boolean;
      
      protected var § !C§:String;
      
      protected var §+!3§:String;
      
      protected var §#+§:String;
      
      private var §0!"§:int = -1;
      
      private var §,p§:Boolean = false;
      
      private var §[!<§:Number = 0.0;
      
      public function §#! §(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§`!G§ = param1;
         this.§+i§ = param1.premultipliedAlpha;
         this.§[p§ = new Vector.<§>!M§>(0,false);
         this.§+J§ = new Vector.<Number>();
         this.§?s§ = new Vector.<Number>();
         this.§@V§ = new §^d§(0,this.§+i§);
         this.§]!>§ = new Vector.<uint>(0);
         this.§[U§ = param2;
         this.§`p§ = 0;
         this.§?M§ = 0;
         this.§+0§ = 0;
         this.§=p§ = 0;
         this.§+!3§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§ !C§ = param4 || (!!this.§+i§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§4!+§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§'!,§)
         {
            this.§'!,§.dispose();
         }
         if(this.§=!;§)
         {
            this.§=!;§.dispose();
         }
         if(this.§]L§)
         {
            this.§]L§.dispose();
         }
         if(this.§7!6§)
         {
            this.§7!6§.dispose();
         }
         this.§+J§ = null;
         this.§?s§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §>!M§
      {
         return new §>!M§();
      }
      
      protected function initParticle(param1:§>!M§) : void
      {
         param1.x = this.§=p§;
         param1.y = this.§+0§;
         param1.currentTime = 0;
         param1.§,F§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§>!M§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§,F§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §4!+§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§8]§;
         var _loc3_:int = this.§8]§ + param1;
         var _loc4_:§^d§;
         (_loc4_ = new §^d§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§`!G§.adjustVertexData(_loc4_,0,4);
         this.§[p§.fixed = false;
         this.§]!>§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§[p§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§+J§.push(0);
               this.§?s§.push(0);
               _loc7_++;
            }
            this.§@V§.append(_loc4_);
            this.§]!>§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§[p§.fixed = true;
         this.§]!>§.fixed = true;
         this.§,p§ = true;
      }
      
      private function §,v§(param1:Context3D) : Boolean
      {
         if(!this.§,p§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%!-§();
         }
         var _loc2_:int = this.§@V§.§"!"§ / 4;
         if(this.§'!,§)
         {
            this.§'!,§.dispose();
         }
         if(this.§=!;§)
         {
            this.§=!;§.dispose();
         }
         if(this.§]L§)
         {
            this.§]L§.dispose();
         }
         if(this.§7!6§)
         {
            this.§7!6§.dispose();
         }
         this.§'!,§ = param1.createVertexBuffer(_loc2_ * 4,§^d§.§6!@§);
         this.§'!,§.uploadFromByteArray(this.§@V§.§,7§,0,0,_loc2_ * 4);
         this.§=!;§ = param1.createVertexBuffer(_loc2_ * 4,§^d§.§5M§);
         this.§=!;§.uploadFromVector(this.§@V§.§9o§,0,_loc2_ * 4);
         this.§]L§ = param1.createVertexBuffer(_loc2_ * 4,§^d§.§ null§);
         this.§]L§.uploadFromVector(this.§@V§.§2!$§,0,_loc2_ * 4);
         this.§7!6§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7!6§.uploadFromVector(this.§]!>§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§[U§ != 0)
         {
            this.§`p§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§`p§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §+9§(param1);
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
      
      public function §%!2§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§ o§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§[!<§ = param1;
      }
      
      private function § o§(param1:Matrix3D) : void
      {
         var _loc4_:§>!M§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§>!M§ = null;
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
         if(isNaN(this.§[!<§) || this.§[!<§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§[!<§;
         this.§[!<§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!8§)
         {
            if((_loc4_ = this.§[p§[_loc3_]).currentTime < _loc4_.§,F§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§5!8§ - 1)
               {
                  _loc11_ = this.§[p§[this.§5!8§ - 1];
                  this.§[p§[this.§5!8§ - 1] = _loc4_;
                  this.§[p§[_loc3_] = _loc11_;
               }
               --this.§5!8§;
            }
         }
         if(this.§`p§ > 0)
         {
            _loc12_ = 1 / this.§[U§;
            this.§?M§ += _loc2_;
            while(this.§?M§ > 0)
            {
               if(this.§5!8§ == this.§8]§)
               {
                  this.§4!+§(this.§8]§);
               }
               _loc4_ = this.§[p§[this.§5!8§++] as §>!M§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§?M§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§+!N§))
               {
                  _loc13_ = _loc12_ * (1 - this.§+!N§ + Math.random() * this.§+!N§ * 2) + this.§5!I§;
               }
               this.§5!I§ += _loc12_ - _loc13_;
               this.§?M§ -= _loc13_;
            }
            if(this.§`p§ != Number.MAX_VALUE)
            {
               this.§`p§ = Math.max(0,this.§`p§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§`!G§.width;
         var _loc9_:Number = this.§`!G§.height;
         this.§86§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§5!"§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§5!8§)
            {
               _loc6_ = (_loc4_ = this.§[p§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§?s§[_loc14_ * 3];
               _loc17_ = this.§?s§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§5!@§.§8%§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §5!@§.§8%§.§3!§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§86§;
                  this.§@V§.§4i§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§@V§.§0!§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§@V§.§0!§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§@V§.§0!§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§@V§.§0!§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§@V§.§0!§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§@V§.§0!§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§@V§.§0!§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§@V§.§0!§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §5!"§(param1:Matrix3D) : void
      {
         var _loc3_:§>!M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!8§)
         {
            _loc3_ = this.§[p§[_loc2_];
            this.§+J§[_loc2_ * 3] = _loc3_.x;
            this.§+J§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§+J§,this.§?s§);
      }
      
      override public function render(param1:§!0§, param2:Number) : void
      {
         this.§ o§(param1.§'X§);
         if(this.§86§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §'§.§4I§(param2 != 1,this.§`!G§.mipMapping,false,this.§#+§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§+i§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§8"§ != this.§0!"§)
         {
            this.§4!+§(0);
            this.§0!"§ = param1.§8"§;
         }
         if(!this.§,v§(_loc4_))
         {
            this.§=!;§.uploadFromVector(this.§@V§.§9o§,0,this.§86§ * 4);
            this.§]L§.uploadFromVector(this.§@V§.§2!$§,0,this.§86§ * 4);
         }
         _loc4_.setBlendFactors(this.§ !C§,this.§+!3§);
         _loc4_.setProgram(§5!@§.§8%§.§ !O§(_loc3_));
         _loc4_.setTextureAt(0,this.§`!G§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§]L§,§^d§.§6s§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§'!,§,§^d§.§25§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§=!;§,§^d§.§]R§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§'X§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§7!6§,0,this.§86§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §,w§() : Boolean
      {
         return false;
      }
      
      public function get §8]§() : int
      {
         return this.§@V§.§"!"§ / 4;
      }
      
      public function get §!!8§() : int
      {
         return this.§5!8§;
      }
      
      public function get §?!K§() : Number
      {
         return this.§[U§;
      }
      
      public function set §?!K§(param1:Number) : void
      {
         this.§[U§ = param1;
      }
      
      public function get §0$§() : Number
      {
         return this.§=p§;
      }
      
      public function set §0$§(param1:Number) : void
      {
         this.§=p§ = param1;
      }
      
      public function get § each§() : Number
      {
         return this.§+0§;
      }
      
      public function set § each§(param1:Number) : void
      {
         this.§+0§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§`!G§;
      }
   }
}
