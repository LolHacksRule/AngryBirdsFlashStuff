package §%!=§
{
   import §"$§.QuadBatch;
   import §"$§.RenderSupport;
   import §"$§.Starling;
   import §'_§.Texture;
   import §1!&§.DisplayObject;
   import §;v§.§!!8§;
   import §@%§.§-a§;
   import §@2§.VertexData;
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
   
   public class ParticleSystem extends DisplayObject implements §!!8§
   {
       
      
      private var §!!!§:Texture;
      
      private var §]!N§:Vector.<§ W§>;
      
      private var §4!#§:Number;
      
      private var §@!2§:Vector.<Number>;
      
      private var §"!D§:Vector.<Number>;
      
      private var §%?§:VertexData;
      
      private var §6!2§:VertexBuffer3D;
      
      private var §4!i§:VertexBuffer3D;
      
      private var §74§:VertexBuffer3D;
      
      private var §6!I§:Vector.<uint>;
      
      private var §`!K§:IndexBuffer3D;
      
      private var §='§:int;
      
      private var § b§:int;
      
      private var §=!3§:Number;
      
      protected var §>c§:Number;
      
      private var §^A§:Number = 0.0;
      
      private var §&!O§:Number;
      
      protected var §#J§:Number;
      
      protected var §>^§:Number;
      
      protected var §1J§:Boolean;
      
      protected var §44§:String;
      
      protected var §2!9§:String;
      
      protected var §9!Z§:String;
      
      private var §4!D§:int = -1;
      
      private var §<+§:Boolean = false;
      
      private var §<!$§:Number = 0.0;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!!!§ = param1;
         this.§1J§ = param1.premultipliedAlpha;
         this.§]!N§ = new Vector.<§ W§>(0,false);
         this.§@!2§ = new Vector.<Number>();
         this.§"!D§ = new Vector.<Number>();
         this.§%?§ = new VertexData(0,this.§1J§);
         this.§6!I§ = new Vector.<uint>(0);
         this.§=!3§ = param2;
         this.§&!O§ = 0;
         this.§4!#§ = 0;
         this.§>^§ = 0;
         this.§#J§ = 0;
         this.§2!9§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§44§ = param4 || (!!this.§1J§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§5!P§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§6!2§)
         {
            this.§6!2§.dispose();
         }
         if(this.§4!i§)
         {
            this.§4!i§.dispose();
         }
         if(this.§74§)
         {
            this.§74§.dispose();
         }
         if(this.§`!K§)
         {
            this.§`!K§.dispose();
         }
         this.§@!2§ = null;
         this.§"!D§ = null;
         super.dispose();
      }
      
      protected function createParticle() : § W§
      {
         return new § W§();
      }
      
      protected function initParticle(param1:§ W§) : void
      {
         param1.x = this.§#J§;
         param1.y = this.§>^§;
         param1.§#!@§ = 0;
         param1.§2L§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§ W§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§#!@§ / param1.§2L§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§#!@§ += param2;
      }
      
      private function §5!P§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§=`§;
         var _loc3_:int = this.§=`§ + param1;
         var _loc4_:VertexData = new VertexData(4);
         _loc4_.setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!!!§.adjustVertexData(_loc4_,0,4);
         this.§]!N§.fixed = false;
         this.§6!I§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§]!N§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§@!2§.push(0);
               this.§"!D§.push(0);
               _loc7_++;
            }
            this.§%?§.append(_loc4_);
            this.§6!I§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§]!N§.fixed = true;
         this.§6!I§.fixed = true;
         this.§<+§ = true;
      }
      
      private function §=![§(param1:Context3D) : Boolean
      {
         if(!this.§<+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-a§();
         }
         var _loc2_:int = this.§%?§.§]!;§ / 4;
         if(this.§6!2§)
         {
            this.§6!2§.dispose();
         }
         if(this.§4!i§)
         {
            this.§4!i§.dispose();
         }
         if(this.§74§)
         {
            this.§74§.dispose();
         }
         if(this.§`!K§)
         {
            this.§`!K§.dispose();
         }
         this.§6!2§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§'M§);
         this.§6!2§.uploadFromByteArray(this.§%?§.§%0§,0,0,_loc2_ * 4);
         this.§4!i§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§6`§);
         this.§4!i§.uploadFromVector(this.§%?§.§&+§,0,_loc2_ * 4);
         this.§74§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§?F§);
         this.§74§.uploadFromVector(this.§%?§.§7!a§,0,_loc2_ * 4);
         this.§`!K§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§`!K§.uploadFromVector(this.§6!I§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§=!3§ != 0)
         {
            this.§&!O§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§&!O§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §&!R§(param1);
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
      
      public function §%1§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§ !<§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§<!$§ = param1;
      }
      
      private function § !<§(param1:Matrix3D) : void
      {
         var _loc4_:§ W§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§ W§ = null;
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
         if(isNaN(this.§<!$§) || this.§<!$§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§<!$§;
         this.§<!$§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§='§)
         {
            _loc4_ = this.§]!N§[_loc3_];
            if(_loc4_.§#!@§ < _loc4_.§2L§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§='§ - 1)
               {
                  _loc11_ = this.§]!N§[this.§='§ - 1];
                  this.§]!N§[this.§='§ - 1] = _loc4_;
                  this.§]!N§[_loc3_] = _loc11_;
               }
               --this.§='§;
            }
         }
         if(this.§&!O§ > 0)
         {
            _loc12_ = 1 / this.§=!3§;
            this.§4!#§ += _loc2_;
            while(this.§4!#§ > 0)
            {
               if(this.§='§ == this.§=`§)
               {
                  this.§5!P§(this.§=`§);
               }
               _loc4_ = this.§]!N§[this.§='§++] as § W§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§4!#§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§>c§))
               {
                  _loc13_ = _loc12_ * (1 - this.§>c§ + Math.random() * this.§>c§ * 2) + this.§^A§;
               }
               this.§^A§ += _loc12_ - _loc13_;
               this.§4!#§ -= _loc13_;
            }
            if(this.§&!O§ != Number.MAX_VALUE)
            {
               this.§&!O§ = Math.max(0,this.§&!O§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!!!§.width;
         var _loc9_:Number = this.§!!!§.height;
         this.§ b§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§!^§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§='§)
            {
               _loc4_ = this.§]!N§[_loc14_];
               _loc6_ = _loc4_.x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§"!D§[_loc14_ * 3];
               _loc17_ = this.§"!D§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(Starling.§'!A§)
                  {
                     _loc20_ = Math.max(_loc18_,_loc19_);
                     _loc20_ /= Starling.§'!A§.§;l§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§ b§;
                  this.§%?§.§<-§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§%?§.§^!L§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§%?§.§^!L§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§%?§.§^!L§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§%?§.§^!L§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§%?§.§^!L§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§%?§.§^!L§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§%?§.§^!L§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§%?§.§^!L§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §!^§(param1:Matrix3D) : void
      {
         var _loc3_:§ W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§='§)
         {
            _loc3_ = this.§]!N§[_loc2_];
            this.§@!2§[_loc2_ * 3] = _loc3_.x;
            this.§@!2§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§@!2§,this.§"!D§);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         this.§ !<§(param1.§+!&§);
         if(this.§ b§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = QuadBatch.§8<§(param2 != 1,this.§!!!§.mipMapping,false,this.§9!Z§,true);
         var _loc4_:Context3D = param1.§6!&§;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§1J§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§@0§ != this.§4!D§)
         {
            this.§5!P§(0);
            this.§4!D§ = param1.§@0§;
         }
         if(!this.§=![§(_loc4_))
         {
            this.§4!i§.uploadFromVector(this.§%?§.§&+§,0,this.§ b§ * 4);
            this.§74§.uploadFromVector(this.§%?§.§7!a§,0,this.§ b§ * 4);
         }
         _loc4_.setBlendFactors(this.§44§,this.§2!9§);
         _loc4_.setProgram(Starling.§'!A§.§3t§(_loc3_));
         _loc4_.setTextureAt(0,this.§!!!§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§74§,VertexData.§`[§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§6!2§,VertexData.§[^§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§4!i§,VertexData.§]!C§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§+!&§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§`!K§,0,this.§ b§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §8&§() : Boolean
      {
         return false;
      }
      
      public function get §=`§() : int
      {
         return this.§%?§.§]!;§ / 4;
      }
      
      public function get §]u§() : int
      {
         return this.§='§;
      }
      
      public function get §>S§() : Number
      {
         return this.§=!3§;
      }
      
      public function set §>S§(param1:Number) : void
      {
         this.§=!3§ = param1;
      }
      
      public function get §!c§() : Number
      {
         return this.§#J§;
      }
      
      public function set §!c§(param1:Number) : void
      {
         this.§#J§ = param1;
      }
      
      public function get §8!a§() : Number
      {
         return this.§>^§;
      }
      
      public function set §8!a§(param1:Number) : void
      {
         this.§>^§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!!!§;
      }
   }
}
