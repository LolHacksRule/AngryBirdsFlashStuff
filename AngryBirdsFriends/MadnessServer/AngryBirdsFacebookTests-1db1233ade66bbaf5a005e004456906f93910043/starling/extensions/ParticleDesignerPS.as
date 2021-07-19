package starling.extensions
{
   import flash.display3D.Context3DBlendFactor;
   import starling.display.QuadBatch;
   import starling.textures.Texture;
   import starling.utils.deg2rad;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const EMITTER_TYPE_GRAVITY:int = 0;
      
      private const EMITTER_TYPE_RADIAL:int = 1;
      
      private var mEmissionRate:Number;
      
      private var mEmitterType:int;
      
      private var mEmitterXVariance:Number;
      
      private var mEmitterYVariance:Number;
      
      private var mMaxNumParticles:int;
      
      private var mLifespan:Number;
      
      private var mLifespanVariance:Number;
      
      private var mInterval:Number;
      
      private var mStartSizeX:Number;
      
      private var mStartSizeVarianceX:Number;
      
      private var mStartSizeY:Number;
      
      private var mStartSizeVarianceY:Number;
      
      private var mEndSizeX:Number;
      
      private var mEndSizeVarianceX:Number;
      
      private var mEndSizeY:Number;
      
      private var mEndSizeVarianceY:Number;
      
      private var mEmitAngle:Number;
      
      private var mEmitAngleVariance:Number;
      
      private var mSpeed:Number;
      
      private var mSpeedVariance:Number;
      
      private var mGravityX:Number;
      
      private var mGravityY:Number;
      
      private var mRadialAcceleration:Number;
      
      private var mRadialAccelerationVariance:Number;
      
      private var mTangentialAcceleration:Number;
      
      private var mTangentialAccelerationVariance:Number;
      
      private var mMaxRadius:Number;
      
      private var mMaxRadiusVariance:Number;
      
      private var mMinRadius:Number;
      
      private var mRotatePerSecond:Number;
      
      private var mRotatePerSecondVariance:Number;
      
      private var mStartColor:ColorArgb;
      
      private var mStartColorVariance:ColorArgb;
      
      private var mEndColor:ColorArgb;
      
      private var mEndColorVariance:ColorArgb;
      
      public function ParticleDesignerPS(config:XML, texture:Texture)
      {
         this.parseConfig(config,texture);
         var emissionRate:Number = this.mMaxNumParticles / (this.mLifespan + this.mInterval);
         super(texture,emissionRate,this.mMaxNumParticles,mBlendFactorSource,mBlendFactorDestination);
         mPremultipliedAlpha = false;
      }
      
      public function get maxNumParticles() : int
      {
         return this.mMaxNumParticles;
      }
      
      override protected function createParticle() : Particle
      {
         return new PDParticle();
      }
      
      private function get skipUpdates() : Boolean
      {
         return this.maxNumParticles >= 20;
      }
      
      override protected function initParticle(aParticle:Particle) : void
      {
         var particle:PDParticle = null;
         var lifespan:Number = NaN;
         particle = aParticle as PDParticle;
         lifespan = this.mLifespan + this.mLifespanVariance * (Math.random() * 2 - 1);
         if(lifespan <= 0)
         {
            return;
         }
         particle.alpha = 0;
         particle.currentTime = 0;
         particle.totalTime = lifespan;
         particle.x = mEmitterX + this.mEmitterXVariance * (Math.random() * 2 - 1);
         particle.y = mEmitterY + this.mEmitterYVariance * (Math.random() * 2 - 1);
         particle.startX = mEmitterX;
         particle.startY = mEmitterY;
         var angle:Number = this.mEmitAngle + this.mEmitAngleVariance * (Math.random() * 2 - 1);
         var speed:Number = this.mSpeed + this.mSpeedVariance * (Math.random() * 2 - 1);
         particle.velocityX = speed * Math.cos(angle);
         particle.velocityY = speed * -Math.sin(angle);
         particle.radius = this.mMaxRadius + this.mMaxRadiusVariance * (Math.random() * 2 - 1);
         particle.radiusDelta = this.mMaxRadius / lifespan;
         particle.rotation = this.mEmitAngle + this.mEmitAngleVariance * (Math.random() * 2 - 1);
         particle.rotationDelta = this.mRotatePerSecond + this.mRotatePerSecondVariance * (Math.random() * 2 - 1);
         particle.radialAcceleration = this.mRadialAcceleration;
         particle.tangentialAcceleration = this.mTangentialAcceleration;
         var sizeVarianceMultiplier:Number = Math.random() * 2 - 1;
         var startSizeX:Number = this.mStartSizeX + this.mStartSizeVarianceX * sizeVarianceMultiplier;
         var endSizeX:Number = startSizeX;
         if(!isNaN(this.mEndSizeX))
         {
            endSizeX = this.mEndSizeX;
            if(!isNaN(this.mEndSizeVarianceX))
            {
               endSizeX += this.mEndSizeVarianceX * (Math.random() * 2 - 1);
            }
         }
         if(startSizeX < 0.1)
         {
            startSizeX = 0.1;
         }
         if(endSizeX < 0.1)
         {
            endSizeX = 0.1;
         }
         particle.scaleX = startSizeX / texture.width;
         particle.scaleDeltaX = (endSizeX - startSizeX) / lifespan / texture.width;
         var startSizeY:Number = this.mStartSizeY + this.mStartSizeVarianceY * sizeVarianceMultiplier;
         var endSizeY:Number = startSizeY;
         if(!isNaN(this.mEndSizeY))
         {
            endSizeY = this.mEndSizeY;
            if(!isNaN(this.mEndSizeVarianceY))
            {
               endSizeY += this.mEndSizeVarianceY * (Math.random() * 2 - 1);
            }
         }
         if(startSizeY < 0.1)
         {
            startSizeY = 0.1;
         }
         if(endSizeY < 0.1)
         {
            endSizeY = 0.1;
         }
         particle.scaleY = startSizeY / texture.height;
         particle.scaleDeltaY = (endSizeY - startSizeY) / lifespan / texture.height;
         var colorDelta:ColorArgb = particle.colorArgbDelta;
         particle.red = this.mStartColor.red;
         particle.green = this.mStartColor.green;
         particle.blue = this.mStartColor.blue;
         particle.alpha = this.mStartColor.alpha;
         if(this.mStartColorVariance.red != 0)
         {
            particle.red += this.mStartColorVariance.red * (Math.random() * 2 - 1);
         }
         if(this.mStartColorVariance.green != 0)
         {
            particle.green += this.mStartColorVariance.green * (Math.random() * 2 - 1);
         }
         if(this.mStartColorVariance.blue != 0)
         {
            particle.blue += this.mStartColorVariance.blue * (Math.random() * 2 - 1);
         }
         if(this.mStartColorVariance.alpha != 0)
         {
            particle.alpha += this.mStartColorVariance.alpha * (Math.random() * 2 - 1);
         }
         var endColorRed:Number = this.mEndColor.red;
         var endColorGreen:Number = this.mEndColor.green;
         var endColorBlue:Number = this.mEndColor.blue;
         var endColorAlpha:Number = this.mEndColor.alpha;
         if(this.mEndColorVariance.red != 0)
         {
            endColorRed += this.mEndColorVariance.red * (Math.random() * 2 - 1);
         }
         if(this.mEndColorVariance.green != 0)
         {
            endColorGreen += this.mEndColorVariance.green * (Math.random() * 2 - 1);
         }
         if(this.mEndColorVariance.blue != 0)
         {
            endColorBlue += this.mEndColorVariance.blue * (Math.random() * 2 - 1);
         }
         if(this.mEndColorVariance.alpha != 0)
         {
            endColorAlpha += this.mEndColorVariance.alpha * (Math.random() * 2 - 1);
         }
         colorDelta.red = (endColorRed - particle.red) / lifespan;
         colorDelta.green = (endColorGreen - particle.green) / lifespan;
         colorDelta.blue = (endColorBlue - particle.blue) / lifespan;
         colorDelta.alpha = (endColorAlpha - particle.alpha) / lifespan;
         particle.hasColorDelta = colorDelta.red || colorDelta.green || colorDelta.blue || colorDelta.alpha;
         if(particle.hasColorDelta)
         {
            mHasColorVariance = true;
         }
      }
      
      override protected function advanceParticle(particle:Particle, passedTime:Number) : void
      {
         var distanceX:Number = NaN;
         var distanceY:Number = NaN;
         var distanceScalar:Number = NaN;
         var radialX:Number = NaN;
         var radialY:Number = NaN;
         var tangentialX:Number = NaN;
         var tangentialY:Number = NaN;
         var newY:Number = NaN;
         var pdParticle:PDParticle = particle as PDParticle;
         var restTime:Number = pdParticle.totalTime - pdParticle.currentTime;
         passedTime = restTime > passedTime ? Number(passedTime) : Number(restTime);
         pdParticle.currentTime += passedTime;
         if(this.mEmitterType == this.EMITTER_TYPE_RADIAL)
         {
            if(!pdParticle.skipUpdate || !this.skipUpdates)
            {
               if(this.skipUpdates)
               {
                  passedTime *= 2;
               }
               pdParticle.rotation += pdParticle.rotationDelta * passedTime;
               pdParticle.radius -= pdParticle.radiusDelta * passedTime;
               pdParticle.x = mEmitterX - Math.cos(pdParticle.rotation) * pdParticle.radius;
               pdParticle.y = mEmitterY - Math.sin(pdParticle.rotation) * pdParticle.radius;
               if(pdParticle.radius < this.mMinRadius)
               {
                  pdParticle.currentTime = pdParticle.totalTime;
               }
            }
         }
         else
         {
            pdParticle.x += pdParticle.velocityX * passedTime;
            pdParticle.y += pdParticle.velocityY * passedTime;
            if(this.skipUpdates)
            {
               passedTime *= 2;
            }
            if(!pdParticle.skipUpdate || !this.skipUpdates)
            {
               distanceX = pdParticle.x - pdParticle.startX;
               distanceY = pdParticle.y - pdParticle.startY;
               distanceScalar = Math.sqrt(distanceX * distanceX + distanceY * distanceY);
               if(distanceScalar < 0.01)
               {
                  distanceScalar = 0.01;
               }
               radialX = distanceX / distanceScalar;
               radialY = distanceY / distanceScalar;
               tangentialX = radialX;
               tangentialY = radialY;
               radialX *= pdParticle.radialAcceleration;
               radialY *= pdParticle.radialAcceleration;
               if(pdParticle.tangentialAcceleration)
               {
                  newY = tangentialX;
                  tangentialX = -tangentialY * pdParticle.tangentialAcceleration;
                  tangentialY = newY * pdParticle.tangentialAcceleration;
                  pdParticle.velocityX += passedTime * (this.mGravityX + radialX + tangentialX);
                  pdParticle.velocityY += passedTime * (this.mGravityY + radialY + tangentialY);
               }
               else
               {
                  pdParticle.velocityX += passedTime * (this.mGravityX + radialX);
                  pdParticle.velocityY += passedTime * (this.mGravityY + radialY);
               }
               pdParticle.rotation += pdParticle.rotationDelta * passedTime;
            }
         }
         if(!pdParticle.skipUpdate || !this.skipUpdates)
         {
            pdParticle.scaleX += pdParticle.scaleDeltaX * passedTime;
            pdParticle.scaleY += pdParticle.scaleDeltaY * passedTime;
            if(pdParticle.hasColorDelta)
            {
               pdParticle.red += pdParticle.colorArgbDelta.red * passedTime;
               pdParticle.green += pdParticle.colorArgbDelta.green * passedTime;
               pdParticle.blue += pdParticle.colorArgbDelta.blue * passedTime;
               pdParticle.alpha += pdParticle.colorArgbDelta.alpha * passedTime;
            }
         }
         pdParticle.skipUpdate = !pdParticle.skipUpdate;
      }
      
      private function parseConfig(config:XML, texture:Texture) : void
      {
         this.mEmitterXVariance = parseFloat(config.sourcePositionVariance.attribute("x"));
         this.mEmitterYVariance = parseFloat(config.sourcePositionVariance.attribute("y"));
         this.mGravityX = parseFloat(config.gravity.attribute("x"));
         this.mGravityY = parseFloat(config.gravity.attribute("y"));
         this.mEmitterType = this.getIntValue(config.emitterType);
         this.mMaxNumParticles = this.getIntValue(config.maxParticles);
         this.mLifespan = Math.max(0.01,this.getFloatValue(config.particleLifeSpan));
         this.mLifespanVariance = this.getFloatValue(config.particleLifespanVariance);
         if(config.particleInterval.length() == 1)
         {
            this.mInterval = this.getFloatValue(config.particleInterval);
         }
         else
         {
            this.mInterval = 0;
         }
         this.mStartSizeX = this.getFloatValue(config.startParticleSize);
         this.mStartSizeY = this.mStartSizeX * texture.height / texture.width;
         this.mStartSizeVarianceX = this.getFloatValue(config.startParticleSizeVariance);
         this.mStartSizeVarianceY = this.mStartSizeVarianceX * texture.height / texture.width;
         if(config.startParticleSizeX.length() == 1)
         {
            this.mStartSizeX = this.getFloatValue(config.startParticleSizeX);
         }
         if(config.startParticleSizeVarianceX.length() == 1)
         {
            this.mStartSizeVarianceX = this.getFloatValue(config.startParticleSizeVarianceX);
         }
         if(config.startParticleSizeY.length() == 1)
         {
            this.mStartSizeY = this.getFloatValue(config.startParticleSizeY);
         }
         if(config.startParticleSizeVarianceY.length() == 1)
         {
            this.mStartSizeVarianceY = this.getFloatValue(config.startParticleSizeVarianceY);
         }
         if(config.finishParticleSize.length() == 1)
         {
            this.mEndSizeX = this.getFloatValue(config.finishParticleSize);
            this.mEndSizeY = this.mEndSizeX * texture.height / texture.width;
         }
         if(config.FinishParticleSizeVariance.length() == 1)
         {
            this.mEndSizeVarianceX = this.getFloatValue(config.FinishParticleSizeVariance);
            this.mEndSizeVarianceY = this.mEndSizeVarianceX * texture.height / texture.width;
         }
         if(config.finishParticleSizeX.length() == 1)
         {
            this.mEndSizeX = this.getFloatValue(config.finishParticleSizeX);
         }
         if(config.FinishParticleSizeVarianceX.length() == 1)
         {
            this.mEndSizeVarianceX = this.getFloatValue(config.FinishParticleSizeVarianceX);
         }
         if(config.finishParticleSizeY.length() == 1)
         {
            this.mEndSizeY = this.getFloatValue(config.finishParticleSizeY);
         }
         if(config.FinishParticleSizeVarianceY.length() == 1)
         {
            this.mEndSizeVarianceY = this.getFloatValue(config.FinishParticleSizeVarianceY);
         }
         this.mEmitAngle = deg2rad(this.getFloatValue(config.angle));
         this.mEmitAngleVariance = deg2rad(this.getFloatValue(config.angleVariance));
         this.mSpeed = this.getFloatValue(config.speed);
         this.mSpeedVariance = this.getFloatValue(config.speedVariance);
         this.mRadialAcceleration = this.getFloatValue(config.radialAcceleration);
         this.mTangentialAcceleration = this.getFloatValue(config.tangentialAcceleration);
         this.mMaxRadius = this.getFloatValue(config.maxRadius);
         this.mMaxRadiusVariance = this.getFloatValue(config.maxRadiusVariance);
         this.mMinRadius = this.getFloatValue(config.minRadius);
         this.mRotatePerSecond = deg2rad(this.getFloatValue(config.rotatePerSecond));
         this.mRotatePerSecondVariance = deg2rad(this.getFloatValue(config.rotatePerSecondVariance));
         this.mStartColor = this.getColor(config.startColor);
         this.mStartColorVariance = this.getColor(config.startColorVariance);
         this.mEndColor = this.getColor(config.finishColor);
         this.mEndColorVariance = this.getColor(config.finishColorVariance);
         mBlendFactorSource = this.getBlendFunc(config.blendFuncSource);
         mBlendFactorDestination = this.getBlendFunc(config.blendFuncDestination);
         mTextureSmoothing = this.getTextureSmoothing(config.textureSmoothing);
         if(config.emissionVariance.length == 1)
         {
            mEmissionVariance = this.getFloatValue(config.emissionVariance);
         }
      }
      
      protected function getIntValue(element:XMLList) : int
      {
         return parseInt(element.attribute("value"));
      }
      
      protected function getFloatValue(element:XMLList) : Number
      {
         return parseFloat(element.attribute("value"));
      }
      
      protected function getStringValue(element:XMLList) : String
      {
         return element.attribute("value");
      }
      
      protected function getColor(element:XMLList) : ColorArgb
      {
         var color:ColorArgb = new ColorArgb();
         color.red = parseFloat(element.attribute("red"));
         color.green = parseFloat(element.attribute("green"));
         color.blue = parseFloat(element.attribute("blue"));
         color.alpha = parseFloat(element.attribute("alpha"));
         return color;
      }
      
      protected function getBlendFunc(element:XMLList) : String
      {
         var value:int = this.getIntValue(element);
         switch(value)
         {
            case 0:
               return Context3DBlendFactor.ZERO;
            case 1:
               return Context3DBlendFactor.ONE;
            case 768:
               return Context3DBlendFactor.SOURCE_COLOR;
            case 769:
               return Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR;
            case 770:
               return Context3DBlendFactor.SOURCE_ALPHA;
            case 771:
               return Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
            case 772:
               return Context3DBlendFactor.DESTINATION_ALPHA;
            case 773:
               return Context3DBlendFactor.ONE_MINUS_DESTINATION_ALPHA;
            case 774:
               return Context3DBlendFactor.DESTINATION_COLOR;
            case 775:
               return Context3DBlendFactor.ONE_MINUS_DESTINATION_COLOR;
            default:
               throw new ArgumentError("unsupported blending function: " + value);
         }
      }
      
      protected function getTextureSmoothing(element:XMLList) : int
      {
         var smoothing:String = this.getStringValue(element);
         if(smoothing == "none")
         {
         }
         if(smoothing == "trilinear")
         {
         }
         return QuadBatch.TEXTURE_SMOOTHING_BILINEAR;
      }
   }
}

import starling.extensions.Particle;

class PDParticle extends Particle
{
    
   
   public var colorArgbDelta:ColorArgb;
   
   public var hasColorDelta:Boolean;
   
   public var startX:Number;
   
   public var startY:Number;
   
   public var velocityX:Number;
   
   public var velocityY:Number;
   
   public var radialAcceleration:Number;
   
   public var tangentialAcceleration:Number;
   
   public var radius:Number;
   
   public var radiusDelta:Number;
   
   public var rotationDelta:Number;
   
   public var scaleDeltaX:Number;
   
   public var scaleDeltaY:Number;
   
   public var skipUpdate:Boolean;
   
   function PDParticle()
   {
      super();
      this.colorArgbDelta = new ColorArgb();
   }
}

class ColorArgb
{
    
   
   public var alpha:Number = 0.0;
   
   public var red:Number;
   
   public var green:Number;
   
   public var blue:Number;
   
   function ColorArgb()
   {
      super();
   }
   
   public function toRgb() : uint
   {
      return int(this.red * 255) << 16 | int(this.green * 255) << 8 | int(this.blue * 255);
   }
}
