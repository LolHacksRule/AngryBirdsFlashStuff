package §30§
{
   import §"![§.§ !;§;
   import §"![§.Texture;
   import §9!^§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §3[§ extends §+G§
   {
       
      
      private const §!!c§:int = 0;
      
      private const §=H§:int = 1;
      
      private var §;>§:Number;
      
      private var §^!'§:int;
      
      private var §9!§:Number;
      
      private var §5B§:Number;
      
      private var §=!5§:int;
      
      private var §!R§:Number;
      
      private var §8b§:Number;
      
      private var §'!"§:Number;
      
      private var §'m§:Number;
      
      private var §`!<§:Number;
      
      private var §@!]§:Number;
      
      private var §"m§:Number;
      
      private var §9c§:Number;
      
      private var §@n§:Number;
      
      private var §9§:Number;
      
      private var §"!,§:Number;
      
      private var §2!N§:Number;
      
      private var §![§:Number;
      
      private var §1u§:Number;
      
      private var §;!E§:Number;
      
      private var §8!E§:Number;
      
      private var §@P§:Number;
      
      private var §;&§:Number;
      
      private var §0%§:Number;
      
      private var §6!+§:Number;
      
      private var §+!A§:Number;
      
      private var §6!K§:Number;
      
      private var §-!`§:Number;
      
      private var §#A§:Number;
      
      private var § !a§:Number;
      
      private var §5!@§:Number;
      
      private var §9S§:ColorArgb;
      
      private var §1U§:ColorArgb;
      
      private var §-!?§:ColorArgb;
      
      private var §5v§:ColorArgb;
      
      public function §3[§(param1:XML, param2:Texture)
      {
         this.§`8§(param1,param2);
         var _loc3_:Number = this.§=!5§ / (this.§!R§ + this.§'!"§);
         super(param2,_loc3_,this.§=!5§,§0!I§,§=!F§);
         §[=§ = false;
      }
      
      public function get §>3§() : int
      {
         return this.§=!5§;
      }
      
      override protected function createParticle() : §"k§
      {
         return new PDParticle();
      }
      
      private function get §4!7§() : Boolean
      {
         return this.§>3§ >= 20;
      }
      
      override protected function initParticle(param1:§"k§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§!R§ + this.§8b§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§1O§ = 0;
         _loc2_.§;!T§ = _loc3_;
         _loc2_.x = §]!I§ + this.§9!§ * (Math.random() * 2 - 1);
         _loc2_.y = §&!B§ + this.§5B§ * (Math.random() * 2 - 1);
         _loc2_.startX = §]!I§;
         _loc2_.startY = §&!B§;
         var _loc4_:Number = this.§2!N§ + this.§![§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§1u§ + this.§;!E§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§6!K§ + this.§-!`§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§6!K§ / _loc3_;
         _loc2_.rotation = this.§2!N§ + this.§![§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§ !a§ + this.§5!@§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§;&§;
         _loc2_.tangentialAcceleration = this.§6!+§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§'m§ + this.§`!<§ * _loc6_;
         if(!isNaN(this.§9c§))
         {
            _loc8_ = this.§9c§;
            if(!isNaN(this.§@n§))
            {
               _loc8_ += this.§@n§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§@!]§ + this.§"m§ * _loc6_;
         if(!isNaN(this.§9§))
         {
            _loc10_ = this.§9§;
            if(!isNaN(this.§"!,§))
            {
               _loc10_ += this.§"!,§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§9S§.red;
         _loc11_.green = this.§9S§.green;
         _loc11_.blue = this.§9S§.blue;
         _loc11_.alpha = this.§9S§.alpha;
         if(this.§1U§.red != 0)
         {
            _loc11_.red += this.§1U§.red * (Math.random() * 2 - 1);
         }
         if(this.§1U§.green != 0)
         {
            _loc11_.green += this.§1U§.green * (Math.random() * 2 - 1);
         }
         if(this.§1U§.blue != 0)
         {
            _loc11_.blue += this.§1U§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1U§.alpha != 0)
         {
            _loc11_.alpha += this.§1U§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§-!?§.red;
         var _loc14_:Number = this.§-!?§.green;
         var _loc15_:Number = this.§-!?§.blue;
         var _loc16_:Number = this.§-!?§.alpha;
         if(this.§5v§.red != 0)
         {
            _loc13_ += this.§5v§.red * (Math.random() * 2 - 1);
         }
         if(this.§5v§.green != 0)
         {
            _loc14_ += this.§5v§.green * (Math.random() * 2 - 1);
         }
         if(this.§5v§.blue != 0)
         {
            _loc15_ += this.§5v§.blue * (Math.random() * 2 - 1);
         }
         if(this.§5v§.alpha != 0)
         {
            _loc16_ += this.§5v§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§"k§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§;!T§ - _loc3_.§1O§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§1O§ += param2;
         if(this.§^!'§ == this.§=H§)
         {
            if(!_loc3_.skipUpdate || !this.§4!7§)
            {
               if(this.§4!7§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §]!I§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §&!B§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§#A§)
               {
                  _loc3_.§1O§ = _loc3_.§;!T§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§4!7§)
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
               if(this.§4!7§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§8!E§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§@P§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§8!E§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§@P§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§4!7§)
         {
            if(this.§4!7§)
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
      
      private function §`8§(param1:XML, param2:Texture) : void
      {
         this.§9!§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§5B§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§8!E§ = parseFloat(param1.gravity.attribute("x"));
         this.§@P§ = parseFloat(param1.gravity.attribute("y"));
         this.§^!'§ = this.§!H§(param1.emitterType);
         this.§=!5§ = this.§!H§(param1.maxParticles);
         this.§!R§ = Math.max(0.01,this.§+i§(param1.particleLifeSpan));
         this.§8b§ = this.§+i§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§'!"§ = this.§+i§(param1.particleInterval);
         }
         else
         {
            this.§'!"§ = 0;
         }
         this.§'m§ = this.§+i§(param1.startParticleSize);
         this.§@!]§ = this.§'m§ * param2.height / param2.width;
         this.§`!<§ = this.§+i§(param1.startParticleSizeVariance);
         this.§"m§ = this.§`!<§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§'m§ = this.§+i§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`!<§ = this.§+i§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§@!]§ = this.§+i§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§"m§ = this.§+i§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§9c§ = this.§+i§(param1.finishParticleSize);
            this.§9§ = this.§9c§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§@n§ = this.§+i§(param1.FinishParticleSizeVariance);
            this.§"!,§ = this.§@n§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§9c§ = this.§+i§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§@n§ = this.§+i§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§9§ = this.§+i§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§"!,§ = this.§+i§(param1.FinishParticleSizeVarianceY);
         }
         this.§2!N§ = deg2rad(this.§+i§(param1.angle));
         this.§![§ = deg2rad(this.§+i§(param1.angleVariance));
         this.§1u§ = this.§+i§(param1.speed);
         this.§;!E§ = this.§+i§(param1.speedVariance);
         this.§;&§ = this.§+i§(param1.radialAcceleration);
         this.§6!+§ = this.§+i§(param1.tangentialAcceleration);
         this.§6!K§ = this.§+i§(param1.maxRadius);
         this.§-!`§ = this.§+i§(param1.maxRadiusVariance);
         this.§#A§ = this.§+i§(param1.minRadius);
         this.§ !a§ = deg2rad(this.§+i§(param1.rotatePerSecond));
         this.§5!@§ = deg2rad(this.§+i§(param1.rotatePerSecondVariance));
         this.§9S§ = this.§5S§(param1.startColor);
         this.§1U§ = this.§5S§(param1.startColorVariance);
         this.§-!?§ = this.§5S§(param1.finishColor);
         this.§5v§ = this.§5S§(param1.finishColorVariance);
         §0!I§ = this.§[!D§(param1.blendFuncSource);
         §=!F§ = this.§[!D§(param1.blendFuncDestination);
         §[S§ = this.§^!5§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §default§ = this.§+i§(param1.emissionVariance);
         }
      }
      
      protected function §!H§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §+i§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §,6§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §5S§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §[!D§(param1:XMLList) : String
      {
         var _loc2_:int = this.§!H§(param1);
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
      
      protected function §^!5§(param1:XMLList) : String
      {
         var _loc2_:String = this.§,6§(param1);
         if(_loc2_ == § !;§.§,4§ || _loc2_ == § !;§.§"!d§ || _loc2_ == § !;§.NONE)
         {
            return _loc2_;
         }
         return § !;§.§,4§;
      }
   }
}

import §30§.§"k§;

class PDParticle extends §"k§
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
