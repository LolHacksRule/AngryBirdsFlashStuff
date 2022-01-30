package §-w§
{
   import §%!C§.§5"4§;
   import §+<§.§^"9§;
   import §-!+§.§,7§;
   import §-!+§.§6"6§;
   import §-!+§.§["%§;
   import §9!G§.§8W§;
   import §@!#§.Texture;
   import §`L§.DisplayObject;
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
   
   public class §@E§ extends DisplayObject implements §8W§
   {
       
      
      private var §!"§:Texture;
      
      private var §'E§:Vector.<§^7§>;
      
      private var §%'§:Number;
      
      private var § U§:Vector.<Number>;
      
      private var §#"§:Vector.<Number>;
      
      private var §'B§:§^"9§;
      
      private var §@"&§:VertexBuffer3D;
      
      private var §%"=§:VertexBuffer3D;
      
      private var §%!v§:VertexBuffer3D;
      
      private var §5"'§:Vector.<uint>;
      
      private var §=h§:IndexBuffer3D;
      
      private var §`!P§:int;
      
      private var §5!F§:int;
      
      private var §'O§:Number;
      
      protected var §;x§:Number;
      
      private var §>!S§:Number = 0.0;
      
      private var §;!4§:Number;
      
      protected var §;B§:Number;
      
      protected var §+f§:Number;
      
      protected var § !j§:Boolean;
      
      protected var §9!F§:String;
      
      protected var §3!b§:String;
      
      protected var §8!!§:String;
      
      private var §'"$§:int = -1;
      
      private var §8_§:Boolean = false;
      
      private var §]!H§:Number = 0.0;
      
      public function §@E§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!"§ = param1;
         this.§ !j§ = param1.premultipliedAlpha;
         this.§'E§ = new Vector.<§^7§>(0,false);
         this.§ U§ = new Vector.<Number>();
         this.§#"§ = new Vector.<Number>();
         this.§'B§ = new §^"9§(0,this.§ !j§);
         this.§5"'§ = new Vector.<uint>(0);
         this.§'O§ = param2;
         this.§;!4§ = 0;
         this.§%'§ = 0;
         this.§+f§ = 0;
         this.§;B§ = 0;
         this.§3!b§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§9!F§ = param4 || (!!this.§ !j§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§<O§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@"&§)
         {
            this.§@"&§.dispose();
         }
         if(this.§%"=§)
         {
            this.§%"=§.dispose();
         }
         if(this.§%!v§)
         {
            this.§%!v§.dispose();
         }
         if(this.§=h§)
         {
            this.§=h§.dispose();
         }
         this.§ U§ = null;
         this.§#"§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §^7§
      {
         return new §^7§();
      }
      
      protected function initParticle(param1:§^7§) : void
      {
         param1.x = this.§;B§;
         param1.y = this.§+f§;
         param1.§%<§ = 0;
         param1.§4^§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§^7§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§%<§ / param1.§4^§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§%<§ += param2;
      }
      
      private function §<O§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§3!W§;
         var _loc3_:int = this.§3!W§ + param1;
         var _loc4_:§^"9§;
         (_loc4_ = new §^"9§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!"§.adjustVertexData(_loc4_,0,4);
         this.§'E§.fixed = false;
         this.§5"'§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§'E§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§ U§.push(0);
               this.§#"§.push(0);
               _loc7_++;
            }
            this.§'B§.append(_loc4_);
            this.§5"'§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§'E§.fixed = true;
         this.§5"'§.fixed = true;
         this.§8_§ = true;
      }
      
      private function §8!1§(param1:Context3D) : Boolean
      {
         if(!this.§8_§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §5"4§();
         }
         var _loc2_:int = this.§'B§.§<"&§ / 4;
         if(this.§@"&§)
         {
            this.§@"&§.dispose();
         }
         if(this.§%"=§)
         {
            this.§%"=§.dispose();
         }
         if(this.§%!v§)
         {
            this.§%!v§.dispose();
         }
         if(this.§=h§)
         {
            this.§=h§.dispose();
         }
         this.§@"&§ = param1.createVertexBuffer(_loc2_ * 4,§^"9§.§[!O§);
         this.§@"&§.uploadFromByteArray(this.§'B§.§5"7§,0,0,_loc2_ * 4);
         this.§%"=§ = param1.createVertexBuffer(_loc2_ * 4,§^"9§.§%!^§);
         this.§%"=§.uploadFromVector(this.§'B§.§6!v§,0,_loc2_ * 4);
         this.§%!v§ = param1.createVertexBuffer(_loc2_ * 4,§^"9§.§=!e§);
         this.§%!v§.uploadFromVector(this.§'B§.§7";§,0,_loc2_ * 4);
         this.§=h§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=h§.uploadFromVector(this.§5"'§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§'O§ != 0)
         {
            this.§;!4§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§;!4§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §=q§(param1);
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
      
      public function §^"2§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§&"=§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§]!H§ = param1;
      }
      
      private function §&"=§(param1:Matrix3D) : void
      {
         var _loc4_:§^7§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§^7§ = null;
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
         if(isNaN(this.§]!H§) || this.§]!H§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§]!H§;
         this.§]!H§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§`!P§)
         {
            if((_loc4_ = this.§'E§[_loc3_]).§%<§ < _loc4_.§4^§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§`!P§ - 1)
               {
                  _loc11_ = this.§'E§[this.§`!P§ - 1];
                  this.§'E§[this.§`!P§ - 1] = _loc4_;
                  this.§'E§[_loc3_] = _loc11_;
               }
               --this.§`!P§;
            }
         }
         if(this.§;!4§ > 0)
         {
            _loc12_ = 1 / this.§'O§;
            this.§%'§ += _loc2_;
            while(this.§%'§ > 0)
            {
               if(this.§`!P§ == this.§3!W§)
               {
                  this.§<O§(this.§3!W§);
               }
               _loc4_ = this.§'E§[this.§`!P§++] as §^7§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§%'§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§;x§))
               {
                  _loc13_ = _loc12_ * (1 - this.§;x§ + Math.random() * this.§;x§ * 2) + this.§>!S§;
               }
               this.§>!S§ += _loc12_ - _loc13_;
               this.§%'§ -= _loc13_;
            }
            if(this.§;!4§ != Number.MAX_VALUE)
            {
               this.§;!4§ = Math.max(0,this.§;!4§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!"§.width;
         var _loc9_:Number = this.§!"§.height;
         this.§5!F§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§@!c§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§`!P§)
            {
               _loc6_ = (_loc4_ = this.§'E§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§#"§[_loc14_ * 3];
               _loc17_ = this.§#"§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§6"6§.§^F§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §6"6§.§^F§.§0"?§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§5!F§;
                  this.§'B§.§;j§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§'B§.§+V§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§'B§.§+V§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§'B§.§+V§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§'B§.§+V§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§'B§.§+V§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§'B§.§+V§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§'B§.§+V§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§'B§.§+V§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §@!c§(param1:Matrix3D) : void
      {
         var _loc3_:§^7§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!P§)
         {
            _loc3_ = this.§'E§[_loc2_];
            this.§ U§[_loc2_ * 3] = _loc3_.x;
            this.§ U§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§ U§,this.§#"§);
      }
      
      override public function render(param1:§,7§, param2:Number) : void
      {
         this.§&"=§(param1.§@K§);
         if(this.§5!F§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §["%§.§,;§(param2 != 1,this.§!"§.mipMapping,false,this.§8!!§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§7!T§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§ !j§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§6r§ != this.§'"$§)
         {
            this.§<O§(0);
            this.§'"$§ = param1.§6r§;
         }
         if(!this.§8!1§(_loc4_))
         {
            this.§%"=§.uploadFromVector(this.§'B§.§6!v§,0,this.§5!F§ * 4);
            this.§%!v§.uploadFromVector(this.§'B§.§7";§,0,this.§5!F§ * 4);
         }
         _loc4_.setBlendFactors(this.§9!F§,this.§3!b§);
         _loc4_.setProgram(§6"6§.§^F§.§6x§(_loc3_));
         _loc4_.setTextureAt(0,this.§!"§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§%!v§,§^"9§.§]>§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§@"&§,§^"9§.§6!j§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§%"=§,§^"9§.§-I§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§@K§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§=h§,0,this.§5!F§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §-!d§() : Boolean
      {
         return false;
      }
      
      public function get §3!W§() : int
      {
         return this.§'B§.§<"&§ / 4;
      }
      
      public function get §0!!§() : int
      {
         return this.§`!P§;
      }
      
      public function get §-!_§() : Number
      {
         return this.§'O§;
      }
      
      public function set §-!_§(param1:Number) : void
      {
         this.§'O§ = param1;
      }
      
      public function get §3P§() : Number
      {
         return this.§;B§;
      }
      
      public function set §3P§(param1:Number) : void
      {
         this.§;B§ = param1;
      }
      
      public function get §^!R§() : Number
      {
         return this.§+f§;
      }
      
      public function set §^!R§(param1:Number) : void
      {
         this.§+f§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!"§;
      }
   }
}
