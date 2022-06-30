package §5!C§
{
   import §!!S§.Texture;
   import §&L§.§'I§;
   import §&L§.§<!U§;
   import §&L§.§?]§;
   import §6!;§.DisplayObject;
   import §<1§.§0!Z§;
   import §?h§.§3!&§;
   import §`>§.§6v§;
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
   
   public class §]?§ extends DisplayObject implements §3!&§
   {
       
      
      private var §`!-§:Texture;
      
      private var §4O§:Vector.<§<b§>;
      
      private var §#!&§:Number;
      
      private var §while§:Vector.<Number>;
      
      private var §5k§:Vector.<Number>;
      
      private var §]!D§:§6v§;
      
      private var §7f§:VertexBuffer3D;
      
      private var §;f§:VertexBuffer3D;
      
      private var §9<§:VertexBuffer3D;
      
      private var §53§:Vector.<uint>;
      
      private var §?,§:IndexBuffer3D;
      
      private var §2!Z§:int;
      
      private var §`!Z§:int;
      
      private var §3!K§:Number;
      
      protected var §1!%§:Number;
      
      private var §,!F§:Number = 0.0;
      
      private var § I§:Number;
      
      protected var §%!P§:Number;
      
      protected var §&!'§:Number;
      
      protected var §3!M§:Boolean;
      
      protected var §4!9§:String;
      
      protected var §=I§:String;
      
      protected var §7!V§:String;
      
      private var §4!X§:int = -1;
      
      private var §=!e§:Boolean = false;
      
      private var §2L§:Number = 0.0;
      
      public function §]?§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§`!-§ = param1;
         this.§3!M§ = param1.premultipliedAlpha;
         this.§4O§ = new Vector.<§<b§>(0,false);
         this.§while§ = new Vector.<Number>();
         this.§5k§ = new Vector.<Number>();
         this.§]!D§ = new §6v§(0,this.§3!M§);
         this.§53§ = new Vector.<uint>(0);
         this.§3!K§ = param2;
         this.§ I§ = 0;
         this.§#!&§ = 0;
         this.§&!'§ = 0;
         this.§%!P§ = 0;
         this.§=I§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§4!9§ = param4 || (!!this.§3!M§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§4H§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§7f§)
         {
            this.§7f§.dispose();
         }
         if(this.§;f§)
         {
            this.§;f§.dispose();
         }
         if(this.§9<§)
         {
            this.§9<§.dispose();
         }
         if(this.§?,§)
         {
            this.§?,§.dispose();
         }
         this.§while§ = null;
         this.§5k§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §<b§
      {
         return new §<b§();
      }
      
      protected function initParticle(param1:§<b§) : void
      {
         param1.x = this.§%!P§;
         param1.y = this.§&!'§;
         param1.§-v§ = 0;
         param1.§1!M§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§<b§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§-v§ / param1.§1!M§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§-v§ += param2;
      }
      
      private function §4H§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§6!0§;
         var _loc3_:int = this.§6!0§ + param1;
         var _loc4_:§6v§;
         (_loc4_ = new §6v§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§`!-§.adjustVertexData(_loc4_,0,4);
         this.§4O§.fixed = false;
         this.§53§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§4O§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§while§.push(0);
               this.§5k§.push(0);
               _loc7_++;
            }
            this.§]!D§.append(_loc4_);
            this.§53§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§4O§.fixed = true;
         this.§53§.fixed = true;
         this.§=!e§ = true;
      }
      
      private function §6!P§(param1:Context3D) : Boolean
      {
         if(!this.§=!e§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §0!Z§();
         }
         var _loc2_:int = this.§]!D§.§+!N§ / 4;
         if(this.§7f§)
         {
            this.§7f§.dispose();
         }
         if(this.§;f§)
         {
            this.§;f§.dispose();
         }
         if(this.§9<§)
         {
            this.§9<§.dispose();
         }
         if(this.§?,§)
         {
            this.§?,§.dispose();
         }
         this.§7f§ = param1.createVertexBuffer(_loc2_ * 4,§6v§.§=!E§);
         this.§7f§.uploadFromByteArray(this.§]!D§.§#!F§,0,0,_loc2_ * 4);
         this.§;f§ = param1.createVertexBuffer(_loc2_ * 4,§6v§.§8F§);
         this.§;f§.uploadFromVector(this.§]!D§.§?m§,0,_loc2_ * 4);
         this.§9<§ = param1.createVertexBuffer(_loc2_ * 4,§6v§.§[h§);
         this.§9<§.uploadFromVector(this.§]!D§.§%`§,0,_loc2_ * 4);
         this.§?,§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§?,§.uploadFromVector(this.§53§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§3!K§ != 0)
         {
            this.§ I§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§ I§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §<!§(param1);
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
      
      public function §+!_§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§-k§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§2L§ = param1;
      }
      
      private function §-k§(param1:Matrix3D) : void
      {
         var _loc4_:§<b§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§<b§ = null;
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
         if(isNaN(this.§2L§) || this.§2L§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§2L§;
         this.§2L§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!Z§)
         {
            if((_loc4_ = this.§4O§[_loc3_]).§-v§ < _loc4_.§1!M§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§2!Z§ - 1)
               {
                  _loc11_ = this.§4O§[this.§2!Z§ - 1];
                  this.§4O§[this.§2!Z§ - 1] = _loc4_;
                  this.§4O§[_loc3_] = _loc11_;
               }
               --this.§2!Z§;
            }
         }
         if(this.§ I§ > 0)
         {
            _loc12_ = 1 / this.§3!K§;
            this.§#!&§ += _loc2_;
            while(this.§#!&§ > 0)
            {
               if(this.§2!Z§ == this.§6!0§)
               {
                  this.§4H§(this.§6!0§);
               }
               _loc4_ = this.§4O§[this.§2!Z§++] as §<b§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§#!&§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§1!%§))
               {
                  _loc13_ = _loc12_ * (1 - this.§1!%§ + Math.random() * this.§1!%§ * 2) + this.§,!F§;
               }
               this.§,!F§ += _loc12_ - _loc13_;
               this.§#!&§ -= _loc13_;
            }
            if(this.§ I§ != Number.MAX_VALUE)
            {
               this.§ I§ = Math.max(0,this.§ I§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§`!-§.width;
         var _loc9_:Number = this.§`!-§.height;
         this.§`!Z§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§2!G§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§2!Z§)
            {
               _loc6_ = (_loc4_ = this.§4O§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§5k§[_loc14_ * 3];
               _loc17_ = this.§5k§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§?]§.§`!H§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §?]§.§`!H§.§3-§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§`!Z§;
                  this.§]!D§.§+!E§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§]!D§.§+V§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§]!D§.§+V§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§]!D§.§+V§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§]!D§.§+V§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§]!D§.§+V§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§]!D§.§+V§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§]!D§.§+V§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§]!D§.§+V§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §2!G§(param1:Matrix3D) : void
      {
         var _loc3_:§<b§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!Z§)
         {
            _loc3_ = this.§4O§[_loc2_];
            this.§while§[_loc2_ * 3] = _loc3_.x;
            this.§while§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§while§,this.§5k§);
      }
      
      override public function render(param1:§'I§, param2:Number) : void
      {
         this.§-k§(param1.§,7§);
         if(this.§`!Z§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §<!U§.§'X§(param2 != 1,this.§`!-§.mipMapping,false,this.§7!V§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§-!M§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§3!M§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§!!_§ != this.§4!X§)
         {
            this.§4H§(0);
            this.§4!X§ = param1.§!!_§;
         }
         if(!this.§6!P§(_loc4_))
         {
            this.§;f§.uploadFromVector(this.§]!D§.§?m§,0,this.§`!Z§ * 4);
            this.§9<§.uploadFromVector(this.§]!D§.§%`§,0,this.§`!Z§ * 4);
         }
         _loc4_.setBlendFactors(this.§4!9§,this.§=I§);
         _loc4_.setProgram(§?]§.§`!H§.§&5§(_loc3_));
         _loc4_.setTextureAt(0,this.§`!-§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§9<§,§6v§.§2X§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§7f§,§6v§.§1v§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§;f§,§6v§.§33§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§,7§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§?,§,0,this.§`!Z§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §'H§() : Boolean
      {
         return false;
      }
      
      public function get §6!0§() : int
      {
         return this.§]!D§.§+!N§ / 4;
      }
      
      public function get §-l§() : int
      {
         return this.§2!Z§;
      }
      
      public function get §6c§() : Number
      {
         return this.§3!K§;
      }
      
      public function set §6c§(param1:Number) : void
      {
         this.§3!K§ = param1;
      }
      
      public function get §'C§() : Number
      {
         return this.§%!P§;
      }
      
      public function set §'C§(param1:Number) : void
      {
         this.§%!P§ = param1;
      }
      
      public function get §=1§() : Number
      {
         return this.§&!'§;
      }
      
      public function set §=1§(param1:Number) : void
      {
         this.§&!'§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§`!-§;
      }
   }
}
