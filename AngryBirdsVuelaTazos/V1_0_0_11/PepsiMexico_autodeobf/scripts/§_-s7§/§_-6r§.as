package §_-s7§
{
   import §_-6A§.deg2rad;
   import §_-Q2§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-6r§ extends §_-VO§
   {
       
      
      private const §_-fa§:int = 0;
      
      private const §_-lp§:int = 1;
      
      private var §_-BK§:Number;
      
      private var §_-A6§:int;
      
      private var §_-ei§:Number;
      
      private var §_-TM§:Number;
      
      private var §_-rn§:int;
      
      private var §_-IK§:Number;
      
      private var §_-iC§:Number;
      
      private var §_-7A§:Number;
      
      private var §_-Je§:Number;
      
      private var §_-oq§:Number;
      
      private var §_-NM§:Number;
      
      private var §_-§:Number;
      
      private var §_-0y§:Number;
      
      private var §_-jc§:Number;
      
      private var §_-0Y§:Number;
      
      private var §_-PO§:Number;
      
      private var §_-sC§:Number;
      
      private var §_-YD§:Number;
      
      private var §_-it§:Number;
      
      private var §_-fZ§:Number;
      
      private var §_-fb§:Number;
      
      private var §_-QA§:Number;
      
      private var §_-ky§:Number;
      
      private var §_-4A§:Number;
      
      private var §for§:Number;
      
      private var §_-Rl§:Number;
      
      private var §_-TU§:ColorArgb;
      
      private var §_-wy§:ColorArgb;
      
      private var §_-Y8§:ColorArgb;
      
      private var §_-YU§:ColorArgb;
      
      public function §_-6r§(param1:XML, param2:Texture)
      {
         this.§_-u6§(param1);
         var _loc3_:Number = this.§_-rn§ / this.§_-IK§;
         super(param2,_loc3_,this.§_-rn§,§_-ZP§,§_-R3§);
         §_-9I§ = false;
      }
      
      override protected function createParticle() : §_-m7§
      {
         return new PDParticle();
      }
      
      override protected function initParticle(param1:§_-m7§) : void
      {
         var _loc2_:PDParticle = null;
         _loc2_ = param1 as PDParticle;
         var _loc3_:Number = this.§_-IK§ + this.§_-iC§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.§_-V9§ = 0;
         _loc2_.§_-Re§ = _loc3_;
         _loc2_.x = §_-pL§ + this.§_-ei§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-ZY§ + this.§_-TM§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-pL§;
         _loc2_.startY = §_-ZY§;
         var _loc4_:Number = this.§_-§ + this.§_-0y§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-jc§ + this.§_-0Y§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * Math.sin(_loc4_);
         _loc2_.radius = this.§_-QA§ + this.§_-ky§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-QA§ / _loc3_;
         _loc2_.rotation = this.§_-§ + this.§_-0y§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§for§ + this.§_-Rl§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-YD§;
         _loc2_.tangentialAcceleration = this.§_-fZ§;
         var _loc6_:Number = this.§_-7A§ + this.§_-Je§ * (Math.random() * 2 - 1);
         var _loc7_:Number = this.§_-oq§ + this.§_-NM§ * (Math.random() * 2 - 1);
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
         _loc8_.red = this.§_-TU§.red;
         _loc8_.green = this.§_-TU§.green;
         _loc8_.blue = this.§_-TU§.blue;
         _loc8_.alpha = this.§_-TU§.alpha;
         if(this.§_-wy§.red != 0)
         {
            _loc8_.red += this.§_-wy§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-wy§.green != 0)
         {
            _loc8_.green += this.§_-wy§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-wy§.blue != 0)
         {
            _loc8_.blue += this.§_-wy§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-wy§.alpha != 0)
         {
            _loc8_.alpha += this.§_-wy§.alpha * (Math.random() * 2 - 1);
         }
         var _loc10_:Number = this.§_-Y8§.red;
         var _loc11_:Number = this.§_-Y8§.green;
         var _loc12_:Number = this.§_-Y8§.blue;
         var _loc13_:Number = this.§_-Y8§.alpha;
         if(this.§_-YU§.red != 0)
         {
            _loc10_ += this.§_-YU§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-YU§.green != 0)
         {
            _loc11_ += this.§_-YU§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-YU§.blue != 0)
         {
            _loc12_ += this.§_-YU§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-YU§.alpha != 0)
         {
            _loc13_ += this.§_-YU§.alpha * (Math.random() * 2 - 1);
         }
         _loc9_.red = (_loc10_ - _loc8_.red) / _loc3_;
         _loc9_.green = (_loc11_ - _loc8_.green) / _loc3_;
         _loc9_.blue = (_loc12_ - _loc8_.blue) / _loc3_;
         _loc9_.alpha = (_loc13_ - _loc8_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-m7§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-Re§ - _loc3_.§_-V9§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-V9§ += param2;
         if(this.§_-A6§ == this.§_-lp§)
         {
            if(!_loc3_.skipUpdate)
            {
               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               _loc3_.x = §_-pL§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-ZY§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-4A§)
               {
                  _loc3_.§_-V9§ = _loc3_.§_-Re§;
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
               _loc3_.velocityX += 2 * param2 * (this.§_-PO§ + _loc8_ + _loc10_);
               _loc3_.velocityY += 2 * param2 * (this.§_-sC§ + _loc9_ + _loc11_);
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
      
      private function §_-u6§(param1:XML) : void
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
         this.§_-ei§ = parseFloat(config.sourcePositionVariance.attribute("x"));
         this.§_-TM§ = parseFloat(config.sourcePositionVariance.attribute("y"));
         this.§_-PO§ = parseFloat(config.gravity.attribute("x"));
         this.§_-sC§ = parseFloat(config.gravity.attribute("y"));
         this.§_-A6§ = getIntValue(config.emitterType);
         this.§_-rn§ = getIntValue(config.maxParticles);
         this.§_-IK§ = Math.max(0.01,getFloatValue(config.particleLifeSpan));
         this.§_-iC§ = getFloatValue(config.particleLifespanVariance);
         this.§_-7A§ = getFloatValue(config.startParticleSize);
         this.§_-Je§ = getFloatValue(config.startParticleSizeVariance);
         this.§_-oq§ = getFloatValue(config.finishParticleSize);
         this.§_-NM§ = getFloatValue(config.FinishParticleSizeVariance);
         this.§_-§ = deg2rad(getFloatValue(config.angle));
         this.§_-0y§ = deg2rad(getFloatValue(config.angleVariance));
         this.§_-jc§ = getFloatValue(config.speed);
         this.§_-0Y§ = getFloatValue(config.speedVariance);
         this.§_-YD§ = getFloatValue(config.radialAcceleration);
         this.§_-fZ§ = getFloatValue(config.tangentialAcceleration);
         this.§_-QA§ = getFloatValue(config.maxRadius);
         this.§_-ky§ = getFloatValue(config.maxRadiusVariance);
         this.§_-4A§ = getFloatValue(config.minRadius);
         this.§for§ = deg2rad(getFloatValue(config.rotatePerSecond));
         this.§_-Rl§ = deg2rad(getFloatValue(config.rotatePerSecondVariance));
         this.§_-TU§ = getColor(config.startColor);
         this.§_-wy§ = getColor(config.startColorVariance);
         this.§_-Y8§ = getColor(config.finishColor);
         this.§_-YU§ = getColor(config.finishColorVariance);
         §_-ZP§ = getBlendFunc(config.blendFuncSource);
         §_-R3§ = getBlendFunc(config.blendFuncDestination);
      }
   }
}

import §_-s7§.§_-m7§;

class PDParticle extends §_-m7§
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
