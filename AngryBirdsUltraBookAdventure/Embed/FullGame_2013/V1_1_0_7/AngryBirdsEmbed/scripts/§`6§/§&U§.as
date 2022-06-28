package §`6§
{
   import §&o§.DisplayObject;
   import §'j§.§3!!§;
   import §0! §.Texture;
   import §<t§.§!F§;
   import §=!0§.§2N§;
   import §=!0§.§>4§;
   import §=!0§.§>I§;
   import §[!+§.§"N§;
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
   
   public class §&U§ extends DisplayObject implements §"N§
   {
       
      
      private var §;p§:Texture;
      
      private var §<^§:Vector.<§61§>;
      
      private var §+x§:Number;
      
      private var §"!,§:Vector.<Number>;
      
      private var §"L§:Vector.<Number>;
      
      private var §,Y§:§3!!§;
      
      private var §!f§:VertexBuffer3D;
      
      private var §;!'§:VertexBuffer3D;
      
      private var §#f§:VertexBuffer3D;
      
      private var §8W§:Vector.<uint>;
      
      private var §5,§:IndexBuffer3D;
      
      private var §!X§:int;
      
      private var §<y§:int;
      
      private var §9G§:Number;
      
      protected var §]!?§:Number;
      
      private var §]W§:Number = 0.0;
      
      private var §9?§:Number;
      
      protected var §@m§:Number;
      
      protected var §1!F§:Number;
      
      protected var §7R§:Boolean;
      
      protected var §@s§:String;
      
      protected var §"k§:String;
      
      protected var §#E§:String;
      
      private var §3!H§:int = -1;
      
      private var §'!H§:Boolean = false;
      
      private var §@k§:Number = 0.0;
      
      public function §&U§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§;p§ = param1;
         this.§7R§ = param1.premultipliedAlpha;
         this.§<^§ = new Vector.<§61§>(0,false);
         this.§"!,§ = new Vector.<Number>();
         this.§"L§ = new Vector.<Number>();
         this.§,Y§ = new §3!!§(0,this.§7R§);
         this.§8W§ = new Vector.<uint>(0);
         this.§9G§ = param2;
         this.§9?§ = 0;
         this.§+x§ = 0;
         this.§1!F§ = 0;
         this.§@m§ = 0;
         this.§"k§ = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.§@s§ = param4 || (!!this.§7R§ ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.§^M§(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!f§)
         {
            this.§!f§.dispose();
         }
         if(this.§;!'§)
         {
            this.§;!'§.dispose();
         }
         if(this.§#f§)
         {
            this.§#f§.dispose();
         }
         if(this.§5,§)
         {
            this.§5,§.dispose();
         }
         this.§"!,§ = null;
         this.§"L§ = null;
         super.dispose();
      }
      
      protected function createParticle() : §61§
      {
         return new §61§();
      }
      
      protected function initParticle(param1:§61§) : void
      {
         param1.x = this.§@m§;
         param1.y = this.§1!F§;
         param1.currentTime = 0;
         param1.§9t§ = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§61§, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.§9t§;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function §^M§(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.§[J§;
         var _loc3_:int = this.§[J§ + param1;
         var _loc4_:§3!!§;
         (_loc4_ = new §3!!§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.§;p§.adjustVertexData(_loc4_,0,4);
         this.§<^§.fixed = false;
         this.§8W§.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.§<^§.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.§"!,§.push(0);
               this.§"L§.push(0);
               _loc7_++;
            }
            this.§,Y§.append(_loc4_);
            this.§8W§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.§<^§.fixed = true;
         this.§8W§.fixed = true;
         this.§'!H§ = true;
      }
      
      private function §]^§(param1:Context3D) : Boolean
      {
         if(!this.§'!H§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!F§();
         }
         var _loc2_:int = this.§,Y§.§`!6§ / 4;
         if(this.§!f§)
         {
            this.§!f§.dispose();
         }
         if(this.§;!'§)
         {
            this.§;!'§.dispose();
         }
         if(this.§#f§)
         {
            this.§#f§.dispose();
         }
         if(this.§5,§)
         {
            this.§5,§.dispose();
         }
         this.§!f§ = param1.createVertexBuffer(_loc2_ * 4,§3!!§.§4!9§);
         this.§!f§.uploadFromByteArray(this.§,Y§.§]o§,0,0,_loc2_ * 4);
         this.§;!'§ = param1.createVertexBuffer(_loc2_ * 4,§3!!§.§<z§);
         this.§;!'§.uploadFromVector(this.§,Y§.§-e§,0,_loc2_ * 4);
         this.§#f§ = param1.createVertexBuffer(_loc2_ * 4,§3!!§.§!B§);
         this.§#f§.uploadFromVector(this.§,Y§.§#y§,0,_loc2_ * 4);
         this.§5,§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5,§.uploadFromVector(this.§8W§,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.§9G§ != 0)
         {
            this.§9?§ = param1;
         }
      }
      
      public function stop() : void
      {
         this.§9?§ = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = §&M§(param1);
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
      
      public function §9!8§(param1:Number) : void
      {
         this.advanceTime(param1);
         this.§6!4§(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.§@k§ = param1;
      }
      
      private function §6!4§(param1:Matrix3D) : void
      {
         var _loc4_:§61§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§61§ = null;
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
         if(isNaN(this.§@k§) || this.§@k§ == 0)
         {
            return;
         }
         var _loc2_:Number = this.§@k§;
         this.§@k§ = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§!X§)
         {
            if((_loc4_ = this.§<^§[_loc3_]).currentTime < _loc4_.§9t§)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.§!X§ - 1)
               {
                  _loc11_ = this.§<^§[this.§!X§ - 1];
                  this.§<^§[this.§!X§ - 1] = _loc4_;
                  this.§<^§[_loc3_] = _loc11_;
               }
               --this.§!X§;
            }
         }
         if(this.§9?§ > 0)
         {
            _loc12_ = 1 / this.§9G§;
            this.§+x§ += _loc2_;
            while(this.§+x§ > 0)
            {
               if(this.§!X§ == this.§[J§)
               {
                  this.§^M§(this.§[J§);
               }
               _loc4_ = this.§<^§[this.§!X§++] as §61§;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.§+x§);
               _loc13_ = _loc12_;
               if(!isNaN(this.§]!?§))
               {
                  _loc13_ = _loc12_ * (1 - this.§]!?§ + Math.random() * this.§]!?§ * 2) + this.§]W§;
               }
               this.§]W§ += _loc12_ - _loc13_;
               this.§+x§ -= _loc13_;
            }
            if(this.§9?§ != Number.MAX_VALUE)
            {
               this.§9?§ = Math.max(0,this.§9?§ - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.§;p§.width;
         var _loc9_:Number = this.§;p§.height;
         this.§<y§ = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.§?x§(param1);
            _loc14_ = 0;
            while(_loc14_ < this.§!X§)
            {
               _loc6_ = (_loc4_ = this.§<^§[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.§"L§[_loc14_ * 3];
               _loc17_ = this.§"L§[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(§>I§.§`S§)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §>I§.§`S§.§5_§;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.§<y§;
                  this.§,Y§.§-!1§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.§,Y§.§=!3§(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.§,Y§.§=!3§(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.§,Y§.§=!3§(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.§,Y§.§=!3§(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.§,Y§.§=!3§(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.§,Y§.§=!3§(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.§,Y§.§=!3§(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.§,Y§.§=!3§(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function §?x§(param1:Matrix3D) : void
      {
         var _loc3_:§61§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!X§)
         {
            _loc3_ = this.§<^§[_loc2_];
            this.§"!,§[_loc2_ * 3] = _loc3_.x;
            this.§"!,§[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.§"!,§,this.§"L§);
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         this.§6!4§(param1.§false§);
         if(this.§<y§ == 0)
         {
            return;
         }
         param2 *= this.alpha;
         var _loc3_:String = §>4§.§4!+§(param2 != 1,this.§;p§.mipMapping,false,this.§#E§,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.§7R§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.§if§ != this.§3!H§)
         {
            this.§^M§(0);
            this.§3!H§ = param1.§if§;
         }
         if(!this.§]^§(_loc4_))
         {
            this.§;!'§.uploadFromVector(this.§,Y§.§-e§,0,this.§<y§ * 4);
            this.§#f§.uploadFromVector(this.§,Y§.§#y§,0,this.§<y§ * 4);
         }
         _loc4_.setBlendFactors(this.§@s§,this.§"k§);
         _loc4_.setProgram(§>I§.§`S§.§&!L§(_loc3_));
         _loc4_.setTextureAt(0,this.§;p§.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.§#f§,§3!!§.§"K§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§!f§,§3!!§.§#_§,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.§;!'§,§3!!§.§17§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§false§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.§5,§,0,this.§<y§ * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get §^l§() : Boolean
      {
         return false;
      }
      
      public function get §[J§() : int
      {
         return this.§,Y§.§`!6§ / 4;
      }
      
      public function get §<R§() : int
      {
         return this.§!X§;
      }
      
      public function get §%f§() : Number
      {
         return this.§9G§;
      }
      
      public function set §%f§(param1:Number) : void
      {
         this.§9G§ = param1;
      }
      
      public function get §4!!§() : Number
      {
         return this.§@m§;
      }
      
      public function set §4!!§(param1:Number) : void
      {
         this.§@m§ = param1;
      }
      
      public function get §!U§() : Number
      {
         return this.§1!F§;
      }
      
      public function set §!U§(param1:Number) : void
      {
         this.§1!F§ = param1;
      }
      
      public function get texture() : Texture
      {
         return this.§;p§;
      }
   }
}
