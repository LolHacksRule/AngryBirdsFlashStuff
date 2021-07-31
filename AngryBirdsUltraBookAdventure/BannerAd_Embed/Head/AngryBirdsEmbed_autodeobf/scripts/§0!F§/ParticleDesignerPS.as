package §0!F§
{
   import §8f§.deg2rad;
   import §?!"§.§=!>§;
   import §?!"§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §%q§
   {
       
      
      private const §9v§:int = 0;
      
      private const §9#§:int = 1;
      
      private var §]V§:Number;
      
      private var § c§:int;
      
      private var §`!>§:Number;
      
      private var § !0§:Number;
      
      private var § !$§:int;
      
      private var §%4§:Number;
      
      private var §=V§:Number;
      
      private var §%s§:Number;
      
      private var §!!=§:Number;
      
      private var § h§:Number;
      
      private var §7H§:Number;
      
      private var §<d§:Number;
      
      private var §>W§:Number;
      
      private var §&a§:Number;
      
      private var §%v§:Number;
      
      private var §5J§:Number;
      
      private var §=Z§:Number;
      
      private var §&!+§:Number;
      
      private var §4p§:Number;
      
      private var §2!6§:Number;
      
      private var §&!2§:Number;
      
      private var §%!B§:Number;
      
      private var §,F§:Number;
      
      private var §=!3§:Number;
      
      private var §;w§:Number;
      
      private var §];§:Number;
      
      private var §#J§:Number;
      
      private var §1!=§:Number;
      
      private var §<r§:Number;
      
      private var §7t§:Number;
      
      private var §,X§:Number;
      
      private var §%!$§:ColorArgb;
      
      private var §9!+§:ColorArgb;
      
      private var §>!9§:ColorArgb;
      
      private var §'!E§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§4V§(param1,param2);
         var _loc3_:Number = this.§ !$§ / (this.§%4§ + this.§%s§);
         super(param2,_loc3_,this.§ !$§,§`M§,§2p§);
         §2"§ = false;
      }
      
      public function get §>0§() : int
      {
         return this.§ !$§;
      }
      
      override protected function createParticle() : § !<§
      {
         return new PDParticle();
      }
      
      private function get §,!0§() : Boolean
      {
         return this.§>0§ >= 20;
      }
      
      override protected function initParticle(param1:§ !<§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§%4§ + this.§=V§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§!D§ = _loc3_;
         _loc2_.x = §^x§ + this.§`!>§ * (Math.random() * 2 - 1);
         _loc2_.y = §@!D§ + this.§ !0§ * (Math.random() * 2 - 1);
         _loc2_.startX = §^x§;
         _loc2_.startY = §@!D§;
         var _loc4_:Number = this.§=Z§ + this.§&!+§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§4p§ + this.§2!6§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§#J§ + this.§1!=§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§#J§ / _loc3_;
         _loc2_.rotation = this.§=Z§ + this.§&!+§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§7t§ + this.§,X§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§,F§;
         _loc2_.tangentialAcceleration = this.§;w§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§!!=§ + this.§ h§ * _loc6_;
         if(!isNaN(this.§>W§))
         {
            _loc8_ = this.§>W§;
            if(!isNaN(this.§&a§))
            {
               _loc8_ += this.§&a§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§7H§ + this.§<d§ * _loc6_;
         if(!isNaN(this.§%v§))
         {
            _loc10_ = this.§%v§;
            if(!isNaN(this.§5J§))
            {
               _loc10_ += this.§5J§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§%!$§.red;
         _loc11_.green = this.§%!$§.green;
         _loc11_.blue = this.§%!$§.blue;
         _loc11_.alpha = this.§%!$§.alpha;
         if(this.§9!+§.red != 0)
         {
            _loc11_.red += this.§9!+§.red * (Math.random() * 2 - 1);
         }
         if(this.§9!+§.green != 0)
         {
            _loc11_.green += this.§9!+§.green * (Math.random() * 2 - 1);
         }
         if(this.§9!+§.blue != 0)
         {
            _loc11_.blue += this.§9!+§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9!+§.alpha != 0)
         {
            _loc11_.alpha += this.§9!+§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§>!9§.red;
         var _loc14_:Number = this.§>!9§.green;
         var _loc15_:Number = this.§>!9§.blue;
         var _loc16_:Number = this.§>!9§.alpha;
         if(this.§'!E§.red != 0)
         {
            _loc13_ += this.§'!E§.red * (Math.random() * 2 - 1);
         }
         if(this.§'!E§.green != 0)
         {
            _loc14_ += this.§'!E§.green * (Math.random() * 2 - 1);
         }
         if(this.§'!E§.blue != 0)
         {
            _loc15_ += this.§'!E§.blue * (Math.random() * 2 - 1);
         }
         if(this.§'!E§.alpha != 0)
         {
            _loc16_ += this.§'!E§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§ !<§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§!D§ - _loc3_.currentTime)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§ c§ == this.§9#§)
         {
            if(!_loc3_.skipUpdate || !this.§,!0§)
            {
               if(this.§,!0§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §^x§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §@!D§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§<r§)
               {
                  _loc3_.currentTime = _loc3_.§!D§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§,!0§)
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
               if(this.§,!0§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§&!2§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§%!B§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&!2§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§%!B§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§,!0§)
         {
            if(this.§,!0§)
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
      
      private function §4V§(param1:XML, param2:Texture) : void
      {
         this.§`!>§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§ !0§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&!2§ = parseFloat(param1.gravity.attribute("x"));
         this.§%!B§ = parseFloat(param1.gravity.attribute("y"));
         this.§ c§ = this.§>v§(param1.emitterType);
         this.§ !$§ = this.§>v§(param1.maxParticles);
         this.§%4§ = Math.max(0.01,this.§84§(param1.particleLifeSpan));
         this.§=V§ = this.§84§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§%s§ = this.§84§(param1.particleInterval);
         }
         else
         {
            this.§%s§ = 0;
         }
         this.§!!=§ = this.§84§(param1.startParticleSize);
         this.§7H§ = this.§!!=§ * param2.height / param2.width;
         this.§ h§ = this.§84§(param1.startParticleSizeVariance);
         this.§<d§ = this.§ h§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§!!=§ = this.§84§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§ h§ = this.§84§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§7H§ = this.§84§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§<d§ = this.§84§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§>W§ = this.§84§(param1.finishParticleSize);
            this.§%v§ = this.§>W§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&a§ = this.§84§(param1.FinishParticleSizeVariance);
            this.§5J§ = this.§&a§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§>W§ = this.§84§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&a§ = this.§84§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§%v§ = this.§84§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§5J§ = this.§84§(param1.FinishParticleSizeVarianceY);
         }
         this.§=Z§ = deg2rad(this.§84§(param1.angle));
         this.§&!+§ = deg2rad(this.§84§(param1.angleVariance));
         this.§4p§ = this.§84§(param1.speed);
         this.§2!6§ = this.§84§(param1.speedVariance);
         this.§,F§ = this.§84§(param1.radialAcceleration);
         this.§;w§ = this.§84§(param1.tangentialAcceleration);
         this.§#J§ = this.§84§(param1.maxRadius);
         this.§1!=§ = this.§84§(param1.maxRadiusVariance);
         this.§<r§ = this.§84§(param1.minRadius);
         this.§7t§ = deg2rad(this.§84§(param1.rotatePerSecond));
         this.§,X§ = deg2rad(this.§84§(param1.rotatePerSecondVariance));
         this.§%!$§ = this.§3,§(param1.startColor);
         this.§9!+§ = this.§3,§(param1.startColorVariance);
         this.§>!9§ = this.§3,§(param1.finishColor);
         this.§'!E§ = this.§3,§(param1.finishColorVariance);
         §`M§ = this.§-6§(param1.blendFuncSource);
         §2p§ = this.§-6§(param1.blendFuncDestination);
         §'!;§ = this.§^c§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §!b§ = this.§84§(param1.emissionVariance);
         }
      }
      
      protected function §>v§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §84§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §3-§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §3,§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §-6§(param1:XMLList) : String
      {
         var _loc2_:int = this.§>v§(param1);
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
      
      protected function §^c§(param1:XMLList) : String
      {
         var _loc2_:String = this.§3-§(param1);
         if(_loc2_ == §=!>§.§1"§ || _loc2_ == §=!>§.§3&§ || _loc2_ == §=!>§.NONE)
         {
            return _loc2_;
         }
         return §=!>§.§1"§;
      }
   }
}

import §0!F§.§ !<§;

class PDParticle extends § !<§
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
