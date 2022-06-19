package §_-5t§
{
   import §_-i9§.Texture;
   import §_-i9§.§_-s6§;
   import §_-kC§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-WP§ extends §_-zl§
   {
       
      
      private const §_-Nt§:int = 0;
      
      private const §_-00E§:int = 1;
      
      private var §_-hn§:Number;
      
      private var §_-Oh§:int;
      
      private var §_-O1§:Number;
      
      private var §_-iX§:Number;
      
      private var §_-Sq§:int;
      
      private var §_-X3§:Number;
      
      private var §_-yn§:Number;
      
      private var §_-b6§:Number;
      
      private var §_-nu§:Number;
      
      private var §_-H5§:Number;
      
      private var §_-sD§:Number;
      
      private var §_-q8§:Number;
      
      private var §_-x1§:Number;
      
      private var §_-MN§:Number;
      
      private var §_-dn§:Number;
      
      private var §_-wc§:Number;
      
      private var §_-q2§:Number;
      
      private var §_-kc§:Number;
      
      private var §_-00z§:Number;
      
      private var §_-0-f§:Number;
      
      private var §_-IA§:Number;
      
      private var §_-LZ§:Number;
      
      private var §_-Eq§:Number;
      
      private var §_-bp§:Number;
      
      private var §_-1x§:Number;
      
      private var §_-Ns§:Number;
      
      private var § if§:Number;
      
      private var §_-bc§:Number;
      
      private var §_-6t§:Number;
      
      private var §_-5a§:Number;
      
      private var §_-mz§:Number;
      
      private var §_-oY§:ColorArgb;
      
      private var §_-zV§:ColorArgb;
      
      private var §_-oW§:ColorArgb;
      
      private var §_-5U§:ColorArgb;
      
      public function §_-WP§(param1:XML, param2:Texture)
      {
         this.§_-s§(param1,param2);
         var _loc3_:Number = this.§_-Sq§ / (this.§_-X3§ + this.§_-b6§);
         super(param2,_loc3_,this.§_-Sq§,§_-bR§,§_-F9§);
         §_-ra§ = false;
      }
      
      public function get §_-BL§() : int
      {
         return this.§_-Sq§;
      }
      
      override protected function createParticle() : §_-M4§
      {
         return new PDParticle();
      }
      
      private function get §_-Gk§() : Boolean
      {
         return this.§_-BL§ >= 20;
      }
      
      override protected function initParticle(param1:§_-M4§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§_-X3§ + this.§_-yn§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§_-cT§ = 0;
         _loc2_.§_-Ig§ = _loc3_;
         _loc2_.x = §_-Pm§ + this.§_-O1§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-r-§ + this.§_-iX§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-Pm§;
         _loc2_.startY = §_-r-§;
         var _loc4_:Number = this.§_-q2§ + this.§_-kc§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-00z§ + this.§_-0-f§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§ if§ + this.§_-bc§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§ if§ / _loc3_;
         _loc2_.rotation = this.§_-q2§ + this.§_-kc§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-5a§ + this.§_-mz§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-Eq§;
         _loc2_.tangentialAcceleration = this.§_-1x§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§_-nu§ + this.§_-H5§ * _loc6_;
         if(!isNaN(this.§_-x1§))
         {
            _loc8_ = this.§_-x1§;
            if(!isNaN(this.§_-MN§))
            {
               _loc8_ += this.§_-MN§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§_-sD§ + this.§_-q8§ * _loc6_;
         if(!isNaN(this.§_-dn§))
         {
            _loc10_ = this.§_-dn§;
            if(!isNaN(this.§_-wc§))
            {
               _loc10_ += this.§_-wc§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§_-oY§.red;
         _loc11_.green = this.§_-oY§.green;
         _loc11_.blue = this.§_-oY§.blue;
         _loc11_.alpha = this.§_-oY§.alpha;
         if(this.§_-zV§.red != 0)
         {
            _loc11_.red += this.§_-zV§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-zV§.green != 0)
         {
            _loc11_.green += this.§_-zV§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-zV§.blue != 0)
         {
            _loc11_.blue += this.§_-zV§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-zV§.alpha != 0)
         {
            _loc11_.alpha += this.§_-zV§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§_-oW§.red;
         var _loc14_:Number = this.§_-oW§.green;
         var _loc15_:Number = this.§_-oW§.blue;
         var _loc16_:Number = this.§_-oW§.alpha;
         if(this.§_-5U§.red != 0)
         {
            _loc13_ += this.§_-5U§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-5U§.green != 0)
         {
            _loc14_ += this.§_-5U§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-5U§.blue != 0)
         {
            _loc15_ += this.§_-5U§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-5U§.alpha != 0)
         {
            _loc16_ += this.§_-5U§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-M4§, param2:Number) : void
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
         var _loc4_:Number;
         param2 = (_loc4_ = _loc3_.§_-Ig§ - _loc3_.§_-cT§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-cT§ += param2;
         if(this.§_-Oh§ == this.§_-00E§)
         {
            if(!_loc3_.skipUpdate || !this.§_-Gk§)
            {
               if(this.§_-Gk§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §_-Pm§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-r-§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-6t§)
               {
                  _loc3_.§_-cT§ = _loc3_.§_-Ig§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§_-Gk§)
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
               if(this.§_-Gk§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§_-IA§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§_-LZ§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§_-IA§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§_-LZ§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§_-Gk§)
         {
            if(this.§_-Gk§)
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
      
      private function §_-s§(param1:XML, param2:Texture) : void
      {
         this.§_-O1§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§_-iX§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§_-IA§ = parseFloat(param1.gravity.attribute("x"));
         this.§_-LZ§ = parseFloat(param1.gravity.attribute("y"));
         this.§_-Oh§ = this.§_-xh§(param1.emitterType);
         this.§_-Sq§ = this.§_-xh§(param1.maxParticles);
         this.§_-X3§ = Math.max(0.01,this.§_-Oz§(param1.particleLifeSpan));
         this.§_-yn§ = this.§_-Oz§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§_-b6§ = this.§_-Oz§(param1.particleInterval);
         }
         else
         {
            this.§_-b6§ = 0;
         }
         this.§_-nu§ = this.§_-Oz§(param1.startParticleSize);
         this.§_-sD§ = this.§_-nu§ * param2.height / param2.width;
         this.§_-H5§ = this.§_-Oz§(param1.startParticleSizeVariance);
         this.§_-q8§ = this.§_-H5§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§_-nu§ = this.§_-Oz§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§_-H5§ = this.§_-Oz§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§_-sD§ = this.§_-Oz§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§_-q8§ = this.§_-Oz§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§_-x1§ = this.§_-Oz§(param1.finishParticleSize);
            this.§_-dn§ = this.§_-x1§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§_-MN§ = this.§_-Oz§(param1.FinishParticleSizeVariance);
            this.§_-wc§ = this.§_-MN§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§_-x1§ = this.§_-Oz§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§_-MN§ = this.§_-Oz§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§_-dn§ = this.§_-Oz§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§_-wc§ = this.§_-Oz§(param1.FinishParticleSizeVarianceY);
         }
         this.§_-q2§ = deg2rad(this.§_-Oz§(param1.angle));
         this.§_-kc§ = deg2rad(this.§_-Oz§(param1.angleVariance));
         this.§_-00z§ = this.§_-Oz§(param1.speed);
         this.§_-0-f§ = this.§_-Oz§(param1.speedVariance);
         this.§_-Eq§ = this.§_-Oz§(param1.radialAcceleration);
         this.§_-1x§ = this.§_-Oz§(param1.tangentialAcceleration);
         this.§ if§ = this.§_-Oz§(param1.maxRadius);
         this.§_-bc§ = this.§_-Oz§(param1.maxRadiusVariance);
         this.§_-6t§ = this.§_-Oz§(param1.minRadius);
         this.§_-5a§ = deg2rad(this.§_-Oz§(param1.rotatePerSecond));
         this.§_-mz§ = deg2rad(this.§_-Oz§(param1.rotatePerSecondVariance));
         this.§_-oY§ = this.§_-K0§(param1.startColor);
         this.§_-zV§ = this.§_-K0§(param1.startColorVariance);
         this.§_-oW§ = this.§_-K0§(param1.finishColor);
         this.§_-5U§ = this.§_-K0§(param1.finishColorVariance);
         §_-bR§ = this.§_-tP§(param1.blendFuncSource);
         §_-F9§ = this.§_-tP§(param1.blendFuncDestination);
         §_-sa§ = this.§_-qX§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §_-mW§ = this.§_-Oz§(param1.emissionVariance);
         }
      }
      
      protected function §_-xh§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §_-Oz§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §_-aI§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §_-K0§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §_-tP§(param1:XMLList) : String
      {
         var _loc2_:int = this.§_-xh§(param1);
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
      
      protected function §_-qX§(param1:XMLList) : String
      {
         var _loc2_:String = this.§_-aI§(param1);
         if(_loc2_ == §_-s6§.§_-sH§ || _loc2_ == §_-s6§.§_-lN§ || _loc2_ == §_-s6§.NONE)
         {
            return _loc2_;
         }
         return §_-s6§.§_-sH§;
      }
   }
}

import §_-5t§.§_-M4§;

class PDParticle extends §_-M4§
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
