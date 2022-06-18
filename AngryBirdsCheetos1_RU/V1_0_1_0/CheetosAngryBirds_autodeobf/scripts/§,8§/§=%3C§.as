package §,8§
{
   import §"4§.§ !T§;
   import §"4§.§+s§;
   import §"4§.§<h§;
   import §%I§.§-u§;
   import §%W§.§ true§;
   import §&!5§.DisplayObject;
   import §[=§.§`!<§;
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
   import §switch§.Texture;
   
   public class §=<§ extends DisplayObject implements §`!<§
   {
       
      
      private var §#!X§:Texture;
      
      private var §default§:Vector.<§ !"§>;
      
      private var §>U§:Number;
      
      private var §6!3§:Vector.<Number>;
      
      private var §&Z§:Vector.<Number>;
      
      private var § !,§:§ true§;
      
      private var §;!B§:VertexBuffer3D;
      
      private var §^E§:VertexBuffer3D;
      
      private var §;!D§:VertexBuffer3D;
      
      private var §!l§:Vector.<uint>;
      
      private var § b§:IndexBuffer3D;
      
      private var §7R§:int;
      
      private var §1u§:int;
      
      private var §3j§:Number;
      
      protected var §?[§:Number;
      
      private var §4!N§:Number = 0.0;
      
      private var §-!C§:Number;
      
      protected var §#h§:Number;
      
      protected var §?X§:Number;
      
      protected var §<$§:Boolean;
      
      protected var §@!'§:String;
      
      protected var §+!+§:String;
      
      protected var §4#§:String;
      
      private var §@! §:int = -1;
      
      private var §2U§:Boolean = false;
      
      private var §=a§:Number = 0.0;
      
      public function §=<§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§#!X§ = param1;
         this.§<$§ = param1.premultipliedAlpha;
         this.§default§ = new Vector.<§ !"§>(0,false);
         this.§6!3§ = new Vector.<Number>();
         this.§&Z§ = new Vector.<Number>();
         this.§ !,§ = new § true§(0,this.§<$§);
         this.§!l§ = new Vector.<uint>(0);
         this.§3j§ = param2;
         this.§-!C§ = 0;
         this.§>U§ = 0;
         this.§?X§ = 0;
         this.§#h§ = 0;
         this.§+!+§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§@!'§ = param4 || (!!this.§<$§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§3c§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!B§)
         {
            this.§;!B§.dispose();
         }
         if(this.§^E§)
         {
            this.§^E§.dispose();
         }
         if(this.§;!D§)
         {
            this.§;!D§.dispose();
         }
         if(this.§ b§)
         {
            this.§ b§.dispose();
         }
         this.§6!3§ = null;
         this.§&Z§ = null;
         super.dispose();
      }
      
      protected function createParticle() : § !"§
      {
         return new § !"§();
      }
      
      protected function initParticle(param1:§ !"§) : void
      {
         param1.x = this.§#h§;
         param1.y = this.§?X§;
         param1.§&§ = 0;
         param1.§!5§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§ !"§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§&§ / param1.§!5§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§&§ += param2;
      }
      
      private function §3c§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§[6§;
         var _loc3_:int = this.§[6§ + param1;
         var _loc4_:§ true§;
         (_loc4_ = new § true§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§#!X§.adjustVertexData(_loc4_,0,4);
         this.§default§.fixed = false;
         this.§!l§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§default§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§6!3§.push(0);
               this.§&Z§.push(0);
               _loc7_++;
            }
            this.§ !,§.append(_loc4_);
            this.§!l§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§default§.fixed = true;
         this.§!l§.fixed = true;
         this.§2U§ = true;
      }
      
      private function §"!$§(param1:Context3D) : Boolean
      {
         if(!this.§2U§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-u§();
         }
         var _loc2_:int = this.§ !,§.§1o§ / 4;
         if(this.§;!B§)
         {
            this.§;!B§.dispose();
         }
         if(this.§^E§)
         {
            this.§^E§.dispose();
         }
         if(this.§;!D§)
         {
            this.§;!D§.dispose();
         }
         if(this.§ b§)
         {
            this.§ b§.dispose();
         }
         this.§;!B§ = param1.createVertexBuffer(_loc2_ * 4,§ true§.§0!Z§);
         this.§;!B§.uploadFromByteArray(this.§ !,§.§ get§,0,0,_loc2_ * 4);
         this.§^E§ = param1.createVertexBuffer(_loc2_ * 4,§ true§.§,V§);
         this.§^E§.uploadFromVector(this.§ !,§.§]!^§,0,_loc2_ * 4);
         this.§;!D§ = param1.createVertexBuffer(_loc2_ * 4,§ true§.§+l§);
         this.§;!D§.uploadFromVector(this.§ !,§.§;'§,0,_loc2_ * 4);
         this.§ b§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§ b§.uploadFromVector(this.§!l§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§3j§ != 0)
         {
            this.§-!C§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-!C§ = 0;
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
      
      public function §1Z§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§4`§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§=a§ = param1;
      }
      
      private function §4`§(param1:Matrix3D) : void
      {
         var _loc4_:§ !"§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§ !"§ = null;
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
         if(isNaN(this.§=a§) || this.§=a§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§=a§;
         this.§=a§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§7R§)
         {
            if((_loc4_ = this.§default§[_loc3_]).§&§ < _loc4_.§!5§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§7R§ - 1)
               {
                  _loc11_ = this.§default§[this.§7R§ - 1];
                  this.§default§[this.§7R§ - 1] = _loc4_;
                  this.§default§[_loc3_] = _loc11_;
               }
               --this.§7R§;
            }
         }
         if(this.§-!C§ > 0)
         {
            _loc12_ = 1 / this.§3j§;
            this.§>U§ += _loc2_;
            while(this.§>U§ > 0)
            {
               if(this.§7R§ == this.§[6§)
               {
                  this.§3c§(this.§[6§);
               }
               _loc4_ = this.§default§[this.§7R§++] as § !"§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§>U§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§?[§))
               {
                  _loc13_ = _loc12_ * (1 - this.§?[§ + Math.random() * this.§?[§ * 2) + this.§4!N§;
               }
               this.§4!N§ += _loc12_ - _loc13_;
               this.§>U§ -= _loc13_;
            }
            if(this.§-!C§ != Number.MAX_VALUE)
            {
               this.§-!C§ = Math.max(0,this.§-!C§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§#!X§.width;
         var _loc9_:Number = this.§#!X§.height;
         this.§1u§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§3W§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§7R§)
            {
               _loc6_ = (_loc4_ = this.§default§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§&Z§[_loc14_ * 3];
               _loc17_ = this.§&Z§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§<h§.§%!]§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §<h§.§%!]§.§]p§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§1u§;
                  this.§ !,§.§<!5§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§ !,§.§&f§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§ !,§.§&f§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§ !,§.§&f§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§ !,§.§&f§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§ !,§.§&f§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§ !,§.§&f§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§ !,§.§&f§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§ !,§.§&f§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §3W§(param1:Matrix3D) : void
      {
         var _loc3_:§ !"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7R§)
         {
            _loc3_ = this.§default§[_loc2_];
            this.§6!3§[_loc2_ * 3] = _loc3_.x;
            this.§6!3§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§6!3§,this.§&Z§);
      }
      
      override public function render(param1:§+s§, param2:Number) : void
      {
         this.§4`§(param1.§,!Y§);
         if(this.§1u§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = § !T§.§%![§(param2 != 1,this.§#!X§.mipMapping,false,this.§4#§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§69§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§<$§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§'!M§ != this.§@! §)
         {
            this.§3c§(0);
            this.§@! § = param1.§'!M§;
         }
         if(!this.§"!$§(_loc4_))
         {
            this.§^E§.uploadFromVector(this.§ !,§.§]!^§,0,this.§1u§ * 4);
            this.§;!D§.uploadFromVector(this.§ !,§.§;'§,0,this.§1u§ * 4);
         }
         _loc4_.setBlendFactors(this.§@!'§,this.§+!+§);
         _loc4_.setProgram(§<h§.§%!]§.§7f§(_loc3_));
         _loc4_.setTextureAt(0,this.§#!X§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§;!D§,§ true§.§3!E§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§;!B§,§ true§.§>!3§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§^E§,§ true§.§2!_§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§,!Y§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§ b§,0,this.§1u§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §6y§() : Boolean
      {
         return false;
      }
      
      public function get §[6§() : int
      {
         return this.§ !,§.§1o§ / 4;
      }
      
      public function get §-S§() : int
      {
         return this.§7R§;
      }
      
      public function get §>!Q§() : Number
      {
         return this.§3j§;
      }
      
      public function set §>!Q§(param1:Number) : void
      {
         this.§3j§ = param1;
      }
      
      public function get §03§() : Number
      {
         return this.§#h§;
      }
      
      public function set §03§(param1:Number) : void
      {
         this.§#h§ = param1;
      }
      
      public function get §+§() : Number
      {
         return this.§?X§;
      }
      
      public function set §+§(param1:Number) : void
      {
         this.§?X§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§#!X§;
      }
   }
}
