package §+"B§
{
   import §<L§.§=v§;
   import §<L§.Texture;
   import §>!+§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §]$§
   {
       
      
      private const §[">§:int = 0;
      
      private const §1"8§:int = 1;
      
      private var §9!"§:Number;
      
      private var §'K§:int;
      
      private var §?!_§:Number;
      
      private var §1!j§:Number;
      
      private var §-!A§:int;
      
      private var §^!F§:Number;
      
      private var §<!`§:Number;
      
      private var §6",§:Number;
      
      private var §^J§:Number;
      
      private var §3!P§:Number;
      
      private var §]"@§:Number;
      
      private var §>!L§:Number;
      
      private var §<!M§:Number;
      
      private var §]8§:Number;
      
      private var §6!2§:Number;
      
      private var §[!U§:Number;
      
      private var §;%§:Number;
      
      private var § X§:Number;
      
      private var §0!A§:Number;
      
      private var §-!o§:Number;
      
      private var § '§:Number;
      
      private var §%"A§:Number;
      
      private var §#!`§:Number;
      
      private var §@!o§:Number;
      
      private var §,!+§:Number;
      
      private var §;?§:Number;
      
      private var §0!>§:Number;
      
      private var §8!U§:Number;
      
      private var §4!h§:Number;
      
      private var §=!j§:Number;
      
      private var §4U§:Number;
      
      private var §#d§:ColorArgb;
      
      private var §9!9§:ColorArgb;
      
      private var §0"B§:ColorArgb;
      
      private var §1!H§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§&s§(param1,param2);
         var _loc3_:Number = this.§-!A§ / (this.§^!F§ + this.§6",§);
         super(param2,_loc3_,this.§-!A§,§ 4§,§&"+§);
         §-!8§ = false;
      }
      
      public function get §?`§() : int
      {
         return this.§-!A§;
      }
      
      override protected function createParticle() : §=;§
      {
         return new PDParticle();
      }
      
      private function get § !S§() : Boolean
      {
         return this.§?`§ >= 20;
      }
      
      override protected function initParticle(param1:§=;§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§^!F§ + this.§<!`§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§>"6§ = 0;
         _loc2_.§,[§ = _loc3_;
         _loc2_.x = §3<§ + this.§?!_§ * (Math.random() * 2 - 1);
         _loc2_.y = §5!D§ + this.§1!j§ * (Math.random() * 2 - 1);
         _loc2_.startX = §3<§;
         _loc2_.startY = §5!D§;
         var _loc4_:Number = this.§;%§ + this.§ X§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§0!A§ + this.§-!o§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§0!>§ + this.§8!U§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§0!>§ / _loc3_;
         _loc2_.rotation = this.§;%§ + this.§ X§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§=!j§ + this.§4U§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§#!`§;
         _loc2_.tangentialAcceleration = this.§,!+§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§^J§ + this.§3!P§ * _loc6_;
         if(!isNaN(this.§<!M§))
         {
            _loc8_ = this.§<!M§;
            if(!isNaN(this.§]8§))
            {
               _loc8_ += this.§]8§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§]"@§ + this.§>!L§ * _loc6_;
         if(!isNaN(this.§6!2§))
         {
            _loc10_ = this.§6!2§;
            if(!isNaN(this.§[!U§))
            {
               _loc10_ += this.§[!U§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§#d§.red;
         _loc11_.green = this.§#d§.green;
         _loc11_.blue = this.§#d§.blue;
         _loc11_.alpha = this.§#d§.alpha;
         if(this.§9!9§.red != 0)
         {
            _loc11_.red += this.§9!9§.red * (Math.random() * 2 - 1);
         }
         if(this.§9!9§.green != 0)
         {
            _loc11_.green += this.§9!9§.green * (Math.random() * 2 - 1);
         }
         if(this.§9!9§.blue != 0)
         {
            _loc11_.blue += this.§9!9§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9!9§.alpha != 0)
         {
            _loc11_.alpha += this.§9!9§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§0"B§.red;
         var _loc14_:Number = this.§0"B§.green;
         var _loc15_:Number = this.§0"B§.blue;
         var _loc16_:Number = this.§0"B§.alpha;
         if(this.§1!H§.red != 0)
         {
            _loc13_ += this.§1!H§.red * (Math.random() * 2 - 1);
         }
         if(this.§1!H§.green != 0)
         {
            _loc14_ += this.§1!H§.green * (Math.random() * 2 - 1);
         }
         if(this.§1!H§.blue != 0)
         {
            _loc15_ += this.§1!H§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1!H§.alpha != 0)
         {
            _loc16_ += this.§1!H§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§=;§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,[§ - _loc3_.§>"6§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§>"6§ += param2;
         if(this.§'K§ == this.§1"8§)
         {
            if(!_loc3_.skipUpdate || !this.§ !S§)
            {
               if(this.§ !S§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §3<§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §5!D§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§4!h§)
               {
                  _loc3_.§>"6§ = _loc3_.§,[§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§ !S§)
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
               if(this.§ !S§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§ '§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§%"A§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§ '§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§%"A§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§ !S§)
         {
            if(this.§ !S§)
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
      
      private function §&s§(param1:XML, param2:Texture) : void
      {
         this.§?!_§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§1!j§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§ '§ = parseFloat(param1.gravity.attribute("x"));
         this.§%"A§ = parseFloat(param1.gravity.attribute("y"));
         this.§'K§ = this.§8!$§(param1.emitterType);
         this.§-!A§ = this.§8!$§(param1.maxParticles);
         this.§^!F§ = Math.max(0.01,this.§5Z§(param1.particleLifeSpan));
         this.§<!`§ = this.§5Z§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§6",§ = this.§5Z§(param1.particleInterval);
         }
         else
         {
            this.§6",§ = 0;
         }
         this.§^J§ = this.§5Z§(param1.startParticleSize);
         this.§]"@§ = this.§^J§ * param2.height / param2.width;
         this.§3!P§ = this.§5Z§(param1.startParticleSizeVariance);
         this.§>!L§ = this.§3!P§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§^J§ = this.§5Z§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§3!P§ = this.§5Z§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§]"@§ = this.§5Z§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§>!L§ = this.§5Z§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§<!M§ = this.§5Z§(param1.finishParticleSize);
            this.§6!2§ = this.§<!M§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§]8§ = this.§5Z§(param1.FinishParticleSizeVariance);
            this.§[!U§ = this.§]8§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§<!M§ = this.§5Z§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§]8§ = this.§5Z§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§6!2§ = this.§5Z§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§[!U§ = this.§5Z§(param1.FinishParticleSizeVarianceY);
         }
         this.§;%§ = deg2rad(this.§5Z§(param1.angle));
         this.§ X§ = deg2rad(this.§5Z§(param1.angleVariance));
         this.§0!A§ = this.§5Z§(param1.speed);
         this.§-!o§ = this.§5Z§(param1.speedVariance);
         this.§#!`§ = this.§5Z§(param1.radialAcceleration);
         this.§,!+§ = this.§5Z§(param1.tangentialAcceleration);
         this.§0!>§ = this.§5Z§(param1.maxRadius);
         this.§8!U§ = this.§5Z§(param1.maxRadiusVariance);
         this.§4!h§ = this.§5Z§(param1.minRadius);
         this.§=!j§ = deg2rad(this.§5Z§(param1.rotatePerSecond));
         this.§4U§ = deg2rad(this.§5Z§(param1.rotatePerSecondVariance));
         this.§#d§ = this.§9! §(param1.startColor);
         this.§9!9§ = this.§9! §(param1.startColorVariance);
         this.§0"B§ = this.§9! §(param1.finishColor);
         this.§1!H§ = this.§9! §(param1.finishColorVariance);
         § 4§ = this.§`!^§(param1.blendFuncSource);
         §&"+§ = this.§`!^§(param1.blendFuncDestination);
         §&"5§ = this.§,u§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §-",§ = this.§5Z§(param1.emissionVariance);
         }
      }
      
      protected function §8!$§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §5Z§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §9" §(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9! §(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §`!^§(param1:XMLList) : String
      {
         var _loc2_:int = this.§8!$§(param1);
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
      
      protected function §,u§(param1:XMLList) : String
      {
         var _loc2_:String = this.§9" §(param1);
         if(_loc2_ == §=v§.§0!R§ || _loc2_ == §=v§.§+$§ || _loc2_ == §=v§.NONE)
         {
            return _loc2_;
         }
         return §=v§.§0!R§;
      }
   }
}

import §+"B§.§=;§;

class PDParticle extends §=;§
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
