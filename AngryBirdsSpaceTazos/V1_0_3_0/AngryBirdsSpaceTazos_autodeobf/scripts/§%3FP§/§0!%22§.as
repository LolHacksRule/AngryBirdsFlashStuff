package §?P§
{
   import §'@§.Texture;
   import §0"H§.§=Z§;
   import §1f§.§&"@§;
   import §1f§.§9H§;
   import §1f§.§[!J§;
   import §4!h§.§'!;§;
   import §4"@§.DisplayObject;
   import §[4§.§0!r§;
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
   
   public class §0!"§ extends DisplayObject implements §'!;§
   {
       
      
      private var §^!N§:Texture;
      
      private var §6!u§:Vector.<§&!S§>;
      
      private var §#!z§:Number;
      
      private var §>!D§:Vector.<Number>;
      
      private var §<!x§:Vector.<Number>;
      
      private var §#g§:§0!r§;
      
      private var §#!_§:VertexBuffer3D;
      
      private var § !D§:VertexBuffer3D;
      
      private var §!!7§:VertexBuffer3D;
      
      private var §!L§:Vector.<uint>;
      
      private var §8s§:IndexBuffer3D;
      
      private var §7;§:int;
      
      private var §?!^§:int;
      
      private var §+K§:Number;
      
      protected var §=!Q§:Number;
      
      private var §"!4§:Number = 0.0;
      
      private var §2"1§:Number;
      
      protected var §]!<§:Number;
      
      protected var §#>§:Number;
      
      protected var §%"3§:Boolean;
      
      protected var §>V§:String;
      
      protected var §4!-§:String;
      
      protected var §@?§:String;
      
      private var §""E§:int = -1;
      
      private var §&!X§:Boolean = false;
      
      private var §=!i§:Number = 0.0;
      
      public function §0!"§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§^!N§ = param1;
         this.§%"3§ = param1.premultipliedAlpha;
         this.§6!u§ = new Vector.<§&!S§>(0,false);
         this.§>!D§ = new Vector.<Number>();
         this.§<!x§ = new Vector.<Number>();
         this.§#g§ = new §0!r§(0,this.§%"3§);
         this.§!L§ = new Vector.<uint>(0);
         this.§+K§ = param2;
         this.§2"1§ = 0;
         this.§#!z§ = 0;
         this.§#>§ = 0;
         this.§]!<§ = 0;
         this.§4!-§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§>V§ = param4 || (!!this.§%"3§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^r§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#!_§)
         {
            this.§#!_§.dispose();
         }
         if(this.§ !D§)
         {
            this.§ !D§.dispose();
         }
         if(this.§!!7§)
         {
            this.§!!7§.dispose();
         }
         if(this.§8s§)
         {
            this.§8s§.dispose();
         }
         this.§>!D§ = null;
         this.§<!x§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §&!S§
      {
         return new §&!S§();
      }
      
      protected function initParticle(param1:§&!S§) : void
      {
         param1.x = this.§]!<§;
         param1.y = this.§#>§;
         param1.§!p§ = 0;
         param1.§4B§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§&!S§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§!p§ / param1.§4B§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§!p§ += param2;
      }
      
      private function §^r§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§="$§;
         var _loc3_:int = this.§="$§ + param1;
         var _loc4_:§0!r§;
         (_loc4_ = new §0!r§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§^!N§.adjustVertexData(_loc4_,0,4);
         this.§6!u§.fixed = false;
         this.§!L§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§6!u§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§>!D§.push(0);
               this.§<!x§.push(0);
               _loc7_++;
            }
            this.§#g§.append(_loc4_);
            this.§!L§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§6!u§.fixed = true;
         this.§!L§.fixed = true;
         this.§&!X§ = true;
      }
      
      private function §7"-§(param1:Context3D) : Boolean
      {
         if(!this.§&!X§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §=Z§();
         }
         var _loc2_:int = this.§#g§.§^-§ / 4;
         if(this.§#!_§)
         {
            this.§#!_§.dispose();
         }
         if(this.§ !D§)
         {
            this.§ !D§.dispose();
         }
         if(this.§!!7§)
         {
            this.§!!7§.dispose();
         }
         if(this.§8s§)
         {
            this.§8s§.dispose();
         }
         this.§#!_§ = param1.createVertexBuffer(_loc2_ * 4,§0!r§.§ !j§);
         this.§#!_§.uploadFromByteArray(this.§#g§.§%!C§,0,0,_loc2_ * 4);
         this.§ !D§ = param1.createVertexBuffer(_loc2_ * 4,§0!r§.§%!>§);
         this.§ !D§.uploadFromVector(this.§#g§.§4!]§,0,_loc2_ * 4);
         this.§!!7§ = param1.createVertexBuffer(_loc2_ * 4,§0!r§.§3K§);
         this.§!!7§.uploadFromVector(this.§#g§.§@V§,0,_loc2_ * 4);
         this.§8s§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8s§.uploadFromVector(this.§!L§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§+K§ != 0)
         {
            this.§2"1§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§2"1§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §@!H§(param1);
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
      
      public function §=H§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§2"5§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§=!i§ = param1;
      }
      
      private function §2"5§(param1:Matrix3D) : void
      {
         var _loc4_:§&!S§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§&!S§ = null;
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
         if(isNaN(this.§=!i§) || this.§=!i§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§=!i§;
         this.§=!i§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§7;§)
         {
            if((_loc4_ = this.§6!u§[_loc3_]).§!p§ < _loc4_.§4B§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§7;§ - 1)
               {
                  _loc11_ = this.§6!u§[this.§7;§ - 1];
                  this.§6!u§[this.§7;§ - 1] = _loc4_;
                  this.§6!u§[_loc3_] = _loc11_;
               }
               --this.§7;§;
            }
         }
         if(this.§2"1§ > 0)
         {
            _loc12_ = 1 / this.§+K§;
            this.§#!z§ += _loc2_;
            while(this.§#!z§ > 0)
            {
               if(this.§7;§ == this.§="$§)
               {
                  this.§^r§(this.§="$§);
               }
               _loc4_ = this.§6!u§[this.§7;§++] as §&!S§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§#!z§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§=!Q§))
               {
                  _loc13_ = _loc12_ * (1 - this.§=!Q§ + Math.random() * this.§=!Q§ * 2) + this.§"!4§;
               }
               this.§"!4§ += _loc12_ - _loc13_;
               this.§#!z§ -= _loc13_;
            }
            if(this.§2"1§ != Number.MAX_VALUE)
            {
               this.§2"1§ = Math.max(0,this.§2"1§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§^!N§.width;
         var _loc9_:Number = this.§^!N§.height;
         this.§?!^§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§+!D§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§7;§)
            {
               _loc6_ = (_loc4_ = this.§6!u§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§<!x§[_loc14_ * 3];
               _loc17_ = this.§<!x§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§9H§.§0"'§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §9H§.§0"'§.§'f§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§?!^§;
                  this.§#g§.§6s§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§#g§.§'!@§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§#g§.§'!@§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§#g§.§'!@§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§#g§.§'!@§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§#g§.§'!@§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§#g§.§'!@§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§#g§.§'!@§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§#g§.§'!@§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §+!D§(param1:Matrix3D) : void
      {
         var _loc3_:§&!S§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7;§)
         {
            _loc3_ = this.§6!u§[_loc2_];
            this.§>!D§[_loc2_ * 3] = _loc3_.x;
            this.§>!D§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§>!D§,this.§<!x§);
      }
      
      override public function render(param1:§&"@§, param2:Number) : void
      {
         this.§2"5§(param1.§#!$§);
         if(this.§?!^§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §[!J§.§6K§(param2 != 1,this.§^!N§.mipMapping,false,this.§@?§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§>!V§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§%"3§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§9L§ != this.§""E§)
         {
            this.§^r§(0);
            this.§""E§ = param1.§9L§;
         }
         if(!this.§7"-§(_loc4_))
         {
            this.§ !D§.uploadFromVector(this.§#g§.§4!]§,0,this.§?!^§ * 4);
            this.§!!7§.uploadFromVector(this.§#g§.§@V§,0,this.§?!^§ * 4);
         }
         _loc4_.setBlendFactors(this.§>V§,this.§4!-§);
         _loc4_.setProgram(§9H§.§0"'§.§@>§(_loc3_));
         _loc4_.setTextureAt(0,this.§^!N§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§!!7§,§0!r§.§%!<§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§#!_§,§0!r§.§ ]§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§ !D§,§0!r§.§"q§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§#!$§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§8s§,0,this.§?!^§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §&!W§() : Boolean
      {
         return false;
      }
      
      public function get §="$§() : int
      {
         return this.§#g§.§^-§ / 4;
      }
      
      public function get §#!N§() : int
      {
         return this.§7;§;
      }
      
      public function get §3x§() : Number
      {
         return this.§+K§;
      }
      
      public function set §3x§(param1:Number) : void
      {
         this.§+K§ = param1;
      }
      
      public function get §3<§() : Number
      {
         return this.§]!<§;
      }
      
      public function set §3<§(param1:Number) : void
      {
         this.§]!<§ = param1;
      }
      
      public function get §>!E§() : Number
      {
         return this.§#>§;
      }
      
      public function set §>!E§(param1:Number) : void
      {
         this.§#>§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§^!N§;
      }
   }
}
