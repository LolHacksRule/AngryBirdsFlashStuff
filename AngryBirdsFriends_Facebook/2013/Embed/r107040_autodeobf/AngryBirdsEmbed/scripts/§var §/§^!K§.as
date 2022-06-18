package §var §
{
   import §#!@§.DisplayObject;
   import §0K§.§0h§;
   import §1#§.Texture;
   import §7!§.§ 0§;
   import §7!§.§,L§;
   import §7!§.§]j§;
   import §7^§.§7k§;
   import §@!E§.§ !#§;
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
   
   public class §^!K§ extends DisplayObject implements §0h§
   {
       
      
      private var §"<§:Texture;
      
      private var §8!M§:Vector.<§;G§>;
      
      private var §7!C§:Number;
      
      private var §&3§:Vector.<Number>;
      
      private var §6j§:Vector.<Number>;
      
      private var §@!,§:§ !#§;
      
      private var §?s§:VertexBuffer3D;
      
      private var §=!2§:VertexBuffer3D;
      
      private var §+l§:VertexBuffer3D;
      
      private var §'r§:Vector.<uint>;
      
      private var §"W§:IndexBuffer3D;
      
      private var §+Y§:int;
      
      private var §'[§:int;
      
      private var §"]§:Number;
      
      protected var §]a§:Number;
      
      private var §5x§:Number = 0.0;
      
      private var §4!B§:Number;
      
      protected var § for§:Number;
      
      protected var §>+§:Number;
      
      protected var §%!2§:Boolean;
      
      protected var §1J§:String;
      
      protected var §1[§:String;
      
      protected var §"!1§:String;
      
      private var §`!$§:int = -1;
      
      private var §8!+§:Boolean = false;
      
      private var §<u§:Number = 0.0;
      
      public function §^!K§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§"<§ = param1;
         this.§%!2§ = param1.premultipliedAlpha;
         this.§8!M§ = new Vector.<§;G§>(0,false);
         this.§&3§ = new Vector.<Number>();
         this.§6j§ = new Vector.<Number>();
         this.§@!,§ = new § !#§(0,this.§%!2§);
         this.§'r§ = new Vector.<uint>(0);
         this.§"]§ = param2;
         this.§4!B§ = 0;
         this.§7!C§ = 0;
         this.§>+§ = 0;
         this.§ for§ = 0;
         this.§1[§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§1J§ = param4 || (!!this.§%!2§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§-!-§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?s§)
         {
            this.§?s§.dispose();
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§+l§)
         {
            this.§+l§.dispose();
         }
         if(this.§"W§)
         {
            this.§"W§.dispose();
         }
         this.§&3§ = null;
         this.§6j§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §;G§
      {
         return new §;G§();
      }
      
      protected function initParticle(param1:§;G§) : void
      {
         param1.x = this.§ for§;
         param1.y = this.§>+§;
         param1.currentTime = 0;
         param1.§ do§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§;G§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§ do§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §-!-§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§;r§;
         var _loc3_:int = this.§;r§ + param1;
         var _loc4_:§ !#§;
         (_loc4_ = new § !#§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§"<§.adjustVertexData(_loc4_,0,4);
         this.§8!M§.fixed = false;
         this.§'r§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§8!M§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§&3§.push(0);
               this.§6j§.push(0);
               _loc7_++;
            }
            this.§@!,§.append(_loc4_);
            this.§'r§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§8!M§.fixed = true;
         this.§'r§.fixed = true;
         this.§8!+§ = true;
      }
      
      private function §"!C§(param1:Context3D) : Boolean
      {
         if(!this.§8!+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §7k§();
         }
         var _loc2_:int = this.§@!,§.§1r§ / 4;
         if(this.§?s§)
         {
            this.§?s§.dispose();
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§+l§)
         {
            this.§+l§.dispose();
         }
         if(this.§"W§)
         {
            this.§"W§.dispose();
         }
         this.§?s§ = param1.createVertexBuffer(_loc2_ * 4,§ !#§.§ !D§);
         this.§?s§.uploadFromByteArray(this.§@!,§.§;1§,0,0,_loc2_ * 4);
         this.§=!2§ = param1.createVertexBuffer(_loc2_ * 4,§ !#§.§ ^§);
         this.§=!2§.uploadFromVector(this.§@!,§.§@g§,0,_loc2_ * 4);
         this.§+l§ = param1.createVertexBuffer(_loc2_ * 4,§ !#§.§;'§);
         this.§+l§.uploadFromVector(this.§@!,§.§6!M§,0,_loc2_ * 4);
         this.§"W§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§"W§.uploadFromVector(this.§'r§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§"]§ != 0)
         {
            this.§4!B§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§4!B§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §^k§(param1);
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
      
      public function §`!4§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§8$§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§<u§ = param1;
      }
      
      private function §8$§(param1:Matrix3D) : void
      {
         var _loc4_:§;G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§;G§ = null;
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
         if(isNaN(this.§<u§) || this.§<u§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§<u§;
         this.§<u§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+Y§)
         {
            if((_loc4_ = this.§8!M§[_loc3_]).currentTime < _loc4_.§ do§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§+Y§ - 1)
               {
                  _loc11_ = this.§8!M§[this.§+Y§ - 1];
                  this.§8!M§[this.§+Y§ - 1] = _loc4_;
                  this.§8!M§[_loc3_] = _loc11_;
               }
               --this.§+Y§;
            }
         }
         if(this.§4!B§ > 0)
         {
            _loc12_ = 1 / this.§"]§;
            this.§7!C§ += _loc2_;
            while(this.§7!C§ > 0)
            {
               if(this.§+Y§ == this.§;r§)
               {
                  this.§-!-§(this.§;r§);
               }
               _loc4_ = this.§8!M§[this.§+Y§++] as §;G§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§7!C§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§]a§))
               {
                  _loc13_ = _loc12_ * (1 - this.§]a§ + Math.random() * this.§]a§ * 2) + this.§5x§;
               }
               this.§5x§ += _loc12_ - _loc13_;
               this.§7!C§ -= _loc13_;
            }
            if(this.§4!B§ != Number.MAX_VALUE)
            {
               this.§4!B§ = Math.max(0,this.§4!B§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§"<§.width;
         var _loc9_:Number = this.§"<§.height;
         this.§'[§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§[!6§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§+Y§)
            {
               _loc6_ = (_loc4_ = this.§8!M§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§6j§[_loc14_ * 3];
               _loc17_ = this.§6j§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§,L§.§3v§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §,L§.§3v§.§2&§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§'[§;
                  this.§@!,§.§4!H§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§@!,§.§2!1§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§@!,§.§2!1§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§@!,§.§2!1§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§@!,§.§2!1§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§@!,§.§2!1§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§@!,§.§2!1§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§@!,§.§2!1§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§@!,§.§2!1§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §[!6§(param1:Matrix3D) : void
      {
         var _loc3_:§;G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+Y§)
         {
            _loc3_ = this.§8!M§[_loc2_];
            this.§&3§[_loc2_ * 3] = _loc3_.x;
            this.§&3§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§&3§,this.§6j§);
      }
      
      override public function render(param1:§ 0§, param2:Number) : void
      {
         this.§8$§(param1.§&c§);
         if(this.§'[§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §]j§.§^P§(param2 != 1,this.§"<§.mipMapping,false,this.§"!1§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§%!2§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§+v§ != this.§`!$§)
         {
            this.§-!-§(0);
            this.§`!$§ = param1.§+v§;
         }
         if(!this.§"!C§(_loc4_))
         {
            this.§=!2§.uploadFromVector(this.§@!,§.§@g§,0,this.§'[§ * 4);
            this.§+l§.uploadFromVector(this.§@!,§.§6!M§,0,this.§'[§ * 4);
         }
         _loc4_.setBlendFactors(this.§1J§,this.§1[§);
         _loc4_.setProgram(§,L§.§3v§.§@V§(_loc3_));
         _loc4_.setTextureAt(0,this.§"<§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§+l§,§ !#§.§92§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§?s§,§ !#§.§?P§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§=!2§,§ !#§.§3!M§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§&c§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§"W§,0,this.§'[§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §0<§() : Boolean
      {
         return false;
      }
      
      public function get §;r§() : int
      {
         return this.§@!,§.§1r§ / 4;
      }
      
      public function get §`!8§() : int
      {
         return this.§+Y§;
      }
      
      public function get §'Z§() : Number
      {
         return this.§"]§;
      }
      
      public function set §'Z§(param1:Number) : void
      {
         this.§"]§ = param1;
      }
      
      public function get §][§() : Number
      {
         return this.§ for§;
      }
      
      public function set §][§(param1:Number) : void
      {
         this.§ for§ = param1;
      }
      
      public function get §3G§() : Number
      {
         return this.§>+§;
      }
      
      public function set §3G§(param1:Number) : void
      {
         this.§>+§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§"<§;
      }
   }
}
