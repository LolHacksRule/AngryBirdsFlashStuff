package §@"3§
{
   import §,a§.§&!h§;
   import §-!f§.DisplayObject;
   import §6!4§.§2!P§;
   import §6!4§.§8P§;
   import §6!4§.§<!D§;
   import §7"+§.Texture;
   import §<C§.§=>§;
   import §>!]§.§6!B§;
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
   
   public class §8W§ extends DisplayObject implements §6!B§
   {
       
      
      private var §4r§:Texture;
      
      private var §+!q§:Vector.<§[!d§>;
      
      private var §6w§:Number;
      
      private var §,"#§:Vector.<Number>;
      
      private var §`!t§:Vector.<Number>;
      
      private var §3=§:§=>§;
      
      private var §1_§:VertexBuffer3D;
      
      private var §7+§:VertexBuffer3D;
      
      private var §2!]§:VertexBuffer3D;
      
      private var §6P§:Vector.<uint>;
      
      private var §;§:IndexBuffer3D;
      
      private var §+!<§:int;
      
      private var §<3§:int;
      
      private var §3"&§:Number;
      
      protected var §>>§:Number;
      
      private var §-!N§:Number = 0.0;
      
      private var §%i§:Number;
      
      protected var §>"!§:Number;
      
      protected var §-$§:Number;
      
      protected var §'!7§:Boolean;
      
      protected var §-!H§:String;
      
      protected var §3!u§:String;
      
      protected var §?Y§:String;
      
      private var §<!I§:int = -1;
      
      private var §0s§:Boolean = false;
      
      private var §;e§:Number = 0.0;
      
      public function §8W§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§4r§ = param1;
         this.§'!7§ = param1.premultipliedAlpha;
         this.§+!q§ = new Vector.<§[!d§>(0,false);
         this.§,"#§ = new Vector.<Number>();
         this.§`!t§ = new Vector.<Number>();
         this.§3=§ = new §=>§(0,this.§'!7§);
         this.§6P§ = new Vector.<uint>(0);
         this.§3"&§ = param2;
         this.§%i§ = 0;
         this.§6w§ = 0;
         this.§-$§ = 0;
         this.§>"!§ = 0;
         this.§3!u§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-!H§ = param4 || (!!this.§'!7§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§-"1§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§1_§)
         {
            this.§1_§.dispose();
         }
         if(this.§7+§)
         {
            this.§7+§.dispose();
         }
         if(this.§2!]§)
         {
            this.§2!]§.dispose();
         }
         if(this.§;§)
         {
            this.§;§.dispose();
         }
         this.§,"#§ = null;
         this.§`!t§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §[!d§
      {
         return new §[!d§();
      }
      
      protected function initParticle(param1:§[!d§) : void
      {
         param1.x = this.§>"!§;
         param1.y = this.§-$§;
         param1.§%t§ = 0;
         param1.§9e§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§[!d§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§%t§ / param1.§9e§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§%t§ += param2;
      }
      
      private function §-"1§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§'!A§;
         var _loc3_:int = this.§'!A§ + param1;
         var _loc4_:§=>§;
         (_loc4_ = new §=>§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§4r§.adjustVertexData(_loc4_,0,4);
         this.§+!q§.fixed = false;
         this.§6P§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§+!q§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§,"#§.push(0);
               this.§`!t§.push(0);
               _loc7_++;
            }
            this.§3=§.append(_loc4_);
            this.§6P§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§+!q§.fixed = true;
         this.§6P§.fixed = true;
         this.§0s§ = true;
      }
      
      private function §=§(param1:Context3D) : Boolean
      {
         if(!this.§0s§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&!h§();
         }
         var _loc2_:int = this.§3=§.§5!M§ / 4;
         if(this.§1_§)
         {
            this.§1_§.dispose();
         }
         if(this.§7+§)
         {
            this.§7+§.dispose();
         }
         if(this.§2!]§)
         {
            this.§2!]§.dispose();
         }
         if(this.§;§)
         {
            this.§;§.dispose();
         }
         this.§1_§ = param1.createVertexBuffer(_loc2_ * 4,§=>§.§@!S§);
         this.§1_§.uploadFromByteArray(this.§3=§.§^!N§,0,0,_loc2_ * 4);
         this.§7+§ = param1.createVertexBuffer(_loc2_ * 4,§=>§.§<"+§);
         this.§7+§.uploadFromVector(this.§3=§.§,!I§,0,_loc2_ * 4);
         this.§2!]§ = param1.createVertexBuffer(_loc2_ * 4,§=>§.§]!"§);
         this.§2!]§.uploadFromVector(this.§3=§.§="1§,0,_loc2_ * 4);
         this.§;§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§;§.uploadFromVector(this.§6P§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§3"&§ != 0)
         {
            this.§%i§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§%i§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §"!$§(param1);
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
      
      public function §8_§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§,A§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§;e§ = param1;
      }
      
      private function §,A§(param1:Matrix3D) : void
      {
         var _loc4_:§[!d§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§[!d§ = null;
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
         if(isNaN(this.§;e§) || this.§;e§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§;e§;
         this.§;e§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+!<§)
         {
            if((_loc4_ = this.§+!q§[_loc3_]).§%t§ < _loc4_.§9e§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§+!<§ - 1)
               {
                  _loc11_ = this.§+!q§[this.§+!<§ - 1];
                  this.§+!q§[this.§+!<§ - 1] = _loc4_;
                  this.§+!q§[_loc3_] = _loc11_;
               }
               --this.§+!<§;
            }
         }
         if(this.§%i§ > 0)
         {
            _loc12_ = 1 / this.§3"&§;
            this.§6w§ += _loc2_;
            while(this.§6w§ > 0)
            {
               if(this.§+!<§ == this.§'!A§)
               {
                  this.§-"1§(this.§'!A§);
               }
               _loc4_ = this.§+!q§[this.§+!<§++] as §[!d§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§6w§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§>>§))
               {
                  _loc13_ = _loc12_ * (1 - this.§>>§ + Math.random() * this.§>>§ * 2) + this.§-!N§;
               }
               this.§-!N§ += _loc12_ - _loc13_;
               this.§6w§ -= _loc13_;
            }
            if(this.§%i§ != Number.MAX_VALUE)
            {
               this.§%i§ = Math.max(0,this.§%i§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§4r§.width;
         var _loc9_:Number = this.§4r§.height;
         this.§<3§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§,"-§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§+!<§)
            {
               _loc6_ = (_loc4_ = this.§+!q§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§`!t§[_loc14_ * 3];
               _loc17_ = this.§`!t§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§<!D§.§?!_§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §<!D§.§?!_§.§?!m§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§<3§;
                  this.§3=§.§0D§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§3=§.§@2§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§3=§.§@2§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§3=§.§@2§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§3=§.§@2§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§3=§.§@2§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§3=§.§@2§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§3=§.§@2§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§3=§.§@2§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §,"-§(param1:Matrix3D) : void
      {
         var _loc3_:§[!d§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!<§)
         {
            _loc3_ = this.§+!q§[_loc2_];
            this.§,"#§[_loc2_ * 3] = _loc3_.x;
            this.§,"#§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§,"#§,this.§`!t§);
      }
      
      override public function render(param1:§8P§, param2:Number) : void
      {
         this.§,A§(param1.§&!o§);
         if(this.§<3§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §2!P§.§9!,§(param2 != 1,this.§4r§.mipMapping,false,this.§?Y§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§="%§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§'!7§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§7T§ != this.§<!I§)
         {
            this.§-"1§(0);
            this.§<!I§ = param1.§7T§;
         }
         if(!this.§=§(_loc4_))
         {
            this.§7+§.uploadFromVector(this.§3=§.§,!I§,0,this.§<3§ * 4);
            this.§2!]§.uploadFromVector(this.§3=§.§="1§,0,this.§<3§ * 4);
         }
         _loc4_.setBlendFactors(this.§-!H§,this.§3!u§);
         _loc4_.setProgram(§<!D§.§?!_§.§^"'§(_loc3_));
         _loc4_.setTextureAt(0,this.§4r§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§2!]§,§=>§.§1!"§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§1_§,§=>§.§[i§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§7+§,§=>§.§@!D§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&!o§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§;§,0,this.§<3§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §4!d§() : Boolean
      {
         return false;
      }
      
      public function get §'!A§() : int
      {
         return this.§3=§.§5!M§ / 4;
      }
      
      public function get §4!§() : int
      {
         return this.§+!<§;
      }
      
      public function get §1h§() : Number
      {
         return this.§3"&§;
      }
      
      public function set §1h§(param1:Number) : void
      {
         this.§3"&§ = param1;
      }
      
      public function get §5^§() : Number
      {
         return this.§>"!§;
      }
      
      public function set §5^§(param1:Number) : void
      {
         this.§>"!§ = param1;
      }
      
      public function get §&!I§() : Number
      {
         return this.§-$§;
      }
      
      public function set §&!I§(param1:Number) : void
      {
         this.§-$§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§4r§;
      }
   }
}
