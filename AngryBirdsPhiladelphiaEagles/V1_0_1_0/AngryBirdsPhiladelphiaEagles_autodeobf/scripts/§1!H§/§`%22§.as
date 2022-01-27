package §1!H§
{
   import §#M§.§+L§;
   import §+c§.§ L§;
   import §0l§.Texture;
   import §3H§.DisplayObject;
   import §5J§.§4!3§;
   import §5J§.§>$§;
   import §5J§.§catch§;
   import §=R§.§6I§;
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
   
   public class §`"§ extends DisplayObject implements §6I§
   {
       
      
      private var §+3§:Texture;
      
      private var §0!!§:Vector.<§9a§>;
      
      private var §,[§:Number;
      
      private var §?o§:Vector.<Number>;
      
      private var §`§:Vector.<Number>;
      
      private var §9M§:§+L§;
      
      private var §&!"§:VertexBuffer3D;
      
      private var §]!M§:VertexBuffer3D;
      
      private var §;v§:VertexBuffer3D;
      
      private var §true §:Vector.<uint>;
      
      private var §7=§:IndexBuffer3D;
      
      private var §?!$§:int;
      
      private var §"u§:int;
      
      private var §;!M§:Number;
      
      protected var §[b§:Number;
      
      private var §!A§:Number = 0.0;
      
      private var §&!<§:Number;
      
      protected var §"`§:Number;
      
      protected var §&+§:Number;
      
      protected var §&!@§:Boolean;
      
      protected var §6R§:String;
      
      protected var §"!!§:String;
      
      protected var §=m§:String;
      
      private var §9!5§:int = -1;
      
      private var §<!+§:Boolean = false;
      
      private var §,k§:Number = 0.0;
      
      public function §`"§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§+3§ = param1;
         this.§&!@§ = param1.premultipliedAlpha;
         this.§0!!§ = new Vector.<§9a§>(0,false);
         this.§?o§ = new Vector.<Number>();
         this.§`§ = new Vector.<Number>();
         this.§9M§ = new §+L§(0,this.§&!@§);
         this.§true § = new Vector.<uint>(0);
         this.§;!M§ = param2;
         this.§&!<§ = 0;
         this.§,[§ = 0;
         this.§&+§ = 0;
         this.§"`§ = 0;
         this.§"!!§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§6R§ = param4 || (!!this.§&!@§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§,6§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§&!"§)
         {
            this.§&!"§.dispose();
         }
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
         }
         if(this.§;v§)
         {
            this.§;v§.dispose();
         }
         if(this.§7=§)
         {
            this.§7=§.dispose();
         }
         this.§?o§ = null;
         this.§`§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §9a§
      {
         return new §9a§();
      }
      
      protected function initParticle(param1:§9a§) : void
      {
         param1.x = this.§"`§;
         param1.y = this.§&+§;
         param1.§&Q§ = 0;
         param1.§0!L§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§9a§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§&Q§ / param1.§0!L§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§&Q§ += param2;
      }
      
      private function §,6§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§8!H§;
         var _loc3_:int = this.§8!H§ + param1;
         var _loc4_:§+L§;
         (_loc4_ = new §+L§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§+3§.adjustVertexData(_loc4_,0,4);
         this.§0!!§.fixed = false;
         this.§true §.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§0!!§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§?o§.push(0);
               this.§`§.push(0);
               _loc7_++;
            }
            this.§9M§.append(_loc4_);
            this.§true §.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§0!!§.fixed = true;
         this.§true §.fixed = true;
         this.§<!+§ = true;
      }
      
      private function §6X§(param1:Context3D) : Boolean
      {
         if(!this.§<!+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new § L§();
         }
         var _loc2_:int = this.§9M§.§ a§ / 4;
         if(this.§&!"§)
         {
            this.§&!"§.dispose();
         }
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
         }
         if(this.§;v§)
         {
            this.§;v§.dispose();
         }
         if(this.§7=§)
         {
            this.§7=§.dispose();
         }
         this.§&!"§ = param1.createVertexBuffer(_loc2_ * 4,§+L§.§]J§);
         this.§&!"§.uploadFromByteArray(this.§9M§.§5-§,0,0,_loc2_ * 4);
         this.§]!M§ = param1.createVertexBuffer(_loc2_ * 4,§+L§.§&y§);
         this.§]!M§.uploadFromVector(this.§9M§.§7T§,0,_loc2_ * 4);
         this.§;v§ = param1.createVertexBuffer(_loc2_ * 4,§+L§.§2k§);
         this.§;v§.uploadFromVector(this.§9M§.§!u§,0,_loc2_ * 4);
         this.§7=§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7=§.uploadFromVector(this.§true §,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§;!M§ != 0)
         {
            this.§&!<§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§&!<§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §5F§(param1);
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
      
      public function §%!3§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§'§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§,k§ = param1;
      }
      
      private function §'§(param1:Matrix3D) : void
      {
         var _loc4_:§9a§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§9a§ = null;
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
         if(isNaN(this.§,k§) || this.§,k§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§,k§;
         this.§,k§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!$§)
         {
            if((_loc4_ = this.§0!!§[_loc3_]).§&Q§ < _loc4_.§0!L§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§?!$§ - 1)
               {
                  _loc11_ = this.§0!!§[this.§?!$§ - 1];
                  this.§0!!§[this.§?!$§ - 1] = _loc4_;
                  this.§0!!§[_loc3_] = _loc11_;
               }
               --this.§?!$§;
            }
         }
         if(this.§&!<§ > 0)
         {
            _loc12_ = 1 / this.§;!M§;
            this.§,[§ += _loc2_;
            while(this.§,[§ > 0)
            {
               if(this.§?!$§ == this.§8!H§)
               {
                  this.§,6§(this.§8!H§);
               }
               _loc4_ = this.§0!!§[this.§?!$§++] as §9a§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§,[§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§[b§))
               {
                  _loc13_ = _loc12_ * (1 - this.§[b§ + Math.random() * this.§[b§ * 2) + this.§!A§;
               }
               this.§!A§ += _loc12_ - _loc13_;
               this.§,[§ -= _loc13_;
            }
            if(this.§&!<§ != Number.MAX_VALUE)
            {
               this.§&!<§ = Math.max(0,this.§&!<§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§+3§.width;
         var _loc9_:Number = this.§+3§.height;
         this.§"u§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§2!I§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§?!$§)
            {
               _loc6_ = (_loc4_ = this.§0!!§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§`§[_loc14_ * 3];
               _loc17_ = this.§`§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§>$§.§-U§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §>$§.§-U§.§8F§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§"u§;
                  this.§9M§.§8I§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§9M§.§]V§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§9M§.§]V§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§9M§.§]V§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§9M§.§]V§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§9M§.§]V§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§9M§.§]V§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§9M§.§]V§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§9M§.§]V§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §2!I§(param1:Matrix3D) : void
      {
         var _loc3_:§9a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!$§)
         {
            _loc3_ = this.§0!!§[_loc2_];
            this.§?o§[_loc2_ * 3] = _loc3_.x;
            this.§?o§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§?o§,this.§`§);
      }
      
      override public function render(param1:§4!3§, param2:Number) : void
      {
         this.§'§(param1.§@i§);
         if(this.§"u§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §catch§.§9!1§(param2 != 1,this.§+3§.mipMapping,false,this.§=m§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§0b§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§&!@§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§8N§ != this.§9!5§)
         {
            this.§,6§(0);
            this.§9!5§ = param1.§8N§;
         }
         if(!this.§6X§(_loc4_))
         {
            this.§]!M§.uploadFromVector(this.§9M§.§7T§,0,this.§"u§ * 4);
            this.§;v§.uploadFromVector(this.§9M§.§!u§,0,this.§"u§ * 4);
         }
         _loc4_.setBlendFactors(this.§6R§,this.§"!!§);
         _loc4_.setProgram(§>$§.§-U§.§,!>§(_loc3_));
         _loc4_.setTextureAt(0,this.§+3§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§;v§,§+L§.§6!!§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§&!"§,§+L§.§%!M§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§]!M§,§+L§.§3e§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§@i§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§7=§,0,this.§"u§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §4^§() : Boolean
      {
         return false;
      }
      
      public function get §8!H§() : int
      {
         return this.§9M§.§ a§ / 4;
      }
      
      public function get §1T§() : int
      {
         return this.§?!$§;
      }
      
      public function get §!1§() : Number
      {
         return this.§;!M§;
      }
      
      public function set §!1§(param1:Number) : void
      {
         this.§;!M§ = param1;
      }
      
      public function get §9v§() : Number
      {
         return this.§"`§;
      }
      
      public function set §9v§(param1:Number) : void
      {
         this.§"`§ = param1;
      }
      
      public function get §#!!§() : Number
      {
         return this.§&+§;
      }
      
      public function set §#!!§(param1:Number) : void
      {
         this.§&+§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§+3§;
      }
   }
}
