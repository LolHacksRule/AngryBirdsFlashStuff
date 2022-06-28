package §9!N§
{
   import §!!K§.§?%§;
   import §!!K§.§`L§;
   import §!!K§.§else§;
   import §"H§.§!7§;
   import §4!S§.§<!f§;
   import §4>§.Texture;
   import §7!B§.DisplayObject;
   import §9!k§.§=A§;
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
   
   public class §@!K§ extends DisplayObject implements §!7§
   {
       
      
      private var §5!6§:Texture;
      
      private var §]=§:Vector.<§4!h§>;
      
      private var §7!§:Number;
      
      private var §#^§:Vector.<Number>;
      
      private var §<U§:Vector.<Number>;
      
      private var § !3§:§=A§;
      
      private var §5!g§:VertexBuffer3D;
      
      private var §2!N§:VertexBuffer3D;
      
      private var §[P§:VertexBuffer3D;
      
      private var §,!J§:Vector.<uint>;
      
      private var §6T§:IndexBuffer3D;
      
      private var §,j§:int;
      
      private var §7!!§:int;
      
      private var § P§:Number;
      
      protected var §@b§:Number;
      
      private var §"!H§:Number = 0.0;
      
      private var §&!F§:Number;
      
      protected var §%Z§:Number;
      
      protected var §8!c§:Number;
      
      protected var §3!Z§:Boolean;
      
      protected var §%r§:String;
      
      protected var §6!h§:String;
      
      protected var §=!W§:String;
      
      private var § !h§:int = -1;
      
      private var §'i§:Boolean = false;
      
      private var §>!&§:Number = 0.0;
      
      public function §@!K§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§5!6§ = param1;
         this.§3!Z§ = param1.premultipliedAlpha;
         this.§]=§ = new Vector.<§4!h§>(0,false);
         this.§#^§ = new Vector.<Number>();
         this.§<U§ = new Vector.<Number>();
         this.§ !3§ = new §=A§(0,this.§3!Z§);
         this.§,!J§ = new Vector.<uint>(0);
         this.§ P§ = param2;
         this.§&!F§ = 0;
         this.§7!§ = 0;
         this.§8!c§ = 0;
         this.§%Z§ = 0;
         this.§6!h§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§%r§ = param4 || (!!this.§3!Z§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§+!A§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§5!g§)
         {
            this.§5!g§.dispose();
         }
         if(this.§2!N§)
         {
            this.§2!N§.dispose();
         }
         if(this.§[P§)
         {
            this.§[P§.dispose();
         }
         if(this.§6T§)
         {
            this.§6T§.dispose();
         }
         this.§#^§ = null;
         this.§<U§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §4!h§
      {
         return new §4!h§();
      }
      
      protected function initParticle(param1:§4!h§) : void
      {
         param1.x = this.§%Z§;
         param1.y = this.§8!c§;
         param1.§45§ = 0;
         param1.§3!&§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§4!h§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§45§ / param1.§3!&§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§45§ += param2;
      }
      
      private function §+!A§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§!0§;
         var _loc3_:int = this.§!0§ + param1;
         var _loc4_:§=A§;
         (_loc4_ = new §=A§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§5!6§.adjustVertexData(_loc4_,0,4);
         this.§]=§.fixed = false;
         this.§,!J§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§]=§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§#^§.push(0);
               this.§<U§.push(0);
               _loc7_++;
            }
            this.§ !3§.append(_loc4_);
            this.§,!J§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§]=§.fixed = true;
         this.§,!J§.fixed = true;
         this.§'i§ = true;
      }
      
      private function §+v§(param1:Context3D) : Boolean
      {
         if(!this.§'i§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!f§();
         }
         var _loc2_:int = this.§ !3§.§7?§ / 4;
         if(this.§5!g§)
         {
            this.§5!g§.dispose();
         }
         if(this.§2!N§)
         {
            this.§2!N§.dispose();
         }
         if(this.§[P§)
         {
            this.§[P§.dispose();
         }
         if(this.§6T§)
         {
            this.§6T§.dispose();
         }
         this.§5!g§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§'%§);
         this.§5!g§.uploadFromByteArray(this.§ !3§.§>L§,0,0,_loc2_ * 4);
         this.§2!N§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§1X§);
         this.§2!N§.uploadFromVector(this.§ !3§.§8q§,0,_loc2_ * 4);
         this.§[P§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§8=§);
         this.§[P§.uploadFromVector(this.§ !3§.§3!+§,0,_loc2_ * 4);
         this.§6T§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§6T§.uploadFromVector(this.§,!J§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§ P§ != 0)
         {
            this.§&!F§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§&!F§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §6!8§(param1);
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
      
      public function §+! §(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§ !-§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§>!&§ = param1;
      }
      
      private function § !-§(param1:Matrix3D) : void
      {
         var _loc4_:§4!h§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§4!h§ = null;
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
         if(isNaN(this.§>!&§) || this.§>!&§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§>!&§;
         this.§>!&§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§,j§)
         {
            if((_loc4_ = this.§]=§[_loc3_]).§45§ < _loc4_.§3!&§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§,j§ - 1)
               {
                  _loc11_ = this.§]=§[this.§,j§ - 1];
                  this.§]=§[this.§,j§ - 1] = _loc4_;
                  this.§]=§[_loc3_] = _loc11_;
               }
               --this.§,j§;
            }
         }
         if(this.§&!F§ > 0)
         {
            _loc12_ = 1 / this.§ P§;
            this.§7!§ += _loc2_;
            while(this.§7!§ > 0)
            {
               if(this.§,j§ == this.§!0§)
               {
                  this.§+!A§(this.§!0§);
               }
               _loc4_ = this.§]=§[this.§,j§++] as §4!h§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§7!§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§@b§))
               {
                  _loc13_ = _loc12_ * (1 - this.§@b§ + Math.random() * this.§@b§ * 2) + this.§"!H§;
               }
               this.§"!H§ += _loc12_ - _loc13_;
               this.§7!§ -= _loc13_;
            }
            if(this.§&!F§ != Number.MAX_VALUE)
            {
               this.§&!F§ = Math.max(0,this.§&!F§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§5!6§.width;
         var _loc9_:Number = this.§5!6§.height;
         this.§7!!§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§=!?§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§,j§)
            {
               _loc6_ = (_loc4_ = this.§]=§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§<U§[_loc14_ * 3];
               _loc17_ = this.§<U§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§else§.§^!A§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §else§.§^!A§.§4A§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§7!!§;
                  this.§ !3§.§78§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§ !3§.§[!J§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§ !3§.§[!J§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§ !3§.§[!J§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§ !3§.§[!J§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§ !3§.§[!J§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§ !3§.§[!J§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§ !3§.§[!J§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§ !3§.§[!J§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §=!?§(param1:Matrix3D) : void
      {
         var _loc3_:§4!h§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,j§)
         {
            _loc3_ = this.§]=§[_loc2_];
            this.§#^§[_loc2_ * 3] = _loc3_.x;
            this.§#^§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§#^§,this.§<U§);
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         this.§ !-§(param1.§7!n§);
         if(this.§7!!§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §`L§.§;<§(param2 != 1,this.§5!6§.mipMapping,false,this.§=!W§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§5Y§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§3!Z§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§;!p§ != this.§ !h§)
         {
            this.§+!A§(0);
            this.§ !h§ = param1.§;!p§;
         }
         if(!this.§+v§(_loc4_))
         {
            this.§2!N§.uploadFromVector(this.§ !3§.§8q§,0,this.§7!!§ * 4);
            this.§[P§.uploadFromVector(this.§ !3§.§3!+§,0,this.§7!!§ * 4);
         }
         _loc4_.setBlendFactors(this.§%r§,this.§6!h§);
         _loc4_.setProgram(§else§.§^!A§.§6"§(_loc3_));
         _loc4_.setTextureAt(0,this.§5!6§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§[P§,§=A§.§%F§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§5!g§,§=A§.§<!?§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§2!N§,§=A§.§!"§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7!n§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§6T§,0,this.§7!!§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §+d§() : Boolean
      {
         return false;
      }
      
      public function get §!0§() : int
      {
         return this.§ !3§.§7?§ / 4;
      }
      
      public function get §2!0§() : int
      {
         return this.§,j§;
      }
      
      public function get §`E§() : Number
      {
         return this.§ P§;
      }
      
      public function set §`E§(param1:Number) : void
      {
         this.§ P§ = param1;
      }
      
      public function get §1!%§() : Number
      {
         return this.§%Z§;
      }
      
      public function set §1!%§(param1:Number) : void
      {
         this.§%Z§ = param1;
      }
      
      public function get §]v§() : Number
      {
         return this.§8!c§;
      }
      
      public function set §]v§(param1:Number) : void
      {
         this.§8!c§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§5!6§;
      }
   }
}
