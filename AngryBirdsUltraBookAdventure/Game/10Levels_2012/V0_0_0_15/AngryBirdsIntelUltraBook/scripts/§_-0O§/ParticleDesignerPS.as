package §_-0O§
{
   import §_-UD§.deg2rad;
   import §_-z4§.Texture;
   import §_-z4§.§_-IJ§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §_-mz§
   {
       
      
      private const §_-jy§:int = 0;
      
      private const §_-13§:int = 1;
      
      private var §_-07j§:Number;
      
      private var §_-08H§:int;
      
      private var §_-fk§:Number;
      
      private var §_-00Y§:Number;
      
      private var §_-tq§:int;
      
      private var §_-sz§:Number;
      
      private var §_-m0§:Number;
      
      private var §_-IM§:Number;
      
      private var §_-00X§:Number;
      
      private var §_-tw§:Number;
      
      private var §_-aK§:Number;
      
      private var §_-Ph§:Number;
      
      private var §_-qW§:Number;
      
      private var §_-k8§:Number;
      
      private var §_-0BL§:Number;
      
      private var §_-he§:Number;
      
      private var §_-038§:Number;
      
      private var §_-iP§:Number;
      
      private var §_-0D2§:Number;
      
      private var §_-gi§:Number;
      
      private var §_-Eu§:Number;
      
      private var §_-yi§:Number;
      
      private var §_-0S§:Number;
      
      private var §_-Q5§:Number;
      
      private var §_-xj§:Number;
      
      private var §_-iD§:Number;
      
      private var §_-Fs§:Number;
      
      private var §_-C0§:Number;
      
      private var §_-06-§:Number;
      
      private var §_-V6§:Number;
      
      private var §_-HU§:Number;
      
      private var §_-0E§:ColorArgb;
      
      private var §_-3L§:ColorArgb;
      
      private var §_-gN§:ColorArgb;
      
      private var §_-D2§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§_-eG§(param1,param2);
         var _loc3_:Number = this.§_-tq§ / (this.§_-sz§ + this.§_-IM§);
         super(param2,_loc3_,this.§_-tq§,§_-LL§,§_-r4§);
         §_-XA§ = false;
      }
      
      public function get §_-cJ§() : int
      {
         return this.§_-tq§;
      }
      
      override protected function createParticle() : §_-0D8§
      {
         return new PDParticle();
      }
      
      private function get §_-Zn§() : Boolean
      {
         return this.§_-cJ§ >= 20;
      }
      
      override protected function initParticle(param1:§_-0D8§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§_-sz§ + this.§_-m0§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§_-Ms§ = 0;
         _loc2_.§_-8f§ = _loc3_;
         _loc2_.x = §_-7o§ + this.§_-fk§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-bO§ + this.§_-00Y§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-7o§;
         _loc2_.startY = §_-bO§;
         var _loc4_:Number = this.§_-038§ + this.§_-iP§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-0D2§ + this.§_-gi§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§_-Fs§ + this.§_-C0§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-Fs§ / _loc3_;
         _loc2_.rotation = this.§_-038§ + this.§_-iP§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-V6§ + this.§_-HU§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-0S§;
         _loc2_.tangentialAcceleration = this.§_-xj§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§_-00X§ + this.§_-tw§ * _loc6_;
         if(!isNaN(this.§_-qW§))
         {
            _loc8_ = this.§_-qW§;
            if(!isNaN(this.§_-k8§))
            {
               _loc8_ += this.§_-k8§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§_-aK§ + this.§_-Ph§ * _loc6_;
         if(!isNaN(this.§_-0BL§))
         {
            _loc10_ = this.§_-0BL§;
            if(!isNaN(this.§_-he§))
            {
               _loc10_ += this.§_-he§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§_-0E§.red;
         _loc11_.green = this.§_-0E§.green;
         _loc11_.blue = this.§_-0E§.blue;
         _loc11_.alpha = this.§_-0E§.alpha;
         if(this.§_-3L§.red != 0)
         {
            _loc11_.red += this.§_-3L§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-3L§.green != 0)
         {
            _loc11_.green += this.§_-3L§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-3L§.blue != 0)
         {
            _loc11_.blue += this.§_-3L§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-3L§.alpha != 0)
         {
            _loc11_.alpha += this.§_-3L§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§_-gN§.red;
         var _loc14_:Number = this.§_-gN§.green;
         var _loc15_:Number = this.§_-gN§.blue;
         var _loc16_:Number = this.§_-gN§.alpha;
         if(this.§_-D2§.red != 0)
         {
            _loc13_ += this.§_-D2§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-D2§.green != 0)
         {
            _loc14_ += this.§_-D2§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-D2§.blue != 0)
         {
            _loc15_ += this.§_-D2§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-D2§.alpha != 0)
         {
            _loc16_ += this.§_-D2§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-0D8§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-8f§ - _loc3_.§_-Ms§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-Ms§ += param2;
         if(this.§_-08H§ == this.§_-13§)
         {
            if(!_loc3_.skipUpdate || !this.§_-Zn§)
            {
               if(this.§_-Zn§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §_-7o§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-bO§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-06-§)
               {
                  _loc3_.§_-Ms§ = _loc3_.§_-8f§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§_-Zn§)
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
               if(this.§_-Zn§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§_-Eu§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§_-yi§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§_-Eu§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§_-yi§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§_-Zn§)
         {
            if(this.§_-Zn§)
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
      
      private function §_-eG§(param1:XML, param2:Texture) : void
      {
         this.§_-fk§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§_-00Y§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§_-Eu§ = parseFloat(param1.gravity.attribute("x"));
         this.§_-yi§ = parseFloat(param1.gravity.attribute("y"));
         this.§_-08H§ = this.§_-yb§(param1.emitterType);
         this.§_-tq§ = this.§_-yb§(param1.maxParticles);
         this.§_-sz§ = Math.max(0.01,this.§_-KO§(param1.particleLifeSpan));
         this.§_-m0§ = this.§_-KO§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§_-IM§ = this.§_-KO§(param1.particleInterval);
         }
         else
         {
            this.§_-IM§ = 0;
         }
         this.§_-00X§ = this.§_-KO§(param1.startParticleSize);
         this.§_-aK§ = this.§_-00X§ * param2.height / param2.width;
         this.§_-tw§ = this.§_-KO§(param1.startParticleSizeVariance);
         this.§_-Ph§ = this.§_-tw§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§_-00X§ = this.§_-KO§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§_-tw§ = this.§_-KO§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§_-aK§ = this.§_-KO§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§_-Ph§ = this.§_-KO§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§_-qW§ = this.§_-KO§(param1.finishParticleSize);
            this.§_-0BL§ = this.§_-qW§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§_-k8§ = this.§_-KO§(param1.FinishParticleSizeVariance);
            this.§_-he§ = this.§_-k8§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§_-qW§ = this.§_-KO§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§_-k8§ = this.§_-KO§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§_-0BL§ = this.§_-KO§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§_-he§ = this.§_-KO§(param1.FinishParticleSizeVarianceY);
         }
         this.§_-038§ = deg2rad(this.§_-KO§(param1.angle));
         this.§_-iP§ = deg2rad(this.§_-KO§(param1.angleVariance));
         this.§_-0D2§ = this.§_-KO§(param1.speed);
         this.§_-gi§ = this.§_-KO§(param1.speedVariance);
         this.§_-0S§ = this.§_-KO§(param1.radialAcceleration);
         this.§_-xj§ = this.§_-KO§(param1.tangentialAcceleration);
         this.§_-Fs§ = this.§_-KO§(param1.maxRadius);
         this.§_-C0§ = this.§_-KO§(param1.maxRadiusVariance);
         this.§_-06-§ = this.§_-KO§(param1.minRadius);
         this.§_-V6§ = deg2rad(this.§_-KO§(param1.rotatePerSecond));
         this.§_-HU§ = deg2rad(this.§_-KO§(param1.rotatePerSecondVariance));
         this.§_-0E§ = this.§_-01U§(param1.startColor);
         this.§_-3L§ = this.§_-01U§(param1.startColorVariance);
         this.§_-gN§ = this.§_-01U§(param1.finishColor);
         this.§_-D2§ = this.§_-01U§(param1.finishColorVariance);
         §_-LL§ = this.§_-7N§(param1.blendFuncSource);
         §_-r4§ = this.§_-7N§(param1.blendFuncDestination);
         §_-OP§ = this.§_-Nl§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §_-PG§ = this.§_-KO§(param1.emissionVariance);
         }
      }
      
      protected function §_-yb§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §_-KO§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §_-dD§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §_-01U§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §_-7N§(param1:XMLList) : String
      {
         var _loc2_:int = this.§_-yb§(param1);
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
      
      protected function §_-Nl§(param1:XMLList) : String
      {
         var _loc2_:String = this.§_-dD§(param1);
         if(_loc2_ == §_-IJ§.§_-Th§ || _loc2_ == §_-IJ§.§_-nO§ || _loc2_ == §_-IJ§.NONE)
         {
            return _loc2_;
         }
         return §_-IJ§.§_-Th§;
      }
   }
}

import §_-0O§.§_-0D8§;

class PDParticle extends §_-0D8§
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
