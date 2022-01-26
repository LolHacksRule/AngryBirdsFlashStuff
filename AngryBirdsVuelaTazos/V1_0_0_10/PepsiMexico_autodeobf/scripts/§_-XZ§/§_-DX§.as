package §_-XZ§
{
   import §_-Zq§.deg2rad;
   import §_-jY§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-DX§ extends §_-Kp§
   {
       
      
      private const §_-S7§:int = 0;
      
      private const §_-jh§:int = 1;
      
      private var §_-QS§:Number;
      
      private var §_-mT§:int;
      
      private var §_-2H§:Number;
      
      private var §_-c2§:Number;
      
      private var §_-IY§:int;
      
      private var §_-Ds§:Number;
      
      private var §_-4n§:Number;
      
      private var §_-PN§:Number;
      
      private var §_-6W§:Number;
      
      private var §_-Ns§:Number;
      
      private var §_-Td§:Number;
      
      private var §_-nR§:Number;
      
      private var §_-OA§:Number;
      
      private var §_-Wa§:Number;
      
      private var §_-c5§:Number;
      
      private var §_-KB§:Number;
      
      private var §_-rf§:Number;
      
      private var §_-Z9§:Number;
      
      private var §_-ur§:Number;
      
      private var §_-Mp§:Number;
      
      private var §_-n1§:Number;
      
      private var §_-I3§:Number;
      
      private var §_-JM§:Number;
      
      private var §_-Zb§:Number;
      
      private var §_-Cc§:Number;
      
      private var §_-o3§:Number;
      
      private var §_-9N§:ColorArgb;
      
      private var §_-U8§:ColorArgb;
      
      private var §_-jR§:ColorArgb;
      
      private var §_-o5§:ColorArgb;
      
      public function §_-DX§(param1:XML, param2:Texture)
      {
         this.§_-tr§(param1);
         var _loc3_:Number = this.§_-IY§ / this.§_-Ds§;
         super(param2,_loc3_,this.§_-IY§,§_-iX§,§_-El§);
         §_-Hr§ = false;
      }
      
      override protected function createParticle() : §_-N8§
      {
         return new PDParticle();
      }
      
      override protected function initParticle(param1:§_-N8§) : void
      {
         var _loc2_:PDParticle = null;
         _loc2_ = param1 as PDParticle;
         var _loc3_:Number = this.§_-Ds§ + this.§_-4n§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.§_-xC§ = 0;
         _loc2_.§_-7K§ = _loc3_;
         _loc2_.x = §_-bQ§ + this.§_-2H§ * (Math.random() * 2 - 1);
         _loc2_.y = final + this.§_-c2§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-bQ§;
         _loc2_.startY = final;
         var _loc4_:Number = this.§_-nR§ + this.§_-OA§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-Wa§ + this.§_-c5§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * Math.sin(_loc4_);
         _loc2_.radius = this.§_-I3§ + this.§_-JM§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-I3§ / _loc3_;
         _loc2_.rotation = this.§_-nR§ + this.§_-OA§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-Cc§ + this.§_-o3§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-Z9§;
         _loc2_.tangentialAcceleration = this.§_-Mp§;
         var _loc6_:Number = this.§_-PN§ + this.§_-6W§ * (Math.random() * 2 - 1);
         var _loc7_:Number = this.§_-Ns§ + this.§_-Td§ * (Math.random() * 2 - 1);
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
         _loc8_.red = this.§_-9N§.red;
         _loc8_.green = this.§_-9N§.green;
         _loc8_.blue = this.§_-9N§.blue;
         _loc8_.alpha = this.§_-9N§.alpha;
         if(this.§_-U8§.red != 0)
         {
            _loc8_.red += this.§_-U8§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-U8§.green != 0)
         {
            _loc8_.green += this.§_-U8§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-U8§.blue != 0)
         {
            _loc8_.blue += this.§_-U8§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-U8§.alpha != 0)
         {
            _loc8_.alpha += this.§_-U8§.alpha * (Math.random() * 2 - 1);
         }
         var _loc10_:Number = this.§_-jR§.red;
         var _loc11_:Number = this.§_-jR§.green;
         var _loc12_:Number = this.§_-jR§.blue;
         var _loc13_:Number = this.§_-jR§.alpha;
         if(this.§_-o5§.red != 0)
         {
            _loc10_ += this.§_-o5§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-o5§.green != 0)
         {
            _loc11_ += this.§_-o5§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-o5§.blue != 0)
         {
            _loc12_ += this.§_-o5§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-o5§.alpha != 0)
         {
            _loc13_ += this.§_-o5§.alpha * (Math.random() * 2 - 1);
         }
         _loc9_.red = (_loc10_ - _loc8_.red) / _loc3_;
         _loc9_.green = (_loc11_ - _loc8_.green) / _loc3_;
         _loc9_.blue = (_loc12_ - _loc8_.blue) / _loc3_;
         _loc9_.alpha = (_loc13_ - _loc8_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-N8§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-7K§ - _loc3_.§_-xC§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-xC§ += param2;
         if(this.§_-mT§ == this.§_-jh§)
         {
            if(!_loc3_.skipUpdate)
            {
               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               _loc3_.x = §_-bQ§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = final - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-Zb§)
               {
                  _loc3_.§_-xC§ = _loc3_.§_-7K§;
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
               _loc3_.velocityX += 2 * param2 * (this.§_-KB§ + _loc8_ + _loc10_);
               _loc3_.velocityY += 2 * param2 * (this.§_-rf§ + _loc9_ + _loc11_);
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
      
      private function §_-tr§(param1:XML) : void
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
         this.§_-2H§ = parseFloat(config.sourcePositionVariance.attribute("x"));
         this.§_-c2§ = parseFloat(config.sourcePositionVariance.attribute("y"));
         this.§_-KB§ = parseFloat(config.gravity.attribute("x"));
         this.§_-rf§ = parseFloat(config.gravity.attribute("y"));
         this.§_-mT§ = getIntValue(config.emitterType);
         this.§_-IY§ = getIntValue(config.maxParticles);
         this.§_-Ds§ = Math.max(0.01,getFloatValue(config.particleLifeSpan));
         this.§_-4n§ = getFloatValue(config.particleLifespanVariance);
         this.§_-PN§ = getFloatValue(config.startParticleSize);
         this.§_-6W§ = getFloatValue(config.startParticleSizeVariance);
         this.§_-Ns§ = getFloatValue(config.finishParticleSize);
         this.§_-Td§ = getFloatValue(config.FinishParticleSizeVariance);
         this.§_-nR§ = deg2rad(getFloatValue(config.angle));
         this.§_-OA§ = deg2rad(getFloatValue(config.angleVariance));
         this.§_-Wa§ = getFloatValue(config.speed);
         this.§_-c5§ = getFloatValue(config.speedVariance);
         this.§_-Z9§ = getFloatValue(config.radialAcceleration);
         this.§_-Mp§ = getFloatValue(config.tangentialAcceleration);
         this.§_-I3§ = getFloatValue(config.maxRadius);
         this.§_-JM§ = getFloatValue(config.maxRadiusVariance);
         this.§_-Zb§ = getFloatValue(config.minRadius);
         this.§_-Cc§ = deg2rad(getFloatValue(config.rotatePerSecond));
         this.§_-o3§ = deg2rad(getFloatValue(config.rotatePerSecondVariance));
         this.§_-9N§ = getColor(config.startColor);
         this.§_-U8§ = getColor(config.startColorVariance);
         this.§_-jR§ = getColor(config.finishColor);
         this.§_-o5§ = getColor(config.finishColorVariance);
         §_-iX§ = getBlendFunc(config.blendFuncSource);
         §_-El§ = getBlendFunc(config.blendFuncDestination);
      }
   }
}

import §_-XZ§.§_-N8§;

class PDParticle extends §_-N8§
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
