package §+-§
{
   import §!p§.§'%§;
   import §+A§.§,T§;
   import §3",§.§'5§;
   import §3",§.§0"<§;
   import §3",§.§;D§;
   import §@!i§.DisplayObject;
   import §[>§.§<!r§;
   import §^Q§.Texture;
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
   
   public class §1_§ extends DisplayObject implements §,T§
   {
       
      
      private var §@"+§:Texture;
      
      private var §'Z§:Vector.<§5c§>;
      
      private var §%s§:Number;
      
      private var §4"2§:Vector.<Number>;
      
      private var § #§:Vector.<Number>;
      
      private var §"!,§:§'%§;
      
      private var §@L§:VertexBuffer3D;
      
      private var §[!H§:VertexBuffer3D;
      
      private var §6#§:VertexBuffer3D;
      
      private var §<&§:Vector.<uint>;
      
      private var §!!M§:IndexBuffer3D;
      
      private var §'!,§:int;
      
      private var §&b§:int;
      
      private var §3+§:Number;
      
      protected var §3!&§:Number;
      
      private var §[!3§:Number = 0.0;
      
      private var §'" §:Number;
      
      protected var §%I§:Number;
      
      protected var §4![§:Number;
      
      protected var §6!c§:Boolean;
      
      protected var §&!'§:String;
      
      protected var §+!h§:String;
      
      protected var §8E§:String;
      
      private var §2R§:int = -1;
      
      private var §=V§:Boolean = false;
      
      private var §!"$§:Number = 0.0;
      
      public function §1_§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§@"+§ = param1;
         this.§6!c§ = param1.premultipliedAlpha;
         this.§'Z§ = new Vector.<§5c§>(0,false);
         this.§4"2§ = new Vector.<Number>();
         this.§ #§ = new Vector.<Number>();
         this.§"!,§ = new §'%§(0,this.§6!c§);
         this.§<&§ = new Vector.<uint>(0);
         this.§3+§ = param2;
         this.§'" § = 0;
         this.§%s§ = 0;
         this.§4![§ = 0;
         this.§%I§ = 0;
         this.§+!h§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§&!'§ = param4 || (!!this.§6!c§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§,Q§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@L§)
         {
            this.§@L§.dispose();
         }
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
         }
         if(this.§6#§)
         {
            this.§6#§.dispose();
         }
         if(this.§!!M§)
         {
            this.§!!M§.dispose();
         }
         this.§4"2§ = null;
         this.§ #§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §5c§
      {
         return new §5c§();
      }
      
      protected function initParticle(param1:§5c§) : void
      {
         param1.x = this.§%I§;
         param1.y = this.§4![§;
         param1.§5!F§ = 0;
         param1.§[E§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§5c§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§5!F§ / param1.§[E§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§5!F§ += param2;
      }
      
      private function §,Q§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§?g§;
         var _loc3_:int = this.§?g§ + param1;
         var _loc4_:§'%§;
         (_loc4_ = new §'%§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§@"+§.adjustVertexData(_loc4_,0,4);
         this.§'Z§.fixed = false;
         this.§<&§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§'Z§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§4"2§.push(0);
               this.§ #§.push(0);
               _loc7_++;
            }
            this.§"!,§.append(_loc4_);
            this.§<&§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§'Z§.fixed = true;
         this.§<&§.fixed = true;
         this.§=V§ = true;
      }
      
      private function §!Z§(param1:Context3D) : Boolean
      {
         if(!this.§=V§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!r§();
         }
         var _loc2_:int = this.§"!,§.§'!i§ / 4;
         if(this.§@L§)
         {
            this.§@L§.dispose();
         }
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
         }
         if(this.§6#§)
         {
            this.§6#§.dispose();
         }
         if(this.§!!M§)
         {
            this.§!!M§.dispose();
         }
         this.§@L§ = param1.createVertexBuffer(_loc2_ * 4,§'%§.§&!<§);
         this.§@L§.uploadFromByteArray(this.§"!,§.§-9§,0,0,_loc2_ * 4);
         this.§[!H§ = param1.createVertexBuffer(_loc2_ * 4,§'%§.§[J§);
         this.§[!H§.uploadFromVector(this.§"!,§.§#g§,0,_loc2_ * 4);
         this.§6#§ = param1.createVertexBuffer(_loc2_ * 4,§'%§.§1#§);
         this.§6#§.uploadFromVector(this.§"!,§.§""§,0,_loc2_ * 4);
         this.§!!M§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!!M§.uploadFromVector(this.§<&§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§3+§ != 0)
         {
            this.§'" § = param1;
         }
      }
      
      public function stop() : void
      {
         this.§'" § = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §2b§(param1);
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
      
      public function §<4§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§]]§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§!"$§ = param1;
      }
      
      private function §]]§(param1:Matrix3D) : void
      {
         var _loc4_:§5c§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§5c§ = null;
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
         if(isNaN(this.§!"$§) || this.§!"$§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§!"$§;
         this.§!"$§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§'!,§)
         {
            if((_loc4_ = this.§'Z§[_loc3_]).§5!F§ < _loc4_.§[E§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§'!,§ - 1)
               {
                  _loc11_ = this.§'Z§[this.§'!,§ - 1];
                  this.§'Z§[this.§'!,§ - 1] = _loc4_;
                  this.§'Z§[_loc3_] = _loc11_;
               }
               --this.§'!,§;
            }
         }
         if(this.§'" § > 0)
         {
            _loc12_ = 1 / this.§3+§;
            this.§%s§ += _loc2_;
            while(this.§%s§ > 0)
            {
               if(this.§'!,§ == this.§?g§)
               {
                  this.§,Q§(this.§?g§);
               }
               _loc4_ = this.§'Z§[this.§'!,§++] as §5c§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§%s§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§3!&§))
               {
                  _loc13_ = _loc12_ * (1 - this.§3!&§ + Math.random() * this.§3!&§ * 2) + this.§[!3§;
               }
               this.§[!3§ += _loc12_ - _loc13_;
               this.§%s§ -= _loc13_;
            }
            if(this.§'" § != Number.MAX_VALUE)
            {
               this.§'" § = Math.max(0,this.§'" § - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§@"+§.width;
         var _loc9_:Number = this.§@"+§.height;
         this.§&b§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§<7§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§'!,§)
            {
               _loc6_ = (_loc4_ = this.§'Z§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§ #§[_loc14_ * 3];
               _loc17_ = this.§ #§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§0"<§.§<?§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §0"<§.§<?§.§=?§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§&b§;
                  this.§"!,§.§][§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§"!,§.§<""§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§"!,§.§<""§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§"!,§.§<""§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§"!,§.§<""§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§"!,§.§<""§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§"!,§.§<""§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§"!,§.§<""§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§"!,§.§<""§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §<7§(param1:Matrix3D) : void
      {
         var _loc3_:§5c§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!,§)
         {
            _loc3_ = this.§'Z§[_loc2_];
            this.§4"2§[_loc2_ * 3] = _loc3_.x;
            this.§4"2§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§4"2§,this.§ #§);
      }
      
      override public function render(param1:§'5§, param2:Number) : void
      {
         this.§]]§(param1.§%o§);
         if(this.§&b§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §;D§.§#`§(param2 != 1,this.§@"+§.mipMapping,false,this.§8E§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§5!^§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§6!c§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§2G§ != this.§2R§)
         {
            this.§,Q§(0);
            this.§2R§ = param1.§2G§;
         }
         if(!this.§!Z§(_loc4_))
         {
            this.§[!H§.uploadFromVector(this.§"!,§.§#g§,0,this.§&b§ * 4);
            this.§6#§.uploadFromVector(this.§"!,§.§""§,0,this.§&b§ * 4);
         }
         _loc4_.setBlendFactors(this.§&!'§,this.§+!h§);
         _loc4_.setProgram(§0"<§.§<?§.§%" §(_loc3_));
         _loc4_.setTextureAt(0,this.§@"+§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§6#§,§'%§.§8!L§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§@L§,§'%§.§]f§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§[!H§,§'%§.§5"§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§%o§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!!M§,0,this.§&b§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §>H§() : Boolean
      {
         return false;
      }
      
      public function get §?g§() : int
      {
         return this.§"!,§.§'!i§ / 4;
      }
      
      public function get §[M§() : int
      {
         return this.§'!,§;
      }
      
      public function get §implements§() : Number
      {
         return this.§3+§;
      }
      
      public function set §implements§(param1:Number) : void
      {
         this.§3+§ = param1;
      }
      
      public function get §#e§() : Number
      {
         return this.§%I§;
      }
      
      public function set §#e§(param1:Number) : void
      {
         this.§%I§ = param1;
      }
      
      public function get §&!^§() : Number
      {
         return this.§4![§;
      }
      
      public function set §&!^§(param1:Number) : void
      {
         this.§4![§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§@"+§;
      }
   }
}
