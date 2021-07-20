package starling.extensions
{
   import starling.textures.Texture;
   import starling.errors.MissingContextError;
   import starling.utils.VertexData;
   import starling.display.DisplayObject;
   import starling.animation.IAnimatable;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.core.QuadBatch;
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
   
   public class ParticleSystem extends DisplayObject implements IAnimatable
   {
       
      
      private var mTexture:Texture;
      
      private var mParticles:Vector.<Particle>;
      
      private var mFrameTime:Number;
      
      private var mSourcePositions:Vector.<Number>;
      
      private var mRenderPositions:Vector.<Number>;
      
      private var mVertexData:VertexData;
      
      private var mVertexTextureBuffer:VertexBuffer3D;
      
      private var mVertexColorBuffer:VertexBuffer3D;
      
      private var mVertexPositionBuffer:VertexBuffer3D;
      
      private var mIndices:Vector.<uint>;
      
      private var mIndexBuffer:IndexBuffer3D;
      
      private var mNumParticles:int;
      
      private var mVisibleParticles:int;
      
      private var mEmissionRate:Number;
      
      protected var mEmissionVariance:Number;
      
      private var mTimeBetweenParticlesDifference:Number = 0.0;
      
      private var mEmissionTime:Number;
      
      protected var mEmitterX:Number;
      
      protected var mEmitterY:Number;
      
      protected var mPremultipliedAlpha:Boolean;
      
      protected var mBlendFactorSource:String;
      
      protected var mBlendFactorDestination:String;
      
      protected var mTextureSmoothing:String;
      
      private var mCurrentContextId:int = -1;
      
      private var mExpandBuffersPending:Boolean = false;
      
      private var mTimeToAdvance:Number = 0.0;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.mTexture = param1;
         this.mPremultipliedAlpha = param1.premultipliedAlpha;
         this.mParticles = new Vector.<Particle>(0,false);
         this.mSourcePositions = new Vector.<Number>();
         this.mRenderPositions = new Vector.<Number>();
         this.mVertexData = new VertexData(0,this.mPremultipliedAlpha);
         this.mIndices = new Vector.<uint>(0);
         this.mEmissionRate = param2;
         this.mEmissionTime = 0;
         this.mFrameTime = 0;
         this.mEmitterY = 0;
         this.mEmitterX = 0;
         this.mBlendFactorDestination = param5 || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.mBlendFactorSource = param4 || (!!this.mPremultipliedAlpha ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(param3 > 0)
         {
            this.raiseCapacity(param3);
         }
      }
      
      override public function dispose() : void
      {
         if(this.mVertexTextureBuffer)
         {
            this.mVertexTextureBuffer.dispose();
         }
         if(this.mVertexColorBuffer)
         {
            this.mVertexColorBuffer.dispose();
         }
         if(this.mVertexPositionBuffer)
         {
            this.mVertexPositionBuffer.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
         this.mSourcePositions = null;
         this.mRenderPositions = null;
         super.dispose();
      }
      
      protected function createParticle() : Particle
      {
         return new Particle();
      }
      
      protected function initParticle(param1:Particle) : void
      {
         param1.x = this.mEmitterX;
         param1.y = this.mEmitterY;
         param1.currentTime = 0;
         param1.totalTime = 1;
         param1.red = Math.random();
         param1.green = Math.random();
         param1.blue = Math.random();
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:Particle, param2:Number) : void
      {
         param1.y += param2 * 250;
         param1.alpha = 1 - param1.currentTime / param1.totalTime;
         param1.scaleX = 1 - param1.alpha;
         param1.scaleY = 1 - param1.alpha;
         param1.currentTime += param2;
      }
      
      private function raiseCapacity(param1:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = this.capacity;
         var _loc3_:int = this.capacity + param1;
         var _loc4_:VertexData;
         (_loc4_ = new VertexData(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         _loc4_.setTexCoords(3,1,1);
         this.mTexture.adjustVertexData(_loc4_,0,4);
         this.mParticles.fixed = false;
         this.mIndices.fixed = false;
         var _loc5_:int = _loc2_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ * 4;
            this.mParticles.push(this.createParticle());
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this.mSourcePositions.push(0);
               this.mRenderPositions.push(0);
               _loc7_++;
            }
            this.mVertexData.append(_loc4_);
            this.mIndices.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
            _loc5_++;
         }
         this.mParticles.fixed = true;
         this.mIndices.fixed = true;
         this.mExpandBuffersPending = true;
      }
      
      private function expandBuffers(param1:Context3D) : Boolean
      {
         if(!this.mExpandBuffersPending)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new MissingContextError();
         }
         var _loc2_:int = this.mVertexData.numVertices / 4;
         if(this.mVertexTextureBuffer)
         {
            this.mVertexTextureBuffer.dispose();
         }
         if(this.mVertexColorBuffer)
         {
            this.mVertexColorBuffer.dispose();
         }
         if(this.mVertexPositionBuffer)
         {
            this.mVertexPositionBuffer.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
         this.mVertexTextureBuffer = param1.createVertexBuffer(_loc2_ * 4,VertexData.ELEMENTS_PER_TEXTURE_VERTEX);
         this.mVertexTextureBuffer.uploadFromByteArray(this.mVertexData.vertexTextureData,0,0,_loc2_ * 4);
         this.mVertexColorBuffer = param1.createVertexBuffer(_loc2_ * 4,VertexData.ELEMENTS_PER_COLOR_VERTEX);
         this.mVertexColorBuffer.uploadFromVector(this.mVertexData.vertexColorData,0,_loc2_ * 4);
         this.mVertexPositionBuffer = param1.createVertexBuffer(_loc2_ * 4,VertexData.ELEMENTS_PER_POSITION_VERTEX);
         this.mVertexPositionBuffer.uploadFromVector(this.mVertexData.rawPositionData,0,_loc2_ * 4);
         this.mIndexBuffer = param1.createIndexBuffer(_loc2_ * 6);
         this.mIndexBuffer.uploadFromVector(this.mIndices,0,_loc2_ * 6);
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         if(this.mEmissionRate != 0)
         {
            this.mEmissionTime = param1;
         }
      }
      
      public function stop() : void
      {
         this.mEmissionTime = 0;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc3_:Matrix = getTransformationMatrix(param1);
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
      
      public function advanceParticles(param1:Number) : void
      {
         this.advanceTime(param1);
         this.advance(null);
      }
      
      public function advanceTime(param1:Number) : void
      {
         this.mTimeToAdvance = param1;
      }
      
      private function advance(param1:Matrix3D) : void
      {
         var _loc4_:Particle = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:Particle = null;
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
         if(isNaN(this.mTimeToAdvance) || this.mTimeToAdvance == 0)
         {
            return;
         }
         var _loc2_:Number = this.mTimeToAdvance;
         this.mTimeToAdvance = 0;
         _loc2_ = Math.min(0.2,_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.mNumParticles)
         {
            if((_loc4_ = this.mParticles[_loc3_]).currentTime < _loc4_.totalTime)
            {
               this.advanceParticle(_loc4_,_loc2_);
               _loc3_++;
            }
            else
            {
               if(_loc3_ != this.mNumParticles - 1)
               {
                  _loc11_ = this.mParticles[this.mNumParticles - 1];
                  this.mParticles[this.mNumParticles - 1] = _loc4_;
                  this.mParticles[_loc3_] = _loc11_;
               }
               --this.mNumParticles;
            }
         }
         if(this.mEmissionTime > 0)
         {
            _loc12_ = 1 / this.mEmissionRate;
            this.mFrameTime += _loc2_;
            while(this.mFrameTime > 0)
            {
               if(this.mNumParticles == this.capacity)
               {
                  this.raiseCapacity(this.capacity);
               }
               _loc4_ = this.mParticles[this.mNumParticles++] as Particle;
               this.initParticle(_loc4_);
               this.advanceParticle(_loc4_,this.mFrameTime);
               _loc13_ = _loc12_;
               if(!isNaN(this.mEmissionVariance))
               {
                  _loc13_ = _loc12_ * (1 - this.mEmissionVariance + Math.random() * this.mEmissionVariance * 2) + this.mTimeBetweenParticlesDifference;
               }
               this.mTimeBetweenParticlesDifference += _loc12_ - _loc13_;
               this.mFrameTime -= _loc13_;
            }
            if(this.mEmissionTime != Number.MAX_VALUE)
            {
               this.mEmissionTime = Math.max(0,this.mEmissionTime - _loc2_);
            }
         }
         var _loc5_:int = 0;
         var _loc8_:Number = this.mTexture.width;
         var _loc9_:Number = this.mTexture.height;
         this.mVisibleParticles = 0;
         var _loc10_:Vector3D = new Vector3D();
         if(param1)
         {
            this.updateParticleRenderPositions(param1);
            _loc14_ = 0;
            while(_loc14_ < this.mNumParticles)
            {
               _loc6_ = (_loc4_ = this.mParticles[_loc14_]).x;
               _loc7_ = _loc4_.y;
               _loc15_ = true;
               _loc10_.x = _loc6_;
               _loc10_.y = _loc7_;
               _loc16_ = this.mRenderPositions[_loc14_ * 3];
               _loc17_ = this.mRenderPositions[_loc14_ * 3 + 1];
               _loc18_ = _loc8_ * _loc4_.scaleX / 2;
               _loc19_ = _loc9_ * _loc4_.scaleY / 2;
               if(_loc16_ < -1.1 || _loc16_ > 1.1 || _loc17_ < -1.1 || _loc17_ > 1.1)
               {
                  if(Starling.current)
                  {
                     _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / Starling.current.canvasWidth;
                     _loc21_ = 1.1 + _loc20_;
                     if(_loc16_ < -_loc21_ || _loc16_ > _loc21_ || _loc17_ < -_loc21_ || _loc17_ > _loc21_)
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  ++this.mVisibleParticles;
                  this.mVertexData.setVertexColorsWithChannels(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
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
                     this.mVertexData.setPositionXY(_loc5_,_loc6_ + _loc26_,_loc7_ + _loc27_);
                     this.mVertexData.setPositionXY(_loc5_ + 1,_loc6_ + _loc24_,_loc7_ + _loc25_);
                     this.mVertexData.setPositionXY(_loc5_ + 2,_loc6_ + _loc30_,_loc7_ + _loc31_);
                     this.mVertexData.setPositionXY(_loc5_ + 3,_loc6_ + _loc28_,_loc7_ + _loc29_);
                  }
                  else
                  {
                     this.mVertexData.setPositionXY(_loc5_,_loc6_ - _loc18_,_loc7_ - _loc19_);
                     this.mVertexData.setPositionXY(_loc5_ + 1,_loc6_ + _loc18_,_loc7_ - _loc19_);
                     this.mVertexData.setPositionXY(_loc5_ + 2,_loc6_ - _loc18_,_loc7_ + _loc19_);
                     this.mVertexData.setPositionXY(_loc5_ + 3,_loc6_ + _loc18_,_loc7_ + _loc19_);
                  }
                  _loc5_ += 4;
               }
               _loc14_++;
            }
         }
      }
      
      private function updateParticleRenderPositions(param1:Matrix3D) : void
      {
         var _loc3_:Particle = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mNumParticles)
         {
            _loc3_ = this.mParticles[_loc2_];
            this.mSourcePositions[_loc2_ * 3] = _loc3_.x;
            this.mSourcePositions[_loc2_ * 3 + 1] = _loc3_.y;
            _loc2_++;
         }
         param1.transformVectors(this.mSourcePositions,this.mRenderPositions);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         this.advance(param1.mvpMatrix);
         if(this.mVisibleParticles == 0)
         {
            return;
         }
         param1.finishQuadBatch();
         param2 *= this.alpha;
         var _loc3_:String = QuadBatch.getImageProgramName(param2 != 1,this.mTexture.mipMapping,false,this.mTextureSmoothing,true);
         var _loc4_:Context3D;
         if((_loc4_ = param1.context) == null)
         {
            return;
         }
         var _loc5_:Vector.<Number> = !!this.mPremultipliedAlpha ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(param1.contextID != this.mCurrentContextId)
         {
            this.raiseCapacity(0);
            this.mCurrentContextId = param1.contextID;
         }
         if(!this.expandBuffers(_loc4_))
         {
            this.mVertexColorBuffer.uploadFromVector(this.mVertexData.vertexColorData,0,this.mVisibleParticles * 4);
            this.mVertexPositionBuffer.uploadFromVector(this.mVertexData.rawPositionData,0,this.mVisibleParticles * 4);
         }
         _loc4_.setBlendFactors(this.mBlendFactorSource,this.mBlendFactorDestination);
         _loc4_.setProgram(Starling.current.getProgram(_loc3_));
         _loc4_.setTextureAt(0,this.mTexture.getBase(_loc4_));
         _loc4_.setVertexBufferAt(0,this.mVertexPositionBuffer,VertexData.POSITION_OFFSET,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.mVertexTextureBuffer,VertexData.TEXCOORD_OFFSET,Context3DVertexBufferFormat.FLOAT_2);
         _loc4_.setVertexBufferAt(2,this.mVertexColorBuffer,VertexData.COLOR_OFFSET,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.mvpMatrix,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc4_.drawTriangles(this.mIndexBuffer,0,this.mVisibleParticles * 2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
         _loc4_.setVertexBufferAt(2,null);
      }
      
      public function get isComplete() : Boolean
      {
         return false;
      }
      
      public function get capacity() : int
      {
         return this.mVertexData.numVertices / 4;
      }
      
      public function get numParticles() : int
      {
         return this.mNumParticles;
      }
      
      public function get emissionRate() : Number
      {
         return this.mEmissionRate;
      }
      
      public function set emissionRate(param1:Number) : void
      {
         this.mEmissionRate = param1;
      }
      
      public function get emitterX() : Number
      {
         return this.mEmitterX;
      }
      
      public function set emitterX(param1:Number) : void
      {
         this.mEmitterX = param1;
      }
      
      public function get emitterY() : Number
      {
         return this.mEmitterY;
      }
      
      public function set emitterY(param1:Number) : void
      {
         this.mEmitterY = param1;
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
   }
}
