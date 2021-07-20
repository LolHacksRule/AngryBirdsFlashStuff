package starling.extensions
{
   import starling.textures.TextureSmoothing;
   import starling.textures.Texture;
   import starling.utils.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
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
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.parseConfig(param1,param2);
         var _loc3_:Number = this.mMaxNumParticles / (this.mLifespan + this.mInterval);
         super(param2,_loc3_,this.mMaxNumParticles,mBlendFactorSource,mBlendFactorDestination);
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
      
      override protected function initParticle(param1:Particle) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.mLifespan + this.mLifespanVariance * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.totalTime = _loc3_;
         _loc2_.x = mEmitterX + this.mEmitterXVariance * (Math.random() * 2 - 1);
         _loc2_.y = mEmitterY + this.mEmitterYVariance * (Math.random() * 2 - 1);
         _loc2_.startX = mEmitterX;
         _loc2_.startY = mEmitterY;
         var _loc4_:Number = this.mEmitAngle + this.mEmitAngleVariance * (Math.random() * 2 - 1);
         var _loc5_:Number = this.mSpeed + this.mSpeedVariance * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.mMaxRadius + this.mMaxRadiusVariance * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.mMaxRadius / _loc3_;
         _loc2_.rotation = this.mEmitAngle + this.mEmitAngleVariance * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.mRotatePerSecond + this.mRotatePerSecondVariance * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.mRadialAcceleration;
         _loc2_.tangentialAcceleration = this.mTangentialAcceleration;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.mStartSizeX + this.mStartSizeVarianceX * _loc6_;
         if(!isNaN(this.mEndSizeX))
         {
            _loc8_ = this.mEndSizeX;
            if(!isNaN(this.mEndSizeVarianceX))
            {
               _loc8_ += this.mEndSizeVarianceX * (Math.random() * 2 - 1);
            }
         }
         if(_loc7_ < 0.1)
         {
            _loc7_ = 0.1;
         }
         if(_loc8_ < 0.1)
         {
            _loc8_ = 0.1;
         }
         _loc2_.scaleX = _loc7_ / texture.width;
         _loc2_.scaleDeltaX = (_loc8_ - _loc7_) / _loc3_ / texture.width;
         var _loc9_:Number;
         var _loc10_:Number = _loc9_ = this.mStartSizeY + this.mStartSizeVarianceY * _loc6_;
         if(!isNaN(this.mEndSizeY))
         {
            _loc10_ = this.mEndSizeY;
            if(!isNaN(this.mEndSizeVarianceY))
            {
               _loc10_ += this.mEndSizeVarianceY * (Math.random() * 2 - 1);
            }
         }
         if(_loc9_ < 0.1)
         {
            _loc9_ = 0.1;
         }
         if(_loc10_ < 0.1)
         {
            _loc10_ = 0.1;
         }
         _loc2_.scaleY = _loc9_ / texture.height;
         _loc2_.scaleDeltaY = (_loc10_ - _loc9_) / _loc3_ / texture.height;
         var _loc11_:ColorArgb = _loc2_.colorArgb;
         var _loc12_:ColorArgb = _loc2_.colorArgbDelta;
         _loc11_.red = this.mStartColor.red;
         _loc11_.green = this.mStartColor.green;
         _loc11_.blue = this.mStartColor.blue;
         _loc11_.alpha = this.mStartColor.alpha;
         if(this.mStartColorVariance.red != 0)
         {
            _loc11_.red += this.mStartColorVariance.red * (Math.random() * 2 - 1);
         }
         if(this.mStartColorVariance.green != 0)
         {
            _loc11_.green += this.mStartColorVariance.green * (Math.random() * 2 - 1);
         }
         if(this.mStartColorVariance.blue != 0)
         {
            _loc11_.blue += this.mStartColorVariance.blue * (Math.random() * 2 - 1);
         }
         if(this.mStartColorVariance.alpha != 0)
         {
            _loc11_.alpha += this.mStartColorVariance.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.mEndColor.red;
         var _loc14_:Number = this.mEndColor.green;
         var _loc15_:Number = this.mEndColor.blue;
         var _loc16_:Number = this.mEndColor.alpha;
         if(this.mEndColorVariance.red != 0)
         {
            _loc13_ += this.mEndColorVariance.red * (Math.random() * 2 - 1);
         }
         if(this.mEndColorVariance.green != 0)
         {
            _loc14_ += this.mEndColorVariance.green * (Math.random() * 2 - 1);
         }
         if(this.mEndColorVariance.blue != 0)
         {
            _loc15_ += this.mEndColorVariance.blue * (Math.random() * 2 - 1);
         }
         if(this.mEndColorVariance.alpha != 0)
         {
            _loc16_ += this.mEndColorVariance.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:Particle, param2:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         param2 = (_loc4_ = Number(_loc3_.totalTime - _loc3_.currentTime)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.mEmitterType == this.EMITTER_TYPE_RADIAL)
         {
            if(!_loc3_.skipUpdate || !this.skipUpdates)
            {
               if(this.skipUpdates)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = mEmitterX - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = mEmitterY - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.mMinRadius)
               {
                  _loc3_.currentTime = _loc3_.totalTime;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.skipUpdates)
            {
               _loc5_ = _loc3_.x - _loc3_.startX;
               _loc6_ = _loc3_.y - _loc3_.startY;
               if((_loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)) < 0.01)
               {
                  _loc7_ = 0.01;
               }
               _loc8_ = _loc5_ / _loc7_;
               _loc9_ = _loc6_ / _loc7_;
               _loc10_ = _loc8_;
               _loc11_ = _loc9_;
               _loc8_ *= _loc3_.radialAcceleration;
               _loc9_ *= _loc3_.radialAcceleration;
               _loc12_ = _loc10_;
               _loc10_ = -_loc11_ * _loc3_.tangentialAcceleration;
               _loc11_ = _loc12_ * _loc3_.tangentialAcceleration;
               if(this.skipUpdates)
               {
                  _loc3_.velocityX += 2 * param2 * (this.mGravityX + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.mGravityY + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.mGravityX + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.mGravityY + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.skipUpdates)
         {
            if(this.skipUpdates)
            {
               param2 *= 2;
            }
            _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
            _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
            _loc3_.colorArgb.red += _loc3_.colorArgbDelta.red * param2;
            _loc3_.colorArgb.green += _loc3_.colorArgbDelta.green * param2;
            _loc3_.colorArgb.blue += _loc3_.colorArgbDelta.blue * param2;
            _loc3_.colorArgb.alpha += _loc3_.colorArgbDelta.alpha * param2;
            _loc3_.red = _loc3_.colorArgb.red;
            _loc3_.green = _loc3_.colorArgb.green;
            _loc3_.blue = _loc3_.colorArgb.blue;
            _loc3_.alpha = _loc3_.colorArgb.alpha;
         }
         _loc3_.skipUpdate = !_loc3_.skipUpdate;
      }
      
      private function parseConfig(param1:XML, param2:Texture) : void
      {
         this.mEmitterXVariance = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.mEmitterYVariance = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.mGravityX = parseFloat(param1.gravity.attribute("x"));
         this.mGravityY = parseFloat(param1.gravity.attribute("y"));
         this.mEmitterType = this.getIntValue(param1.emitterType);
         this.mMaxNumParticles = this.getIntValue(param1.maxParticles);
         this.mLifespan = Math.max(0.01,this.getFloatValue(param1.particleLifeSpan));
         this.mLifespanVariance = this.getFloatValue(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.mInterval = this.getFloatValue(param1.particleInterval);
         }
         else
         {
            this.mInterval = 0;
         }
         this.mStartSizeX = this.getFloatValue(param1.startParticleSize);
         this.mStartSizeY = this.mStartSizeX * param2.height / param2.width;
         this.mStartSizeVarianceX = this.getFloatValue(param1.startParticleSizeVariance);
         this.mStartSizeVarianceY = this.mStartSizeVarianceX * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.mStartSizeX = this.getFloatValue(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.mStartSizeVarianceX = this.getFloatValue(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.mStartSizeY = this.getFloatValue(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.mStartSizeVarianceY = this.getFloatValue(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.mEndSizeX = this.getFloatValue(param1.finishParticleSize);
            this.mEndSizeY = this.mEndSizeX * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.mEndSizeVarianceX = this.getFloatValue(param1.FinishParticleSizeVariance);
            this.mEndSizeVarianceY = this.mEndSizeVarianceX * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.mEndSizeX = this.getFloatValue(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.mEndSizeVarianceX = this.getFloatValue(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.mEndSizeY = this.getFloatValue(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.mEndSizeVarianceY = this.getFloatValue(param1.FinishParticleSizeVarianceY);
         }
         this.mEmitAngle = deg2rad(this.getFloatValue(param1.angle));
         this.mEmitAngleVariance = deg2rad(this.getFloatValue(param1.angleVariance));
         this.mSpeed = this.getFloatValue(param1.speed);
         this.mSpeedVariance = this.getFloatValue(param1.speedVariance);
         this.mRadialAcceleration = this.getFloatValue(param1.radialAcceleration);
         this.mTangentialAcceleration = this.getFloatValue(param1.tangentialAcceleration);
         this.mMaxRadius = this.getFloatValue(param1.maxRadius);
         this.mMaxRadiusVariance = this.getFloatValue(param1.maxRadiusVariance);
         this.mMinRadius = this.getFloatValue(param1.minRadius);
         this.mRotatePerSecond = deg2rad(this.getFloatValue(param1.rotatePerSecond));
         this.mRotatePerSecondVariance = deg2rad(this.getFloatValue(param1.rotatePerSecondVariance));
         this.mStartColor = this.getColor(param1.startColor);
         this.mStartColorVariance = this.getColor(param1.startColorVariance);
         this.mEndColor = this.getColor(param1.finishColor);
         this.mEndColorVariance = this.getColor(param1.finishColorVariance);
         mBlendFactorSource = this.getBlendFunc(param1.blendFuncSource);
         mBlendFactorDestination = this.getBlendFunc(param1.blendFuncDestination);
         mTextureSmoothing = this.getTextureSmoothing(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            mEmissionVariance = this.getFloatValue(param1.emissionVariance);
         }
      }
      
      protected function getIntValue(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function getFloatValue(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function getStringValue(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function getColor(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function getBlendFunc(param1:XMLList) : String
      {
         var _loc2_:int = this.getIntValue(param1);
         switch(_loc2_)
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
               throw new ArgumentError("unsupported blending function: " + _loc2_);
         }
      }
      
      protected function getTextureSmoothing(param1:XMLList) : String
      {
         var _loc2_:String = this.getStringValue(param1);
         if(_loc2_ == TextureSmoothing.BILINEAR || _loc2_ == TextureSmoothing.TRILINEAR || _loc2_ == TextureSmoothing.NONE)
         {
            return _loc2_;
         }
         return TextureSmoothing.BILINEAR;
      }
   }
}

import starling.extensions.Particle;

class PDParticle extends Particle
{
    
   
   public var colorArgb:ColorArgb;
   
   public var colorArgbDelta:ColorArgb;
   
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
      this.colorArgb = new ColorArgb();
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
