package §#!7§
{
   import §2m§.§<!?§;
   import §2m§.§@>§;
   import §2m§.§^[§;
   import §7H§.§'!w§;
   import §85§.§?!%§;
   import §?]§.Texture;
   import §[z§.§+"#§;
   import §`g§.DisplayObject;
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
   
   public class §5C§ extends DisplayObject implements §?!%§
   {
       
      
      private var §!=§:Texture;
      
      private var §[m§:Vector.<§=!m§>;
      
      private var §5!'§:Number;
      
      private var §^t§:Vector.<Number>;
      
      private var §&!T§:Vector.<Number>;
      
      private var §[!K§:§'!w§;
      
      private var §#-§:VertexBuffer3D;
      
      private var §1!&§:VertexBuffer3D;
      
      private var §^!p§:VertexBuffer3D;
      
      private var §0!c§:Vector.<uint>;
      
      private var §else§:IndexBuffer3D;
      
      private var §1!2§:int;
      
      private var § j§:int;
      
      private var §5'§:Number;
      
      protected var §8!2§:Number;
      
      private var §--§:Number = 0.0;
      
      private var §5!C§:Number;
      
      protected var §^!x§:Number;
      
      protected var §7p§:Number;
      
      protected var §@!P§:Boolean;
      
      protected var §9!_§:String;
      
      protected var §[9§:String;
      
      protected var §@!T§:String;
      
      private var §[!J§:int = -1;
      
      private var §+=§:Boolean = false;
      
      private var §!!8§:Number = 0.0;
      
      public function §5C§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§!=§ = param1;
         this.§@!P§ = param1.premultipliedAlpha;
         this.§[m§ = new Vector.<§=!m§>(0,false);
         this.§^t§ = new Vector.<Number>();
         this.§&!T§ = new Vector.<Number>();
         this.§[!K§ = new §'!w§(0,this.§@!P§);
         this.§0!c§ = new Vector.<uint>(0);
         this.§5'§ = param2;
         this.§5!C§ = 0;
         this.§5!'§ = 0;
         this.§7p§ = 0;
         this.§^!x§ = 0;
         this.§[9§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§9!_§ = param4 || (!!this.§@!P§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§?r§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#-§)
         {
            this.§#-§.dispose();
         }
         if(this.§1!&§)
         {
            this.§1!&§.dispose();
         }
         if(this.§^!p§)
         {
            this.§^!p§.dispose();
         }
         if(this.§else§)
         {
            this.§else§.dispose();
         }
         this.§^t§ = null;
         this.§&!T§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §=!m§
      {
         return new §=!m§();
      }
      
      protected function initParticle(param1:§=!m§) : void
      {
         param1.x = this.§^!x§;
         param1.y = this.§7p§;
         param1.§[!v§ = 0;
         param1.§6k§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§=!m§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§[!v§ / param1.§6k§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§[!v§ += param2;
      }
      
      private function §?r§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§!!X§;
         var _loc3_:int = this.§!!X§ + param1;
         var _loc4_:§'!w§;
         (_loc4_ = new §'!w§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§!=§.adjustVertexData(_loc4_,0,4);
         this.§[m§.fixed = false;
         this.§0!c§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§[m§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§^t§.push(0);
               this.§&!T§.push(0);
               _loc7_++;
            }
            this.§[!K§.append(_loc4_);
            this.§0!c§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§[m§.fixed = true;
         this.§0!c§.fixed = true;
         this.§+=§ = true;
      }
      
      private function §`!u§(param1:Context3D) : Boolean
      {
         if(!this.§+=§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §+"#§();
         }
         var _loc2_:int = this.§[!K§.§52§ / 4;
         if(this.§#-§)
         {
            this.§#-§.dispose();
         }
         if(this.§1!&§)
         {
            this.§1!&§.dispose();
         }
         if(this.§^!p§)
         {
            this.§^!p§.dispose();
         }
         if(this.§else§)
         {
            this.§else§.dispose();
         }
         this.§#-§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§#![§);
         this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,_loc2_ * 4);
         this.§1!&§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§%I§);
         this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,_loc2_ * 4);
         this.§^!p§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§9>§);
         this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,_loc2_ * 4);
         this.§else§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§else§.uploadFromVector(this.§0!c§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§5'§ != 0)
         {
            this.§5!C§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§5!C§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §,!g§(param1);
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
      
      public function §in§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§^5§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§!!8§ = param1;
      }
      
      private function §^5§(param1:Matrix3D) : void
      {
         var _loc4_:§=!m§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§=!m§ = null;
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
         if(isNaN(this.§!!8§) || this.§!!8§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§!!8§;
         this.§!!8§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§1!2§)
         {
            if((_loc4_ = this.§[m§[_loc3_]).§[!v§ < _loc4_.§6k§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§1!2§ - 1)
               {
                  _loc11_ = this.§[m§[this.§1!2§ - 1];
                  this.§[m§[this.§1!2§ - 1] = _loc4_;
                  this.§[m§[_loc3_] = _loc11_;
               }
               --this.§1!2§;
            }
         }
         if(this.§5!C§ > 0)
         {
            _loc12_ = 1 / this.§5'§;
            this.§5!'§ += _loc2_;
            while(this.§5!'§ > 0)
            {
               if(this.§1!2§ == this.§!!X§)
               {
                  this.§?r§(this.§!!X§);
               }
               _loc4_ = this.§[m§[this.§1!2§++] as §=!m§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§5!'§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§8!2§))
               {
                  _loc13_ = _loc12_ * (1 - this.§8!2§ + Math.random() * this.§8!2§ * 2) + this.§--§;
               }
               this.§--§ += _loc12_ - _loc13_;
               this.§5!'§ -= _loc13_;
            }
            if(this.§5!C§ != Number.MAX_VALUE)
            {
               this.§5!C§ = Math.max(0,this.§5!C§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§!=§.width;
         var _loc9_:Number = this.§!=§.height;
         this.§ j§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§^z§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§1!2§)
            {
               _loc6_ = (_loc4_ = this.§[m§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§&!T§[_loc14_ * 3];
               _loc17_ = this.§&!T§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§<!?§.§,=§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §<!?§.§,=§.§'!^§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§ j§;
                  this.§[!K§.§#!s§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§[!K§.§6!T§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§[!K§.§6!T§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§[!K§.§6!T§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§[!K§.§6!T§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§[!K§.§6!T§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§[!K§.§6!T§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§[!K§.§6!T§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§[!K§.§6!T§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §^z§(param1:Matrix3D) : void
      {
         var _loc3_:§=!m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!2§)
         {
            _loc3_ = this.§[m§[_loc2_];
            this.§^t§[_loc2_ * 3] = _loc3_.x;
            this.§^t§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§^t§,this.§&!T§);
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         this.§^5§(param1.§7w§);
         if(this.§ j§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §^[§.§,2§(param2 != 1,this.§!=§.mipMapping,false,this.§@!T§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§"Y§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§@!P§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§9<§ != this.§[!J§)
         {
            this.§?r§(0);
            this.§[!J§ = param1.§9<§;
         }
         if(!this.§`!u§(_loc4_))
         {
            this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,this.§ j§ * 4);
            this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,this.§ j§ * 4);
         }
         _loc4_.setBlendFactors(this.§9!_§,this.§[9§);
         _loc4_.setProgram(§<!?§.§,=§.§"u§(_loc3_));
         _loc4_.setTextureAt(0,this.§!=§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§^!p§,§'!w§.§9!C§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§#-§,§'!w§.§<h§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§1!&§,§'!w§.§2Q§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7w§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§else§,0,this.§ j§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §&W§() : Boolean
      {
         return false;
      }
      
      public function get §!!X§() : int
      {
         return this.§[!K§.§52§ / 4;
      }
      
      public function get §8!E§() : int
      {
         return this.§1!2§;
      }
      
      public function get §3j§() : Number
      {
         return this.§5'§;
      }
      
      public function set §3j§(param1:Number) : void
      {
         this.§5'§ = param1;
      }
      
      public function get §6!>§() : Number
      {
         return this.§^!x§;
      }
      
      public function set §6!>§(param1:Number) : void
      {
         this.§^!x§ = param1;
      }
      
      public function get §]4§() : Number
      {
         return this.§7p§;
      }
      
      public function set §]4§(param1:Number) : void
      {
         this.§7p§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§!=§;
      }
   }
}
