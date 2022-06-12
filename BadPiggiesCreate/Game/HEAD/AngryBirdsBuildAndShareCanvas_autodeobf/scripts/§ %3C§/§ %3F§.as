package § <§
{
   import §0!%§.§%§;
   import §0!%§.Texture;
   import §`!=§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class § ?§ extends §-!;§
   {
       
      
      private const §&!l§:int = 0;
      
      private const §4!9§:int = 1;
      
      private var §-E§:Number;
      
      private var §?!Z§:int;
      
      private var §^w§:Number;
      
      private var §#!s§:Number;
      
      private var §^!C§:int;
      
      private var §'!A§:Number;
      
      private var §1P§:Number;
      
      private var §']§:Number;
      
      private var §@h§:Number;
      
      private var §>!h§:Number;
      
      private var §3S§:Number;
      
      private var §8%§:Number;
      
      private var §=!w§:Number;
      
      private var §`!B§:Number;
      
      private var §#w§:Number;
      
      private var §6!9§:Number;
      
      private var §%m§:Number;
      
      private var §,"1§:Number;
      
      private var §?!B§:Number;
      
      private var §^§:Number;
      
      private var §,!q§:Number;
      
      private var §?L§:Number;
      
      private var §'x§:Number;
      
      private var §^n§:Number;
      
      private var §?e§:Number;
      
      private var §#J§:Number;
      
      private var §?q§:Number;
      
      private var §]!i§:Number;
      
      private var § O§:Number;
      
      private var §#!l§:Number;
      
      private var §3!q§:Number;
      
      private var §8h§:ColorArgb;
      
      private var §?!j§:ColorArgb;
      
      private var §^!"§:ColorArgb;
      
      private var §?"=§:ColorArgb;
      
      public function § ?§(param1:XML, param2:Texture)
      {
         this.§'!7§(param1,param2);
         var _loc3_:Number = this.§^!C§ / (this.§'!A§ + this.§']§);
         super(param2,_loc3_,this.§^!C§,§-!V§,§&!A§);
         §[!k§ = false;
      }
      
      public function get §-z§() : int
      {
         return this.§^!C§;
      }
      
      override protected function createParticle() : §#!G§
      {
         return new PDParticle();
      }
      
      private function get §-!^§() : Boolean
      {
         return this.§-z§ >= 20;
      }
      
      override protected function initParticle(param1:§#!G§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§'!A§ + this.§1P§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§=""§ = 0;
         _loc2_.§4!4§ = _loc3_;
         _loc2_.x = §9!^§ + this.§^w§ * (Math.random() * 2 - 1);
         _loc2_.y = §,!^§ + this.§#!s§ * (Math.random() * 2 - 1);
         _loc2_.startX = §9!^§;
         _loc2_.startY = §,!^§;
         var _loc4_:Number = this.§%m§ + this.§,"1§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§?!B§ + this.§^§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§?q§ + this.§]!i§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§?q§ / _loc3_;
         _loc2_.rotation = this.§%m§ + this.§,"1§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#!l§ + this.§3!q§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§'x§;
         _loc2_.tangentialAcceleration = this.§?e§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§@h§ + this.§>!h§ * _loc6_;
         if(!isNaN(this.§=!w§))
         {
            _loc8_ = this.§=!w§;
            if(!isNaN(this.§`!B§))
            {
               _loc8_ += this.§`!B§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§3S§ + this.§8%§ * _loc6_;
         if(!isNaN(this.§#w§))
         {
            _loc10_ = this.§#w§;
            if(!isNaN(this.§6!9§))
            {
               _loc10_ += this.§6!9§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§8h§.red;
         _loc11_.green = this.§8h§.green;
         _loc11_.blue = this.§8h§.blue;
         _loc11_.alpha = this.§8h§.alpha;
         if(this.§?!j§.red != 0)
         {
            _loc11_.red += this.§?!j§.red * (Math.random() * 2 - 1);
         }
         if(this.§?!j§.green != 0)
         {
            _loc11_.green += this.§?!j§.green * (Math.random() * 2 - 1);
         }
         if(this.§?!j§.blue != 0)
         {
            _loc11_.blue += this.§?!j§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?!j§.alpha != 0)
         {
            _loc11_.alpha += this.§?!j§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^!"§.red;
         var _loc14_:Number = this.§^!"§.green;
         var _loc15_:Number = this.§^!"§.blue;
         var _loc16_:Number = this.§^!"§.alpha;
         if(this.§?"=§.red != 0)
         {
            _loc13_ += this.§?"=§.red * (Math.random() * 2 - 1);
         }
         if(this.§?"=§.green != 0)
         {
            _loc14_ += this.§?"=§.green * (Math.random() * 2 - 1);
         }
         if(this.§?"=§.blue != 0)
         {
            _loc15_ += this.§?"=§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?"=§.alpha != 0)
         {
            _loc16_ += this.§?"=§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§#!G§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§4!4§ - _loc3_.§=""§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§=""§ += param2;
         if(this.§?!Z§ == this.§4!9§)
         {
            if(!_loc3_.skipUpdate || !this.§-!^§)
            {
               if(this.§-!^§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §9!^§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §,!^§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§ O§)
               {
                  _loc3_.§=""§ = _loc3_.§4!4§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-!^§)
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
               if(this.§-!^§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§,!q§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§?L§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§,!q§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§?L§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-!^§)
         {
            if(this.§-!^§)
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
      
      private function §'!7§(param1:XML, param2:Texture) : void
      {
         this.§^w§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§#!s§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§,!q§ = parseFloat(param1.gravity.attribute("x"));
         this.§?L§ = parseFloat(param1.gravity.attribute("y"));
         this.§?!Z§ = this.§var §(param1.emitterType);
         this.§^!C§ = this.§var §(param1.maxParticles);
         this.§'!A§ = Math.max(0.01,this.§6w§(param1.particleLifeSpan));
         this.§1P§ = this.§6w§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§']§ = this.§6w§(param1.particleInterval);
         }
         else
         {
            this.§']§ = 0;
         }
         this.§@h§ = this.§6w§(param1.startParticleSize);
         this.§3S§ = this.§@h§ * param2.height / param2.width;
         this.§>!h§ = this.§6w§(param1.startParticleSizeVariance);
         this.§8%§ = this.§>!h§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§@h§ = this.§6w§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§>!h§ = this.§6w§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§3S§ = this.§6w§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§8%§ = this.§6w§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§=!w§ = this.§6w§(param1.finishParticleSize);
            this.§#w§ = this.§=!w§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§`!B§ = this.§6w§(param1.FinishParticleSizeVariance);
            this.§6!9§ = this.§`!B§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§=!w§ = this.§6w§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§`!B§ = this.§6w§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§#w§ = this.§6w§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§6!9§ = this.§6w§(param1.FinishParticleSizeVarianceY);
         }
         this.§%m§ = deg2rad(this.§6w§(param1.angle));
         this.§,"1§ = deg2rad(this.§6w§(param1.angleVariance));
         this.§?!B§ = this.§6w§(param1.speed);
         this.§^§ = this.§6w§(param1.speedVariance);
         this.§'x§ = this.§6w§(param1.radialAcceleration);
         this.§?e§ = this.§6w§(param1.tangentialAcceleration);
         this.§?q§ = this.§6w§(param1.maxRadius);
         this.§]!i§ = this.§6w§(param1.maxRadiusVariance);
         this.§ O§ = this.§6w§(param1.minRadius);
         this.§#!l§ = deg2rad(this.§6w§(param1.rotatePerSecond));
         this.§3!q§ = deg2rad(this.§6w§(param1.rotatePerSecondVariance));
         this.§8h§ = this.§`!+§(param1.startColor);
         this.§?!j§ = this.§`!+§(param1.startColorVariance);
         this.§^!"§ = this.§`!+§(param1.finishColor);
         this.§?"=§ = this.§`!+§(param1.finishColorVariance);
         §-!V§ = this.§-,§(param1.blendFuncSource);
         §&!A§ = this.§-,§(param1.blendFuncDestination);
         §'"3§ = this.§9F§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §3"6§ = this.§6w§(param1.emissionVariance);
         }
      }
      
      protected function §var §(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6w§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §#8§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §`!+§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §-,§(param1:XMLList) : String
      {
         var _loc2_:int = this.§var §(param1);
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
      
      protected function §9F§(param1:XMLList) : String
      {
         var _loc2_:String = this.§#8§(param1);
         if(_loc2_ == §%§.§<!U§ || _loc2_ == §%§.§]h§ || _loc2_ == §%§.NONE)
         {
            return _loc2_;
         }
         return §%§.§<!U§;
      }
   }
}

import § <§.§#!G§;

class PDParticle extends §#!G§
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
