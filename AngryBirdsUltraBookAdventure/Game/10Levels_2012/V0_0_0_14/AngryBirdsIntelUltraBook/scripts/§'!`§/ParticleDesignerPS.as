package §'!`§
{
   import §!!9§.§4!'§;
   import §!!9§.Texture;
   import §2N§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §`!J§
   {
       
      
      private const §2!i§:int = 0;
      
      private const §&!<§:int = 1;
      
      private var §>!=§:Number;
      
      private var §'!Y§:int;
      
      private var §3!y§:Number;
      
      private var §=i§:Number;
      
      private var §[!u§:int;
      
      private var §1!§:Number;
      
      private var §8!L§:Number;
      
      private var native:Number;
      
      private var §4!i§:Number;
      
      private var §@H§:Number;
      
      private var §-Z§:Number;
      
      private var §!!J§:Number;
      
      private var §"7§:Number;
      
      private var §?!A§:Number;
      
      private var §1v§:Number;
      
      private var §#5§:Number;
      
      private var §0!7§:Number;
      
      private var §3I§:Number;
      
      private var §9j§:Number;
      
      private var §[!R§:Number;
      
      private var §>U§:Number;
      
      private var §'h§:Number;
      
      private var §'!C§:Number;
      
      private var §!!=§:Number;
      
      private var §;&§:Number;
      
      private var §[!t§:Number;
      
      private var §#!_§:Number;
      
      private var §^n§:Number;
      
      private var §+!l§:Number;
      
      private var §=!4§:Number;
      
      private var §9!"§:Number;
      
      private var §%%§:ColorArgb;
      
      private var §4!U§:ColorArgb;
      
      private var §+!G§:ColorArgb;
      
      private var §&q§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§-O§(param1,param2);
         var _loc3_:Number = this.§[!u§ / (this.§1!§ + this.native);
         super(param2,_loc3_,this.§[!u§,§0!l§,§7e§);
         §5N§ = false;
      }
      
      public function get §&J§() : int
      {
         return this.§[!u§;
      }
      
      override protected function createParticle() : §+A§
      {
         return new PDParticle();
      }
      
      private function get §-?§() : Boolean
      {
         return this.§&J§ >= 20;
      }
      
      override protected function initParticle(param1:§+A§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§1!§ + this.§8!L§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§&a§ = 0;
         _loc2_.§9!t§ = _loc3_;
         _loc2_.x = §3!m§ + this.§3!y§ * (Math.random() * 2 - 1);
         _loc2_.y = §0!^§ + this.§=i§ * (Math.random() * 2 - 1);
         _loc2_.startX = §3!m§;
         _loc2_.startY = §0!^§;
         var _loc4_:Number = this.§0!7§ + this.§3I§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§9j§ + this.§[!R§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§#!_§ + this.§^n§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§#!_§ / _loc3_;
         _loc2_.rotation = this.§0!7§ + this.§3I§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§=!4§ + this.§9!"§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§'!C§;
         _loc2_.tangentialAcceleration = this.§;&§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§4!i§ + this.§@H§ * _loc6_;
         if(!isNaN(this.§"7§))
         {
            _loc8_ = this.§"7§;
            if(!isNaN(this.§?!A§))
            {
               _loc8_ += this.§?!A§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§-Z§ + this.§!!J§ * _loc6_;
         if(!isNaN(this.§1v§))
         {
            _loc10_ = this.§1v§;
            if(!isNaN(this.§#5§))
            {
               _loc10_ += this.§#5§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§%%§.red;
         _loc11_.green = this.§%%§.green;
         _loc11_.blue = this.§%%§.blue;
         _loc11_.alpha = this.§%%§.alpha;
         if(this.§4!U§.red != 0)
         {
            _loc11_.red += this.§4!U§.red * (Math.random() * 2 - 1);
         }
         if(this.§4!U§.green != 0)
         {
            _loc11_.green += this.§4!U§.green * (Math.random() * 2 - 1);
         }
         if(this.§4!U§.blue != 0)
         {
            _loc11_.blue += this.§4!U§.blue * (Math.random() * 2 - 1);
         }
         if(this.§4!U§.alpha != 0)
         {
            _loc11_.alpha += this.§4!U§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§+!G§.red;
         var _loc14_:Number = this.§+!G§.green;
         var _loc15_:Number = this.§+!G§.blue;
         var _loc16_:Number = this.§+!G§.alpha;
         if(this.§&q§.red != 0)
         {
            _loc13_ += this.§&q§.red * (Math.random() * 2 - 1);
         }
         if(this.§&q§.green != 0)
         {
            _loc14_ += this.§&q§.green * (Math.random() * 2 - 1);
         }
         if(this.§&q§.blue != 0)
         {
            _loc15_ += this.§&q§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&q§.alpha != 0)
         {
            _loc16_ += this.§&q§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§+A§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§9!t§ - _loc3_.§&a§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§&a§ += param2;
         if(this.§'!Y§ == this.§&!<§)
         {
            if(!_loc3_.skipUpdate || !this.§-?§)
            {
               if(this.§-?§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §3!m§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §0!^§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§+!l§)
               {
                  _loc3_.§&a§ = _loc3_.§9!t§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-?§)
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
               if(this.§-?§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§>U§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§'h§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§>U§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§'h§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-?§)
         {
            if(this.§-?§)
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
      
      private function §-O§(param1:XML, param2:Texture) : void
      {
         this.§3!y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§=i§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§>U§ = parseFloat(param1.gravity.attribute("x"));
         this.§'h§ = parseFloat(param1.gravity.attribute("y"));
         this.§'!Y§ = this.§6!'§(param1.emitterType);
         this.§[!u§ = this.§6!'§(param1.maxParticles);
         this.§1!§ = Math.max(0.01,this.§1w§(param1.particleLifeSpan));
         this.§8!L§ = this.§1w§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.native = this.§1w§(param1.particleInterval);
         }
         else
         {
            this.native = 0;
         }
         this.§4!i§ = this.§1w§(param1.startParticleSize);
         this.§-Z§ = this.§4!i§ * param2.height / param2.width;
         this.§@H§ = this.§1w§(param1.startParticleSizeVariance);
         this.§!!J§ = this.§@H§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§4!i§ = this.§1w§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§@H§ = this.§1w§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§-Z§ = this.§1w§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§!!J§ = this.§1w§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§"7§ = this.§1w§(param1.finishParticleSize);
            this.§1v§ = this.§"7§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§?!A§ = this.§1w§(param1.FinishParticleSizeVariance);
            this.§#5§ = this.§?!A§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§"7§ = this.§1w§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§?!A§ = this.§1w§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§1v§ = this.§1w§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§#5§ = this.§1w§(param1.FinishParticleSizeVarianceY);
         }
         this.§0!7§ = deg2rad(this.§1w§(param1.angle));
         this.§3I§ = deg2rad(this.§1w§(param1.angleVariance));
         this.§9j§ = this.§1w§(param1.speed);
         this.§[!R§ = this.§1w§(param1.speedVariance);
         this.§'!C§ = this.§1w§(param1.radialAcceleration);
         this.§;&§ = this.§1w§(param1.tangentialAcceleration);
         this.§#!_§ = this.§1w§(param1.maxRadius);
         this.§^n§ = this.§1w§(param1.maxRadiusVariance);
         this.§+!l§ = this.§1w§(param1.minRadius);
         this.§=!4§ = deg2rad(this.§1w§(param1.rotatePerSecond));
         this.§9!"§ = deg2rad(this.§1w§(param1.rotatePerSecondVariance));
         this.§%%§ = this.§<u§(param1.startColor);
         this.§4!U§ = this.§<u§(param1.startColorVariance);
         this.§+!G§ = this.§<u§(param1.finishColor);
         this.§&q§ = this.§<u§(param1.finishColorVariance);
         §0!l§ = this.§2!I§(param1.blendFuncSource);
         §7e§ = this.§2!I§(param1.blendFuncDestination);
         §>!j§ = this.§"!j§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §0!j§ = this.§1w§(param1.emissionVariance);
         }
      }
      
      protected function §6!'§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §1w§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §^!8§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<u§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §2!I§(param1:XMLList) : String
      {
         var _loc2_:int = this.§6!'§(param1);
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
      
      protected function §"!j§(param1:XMLList) : String
      {
         var _loc2_:String = this.§^!8§(param1);
         if(_loc2_ == §4!'§.§5!'§ || _loc2_ == §4!'§.§<,§ || _loc2_ == §4!'§.NONE)
         {
            return _loc2_;
         }
         return §4!'§.§5!'§;
      }
   }
}

import §'!`§.§+A§;

class PDParticle extends §+A§
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
