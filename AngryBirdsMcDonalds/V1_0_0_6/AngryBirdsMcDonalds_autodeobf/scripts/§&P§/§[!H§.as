package §&P§
{
   import § !^§.Texture;
   import §#F§.§'!]§;
   import §2![§.DisplayObject;
   import §3A§.§,!L§;
   import §6!J§.§%!k§;
   import §=!K§.§>[§;
   import §=!K§.§^^§;
   import §=!K§.§do§;
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
   
   public class §[!H§ extends DisplayObject implements §,!L§
   {
       
      
      private var §`L§:Texture;
      
      private var §4g§:Vector.<§0]§>;
      
      private var §1W§:Number;
      
      private var §[P§:Vector.<Number>;
      
      private var §1!l§:Vector.<Number>;
      
      private var §^`§:§%!k§;
      
      private var §@D§:VertexBuffer3D;
      
      private var §&!,§:VertexBuffer3D;
      
      private var static:VertexBuffer3D;
      
      private var §1!4§:Vector.<uint>;
      
      private var §=!@§:IndexBuffer3D;
      
      private var §-!5§:int;
      
      private var §"!;§:int;
      
      private var §&=§:Number;
      
      protected var §<q§:Number;
      
      private var §4D§:Number = 0.0;
      
      private var §,u§:Number;
      
      protected var §;!"§:Number;
      
      protected var §%#§:Number;
      
      protected var §;+§:Boolean;
      
      protected var §5N§:String;
      
      protected var §?C§:String;
      
      protected var §0!#§:String;
      
      private var §<!f§:int = -1;
      
      private var §2@§:Boolean = false;
      
      private var §+Y§:Number = 0.0;
      
      public function §[!H§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§`L§ = param1;
         this.§;+§ = param1.premultipliedAlpha;
         this.§4g§ = new Vector.<§0]§>(0,false);
         this.§[P§ = new Vector.<Number>();
         this.§1!l§ = new Vector.<Number>();
         this.§^`§ = new §%!k§(0,this.§;+§);
         this.§1!4§ = new Vector.<uint>(0);
         this.§&=§ = param2;
         this.§,u§ = 0;
         this.§1W§ = 0;
         this.§%#§ = 0;
         this.§;!"§ = 0;
         this.§?C§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§5N§ = param4 || (!!this.§;+§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§,!A§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@D§)
         {
            this.§@D§.dispose();
         }
         if(this.§&!,§)
         {
            this.§&!,§.dispose();
         }
         if(this.static)
         {
            this.static.dispose();
         }
         if(this.§=!@§)
         {
            this.§=!@§.dispose();
         }
         this.§[P§ = null;
         this.§1!l§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §0]§
      {
         return new §0]§();
      }
      
      protected function initParticle(param1:§0]§) : void
      {
         param1.x = this.§;!"§;
         param1.y = this.§%#§;
         param1.§+!h§ = 0;
         param1.§,!1§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§0]§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§+!h§ / param1.§,!1§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§+!h§ += param2;
      }
      
      private function §,!A§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§2b§;
         var _loc3_:int = this.§2b§ + param1;
         var _loc4_:§%!k§;
         (_loc4_ = new §%!k§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§`L§.adjustVertexData(_loc4_,0,4);
         this.§4g§.fixed = false;
         this.§1!4§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§4g§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§[P§.push(0);
               this.§1!l§.push(0);
               _loc7_++;
            }
            this.§^`§.append(_loc4_);
            this.§1!4§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§4g§.fixed = true;
         this.§1!4§.fixed = true;
         this.§2@§ = true;
      }
      
      private function §+R§(param1:Context3D) : Boolean
      {
         if(!this.§2@§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'!]§();
         }
         var _loc2_:int = this.§^`§.§;!N§ / 4;
         if(this.§@D§)
         {
            this.§@D§.dispose();
         }
         if(this.§&!,§)
         {
            this.§&!,§.dispose();
         }
         if(this.static)
         {
            this.static.dispose();
         }
         if(this.§=!@§)
         {
            this.§=!@§.dispose();
         }
         this.§@D§ = param1.createVertexBuffer(_loc2_ * 4,§%!k§.§0![§);
         this.§@D§.uploadFromByteArray(this.§^`§.§";§,0,0,_loc2_ * 4);
         this.§&!,§ = param1.createVertexBuffer(_loc2_ * 4,§%!k§.§`9§);
         this.§&!,§.uploadFromVector(this.§^`§.§>!O§,0,_loc2_ * 4);
         this.static = param1.createVertexBuffer(_loc2_ * 4,§%!k§.§ !@§);
         this.static.uploadFromVector(this.§^`§.§-!@§,0,_loc2_ * 4);
         this.§=!@§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=!@§.uploadFromVector(this.§1!4§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§&=§ != 0)
         {
            this.§,u§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§,u§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §+o§(param1);
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
      
      public function §5!C§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§6!S§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§+Y§ = param1;
      }
      
      private function §6!S§(param1:Matrix3D) : void
      {
         var _loc4_:§0]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§0]§ = null;
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
         if(isNaN(this.§+Y§) || this.§+Y§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§+Y§;
         this.§+Y§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!5§)
         {
            if((_loc4_ = this.§4g§[_loc3_]).§+!h§ < _loc4_.§,!1§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§-!5§ - 1)
               {
                  _loc11_ = this.§4g§[this.§-!5§ - 1];
                  this.§4g§[this.§-!5§ - 1] = _loc4_;
                  this.§4g§[_loc3_] = _loc11_;
               }
               --this.§-!5§;
            }
         }
         if(this.§,u§ > 0)
         {
            _loc12_ = 1 / this.§&=§;
            this.§1W§ += _loc2_;
            while(this.§1W§ > 0)
            {
               if(this.§-!5§ == this.§2b§)
               {
                  this.§,!A§(this.§2b§);
               }
               _loc4_ = this.§4g§[this.§-!5§++] as §0]§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§1W§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§<q§))
               {
                  _loc13_ = _loc12_ * (1 - this.§<q§ + Math.random() * this.§<q§ * 2) + this.§4D§;
               }
               this.§4D§ += _loc12_ - _loc13_;
               this.§1W§ -= _loc13_;
            }
            if(this.§,u§ != Number.MAX_VALUE)
            {
               this.§,u§ = Math.max(0,this.§,u§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§`L§.width;
         var _loc9_:Number = this.§`L§.height;
         this.§"!;§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§>M§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§-!5§)
            {
               _loc6_ = (_loc4_ = this.§4g§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§1!l§[_loc14_ * 3];
               _loc17_ = this.§1!l§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§do§.§4!G§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §do§.§4!G§.§<!D§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§"!;§;
                  this.§^`§.§&y§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§^`§.§&,§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§^`§.§&,§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§^`§.§&,§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§^`§.§&,§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§^`§.§&,§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§^`§.§&,§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§^`§.§&,§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§^`§.§&,§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §>M§(param1:Matrix3D) : void
      {
         var _loc3_:§0]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!5§)
         {
            _loc3_ = this.§4g§[_loc2_];
            this.§[P§[_loc2_ * 3] = _loc3_.x;
            this.§[P§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§[P§,this.§1!l§);
      }
      
      override public function render(param1:§>[§, param2:Number) : void
      {
         this.§6!S§(param1.§'!§);
         if(this.§"!;§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §^^§.§+!0§(param2 != 1,this.§`L§.mipMapping,false,this.§0!#§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§15§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§;+§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§^t§ != this.§<!f§)
         {
            this.§,!A§(0);
            this.§<!f§ = param1.§^t§;
         }
         if(!this.§+R§(_loc4_))
         {
            this.§&!,§.uploadFromVector(this.§^`§.§>!O§,0,this.§"!;§ * 4);
            this.static.uploadFromVector(this.§^`§.§-!@§,0,this.§"!;§ * 4);
         }
         _loc4_.setBlendFactors(this.§5N§,this.§?C§);
         _loc4_.setProgram(§do§.§4!G§.§[&§(_loc3_));
         _loc4_.setTextureAt(0,this.§`L§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.static,§%!k§.§"!X§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§@D§,§%!k§.§]`§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§&!,§,§%!k§.§,!$§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§'!§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§=!@§,0,this.§"!;§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §[;§() : Boolean
      {
         return false;
      }
      
      public function get §2b§() : int
      {
         return this.§^`§.§;!N§ / 4;
      }
      
      public function get §3t§() : int
      {
         return this.§-!5§;
      }
      
      public function get §8W§() : Number
      {
         return this.§&=§;
      }
      
      public function set §8W§(param1:Number) : void
      {
         this.§&=§ = param1;
      }
      
      public function get §0j§() : Number
      {
         return this.§;!"§;
      }
      
      public function set §0j§(param1:Number) : void
      {
         this.§;!"§ = param1;
      }
      
      public function get §4!B§() : Number
      {
         return this.§%#§;
      }
      
      public function set §4!B§(param1:Number) : void
      {
         this.§%#§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§`L§;
      }
   }
}
