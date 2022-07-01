package §9i§
{
   import §"!t§.§&s§;
   import §&!;§.Texture;
   import §&&§.§9"&§;
   import §-![§.DisplayObject;
   import §7!i§.§]"2§;
   import §=!6§.§+8§;
   import §=!6§.§3E§;
   import §=!6§.§]q§;
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
   
   public class §5!-§ extends DisplayObject implements §]"2§
   {
       
      
      private var §0!0§:Texture;
      
      private var §]!`§:Vector.<§-8§>;
      
      private var §!L§:Number;
      
      private var §1"2§:Vector.<Number>;
      
      private var §2!3§:Vector.<Number>;
      
      private var §1!T§:§&s§;
      
      private var §<F§:VertexBuffer3D;
      
      private var §-&§:VertexBuffer3D;
      
      private var §4-§:VertexBuffer3D;
      
      private var §+!r§:Vector.<uint>;
      
      private var §["5§:IndexBuffer3D;
      
      private var §?![§:int;
      
      private var §,!§:int;
      
      private var §]"%§:Number;
      
      protected var §`E§:Number;
      
      private var §2x§:Number = 0.0;
      
      private var §^!e§:Number;
      
      protected var § #§:Number;
      
      protected var §>!O§:Number;
      
      protected var § !8§:Boolean;
      
      protected var §-!j§:String;
      
      protected var §"!7§:String;
      
      protected var §4"!§:String;
      
      private var §'3§:int = -1;
      
      private var §8@§:Boolean = false;
      
      private var § a§:Number = 0.0;
      
      public function §5!-§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§0!0§ = param1;
         this.§ !8§ = param1.premultipliedAlpha;
         this.§]!`§ = new Vector.<§-8§>(0,false);
         this.§1"2§ = new Vector.<Number>();
         this.§2!3§ = new Vector.<Number>();
         this.§1!T§ = new §&s§(0,this.§ !8§);
         this.§+!r§ = new Vector.<uint>(0);
         this.§]"%§ = param2;
         this.§^!e§ = 0;
         this.§!L§ = 0;
         this.§>!O§ = 0;
         this.§ #§ = 0;
         this.§"!7§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§-!j§ = param4 || (!!this.§ !8§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§5[§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§<F§)
         {
            this.§<F§.dispose();
         }
         if(this.§-&§)
         {
            this.§-&§.dispose();
         }
         if(this.§4-§)
         {
            this.§4-§.dispose();
         }
         if(this.§["5§)
         {
            this.§["5§.dispose();
         }
         this.§1"2§ = null;
         this.§2!3§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §-8§
      {
         return new §-8§();
      }
      
      protected function initParticle(param1:§-8§) : void
      {
         param1.x = this.§ #§;
         param1.y = this.§>!O§;
         param1.§7"&§ = 0;
         param1.§-Q§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§-8§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§7"&§ / param1.§-Q§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§7"&§ += param2;
      }
      
      private function §5[§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§+!y§;
         var _loc3_:int = this.§+!y§ + param1;
         var _loc4_:§&s§;
         (_loc4_ = new §&s§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§0!0§.adjustVertexData(_loc4_,0,4);
         this.§]!`§.fixed = false;
         this.§+!r§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§]!`§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§1"2§.push(0);
               this.§2!3§.push(0);
               _loc7_++;
            }
            this.§1!T§.append(_loc4_);
            this.§+!r§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§]!`§.fixed = true;
         this.§+!r§.fixed = true;
         this.§8@§ = true;
      }
      
      private function §2O§(param1:Context3D) : Boolean
      {
         if(!this.§8@§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §9"&§();
         }
         var _loc2_:int = this.§1!T§.§-!l§ / 4;
         if(this.§<F§)
         {
            this.§<F§.dispose();
         }
         if(this.§-&§)
         {
            this.§-&§.dispose();
         }
         if(this.§4-§)
         {
            this.§4-§.dispose();
         }
         if(this.§["5§)
         {
            this.§["5§.dispose();
         }
         this.§<F§ = param1.createVertexBuffer(_loc2_ * 4,§&s§.§-!o§);
         this.§<F§.uploadFromByteArray(this.§1!T§.§=!X§,0,0,_loc2_ * 4);
         this.§-&§ = param1.createVertexBuffer(_loc2_ * 4,§&s§.§"!?§);
         this.§-&§.uploadFromVector(this.§1!T§.§9@§,0,_loc2_ * 4);
         this.§4-§ = param1.createVertexBuffer(_loc2_ * 4,§&s§.§false§);
         this.§4-§.uploadFromVector(this.§1!T§.§&6§,0,_loc2_ * 4);
         this.§["5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§["5§.uploadFromVector(this.§+!r§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§]"%§ != 0)
         {
            this.§^!e§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§^!e§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §,!^§(param1);
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
      
      public function §<!I§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§"!m§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§ a§ = param1;
      }
      
      private function §"!m§(param1:Matrix3D) : void
      {
         var _loc4_:§-8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§-8§ = null;
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
         if(isNaN(this.§ a§) || this.§ a§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§ a§;
         this.§ a§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?![§)
         {
            if((_loc4_ = this.§]!`§[_loc3_]).§7"&§ < _loc4_.§-Q§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?![§ - 1)
               {
                  _loc11_ = this.§]!`§[this.§?![§ - 1];
                  this.§]!`§[this.§?![§ - 1] = _loc4_;
                  this.§]!`§[_loc3_] = _loc11_;
               }
               --this.§?![§;
            }
         }
         if(this.§^!e§ > 0)
         {
            _loc12_ = 1 / this.§]"%§;
            this.§!L§ += _loc2_;
            while(this.§!L§ > 0)
            {
               if(this.§?![§ == this.§+!y§)
               {
                  this.§5[§(this.§+!y§);
               }
               _loc4_ = this.§]!`§[this.§?![§++] as §-8§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§!L§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§`E§))
               {
                  _loc13_ = _loc12_ * (1 - this.§`E§ + Math.random() * this.§`E§ * 2) + this.§2x§;
               }
               this.§2x§ += _loc12_ - _loc13_;
               this.§!L§ -= _loc13_;
            }
            if(this.§^!e§ != Number.MAX_VALUE)
            {
               this.§^!e§ = Math.max(0,this.§^!e§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§0!0§.width;
         var _loc9_:Number = this.§0!0§.height;
         this.§,!§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§>!r§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?![§)
            {
               _loc6_ = (_loc4_ = this.§]!`§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§2!3§[_loc14_ * 3];
               _loc17_ = this.§2!3§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§+8§.§0j§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §+8§.§0j§.§7z§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§,!§;
                  this.§1!T§.§7!5§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§1!T§.§&w§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§1!T§.§&w§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§1!T§.§&w§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§1!T§.§&w§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§1!T§.§&w§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§1!T§.§&w§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§1!T§.§&w§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§1!T§.§&w§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §>!r§(param1:Matrix3D) : void
      {
         var _loc3_:§-8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?![§)
         {
            _loc3_ = this.§]!`§[_loc2_];
            this.§1"2§[_loc2_ * 3] = _loc3_.x;
            this.§1"2§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§1"2§,this.§2!3§);
      }
      
      override public function render(param1:§]q§, param2:Number) : void
      {
         this.§"!m§(param1.§ !l§);
         if(this.§,!§ == 0)
         {
            return;
         }
         param1.§`!p§();
         param2 *= this.alpha;
         var _loc3_:String = §3E§.§0!D§(param2 != 1,this.§0!0§.mipMapping,false,this.§4"!§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§2w§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§ !8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§@!E§ != this.§'3§)
         {
            this.§5[§(0);
            this.§'3§ = param1.§@!E§;
         }
         if(!this.§2O§(_loc4_))
         {
            this.§-&§.uploadFromVector(this.§1!T§.§9@§,0,this.§,!§ * 4);
            this.§4-§.uploadFromVector(this.§1!T§.§&6§,0,this.§,!§ * 4);
         }
         _loc4_.setBlendFactors(this.§-!j§,this.§"!7§);
         _loc4_.setProgram(§+8§.§0j§.§'!J§(_loc3_));
         _loc4_.setTextureAt(0,this.§0!0§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§4-§,§&s§.§"^§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§<F§,§&s§.§7R§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§-&§,§&s§.§0"§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§ !l§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§["5§,0,this.§,!§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get § !f§() : Boolean
      {
         return false;
      }
      
      public function get §+!y§() : int
      {
         return this.§1!T§.§-!l§ / 4;
      }
      
      public function get §-u§() : int
      {
         return this.§?![§;
      }
      
      public function get §9^§() : Number
      {
         return this.§]"%§;
      }
      
      public function set §9^§(param1:Number) : void
      {
         this.§]"%§ = param1;
      }
      
      public function get §'D§() : Number
      {
         return this.§ #§;
      }
      
      public function set §'D§(param1:Number) : void
      {
         this.§ #§ = param1;
      }
      
      public function get §"!h§() : Number
      {
         return this.§>!O§;
      }
      
      public function set §"!h§(param1:Number) : void
      {
         this.§>!O§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§0!0§;
      }
   }
}
