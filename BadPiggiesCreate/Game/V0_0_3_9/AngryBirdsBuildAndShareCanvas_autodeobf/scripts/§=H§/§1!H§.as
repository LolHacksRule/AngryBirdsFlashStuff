package §=H§
{
   import §+M§.deg2rad;
   import §8Y§.§!!§;
   import §8Y§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §1!H§ extends §2!1§
   {
       
      
      private const §?5§:int = 0;
      
      private const §0!n§:int = 1;
      
      private var §7!s§:Number;
      
      private var §3!e§:int;
      
      private var §?!+§:Number;
      
      private var §@z§:Number;
      
      private var §<!?§:int;
      
      private var §"!w§:Number;
      
      private var §=y§:Number;
      
      private var §`§:Number;
      
      private var §"1§:Number;
      
      private var §0h§:Number;
      
      private var §8" §:Number;
      
      private var §1!I§:Number;
      
      private var §'"6§:Number;
      
      private var §1,§:Number;
      
      private var §&7§:Number;
      
      private var §0!P§:Number;
      
      private var §8"8§:Number;
      
      private var §74§:Number;
      
      private var §7^§:Number;
      
      private var §%H§:Number;
      
      private var §&!l§:Number;
      
      private var §,>§:Number;
      
      private var §3!7§:Number;
      
      private var §3g§:Number;
      
      private var §`!;§:Number;
      
      private var §5v§:Number;
      
      private var §1j§:Number;
      
      private var §get §:Number;
      
      private var §#2§:Number;
      
      private var §'Q§:Number;
      
      private var §+"7§:Number;
      
      private var §29§:ColorArgb;
      
      private var §&c§:ColorArgb;
      
      private var §2!!§:ColorArgb;
      
      private var §&#§:ColorArgb;
      
      public function §1!H§(param1:XML, param2:Texture)
      {
         this.§3"7§(param1,param2);
         var _loc3_:Number = this.§<!?§ / (this.§"!w§ + this.§`§);
         super(param2,_loc3_,this.§<!?§,§98§,§3z§);
         §&y§ = false;
      }
      
      public function get § var§() : int
      {
         return this.§<!?§;
      }
      
      override protected function createParticle() : §;!k§
      {
         return new PDParticle();
      }
      
      private function get §!!J§() : Boolean
      {
         return this.§ var§ >= 20;
      }
      
      override protected function initParticle(param1:§;!k§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§"!w§ + this.§=y§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§2!p§ = 0;
         _loc2_.§#"§ = _loc3_;
         _loc2_.x = §4!v§ + this.§?!+§ * (Math.random() * 2 - 1);
         _loc2_.y = §<L§ + this.§@z§ * (Math.random() * 2 - 1);
         _loc2_.startX = §4!v§;
         _loc2_.startY = §<L§;
         var _loc4_:Number = this.§8"8§ + this.§74§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§7^§ + this.§%H§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§1j§ + this.§get § * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§1j§ / _loc3_;
         _loc2_.rotation = this.§8"8§ + this.§74§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§'Q§ + this.§+"7§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§3!7§;
         _loc2_.tangentialAcceleration = this.§`!;§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§"1§ + this.§0h§ * _loc6_;
         if(!isNaN(this.§'"6§))
         {
            _loc8_ = this.§'"6§;
            if(!isNaN(this.§1,§))
            {
               _loc8_ += this.§1,§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§8" § + this.§1!I§ * _loc6_;
         if(!isNaN(this.§&7§))
         {
            _loc10_ = this.§&7§;
            if(!isNaN(this.§0!P§))
            {
               _loc10_ += this.§0!P§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§29§.red;
         _loc11_.green = this.§29§.green;
         _loc11_.blue = this.§29§.blue;
         _loc11_.alpha = this.§29§.alpha;
         if(this.§&c§.red != 0)
         {
            _loc11_.red += this.§&c§.red * (Math.random() * 2 - 1);
         }
         if(this.§&c§.green != 0)
         {
            _loc11_.green += this.§&c§.green * (Math.random() * 2 - 1);
         }
         if(this.§&c§.blue != 0)
         {
            _loc11_.blue += this.§&c§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&c§.alpha != 0)
         {
            _loc11_.alpha += this.§&c§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§2!!§.red;
         var _loc14_:Number = this.§2!!§.green;
         var _loc15_:Number = this.§2!!§.blue;
         var _loc16_:Number = this.§2!!§.alpha;
         if(this.§&#§.red != 0)
         {
            _loc13_ += this.§&#§.red * (Math.random() * 2 - 1);
         }
         if(this.§&#§.green != 0)
         {
            _loc14_ += this.§&#§.green * (Math.random() * 2 - 1);
         }
         if(this.§&#§.blue != 0)
         {
            _loc15_ += this.§&#§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&#§.alpha != 0)
         {
            _loc16_ += this.§&#§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§;!k§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§#"§ - _loc3_.§2!p§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§2!p§ += param2;
         if(this.§3!e§ == this.§0!n§)
         {
            if(!_loc3_.skipUpdate || !this.§!!J§)
            {
               if(this.§!!J§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §4!v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §<L§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§#2§)
               {
                  _loc3_.§2!p§ = _loc3_.§#"§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§!!J§)
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
               if(this.§!!J§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§&!l§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§,>§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&!l§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§,>§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§!!J§)
         {
            if(this.§!!J§)
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
      
      private function §3"7§(param1:XML, param2:Texture) : void
      {
         this.§?!+§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§@z§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&!l§ = parseFloat(param1.gravity.attribute("x"));
         this.§,>§ = parseFloat(param1.gravity.attribute("y"));
         this.§3!e§ = this.§3!9§(param1.emitterType);
         this.§<!?§ = this.§3!9§(param1.maxParticles);
         this.§"!w§ = Math.max(0.01,this.§6O§(param1.particleLifeSpan));
         this.§=y§ = this.§6O§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§`§ = this.§6O§(param1.particleInterval);
         }
         else
         {
            this.§`§ = 0;
         }
         this.§"1§ = this.§6O§(param1.startParticleSize);
         this.§8" § = this.§"1§ * param2.height / param2.width;
         this.§0h§ = this.§6O§(param1.startParticleSizeVariance);
         this.§1!I§ = this.§0h§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§"1§ = this.§6O§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§0h§ = this.§6O§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§8" § = this.§6O§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§1!I§ = this.§6O§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§'"6§ = this.§6O§(param1.finishParticleSize);
            this.§&7§ = this.§'"6§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§1,§ = this.§6O§(param1.FinishParticleSizeVariance);
            this.§0!P§ = this.§1,§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§'"6§ = this.§6O§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§1,§ = this.§6O§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§&7§ = this.§6O§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§0!P§ = this.§6O§(param1.FinishParticleSizeVarianceY);
         }
         this.§8"8§ = deg2rad(this.§6O§(param1.angle));
         this.§74§ = deg2rad(this.§6O§(param1.angleVariance));
         this.§7^§ = this.§6O§(param1.speed);
         this.§%H§ = this.§6O§(param1.speedVariance);
         this.§3!7§ = this.§6O§(param1.radialAcceleration);
         this.§`!;§ = this.§6O§(param1.tangentialAcceleration);
         this.§1j§ = this.§6O§(param1.maxRadius);
         this.§get § = this.§6O§(param1.maxRadiusVariance);
         this.§#2§ = this.§6O§(param1.minRadius);
         this.§'Q§ = deg2rad(this.§6O§(param1.rotatePerSecond));
         this.§+"7§ = deg2rad(this.§6O§(param1.rotatePerSecondVariance));
         this.§29§ = this.§7"8§(param1.startColor);
         this.§&c§ = this.§7"8§(param1.startColorVariance);
         this.§2!!§ = this.§7"8§(param1.finishColor);
         this.§&#§ = this.§7"8§(param1.finishColorVariance);
         §98§ = this.§5"#§(param1.blendFuncSource);
         §3z§ = this.§5"#§(param1.blendFuncDestination);
         §9!n§ = this.§&!L§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §"!G§ = this.§6O§(param1.emissionVariance);
         }
      }
      
      protected function §3!9§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6O§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §""!§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §7"8§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §5"#§(param1:XMLList) : String
      {
         var _loc2_:int = this.§3!9§(param1);
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
      
      protected function §&!L§(param1:XMLList) : String
      {
         var _loc2_:String = this.§""!§(param1);
         if(_loc2_ == §!!§.§7!2§ || _loc2_ == §!!§.§8"0§ || _loc2_ == §!!§.NONE)
         {
            return _loc2_;
         }
         return §!!§.§7!2§;
      }
   }
}

import §=H§.§;!k§;

class PDParticle extends §;!k§
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
