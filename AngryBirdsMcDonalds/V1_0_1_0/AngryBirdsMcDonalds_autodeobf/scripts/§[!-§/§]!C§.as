package §[!-§
{
   import §"v§.§&!i§;
   import §"v§.§5!T§;
   import §"v§.§`P§;
   import §1!#§.§&A§;
   import §2!g§.DisplayObject;
   import §5!4§.§!1§;
   import §=E§.§`F§;
   import §@j§.Texture;
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
   
   public class §]!C§ extends DisplayObject implements §&A§
   {
       
      
      private var §6l§:Texture;
      
      private var §null §:Vector.<§6!g§>;
      
      private var §9!e§:Number;
      
      private var §+z§:Vector.<Number>;
      
      private var §[r§:Vector.<Number>;
      
      private var §+s§:§`F§;
      
      private var §`g§:VertexBuffer3D;
      
      private var §0^§:VertexBuffer3D;
      
      private var §7!e§:VertexBuffer3D;
      
      private var §9!k§:Vector.<uint>;
      
      private var §,l§:IndexBuffer3D;
      
      private var §;3§:int;
      
      private var §1!b§:int;
      
      private var §7f§:Number;
      
      protected var §6!P§:Number;
      
      private var §?]§:Number = 0.0;
      
      private var §[b§:Number;
      
      protected var §0!j§:Number;
      
      protected var §!!m§:Number;
      
      protected var §7h§:Boolean;
      
      protected var §;h§:String;
      
      protected var §7p§:String;
      
      protected var §9!I§:String;
      
      private var §?x§:int = -1;
      
      private var §3!V§:Boolean = false;
      
      private var §'X§:Number = 0.0;
      
      public function §]!C§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§6l§ = param1;
         this.§7h§ = param1.premultipliedAlpha;
         this.§null § = new Vector.<§6!g§>(0,false);
         this.§+z§ = new Vector.<Number>();
         this.§[r§ = new Vector.<Number>();
         this.§+s§ = new §`F§(0,this.§7h§);
         this.§9!k§ = new Vector.<uint>(0);
         this.§7f§ = param2;
         this.§[b§ = 0;
         this.§9!e§ = 0;
         this.§!!m§ = 0;
         this.§0!j§ = 0;
         this.§7p§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§;h§ = param4 || (!!this.§7h§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§ 3§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§`g§)
         {
            this.§`g§.dispose();
         }
         if(this.§0^§)
         {
            this.§0^§.dispose();
         }
         if(this.§7!e§)
         {
            this.§7!e§.dispose();
         }
         if(this.§,l§)
         {
            this.§,l§.dispose();
         }
         this.§+z§ = null;
         this.§[r§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §6!g§
      {
         return new §6!g§();
      }
      
      protected function initParticle(param1:§6!g§) : void
      {
         param1.x = this.§0!j§;
         param1.y = this.§!!m§;
         param1.§-a§ = 0;
         param1.§3v§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§6!g§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.§-a§ / param1.§3v§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.§-a§ += param2;
      }
      
      private function § 3§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§9y§;
         var _loc3_:int = this.§9y§ + param1;
         var _loc4_:§`F§;
         (_loc4_ = new §`F§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§6l§.adjustVertexData(_loc4_,0,4);
         this.§null §.fixed = false;
         this.§9!k§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§null §.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§+z§.push(0);
               this.§[r§.push(0);
               _loc7_++;
            }
            this.§+s§.append(_loc4_);
            this.§9!k§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§null §.fixed = true;
         this.§9!k§.fixed = true;
         this.§3!V§ = true;
      }
      
      private function §'y§(param1:Context3D) : Boolean
      {
         if(!this.§3!V§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!1§();
         }
         var _loc2_:int = this.§+s§.§@!@§ / 4;
         if(this.§`g§)
         {
            this.§`g§.dispose();
         }
         if(this.§0^§)
         {
            this.§0^§.dispose();
         }
         if(this.§7!e§)
         {
            this.§7!e§.dispose();
         }
         if(this.§,l§)
         {
            this.§,l§.dispose();
         }
         this.§`g§ = param1.createVertexBuffer(_loc2_ * 4,§`F§.§1![§);
         this.§`g§.uploadFromByteArray(this.§+s§.§!4§,0,0,_loc2_ * 4);
         this.§0^§ = param1.createVertexBuffer(_loc2_ * 4,§`F§.§+^§);
         this.§0^§.uploadFromVector(this.§+s§.§7!C§,0,_loc2_ * 4);
         this.§7!e§ = param1.createVertexBuffer(_loc2_ * 4,§`F§.§5C§);
         this.§7!e§.uploadFromVector(this.§+s§.§4!Y§,0,_loc2_ * 4);
         this.§,l§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§,l§.uploadFromVector(this.§9!k§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§7f§ != 0)
         {
            this.§[b§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§[b§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §^i§(param1);
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
      
      public function §!x§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§%c§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§'X§ = param1;
      }
      
      private function §%c§(param1:Matrix3D) : void
      {
         var _loc4_:§6!g§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§6!g§ = null;
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
         if(isNaN(this.§'X§) || this.§'X§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§'X§;
         this.§'X§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§;3§)
         {
            if((_loc4_ = this.§null §[_loc3_]).§-a§ < _loc4_.§3v§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§;3§ - 1)
               {
                  _loc11_ = this.§null §[this.§;3§ - 1];
                  this.§null §[this.§;3§ - 1] = _loc4_;
                  this.§null §[_loc3_] = _loc11_;
               }
               --this.§;3§;
            }
         }
         if(this.§[b§ > 0)
         {
            _loc12_ = 1 / this.§7f§;
            this.§9!e§ += _loc2_;
            while(this.§9!e§ > 0)
            {
               if(this.§;3§ == this.§9y§)
               {
                  this.§ 3§(this.§9y§);
               }
               _loc4_ = this.§null §[this.§;3§++] as §6!g§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§9!e§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§6!P§))
               {
                  _loc13_ = _loc12_ * (1 - this.§6!P§ + Math.random() * this.§6!P§ * 2) + this.§?]§;
               }
               this.§?]§ += _loc12_ - _loc13_;
               this.§9!e§ -= _loc13_;
            }
            if(this.§[b§ != Number.MAX_VALUE)
            {
               this.§[b§ = Math.max(0,this.§[b§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§6l§.width;
         var _loc9_:Number = this.§6l§.height;
         this.§1!b§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§7C§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§;3§)
            {
               _loc6_ = (_loc4_ = this.§null §[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§[r§[_loc14_ * 3];
               _loc17_ = this.§[r§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§5!T§.§!e§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §5!T§.§!e§.§3!D§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§1!b§;
                  this.§+s§.§>#§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§+s§.§5!O§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§+s§.§5!O§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§+s§.§5!O§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§+s§.§5!O§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§+s§.§5!O§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§+s§.§5!O§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§+s§.§5!O§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§+s§.§5!O§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §7C§(param1:Matrix3D) : void
      {
         var _loc3_:§6!g§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;3§)
         {
            _loc3_ = this.§null §[_loc2_];
            this.§+z§[_loc2_ * 3] = _loc3_.x;
            this.§+z§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§+z§,this.§[r§);
      }
      
      override public function render(param1:§&!i§, param2:Number) : void
      {
         this.§%c§(param1.§+E§);
         if(this.§1!b§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §`P§.§0!W§(param2 != 1,this.§6l§.mipMapping,false,this.§9!I§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.§+=§) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§7h§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§%-§ != this.§?x§)
         {
            this.§ 3§(0);
            this.§?x§ = param1.§%-§;
         }
         if(!this.§'y§(_loc4_))
         {
            this.§0^§.uploadFromVector(this.§+s§.§7!C§,0,this.§1!b§ * 4);
            this.§7!e§.uploadFromVector(this.§+s§.§4!Y§,0,this.§1!b§ * 4);
         }
         _loc4_.setBlendFactors(this.§;h§,this.§7p§);
         _loc4_.setProgram(§5!T§.§!e§.§+-§(_loc3_));
         _loc4_.setTextureAt(0,this.§6l§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§7!e§,§`F§.§4j§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§`g§,§`F§.§4P§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§0^§,§`F§.§'S§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§+E§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§,l§,0,this.§1!b§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §3!W§() : Boolean
      {
         return false;
      }
      
      public function get §9y§() : int
      {
         return this.§+s§.§@!@§ / 4;
      }
      
      public function get §+%§() : int
      {
         return this.§;3§;
      }
      
      public function get §`m§() : Number
      {
         return this.§7f§;
      }
      
      public function set §`m§(param1:Number) : void
      {
         this.§7f§ = param1;
      }
      
      public function get §3A§() : Number
      {
         return this.§0!j§;
      }
      
      public function set §3A§(param1:Number) : void
      {
         this.§0!j§ = param1;
      }
      
      public function get §+!;§() : Number
      {
         return this.§!!m§;
      }
      
      public function set §+!;§(param1:Number) : void
      {
         this.§!!m§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§6l§;
      }
   }
}
