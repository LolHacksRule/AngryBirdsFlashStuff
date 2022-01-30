package §9x§
{
   import §3W§.deg2rad;
   import §7R§.§=!O§;
   import §7R§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §#B§ extends §+!g§
   {
       
      
      private const §+!L§:int = 0;
      
      private const §!D§:int = 1;
      
      private var §2C§:Number;
      
      private var §["0§:int;
      
      private var §'M§:Number;
      
      private var §;>§:Number;
      
      private var §'!<§:int;
      
      private var §-L§:Number;
      
      private var §?G§:Number;
      
      private var §8!;§:Number;
      
      private var §;"9§:Number;
      
      private var §#!$§:Number;
      
      private var §9z§:Number;
      
      private var §2Y§:Number;
      
      private var §`!-§:Number;
      
      private var §5!"§:Number;
      
      private var §class§:Number;
      
      private var §;Y§:Number;
      
      private var §<!0§:Number;
      
      private var §;V§:Number;
      
      private var §5!?§:Number;
      
      private var §&!4§:Number;
      
      private var §57§:Number;
      
      private var §-"1§:Number;
      
      private var §@'§:Number;
      
      private var §3"2§:Number;
      
      private var §,"=§:Number;
      
      private var §9k§:Number;
      
      private var §false§:Number;
      
      private var §0o§:Number;
      
      private var §&!+§:Number;
      
      private var §@W§:Number;
      
      private var §3]§:Number;
      
      private var §]!;§:ColorArgb;
      
      private var §<@§:ColorArgb;
      
      private var § Z§:ColorArgb;
      
      private var §!!"§:ColorArgb;
      
      public function §#B§(param1:XML, param2:Texture)
      {
         this.§'J§(param1,param2);
         var _loc3_:Number = this.§'!<§ / (this.§-L§ + this.§8!;§);
         super(param2,_loc3_,this.§'!<§,§'!o§,§%[§);
         §,";§ = false;
      }
      
      public function get §#!C§() : int
      {
         return this.§'!<§;
      }
      
      override protected function createParticle() : §>>§
      {
         return new PDParticle();
      }
      
      private function get §5!x§() : Boolean
      {
         return this.§#!C§ >= 20;
      }
      
      override protected function initParticle(param1:§>>§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§-L§ + this.§?G§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§@!=§ = 0;
         _loc2_.§!P§ = _loc3_;
         _loc2_.x = § "7§ + this.§'M§ * (Math.random() * 2 - 1);
         _loc2_.y = §2D§ + this.§;>§ * (Math.random() * 2 - 1);
         _loc2_.startX = § "7§;
         _loc2_.startY = §2D§;
         var _loc4_:Number = this.§<!0§ + this.§;V§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§5!?§ + this.§&!4§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§false§ + this.§0o§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§false§ / _loc3_;
         _loc2_.rotation = this.§<!0§ + this.§;V§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§@W§ + this.§3]§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§@'§;
         _loc2_.tangentialAcceleration = this.§,"=§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§;"9§ + this.§#!$§ * _loc6_;
         if(!isNaN(this.§`!-§))
         {
            _loc8_ = this.§`!-§;
            if(!isNaN(this.§5!"§))
            {
               _loc8_ += this.§5!"§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§9z§ + this.§2Y§ * _loc6_;
         if(!isNaN(this.§class§))
         {
            _loc10_ = this.§class§;
            if(!isNaN(this.§;Y§))
            {
               _loc10_ += this.§;Y§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]!;§.red;
         _loc11_.green = this.§]!;§.green;
         _loc11_.blue = this.§]!;§.blue;
         _loc11_.alpha = this.§]!;§.alpha;
         if(this.§<@§.red != 0)
         {
            _loc11_.red += this.§<@§.red * (Math.random() * 2 - 1);
         }
         if(this.§<@§.green != 0)
         {
            _loc11_.green += this.§<@§.green * (Math.random() * 2 - 1);
         }
         if(this.§<@§.blue != 0)
         {
            _loc11_.blue += this.§<@§.blue * (Math.random() * 2 - 1);
         }
         if(this.§<@§.alpha != 0)
         {
            _loc11_.alpha += this.§<@§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§ Z§.red;
         var _loc14_:Number = this.§ Z§.green;
         var _loc15_:Number = this.§ Z§.blue;
         var _loc16_:Number = this.§ Z§.alpha;
         if(this.§!!"§.red != 0)
         {
            _loc13_ += this.§!!"§.red * (Math.random() * 2 - 1);
         }
         if(this.§!!"§.green != 0)
         {
            _loc14_ += this.§!!"§.green * (Math.random() * 2 - 1);
         }
         if(this.§!!"§.blue != 0)
         {
            _loc15_ += this.§!!"§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!!"§.alpha != 0)
         {
            _loc16_ += this.§!!"§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§>>§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§!P§ - _loc3_.§@!=§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§@!=§ += param2;
         if(this.§["0§ == this.§!D§)
         {
            if(!_loc3_.skipUpdate || !this.§5!x§)
            {
               if(this.§5!x§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = § "7§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2D§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§&!+§)
               {
                  _loc3_.§@!=§ = _loc3_.§!P§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§5!x§)
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
               if(this.§5!x§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§57§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§-"1§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§57§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§-"1§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§5!x§)
         {
            if(this.§5!x§)
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
      
      private function §'J§(param1:XML, param2:Texture) : void
      {
         this.§'M§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§;>§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§57§ = parseFloat(param1.gravity.attribute("x"));
         this.§-"1§ = parseFloat(param1.gravity.attribute("y"));
         this.§["0§ = this.§<G§(param1.emitterType);
         this.§'!<§ = this.§<G§(param1.maxParticles);
         this.§-L§ = Math.max(0.01,this.§2!§(param1.particleLifeSpan));
         this.§?G§ = this.§2!§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§8!;§ = this.§2!§(param1.particleInterval);
         }
         else
         {
            this.§8!;§ = 0;
         }
         this.§;"9§ = this.§2!§(param1.startParticleSize);
         this.§9z§ = this.§;"9§ * param2.height / param2.width;
         this.§#!$§ = this.§2!§(param1.startParticleSizeVariance);
         this.§2Y§ = this.§#!$§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§;"9§ = this.§2!§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§#!$§ = this.§2!§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§9z§ = this.§2!§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§2Y§ = this.§2!§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§`!-§ = this.§2!§(param1.finishParticleSize);
            this.§class§ = this.§`!-§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§5!"§ = this.§2!§(param1.FinishParticleSizeVariance);
            this.§;Y§ = this.§5!"§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§`!-§ = this.§2!§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§5!"§ = this.§2!§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§class§ = this.§2!§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§;Y§ = this.§2!§(param1.FinishParticleSizeVarianceY);
         }
         this.§<!0§ = deg2rad(this.§2!§(param1.angle));
         this.§;V§ = deg2rad(this.§2!§(param1.angleVariance));
         this.§5!?§ = this.§2!§(param1.speed);
         this.§&!4§ = this.§2!§(param1.speedVariance);
         this.§@'§ = this.§2!§(param1.radialAcceleration);
         this.§,"=§ = this.§2!§(param1.tangentialAcceleration);
         this.§false§ = this.§2!§(param1.maxRadius);
         this.§0o§ = this.§2!§(param1.maxRadiusVariance);
         this.§&!+§ = this.§2!§(param1.minRadius);
         this.§@W§ = deg2rad(this.§2!§(param1.rotatePerSecond));
         this.§3]§ = deg2rad(this.§2!§(param1.rotatePerSecondVariance));
         this.§]!;§ = this.§2" §(param1.startColor);
         this.§<@§ = this.§2" §(param1.startColorVariance);
         this.§ Z§ = this.§2" §(param1.finishColor);
         this.§!!"§ = this.§2" §(param1.finishColorVariance);
         §'!o§ = this.§'3§(param1.blendFuncSource);
         §%[§ = this.§'3§(param1.blendFuncDestination);
         §,!#§ = this.§#!A§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §5!#§ = this.§2!§(param1.emissionVariance);
         }
      }
      
      protected function §<G§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §2!§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §!"§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §2" §(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §'3§(param1:XMLList) : String
      {
         var _loc2_:int = this.§<G§(param1);
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
      
      protected function §#!A§(param1:XMLList) : String
      {
         var _loc2_:String = this.§!"§(param1);
         if(_loc2_ == §=!O§.§;!U§ || _loc2_ == §=!O§.§ l§ || _loc2_ == §=!O§.NONE)
         {
            return _loc2_;
         }
         return §=!O§.§;!U§;
      }
   }
}

import §9x§.§>>§;

class PDParticle extends §>>§
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
