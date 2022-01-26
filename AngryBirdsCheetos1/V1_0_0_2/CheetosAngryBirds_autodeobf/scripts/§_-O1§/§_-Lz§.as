package §_-O1§
{
   import §_-mb§.deg2rad;
   import §_-yp§.Texture;
   import §_-yp§.§_-fI§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-Lz§ extends §_-wj§
   {
       
      
      private const §_-75§:int = 0;
      
      private const §_-mH§:int = 1;
      
      private var §_-In§:Number;
      
      private var §_-nQ§:int;
      
      private var §_-L7§:Number;
      
      private var §_-W3§:Number;
      
      private var §_-hC§:int;
      
      private var § try§:Number;
      
      private var §_-8X§:Number;
      
      private var §_-wd§:Number;
      
      private var §_-DK§:Number;
      
      private var §_-9m§:Number;
      
      private var §_-wt§:Number;
      
      private var §_-gJ§:Number;
      
      private var §_-qI§:Number;
      
      private var §_-JI§:Number;
      
      private var §_-Pa§:Number;
      
      private var §_-jP§:Number;
      
      private var §_-K1§:Number;
      
      private var §_-Zg§:Number;
      
      private var §_-fT§:Number;
      
      private var §_-DH§:Number;
      
      private var §_-tR§:Number;
      
      private var §_-Ym§:Number;
      
      private var §_-lu§:Number;
      
      private var §_-Su§:Number;
      
      private var §_-f0§:Number;
      
      private var §_-jk§:Number;
      
      private var §_-cC§:Number;
      
      private var §_-Gm§:Number;
      
      private var §_-jB§:Number;
      
      private var §_-hy§:Number;
      
      private var §_-k0§:Number;
      
      private var §_-UU§:ColorArgb;
      
      private var §_-WJ§:ColorArgb;
      
      private var §_-e§:ColorArgb;
      
      private var §_-hz§:ColorArgb;
      
      public function §_-Lz§(param1:XML, param2:Texture)
      {
         this.§_-c8§(param1,param2);
         var _loc3_:Number = this.§_-hC§ / (this.§ try§ + this.§_-wd§);
         super(param2,_loc3_,this.§_-hC§,§_-vT§,§_-Jb§);
         §_-Qx§ = false;
      }
      
      public function get §_-5V§() : int
      {
         return this.§_-hC§;
      }
      
      override protected function createParticle() : §_-Lu§
      {
         return new PDParticle();
      }
      
      private function get §_-p§() : Boolean
      {
         return this.§_-5V§ >= 20;
      }
      
      override protected function initParticle(param1:§_-Lu§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§ try§ + this.§_-8X§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§_-bB§ = 0;
         _loc2_.§_-eN§ = _loc3_;
         _loc2_.x = §_-hn§ + this.§_-L7§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-DB§ + this.§_-W3§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-hn§;
         _loc2_.startY = §_-DB§;
         var _loc4_:Number = this.§_-K1§ + this.§_-Zg§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-fT§ + this.§_-DH§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§_-cC§ + this.§_-Gm§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-cC§ / _loc3_;
         _loc2_.rotation = this.§_-K1§ + this.§_-Zg§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-hy§ + this.§_-k0§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-lu§;
         _loc2_.tangentialAcceleration = this.§_-f0§;
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = this.§_-DK§ + this.§_-9m§ * (Math.random() * 2 - 1);
         if(!isNaN(this.§_-qI§))
         {
            _loc7_ = this.§_-qI§;
            if(!isNaN(this.§_-JI§))
            {
               _loc7_ += this.§_-JI§ * (Math.random() * 2 - 1);
            }
         }
         if(_loc6_ < 0.1)
         {
            _loc6_ = 0.1;
         }
         if(_loc7_ < 0.1)
         {
            _loc7_ = 0.1;
         }
         _loc2_.scaleX = _loc6_ / texture.width;
         _loc2_.scaleDeltaX = (_loc7_ - _loc6_) / _loc3_ / texture.width;
         var _loc8_:Number;
         var _loc9_:Number = _loc8_ = this.§_-wt§ + this.§_-gJ§ * (Math.random() * 2 - 1);
         if(!isNaN(this.§_-Pa§))
         {
            _loc9_ = this.§_-Pa§;
            if(!isNaN(this.§_-jP§))
            {
               _loc9_ += this.§_-jP§ * (Math.random() * 2 - 1);
            }
         }
         if(_loc8_ < 0.1)
         {
            _loc8_ = 0.1;
         }
         if(_loc9_ < 0.1)
         {
            _loc9_ = 0.1;
         }
         _loc2_.scaleY = _loc8_ / texture.height;
         _loc2_.scaleDeltaY = (_loc9_ - _loc8_) / _loc3_ / texture.height;
         var _loc10_:ColorArgb = _loc2_.colorArgb;
         var _loc11_:ColorArgb = _loc2_.colorArgbDelta;
         _loc10_.red = this.§_-UU§.red;
         _loc10_.green = this.§_-UU§.green;
         _loc10_.blue = this.§_-UU§.blue;
         _loc10_.alpha = this.§_-UU§.alpha;
         if(this.§_-WJ§.red != 0)
         {
            _loc10_.red += this.§_-WJ§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-WJ§.green != 0)
         {
            _loc10_.green += this.§_-WJ§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-WJ§.blue != 0)
         {
            _loc10_.blue += this.§_-WJ§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-WJ§.alpha != 0)
         {
            _loc10_.alpha += this.§_-WJ§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§_-e§.red;
         var _loc13_:Number = this.§_-e§.green;
         var _loc14_:Number = this.§_-e§.blue;
         var _loc15_:Number = this.§_-e§.alpha;
         if(this.§_-hz§.red != 0)
         {
            _loc12_ += this.§_-hz§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-hz§.green != 0)
         {
            _loc13_ += this.§_-hz§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-hz§.blue != 0)
         {
            _loc14_ += this.§_-hz§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-hz§.alpha != 0)
         {
            _loc15_ += this.§_-hz§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc10_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc10_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc10_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc10_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-Lu§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-eN§ - _loc3_.§_-bB§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-bB§ += param2;
         if(this.§_-nQ§ == this.§_-mH§)
         {
            if(!_loc3_.skipUpdate || !this.§_-p§)
            {
               if(this.§_-p§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §_-hn§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-DB§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-jB§)
               {
                  _loc3_.§_-bB§ = _loc3_.§_-eN§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§_-p§)
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
               if(this.§_-p§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§_-tR§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§_-Ym§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§_-tR§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§_-Ym§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§_-p§)
         {
            if(this.§_-p§)
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
      
      private function §_-c8§(param1:XML, param2:Texture) : void
      {
         this.§_-L7§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§_-W3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§_-tR§ = parseFloat(param1.gravity.attribute("x"));
         this.§_-Ym§ = parseFloat(param1.gravity.attribute("y"));
         this.§_-nQ§ = this.§_-EZ§(param1.emitterType);
         this.§_-hC§ = this.§_-EZ§(param1.maxParticles);
         this.§ try§ = Math.max(0.01,this.§_-Hd§(param1.particleLifeSpan));
         this.§_-8X§ = this.§_-Hd§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§_-wd§ = this.§_-Hd§(param1.particleInterval);
         }
         else
         {
            this.§_-wd§ = 0;
         }
         this.§_-DK§ = this.§_-Hd§(param1.startParticleSize);
         this.§_-wt§ = this.§_-DK§ * param2.height / param2.width;
         this.§_-9m§ = this.§_-Hd§(param1.startParticleSizeVariance);
         this.§_-gJ§ = this.§_-9m§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§_-DK§ = this.§_-Hd§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§_-9m§ = this.§_-Hd§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§_-wt§ = this.§_-Hd§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§_-gJ§ = this.§_-Hd§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§_-qI§ = this.§_-Hd§(param1.finishParticleSize);
            this.§_-Pa§ = this.§_-qI§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§_-JI§ = this.§_-Hd§(param1.FinishParticleSizeVariance);
            this.§_-jP§ = this.§_-JI§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§_-qI§ = this.§_-Hd§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§_-JI§ = this.§_-Hd§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§_-Pa§ = this.§_-Hd§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§_-jP§ = this.§_-Hd§(param1.FinishParticleSizeVarianceY);
         }
         this.§_-K1§ = deg2rad(this.§_-Hd§(param1.angle));
         this.§_-Zg§ = deg2rad(this.§_-Hd§(param1.angleVariance));
         this.§_-fT§ = this.§_-Hd§(param1.speed);
         this.§_-DH§ = this.§_-Hd§(param1.speedVariance);
         this.§_-lu§ = this.§_-Hd§(param1.radialAcceleration);
         this.§_-f0§ = this.§_-Hd§(param1.tangentialAcceleration);
         this.§_-cC§ = this.§_-Hd§(param1.maxRadius);
         this.§_-Gm§ = this.§_-Hd§(param1.maxRadiusVariance);
         this.§_-jB§ = this.§_-Hd§(param1.minRadius);
         this.§_-hy§ = deg2rad(this.§_-Hd§(param1.rotatePerSecond));
         this.§_-k0§ = deg2rad(this.§_-Hd§(param1.rotatePerSecondVariance));
         this.§_-UU§ = this.§_-Xh§(param1.startColor);
         this.§_-WJ§ = this.§_-Xh§(param1.startColorVariance);
         this.§_-e§ = this.§_-Xh§(param1.finishColor);
         this.§_-hz§ = this.§_-Xh§(param1.finishColorVariance);
         §_-vT§ = this.§_-xd§(param1.blendFuncSource);
         §_-Jb§ = this.§_-xd§(param1.blendFuncDestination);
         §_-Gn§ = this.§_-G6§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §_-Ok§ = this.§_-Hd§(param1.emissionVariance);
         }
      }
      
      protected function §_-EZ§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §_-Hd§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §_-cn§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §_-Xh§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §_-xd§(param1:XMLList) : String
      {
         var _loc2_:int = this.§_-EZ§(param1);
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
      
      protected function §_-G6§(param1:XMLList) : String
      {
         var _loc2_:String = this.§_-cn§(param1);
         if(_loc2_ == §_-fI§.§_-a3§ || _loc2_ == §_-fI§.§_-Xr§ || _loc2_ == §_-fI§.NONE)
         {
            return _loc2_;
         }
         return §_-fI§.§_-a3§;
      }
   }
}

import §_-O1§.§_-Lu§;

class PDParticle extends §_-Lu§
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
