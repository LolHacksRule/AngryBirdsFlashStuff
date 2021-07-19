package §,!#§
{
   import §!!U§.DisplayObject;
   import §&#H§.§%"H§;
   import §&#H§.§%"Y§;
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §;8§.§'#]§;
   import §<!>§.§ §;
   import §=]§.§%"G§;
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
   
   public class §^"n§ extends DisplayObject implements § §
   {
       
      
      private var §^"R§:Texture;
      
      private var §`#[§:Vector.<§`E§>;
      
      private var §!n§:Number;
      
      private var §^!T§:Vector.<Number>;
      
      private var §7!e§:Vector.<Number>;
      
      private var §;q§:§%"G§;
      
      private var §^d§:VertexBuffer3D;
      
      private var §%![§:VertexBuffer3D;
      
      private var §7!E§:VertexBuffer3D;
      
      private var §^",§:Vector.<uint>;
      
      private var §<#8§:IndexBuffer3D;
      
      private var §7!;§:int;
      
      private var §[!#§:int;
      
      private var §%`§:Number;
      
      protected var §'"H§:Number;
      
      private var §@#%§:Number = 0.0;
      
      private var §-"h§:Number;
      
      protected var §5#`§:Number;
      
      protected var §2!?§:Number;
      
      protected var §3"$§:Boolean;
      
      protected var §=#§:String;
      
      protected var §8G§:String;
      
      protected var §"#O§:String;
      
      private var §1!1§:int = -1;
      
      private var §>"C§:Boolean = false;
      
      private var §>!'§:Number = 0.0;
      
      public function §^"n§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§^"R§ = param1;
         this.§3"$§ = param1.premultipliedAlpha;
         this.§`#[§ = new Vector.<§`E§>(0,false);
         this.§^!T§ = new Vector.<Number>();
         this.§7!e§ = new Vector.<Number>();
         this.§;q§ = new §%"G§(0,this.§3"$§);
         this.§^",§ = new Vector.<uint>(0);
         this.§%`§ = param2;
         this.§-"h§ = 0;
         this.§!n§ = 0;
         this.§2!?§ = 0;
         this.§5#`§ = 0;
         this.§8G§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§=#§ = param4 || (!!this.§3"$§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§@2§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§^d§)
         {
            this.§^d§.dispose();
         }
         if(this.§%![§)
         {
            this.§%![§.dispose();
         }
         if(this.§7!E§)
         {
            this.§7!E§.dispose();
         }
         if(this.§<#8§)
         {
            this.§<#8§.dispose();
         }
         this.§^!T§ = null;
         this.§7!e§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §`E§
      {
         return new §`E§();
      }
      
      protected function initParticle(param1:§`E§) : void
      {
         param1.x = this.§5#`§;
         param1.y = this.§2!?§;
         param1.currentTime = 0;
         param1.§,!@§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§`E§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§,!@§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §@2§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§2Y§;
         var _loc3_:int = this.§2Y§ + param1;
         var _loc4_:§%"G§;
         (_loc4_ = new §%"G§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§^"R§.adjustVertexData(_loc4_,0,4);
         this.§`#[§.fixed = false;
         this.§^",§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§`#[§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§^!T§.push(0);
               this.§7!e§.push(0);
               _loc7_++;
            }
            this.§;q§.append(_loc4_);
            this.§^",§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§`#[§.fixed = true;
         this.§^",§.fixed = true;
         this.§>"C§ = true;
      }
      
      private function §8!-§(param1:Context3D) : Boolean
      {
         if(!this.§>"C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'#]§();
         }
         var _loc2_:int = this.§;q§.§5#%§ / 4;
         if(this.§^d§)
         {
            this.§^d§.dispose();
         }
         if(this.§%![§)
         {
            this.§%![§.dispose();
         }
         if(this.§7!E§)
         {
            this.§7!E§.dispose();
         }
         if(this.§<#8§)
         {
            this.§<#8§.dispose();
         }
         this.§^d§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§<"<§);
         this.§^d§.uploadFromByteArray(this.§;q§.§ ";§,0,0,_loc2_ * 4);
         this.§%![§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§4v§);
         this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,_loc2_ * 4);
         this.§7!E§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§'!Q§);
         this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,_loc2_ * 4);
         this.§<#8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§<#8§.uploadFromVector(this.§^",§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§%`§ != 0)
         {
            this.§-"h§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-"h§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §^">§(param1);
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
      
      public function §9"x§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§]#I§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§>!'§ = param1;
      }
      
      private function §]#I§(param1:Matrix3D) : void
      {
         var _loc4_:§`E§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§`E§ = null;
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
         if(isNaN(this.§>!'§) || this.§>!'§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§>!'§;
         this.§>!'§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§7!;§)
         {
            if((_loc4_ = this.§`#[§[_loc3_]).currentTime < _loc4_.§,!@§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§7!;§ - 1)
               {
                  _loc11_ = this.§`#[§[this.§7!;§ - 1];
                  this.§`#[§[this.§7!;§ - 1] = _loc4_;
                  this.§`#[§[_loc3_] = _loc11_;
               }
               --this.§7!;§;
            }
         }
         if(this.§-"h§ > 0)
         {
            _loc12_ = 1 / this.§%`§;
            this.§!n§ += _loc2_;
            while(this.§!n§ > 0)
            {
               if(this.§7!;§ == this.§2Y§)
               {
                  this.§@2§(this.§2Y§);
               }
               _loc4_ = this.§`#[§[this.§7!;§++] as §`E§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§!n§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§'"H§))
               {
                  _loc13_ = _loc12_ * (1 - this.§'"H§ + Math.random() * this.§'"H§ * 2) + this.§@#%§;
               }
               this.§@#%§ += _loc12_ - _loc13_;
               this.§!n§ -= _loc13_;
            }
            if(this.§-"h§ != Number.MAX_VALUE)
            {
               this.§-"h§ = Math.max(0,this.§-"h§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§^"R§.width;
         var _loc9_:Number = this.§^"R§.height;
         this.§[!#§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§,!6§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§7!;§)
            {
               _loc6_ = (_loc4_ = this.§`#[§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§7!e§[_loc14_ * 3];
               _loc17_ = this.§7!e§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§3#J§.§2!C§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §3#J§.§2!C§.§ !s§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§[!#§;
                  this.§;q§.§%S§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§;q§.override(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§;q§.override(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§;q§.override(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§;q§.override(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§;q§.override(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§;q§.override(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§;q§.override(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§;q§.override(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §,!6§(param1:Matrix3D) : void
      {
         var _loc3_:§`E§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!;§)
         {
            _loc3_ = this.§`#[§[_loc2_];
            this.§^!T§[_loc2_ * 3] = _loc3_.x;
            this.§^!T§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§^!T§,this.§7!e§);
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         this.§]#I§(param1.§&h§);
         if(this.§[!#§ == 0)
         {
            return;
         }
         param1.§+#X§();
         param2 *= this.alpha;
         var _loc3_:String = §%"Y§.§5#@§(param2 != 1,this.§^"R§.mipMapping,false,this.§"#O§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§<"t§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§3"$§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§^#2§ != this.§1!1§)
         {
            this.§@2§(0);
            this.§1!1§ = param1.§^#2§;
         }
         if(!this.§8!-§(_loc4_))
         {
            this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,this.§[!#§ * 4);
            this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,this.§[!#§ * 4);
         }
         _loc4_.setBlendFactors(this.§=#§,this.§8G§);
         _loc4_.setProgram(§3#J§.§2!C§.§^!_§(_loc3_));
         _loc4_.setTextureAt(0,this.§^"R§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§7!E§,§%"G§.§42§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§^d§,§%"G§.§&"o§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§%![§,§%"G§.§`"§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&h§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§<#8§,0,this.§[!#§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get isComplete() : Boolean
      {
         return false;
      }
      
      public function get §2Y§() : int
      {
         return this.§;q§.§5#%§ / 4;
      }
      
      public function get §5!T§() : int
      {
         return this.§7!;§;
      }
      
      public function get §#&§() : Number
      {
         return this.§%`§;
      }
      
      public function set §#&§(param1:Number) : void
      {
         this.§%`§ = param1;
      }
      
      public function get §'#M§() : Number
      {
         return this.§5#`§;
      }
      
      public function set §'#M§(param1:Number) : void
      {
         this.§5#`§ = param1;
      }
      
      public function get §&#4§() : Number
      {
         return this.§2!?§;
      }
      
      public function set §&#4§(param1:Number) : void
      {
         this.§2!?§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§^"R§;
      }
   }
}
