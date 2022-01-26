package §_-NT§
{
   import §_-4g§.Texture;
   import §_-ia§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-7F§ extends §_-2S§
   {
       
      
      private const §_-K3§:int = 0;
      
      private const §_-kO§:int = 1;
      
      private var §_-7c§:Number;
      
      private var §_-Vj§:int;
      
      private var §_-SR§:Number;
      
      private var §_-s2§:Number;
      
      private var §_-lJ§:int;
      
      private var §_-gp§:Number;
      
      private var §_-n§:Number;
      
      private var §_-Sv§:Number;
      
      private var §_-rG§:Number;
      
      private var §_-ol§:Number;
      
      private var §_-Zm§:Number;
      
      private var §_-Gs§:Number;
      
      private var §_-X1§:Number;
      
      private var §_-80§:Number;
      
      private var §_-PW§:Number;
      
      private var §_-JX§:Number;
      
      private var §_-p-§:Number;
      
      private var §_-VK§:Number;
      
      private var §_-4v§:Number;
      
      private var §_-jW§:Number;
      
      private var §_-HN§:Number;
      
      private var §_-Tq§:Number;
      
      private var §_-n2§:Number;
      
      private var §_-Ua§:Number;
      
      private var §_-HQ§:Number;
      
      private var §_-rf§:Number;
      
      private var §_-ic§:ColorArgb;
      
      private var §_-zn§:ColorArgb;
      
      private var §_-ak§:ColorArgb;
      
      private var §_-XS§:ColorArgb;
      
      public function §_-7F§(param1:XML, param2:Texture)
      {
         this.§_-qB§(param1);
         var _loc3_:Number = this.§_-lJ§ / this.§_-gp§;
         super(param2,_loc3_,this.§_-lJ§,§_-pM§,§_-Wx§);
         §_-Cr§ = false;
      }
      
      override protected function createParticle() : §_-Eo§
      {
         return new PDParticle();
      }
      
      override protected function initParticle(param1:§_-Eo§) : void
      {
         var _loc2_:PDParticle = null;
         _loc2_ = param1 as PDParticle;
         var _loc3_:Number = this.§_-gp§ + this.§_-n§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.§_-mm§ = 0;
         _loc2_.§_-UL§ = _loc3_;
         _loc2_.x = §_-CF§ + this.§_-SR§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-Pd§ + this.§_-s2§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-CF§;
         _loc2_.startY = §_-Pd§;
         var _loc4_:Number = this.§_-Gs§ + this.§_-X1§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-80§ + this.§_-PW§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * Math.sin(_loc4_);
         _loc2_.radius = this.§_-Tq§ + this.§_-n2§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-Tq§ / _loc3_;
         _loc2_.rotation = this.§_-Gs§ + this.§_-X1§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-HQ§ + this.§_-rf§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-VK§;
         _loc2_.tangentialAcceleration = this.§_-jW§;
         var _loc6_:Number = this.§_-Sv§ + this.§_-rG§ * (Math.random() * 2 - 1);
         var _loc7_:Number = this.§_-ol§ + this.§_-Zm§ * (Math.random() * 2 - 1);
         if(_loc6_ < 0.1)
         {
            _loc6_ = 0.1;
         }
         if(_loc7_ < 0.1)
         {
            _loc7_ = 0.1;
         }
         _loc2_.scale = _loc6_ / texture.width;
         _loc2_.scaleDelta = (_loc7_ - _loc6_) / _loc3_ / texture.width;
         var _loc8_:ColorArgb = _loc2_.colorArgb;
         var _loc9_:ColorArgb = _loc2_.colorArgbDelta;
         _loc8_.red = this.§_-ic§.red;
         _loc8_.green = this.§_-ic§.green;
         _loc8_.blue = this.§_-ic§.blue;
         _loc8_.alpha = this.§_-ic§.alpha;
         if(this.§_-zn§.red != 0)
         {
            _loc8_.red += this.§_-zn§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-zn§.green != 0)
         {
            _loc8_.green += this.§_-zn§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-zn§.blue != 0)
         {
            _loc8_.blue += this.§_-zn§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-zn§.alpha != 0)
         {
            _loc8_.alpha += this.§_-zn§.alpha * (Math.random() * 2 - 1);
         }
         var _loc10_:Number = this.§_-ak§.red;
         var _loc11_:Number = this.§_-ak§.green;
         var _loc12_:Number = this.§_-ak§.blue;
         var _loc13_:Number = this.§_-ak§.alpha;
         if(this.§_-XS§.red != 0)
         {
            _loc10_ += this.§_-XS§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-XS§.green != 0)
         {
            _loc11_ += this.§_-XS§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-XS§.blue != 0)
         {
            _loc12_ += this.§_-XS§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-XS§.alpha != 0)
         {
            _loc13_ += this.§_-XS§.alpha * (Math.random() * 2 - 1);
         }
         _loc9_.red = (_loc10_ - _loc8_.red) / _loc3_;
         _loc9_.green = (_loc11_ - _loc8_.green) / _loc3_;
         _loc9_.blue = (_loc12_ - _loc8_.blue) / _loc3_;
         _loc9_.alpha = (_loc13_ - _loc8_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-Eo§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-UL§ - _loc3_.§_-mm§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-mm§ += param2;
         if(this.§_-Vj§ == this.§_-kO§)
         {
            if(!_loc3_.skipUpdate)
            {
               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               _loc3_.x = §_-CF§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-Pd§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-Ua§)
               {
                  _loc3_.§_-mm§ = _loc3_.§_-UL§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate)
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
               _loc3_.velocityX += 2 * param2 * (this.§_-JX§ + _loc8_ + _loc10_);
               _loc3_.velocityY += 2 * param2 * (this.§_-p-§ + _loc9_ + _loc11_);
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate)
         {
            param2 *= 2;
            _loc3_.scale += _loc3_.scaleDelta * param2;
            _loc3_.colorArgb.red += _loc3_.colorArgbDelta.red * param2;
            _loc3_.colorArgb.green += _loc3_.colorArgbDelta.green * param2;
            _loc3_.colorArgb.blue += _loc3_.colorArgbDelta.blue * param2;
            _loc3_.colorArgb.alpha += _loc3_.colorArgbDelta.alpha * param2;
            _loc3_.color = _loc3_.colorArgb.toRgb();
            _loc3_.alpha = _loc3_.colorArgb.alpha;
         }
         _loc3_.skipUpdate = !_loc3_.skipUpdate;
      }
      
      private function §_-qB§(param1:XML) : void
      {
         var config:XML = param1;
         var getIntValue:Function = function(param1:XMLList):int
         {
            return parseInt(param1.attribute("value"));
         };
         var getFloatValue:Function = function(param1:XMLList):Number
         {
            return parseFloat(param1.attribute("value"));
         };
         var getColor:Function = function(param1:XMLList):ColorArgb
         {
            var _loc2_:ColorArgb = new ColorArgb();
            _loc2_.red = parseFloat(param1.attribute("red"));
            _loc2_.green = parseFloat(param1.attribute("green"));
            _loc2_.blue = parseFloat(param1.attribute("blue"));
            _loc2_.alpha = parseFloat(param1.attribute("alpha"));
            return _loc2_;
         };
         var getBlendFunc:Function = function(param1:XMLList):String
         {
            var _loc2_:int = getIntValue(param1);
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
         };
         this.§_-SR§ = parseFloat(config.sourcePositionVariance.attribute("x"));
         this.§_-s2§ = parseFloat(config.sourcePositionVariance.attribute("y"));
         this.§_-JX§ = parseFloat(config.gravity.attribute("x"));
         this.§_-p-§ = parseFloat(config.gravity.attribute("y"));
         this.§_-Vj§ = getIntValue(config.emitterType);
         this.§_-lJ§ = getIntValue(config.maxParticles);
         this.§_-gp§ = Math.max(0.01,getFloatValue(config.particleLifeSpan));
         this.§_-n§ = getFloatValue(config.particleLifespanVariance);
         this.§_-Sv§ = getFloatValue(config.startParticleSize);
         this.§_-rG§ = getFloatValue(config.startParticleSizeVariance);
         this.§_-ol§ = getFloatValue(config.finishParticleSize);
         this.§_-Zm§ = getFloatValue(config.FinishParticleSizeVariance);
         this.§_-Gs§ = deg2rad(getFloatValue(config.angle));
         this.§_-X1§ = deg2rad(getFloatValue(config.angleVariance));
         this.§_-80§ = getFloatValue(config.speed);
         this.§_-PW§ = getFloatValue(config.speedVariance);
         this.§_-VK§ = getFloatValue(config.radialAcceleration);
         this.§_-jW§ = getFloatValue(config.tangentialAcceleration);
         this.§_-Tq§ = getFloatValue(config.maxRadius);
         this.§_-n2§ = getFloatValue(config.maxRadiusVariance);
         this.§_-Ua§ = getFloatValue(config.minRadius);
         this.§_-HQ§ = deg2rad(getFloatValue(config.rotatePerSecond));
         this.§_-rf§ = deg2rad(getFloatValue(config.rotatePerSecondVariance));
         this.§_-ic§ = getColor(config.startColor);
         this.§_-zn§ = getColor(config.startColorVariance);
         this.§_-ak§ = getColor(config.finishColor);
         this.§_-XS§ = getColor(config.finishColorVariance);
         §_-pM§ = getBlendFunc(config.blendFuncSource);
         §_-Wx§ = getBlendFunc(config.blendFuncDestination);
      }
   }
}

import §_-NT§.§_-Eo§;

class PDParticle extends §_-Eo§
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
   
   public var scaleDelta:Number;
   
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
    
   
   public var alpha:Number;
   
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
