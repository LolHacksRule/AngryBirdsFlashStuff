package §>"6§
{
   import §%! §.§%!d§;
   import §1!5§.§>!Y§;
   import §4!S§.Texture;
   import §5!5§.§'!v§;
   import §5!5§.§?"5§;
   import §5!5§.§^e§;
   import §="#§.§&-§;
   import §^I§.DisplayObject;
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
   
   public class §6$§ extends DisplayObject implements §>!Y§
   {
       
      
      private var §,!>§:Texture;
      
      private var §9&§:Vector.<§4R§>;
      
      private var §8D§:Number;
      
      private var §@z§:Vector.<Number>;
      
      private var §,U§:Vector.<Number>;
      
      private var §;!8§:§&-§;
      
      private var §6!B§:VertexBuffer3D;
      
      private var §`>§:VertexBuffer3D;
      
      private var §0!<§:VertexBuffer3D;
      
      private var §,"#§:Vector.<uint>;
      
      private var §<!1§:IndexBuffer3D;
      
      private var §09§:int;
      
      private var §+!C§:int;
      
      private var §2!Y§:Number;
      
      protected var §3"'§:Number;
      
      private var §],§:Number = 0.0;
      
      private var §]B§:Number;
      
      protected var §9"1§:Number;
      
      protected var §^!i§:Number;
      
      protected var §@!!§:Boolean;
      
      protected var §=!K§:String;
      
      protected var §3v§:String;
      
      protected var §<o§:String;
      
      private var §'Q§:int = -1;
      
      private var §9!$§:Boolean = false;
      
      private var §"H§:Number = 0.0;
      
      public function §6$§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§,!>§ = param1;
         this.§@!!§ = param1.premultipliedAlpha;
         this.§9&§ = new Vector.<§4R§>(0,false);
         this.§@z§ = new Vector.<Number>();
         this.§,U§ = new Vector.<Number>();
         this.§;!8§ = new §&-§(0,this.§@!!§);
         this.§,"#§ = new Vector.<uint>(0);
         this.§2!Y§ = param2;
         this.§]B§ = 0;
         this.§8D§ = 0;
         this.§^!i§ = 0;
         this.§9"1§ = 0;
         this.§3v§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§=!K§ = param4 || (!!this.§@!!§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§1"&§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§6!B§)
         {
            this.§6!B§.dispose();
         }
         if(this.§`>§)
         {
            this.§`>§.dispose();
         }
         if(this.§0!<§)
         {
            this.§0!<§.dispose();
         }
         if(this.§<!1§)
         {
            this.§<!1§.dispose();
         }
         this.§@z§ = null;
         this.§,U§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §4R§
      {
         return new §4R§();
      }
      
      protected function initParticle(param1:§4R§) : void
      {
         param1.x = this.§9"1§;
         param1.y = this.§^!i§;
         param1.§[[§ = 0;
         param1.§!w§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§4R§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§[[§ / param1.§!w§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§[[§ += param2;
      }
      
      private function §1"&§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§?"6§;
         var _loc3_:int = this.§?"6§ + param1;
         var _loc4_:§&-§;
         (_loc4_ = new §&-§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§,!>§.adjustVertexData(_loc4_,0,4);
         this.§9&§.fixed = false;
         this.§,"#§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§9&§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§@z§.push(0);
               this.§,U§.push(0);
               _loc7_++;
            }
            this.§;!8§.append(_loc4_);
            this.§,"#§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§9&§.fixed = true;
         this.§,"#§.fixed = true;
         this.§9!$§ = true;
      }
      
      private function §4!j§(param1:Context3D) : Boolean
      {
         if(!this.§9!$§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%!d§();
         }
         var _loc2_:int = this.§;!8§.§;y§ / 4;
         if(this.§6!B§)
         {
            this.§6!B§.dispose();
         }
         if(this.§`>§)
         {
            this.§`>§.dispose();
         }
         if(this.§0!<§)
         {
            this.§0!<§.dispose();
         }
         if(this.§<!1§)
         {
            this.§<!1§.dispose();
         }
         this.§6!B§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§,u§);
         this.§6!B§.uploadFromByteArray(this.§;!8§.§1"6§,0,0,_loc2_ * 4);
         this.§`>§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§8q§);
         this.§`>§.uploadFromVector(this.§;!8§.§3G§,0,_loc2_ * 4);
         this.§0!<§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§-"4§);
         this.§0!<§.uploadFromVector(this.§;!8§.§&!c§,0,_loc2_ * 4);
         this.§<!1§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§<!1§.uploadFromVector(this.§,"#§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§2!Y§ != 0)
         {
            this.§]B§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§]B§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §,,§(param1);
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
      
      public function §'!V§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§@"4§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§"H§ = param1;
      }
      
      private function §@"4§(param1:Matrix3D) : void
      {
         var _loc4_:§4R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§4R§ = null;
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
         if(isNaN(this.§"H§) || this.§"H§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§"H§;
         this.§"H§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§09§)
         {
            if((_loc4_ = this.§9&§[_loc3_]).§[[§ < _loc4_.§!w§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§09§ - 1)
               {
                  _loc11_ = this.§9&§[this.§09§ - 1];
                  this.§9&§[this.§09§ - 1] = _loc4_;
                  this.§9&§[_loc3_] = _loc11_;
               }
               --this.§09§;
            }
         }
         if(this.§]B§ > 0)
         {
            _loc12_ = 1 / this.§2!Y§;
            this.§8D§ += _loc2_;
            while(this.§8D§ > 0)
            {
               if(this.§09§ == this.§?"6§)
               {
                  this.§1"&§(this.§?"6§);
               }
               _loc4_ = this.§9&§[this.§09§++] as §4R§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§8D§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§3"'§))
               {
                  _loc13_ = _loc12_ * (1 - this.§3"'§ + Math.random() * this.§3"'§ * 2) + this.§],§;
               }
               this.§],§ += _loc12_ - _loc13_;
               this.§8D§ -= _loc13_;
            }
            if(this.§]B§ != Number.MAX_VALUE)
            {
               this.§]B§ = Math.max(0,this.§]B§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§,!>§.width;
         var _loc9_:Number = this.§,!>§.height;
         this.§+!C§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§!]§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§09§)
            {
               _loc6_ = (_loc4_ = this.§9&§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§,U§[_loc14_ * 3];
               _loc17_ = this.§,U§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§^e§.§-_§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §^e§.§-_§.§4O§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§+!C§;
                  this.§;!8§.§`"7§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§;!8§.§%3§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§;!8§.§%3§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§;!8§.§%3§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§;!8§.§%3§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§;!8§.§%3§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§;!8§.§%3§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§;!8§.§%3§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§;!8§.§%3§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §!]§(param1:Matrix3D) : void
      {
         var _loc3_:§4R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§09§)
         {
            _loc3_ = this.§9&§[_loc2_];
            this.§@z§[_loc2_ * 3] = _loc3_.x;
            this.§@z§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§@z§,this.§,U§);
      }
      
      override public function render(param1:§?"5§, param2:Number) : void
      {
         this.§@"4§(param1.§9R§);
         if(this.§+!C§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §'!v§.§5=§(param2 != 1,this.§,!>§.mipMapping,false,this.§<o§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§<W§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§@!!§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§6d§ != this.§'Q§)
         {
            this.§1"&§(0);
            this.§'Q§ = param1.§6d§;
         }
         if(!this.§4!j§(_loc4_))
         {
            this.§`>§.uploadFromVector(this.§;!8§.§3G§,0,this.§+!C§ * 4);
            this.§0!<§.uploadFromVector(this.§;!8§.§&!c§,0,this.§+!C§ * 4);
         }
         _loc4_.setBlendFactors(this.§=!K§,this.§3v§);
         _loc4_.setProgram(§^e§.§-_§.§3"&§(_loc3_));
         _loc4_.setTextureAt(0,this.§,!>§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§0!<§,§&-§.§3"3§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§6!B§,§&-§.§[!z§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§`>§,§&-§.§>!X§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§9R§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§<!1§,0,this.§+!C§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §!!P§() : Boolean
      {
         return false;
      }
      
      public function get §?"6§() : int
      {
         return this.§;!8§.§;y§ / 4;
      }
      
      public function get §%"%§() : int
      {
         return this.§09§;
      }
      
      public function get §6T§() : Number
      {
         return this.§2!Y§;
      }
      
      public function set §6T§(param1:Number) : void
      {
         this.§2!Y§ = param1;
      }
      
      public function get §[!q§() : Number
      {
         return this.§9"1§;
      }
      
      public function set §[!q§(param1:Number) : void
      {
         this.§9"1§ = param1;
      }
      
      public function get §,!;§() : Number
      {
         return this.§^!i§;
      }
      
      public function set §,!;§(param1:Number) : void
      {
         this.§^!i§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§,!>§;
      }
   }
}
