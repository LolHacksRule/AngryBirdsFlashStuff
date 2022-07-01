package §9i§
{
   import §"!t§.deg2rad;
   import §&!;§.§3!j§;
   import §&!;§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §[!3§ extends §5!-§
   {
       
      
      private const §%#§:int = 0;
      
      private const §=!S§:int = 1;
      
      private var §]"%§:Number;
      
      private var §1m§:int;
      
      private var §+,§:Number;
      
      private var §7!q§:Number;
      
      private var § i§:int;
      
      private var §%"4§:Number;
      
      private var §[!Y§:Number;
      
      private var §;!_§:Number;
      
      private var native:Number;
      
      private var §6"'§:Number;
      
      private var §^S§:Number;
      
      private var §-y§:Number;
      
      private var §=v§:Number;
      
      private var §%_§:Number;
      
      private var §61§:Number;
      
      private var §#C§:Number;
      
      private var §?[§:Number;
      
      private var §@L§:Number;
      
      private var §1g§:Number;
      
      private var §",§:Number;
      
      private var §4!u§:Number;
      
      private var §&!L§:Number;
      
      private var §#0§:Number;
      
      private var §3v§:Number;
      
      private var §3!N§:Number;
      
      private var §=g§:Number;
      
      private var §98§:Number;
      
      private var §3?§:Number;
      
      private var §"!2§:Number;
      
      private var §>F§:Number;
      
      private var §<!p§:Number;
      
      private var §]B§:ColorArgb;
      
      private var §%![§:ColorArgb;
      
      private var §5!n§:ColorArgb;
      
      private var §>![§:ColorArgb;
      
      public function §[!3§(param1:XML, param2:Texture)
      {
         this.§54§(param1,param2);
         var _loc3_:Number = this.§ i§ / (this.§%"4§ + this.§;!_§);
         super(param2,_loc3_,this.§ i§,§-!j§,§"!7§);
         § !8§ = false;
      }
      
      public function get §9!9§() : int
      {
         return this.§ i§;
      }
      
      override protected function createParticle() : §-8§
      {
         return new PDParticle();
      }
      
      private function get §`!n§() : Boolean
      {
         return this.§9!9§ >= 20;
      }
      
      override protected function initParticle(param1:§-8§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§%"4§ + this.§[!Y§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§7"&§ = 0;
         _loc2_.§-Q§ = _loc3_;
         _loc2_.x = § #§ + this.§+,§ * (Math.random() * 2 - 1);
         _loc2_.y = §>!O§ + this.§7!q§ * (Math.random() * 2 - 1);
         _loc2_.startX = § #§;
         _loc2_.startY = §>!O§;
         var _loc4_:Number = this.§?[§ + this.§@L§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§1g§ + this.§",§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§98§ + this.§3?§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§98§ / _loc3_;
         _loc2_.rotation = this.§?[§ + this.§@L§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§>F§ + this.§<!p§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§#0§;
         _loc2_.tangentialAcceleration = this.§3!N§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.native + this.§6"'§ * _loc6_;
         if(!isNaN(this.§=v§))
         {
            _loc8_ = this.§=v§;
            if(!isNaN(this.§%_§))
            {
               _loc8_ += this.§%_§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§^S§ + this.§-y§ * _loc6_;
         if(!isNaN(this.§61§))
         {
            _loc10_ = this.§61§;
            if(!isNaN(this.§#C§))
            {
               _loc10_ += this.§#C§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]B§.red;
         _loc11_.green = this.§]B§.green;
         _loc11_.blue = this.§]B§.blue;
         _loc11_.alpha = this.§]B§.alpha;
         if(this.§%![§.red != 0)
         {
            _loc11_.red += this.§%![§.red * (Math.random() * 2 - 1);
         }
         if(this.§%![§.green != 0)
         {
            _loc11_.green += this.§%![§.green * (Math.random() * 2 - 1);
         }
         if(this.§%![§.blue != 0)
         {
            _loc11_.blue += this.§%![§.blue * (Math.random() * 2 - 1);
         }
         if(this.§%![§.alpha != 0)
         {
            _loc11_.alpha += this.§%![§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§5!n§.red;
         var _loc14_:Number = this.§5!n§.green;
         var _loc15_:Number = this.§5!n§.blue;
         var _loc16_:Number = this.§5!n§.alpha;
         if(this.§>![§.red != 0)
         {
            _loc13_ += this.§>![§.red * (Math.random() * 2 - 1);
         }
         if(this.§>![§.green != 0)
         {
            _loc14_ += this.§>![§.green * (Math.random() * 2 - 1);
         }
         if(this.§>![§.blue != 0)
         {
            _loc15_ += this.§>![§.blue * (Math.random() * 2 - 1);
         }
         if(this.§>![§.alpha != 0)
         {
            _loc16_ += this.§>![§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§-8§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§-Q§ - _loc3_.§7"&§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§7"&§ += param2;
         if(this.§1m§ == this.§=!S§)
         {
            if(!_loc3_.skipUpdate || !this.§`!n§)
            {
               if(this.§`!n§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = § #§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §>!O§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§"!2§)
               {
                  _loc3_.§7"&§ = _loc3_.§-Q§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§`!n§)
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
               if(this.§`!n§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§4!u§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§&!L§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§4!u§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§&!L§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§`!n§)
         {
            if(this.§`!n§)
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
      
      private function §54§(param1:XML, param2:Texture) : void
      {
         this.§+,§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§7!q§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§4!u§ = parseFloat(param1.gravity.attribute("x"));
         this.§&!L§ = parseFloat(param1.gravity.attribute("y"));
         this.§1m§ = this.§do §(param1.emitterType);
         this.§ i§ = this.§do §(param1.maxParticles);
         this.§%"4§ = Math.max(0.01,this.§@!s§(param1.particleLifeSpan));
         this.§[!Y§ = this.§@!s§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§;!_§ = this.§@!s§(param1.particleInterval);
         }
         else
         {
            this.§;!_§ = 0;
         }
         this.native = this.§@!s§(param1.startParticleSize);
         this.§^S§ = this.native * param2.height / param2.width;
         this.§6"'§ = this.§@!s§(param1.startParticleSizeVariance);
         this.§-y§ = this.§6"'§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.native = this.§@!s§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§6"'§ = this.§@!s§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§^S§ = this.§@!s§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§-y§ = this.§@!s§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§=v§ = this.§@!s§(param1.finishParticleSize);
            this.§61§ = this.§=v§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§%_§ = this.§@!s§(param1.FinishParticleSizeVariance);
            this.§#C§ = this.§%_§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§=v§ = this.§@!s§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§%_§ = this.§@!s§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§61§ = this.§@!s§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§#C§ = this.§@!s§(param1.FinishParticleSizeVarianceY);
         }
         this.§?[§ = deg2rad(this.§@!s§(param1.angle));
         this.§@L§ = deg2rad(this.§@!s§(param1.angleVariance));
         this.§1g§ = this.§@!s§(param1.speed);
         this.§",§ = this.§@!s§(param1.speedVariance);
         this.§#0§ = this.§@!s§(param1.radialAcceleration);
         this.§3!N§ = this.§@!s§(param1.tangentialAcceleration);
         this.§98§ = this.§@!s§(param1.maxRadius);
         this.§3?§ = this.§@!s§(param1.maxRadiusVariance);
         this.§"!2§ = this.§@!s§(param1.minRadius);
         this.§>F§ = deg2rad(this.§@!s§(param1.rotatePerSecond));
         this.§<!p§ = deg2rad(this.§@!s§(param1.rotatePerSecondVariance));
         this.§]B§ = this.§<l§(param1.startColor);
         this.§%![§ = this.§<l§(param1.startColorVariance);
         this.§5!n§ = this.§<l§(param1.finishColor);
         this.§>![§ = this.§<l§(param1.finishColorVariance);
         §-!j§ = this.§>!=§(param1.blendFuncSource);
         §"!7§ = this.§>!=§(param1.blendFuncDestination);
         §4"!§ = this.§6""§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §`E§ = this.§@!s§(param1.emissionVariance);
         }
      }
      
      protected function §do §(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@!s§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §!X§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<l§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §>!=§(param1:XMLList) : String
      {
         var _loc2_:int = this.§do §(param1);
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
      
      protected function §6""§(param1:XMLList) : String
      {
         var _loc2_:String = this.§!X§(param1);
         if(_loc2_ == §3!j§.§6j§ || _loc2_ == §3!j§.§ `§ || _loc2_ == §3!j§.NONE)
         {
            return _loc2_;
         }
         return §3!j§.§6j§;
      }
   }
}

import §9i§.§-8§;

class PDParticle extends §-8§
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
