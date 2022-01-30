package §@N§
{
   import § !=§.DisplayObject;
   import § !a§.Texture;
   import §1"#§.§>"3§;
   import §=D§.§3a§;
   import §^$§.§17§;
   import §`V§.§;6§;
   import §`V§.§[T§;
   import §`V§.§^M§;
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
   
   public class §?!V§ extends DisplayObject implements §>"3§
   {
       
      
      private var §-e§:Texture;
      
      private var §1!r§:Vector.<§<d§>;
      
      private var §5!'§:Number;
      
      private var §const§:Vector.<Number>;
      
      private var §2"§:Vector.<Number>;
      
      private var §[h§:§3a§;
      
      private var §?@§:VertexBuffer3D;
      
      private var §null§:VertexBuffer3D;
      
      private var § true§:VertexBuffer3D;
      
      private var §`!m§:Vector.<uint>;
      
      private var §3!5§:IndexBuffer3D;
      
      private var §!Z§:int;
      
      private var §null §:int;
      
      private var §%T§:Number;
      
      protected var §1!V§:Number;
      
      private var §@h§:Number = 0.0;
      
      private var §>1§:Number;
      
      protected var §+!#§:Number;
      
      protected var §'"!§:Number;
      
      protected var §if §:Boolean;
      
      protected var §#f§:String;
      
      protected var §+!]§:String;
      
      protected var §9W§:String;
      
      private var §<k§:int = -1;
      
      private var §#!x§:Boolean = false;
      
      private var §@w§:Number = 0.0;
      
      public function §?!V§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§-e§ = param1;
         this.§if § = param1.premultipliedAlpha;
         this.§1!r§ = new Vector.<§<d§>(0,false);
         this.§const§ = new Vector.<Number>();
         this.§2"§ = new Vector.<Number>();
         this.§[h§ = new §3a§(0,this.§if §);
         this.§`!m§ = new Vector.<uint>(0);
         this.§%T§ = param2;
         this.§>1§ = 0;
         this.§5!'§ = 0;
         this.§'"!§ = 0;
         this.§+!#§ = 0;
         this.§+!]§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§#f§ = param4 || (!!this.§if § ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§]§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?@§)
         {
            this.§?@§.dispose();
         }
         if(this.§null§)
         {
            this.§null§.dispose();
         }
         if(this.§ true§)
         {
            this.§ true§.dispose();
         }
         if(this.§3!5§)
         {
            this.§3!5§.dispose();
         }
         this.§const§ = null;
         this.§2"§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §<d§
      {
         return new §<d§();
      }
      
      protected function initParticle(param1:§<d§) : void
      {
         param1.x = this.§+!#§;
         param1.y = this.§'"!§;
         param1.§'S§ = 0;
         param1.§=0§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§<d§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§'S§ / param1.§=0§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§'S§ += param2;
      }
      
      private function §]§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6+§;
         var _loc3_:int = this.§6+§ + param1;
         var _loc4_:§3a§;
         (_loc4_ = new §3a§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§-e§.adjustVertexData(_loc4_,0,4);
         this.§1!r§.fixed = false;
         this.§`!m§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§1!r§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§const§.push(0);
               this.§2"§.push(0);
               _loc7_++;
            }
            this.§[h§.append(_loc4_);
            this.§`!m§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§1!r§.fixed = true;
         this.§`!m§.fixed = true;
         this.§#!x§ = true;
      }
      
      private function §3!U§(param1:Context3D) : Boolean
      {
         if(!this.§#!x§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §17§();
         }
         var _loc2_:int = this.§[h§.§ !#§ / 4;
         if(this.§?@§)
         {
            this.§?@§.dispose();
         }
         if(this.§null§)
         {
            this.§null§.dispose();
         }
         if(this.§ true§)
         {
            this.§ true§.dispose();
         }
         if(this.§3!5§)
         {
            this.§3!5§.dispose();
         }
         this.§?@§ = param1.createVertexBuffer(_loc2_ * 4,§3a§.§7K§);
         this.§?@§.uploadFromByteArray(this.§[h§.§4!9§,0,0,_loc2_ * 4);
         this.§null§ = param1.createVertexBuffer(_loc2_ * 4,§3a§.§3!T§);
         this.§null§.uploadFromVector(this.§[h§.§%!@§,0,_loc2_ * 4);
         this.§ true§ = param1.createVertexBuffer(_loc2_ * 4,§3a§.§8K§);
         this.§ true§.uploadFromVector(this.§[h§.§#u§,0,_loc2_ * 4);
         this.§3!5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§3!5§.uploadFromVector(this.§`!m§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§%T§ != 0)
         {
            this.§>1§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§>1§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §@!-§(param1);
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
      
      public function §;!!§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§,N§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§@w§ = param1;
      }
      
      private function §,N§(param1:Matrix3D) : void
      {
         var _loc4_:§<d§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§<d§ = null;
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
         if(isNaN(this.§@w§) || this.§@w§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§@w§;
         this.§@w§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§!Z§)
         {
            if((_loc4_ = this.§1!r§[_loc3_]).§'S§ < _loc4_.§=0§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§!Z§ - 1)
               {
                  _loc11_ = this.§1!r§[this.§!Z§ - 1];
                  this.§1!r§[this.§!Z§ - 1] = _loc4_;
                  this.§1!r§[_loc3_] = _loc11_;
               }
               --this.§!Z§;
            }
         }
         if(this.§>1§ > 0)
         {
            _loc12_ = 1 / this.§%T§;
            this.§5!'§ += _loc2_;
            while(this.§5!'§ > 0)
            {
               if(this.§!Z§ == this.§6+§)
               {
                  this.§]§(this.§6+§);
               }
               _loc4_ = this.§1!r§[this.§!Z§++] as §<d§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5!'§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§1!V§))
               {
                  _loc13_ = _loc12_ * (1 - this.§1!V§ + Math.random() * this.§1!V§ * 2) + this.§@h§;
               }
               this.§@h§ += _loc12_ - _loc13_;
               this.§5!'§ -= _loc13_;
            }
            if(this.§>1§ != Number.MAX_VALUE)
            {
               this.§>1§ = Math.max(0,this.§>1§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§-e§.width;
         var _loc9_:Number = this.§-e§.height;
         this.§null § = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§]!'§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§!Z§)
            {
               _loc6_ = (_loc4_ = this.§1!r§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§2"§[_loc14_ * 3];
               _loc17_ = this.§2"§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§;6§.§@X§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §;6§.§@X§.§3!-§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§null §;
                  this.§[h§.§9s§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§[h§.§ `§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§[h§.§ `§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§[h§.§ `§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§[h§.§ `§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§[h§.§ `§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§[h§.§ `§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§[h§.§ `§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§[h§.§ `§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §]!'§(param1:Matrix3D) : void
      {
         var _loc3_:§<d§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!Z§)
         {
            _loc3_ = this.§1!r§[_loc2_];
            this.§const§[_loc2_ * 3] = _loc3_.x;
            this.§const§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§const§,this.§2"§);
      }
      
      override public function render(param1:§^M§, param2:Number) : void
      {
         this.§,N§(param1.§ !N§);
         if(this.§null § == 0)
         {
            return;
         }
         param1.§8R§();
         param2 *= this.alpha;
         var _loc3_:String = §[T§.§=!G§(param2 != 1,this.§-e§.mipMapping,false,this.§9W§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§8!N§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§if § ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§4!^§ != this.§<k§)
         {
            this.§]§(0);
            this.§<k§ = param1.§4!^§;
         }
         if(!this.§3!U§(_loc4_))
         {
            this.§null§.uploadFromVector(this.§[h§.§%!@§,0,this.§null § * 4);
            this.§ true§.uploadFromVector(this.§[h§.§#u§,0,this.§null § * 4);
         }
         _loc4_.setBlendFactors(this.§#f§,this.§+!]§);
         _loc4_.setProgram(§;6§.§@X§.§^!<§(_loc3_));
         _loc4_.setTextureAt(0,this.§-e§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§ true§,§3a§.§4!e§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§?@§,§3a§.§5!-§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§null§,§3a§.§7!D§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§ !N§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§3!5§,0,this.§null § * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get § !i§() : Boolean
      {
         return false;
      }
      
      public function get §6+§() : int
      {
         return this.§[h§.§ !#§ / 4;
      }
      
      public function get §;`§() : int
      {
         return this.§!Z§;
      }
      
      public function get §<! §() : Number
      {
         return this.§%T§;
      }
      
      public function set §<! §(param1:Number) : void
      {
         this.§%T§ = param1;
      }
      
      public function get §@!M§() : Number
      {
         return this.§+!#§;
      }
      
      public function set §@!M§(param1:Number) : void
      {
         this.§+!#§ = param1;
      }
      
      public function get §>!c§() : Number
      {
         return this.§'"!§;
      }
      
      public function set §>!c§(param1:Number) : void
      {
         this.§'"!§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§-e§;
      }
   }
}
