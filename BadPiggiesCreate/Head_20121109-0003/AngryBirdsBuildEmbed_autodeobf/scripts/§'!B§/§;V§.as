package §'!B§
{
   import §,%§.§&!Z§;
   import §-!`§.DisplayObject;
   import §0!-§.Texture;
   import §6!@§.§3!'§;
   import §6x§.§9!§;
   import §@!X§.§"W§;
   import §@!X§.§#L§;
   import §@!X§.§7j§;
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
   
   public class §;V§ extends DisplayObject implements §&!Z§
   {
       
      
      private var §8w§:Texture;
      
      private var §%4§:Vector.<§+!Q§>;
      
      private var §1!d§:Number;
      
      private var §,!s§:Vector.<Number>;
      
      private var §'!Z§:Vector.<Number>;
      
      private var §8<§:§9!§;
      
      private var §+[§:VertexBuffer3D;
      
      private var §'9§:VertexBuffer3D;
      
      private var §>b§:VertexBuffer3D;
      
      private var §"=§:Vector.<uint>;
      
      private var §7[§:IndexBuffer3D;
      
      private var §>7§:int;
      
      private var §]!O§:int;
      
      private var §5!8§:Number;
      
      protected var §&A§:Number;
      
      private var §0D§:Number = 0.0;
      
      private var §,!W§:Number;
      
      protected var §<!t§:Number;
      
      protected var §+J§:Number;
      
      protected var §2!'§:Boolean;
      
      protected var §;!J§:String;
      
      protected var §@V§:String;
      
      protected var §'!L§:String;
      
      private var §3+§:int = -1;
      
      private var §'!F§:Boolean = false;
      
      private var §<!N§:Number = 0.0;
      
      public function §;V§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§8w§ = param1;
         this.§2!'§ = param1.premultipliedAlpha;
         this.§%4§ = new Vector.<§+!Q§>(0,false);
         this.§,!s§ = new Vector.<Number>();
         this.§'!Z§ = new Vector.<Number>();
         this.§8<§ = new §9!§(0,this.§2!'§);
         this.§"=§ = new Vector.<uint>(0);
         this.§5!8§ = param2;
         this.§,!W§ = 0;
         this.§1!d§ = 0;
         this.§+J§ = 0;
         this.§<!t§ = 0;
         this.§@V§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§;!J§ = param4 || (!!this.§2!'§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§>z§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+[§)
         {
            this.§+[§.dispose();
         }
         if(this.§'9§)
         {
            this.§'9§.dispose();
         }
         if(this.§>b§)
         {
            this.§>b§.dispose();
         }
         if(this.§7[§)
         {
            this.§7[§.dispose();
         }
         this.§,!s§ = null;
         this.§'!Z§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §+!Q§
      {
         return new §+!Q§();
      }
      
      protected function initParticle(param1:§+!Q§) : void
      {
         param1.x = this.§<!t§;
         param1.y = this.§+J§;
         param1.currentTime = 0;
         param1.§=W§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§+!Q§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§=W§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §>z§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§0!A§;
         var _loc3_:int = this.§0!A§ + param1;
         var _loc4_:§9!§;
         (_loc4_ = new §9!§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§8w§.adjustVertexData(_loc4_,0,4);
         this.§%4§.fixed = false;
         this.§"=§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§%4§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§,!s§.push(0);
               this.§'!Z§.push(0);
               _loc7_++;
            }
            this.§8<§.append(_loc4_);
            this.§"=§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§%4§.fixed = true;
         this.§"=§.fixed = true;
         this.§'!F§ = true;
      }
      
      private function §!E§(param1:Context3D) : Boolean
      {
         if(!this.§'!F§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §3!'§();
         }
         var _loc2_:int = this.§8<§.§9m§ / 4;
         if(this.§+[§)
         {
            this.§+[§.dispose();
         }
         if(this.§'9§)
         {
            this.§'9§.dispose();
         }
         if(this.§>b§)
         {
            this.§>b§.dispose();
         }
         if(this.§7[§)
         {
            this.§7[§.dispose();
         }
         this.§+[§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§4>§);
         this.§+[§.uploadFromByteArray(this.§8<§.§>!I§,0,0,_loc2_ * 4);
         this.§'9§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§#!R§);
         this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,_loc2_ * 4);
         this.§>b§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§1W§);
         this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,_loc2_ * 4);
         this.§7[§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7[§.uploadFromVector(this.§"=§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§5!8§ != 0)
         {
            this.§,!W§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§,!W§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §+y§(param1);
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
      
      public function § l§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§-!S§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§<!N§ = param1;
      }
      
      private function §-!S§(param1:Matrix3D) : void
      {
         var _loc4_:§+!Q§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§+!Q§ = null;
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
         if(isNaN(this.§<!N§) || this.§<!N§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§<!N§;
         this.§<!N§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§>7§)
         {
            if((_loc4_ = this.§%4§[_loc3_]).currentTime < _loc4_.§=W§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§>7§ - 1)
               {
                  _loc11_ = this.§%4§[this.§>7§ - 1];
                  this.§%4§[this.§>7§ - 1] = _loc4_;
                  this.§%4§[_loc3_] = _loc11_;
               }
               --this.§>7§;
            }
         }
         if(this.§,!W§ > 0)
         {
            _loc12_ = 1 / this.§5!8§;
            this.§1!d§ += _loc2_;
            while(this.§1!d§ > 0)
            {
               if(this.§>7§ == this.§0!A§)
               {
                  this.§>z§(this.§0!A§);
               }
               _loc4_ = this.§%4§[this.§>7§++] as §+!Q§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§1!d§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§&A§))
               {
                  _loc13_ = _loc12_ * (1 - this.§&A§ + Math.random() * this.§&A§ * 2) + this.§0D§;
               }
               this.§0D§ += _loc12_ - _loc13_;
               this.§1!d§ -= _loc13_;
            }
            if(this.§,!W§ != Number.MAX_VALUE)
            {
               this.§,!W§ = Math.max(0,this.§,!W§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§8w§.width;
         var _loc9_:Number = this.§8w§.height;
         this.§]!O§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§;! §(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§>7§)
            {
               _loc6_ = (_loc4_ = this.§%4§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§'!Z§[_loc14_ * 3];
               _loc17_ = this.§'!Z§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§7j§.§else§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §7j§.§else§.§&!q§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§]!O§;
                  this.§8<§.§[!I§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§8<§.§,X§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§8<§.§,X§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§8<§.§,X§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§8<§.§,X§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§8<§.§,X§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§8<§.§,X§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§8<§.§,X§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§8<§.§,X§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §;! §(param1:Matrix3D) : void
      {
         var _loc3_:§+!Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>7§)
         {
            _loc3_ = this.§%4§[_loc2_];
            this.§,!s§[_loc2_ * 3] = _loc3_.x;
            this.§,!s§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§,!s§,this.§'!Z§);
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         this.§-!S§(param1.§7!0§);
         if(this.§]!O§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §#L§.§9F§(param2 != 1,this.§8w§.mipMapping,false,this.§'!L§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§2!'§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§>!a§ != this.§3+§)
         {
            this.§>z§(0);
            this.§3+§ = param1.§>!a§;
         }
         if(!this.§!E§(_loc4_))
         {
            this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,this.§]!O§ * 4);
            this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,this.§]!O§ * 4);
         }
         _loc4_.setBlendFactors(this.§;!J§,this.§@V§);
         _loc4_.setProgram(§7j§.§else§.§+!l§(_loc3_));
         _loc4_.setTextureAt(0,this.§8w§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§>b§,§9!§.§3!V§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+[§,§9!§.§<!l§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§'9§,§9!§.§5Q§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7!0§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§7[§,0,this.§]!O§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §`Q§() : Boolean
      {
         return false;
      }
      
      public function get §0!A§() : int
      {
         return this.§8<§.§9m§ / 4;
      }
      
      public function get §>!8§() : int
      {
         return this.§>7§;
      }
      
      public function get §>!j§() : Number
      {
         return this.§5!8§;
      }
      
      public function set §>!j§(param1:Number) : void
      {
         this.§5!8§ = param1;
      }
      
      public function get §3!2§() : Number
      {
         return this.§<!t§;
      }
      
      public function set §3!2§(param1:Number) : void
      {
         this.§<!t§ = param1;
      }
      
      public function get §=a§() : Number
      {
         return this.§+J§;
      }
      
      public function set §=a§(param1:Number) : void
      {
         this.§+J§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§8w§;
      }
   }
}
