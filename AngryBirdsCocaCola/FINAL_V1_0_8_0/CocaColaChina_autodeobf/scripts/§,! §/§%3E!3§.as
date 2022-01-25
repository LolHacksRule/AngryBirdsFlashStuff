package §,! §
{
   import §&!9§.DisplayObject;
   import §+&§.§ ,§;
   import §+&§.§;J§;
   import §+&§.§?y§;
   import §6!4§.Texture;
   import §=!Y§.§#!1§;
   import §>S§.§",§;
   import §@!a§.§try§;
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
   
   public class §>!3§ extends DisplayObject implements §",§
   {
       
      
      private var §38§:Texture;
      
      private var §,f§:Vector.<§!!d§>;
      
      private var §&g§:Number;
      
      private var §?!U§:Vector.<Number>;
      
      private var §!§:Vector.<Number>;
      
      private var §<G§:§try§;
      
      private var §-T§:VertexBuffer3D;
      
      private var §"!K§:VertexBuffer3D;
      
      private var §#!e§:VertexBuffer3D;
      
      private var §?k§:Vector.<uint>;
      
      private var §7g§:IndexBuffer3D;
      
      private var §6c§:int;
      
      private var §=e§:int;
      
      private var §+D§:Number;
      
      protected var §[E§:Number;
      
      private var §%!,§:Number = 0.0;
      
      private var §0I§:Number;
      
      protected var §=!@§:Number;
      
      protected var §2v§:Number;
      
      protected var §8"§:Boolean;
      
      protected var §=K§:String;
      
      protected var §[>§:String;
      
      protected var §?0§:String;
      
      private var §0!J§:int = -1;
      
      private var §&D§:Boolean = false;
      
      private var § R§:Number = 0.0;
      
      public function §>!3§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§38§ = param1;
         this.§8"§ = param1.premultipliedAlpha;
         this.§,f§ = new Vector.<§!!d§>(0,false);
         this.§?!U§ = new Vector.<Number>();
         this.§!§ = new Vector.<Number>();
         this.§<G§ = new §try§(0,this.§8"§);
         this.§?k§ = new Vector.<uint>(0);
         this.§+D§ = param2;
         this.§0I§ = 0;
         this.§&g§ = 0;
         this.§2v§ = 0;
         this.§=!@§ = 0;
         this.§[>§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§=K§ = param4 || (!!this.§8"§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§8!>§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-T§)
         {
            this.§-T§.dispose();
         }
         if(this.§"!K§)
         {
            this.§"!K§.dispose();
         }
         if(this.§#!e§)
         {
            this.§#!e§.dispose();
         }
         if(this.§7g§)
         {
            this.§7g§.dispose();
         }
         this.§?!U§ = null;
         this.§!§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §!!d§
      {
         return new §!!d§();
      }
      
      protected function initParticle(param1:§!!d§) : void
      {
         param1.x = this.§=!@§;
         param1.y = this.§2v§;
         param1.§[0§ = 0;
         param1.§##§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§!!d§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§[0§ / param1.§##§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§[0§ += param2;
      }
      
      private function §8!>§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§%W§;
         var _loc3_:int = this.§%W§ + param1;
         var _loc4_:§try§;
         (_loc4_ = new §try§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§38§.adjustVertexData(_loc4_,0,4);
         this.§,f§.fixed = false;
         this.§?k§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§,f§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§?!U§.push(0);
               this.§!§.push(0);
               _loc7_++;
            }
            this.§<G§.append(_loc4_);
            this.§?k§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§,f§.fixed = true;
         this.§?k§.fixed = true;
         this.§&D§ = true;
      }
      
      private function §<!N§(param1:Context3D) : Boolean
      {
         if(!this.§&D§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §#!1§();
         }
         var _loc2_:int = this.§<G§.§#h§ / 4;
         if(this.§-T§)
         {
            this.§-T§.dispose();
         }
         if(this.§"!K§)
         {
            this.§"!K§.dispose();
         }
         if(this.§#!e§)
         {
            this.§#!e§.dispose();
         }
         if(this.§7g§)
         {
            this.§7g§.dispose();
         }
         this.§-T§ = param1.createVertexBuffer(_loc2_ * 4,§try§.§2§);
         this.§-T§.uploadFromByteArray(this.§<G§.§[!5§,0,0,_loc2_ * 4);
         this.§"!K§ = param1.createVertexBuffer(_loc2_ * 4,§try§.§'!0§);
         this.§"!K§.uploadFromVector(this.§<G§.§ Z§,0,_loc2_ * 4);
         this.§#!e§ = param1.createVertexBuffer(_loc2_ * 4,§try§.§?!'§);
         this.§#!e§.uploadFromVector(this.§<G§.§-H§,0,_loc2_ * 4);
         this.§7g§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7g§.uploadFromVector(this.§?k§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§+D§ != 0)
         {
            this.§0I§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§0I§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §84§(param1);
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
      
      public function §;-§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§ +§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§ R§ = param1;
      }
      
      private function § +§(param1:Matrix3D) : void
      {
         var _loc4_:§!!d§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§!!d§ = null;
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
         if(isNaN(this.§ R§) || this.§ R§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§ R§;
         this.§ R§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§6c§)
         {
            if((_loc4_ = this.§,f§[_loc3_]).§[0§ < _loc4_.§##§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§6c§ - 1)
               {
                  _loc11_ = this.§,f§[this.§6c§ - 1];
                  this.§,f§[this.§6c§ - 1] = _loc4_;
                  this.§,f§[_loc3_] = _loc11_;
               }
               --this.§6c§;
            }
         }
         if(this.§0I§ > 0)
         {
            _loc12_ = 1 / this.§+D§;
            this.§&g§ += _loc2_;
            while(this.§&g§ > 0)
            {
               if(this.§6c§ == this.§%W§)
               {
                  this.§8!>§(this.§%W§);
               }
               _loc4_ = this.§,f§[this.§6c§++] as §!!d§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§&g§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§[E§))
               {
                  _loc13_ = _loc12_ * (1 - this.§[E§ + Math.random() * this.§[E§ * 2) + this.§%!,§;
               }
               this.§%!,§ += _loc12_ - _loc13_;
               this.§&g§ -= _loc13_;
            }
            if(this.§0I§ != Number.MAX_VALUE)
            {
               this.§0I§ = Math.max(0,this.§0I§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§38§.width;
         var _loc9_:Number = this.§38§.height;
         this.§=e§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§9!U§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§6c§)
            {
               _loc6_ = (_loc4_ = this.§,f§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§!§[_loc14_ * 3];
               _loc17_ = this.§!§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§?y§.§,u§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §?y§.§,u§.§=!!§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§=e§;
                  this.§<G§.§>T§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§<G§.§#o§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§<G§.§#o§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§<G§.§#o§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§<G§.§#o§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§<G§.§#o§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§<G§.§#o§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§<G§.§#o§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§<G§.§#o§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §9!U§(param1:Matrix3D) : void
      {
         var _loc3_:§!!d§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6c§)
         {
            _loc3_ = this.§,f§[_loc2_];
            this.§?!U§[_loc2_ * 3] = _loc3_.x;
            this.§?!U§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§?!U§,this.§!§);
      }
      
      override public function render(param1:§;J§, param2:Number) : void
      {
         this.§ +§(param1.§&W§);
         if(this.§=e§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = § ,§.§[F§(param2 != 1,this.§38§.mipMapping,false,this.§?0§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§<!7§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§8"§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§0!c§ != this.§0!J§)
         {
            this.§8!>§(0);
            this.§0!J§ = param1.§0!c§;
         }
         if(!this.§<!N§(_loc4_))
         {
            this.§"!K§.uploadFromVector(this.§<G§.§ Z§,0,this.§=e§ * 4);
            this.§#!e§.uploadFromVector(this.§<G§.§-H§,0,this.§=e§ * 4);
         }
         _loc4_.setBlendFactors(this.§=K§,this.§[>§);
         _loc4_.setProgram(§?y§.§,u§.§9`§(_loc3_));
         _loc4_.setTextureAt(0,this.§38§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§#!e§,§try§.§'6§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§-T§,§try§.§3c§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§"!K§,§try§.§@!&§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&W§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§7g§,0,this.§=e§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §;F§() : Boolean
      {
         return false;
      }
      
      public function get §%W§() : int
      {
         return this.§<G§.§#h§ / 4;
      }
      
      public function get §2!#§() : int
      {
         return this.§6c§;
      }
      
      public function get §],§() : Number
      {
         return this.§+D§;
      }
      
      public function set §],§(param1:Number) : void
      {
         this.§+D§ = param1;
      }
      
      public function get §7@§() : Number
      {
         return this.§=!@§;
      }
      
      public function set §7@§(param1:Number) : void
      {
         this.§=!@§ = param1;
      }
      
      public function get §=L§() : Number
      {
         return this.§2v§;
      }
      
      public function set §=L§(param1:Number) : void
      {
         this.§2v§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§38§;
      }
   }
}
