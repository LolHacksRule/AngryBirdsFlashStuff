package §#!7§
{
   import §7H§.deg2rad;
   import §?]§.§7l§;
   import §?]§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §5C§
   {
       
      
      private const §5"!§:int = 0;
      
      private const §`U§:int = 1;
      
      private var §5'§:Number;
      
      private var §2!9§:int;
      
      private var §2M§:Number;
      
      private var §^!4§:Number;
      
      private var §<2§:int;
      
      private var §0!i§:Number;
      
      private var §!!'§:Number;
      
      private var §6!F§:Number;
      
      private var §`M§:Number;
      
      private var §@!W§:Number;
      
      private var §`-§:Number;
      
      private var §"!^§:Number;
      
      private var §6!n§:Number;
      
      private var §&%§:Number;
      
      private var §,!m§:Number;
      
      private var §7![§:Number;
      
      private var §[=§:Number;
      
      private var §[#§:Number;
      
      private var § ;§:Number;
      
      private var §7'§:Number;
      
      private var §[!n§:Number;
      
      private var §3K§:Number;
      
      private var §?!J§:Number;
      
      private var §0w§:Number;
      
      private var §4!w§:Number;
      
      private var §`>§:Number;
      
      private var §>!h§:Number;
      
      private var §!l§:Number;
      
      private var §>>§:Number;
      
      private var §?!Z§:Number;
      
      private var §7!C§:Number;
      
      private var §8R§:ColorArgb;
      
      private var §13§:ColorArgb;
      
      private var §>!f§:ColorArgb;
      
      private var §!!0§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§]!t§(param1,param2);
         var _loc3_:Number = this.§<2§ / (this.§0!i§ + this.§6!F§);
         super(param2,_loc3_,this.§<2§,§9!_§,§[9§);
         §@!P§ = false;
      }
      
      public function get §[!z§() : int
      {
         return this.§<2§;
      }
      
      override protected function createParticle() : §=!m§
      {
         return new PDParticle();
      }
      
      private function get §;"§() : Boolean
      {
         return this.§[!z§ >= 20;
      }
      
      override protected function initParticle(param1:§=!m§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§0!i§ + this.§!!'§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§[!v§ = 0;
         _loc2_.§6k§ = _loc3_;
         _loc2_.x = §^!x§ + this.§2M§ * (Math.random() * 2 - 1);
         _loc2_.y = §7p§ + this.§^!4§ * (Math.random() * 2 - 1);
         _loc2_.startX = §^!x§;
         _loc2_.startY = §7p§;
         var _loc4_:Number = this.§[=§ + this.§[#§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§ ;§ + this.§7'§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§>!h§ + this.§!l§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§>!h§ / _loc3_;
         _loc2_.rotation = this.§[=§ + this.§[#§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§?!Z§ + this.§7!C§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§?!J§;
         _loc2_.tangentialAcceleration = this.§4!w§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§`M§ + this.§@!W§ * _loc6_;
         if(!isNaN(this.§6!n§))
         {
            _loc8_ = this.§6!n§;
            if(!isNaN(this.§&%§))
            {
               _loc8_ += this.§&%§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§`-§ + this.§"!^§ * _loc6_;
         if(!isNaN(this.§,!m§))
         {
            _loc10_ = this.§,!m§;
            if(!isNaN(this.§7![§))
            {
               _loc10_ += this.§7![§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§8R§.red;
         _loc11_.green = this.§8R§.green;
         _loc11_.blue = this.§8R§.blue;
         _loc11_.alpha = this.§8R§.alpha;
         if(this.§13§.red != 0)
         {
            _loc11_.red += this.§13§.red * (Math.random() * 2 - 1);
         }
         if(this.§13§.green != 0)
         {
            _loc11_.green += this.§13§.green * (Math.random() * 2 - 1);
         }
         if(this.§13§.blue != 0)
         {
            _loc11_.blue += this.§13§.blue * (Math.random() * 2 - 1);
         }
         if(this.§13§.alpha != 0)
         {
            _loc11_.alpha += this.§13§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§>!f§.red;
         var _loc14_:Number = this.§>!f§.green;
         var _loc15_:Number = this.§>!f§.blue;
         var _loc16_:Number = this.§>!f§.alpha;
         if(this.§!!0§.red != 0)
         {
            _loc13_ += this.§!!0§.red * (Math.random() * 2 - 1);
         }
         if(this.§!!0§.green != 0)
         {
            _loc14_ += this.§!!0§.green * (Math.random() * 2 - 1);
         }
         if(this.§!!0§.blue != 0)
         {
            _loc15_ += this.§!!0§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!!0§.alpha != 0)
         {
            _loc16_ += this.§!!0§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§=!m§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§6k§ - _loc3_.§[!v§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§[!v§ += param2;
         if(this.§2!9§ == this.§`U§)
         {
            if(!_loc3_.skipUpdate || !this.§;"§)
            {
               if(this.§;"§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §^!x§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §7p§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§>>§)
               {
                  _loc3_.§[!v§ = _loc3_.§6k§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§;"§)
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
               if(this.§;"§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§[!n§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§3K§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§[!n§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§3K§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§;"§)
         {
            if(this.§;"§)
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
      
      private function §]!t§(param1:XML, param2:Texture) : void
      {
         this.§2M§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^!4§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§[!n§ = parseFloat(param1.gravity.attribute("x"));
         this.§3K§ = parseFloat(param1.gravity.attribute("y"));
         this.§2!9§ = this.§-!X§(param1.emitterType);
         this.§<2§ = this.§-!X§(param1.maxParticles);
         this.§0!i§ = Math.max(0.01,this.§!D§(param1.particleLifeSpan));
         this.§!!'§ = this.§!D§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§6!F§ = this.§!D§(param1.particleInterval);
         }
         else
         {
            this.§6!F§ = 0;
         }
         this.§`M§ = this.§!D§(param1.startParticleSize);
         this.§`-§ = this.§`M§ * param2.height / param2.width;
         this.§@!W§ = this.§!D§(param1.startParticleSizeVariance);
         this.§"!^§ = this.§@!W§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§`M§ = this.§!D§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§@!W§ = this.§!D§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§`-§ = this.§!D§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§"!^§ = this.§!D§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§6!n§ = this.§!D§(param1.finishParticleSize);
            this.§,!m§ = this.§6!n§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&%§ = this.§!D§(param1.FinishParticleSizeVariance);
            this.§7![§ = this.§&%§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§6!n§ = this.§!D§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&%§ = this.§!D§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§,!m§ = this.§!D§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§7![§ = this.§!D§(param1.FinishParticleSizeVarianceY);
         }
         this.§[=§ = deg2rad(this.§!D§(param1.angle));
         this.§[#§ = deg2rad(this.§!D§(param1.angleVariance));
         this.§ ;§ = this.§!D§(param1.speed);
         this.§7'§ = this.§!D§(param1.speedVariance);
         this.§?!J§ = this.§!D§(param1.radialAcceleration);
         this.§4!w§ = this.§!D§(param1.tangentialAcceleration);
         this.§>!h§ = this.§!D§(param1.maxRadius);
         this.§!l§ = this.§!D§(param1.maxRadiusVariance);
         this.§>>§ = this.§!D§(param1.minRadius);
         this.§?!Z§ = deg2rad(this.§!D§(param1.rotatePerSecond));
         this.§7!C§ = deg2rad(this.§!D§(param1.rotatePerSecondVariance));
         this.§8R§ = this.§>!9§(param1.startColor);
         this.§13§ = this.§>!9§(param1.startColorVariance);
         this.§>!f§ = this.§>!9§(param1.finishColor);
         this.§!!0§ = this.§>!9§(param1.finishColorVariance);
         §9!_§ = this.§9!X§(param1.blendFuncSource);
         §[9§ = this.§9!X§(param1.blendFuncDestination);
         §@!T§ = this.§+B§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §8!2§ = this.§!D§(param1.emissionVariance);
         }
      }
      
      protected function §-!X§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §!D§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §"g§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §>!9§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §9!X§(param1:XMLList) : String
      {
         var _loc2_:int = this.§-!X§(param1);
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
      
      protected function §+B§(param1:XMLList) : String
      {
         var _loc2_:String = this.§"g§(param1);
         if(_loc2_ == §7l§.§6!%§ || _loc2_ == §7l§.§`!,§ || _loc2_ == §7l§.NONE)
         {
            return _loc2_;
         }
         return §7l§.§6!%§;
      }
   }
}

import §#!7§.§=!m§;

class PDParticle extends §=!m§
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
