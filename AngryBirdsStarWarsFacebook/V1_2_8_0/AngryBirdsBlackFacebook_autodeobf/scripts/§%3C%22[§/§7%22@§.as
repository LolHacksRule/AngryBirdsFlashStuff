package §<"[§
{
   import § "-§.§"!_§;
   import § "-§.§6!R§;
   import § "-§.§7"n§;
   import §&"s§.Texture;
   import §7"G§.§%!§;
   import §7_§.§2"[§;
   import §[a§.§8"h§;
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
   import §use§.DisplayObject;
   
   public class §7"@§ extends DisplayObject implements §8"h§
   {
       
      
      private var §'"C§:Texture;
      
      private var §;!p§:Vector.<§?R§>;
      
      private var §5'§:Number;
      
      private var §`!`§:Vector.<Number>;
      
      private var §>!j§:Vector.<Number>;
      
      private var §!k§:§%!§;
      
      private var §3"0§:VertexBuffer3D;
      
      private var §7!3§:VertexBuffer3D;
      
      private var §>"a§:VertexBuffer3D;
      
      private var §;!a§:Vector.<uint>;
      
      private var §;! §:IndexBuffer3D;
      
      private var §+"S§:int;
      
      private var §0"I§:int;
      
      private var §+!C§:Number;
      
      protected var §1!P§:Number;
      
      private var §`!r§:Number = 0.0;
      
      private var §-"k§:Number;
      
      protected var §^+§:Number;
      
      protected var §&!X§:Number;
      
      protected var §8q§:Boolean;
      
      protected var §@"§:String;
      
      protected var §>"M§:String;
      
      protected var §]#+§:String;
      
      private var §+"V§:int = -1;
      
      private var §]!7§:Boolean = false;
      
      private var §7N§:Number = 0.0;
      
      public function §7"@§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§'"C§ = param1;
         this.§8q§ = param1.premultipliedAlpha;
         this.§;!p§ = new Vector.<§?R§>(0,false);
         this.§`!`§ = new Vector.<Number>();
         this.§>!j§ = new Vector.<Number>();
         this.§!k§ = new §%!§(0,this.§8q§);
         this.§;!a§ = new Vector.<uint>(0);
         this.§+!C§ = param2;
         this.§-"k§ = 0;
         this.§5'§ = 0;
         this.§&!X§ = 0;
         this.§^+§ = 0;
         this.§>"M§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§@"§ = param4 || (!!this.§8q§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§8!q§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3"0§)
         {
            this.§3"0§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§>"a§)
         {
            this.§>"a§.dispose();
         }
         if(this.§;! §)
         {
            this.§;! §.dispose();
         }
         this.§`!`§ = null;
         this.§>!j§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §?R§
      {
         return new §?R§();
      }
      
      protected function initParticle(param1:§?R§) : void
      {
         param1.x = this.§^+§;
         param1.y = this.§&!X§;
         param1.currentTime = 0;
         param1.§^!g§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§?R§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§^!g§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §8!q§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§`p§;
         var _loc3_:int = this.§`p§ + param1;
         var _loc4_:§%!§;
         (_loc4_ = new §%!§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§'"C§.adjustVertexData(_loc4_,0,4);
         this.§;!p§.fixed = false;
         this.§;!a§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§;!p§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§`!`§.push(0);
               this.§>!j§.push(0);
               _loc7_++;
            }
            this.§!k§.append(_loc4_);
            this.§;!a§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§;!p§.fixed = true;
         this.§;!a§.fixed = true;
         this.§]!7§ = true;
      }
      
      private function §]?§(param1:Context3D) : Boolean
      {
         if(!this.§]!7§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2"[§();
         }
         var _loc2_:int = this.§!k§.§3"L§ / 4;
         if(this.§3"0§)
         {
            this.§3"0§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§>"a§)
         {
            this.§>"a§.dispose();
         }
         if(this.§;! §)
         {
            this.§;! §.dispose();
         }
         this.§3"0§ = param1.createVertexBuffer(_loc2_ * 4,§%!§.§1"D§);
         this.§3"0§.uploadFromByteArray(this.§!k§.§9!v§,0,0,_loc2_ * 4);
         this.§7!3§ = param1.createVertexBuffer(_loc2_ * 4,§%!§.§6"4§);
         this.§7!3§.uploadFromVector(this.§!k§.§4#!§,0,_loc2_ * 4);
         this.§>"a§ = param1.createVertexBuffer(_loc2_ * 4,§%!§.§&"j§);
         this.§>"a§.uploadFromVector(this.§!k§.§1"2§,0,_loc2_ * 4);
         this.§;! § = param1.createIndexBuffer(_loc2_ * 6);
         this.§;! §.uploadFromVector(this.§;!a§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§+!C§ != 0)
         {
            this.§-"k§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§-"k§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §]!-§(param1);
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
      
      public function §&w§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§""§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§7N§ = param1;
      }
      
      private function §""§(param1:Matrix3D) : void
      {
         var _loc4_:§?R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§?R§ = null;
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
         if(isNaN(this.§7N§) || this.§7N§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§7N§;
         this.§7N§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+"S§)
         {
            if((_loc4_ = this.§;!p§[_loc3_]).currentTime < _loc4_.§^!g§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§+"S§ - 1)
               {
                  _loc11_ = this.§;!p§[this.§+"S§ - 1];
                  this.§;!p§[this.§+"S§ - 1] = _loc4_;
                  this.§;!p§[_loc3_] = _loc11_;
               }
               --this.§+"S§;
            }
         }
         if(this.§-"k§ > 0)
         {
            _loc12_ = 1 / this.§+!C§;
            this.§5'§ += _loc2_;
            while(this.§5'§ > 0)
            {
               if(this.§+"S§ == this.§`p§)
               {
                  this.§8!q§(this.§`p§);
               }
               _loc4_ = this.§;!p§[this.§+"S§++] as §?R§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5'§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§1!P§))
               {
                  _loc13_ = _loc12_ * (1 - this.§1!P§ + Math.random() * this.§1!P§ * 2) + this.§`!r§;
               }
               this.§`!r§ += _loc12_ - _loc13_;
               this.§5'§ -= _loc13_;
            }
            if(this.§-"k§ != Number.MAX_VALUE)
            {
               this.§-"k§ = Math.max(0,this.§-"k§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§'"C§.width;
         var _loc9_:Number = this.§'"C§.height;
         this.§0"I§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§^!=§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§+"S§)
            {
               _loc6_ = (_loc4_ = this.§;!p§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§>!j§[_loc14_ * 3];
               _loc17_ = this.§>!j§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§6!R§.§+!d§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §6!R§.§+!d§.§2c§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§0"I§;
                  this.§!k§.§9"Z§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§!k§.§9u§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§!k§.§9u§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§!k§.§9u§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§!k§.§9u§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§!k§.§9u§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§!k§.§9u§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§!k§.§9u§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§!k§.§9u§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §^!=§(param1:Matrix3D) : void
      {
         var _loc3_:§?R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"S§)
         {
            _loc3_ = this.§;!p§[_loc2_];
            this.§`!`§[_loc2_ * 3] = _loc3_.x;
            this.§`!`§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§`!`§,this.§>!j§);
      }
      
      override public function render(param1:§"!_§, param2:Number) : void
      {
         this.§""§(param1.§,"f§);
         if(this.§0"I§ == 0)
         {
            return;
         }
         param1.§5"=§();
         param2 *= this.alpha;
         var _loc3_:String = §7"n§.§,!1§(param2 != 1,this.§'"C§.mipMapping,false,this.§]#+§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§8D§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§8q§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§1!p§ != this.§+"V§)
         {
            this.§8!q§(0);
            this.§+"V§ = param1.§1!p§;
         }
         if(!this.§]?§(_loc4_))
         {
            this.§7!3§.uploadFromVector(this.§!k§.§4#!§,0,this.§0"I§ * 4);
            this.§>"a§.uploadFromVector(this.§!k§.§1"2§,0,this.§0"I§ * 4);
         }
         _loc4_.setBlendFactors(this.§@"§,this.§>"M§);
         _loc4_.setProgram(§6!R§.§+!d§.§^"V§(_loc3_));
         _loc4_.setTextureAt(0,this.§'"C§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§>"a§,§%!§.§<"m§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§3"0§,§%!§.§5!y§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§7!3§,§%!§.§ Z§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§,"f§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§;! §,0,this.§0"I§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get isComplete() : Boolean
      {
         return false;
      }
      
      public function get §`p§() : int
      {
         return this.§!k§.§3"L§ / 4;
      }
      
      public function get §`!M§() : int
      {
         return this.§+"S§;
      }
      
      public function get §;"D§() : Number
      {
         return this.§+!C§;
      }
      
      public function set §;"D§(param1:Number) : void
      {
         this.§+!C§ = param1;
      }
      
      public function get §'C§() : Number
      {
         return this.§^+§;
      }
      
      public function set §'C§(param1:Number) : void
      {
         this.§^+§ = param1;
      }
      
      public function get §0;§() : Number
      {
         return this.§&!X§;
      }
      
      public function set §0;§(param1:Number) : void
      {
         this.§&!X§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§'"C§;
      }
   }
}
