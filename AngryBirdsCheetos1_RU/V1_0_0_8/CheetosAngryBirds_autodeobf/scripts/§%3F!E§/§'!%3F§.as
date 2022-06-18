package §?!E§
{
   import §+!§.§[!P§;
   import §-!§.§&!T§;
   import §-!§.§-§;
   import §-!§.§3!5§;
   import §9!6§.§[!%§;
   import §9!V§.§3!B§;
   import §;!Q§.DisplayObject;
   import §]p§.Texture;
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
   
   public class §'!?§ extends DisplayObject implements §[!P§
   {
       
      
      private var §`h§:Texture;
      
      private var §0J§:Vector.<§[!R§>;
      
      private var §'!_§:Number;
      
      private var §>!-§:Vector.<Number>;
      
      private var §<$§:Vector.<Number>;
      
      private var §[!L§:§3!B§;
      
      private var §=!2§:VertexBuffer3D;
      
      private var §]!S§:VertexBuffer3D;
      
      private var §0!B§:VertexBuffer3D;
      
      private var § E§:Vector.<uint>;
      
      private var §!f§:IndexBuffer3D;
      
      private var §-P§:int;
      
      private var §2R§:int;
      
      private var §&9§:Number;
      
      protected var §'!%§:Number;
      
      private var §9!G§:Number = 0.0;
      
      private var §1!1§:Number;
      
      protected var §2!,§:Number;
      
      protected var §;F§:Number;
      
      protected var §&K§:Boolean;
      
      protected var §2n§:String;
      
      protected var §0!=§:String;
      
      protected var §4!H§:String;
      
      private var §2T§:int = -1;
      
      private var §`&§:Boolean = false;
      
      private var §%8§:Number = 0.0;
      
      public function §'!?§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§`h§ = param1;
         this.§&K§ = param1.premultipliedAlpha;
         this.§0J§ = new Vector.<§[!R§>(0,false);
         this.§>!-§ = new Vector.<Number>();
         this.§<$§ = new Vector.<Number>();
         this.§[!L§ = new §3!B§(0,this.§&K§);
         this.§ E§ = new Vector.<uint>(0);
         this.§&9§ = param2;
         this.§1!1§ = 0;
         this.§'!_§ = 0;
         this.§;F§ = 0;
         this.§2!,§ = 0;
         this.§0!=§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§2n§ = param4 || (!!this.§&K§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§8! §(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§]!S§)
         {
            this.§]!S§.dispose();
         }
         if(this.§0!B§)
         {
            this.§0!B§.dispose();
         }
         if(this.§!f§)
         {
            this.§!f§.dispose();
         }
         this.§>!-§ = null;
         this.§<$§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §[!R§
      {
         return new §[!R§();
      }
      
      protected function initParticle(param1:§[!R§) : void
      {
         param1.x = this.§2!,§;
         param1.y = this.§;F§;
         param1.§@!S§ = 0;
         param1.§<!4§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§[!R§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§@!S§ / param1.§<!4§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§@!S§ += param2;
      }
      
      private function §8! §(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§!!2§;
         var _loc3_:int = this.§!!2§ + param1;
         var _loc4_:§3!B§;
         (_loc4_ = new §3!B§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§`h§.adjustVertexData(_loc4_,0,4);
         this.§0J§.fixed = false;
         this.§ E§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§0J§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§>!-§.push(0);
               this.§<$§.push(0);
               _loc7_++;
            }
            this.§[!L§.append(_loc4_);
            this.§ E§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§0J§.fixed = true;
         this.§ E§.fixed = true;
         this.§`&§ = true;
      }
      
      private function §]!§(param1:Context3D) : Boolean
      {
         if(!this.§`&§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §[!%§();
         }
         var _loc2_:int = this.§[!L§.§<§ / 4;
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§]!S§)
         {
            this.§]!S§.dispose();
         }
         if(this.§0!B§)
         {
            this.§0!B§.dispose();
         }
         if(this.§!f§)
         {
            this.§!f§.dispose();
         }
         this.§=!2§ = param1.createVertexBuffer(_loc2_ * 4,§3!B§.§!o§);
         this.§=!2§.uploadFromByteArray(this.§[!L§.§9M§,0,0,_loc2_ * 4);
         this.§]!S§ = param1.createVertexBuffer(_loc2_ * 4,§3!B§.§%!C§);
         this.§]!S§.uploadFromVector(this.§[!L§.§'!U§,0,_loc2_ * 4);
         this.§0!B§ = param1.createVertexBuffer(_loc2_ * 4,§3!B§.§`!A§);
         this.§0!B§.uploadFromVector(this.§[!L§.§-Q§,0,_loc2_ * 4);
         this.§!f§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!f§.uploadFromVector(this.§ E§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§&9§ != 0)
         {
            this.§1!1§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§1!1§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §@!X§(param1);
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
      
      public function §`Z§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§&D§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§%8§ = param1;
      }
      
      private function §&D§(param1:Matrix3D) : void
      {
         var _loc4_:§[!R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§[!R§ = null;
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
         if(isNaN(this.§%8§) || this.§%8§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§%8§;
         this.§%8§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§-P§)
         {
            if((_loc4_ = this.§0J§[_loc3_]).§@!S§ < _loc4_.§<!4§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§-P§ - 1)
               {
                  _loc11_ = this.§0J§[this.§-P§ - 1];
                  this.§0J§[this.§-P§ - 1] = _loc4_;
                  this.§0J§[_loc3_] = _loc11_;
               }
               --this.§-P§;
            }
         }
         if(this.§1!1§ > 0)
         {
            _loc12_ = 1 / this.§&9§;
            this.§'!_§ += _loc2_;
            while(this.§'!_§ > 0)
            {
               if(this.§-P§ == this.§!!2§)
               {
                  this.§8! §(this.§!!2§);
               }
               _loc4_ = this.§0J§[this.§-P§++] as §[!R§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§'!_§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§'!%§))
               {
                  _loc13_ = _loc12_ * (1 - this.§'!%§ + Math.random() * this.§'!%§ * 2) + this.§9!G§;
               }
               this.§9!G§ += _loc12_ - _loc13_;
               this.§'!_§ -= _loc13_;
            }
            if(this.§1!1§ != Number.MAX_VALUE)
            {
               this.§1!1§ = Math.max(0,this.§1!1§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§`h§.width;
         var _loc9_:Number = this.§`h§.height;
         this.§2R§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§2P§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§-P§)
            {
               _loc6_ = (_loc4_ = this.§0J§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§<$§[_loc14_ * 3];
               _loc17_ = this.§<$§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§-§.§-G§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §-§.§-G§.§0f§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§2R§;
                  this.§[!L§.§=W§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§[!L§.§ P§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§[!L§.§ P§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§[!L§.§ P§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§[!L§.§ P§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§[!L§.§ P§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§[!L§.§ P§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§[!L§.§ P§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§[!L§.§ P§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §2P§(param1:Matrix3D) : void
      {
         var _loc3_:§[!R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-P§)
         {
            _loc3_ = this.§0J§[_loc2_];
            this.§>!-§[_loc2_ * 3] = _loc3_.x;
            this.§>!-§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§>!-§,this.§<$§);
      }
      
      override public function render(param1:§3!5§, param2:Number) : void
      {
         this.§&D§(param1.§5B§);
         if(this.§2R§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §&!T§.§5Q§(param2 != 1,this.§`h§.mipMapping,false,this.§4!H§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§,§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§&K§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§5!H§ != this.§2T§)
         {
            this.§8! §(0);
            this.§2T§ = param1.§5!H§;
         }
         if(!this.§]!§(_loc4_))
         {
            this.§]!S§.uploadFromVector(this.§[!L§.§'!U§,0,this.§2R§ * 4);
            this.§0!B§.uploadFromVector(this.§[!L§.§-Q§,0,this.§2R§ * 4);
         }
         _loc4_.setBlendFactors(this.§2n§,this.§0!=§);
         _loc4_.setProgram(§-§.§-G§.§@H§(_loc3_));
         _loc4_.setTextureAt(0,this.§`h§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§0!B§,§3!B§.§`e§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§=!2§,§3!B§.§4T§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§]!S§,§3!B§.§9!^§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§5B§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!f§,0,this.§2R§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §6!9§() : Boolean
      {
         return false;
      }
      
      public function get §!!2§() : int
      {
         return this.§[!L§.§<§ / 4;
      }
      
      public function get §'s§() : int
      {
         return this.§-P§;
      }
      
      public function get §[0§() : Number
      {
         return this.§&9§;
      }
      
      public function set §[0§(param1:Number) : void
      {
         this.§&9§ = param1;
      }
      
      public function get §7y§() : Number
      {
         return this.§2!,§;
      }
      
      public function set §7y§(param1:Number) : void
      {
         this.§2!,§ = param1;
      }
      
      public function get §8`§() : Number
      {
         return this.§;F§;
      }
      
      public function set §8`§(param1:Number) : void
      {
         this.§;F§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§`h§;
      }
   }
}
