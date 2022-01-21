package §#t§
{
   import §",§.Texture;
   import §4!$§.§"P§;
   import §4!$§.§<!2§;
   import §4!$§.§]!f§;
   import §5x§.DisplayObject;
   import §@8§.§'!@§;
   import §]d§.§;=§;
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
   
   public class §=t§ extends DisplayObject implements §;=§
   {
       
      
      private var §%S§:Texture;
      
      private var §<!d§:Vector.<§]!"§>;
      
      private var §;0§:Number;
      
      private var §`u§:Vector.<Number>;
      
      private var §`!?§:Vector.<Number>;
      
      private var §^!L§:§!i§;
      
      private var §>!$§:VertexBuffer3D;
      
      private var §0!c§:VertexBuffer3D;
      
      private var §-§:VertexBuffer3D;
      
      private var §2E§:Vector.<uint>;
      
      private var §7h§:IndexBuffer3D;
      
      private var §54§:int;
      
      private var §,!X§:int;
      
      private var § 5§:Number;
      
      protected var §@6§:Number;
      
      private var §#!9§:Number = 0.0;
      
      private var §=!W§:Number;
      
      protected var §89§:Number;
      
      protected var §+!H§:Number;
      
      protected var §2!R§:Boolean;
      
      protected var §=!"§:String;
      
      protected var §6l§:String;
      
      protected var §"u§:String;
      
      private var §1_§:int = -1;
      
      private var § E§:Boolean = false;
      
      private var §#O§:Number = 0.0;
      
      public function §=t§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§%S§ = param1;
         this.§2!R§ = param1.premultipliedAlpha;
         this.§<!d§ = new Vector.<§]!"§>(0,false);
         this.§`u§ = new Vector.<Number>();
         this.§`!?§ = new Vector.<Number>();
         this.§^!L§ = new §!i§(0,this.§2!R§);
         this.§2E§ = new Vector.<uint>(0);
         this.§ 5§ = param2;
         this.§=!W§ = 0;
         this.§;0§ = 0;
         this.§+!H§ = 0;
         this.§89§ = 0;
         this.§6l§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§=!"§ = param4 || (!!this.§2!R§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§`!3§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§>!$§)
         {
            this.§>!$§.dispose();
         }
         if(this.§0!c§)
         {
            this.§0!c§.dispose();
         }
         if(this.§-§)
         {
            this.§-§.dispose();
         }
         if(this.§7h§)
         {
            this.§7h§.dispose();
         }
         this.§`u§ = null;
         this.§`!?§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §]!"§
      {
         return new §]!"§();
      }
      
      protected function initParticle(param1:§]!"§) : void
      {
         param1.x = this.§89§;
         param1.y = this.§+!H§;
         param1.§&P§ = 0;
         param1.§4t§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§]!"§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§&P§ / param1.§4t§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§&P§ += param2;
      }
      
      private function §`!3§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§+!,§;
         var _loc3_:int = this.§+!,§ + param1;
         var _loc4_:§!i§;
         (_loc4_ = new §!i§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§%S§.adjustVertexData(_loc4_,0,4);
         this.§<!d§.fixed = false;
         this.§2E§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§<!d§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§`u§.push(0);
               this.§`!?§.push(0);
               _loc7_++;
            }
            this.§^!L§.append(_loc4_);
            this.§2E§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§<!d§.fixed = true;
         this.§2E§.fixed = true;
         this.§ E§ = true;
      }
      
      private function §5X§(param1:Context3D) : Boolean
      {
         if(!this.§ E§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'!@§();
         }
         var _loc2_:int = this.§^!L§.§`h§ / 4;
         if(this.§>!$§)
         {
            this.§>!$§.dispose();
         }
         if(this.§0!c§)
         {
            this.§0!c§.dispose();
         }
         if(this.§-§)
         {
            this.§-§.dispose();
         }
         if(this.§7h§)
         {
            this.§7h§.dispose();
         }
         this.§>!$§ = param1.createVertexBuffer(_loc2_ * 4,§!i§.§8!`§);
         this.§>!$§.uploadFromByteArray(this.§^!L§.§[!n§,0,0,_loc2_ * 4);
         this.§0!c§ = param1.createVertexBuffer(_loc2_ * 4,§!i§.§0D§);
         this.§0!c§.uploadFromVector(this.§^!L§.§4![§,0,_loc2_ * 4);
         this.§-§ = param1.createVertexBuffer(_loc2_ * 4,§!i§.§+s§);
         this.§-§.uploadFromVector(this.§^!L§.§^!_§,0,_loc2_ * 4);
         this.§7h§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7h§.uploadFromVector(this.§2E§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§ 5§ != 0)
         {
            this.§=!W§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§=!W§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §,!S§(param1);
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
      
      public function § x§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§;!F§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§#O§ = param1;
      }
      
      private function §;!F§(param1:Matrix3D) : void
      {
         var _loc4_:§]!"§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§]!"§ = null;
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
         if(isNaN(this.§#O§) || this.§#O§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§#O§;
         this.§#O§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§54§)
         {
            if((_loc4_ = this.§<!d§[_loc3_]).§&P§ < _loc4_.§4t§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§54§ - 1)
               {
                  _loc11_ = this.§<!d§[this.§54§ - 1];
                  this.§<!d§[this.§54§ - 1] = _loc4_;
                  this.§<!d§[_loc3_] = _loc11_;
               }
               --this.§54§;
            }
         }
         if(this.§=!W§ > 0)
         {
            _loc12_ = 1 / this.§ 5§;
            this.§;0§ += _loc2_;
            while(this.§;0§ > 0)
            {
               if(this.§54§ == this.§+!,§)
               {
                  this.§`!3§(this.§+!,§);
               }
               _loc4_ = this.§<!d§[this.§54§++] as §]!"§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§;0§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§@6§))
               {
                  _loc13_ = _loc12_ * (1 - this.§@6§ + Math.random() * this.§@6§ * 2) + this.§#!9§;
               }
               this.§#!9§ += _loc12_ - _loc13_;
               this.§;0§ -= _loc13_;
            }
            if(this.§=!W§ != Number.MAX_VALUE)
            {
               this.§=!W§ = Math.max(0,this.§=!W§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§%S§.width;
         var _loc9_:Number = this.§%S§.height;
         this.§,!X§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§^Z§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§54§)
            {
               _loc6_ = (_loc4_ = this.§<!d§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§`!?§[_loc14_ * 3];
               _loc17_ = this.§`!?§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§<!2§.§[!]§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §<!2§.§[!]§.§'!e§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§,!X§;
                  this.§^!L§.§+<§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§^!L§.§]'§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§^!L§.§]'§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§^!L§.§]'§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§^!L§.§]'§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§^!L§.§]'§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§^!L§.§]'§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§^!L§.§]'§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§^!L§.§]'§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §^Z§(param1:Matrix3D) : void
      {
         var _loc3_:§]!"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§54§)
         {
            _loc3_ = this.§<!d§[_loc2_];
            this.§`u§[_loc2_ * 3] = _loc3_.x;
            this.§`u§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§`u§,this.§`!?§);
      }
      
      override public function render(param1:§]!f§, param2:Number) : void
      {
         this.§;!F§(param1.§%!H§);
         if(this.§,!X§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §"P§.§#2§(param2 != 1,this.§%S§.mipMapping,false,this.§"u§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§8!o§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§2!R§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§`!;§ != this.§1_§)
         {
            this.§`!3§(0);
            this.§1_§ = param1.§`!;§;
         }
         if(!this.§5X§(_loc4_))
         {
            this.§0!c§.uploadFromVector(this.§^!L§.§4![§,0,this.§,!X§ * 4);
            this.§-§.uploadFromVector(this.§^!L§.§^!_§,0,this.§,!X§ * 4);
         }
         _loc4_.setBlendFactors(this.§=!"§,this.§6l§);
         _loc4_.setProgram(§<!2§.§[!]§.§#d§(_loc3_));
         _loc4_.setTextureAt(0,this.§%S§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§-§,§!i§.§8U§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§>!$§,§!i§.§^=§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§0!c§,§!i§.§3>§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§%!H§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§7h§,0,this.§,!X§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §!O§() : Boolean
      {
         return false;
      }
      
      public function get §+!,§() : int
      {
         return this.§^!L§.§`h§ / 4;
      }
      
      public function get §2?§() : int
      {
         return this.§54§;
      }
      
      public function get §+"§() : Number
      {
         return this.§ 5§;
      }
      
      public function set §+"§(param1:Number) : void
      {
         this.§ 5§ = param1;
      }
      
      public function get §?v§() : Number
      {
         return this.§89§;
      }
      
      public function set §?v§(param1:Number) : void
      {
         this.§89§ = param1;
      }
      
      public function get §;!?§() : Number
      {
         return this.§+!H§;
      }
      
      public function set §;!?§(param1:Number) : void
      {
         this.§+!H§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§%S§;
      }
   }
}
