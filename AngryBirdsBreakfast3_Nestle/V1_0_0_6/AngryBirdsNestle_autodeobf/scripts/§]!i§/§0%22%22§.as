package §]!i§
{
   import §%!7§.§1"4§;
   import §,!q§.DisplayObject;
   import §-!Y§.§%!%§;
   import §-!Y§.§,!f§;
   import §-!Y§.§<"2§;
   import §-$§.§6"5§;
   import §?V§.Texture;
   import §]"1§.§`n§;
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
   
   public class §0""§ extends DisplayObject implements §1"4§
   {
       
      
      private var §3",§:Texture;
      
      private var §^9§:Vector.<§ "'§>;
      
      private var §<i§:Number;
      
      private var §;!#§:Vector.<Number>;
      
      private var §9!§:Vector.<Number>;
      
      private var §;<§:§6"5§;
      
      private var §-!§:VertexBuffer3D;
      
      private var §-!p§:VertexBuffer3D;
      
      private var §9r§:VertexBuffer3D;
      
      private var §-!`§:Vector.<uint>;
      
      private var §>!5§:IndexBuffer3D;
      
      private var §]?§:int;
      
      private var §'H§:int;
      
      private var §-S§:Number;
      
      protected var §[!n§:Number;
      
      private var §]h§:Number = 0.0;
      
      private var §9H§:Number;
      
      protected var §=!6§:Number;
      
      protected var §%!P§:Number;
      
      protected var §>P§:Boolean;
      
      protected var §@!L§:String;
      
      protected var §?!,§:String;
      
      protected var §["§:String;
      
      private var §4o§:int = -1;
      
      private var §4§:Boolean = false;
      
      private var §6e§:Number = 0.0;
      
      public function §0""§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§3",§ = param1;
         this.§>P§ = param1.premultipliedAlpha;
         this.§^9§ = new Vector.<§ "'§>(0,false);
         this.§;!#§ = new Vector.<Number>();
         this.§9!§ = new Vector.<Number>();
         this.§;<§ = new §6"5§(0,this.§>P§);
         this.§-!`§ = new Vector.<uint>(0);
         this.§-S§ = param2;
         this.§9H§ = 0;
         this.§<i§ = 0;
         this.§%!P§ = 0;
         this.§=!6§ = 0;
         this.§?!,§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§@!L§ = param4 || (!!this.§>P§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§,!<§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
         if(this.§-!p§)
         {
            this.§-!p§.dispose();
         }
         if(this.§9r§)
         {
            this.§9r§.dispose();
         }
         if(this.§>!5§)
         {
            this.§>!5§.dispose();
         }
         this.§;!#§ = null;
         this.§9!§ = null;
         super.dispose();
      }
      
      protected function createParticle() : § "'§
      {
         return new § "'§();
      }
      
      protected function initParticle(param1:§ "'§) : void
      {
         param1.x = this.§=!6§;
         param1.y = this.§%!P§;
         param1.§%!d§ = 0;
         param1.§'!M§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§ "'§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§%!d§ / param1.§'!M§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§%!d§ += param2;
      }
      
      private function §,!<§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§""3§;
         var _loc3_:int = this.§""3§ + param1;
         var _loc4_:§6"5§;
         (_loc4_ = new §6"5§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§3",§.adjustVertexData(_loc4_,0,4);
         this.§^9§.fixed = false;
         this.§-!`§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§^9§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§;!#§.push(0);
               this.§9!§.push(0);
               _loc7_++;
            }
            this.§;<§.append(_loc4_);
            this.§-!`§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§^9§.fixed = true;
         this.§-!`§.fixed = true;
         this.§4§ = true;
      }
      
      private function §break§(param1:Context3D) : Boolean
      {
         if(!this.§4§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §`n§();
         }
         var _loc2_:int = this.§;<§.§"@§ / 4;
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
         if(this.§-!p§)
         {
            this.§-!p§.dispose();
         }
         if(this.§9r§)
         {
            this.§9r§.dispose();
         }
         if(this.§>!5§)
         {
            this.§>!5§.dispose();
         }
         this.§-!§ = param1.createVertexBuffer(_loc2_ * 4,§6"5§.§"<§);
         this.§-!§.uploadFromByteArray(this.§;<§.§]!p§,0,0,_loc2_ * 4);
         this.§-!p§ = param1.createVertexBuffer(_loc2_ * 4,§6"5§.§6!B§);
         this.§-!p§.uploadFromVector(this.§;<§.§+!N§,0,_loc2_ * 4);
         this.§9r§ = param1.createVertexBuffer(_loc2_ * 4,§6"5§.§<!=§);
         this.§9r§.uploadFromVector(this.§;<§.§@!%§,0,_loc2_ * 4);
         this.§>!5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§>!5§.uploadFromVector(this.§-!`§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§-S§ != 0)
         {
            this.§9H§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§9H§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §&!n§(param1);
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
      
      public function §^r§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§9M§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§6e§ = param1;
      }
      
      private function §9M§(param1:Matrix3D) : void
      {
         var _loc4_:§ "'§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§ "'§ = null;
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
         if(isNaN(this.§6e§) || this.§6e§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§6e§;
         this.§6e§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§]?§)
         {
            if((_loc4_ = this.§^9§[_loc3_]).§%!d§ < _loc4_.§'!M§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§]?§ - 1)
               {
                  _loc11_ = this.§^9§[this.§]?§ - 1];
                  this.§^9§[this.§]?§ - 1] = _loc4_;
                  this.§^9§[_loc3_] = _loc11_;
               }
               --this.§]?§;
            }
         }
         if(this.§9H§ > 0)
         {
            _loc12_ = 1 / this.§-S§;
            this.§<i§ += _loc2_;
            while(this.§<i§ > 0)
            {
               if(this.§]?§ == this.§""3§)
               {
                  this.§,!<§(this.§""3§);
               }
               _loc4_ = this.§^9§[this.§]?§++] as § "'§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§<i§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§[!n§))
               {
                  _loc13_ = _loc12_ * (1 - this.§[!n§ + Math.random() * this.§[!n§ * 2) + this.§]h§;
               }
               this.§]h§ += _loc12_ - _loc13_;
               this.§<i§ -= _loc13_;
            }
            if(this.§9H§ != Number.MAX_VALUE)
            {
               this.§9H§ = Math.max(0,this.§9H§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§3",§.width;
         var _loc9_:Number = this.§3",§.height;
         this.§'H§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§!o§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§]?§)
            {
               _loc6_ = (_loc4_ = this.§^9§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§9!§[_loc14_ * 3];
               _loc17_ = this.§9!§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§%!%§.§"T§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §%!%§.§"T§.§!!0§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§'H§;
                  this.§;<§.§#"+§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§;<§.§%_§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§;<§.§%_§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§;<§.§%_§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§;<§.§%_§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§;<§.§%_§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§;<§.§%_§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§;<§.§%_§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§;<§.§%_§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §!o§(param1:Matrix3D) : void
      {
         var _loc3_:§ "'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]?§)
         {
            _loc3_ = this.§^9§[_loc2_];
            this.§;!#§[_loc2_ * 3] = _loc3_.x;
            this.§;!#§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§;!#§,this.§9!§);
      }
      
      override public function render(param1:§,!f§, param2:Number) : void
      {
         this.§9M§(param1.§<!p§);
         if(this.§'H§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §<"2§.§8!G§(param2 != 1,this.§3",§.mipMapping,false,this.§["§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§'y§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§>P§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§#!<§ != this.§4o§)
         {
            this.§,!<§(0);
            this.§4o§ = param1.§#!<§;
         }
         if(!this.§break§(_loc4_))
         {
            this.§-!p§.uploadFromVector(this.§;<§.§+!N§,0,this.§'H§ * 4);
            this.§9r§.uploadFromVector(this.§;<§.§@!%§,0,this.§'H§ * 4);
         }
         _loc4_.setBlendFactors(this.§@!L§,this.§?!,§);
         _loc4_.setProgram(§%!%§.§"T§.§1'§(_loc3_));
         _loc4_.setTextureAt(0,this.§3",§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§9r§,§6"5§.§"!L§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§-!§,§6"5§.§1I§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§-!p§,§6"5§.§%!;§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§<!p§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§>!5§,0,this.§'H§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §#!V§() : Boolean
      {
         return false;
      }
      
      public function get §""3§() : int
      {
         return this.§;<§.§"@§ / 4;
      }
      
      public function get §0!A§() : int
      {
         return this.§]?§;
      }
      
      public function get §+J§() : Number
      {
         return this.§-S§;
      }
      
      public function set §+J§(param1:Number) : void
      {
         this.§-S§ = param1;
      }
      
      public function get §'A§() : Number
      {
         return this.§=!6§;
      }
      
      public function set §'A§(param1:Number) : void
      {
         this.§=!6§ = param1;
      }
      
      public function get §4;§() : Number
      {
         return this.§%!P§;
      }
      
      public function set §4;§(param1:Number) : void
      {
         this.§%!P§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§3",§;
      }
   }
}
