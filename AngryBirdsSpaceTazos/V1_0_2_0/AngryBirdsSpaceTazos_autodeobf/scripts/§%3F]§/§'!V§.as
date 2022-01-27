package §?]§
{
   import §!!a§.§-!F§;
   import §'!&§.DisplayObject;
   import §+!Q§.§;!S§;
   import §3!4§.§ ![§;
   import §3!4§.§,$§;
   import §3!4§.§3=§;
   import §3"$§.Texture;
   import §@T§.§ k§;
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
   
   public class §'!V§ extends DisplayObject implements §;!S§
   {
       
      
      private var §2o§:Texture;
      
      private var §,S§:Vector.<§5"&§>;
      
      private var §5!+§:Number;
      
      private var §^!]§:Vector.<Number>;
      
      private var §-"!§:Vector.<Number>;
      
      private var §3!w§:§-!F§;
      
      private var §,c§:VertexBuffer3D;
      
      private var §4s§:VertexBuffer3D;
      
      private var §5!<§:VertexBuffer3D;
      
      private var §4!C§:Vector.<uint>;
      
      private var §-p§:IndexBuffer3D;
      
      private var §1!@§:int;
      
      private var §2#§:int;
      
      private var §>!D§:Number;
      
      protected var §-!c§:Number;
      
      private var §&"@§:Number = 0.0;
      
      private var §1!e§:Number;
      
      protected var §=";§:Number;
      
      protected var §]"?§:Number;
      
      protected var §-`§:Boolean;
      
      protected var §'!H§:String;
      
      protected var §`P§:String;
      
      protected var §1^§:String;
      
      private var §-!r§:int = -1;
      
      private var §=!J§:Boolean = false;
      
      private var §6!u§:Number = 0.0;
      
      public function §'!V§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§2o§ = param1;
         this.§-`§ = param1.premultipliedAlpha;
         this.§,S§ = new Vector.<§5"&§>(0,false);
         this.§^!]§ = new Vector.<Number>();
         this.§-"!§ = new Vector.<Number>();
         this.§3!w§ = new §-!F§(0,this.§-`§);
         this.§4!C§ = new Vector.<uint>(0);
         this.§>!D§ = param2;
         this.§1!e§ = 0;
         this.§5!+§ = 0;
         this.§]"?§ = 0;
         this.§=";§ = 0;
         this.§`P§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§'!H§ = param4 || (!!this.§-`§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§ ! §(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§,c§)
         {
            this.§,c§.dispose();
         }
         if(this.§4s§)
         {
            this.§4s§.dispose();
         }
         if(this.§5!<§)
         {
            this.§5!<§.dispose();
         }
         if(this.§-p§)
         {
            this.§-p§.dispose();
         }
         this.§^!]§ = null;
         this.§-"!§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §5"&§
      {
         return new §5"&§();
      }
      
      protected function initParticle(param1:§5"&§) : void
      {
         param1.x = this.§=";§;
         param1.y = this.§]"?§;
         param1.§0"8§ = 0;
         param1.§<!1§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§5"&§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§0"8§ / param1.§<!1§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§0"8§ += param2;
      }
      
      private function § ! §(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§"c§;
         var _loc3_:int = this.§"c§ + param1;
         var _loc4_:§-!F§;
         (_loc4_ = new §-!F§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§2o§.adjustVertexData(_loc4_,0,4);
         this.§,S§.fixed = false;
         this.§4!C§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§,S§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§^!]§.push(0);
               this.§-"!§.push(0);
               _loc7_++;
            }
            this.§3!w§.append(_loc4_);
            this.§4!C§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§,S§.fixed = true;
         this.§4!C§.fixed = true;
         this.§=!J§ = true;
      }
      
      private function §0!1§(param1:Context3D) : Boolean
      {
         if(!this.§=!J§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new § k§();
         }
         var _loc2_:int = this.§3!w§.§3@§ / 4;
         if(this.§,c§)
         {
            this.§,c§.dispose();
         }
         if(this.§4s§)
         {
            this.§4s§.dispose();
         }
         if(this.§5!<§)
         {
            this.§5!<§.dispose();
         }
         if(this.§-p§)
         {
            this.§-p§.dispose();
         }
         this.§,c§ = param1.createVertexBuffer(_loc2_ * 4,§-!F§.§08§);
         this.§,c§.uploadFromByteArray(this.§3!w§.§68§,0,0,_loc2_ * 4);
         this.§4s§ = param1.createVertexBuffer(_loc2_ * 4,§-!F§.§"U§);
         this.§4s§.uploadFromVector(this.§3!w§.§9"7§,0,_loc2_ * 4);
         this.§5!<§ = param1.createVertexBuffer(_loc2_ * 4,§-!F§.§[!g§);
         this.§5!<§.uploadFromVector(this.§3!w§.§=E§,0,_loc2_ * 4);
         this.§-p§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-p§.uploadFromVector(this.§4!C§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§>!D§ != 0)
         {
            this.§1!e§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§1!e§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §+"F§(param1);
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
      
      public function §`!&§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§0"0§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§6!u§ = param1;
      }
      
      private function §0"0§(param1:Matrix3D) : void
      {
         var _loc4_:§5"&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§5"&§ = null;
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
         if(isNaN(this.§6!u§) || this.§6!u§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§6!u§;
         this.§6!u§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§1!@§)
         {
            if((_loc4_ = this.§,S§[_loc3_]).§0"8§ < _loc4_.§<!1§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§1!@§ - 1)
               {
                  _loc11_ = this.§,S§[this.§1!@§ - 1];
                  this.§,S§[this.§1!@§ - 1] = _loc4_;
                  this.§,S§[_loc3_] = _loc11_;
               }
               --this.§1!@§;
            }
         }
         if(this.§1!e§ > 0)
         {
            _loc12_ = 1 / this.§>!D§;
            this.§5!+§ += _loc2_;
            while(this.§5!+§ > 0)
            {
               if(this.§1!@§ == this.§"c§)
               {
                  this.§ ! §(this.§"c§);
               }
               _loc4_ = this.§,S§[this.§1!@§++] as §5"&§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5!+§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§-!c§))
               {
                  _loc13_ = _loc12_ * (1 - this.§-!c§ + Math.random() * this.§-!c§ * 2) + this.§&"@§;
               }
               this.§&"@§ += _loc12_ - _loc13_;
               this.§5!+§ -= _loc13_;
            }
            if(this.§1!e§ != Number.MAX_VALUE)
            {
               this.§1!e§ = Math.max(0,this.§1!e§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§2o§.width;
         var _loc9_:Number = this.§2o§.height;
         this.§2#§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§?"&§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§1!@§)
            {
               _loc6_ = (_loc4_ = this.§,S§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§-"!§[_loc14_ * 3];
               _loc17_ = this.§-"!§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§ ![§.§!G§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / § ![§.§!G§.§ 8§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§2#§;
                  this.§3!w§.§3a§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§3!w§.§;[§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§3!w§.§;[§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§3!w§.§;[§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§3!w§.§;[§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§3!w§.§;[§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§3!w§.§;[§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§3!w§.§;[§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§3!w§.§;[§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §?"&§(param1:Matrix3D) : void
      {
         var _loc3_:§5"&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!@§)
         {
            _loc3_ = this.§,S§[_loc2_];
            this.§^!]§[_loc2_ * 3] = _loc3_.x;
            this.§^!]§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§^!]§,this.§-"!§);
      }
      
      override public function render(param1:§3=§, param2:Number) : void
      {
         this.§0"0§(param1.§-";§);
         if(this.§2#§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §,$§.§^!k§(param2 != 1,this.§2o§.mipMapping,false,this.§1^§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§"!!§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§-`§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§90§ != this.§-!r§)
         {
            this.§ ! §(0);
            this.§-!r§ = param1.§90§;
         }
         if(!this.§0!1§(_loc4_))
         {
            this.§4s§.uploadFromVector(this.§3!w§.§9"7§,0,this.§2#§ * 4);
            this.§5!<§.uploadFromVector(this.§3!w§.§=E§,0,this.§2#§ * 4);
         }
         _loc4_.setBlendFactors(this.§'!H§,this.§`P§);
         _loc4_.setProgram(§ ![§.§!G§.§9",§(_loc3_));
         _loc4_.setTextureAt(0,this.§2o§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§5!<§,§-!F§.§-5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§,c§,§-!F§.§%!p§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§4s§,§-!F§.§4"D§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§-";§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§-p§,0,this.§2#§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §9s§() : Boolean
      {
         return false;
      }
      
      public function get §"c§() : int
      {
         return this.§3!w§.§3@§ / 4;
      }
      
      public function get §?T§() : int
      {
         return this.§1!@§;
      }
      
      public function get §8!e§() : Number
      {
         return this.§>!D§;
      }
      
      public function set §8!e§(param1:Number) : void
      {
         this.§>!D§ = param1;
      }
      
      public function get §2!D§() : Number
      {
         return this.§=";§;
      }
      
      public function set §2!D§(param1:Number) : void
      {
         this.§=";§ = param1;
      }
      
      public function get §3z§() : Number
      {
         return this.§]"?§;
      }
      
      public function set §3z§(param1:Number) : void
      {
         this.§]"?§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§2o§;
      }
   }
}
