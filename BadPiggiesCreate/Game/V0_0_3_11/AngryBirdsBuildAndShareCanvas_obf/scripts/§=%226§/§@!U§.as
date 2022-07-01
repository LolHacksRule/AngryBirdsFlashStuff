package §="6§
{
   import §=v§.deg2rad;
   import §^i§.§7n§;
   import §^i§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §@!U§ extends §5!u§
   {
       
      
      private const §+T§:int = 0;
      
      private const §>p§:int = 1;
      
      private var §&F§:Number;
      
      private var §,x§:int;
      
      private var §^-§:Number;
      
      private var §'v§:Number;
      
      private var §&L§:int;
      
      private var §-!R§:Number;
      
      private var § ![§:Number;
      
      private var §,!l§:Number;
      
      private var §7!e§:Number;
      
      private var §-t§:Number;
      
      private var §'g§:Number;
      
      private var §?a§:Number;
      
      private var §>T§:Number;
      
      private var §3!G§:Number;
      
      private var §6""§:Number;
      
      private var §<!M§:Number;
      
      private var §6$§:Number;
      
      private var §7"$§:Number;
      
      private var §2!8§:Number;
      
      private var §07§:Number;
      
      private var §&!5§:Number;
      
      private var §1!W§:Number;
      
      private var §4!r§:Number;
      
      private var §4!g§:Number;
      
      private var §5K§:Number;
      
      private var §%`§:Number;
      
      private var §`h§:Number;
      
      private var §5Q§:Number;
      
      private var §0!h§:Number;
      
      private var §2!d§:Number;
      
      private var §2t§:Number;
      
      private var §>!c§:ColorArgb;
      
      private var §8!>§:ColorArgb;
      
      private var §[!v§:ColorArgb;
      
      private var §4!x§:ColorArgb;
      
      public function §@!U§(param1:XML, param2:Texture)
      {
         this.§%u§(param1,param2);
         var _loc3_:Number = this.§&L§ / (this.§-!R§ + this.§,!l§);
         super(param2,_loc3_,this.§&L§,§-!S§,§+!Y§);
         §>h§ = false;
      }
      
      public function get §^!f§() : int
      {
         return this.§&L§;
      }
      
      override protected function createParticle() : §#]§
      {
         return new PDParticle();
      }
      
      private function get §&!`§() : Boolean
      {
         return this.§^!f§ >= 20;
      }
      
      override protected function initParticle(param1:§#]§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§-!R§ + this.§ ![§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§ !H§ = 0;
         _loc2_.§=!g§ = _loc3_;
         _loc2_.x = §]!d§ + this.§^-§ * (Math.random() * 2 - 1);
         _loc2_.y = §3G§ + this.§'v§ * (Math.random() * 2 - 1);
         _loc2_.startX = §]!d§;
         _loc2_.startY = §3G§;
         var _loc4_:Number = this.§6$§ + this.§7"$§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§2!8§ + this.§07§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§`h§ + this.§5Q§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§`h§ / _loc3_;
         _loc2_.rotation = this.§6$§ + this.§7"$§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§2!d§ + this.§2t§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§4!r§;
         _loc2_.tangentialAcceleration = this.§5K§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§7!e§ + this.§-t§ * _loc6_;
         if(!isNaN(this.§>T§))
         {
            _loc8_ = this.§>T§;
            if(!isNaN(this.§3!G§))
            {
               _loc8_ += this.§3!G§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§'g§ + this.§?a§ * _loc6_;
         if(!isNaN(this.§6""§))
         {
            _loc10_ = this.§6""§;
            if(!isNaN(this.§<!M§))
            {
               _loc10_ += this.§<!M§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§>!c§.red;
         _loc11_.green = this.§>!c§.green;
         _loc11_.blue = this.§>!c§.blue;
         _loc11_.alpha = this.§>!c§.alpha;
         if(this.§8!>§.red != 0)
         {
            _loc11_.red += this.§8!>§.red * (Math.random() * 2 - 1);
         }
         if(this.§8!>§.green != 0)
         {
            _loc11_.green += this.§8!>§.green * (Math.random() * 2 - 1);
         }
         if(this.§8!>§.blue != 0)
         {
            _loc11_.blue += this.§8!>§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8!>§.alpha != 0)
         {
            _loc11_.alpha += this.§8!>§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§[!v§.red;
         var _loc14_:Number = this.§[!v§.green;
         var _loc15_:Number = this.§[!v§.blue;
         var _loc16_:Number = this.§[!v§.alpha;
         if(this.§4!x§.red != 0)
         {
            _loc13_ += this.§4!x§.red * (Math.random() * 2 - 1);
         }
         if(this.§4!x§.green != 0)
         {
            _loc14_ += this.§4!x§.green * (Math.random() * 2 - 1);
         }
         if(this.§4!x§.blue != 0)
         {
            _loc15_ += this.§4!x§.blue * (Math.random() * 2 - 1);
         }
         if(this.§4!x§.alpha != 0)
         {
            _loc16_ += this.§4!x§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§#]§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§=!g§ - _loc3_.§ !H§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§ !H§ += param2;
         if(this.§,x§ == this.§>p§)
         {
            if(!_loc3_.skipUpdate || !this.§&!`§)
            {
               if(this.§&!`§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §]!d§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §3G§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§0!h§)
               {
                  _loc3_.§ !H§ = _loc3_.§=!g§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§&!`§)
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
               if(this.§&!`§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§&!5§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§1!W§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&!5§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§1!W§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§&!`§)
         {
            if(this.§&!`§)
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
      
      private function §%u§(param1:XML, param2:Texture) : void
      {
         this.§^-§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§'v§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&!5§ = parseFloat(param1.gravity.attribute("x"));
         this.§1!W§ = parseFloat(param1.gravity.attribute("y"));
         this.§,x§ = this.§@!-§(param1.emitterType);
         this.§&L§ = this.§@!-§(param1.maxParticles);
         this.§-!R§ = Math.max(0.01,this.§>!3§(param1.particleLifeSpan));
         this.§ ![§ = this.§>!3§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§,!l§ = this.§>!3§(param1.particleInterval);
         }
         else
         {
            this.§,!l§ = 0;
         }
         this.§7!e§ = this.§>!3§(param1.startParticleSize);
         this.§'g§ = this.§7!e§ * param2.height / param2.width;
         this.§-t§ = this.§>!3§(param1.startParticleSizeVariance);
         this.§?a§ = this.§-t§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§7!e§ = this.§>!3§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§-t§ = this.§>!3§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§'g§ = this.§>!3§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§?a§ = this.§>!3§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§>T§ = this.§>!3§(param1.finishParticleSize);
            this.§6""§ = this.§>T§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§3!G§ = this.§>!3§(param1.FinishParticleSizeVariance);
            this.§<!M§ = this.§3!G§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§>T§ = this.§>!3§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§3!G§ = this.§>!3§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§6""§ = this.§>!3§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§<!M§ = this.§>!3§(param1.FinishParticleSizeVarianceY);
         }
         this.§6$§ = deg2rad(this.§>!3§(param1.angle));
         this.§7"$§ = deg2rad(this.§>!3§(param1.angleVariance));
         this.§2!8§ = this.§>!3§(param1.speed);
         this.§07§ = this.§>!3§(param1.speedVariance);
         this.§4!r§ = this.§>!3§(param1.radialAcceleration);
         this.§5K§ = this.§>!3§(param1.tangentialAcceleration);
         this.§`h§ = this.§>!3§(param1.maxRadius);
         this.§5Q§ = this.§>!3§(param1.maxRadiusVariance);
         this.§0!h§ = this.§>!3§(param1.minRadius);
         this.§2!d§ = deg2rad(this.§>!3§(param1.rotatePerSecond));
         this.§2t§ = deg2rad(this.§>!3§(param1.rotatePerSecondVariance));
         this.§>!c§ = this.§[!K§(param1.startColor);
         this.§8!>§ = this.§[!K§(param1.startColorVariance);
         this.§[!v§ = this.§[!K§(param1.finishColor);
         this.§4!x§ = this.§[!K§(param1.finishColorVariance);
         §-!S§ = this.§,"2§(param1.blendFuncSource);
         §+!Y§ = this.§,"2§(param1.blendFuncDestination);
         §&!k§ = this.§=!G§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §4"'§ = this.§>!3§(param1.emissionVariance);
         }
      }
      
      protected function §@!-§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §>!3§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §!!§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §[!K§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §,"2§(param1:XMLList) : String
      {
         var _loc2_:int = this.§@!-§(param1);
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
      
      protected function §=!G§(param1:XMLList) : String
      {
         var _loc2_:String = this.§!!§(param1);
         if(_loc2_ == §7n§.§default§ || _loc2_ == §7n§.§@1§ || _loc2_ == §7n§.NONE)
         {
            return _loc2_;
         }
         return §7n§.§default§;
      }
   }
}

import §="6§.§#]§;

class PDParticle extends §#]§
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
