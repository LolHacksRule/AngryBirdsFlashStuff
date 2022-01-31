package starling.extensions
{
   import com.adobe.utils.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.Program3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.animation.IAnimatable;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.display.QuadBatch;
   import starling.errors.MissingContextError;
   import starling.textures.Texture;
   import starling.utils.VertexData;
   
   public class ParticleSystem extends DisplayObject implements IAnimatable
   {
       
      
      private var mTexture:Texture;
      
      private var mParticles:Vector.<Particle>;
      
      private var mFrameTime:Number;
      
      private var mProgram:Program3D;
      
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
      
      protected var mTextureSmoothing:int = 1;
      
      private var mCurrentContextId:int = -1;
      
      private var mExpandBuffersPending:Boolean = false;
      
      private var mTimeToAdvance:Number = 0.0;
      
      protected var mHasColorVariance:Boolean = false;
      
      protected var mAlphaVector:Vector.<Number>;
      
      public function ParticleSystem(texture:Texture, emissionRate:Number, initialCapacity:int = 128, blendFactorSource:String = null, blendFactorDest:String = null)
      {
         this.mAlphaVector = new Vector.<Number>();
         super();
         if(texture == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.mTexture = texture;
         this.mPremultipliedAlpha = texture.premultipliedAlpha;
         this.mParticles = new Vector.<Particle>(0,false);
         this.mSourcePositions = new Vector.<Number>();
         this.mRenderPositions = new Vector.<Number>();
         this.createProgram();
         this.mVertexData = new VertexData(0,this.mPremultipliedAlpha);
         this.mIndices = new Vector.<uint>(0);
         this.mEmissionRate = emissionRate;
         this.mEmissionTime = 0;
         this.mFrameTime = 0;
         this.mEmitterY = 0;
         this.mEmitterX = 0;
         this.mBlendFactorDestination = blendFactorDest || Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         this.mBlendFactorSource = blendFactorSource || (!!this.mPremultipliedAlpha ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA);
         if(initialCapacity > 0)
         {
            this.raiseCapacity(initialCapacity);
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
      
      protected function initParticle(particle:Particle) : void
      {
         particle.x = this.mEmitterX;
         particle.y = this.mEmitterY;
         particle.currentTime = 0;
         particle.totalTime = 1;
         particle.red = Math.random();
         particle.green = Math.random();
         particle.blue = Math.random();
         particle.alpha = 0;
      }
      
      protected function advanceParticle(particle:Particle, passedTime:Number) : void
      {
         particle.y += passedTime * 250;
         particle.alpha = 1 - particle.currentTime / particle.totalTime;
         particle.scaleX = 1 - particle.alpha;
         particle.scaleY = 1 - particle.alpha;
         particle.currentTime += passedTime;
      }
      
      private function raiseCapacity(byAmount:int) : void
      {
         var numVertices:int = 0;
         var j:int = 0;
         var oldCapacity:int = this.capacity;
         var newCapacity:int = this.capacity + byAmount;
         var baseVertexData:VertexData = new VertexData(4);
         baseVertexData.setTexCoords(0,0,0);
         baseVertexData.setTexCoords(1,1,0);
         baseVertexData.setTexCoords(2,0,1);
         baseVertexData.setTexCoords(3,1,1);
         this.mTexture.adjustVertexData(baseVertexData,0,4);
         this.mParticles.fixed = false;
         this.mIndices.fixed = false;
         for(var i:int = oldCapacity; i < newCapacity; i++)
         {
            numVertices = i * 4;
            this.mParticles.push(this.createParticle());
            for(j = 0; j < 3; j++)
            {
               this.mSourcePositions.push(0);
               this.mRenderPositions.push(0);
            }
            this.mVertexData.append(baseVertexData);
            this.mIndices.push(numVertices,numVertices + 1,numVertices + 2,numVertices + 1,numVertices + 3,numVertices + 2);
         }
         this.mParticles.fixed = true;
         this.mIndices.fixed = true;
         this.mExpandBuffersPending = true;
      }
      
      private function expandBuffers(context:Context3D) : Boolean
      {
         if(!this.mExpandBuffersPending)
         {
            return false;
         }
         if(context == null)
         {
            throw new MissingContextError();
         }
         var newCapacity:int = this.mVertexData.numVertices / 4;
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
         this.mVertexTextureBuffer = context.createVertexBuffer(newCapacity * 4,VertexData.ELEMENTS_PER_TEXTURE_VERTEX);
         this.mVertexTextureBuffer.uploadFromVector(this.mVertexData.rawDataTexture,0,newCapacity * 4);
         this.mVertexColorBuffer = context.createVertexBuffer(newCapacity * 4,VertexData.ELEMENTS_PER_COLOR_VERTEX);
         this.mVertexColorBuffer.uploadFromVector(this.mVertexData.rawDataColor,0,newCapacity * 4);
         this.mVertexPositionBuffer = context.createVertexBuffer(newCapacity * 4,VertexData.ELEMENTS_PER_POSITION_VERTEX);
         this.mVertexPositionBuffer.uploadFromVector(this.mVertexData.rawDataPosition,0,newCapacity * 4);
         this.mIndexBuffer = context.createIndexBuffer(newCapacity * 6);
         this.mIndexBuffer.uploadFromVector(this.mIndices,0,newCapacity * 6);
         this.mExpandBuffersPending = false;
         return true;
      }
      
      public function start(duration:Number = 1.7976931348623157E308) : void
      {
         if(this.mEmissionRate != 0)
         {
            this.mEmissionTime = duration;
         }
      }
      
      public function stop() : void
      {
         this.mEmissionTime = 0;
      }
      
      override public function getBounds(targetSpace:DisplayObject, resultRect:Rectangle = null) : Rectangle
      {
         var matrix:Matrix = getTransformationMatrix(targetSpace);
         var position:Point = matrix.transformPoint(new Point(x,y));
         if(resultRect == null)
         {
            return new Rectangle(position.x,position.y);
         }
         resultRect.x = position.x;
         resultRect.y = position.y;
         resultRect.width = 0;
         resultRect.height = 0;
         return resultRect;
      }
      
      public function advanceParticles(passedTime:Number) : void
      {
         this.advanceTime(passedTime);
         this.advance(null);
      }
      
      public function advanceTime(passedTime:Number) : void
      {
         this.mTimeToAdvance = passedTime;
      }
      
      private function advance(modelViewMatrix:Matrix3D) : void
      {
         var particle:Particle = null;
         var x:Number = NaN;
         var y:Number = NaN;
         var nextParticle:Particle = null;
         var timeBetweenParticles:Number = NaN;
         var timeBetween:Number = NaN;
         var canvasWidth:Number = NaN;
         var i:int = 0;
         var render:Boolean = false;
         var renderPosX:Number = NaN;
         var renderPosY:Number = NaN;
         var xRadius:Number = NaN;
         var yRadius:Number = NaN;
         var particleSize:Number = NaN;
         var limit:Number = NaN;
         var cos:Number = NaN;
         var sin:Number = NaN;
         var xC:Number = NaN;
         var xS:Number = NaN;
         var yC:Number = NaN;
         var yS:Number = NaN;
         if(isNaN(this.mTimeToAdvance) || this.mTimeToAdvance == 0)
         {
            return;
         }
         var passedTime:Number = this.mTimeToAdvance;
         this.mTimeToAdvance = 0;
         passedTime = Math.min(0.2,passedTime);
         var particleIndex:int = 0;
         while(particleIndex < this.mNumParticles)
         {
            particle = this.mParticles[particleIndex];
            if(particle.currentTime < particle.totalTime)
            {
               this.advanceParticle(particle,passedTime);
               particleIndex++;
            }
            else
            {
               if(particleIndex != this.mNumParticles - 1)
               {
                  nextParticle = this.mParticles[this.mNumParticles - 1];
                  this.mParticles[this.mNumParticles - 1] = particle;
                  this.mParticles[particleIndex] = nextParticle;
               }
               --this.mNumParticles;
            }
         }
         if(this.mEmissionTime > 0)
         {
            timeBetweenParticles = 1 / this.mEmissionRate;
            this.mFrameTime += passedTime;
            while(this.mFrameTime > 0)
            {
               if(this.mNumParticles == this.capacity)
               {
                  this.raiseCapacity(this.capacity);
               }
               particle = this.mParticles[this.mNumParticles++];
               this.initParticle(particle);
               this.advanceParticle(particle,this.mFrameTime);
               timeBetween = timeBetweenParticles;
               if(!isNaN(this.mEmissionVariance))
               {
                  timeBetween = timeBetweenParticles * (1 - this.mEmissionVariance + Math.random() * this.mEmissionVariance * 2) + this.mTimeBetweenParticlesDifference;
               }
               this.mTimeBetweenParticlesDifference += timeBetweenParticles - timeBetween;
               this.mFrameTime -= timeBetween;
            }
            if(this.mEmissionTime != Number.MAX_VALUE)
            {
               this.mEmissionTime = Math.max(0,this.mEmissionTime - passedTime);
            }
         }
         var vertexID:int = 0;
         var textureWidth_2:Number = this.mTexture.width / 2;
         var textureHeight_2:Number = this.mTexture.height / 2;
         this.mVisibleParticles = 0;
         if(modelViewMatrix && Starling.current)
         {
            canvasWidth = Starling.current.canvasWidth;
            this.updateParticleRenderPositions(modelViewMatrix);
            for(i = 0; i < this.mNumParticles; i++)
            {
               particle = this.mParticles[i];
               render = true;
               renderPosX = this.mRenderPositions[i * 3];
               renderPosY = this.mRenderPositions[i * 3 + 1];
               xRadius = textureWidth_2 * particle.scaleX;
               yRadius = textureHeight_2 * particle.scaleY;
               if(renderPosX < -1.1 || renderPosX > 1.1 || renderPosY < -1.1 || renderPosY > 1.1)
               {
                  particleSize = Math.max(xRadius,yRadius);
                  particleSize /= canvasWidth;
                  limit = 1.1 + particleSize;
                  if(renderPosX < -limit || renderPosX > limit || renderPosY < -limit || renderPosY > limit)
                  {
                     render = false;
                  }
               }
               if(render)
               {
                  ++this.mVisibleParticles;
                  if(this.mHasColorVariance)
                  {
                     this.mVertexData.setVertexColorsWithChannels(vertexID,4,particle.red,particle.green,particle.blue,particle.alpha);
                  }
                  x = particle.x;
                  y = particle.y;
                  if(particle.rotation != 0 && Math.abs(xRadius - yRadius) > 0.5)
                  {
                     cos = Math.cos(particle.rotation);
                     sin = Math.sin(particle.rotation);
                     xC = xRadius * cos;
                     xS = xRadius * sin;
                     yC = yRadius * cos;
                     yS = yRadius * sin;
                     this.mVertexData.setPosition(vertexID++,x - xC - yS,y + xS - yC);
                     this.mVertexData.setPosition(vertexID++,x + xC - yS,y - xS - yC);
                     this.mVertexData.setPosition(vertexID++,x - xC + yS,y + xS + yC);
                     this.mVertexData.setPosition(vertexID++,x + xC + yS,y - xS + yC);
                  }
                  else
                  {
                     this.mVertexData.setPosition(vertexID++,x - xRadius,y - yRadius);
                     this.mVertexData.setPosition(vertexID++,x + xRadius,y - yRadius);
                     this.mVertexData.setPosition(vertexID++,x - xRadius,y + yRadius);
                     this.mVertexData.setPosition(vertexID++,x + xRadius,y + yRadius);
                  }
               }
            }
         }
      }
      
      private function updateParticleRenderPositions(modelViewMatrix:Matrix3D) : void
      {
         var particle:Particle = null;
         for(var i:int = 0; i < this.mNumParticles; i++)
         {
            particle = this.mParticles[i];
            this.mSourcePositions[i * 3] = particle.x;
            this.mSourcePositions[i * 3 + 1] = particle.y;
         }
         modelViewMatrix.transformVectors(this.mSourcePositions,this.mRenderPositions);
      }
      
      override public function render(support:RenderSupport, alpha:Number) : void
      {
         this.advance(support.mvpMatrix3D);
         if(this.mVisibleParticles == 0)
         {
            return;
         }
         support.finishQuadBatch();
         alpha *= this.alpha;
         var context:Context3D = support.context;
         if(context == null)
         {
            return;
         }
         if(this.mPremultipliedAlpha)
         {
            this.mAlphaVector[0] = alpha;
            this.mAlphaVector[1] = alpha;
            this.mAlphaVector[2] = alpha;
            this.mAlphaVector[3] = alpha;
         }
         else
         {
            this.mAlphaVector[0] = 1;
            this.mAlphaVector[1] = 1;
            this.mAlphaVector[2] = 1;
            this.mAlphaVector[3] = alpha;
         }
         if(support.contextID != this.mCurrentContextId)
         {
            this.raiseCapacity(0);
            this.createProgram();
            this.mCurrentContextId = support.contextID;
         }
         if(!this.expandBuffers(context))
         {
            if(this.mHasColorVariance)
            {
               this.mVertexColorBuffer.uploadFromVector(this.mVertexData.rawDataColor,0,this.mVisibleParticles * 4);
            }
            this.mVertexPositionBuffer.uploadFromVector(this.mVertexData.rawDataPosition,0,this.mVisibleParticles * 4);
         }
         context.setBlendFactors(this.mBlendFactorSource,this.mBlendFactorDestination);
         support.setRenderProgram(this.mProgram);
         context.setTextureAt(0,this.mTexture.getBase(context));
         context.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,support.mvpMatrix3D,true);
         context.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,this.mAlphaVector,1);
         context.setVertexBufferAt(0,this.mVertexPositionBuffer,0,Context3DVertexBufferFormat.FLOAT_2);
         context.setVertexBufferAt(1,this.mVertexColorBuffer,0,Context3DVertexBufferFormat.FLOAT_4);
         context.setVertexBufferAt(2,this.mVertexTextureBuffer,0,Context3DVertexBufferFormat.FLOAT_2);
         context.drawTriangles(this.mIndexBuffer,0,this.mVisibleParticles * 2);
         context.setVertexBufferAt(0,null);
         context.setVertexBufferAt(1,null);
         context.setVertexBufferAt(2,null);
      }
      
      private function createProgram() : void
      {
         var smoothing:* = false;
         var textureOptions:String = null;
         var vertexProgramCode:String = null;
         var fragmentProgramCode:String = null;
         var assembler:AGALMiniAssembler = null;
         var mipmap:Boolean = this.mTexture.mipMapping;
         var textureFormat:String = this.mTexture.format;
         var programName:String = "ext.ParticleSystem." + textureFormat + "/" + this.mTextureSmoothing + (!!mipmap ? "+mm" : "");
         this.mProgram = Starling.current.getProgram(programName);
         if(this.mProgram == null)
         {
            smoothing = this.mTextureSmoothing != QuadBatch.TEXTURE_SMOOTHING_NONE;
            textureOptions = !!("<2d,repeat," + smoothing) ? "linear," : (!!("nearest," + mipmap) ? "mipnearest>" : "mipnone>");
            vertexProgramCode = "m44 op, va0, vc0 \n" + "mul v0, va1, vc4 \n" + "mov v1, va2      \n";
            fragmentProgramCode = "tex ft1, v1, fs0 " + textureOptions + "\n" + "mul oc, ft1, v0";
            assembler = new AGALMiniAssembler();
            Starling.current.registerProgram(programName,assembler.assemble(Context3DProgramType.VERTEX,vertexProgramCode),assembler.assemble(Context3DProgramType.FRAGMENT,fragmentProgramCode));
            this.mProgram = Starling.current.getProgram(programName);
         }
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
      
      public function set emissionRate(value:Number) : void
      {
         this.mEmissionRate = value;
      }
      
      public function get emitterX() : Number
      {
         return this.mEmitterX;
      }
      
      public function set emitterX(value:Number) : void
      {
         this.mEmitterX = value;
      }
      
      public function get emitterY() : Number
      {
         return this.mEmitterY;
      }
      
      public function set emitterY(value:Number) : void
      {
         this.mEmitterY = value;
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
   }
}
