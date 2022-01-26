package §_-5M§
{
   import §_-CG§.deg2rad;
   import §_-DQ§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-sV§ extends §_-6U§
   {
       
      
      private const §_-fU§:int = 0;
      
      private const §_-GS§:int = 1;
      
      private var §_-46§:Number;
      
      private var §_-86§:int;
      
      private var §_-MN§:Number;
      
      private var §_-hI§:Number;
      
      private var §_-0b§:int;
      
      private var §_-uD§:Number;
      
      private var §_-u3§:Number;
      
      private var §_-Au§:Number;
      
      private var §_-u8§:Number;
      
      private var §_-mF§:Number;
      
      private var §_-8M§:Number;
      
      private var §_-NN§:Number;
      
      private var §_-aQ§:Number;
      
      private var §_-zq§:Number;
      
      private var § do§:Number;
      
      private var §_-VY§:Number;
      
      private var §_-we§:Number;
      
      private var §_-Tl§:Number;
      
      private var §_-MB§:Number;
      
      private var §_-b3§:Number;
      
      private var §_-Q0§:Number;
      
      private var §_-w2§:Number;
      
      private var §_-Gm§:Number;
      
      private var §_-qq§:Number;
      
      private var §_-l4§:Number;
      
      private var §_-Vh§:Number;
      
      private var §_-HA§:ColorArgb;
      
      private var §_-9P§:ColorArgb;
      
      private var §_-As§:ColorArgb;
      
      private var §_-O-§:ColorArgb;
      
      public function §_-sV§(param1:XML, param2:Texture)
      {
         this.§_-yU§(param1);
         var _loc3_:Number = this.§_-0b§ / this.§_-uD§;
         super(param2,_loc3_,this.§_-0b§,§_-8H§,§_-ry§);
         §_-dx§ = false;
      }
      
      override protected function createParticle() : §_-RP§
      {
         return new PDParticle();
      }
      
      override protected function initParticle(param1:§_-RP§) : void
      {
         var _loc2_:PDParticle = null;
         _loc2_ = param1 as PDParticle;
         var _loc3_:Number = this.§_-uD§ + this.§_-u3§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.§_-QZ§ = 0;
         _loc2_.§_-ms§ = _loc3_;
         _loc2_.x = §_-r0§ + this.§_-MN§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-if§ + this.§_-hI§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-r0§;
         _loc2_.startY = §_-if§;
         var _loc4_:Number = this.§_-NN§ + this.§_-aQ§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-zq§ + this.§ do§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * Math.sin(_loc4_);
         _loc2_.radius = this.§_-w2§ + this.§_-Gm§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-w2§ / _loc3_;
         _loc2_.rotation = this.§_-NN§ + this.§_-aQ§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-l4§ + this.§_-Vh§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-Tl§;
         _loc2_.tangentialAcceleration = this.§_-b3§;
         var _loc6_:Number = this.§_-Au§ + this.§_-u8§ * (Math.random() * 2 - 1);
         var _loc7_:Number = this.§_-mF§ + this.§_-8M§ * (Math.random() * 2 - 1);
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
         _loc8_.red = this.§_-HA§.red;
         _loc8_.green = this.§_-HA§.green;
         _loc8_.blue = this.§_-HA§.blue;
         _loc8_.alpha = this.§_-HA§.alpha;
         if(this.§_-9P§.red != 0)
         {
            _loc8_.red += this.§_-9P§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-9P§.green != 0)
         {
            _loc8_.green += this.§_-9P§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-9P§.blue != 0)
         {
            _loc8_.blue += this.§_-9P§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-9P§.alpha != 0)
         {
            _loc8_.alpha += this.§_-9P§.alpha * (Math.random() * 2 - 1);
         }
         var _loc10_:Number = this.§_-As§.red;
         var _loc11_:Number = this.§_-As§.green;
         var _loc12_:Number = this.§_-As§.blue;
         var _loc13_:Number = this.§_-As§.alpha;
         if(this.§_-O-§.red != 0)
         {
            _loc10_ += this.§_-O-§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-O-§.green != 0)
         {
            _loc11_ += this.§_-O-§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-O-§.blue != 0)
         {
            _loc12_ += this.§_-O-§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-O-§.alpha != 0)
         {
            _loc13_ += this.§_-O-§.alpha * (Math.random() * 2 - 1);
         }
         _loc9_.red = (_loc10_ - _loc8_.red) / _loc3_;
         _loc9_.green = (_loc11_ - _loc8_.green) / _loc3_;
         _loc9_.blue = (_loc12_ - _loc8_.blue) / _loc3_;
         _loc9_.alpha = (_loc13_ - _loc8_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-RP§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-ms§ - _loc3_.§_-QZ§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-QZ§ += param2;
         if(this.§_-86§ == this.§_-GS§)
         {
            if(!_loc3_.skipUpdate)
            {
               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               _loc3_.x = §_-r0§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-if§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-qq§)
               {
                  _loc3_.§_-QZ§ = _loc3_.§_-ms§;
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
               _loc3_.velocityX += 2 * param2 * (this.§_-VY§ + _loc8_ + _loc10_);
               _loc3_.velocityY += 2 * param2 * (this.§_-we§ + _loc9_ + _loc11_);
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
      
      private function §_-yU§(param1:XML) : void
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
         this.§_-MN§ = parseFloat(config.sourcePositionVariance.attribute("x"));
         this.§_-hI§ = parseFloat(config.sourcePositionVariance.attribute("y"));
         this.§_-VY§ = parseFloat(config.gravity.attribute("x"));
         this.§_-we§ = parseFloat(config.gravity.attribute("y"));
         this.§_-86§ = getIntValue(config.emitterType);
         this.§_-0b§ = getIntValue(config.maxParticles);
         this.§_-uD§ = Math.max(0.01,getFloatValue(config.particleLifeSpan));
         this.§_-u3§ = getFloatValue(config.particleLifespanVariance);
         this.§_-Au§ = getFloatValue(config.startParticleSize);
         this.§_-u8§ = getFloatValue(config.startParticleSizeVariance);
         this.§_-mF§ = getFloatValue(config.finishParticleSize);
         this.§_-8M§ = getFloatValue(config.FinishParticleSizeVariance);
         this.§_-NN§ = deg2rad(getFloatValue(config.angle));
         this.§_-aQ§ = deg2rad(getFloatValue(config.angleVariance));
         this.§_-zq§ = getFloatValue(config.speed);
         this.§ do§ = getFloatValue(config.speedVariance);
         this.§_-Tl§ = getFloatValue(config.radialAcceleration);
         this.§_-b3§ = getFloatValue(config.tangentialAcceleration);
         this.§_-w2§ = getFloatValue(config.maxRadius);
         this.§_-Gm§ = getFloatValue(config.maxRadiusVariance);
         this.§_-qq§ = getFloatValue(config.minRadius);
         this.§_-l4§ = deg2rad(getFloatValue(config.rotatePerSecond));
         this.§_-Vh§ = deg2rad(getFloatValue(config.rotatePerSecondVariance));
         this.§_-HA§ = getColor(config.startColor);
         this.§_-9P§ = getColor(config.startColorVariance);
         this.§_-As§ = getColor(config.finishColor);
         this.§_-O-§ = getColor(config.finishColorVariance);
         §_-8H§ = getBlendFunc(config.blendFuncSource);
         §_-ry§ = getBlendFunc(config.blendFuncDestination);
      }
   }
}

import §_-5M§.§_-RP§;

class PDParticle extends §_-RP§
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
