package §3">§
{
   import §!=§.§`b§;
   import §"a§.§!"J§;
   import §"a§.§0!B§;
   import §"a§.§>w§;
   import §'!6§.DisplayObject;
   import §+"Y§.§]g§;
   import §<5§.Texture;
   import §`#§.§#f§;
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
   
   public class §4"1§ extends DisplayObject implements §]g§
   {
       
      
      private var §,b§:Texture;
      
      private var §["V§:Vector.<§!!k§>;
      
      private var §2!§:Number;
      
      private var §7!J§:Vector.<Number>;
      
      private var §<!"§:Vector.<Number>;
      
      private var §^!S§:§`b§;
      
      private var §+c§:VertexBuffer3D;
      
      private var §[!'§:VertexBuffer3D;
      
      private var §1!2§:VertexBuffer3D;
      
      private var §!"#§:Vector.<uint>;
      
      private var §8C§:IndexBuffer3D;
      
      private var §[!6§:int;
      
      private var §>"8§:int;
      
      private var §-!1§:Number;
      
      protected var §&!H§:Number;
      
      private var §?y§:Number = 0.0;
      
      private var §0!4§:Number;
      
      protected var §8!f§:Number;
      
      protected var §@!J§:Number;
      
      protected var §8$§:Boolean;
      
      protected var §!!]§:String;
      
      protected var §9S§:String;
      
      protected var §%J§:String;
      
      private var §8g§:int = -1;
      
      private var §;3§:Boolean = false;
      
      private var §7!u§:Number = 0.0;
      
      public function §4"1§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§,b§ = param1;
         this.§8$§ = param1.premultipliedAlpha;
         this.§["V§ = new Vector.<§!!k§>(0,false);
         this.§7!J§ = new Vector.<Number>();
         this.§<!"§ = new Vector.<Number>();
         this.§^!S§ = new §`b§(0,this.§8$§);
         this.§!"#§ = new Vector.<uint>(0);
         this.§-!1§ = param2;
         this.§0!4§ = 0;
         this.§2!§ = 0;
         this.§@!J§ = 0;
         this.§8!f§ = 0;
         this.§9S§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§!!]§ = param4 || (!!this.§8$§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§70§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+c§)
         {
            this.§+c§.dispose();
         }
         if(this.§[!'§)
         {
            this.§[!'§.dispose();
         }
         if(this.§1!2§)
         {
            this.§1!2§.dispose();
         }
         if(this.§8C§)
         {
            this.§8C§.dispose();
         }
         this.§7!J§ = null;
         this.§<!"§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §!!k§
      {
         return new §!!k§();
      }
      
      protected function initParticle(param1:§!!k§) : void
      {
         param1.x = this.§8!f§;
         param1.y = this.§@!J§;
         param1.§42§ = 0;
         param1.§4!3§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§!!k§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§42§ / param1.§4!3§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§42§ += param2;
      }
      
      private function §70§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§85§;
         var _loc3_:int = this.§85§ + param1;
         var _loc4_:§`b§;
         (_loc4_ = new §`b§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§,b§.adjustVertexData(_loc4_,0,4);
         this.§["V§.fixed = false;
         this.§!"#§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§["V§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§7!J§.push(0);
               this.§<!"§.push(0);
               _loc7_++;
            }
            this.§^!S§.append(_loc4_);
            this.§!"#§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§["V§.fixed = true;
         this.§!"#§.fixed = true;
         this.§;3§ = true;
      }
      
      private function §#!T§(param1:Context3D) : Boolean
      {
         if(!this.§;3§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §#f§();
         }
         var _loc2_:int = this.§^!S§.§2"M§ / 4;
         if(this.§+c§)
         {
            this.§+c§.dispose();
         }
         if(this.§[!'§)
         {
            this.§[!'§.dispose();
         }
         if(this.§1!2§)
         {
            this.§1!2§.dispose();
         }
         if(this.§8C§)
         {
            this.§8C§.dispose();
         }
         this.§+c§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§5!O§);
         this.§+c§.uploadFromByteArray(this.§^!S§.§@T§,0,0,_loc2_ * 4);
         this.§[!'§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§""U§);
         this.§[!'§.uploadFromVector(this.§^!S§.§,e§,0,_loc2_ * 4);
         this.§1!2§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§1!-§);
         this.§1!2§.uploadFromVector(this.§^!S§.§['§,0,_loc2_ * 4);
         this.§8C§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8C§.uploadFromVector(this.§!"#§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§-!1§ != 0)
         {
            this.§0!4§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§0!4§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §'!D§(param1);
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
      
      public function § "@§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§ !B§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7!u§ = param1;
      }
      
      private function § !B§(param1:Matrix3D) : void
      {
         var _loc4_:§!!k§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§!!k§ = null;
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
         if(isNaN(this.§7!u§) || this.§7!u§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7!u§;
         this.§7!u§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§[!6§)
         {
            if((_loc4_ = this.§["V§[_loc3_]).§42§ < _loc4_.§4!3§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§[!6§ - 1)
               {
                  _loc11_ = this.§["V§[this.§[!6§ - 1];
                  this.§["V§[this.§[!6§ - 1] = _loc4_;
                  this.§["V§[_loc3_] = _loc11_;
               }
               --this.§[!6§;
            }
         }
         if(this.§0!4§ > 0)
         {
            _loc12_ = 1 / this.§-!1§;
            this.§2!§ += _loc2_;
            while(this.§2!§ > 0)
            {
               if(this.§[!6§ == this.§85§)
               {
                  this.§70§(this.§85§);
               }
               _loc4_ = this.§["V§[this.§[!6§++] as §!!k§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§2!§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§&!H§))
               {
                  _loc13_ = _loc12_ * (1 - this.§&!H§ + Math.random() * this.§&!H§ * 2) + this.§?y§;
               }
               this.§?y§ += _loc12_ - _loc13_;
               this.§2!§ -= _loc13_;
            }
            if(this.§0!4§ != Number.MAX_VALUE)
            {
               this.§0!4§ = Math.max(0,this.§0!4§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§,b§.width;
         var _loc9_:Number = this.§,b§.height;
         this.§>"8§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§ ![§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§[!6§)
            {
               _loc6_ = (_loc4_ = this.§["V§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§<!"§[_loc14_ * 3];
               _loc17_ = this.§<!"§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§!"J§.§1&§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §!"J§.§1&§.§@[§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§>"8§;
                  this.§^!S§.§`P§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§^!S§.§0u§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§^!S§.§0u§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§^!S§.§0u§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§^!S§.§0u§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§^!S§.§0u§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§^!S§.§0u§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§^!S§.§0u§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§^!S§.§0u§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function § ![§(param1:Matrix3D) : void
      {
         var _loc3_:§!!k§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!6§)
         {
            _loc3_ = this.§["V§[_loc2_];
            this.§7!J§[_loc2_ * 3] = _loc3_.x;
            this.§7!J§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§7!J§,this.§<!"§);
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         this.§ !B§(param1.§=n§);
         if(this.§>"8§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §0!B§.§[!P§(param2 != 1,this.§,b§.mipMapping,false,this.§%J§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§;"-§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§8$§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§extends§ != this.§8g§)
         {
            this.§70§(0);
            this.§8g§ = param1.§extends§;
         }
         if(!this.§#!T§(_loc4_))
         {
            this.§[!'§.uploadFromVector(this.§^!S§.§,e§,0,this.§>"8§ * 4);
            this.§1!2§.uploadFromVector(this.§^!S§.§['§,0,this.§>"8§ * 4);
         }
         _loc4_.setBlendFactors(this.§!!]§,this.§9S§);
         _loc4_.setProgram(§!"J§.§1&§.§ z§(_loc3_));
         _loc4_.setTextureAt(0,this.§,b§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§1!2§,§`b§.§%!V§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§+c§,§`b§.§&"I§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§[!'§,§`b§.§<!W§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§=n§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§8C§,0,this.§>"8§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §[9§() : Boolean
      {
         return false;
      }
      
      public function get §85§() : int
      {
         return this.§^!S§.§2"M§ / 4;
      }
      
      public function get §'t§() : int
      {
         return this.§[!6§;
      }
      
      public function get §6w§() : Number
      {
         return this.§-!1§;
      }
      
      public function set §6w§(param1:Number) : void
      {
         this.§-!1§ = param1;
      }
      
      public function get §4!=§() : Number
      {
         return this.§8!f§;
      }
      
      public function set §4!=§(param1:Number) : void
      {
         this.§8!f§ = param1;
      }
      
      public function get §,!h§() : Number
      {
         return this.§@!J§;
      }
      
      public function set §,!h§(param1:Number) : void
      {
         this.§@!J§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§,b§;
      }
   }
}
