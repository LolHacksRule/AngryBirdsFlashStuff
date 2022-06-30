package §#F§
{
   import § 0§.Texture;
   import § 0§.§^Q§;
   import §"=§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §2W§ extends §&!?§
   {
       
      
      private const §@!§:int = 0;
      
      private const §null§:int = 1;
      
      private var §8!W§:Number;
      
      private var §>!-§:int;
      
      private var §2!4§:Number;
      
      private var §!;§:Number;
      
      private var §"t§:int;
      
      private var §1W§:Number;
      
      private var §]O§:Number;
      
      private var §89§:Number;
      
      private var §'!L§:Number;
      
      private var §[!K§:Number;
      
      private var §-!B§:Number;
      
      private var §,!2§:Number;
      
      private var §[B§:Number;
      
      private var §5!5§:Number;
      
      private var §2!E§:Number;
      
      private var §9T§:Number;
      
      private var §^!!§:Number;
      
      private var §5!L§:Number;
      
      private var §=v§:Number;
      
      private var §5!+§:Number;
      
      private var §!!Z§:Number;
      
      private var §6!"§:Number;
      
      private var §;f§:Number;
      
      private var §7!M§:Number;
      
      private var §[_§:Number;
      
      private var §#!'§:Number;
      
      private var §=!F§:Number;
      
      private var §!!+§:Number;
      
      private var §=!#§:Number;
      
      private var §9K§:Number;
      
      private var §'!D§:Number;
      
      private var §<!U§:ColorArgb;
      
      private var §5e§:ColorArgb;
      
      private var §5k§:ColorArgb;
      
      private var §&j§:ColorArgb;
      
      public function §2W§(param1:XML, param2:Texture)
      {
         this.§;!^§(param1,param2);
         var _loc3_:Number = this.§"t§ / (this.§1W§ + this.§89§);
         super(param2,_loc3_,this.§"t§,§?!D§,§!!U§);
         §;g§ = false;
      }
      
      public function get §&P§() : int
      {
         return this.§"t§;
      }
      
      override protected function createParticle() : §"!_§
      {
         return new PDParticle();
      }
      
      private function get §"k§() : Boolean
      {
         return this.§&P§ >= 20;
      }
      
      override protected function initParticle(param1:§"!_§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§1W§ + this.§]O§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§3S§ = 0;
         _loc2_.§?!I§ = _loc3_;
         _loc2_.x = §;`§ + this.§2!4§ * (Math.random() * 2 - 1);
         _loc2_.y = §1[§ + this.§!;§ * (Math.random() * 2 - 1);
         _loc2_.startX = §;`§;
         _loc2_.startY = §1[§;
         var _loc4_:Number = this.§^!!§ + this.§5!L§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§=v§ + this.§5!+§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§=!F§ + this.§!!+§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§=!F§ / _loc3_;
         _loc2_.rotation = this.§^!!§ + this.§5!L§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§9K§ + this.§'!D§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§;f§;
         _loc2_.tangentialAcceleration = this.§[_§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§'!L§ + this.§[!K§ * _loc6_;
         if(!isNaN(this.§[B§))
         {
            _loc8_ = this.§[B§;
            if(!isNaN(this.§5!5§))
            {
               _loc8_ += this.§5!5§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§-!B§ + this.§,!2§ * _loc6_;
         if(!isNaN(this.§2!E§))
         {
            _loc10_ = this.§2!E§;
            if(!isNaN(this.§9T§))
            {
               _loc10_ += this.§9T§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§<!U§.red;
         _loc11_.green = this.§<!U§.green;
         _loc11_.blue = this.§<!U§.blue;
         _loc11_.alpha = this.§<!U§.alpha;
         if(this.§5e§.red != 0)
         {
            _loc11_.red += this.§5e§.red * (Math.random() * 2 - 1);
         }
         if(this.§5e§.green != 0)
         {
            _loc11_.green += this.§5e§.green * (Math.random() * 2 - 1);
         }
         if(this.§5e§.blue != 0)
         {
            _loc11_.blue += this.§5e§.blue * (Math.random() * 2 - 1);
         }
         if(this.§5e§.alpha != 0)
         {
            _loc11_.alpha += this.§5e§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§5k§.red;
         var _loc14_:Number = this.§5k§.green;
         var _loc15_:Number = this.§5k§.blue;
         var _loc16_:Number = this.§5k§.alpha;
         if(this.§&j§.red != 0)
         {
            _loc13_ += this.§&j§.red * (Math.random() * 2 - 1);
         }
         if(this.§&j§.green != 0)
         {
            _loc14_ += this.§&j§.green * (Math.random() * 2 - 1);
         }
         if(this.§&j§.blue != 0)
         {
            _loc15_ += this.§&j§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&j§.alpha != 0)
         {
            _loc16_ += this.§&j§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§"!_§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§?!I§ - _loc3_.§3S§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§3S§ += param2;
         if(this.§>!-§ == this.§null§)
         {
            if(!_loc3_.skipUpdate || !this.§"k§)
            {
               if(this.§"k§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §;`§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §1[§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§=!#§)
               {
                  _loc3_.§3S§ = _loc3_.§?!I§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§"k§)
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
               if(this.§"k§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§!!Z§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§6!"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§!!Z§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§6!"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§"k§)
         {
            if(this.§"k§)
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
      
      private function §;!^§(param1:XML, param2:Texture) : void
      {
         this.§2!4§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§!;§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§!!Z§ = parseFloat(param1.gravity.attribute("x"));
         this.§6!"§ = parseFloat(param1.gravity.attribute("y"));
         this.§>!-§ = this.§9!>§(param1.emitterType);
         this.§"t§ = this.§9!>§(param1.maxParticles);
         this.§1W§ = Math.max(0.01,this.§&n§(param1.particleLifeSpan));
         this.§]O§ = this.§&n§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§89§ = this.§&n§(param1.particleInterval);
         }
         else
         {
            this.§89§ = 0;
         }
         this.§'!L§ = this.§&n§(param1.startParticleSize);
         this.§-!B§ = this.§'!L§ * param2.height / param2.width;
         this.§[!K§ = this.§&n§(param1.startParticleSizeVariance);
         this.§,!2§ = this.§[!K§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§'!L§ = this.§&n§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§[!K§ = this.§&n§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§-!B§ = this.§&n§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§,!2§ = this.§&n§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§[B§ = this.§&n§(param1.finishParticleSize);
            this.§2!E§ = this.§[B§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§5!5§ = this.§&n§(param1.FinishParticleSizeVariance);
            this.§9T§ = this.§5!5§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§[B§ = this.§&n§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§5!5§ = this.§&n§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§2!E§ = this.§&n§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§9T§ = this.§&n§(param1.FinishParticleSizeVarianceY);
         }
         this.§^!!§ = deg2rad(this.§&n§(param1.angle));
         this.§5!L§ = deg2rad(this.§&n§(param1.angleVariance));
         this.§=v§ = this.§&n§(param1.speed);
         this.§5!+§ = this.§&n§(param1.speedVariance);
         this.§;f§ = this.§&n§(param1.radialAcceleration);
         this.§[_§ = this.§&n§(param1.tangentialAcceleration);
         this.§=!F§ = this.§&n§(param1.maxRadius);
         this.§!!+§ = this.§&n§(param1.maxRadiusVariance);
         this.§=!#§ = this.§&n§(param1.minRadius);
         this.§9K§ = deg2rad(this.§&n§(param1.rotatePerSecond));
         this.§'!D§ = deg2rad(this.§&n§(param1.rotatePerSecondVariance));
         this.§<!U§ = this.§-9§(param1.startColor);
         this.§5e§ = this.§-9§(param1.startColorVariance);
         this.§5k§ = this.§-9§(param1.finishColor);
         this.§&j§ = this.§-9§(param1.finishColorVariance);
         §?!D§ = this.§"!1§(param1.blendFuncSource);
         §!!U§ = this.§"!1§(param1.blendFuncDestination);
         §>#§ = this.§<n§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §<!c§ = this.§&n§(param1.emissionVariance);
         }
      }
      
      protected function §9!>§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §&n§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §,!6§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §-9§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §"!1§(param1:XMLList) : String
      {
         var _loc2_:int = this.§9!>§(param1);
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
      
      protected function §<n§(param1:XMLList) : String
      {
         var _loc2_:String = this.§,!6§(param1);
         if(_loc2_ == §^Q§.§!!%§ || _loc2_ == §^Q§.§@m§ || _loc2_ == §^Q§.NONE)
         {
            return _loc2_;
         }
         return §^Q§.§!!%§;
      }
   }
}

import §#F§.§"!_§;

class PDParticle extends §"!_§
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
