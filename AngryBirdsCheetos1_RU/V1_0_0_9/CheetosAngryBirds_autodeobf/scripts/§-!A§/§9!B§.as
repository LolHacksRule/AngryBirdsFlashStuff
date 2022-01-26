package §-!A§
{
   import §#!`§.Texture;
   import §'!S§.§,!%§;
   import §'!S§.§5[§;
   import §'!S§.§73§;
   import §-W§.§%g§;
   import §7u§.DisplayObject;
   import §86§.§>!J§;
   import §@u§.§@!1§;
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
   
   public class §9!B§ extends DisplayObject implements §>!J§
   {
       
      
      private var § 4§:Texture;
      
      private var §2V§:Vector.<§@!4§>;
      
      private var §get §:Number;
      
      private var §!R§:Vector.<Number>;
      
      private var §&_§:Vector.<Number>;
      
      private var §7P§:§@!1§;
      
      private var §=!T§:VertexBuffer3D;
      
      private var §35§:VertexBuffer3D;
      
      private var §'!X§:VertexBuffer3D;
      
      private var §+!D§:Vector.<uint>;
      
      private var §5m§:IndexBuffer3D;
      
      private var §4!J§:int;
      
      private var §@Y§:int;
      
      private var §1n§:Number;
      
      protected var §2A§:Number;
      
      private var §9[§:Number = 0.0;
      
      private var §>!7§:Number;
      
      protected var §3-§:Number;
      
      protected var §#G§:Number;
      
      protected var §;!W§:Boolean;
      
      protected var §1!?§:String;
      
      protected var §],§:String;
      
      protected var §7Q§:String;
      
      private var §!! §:int = -1;
      
      private var §6"§:Boolean = false;
      
      private var §&a§:Number = 0.0;
      
      public function §9!B§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§ 4§ = param1;
         this.§;!W§ = param1.premultipliedAlpha;
         this.§2V§ = new Vector.<§@!4§>(0,false);
         this.§!R§ = new Vector.<Number>();
         this.§&_§ = new Vector.<Number>();
         this.§7P§ = new §@!1§(0,this.§;!W§);
         this.§+!D§ = new Vector.<uint>(0);
         this.§1n§ = param2;
         this.§>!7§ = 0;
         this.§get § = 0;
         this.§#G§ = 0;
         this.§3-§ = 0;
         this.§],§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§1!?§ = param4 || (!!this.§;!W§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§%s§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§=!T§)
         {
            this.§=!T§.dispose();
         }
         if(this.§35§)
         {
            this.§35§.dispose();
         }
         if(this.§'!X§)
         {
            this.§'!X§.dispose();
         }
         if(this.§5m§)
         {
            this.§5m§.dispose();
         }
         this.§!R§ = null;
         this.§&_§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §@!4§
      {
         return new §@!4§();
      }
      
      protected function initParticle(param1:§@!4§) : void
      {
         param1.x = this.§3-§;
         param1.y = this.§#G§;
         param1.§;!?§ = 0;
         param1.§94§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§@!4§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§;!?§ / param1.§94§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§;!?§ += param2;
      }
      
      private function §%s§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§3X§;
         var _loc3_:int = this.§3X§ + param1;
         var _loc4_:§@!1§;
         (_loc4_ = new §@!1§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§ 4§.adjustVertexData(_loc4_,0,4);
         this.§2V§.fixed = false;
         this.§+!D§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§2V§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§!R§.push(0);
               this.§&_§.push(0);
               _loc7_++;
            }
            this.§7P§.append(_loc4_);
            this.§+!D§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§2V§.fixed = true;
         this.§+!D§.fixed = true;
         this.§6"§ = true;
      }
      
      private function §`#§(param1:Context3D) : Boolean
      {
         if(!this.§6"§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%g§();
         }
         var _loc2_:int = this.§7P§.§'!%§ / 4;
         if(this.§=!T§)
         {
            this.§=!T§.dispose();
         }
         if(this.§35§)
         {
            this.§35§.dispose();
         }
         if(this.§'!X§)
         {
            this.§'!X§.dispose();
         }
         if(this.§5m§)
         {
            this.§5m§.dispose();
         }
         this.§=!T§ = param1.createVertexBuffer(_loc2_ * 4,§@!1§.§3+§);
         this.§=!T§.uploadFromByteArray(this.§7P§.§9=§,0,0,_loc2_ * 4);
         this.§35§ = param1.createVertexBuffer(_loc2_ * 4,§@!1§.§#X§);
         this.§35§.uploadFromVector(this.§7P§.§6Y§,0,_loc2_ * 4);
         this.§'!X§ = param1.createVertexBuffer(_loc2_ * 4,§@!1§.§!9§);
         this.§'!X§.uploadFromVector(this.§7P§.§1^§,0,_loc2_ * 4);
         this.§5m§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5m§.uploadFromVector(this.§+!D§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§1n§ != 0)
         {
            this.§>!7§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§>!7§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §9P§(param1);
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
      
      public function §2s§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§50§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§&a§ = param1;
      }
      
      private function §50§(param1:Matrix3D) : void
      {
         var _loc4_:§@!4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§@!4§ = null;
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
         if(isNaN(this.§&a§) || this.§&a§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§&a§;
         this.§&a§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§4!J§)
         {
            if((_loc4_ = this.§2V§[_loc3_]).§;!?§ < _loc4_.§94§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§4!J§ - 1)
               {
                  _loc11_ = this.§2V§[this.§4!J§ - 1];
                  this.§2V§[this.§4!J§ - 1] = _loc4_;
                  this.§2V§[_loc3_] = _loc11_;
               }
               --this.§4!J§;
            }
         }
         if(this.§>!7§ > 0)
         {
            _loc12_ = 1 / this.§1n§;
            this.§get § += _loc2_;
            while(this.§get § > 0)
            {
               if(this.§4!J§ == this.§3X§)
               {
                  this.§%s§(this.§3X§);
               }
               _loc4_ = this.§2V§[this.§4!J§++] as §@!4§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§get §);
               _loc13_ = _loc12_;
               if(!isNaN(this.§2A§))
               {
                  _loc13_ = _loc12_ * (1 - this.§2A§ + Math.random() * this.§2A§ * 2) + this.§9[§;
               }
               this.§9[§ += _loc12_ - _loc13_;
               this.§get § -= _loc13_;
            }
            if(this.§>!7§ != Number.MAX_VALUE)
            {
               this.§>!7§ = Math.max(0,this.§>!7§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§ 4§.width;
         var _loc9_:Number = this.§ 4§.height;
         this.§@Y§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§@L§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§4!J§)
            {
               _loc6_ = (_loc4_ = this.§2V§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§&_§[_loc14_ * 3];
               _loc17_ = this.§&_§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§,!%§.§]!C§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §,!%§.§]!C§.§3I§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§@Y§;
                  this.§7P§.§+j§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§7P§.§9D§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§7P§.§9D§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§7P§.§9D§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§7P§.§9D§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§7P§.§9D§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§7P§.§9D§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§7P§.§9D§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§7P§.§9D§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §@L§(param1:Matrix3D) : void
      {
         var _loc3_:§@!4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!J§)
         {
            _loc3_ = this.§2V§[_loc2_];
            this.§!R§[_loc2_ * 3] = _loc3_.x;
            this.§!R§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§!R§,this.§&_§);
      }
      
      override public function render(param1:§5[§, param2:Number) : void
      {
         this.§50§(param1.§^!!§);
         if(this.§@Y§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §73§.§"4§(param2 != 1,this.§ 4§.mipMapping,false,this.§7Q§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§ #§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§;!W§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§<!U§ != this.§!! §)
         {
            this.§%s§(0);
            this.§!! § = param1.§<!U§;
         }
         if(!this.§`#§(_loc4_))
         {
            this.§35§.uploadFromVector(this.§7P§.§6Y§,0,this.§@Y§ * 4);
            this.§'!X§.uploadFromVector(this.§7P§.§1^§,0,this.§@Y§ * 4);
         }
         _loc4_.setBlendFactors(this.§1!?§,this.§],§);
         _loc4_.setProgram(§,!%§.§]!C§.§4!P§(_loc3_));
         _loc4_.setTextureAt(0,this.§ 4§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§'!X§,§@!1§.§&E§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§=!T§,§@!1§.§4!+§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§35§,§@!1§.§#!Q§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^!!§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§5m§,0,this.§@Y§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §else§() : Boolean
      {
         return false;
      }
      
      public function get §3X§() : int
      {
         return this.§7P§.§'!%§ / 4;
      }
      
      public function get §1Z§() : int
      {
         return this.§4!J§;
      }
      
      public function get §@;§() : Number
      {
         return this.§1n§;
      }
      
      public function set §@;§(param1:Number) : void
      {
         this.§1n§ = param1;
      }
      
      public function get §&I§() : Number
      {
         return this.§3-§;
      }
      
      public function set §&I§(param1:Number) : void
      {
         this.§3-§ = param1;
      }
      
      public function get § w§() : Number
      {
         return this.§#G§;
      }
      
      public function set § w§(param1:Number) : void
      {
         this.§#G§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§ 4§;
      }
   }
}
