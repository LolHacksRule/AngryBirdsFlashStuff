package §5j§
{
   import §+!S§.Texture;
   import §+!S§.§]U§;
   import §?!Z§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §"k§ extends §30§
   {
       
      
      private const §3[§:int = 0;
      
      private const §!!c§:int = 1;
      
      private var §8!2§:Number;
      
      private var §=H§:int;
      
      private var §^!'§:Number;
      
      private var §9!§:Number;
      
      private var §5B§:int;
      
      private var §=!5§:Number;
      
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
      
      private var §1u§:Number;
      
      private var §![§:Number;
      
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
      
      private var §5!@§:ColorArgb;
      
      private var §9S§:ColorArgb;
      
      private var §1U§:ColorArgb;
      
      private var §-!?§:ColorArgb;
      
      public function §"k§(param1:XML, param2:Texture)
      {
         this.§4!7§(param1,param2);
         var _loc3_:Number = this.§5B§ / (this.§=!5§ + this.§8b§);
         super(param2,_loc3_,this.§5B§,§&!B§,§0!I§);
         dynamic = false;
      }
      
      public function get §5v§() : int
      {
         return this.§5B§;
      }
      
      override protected function createParticle() : §?a§
      {
         return new PDParticle();
      }
      
      private function get §>3§() : Boolean
      {
         return this.§5v§ >= 20;
      }
      
      override protected function initParticle(param1:§?a§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§=!5§ + this.§!R§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§=K§ = 0;
         _loc2_.§,d§ = _loc3_;
         _loc2_.x = §^!T§ + this.§^!'§ * (Math.random() * 2 - 1);
         _loc2_.y = §]!I§ + this.§9!§ * (Math.random() * 2 - 1);
         _loc2_.startX = §^!T§;
         _loc2_.startY = §]!I§;
         var _loc4_:Number = this.§"!,§ + this.§2!N§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§1u§ + this.§![§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§+!A§ + this.§6!K§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§+!A§ / _loc3_;
         _loc2_.rotation = this.§"!,§ + this.§2!N§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#A§ + this.§ !a§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§@P§;
         _loc2_.tangentialAcceleration = this.§0%§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§'!"§ + this.§'m§ * _loc6_;
         if(!isNaN(this.§"m§))
         {
            _loc8_ = this.§"m§;
            if(!isNaN(this.§9c§))
            {
               _loc8_ += this.§9c§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§`!<§ + this.§@!]§ * _loc6_;
         if(!isNaN(this.§@n§))
         {
            _loc10_ = this.§@n§;
            if(!isNaN(this.§9§))
            {
               _loc10_ += this.§9§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§5!@§.red;
         _loc11_.green = this.§5!@§.green;
         _loc11_.blue = this.§5!@§.blue;
         _loc11_.alpha = this.§5!@§.alpha;
         if(this.§9S§.red != 0)
         {
            _loc11_.red += this.§9S§.red * (Math.random() * 2 - 1);
         }
         if(this.§9S§.green != 0)
         {
            _loc11_.green += this.§9S§.green * (Math.random() * 2 - 1);
         }
         if(this.§9S§.blue != 0)
         {
            _loc11_.blue += this.§9S§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9S§.alpha != 0)
         {
            _loc11_.alpha += this.§9S§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§1U§.red;
         var _loc14_:Number = this.§1U§.green;
         var _loc15_:Number = this.§1U§.blue;
         var _loc16_:Number = this.§1U§.alpha;
         if(this.§-!?§.red != 0)
         {
            _loc13_ += this.§-!?§.red * (Math.random() * 2 - 1);
         }
         if(this.§-!?§.green != 0)
         {
            _loc14_ += this.§-!?§.green * (Math.random() * 2 - 1);
         }
         if(this.§-!?§.blue != 0)
         {
            _loc15_ += this.§-!?§.blue * (Math.random() * 2 - 1);
         }
         if(this.§-!?§.alpha != 0)
         {
            _loc16_ += this.§-!?§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§?a§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,d§ - _loc3_.§=K§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§=K§ += param2;
         if(this.§=H§ == this.§!!c§)
         {
            if(!_loc3_.skipUpdate || !this.§>3§)
            {
               if(this.§>3§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §^!T§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §]!I§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§-!`§)
               {
                  _loc3_.§=K§ = _loc3_.§,d§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§>3§)
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
               if(this.§>3§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§;!E§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§8!E§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§;!E§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§8!E§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§>3§)
         {
            if(this.§>3§)
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
      
      private function §4!7§(param1:XML, param2:Texture) : void
      {
         this.§^!'§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§9!§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§;!E§ = parseFloat(param1.gravity.attribute("x"));
         this.§8!E§ = parseFloat(param1.gravity.attribute("y"));
         this.§=H§ = this.§`8§(param1.emitterType);
         this.§5B§ = this.§`8§(param1.maxParticles);
         this.§=!5§ = Math.max(0.01,this.§!H§(param1.particleLifeSpan));
         this.§!R§ = this.§!H§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§8b§ = this.§!H§(param1.particleInterval);
         }
         else
         {
            this.§8b§ = 0;
         }
         this.§'!"§ = this.§!H§(param1.startParticleSize);
         this.§`!<§ = this.§'!"§ * param2.height / param2.width;
         this.§'m§ = this.§!H§(param1.startParticleSizeVariance);
         this.§@!]§ = this.§'m§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§'!"§ = this.§!H§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§'m§ = this.§!H§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§`!<§ = this.§!H§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§@!]§ = this.§!H§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§"m§ = this.§!H§(param1.finishParticleSize);
            this.§@n§ = this.§"m§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§9c§ = this.§!H§(param1.FinishParticleSizeVariance);
            this.§9§ = this.§9c§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§"m§ = this.§!H§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§9c§ = this.§!H§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§@n§ = this.§!H§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§9§ = this.§!H§(param1.FinishParticleSizeVarianceY);
         }
         this.§"!,§ = deg2rad(this.§!H§(param1.angle));
         this.§2!N§ = deg2rad(this.§!H§(param1.angleVariance));
         this.§1u§ = this.§!H§(param1.speed);
         this.§![§ = this.§!H§(param1.speedVariance);
         this.§@P§ = this.§!H§(param1.radialAcceleration);
         this.§0%§ = this.§!H§(param1.tangentialAcceleration);
         this.§+!A§ = this.§!H§(param1.maxRadius);
         this.§6!K§ = this.§!H§(param1.maxRadiusVariance);
         this.§-!`§ = this.§!H§(param1.minRadius);
         this.§#A§ = deg2rad(this.§!H§(param1.rotatePerSecond));
         this.§ !a§ = deg2rad(this.§!H§(param1.rotatePerSecondVariance));
         this.§5!@§ = this.§,!O§(param1.startColor);
         this.§9S§ = this.§,!O§(param1.startColorVariance);
         this.§1U§ = this.§,!O§(param1.finishColor);
         this.§-!?§ = this.§,!O§(param1.finishColorVariance);
         §&!B§ = this.§,6§(param1.blendFuncSource);
         §0!I§ = this.§,6§(param1.blendFuncDestination);
         §=!F§ = this.§[!D§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §;>§ = this.§!H§(param1.emissionVariance);
         }
      }
      
      protected function §`8§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §!H§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §+i§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §,!O§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §,6§(param1:XMLList) : String
      {
         var _loc2_:int = this.§`8§(param1);
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
      
      protected function §[!D§(param1:XMLList) : String
      {
         var _loc2_:String = this.§+i§(param1);
         if(_loc2_ == §]U§.§ !;§ || _loc2_ == §]U§.§,4§ || _loc2_ == §]U§.NONE)
         {
            return _loc2_;
         }
         return §]U§.§ !;§;
      }
   }
}

import §5j§.§?a§;

class PDParticle extends §?a§
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
