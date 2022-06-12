package §=H§
{
   import §+M§.§7!M§;
   import §-N§.§,!p§;
   import §-N§.§=!]§;
   import §-N§.§?!y§;
   import §1"§.§&+§;
   import §3k§.§@!m§;
   import §7q§.DisplayObject;
   import §8Y§.Texture;
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
   
   public class §2!1§ extends DisplayObject implements §&+§
   {
       
      
      private var §!E§:Texture;
      
      private var §9_§:Vector.<§;!k§>;
      
      private var §2"8§:Number;
      
      private var § x§:Vector.<Number>;
      
      private var §%?§:Vector.<Number>;
      
      private var §@D§:§7!M§;
      
      private var §3D§:VertexBuffer3D;
      
      private var §1]§:VertexBuffer3D;
      
      private var § 1§:VertexBuffer3D;
      
      private var §@",§:Vector.<uint>;
      
      private var §!>§:IndexBuffer3D;
      
      private var §2<§:int;
      
      private var §69§:int;
      
      private var §7!s§:Number;
      
      protected var §"!G§:Number;
      
      private var §'C§:Number = 0.0;
      
      private var §`!j§:Number;
      
      protected var §4!v§:Number;
      
      protected var §<L§:Number;
      
      protected var §&y§:Boolean;
      
      protected var §98§:String;
      
      protected var §3z§:String;
      
      protected var §9!n§:String;
      
      private var §^!"§:int = -1;
      
      private var §[_§:Boolean = false;
      
      private var §@2§:Number = 0.0;
      
      public function §2!1§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!E§ = param1;
         this.§&y§ = param1.premultipliedAlpha;
         this.§9_§ = new Vector.<§;!k§>(0,false);
         this.§ x§ = new Vector.<Number>();
         this.§%?§ = new Vector.<Number>();
         this.§@D§ = new §7!M§(0,this.§&y§);
         this.§@",§ = new Vector.<uint>(0);
         this.§7!s§ = param2;
         this.§`!j§ = 0;
         this.§2"8§ = 0;
         this.§<L§ = 0;
         this.§4!v§ = 0;
         this.§3z§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§98§ = param4 || (!!this.§&y§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§9![§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3D§)
         {
            this.§3D§.dispose();
         }
         if(this.§1]§)
         {
            this.§1]§.dispose();
         }
         if(this.§ 1§)
         {
            this.§ 1§.dispose();
         }
         if(this.§!>§)
         {
            this.§!>§.dispose();
         }
         this.§ x§ = null;
         this.§%?§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §;!k§
      {
         return new §;!k§();
      }
      
      protected function initParticle(param1:§;!k§) : void
      {
         param1.x = this.§4!v§;
         param1.y = this.§<L§;
         param1.§2!p§ = 0;
         param1.§#"§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§;!k§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§2!p§ / param1.§#"§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§2!p§ += param2;
      }
      
      private function §9![§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§`<§;
         var _loc3_:int = this.§`<§ + param1;
         var _loc4_:§7!M§;
         (_loc4_ = new §7!M§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!E§.adjustVertexData(_loc4_,0,4);
         this.§9_§.fixed = false;
         this.§@",§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§9_§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§ x§.push(0);
               this.§%?§.push(0);
               _loc7_++;
            }
            this.§@D§.append(_loc4_);
            this.§@",§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§9_§.fixed = true;
         this.§@",§.fixed = true;
         this.§[_§ = true;
      }
      
      private function §#V§(param1:Context3D) : Boolean
      {
         if(!this.§[_§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@!m§();
         }
         var _loc2_:int = this.§@D§.§9k§ / 4;
         if(this.§3D§)
         {
            this.§3D§.dispose();
         }
         if(this.§1]§)
         {
            this.§1]§.dispose();
         }
         if(this.§ 1§)
         {
            this.§ 1§.dispose();
         }
         if(this.§!>§)
         {
            this.§!>§.dispose();
         }
         this.§3D§ = param1.createVertexBuffer(_loc2_ * 4,§7!M§.§];§);
         this.§3D§.uploadFromByteArray(this.§@D§.§`!t§,0,0,_loc2_ * 4);
         this.§1]§ = param1.createVertexBuffer(_loc2_ * 4,§7!M§.§@""§);
         this.§1]§.uploadFromVector(this.§@D§.§?!$§,0,_loc2_ * 4);
         this.§ 1§ = param1.createVertexBuffer(_loc2_ * 4,§7!M§.§"-§);
         this.§ 1§.uploadFromVector(this.§@D§.§7",§,0,_loc2_ * 4);
         this.§!>§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!>§.uploadFromVector(this.§@",§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§7!s§ != 0)
         {
            this.§`!j§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§`!j§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = § !a§(param1);
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
      
      public function §<!5§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§6!v§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§@2§ = param1;
      }
      
      private function §6!v§(param1:Matrix3D) : void
      {
         var _loc4_:§;!k§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§;!k§ = null;
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
         if(isNaN(this.§@2§) || this.§@2§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§@2§;
         this.§@2§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§2<§)
         {
            if((_loc4_ = this.§9_§[_loc3_]).§2!p§ < _loc4_.§#"§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§2<§ - 1)
               {
                  _loc11_ = this.§9_§[this.§2<§ - 1];
                  this.§9_§[this.§2<§ - 1] = _loc4_;
                  this.§9_§[_loc3_] = _loc11_;
               }
               --this.§2<§;
            }
         }
         if(this.§`!j§ > 0)
         {
            _loc12_ = 1 / this.§7!s§;
            this.§2"8§ += _loc2_;
            while(this.§2"8§ > 0)
            {
               if(this.§2<§ == this.§`<§)
               {
                  this.§9![§(this.§`<§);
               }
               _loc4_ = this.§9_§[this.§2<§++] as §;!k§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§2"8§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§"!G§))
               {
                  _loc13_ = _loc12_ * (1 - this.§"!G§ + Math.random() * this.§"!G§ * 2) + this.§'C§;
               }
               this.§'C§ += _loc12_ - _loc13_;
               this.§2"8§ -= _loc13_;
            }
            if(this.§`!j§ != Number.MAX_VALUE)
            {
               this.§`!j§ = Math.max(0,this.§`!j§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!E§.width;
         var _loc9_:Number = this.§!E§.height;
         this.§69§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§ !O§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§2<§)
            {
               _loc6_ = (_loc4_ = this.§9_§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§%?§[_loc14_ * 3];
               _loc17_ = this.§%?§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§=!]§.§@§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §=!]§.§@§.§+!+§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§69§;
                  this.§@D§.§use§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§@D§.§2!y§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§@D§.§2!y§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§@D§.§2!y§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§@D§.§2!y§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§@D§.§2!y§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§@D§.§2!y§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§@D§.§2!y§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§@D§.§2!y§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function § !O§(param1:Matrix3D) : void
      {
         var _loc3_:§;!k§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§2<§)
         {
            _loc3_ = this.§9_§[_loc2_];
            this.§ x§[_loc2_ * 3] = _loc3_.x;
            this.§ x§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§ x§,this.§%?§);
      }
      
      override public function render(param1:§,!p§, param2:Number) : void
      {
         this.§6!v§(param1.§^!8§);
         if(this.§69§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §?!y§.§7'§(param2 != 1,this.§!E§.mipMapping,false,this.§9!n§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§3",§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§&y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§-!F§ != this.§^!"§)
         {
            this.§9![§(0);
            this.§^!"§ = param1.§-!F§;
         }
         if(!this.§#V§(_loc4_))
         {
            this.§1]§.uploadFromVector(this.§@D§.§?!$§,0,this.§69§ * 4);
            this.§ 1§.uploadFromVector(this.§@D§.§7",§,0,this.§69§ * 4);
         }
         _loc4_.setBlendFactors(this.§98§,this.§3z§);
         _loc4_.setProgram(§=!]§.§@§.§2!5§(_loc3_));
         _loc4_.setTextureAt(0,this.§!E§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§ 1§,§7!M§.§,!K§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§3D§,§7!M§.§5!P§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§1]§,§7!M§.§`![§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^!8§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§!>§,0,this.§69§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §0v§() : Boolean
      {
         return false;
      }
      
      public function get §`<§() : int
      {
         return this.§@D§.§9k§ / 4;
      }
      
      public function get §]l§() : int
      {
         return this.§2<§;
      }
      
      public function get §-0§() : Number
      {
         return this.§7!s§;
      }
      
      public function set §-0§(param1:Number) : void
      {
         this.§7!s§ = param1;
      }
      
      public function get §%!h§() : Number
      {
         return this.§4!v§;
      }
      
      public function set §%!h§(param1:Number) : void
      {
         this.§4!v§ = param1;
      }
      
      public function get §,i§() : Number
      {
         return this.§<L§;
      }
      
      public function set §,i§(param1:Number) : void
      {
         this.§<L§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!E§;
      }
   }
}
