package §_-xJ§
{
   import §_-0b§.deg2rad;
   import §_-S4§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-VA§ extends §_-Sw§
   {
       
      
      private const §_-Wh§:int = 0;
      
      private const §_-T3§:int = 1;
      
      private var §_-js§:Number;
      
      private var §_-wV§:int;
      
      private var §_-Wf§:Number;
      
      private var §_-7-§:Number;
      
      private var §_-IH§:int;
      
      private var §_-S2§:Number;
      
      private var §_-Kh§:Number;
      
      private var §_-Q2§:Number;
      
      private var §_-W8§:Number;
      
      private var §_-lO§:Number;
      
      private var §_-o0§:Number;
      
      private var §_-LG§:Number;
      
      private var §_-v-§:Number;
      
      private var §_-T0§:Number;
      
      private var §_-Cz§:Number;
      
      private var §_-M5§:Number;
      
      private var §_-wb§:Number;
      
      private var §_-sn§:Number;
      
      private var §_-2K§:Number;
      
      private var §_-KR§:Number;
      
      private var §_-HI§:Number;
      
      private var §_-Kx§:Number;
      
      private var §_-Gp§:Number;
      
      private var §_-8G§:Number;
      
      private var §_-Xz§:Number;
      
      private var §_-m1§:Number;
      
      private var §_-cV§:ColorArgb;
      
      private var §_-Cs§:ColorArgb;
      
      private var §_-S6§:ColorArgb;
      
      private var §_-IA§:ColorArgb;
      
      public function §_-VA§(param1:XML, param2:Texture)
      {
         this.§_-Qh§(param1);
         var _loc3_:Number = this.§_-IH§ / this.§_-S2§;
         super(param2,_loc3_,this.§_-IH§,§_-kg§,§_-P8§);
         §_-hD§ = false;
      }
      
      override protected function createParticle() : §_-mQ§
      {
         return new PDParticle();
      }
      
      override protected function initParticle(param1:§_-mQ§) : void
      {
         var _loc2_:PDParticle = null;
         _loc2_ = param1 as PDParticle;
         var _loc3_:Number = this.§_-S2§ + this.§_-Kh§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.§_-l-§ = 0;
         _loc2_.§_-tb§ = _loc3_;
         _loc2_.x = §_-0U§ + this.§_-Wf§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-ng§ + this.§_-7-§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-0U§;
         _loc2_.startY = §_-ng§;
         var _loc4_:Number = this.§_-LG§ + this.§_-v-§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-T0§ + this.§_-Cz§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * Math.sin(_loc4_);
         _loc2_.radius = this.§_-Kx§ + this.§_-Gp§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-Kx§ / _loc3_;
         _loc2_.rotation = this.§_-LG§ + this.§_-v-§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-Xz§ + this.§_-m1§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-sn§;
         _loc2_.tangentialAcceleration = this.§_-KR§;
         var _loc6_:Number = this.§_-Q2§ + this.§_-W8§ * (Math.random() * 2 - 1);
         var _loc7_:Number = this.§_-lO§ + this.§_-o0§ * (Math.random() * 2 - 1);
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
         _loc8_.red = this.§_-cV§.red;
         _loc8_.green = this.§_-cV§.green;
         _loc8_.blue = this.§_-cV§.blue;
         _loc8_.alpha = this.§_-cV§.alpha;
         if(this.§_-Cs§.red != 0)
         {
            _loc8_.red += this.§_-Cs§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-Cs§.green != 0)
         {
            _loc8_.green += this.§_-Cs§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-Cs§.blue != 0)
         {
            _loc8_.blue += this.§_-Cs§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-Cs§.alpha != 0)
         {
            _loc8_.alpha += this.§_-Cs§.alpha * (Math.random() * 2 - 1);
         }
         var _loc10_:Number = this.§_-S6§.red;
         var _loc11_:Number = this.§_-S6§.green;
         var _loc12_:Number = this.§_-S6§.blue;
         var _loc13_:Number = this.§_-S6§.alpha;
         if(this.§_-IA§.red != 0)
         {
            _loc10_ += this.§_-IA§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-IA§.green != 0)
         {
            _loc11_ += this.§_-IA§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-IA§.blue != 0)
         {
            _loc12_ += this.§_-IA§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-IA§.alpha != 0)
         {
            _loc13_ += this.§_-IA§.alpha * (Math.random() * 2 - 1);
         }
         _loc9_.red = (_loc10_ - _loc8_.red) / _loc3_;
         _loc9_.green = (_loc11_ - _loc8_.green) / _loc3_;
         _loc9_.blue = (_loc12_ - _loc8_.blue) / _loc3_;
         _loc9_.alpha = (_loc13_ - _loc8_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-mQ§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-tb§ - _loc3_.§_-l-§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-l-§ += param2;
         if(this.§_-wV§ == this.§_-T3§)
         {
            if(!_loc3_.skipUpdate)
            {
               _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               _loc3_.x = §_-0U§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-ng§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-8G§)
               {
                  _loc3_.§_-l-§ = _loc3_.§_-tb§;
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
               _loc3_.velocityX += 2 * param2 * (this.§_-M5§ + _loc8_ + _loc10_);
               _loc3_.velocityY += 2 * param2 * (this.§_-wb§ + _loc9_ + _loc11_);
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
      
      private function §_-Qh§(param1:XML) : void
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
         this.§_-Wf§ = parseFloat(config.sourcePositionVariance.attribute("x"));
         this.§_-7-§ = parseFloat(config.sourcePositionVariance.attribute("y"));
         this.§_-M5§ = parseFloat(config.gravity.attribute("x"));
         this.§_-wb§ = parseFloat(config.gravity.attribute("y"));
         this.§_-wV§ = getIntValue(config.emitterType);
         this.§_-IH§ = getIntValue(config.maxParticles);
         this.§_-S2§ = Math.max(0.01,getFloatValue(config.particleLifeSpan));
         this.§_-Kh§ = getFloatValue(config.particleLifespanVariance);
         this.§_-Q2§ = getFloatValue(config.startParticleSize);
         this.§_-W8§ = getFloatValue(config.startParticleSizeVariance);
         this.§_-lO§ = getFloatValue(config.finishParticleSize);
         this.§_-o0§ = getFloatValue(config.FinishParticleSizeVariance);
         this.§_-LG§ = deg2rad(getFloatValue(config.angle));
         this.§_-v-§ = deg2rad(getFloatValue(config.angleVariance));
         this.§_-T0§ = getFloatValue(config.speed);
         this.§_-Cz§ = getFloatValue(config.speedVariance);
         this.§_-sn§ = getFloatValue(config.radialAcceleration);
         this.§_-KR§ = getFloatValue(config.tangentialAcceleration);
         this.§_-Kx§ = getFloatValue(config.maxRadius);
         this.§_-Gp§ = getFloatValue(config.maxRadiusVariance);
         this.§_-8G§ = getFloatValue(config.minRadius);
         this.§_-Xz§ = deg2rad(getFloatValue(config.rotatePerSecond));
         this.§_-m1§ = deg2rad(getFloatValue(config.rotatePerSecondVariance));
         this.§_-cV§ = getColor(config.startColor);
         this.§_-Cs§ = getColor(config.startColorVariance);
         this.§_-S6§ = getColor(config.finishColor);
         this.§_-IA§ = getColor(config.finishColorVariance);
         §_-kg§ = getBlendFunc(config.blendFuncSource);
         §_-P8§ = getBlendFunc(config.blendFuncDestination);
      }
   }
}

import §_-xJ§.§_-mQ§;

class PDParticle extends §_-mQ§
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
