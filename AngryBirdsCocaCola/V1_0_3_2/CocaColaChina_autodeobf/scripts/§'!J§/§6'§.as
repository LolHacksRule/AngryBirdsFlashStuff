package §'!J§
{
   import §#!a§.§&S§;
   import §#!a§.Texture;
   import §^!L§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §6'§ extends §#5§
   {
       
      
      private const §1!+§:int = 0;
      
      private const §'U§:int = 1;
      
      private var §+!'§:Number;
      
      private var §^q§:int;
      
      private var §#!Q§:Number;
      
      private var §^E§:Number;
      
      private var §3! §:int;
      
      private var §-!^§:Number;
      
      private var §!P§:Number;
      
      private var §?`§:Number;
      
      private var §>![§:Number;
      
      private var §"g§:Number;
      
      private var §54§:Number;
      
      private var §'!`§:Number;
      
      private var §=d§:Number;
      
      private var §?,§:Number;
      
      private var §,0§:Number;
      
      private var §]o§:Number;
      
      private var §6!;§:Number;
      
      private var §@"§:Number;
      
      private var §8j§:Number;
      
      private var §<&§:Number;
      
      private var §7c§:Number;
      
      private var §"H§:Number;
      
      private var §-g§:Number;
      
      private var §;l§:Number;
      
      private var §=!>§:Number;
      
      private var §]!Z§:Number;
      
      private var §,&§:Number;
      
      private var §^§:Number;
      
      private var §4u§:Number;
      
      private var §true§:Number;
      
      private var §<w§:Number;
      
      private var §&_§:ColorArgb;
      
      private var §<!4§:ColorArgb;
      
      private var §@!B§:ColorArgb;
      
      private var §;!U§:ColorArgb;
      
      public function §6'§(param1:XML, param2:Texture)
      {
         this.§2J§(param1,param2);
         var _loc3_:Number = this.§3! § / (this.§-!^§ + this.§?`§);
         super(param2,_loc3_,this.§3! §,§5m§,§6!a§);
         §5!W§ = false;
      }
      
      public function get §7+§() : int
      {
         return this.§3! §;
      }
      
      override protected function createParticle() : §8m§
      {
         return new PDParticle();
      }
      
      private function get §!N§() : Boolean
      {
         return this.§7+§ >= 20;
      }
      
      override protected function initParticle(param1:§8m§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§-!^§ + this.§!P§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§3!#§ = 0;
         _loc2_.§^!+§ = _loc3_;
         _loc2_.x = §2!C§ + this.§#!Q§ * (Math.random() * 2 - 1);
         _loc2_.y = §5G§ + this.§^E§ * (Math.random() * 2 - 1);
         _loc2_.startX = §2!C§;
         _loc2_.startY = §5G§;
         var _loc4_:Number = this.§6!;§ + this.§@"§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§8j§ + this.§<&§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§,&§ + this.§^§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§,&§ / _loc3_;
         _loc2_.rotation = this.§6!;§ + this.§@"§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§true§ + this.§<w§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§-g§;
         _loc2_.tangentialAcceleration = this.§=!>§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§>![§ + this.§"g§ * _loc6_;
         if(!isNaN(this.§=d§))
         {
            _loc8_ = this.§=d§;
            if(!isNaN(this.§?,§))
            {
               _loc8_ += this.§?,§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§54§ + this.§'!`§ * _loc6_;
         if(!isNaN(this.§,0§))
         {
            _loc10_ = this.§,0§;
            if(!isNaN(this.§]o§))
            {
               _loc10_ += this.§]o§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§&_§.red;
         _loc11_.green = this.§&_§.green;
         _loc11_.blue = this.§&_§.blue;
         _loc11_.alpha = this.§&_§.alpha;
         if(this.§<!4§.red != 0)
         {
            _loc11_.red += this.§<!4§.red * (Math.random() * 2 - 1);
         }
         if(this.§<!4§.green != 0)
         {
            _loc11_.green += this.§<!4§.green * (Math.random() * 2 - 1);
         }
         if(this.§<!4§.blue != 0)
         {
            _loc11_.blue += this.§<!4§.blue * (Math.random() * 2 - 1);
         }
         if(this.§<!4§.alpha != 0)
         {
            _loc11_.alpha += this.§<!4§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§@!B§.red;
         var _loc14_:Number = this.§@!B§.green;
         var _loc15_:Number = this.§@!B§.blue;
         var _loc16_:Number = this.§@!B§.alpha;
         if(this.§;!U§.red != 0)
         {
            _loc13_ += this.§;!U§.red * (Math.random() * 2 - 1);
         }
         if(this.§;!U§.green != 0)
         {
            _loc14_ += this.§;!U§.green * (Math.random() * 2 - 1);
         }
         if(this.§;!U§.blue != 0)
         {
            _loc15_ += this.§;!U§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;!U§.alpha != 0)
         {
            _loc16_ += this.§;!U§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§8m§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§^!+§ - _loc3_.§3!#§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§3!#§ += param2;
         if(this.§^q§ == this.§'U§)
         {
            if(!_loc3_.skipUpdate || !this.§!N§)
            {
               if(this.§!N§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §2!C§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §5G§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§4u§)
               {
                  _loc3_.§3!#§ = _loc3_.§^!+§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§!N§)
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
               if(this.§!N§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§7c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§"H§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§7c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§"H§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§!N§)
         {
            if(this.§!N§)
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
      
      private function §2J§(param1:XML, param2:Texture) : void
      {
         this.§#!Q§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^E§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§7c§ = parseFloat(param1.gravity.attribute("x"));
         this.§"H§ = parseFloat(param1.gravity.attribute("y"));
         this.§^q§ = this.§`f§(param1.emitterType);
         this.§3! § = this.§`f§(param1.maxParticles);
         this.§-!^§ = Math.max(0.01,this.§8!7§(param1.particleLifeSpan));
         this.§!P§ = this.§8!7§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§?`§ = this.§8!7§(param1.particleInterval);
         }
         else
         {
            this.§?`§ = 0;
         }
         this.§>![§ = this.§8!7§(param1.startParticleSize);
         this.§54§ = this.§>![§ * param2.height / param2.width;
         this.§"g§ = this.§8!7§(param1.startParticleSizeVariance);
         this.§'!`§ = this.§"g§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§>![§ = this.§8!7§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§"g§ = this.§8!7§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§54§ = this.§8!7§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§'!`§ = this.§8!7§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§=d§ = this.§8!7§(param1.finishParticleSize);
            this.§,0§ = this.§=d§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§?,§ = this.§8!7§(param1.FinishParticleSizeVariance);
            this.§]o§ = this.§?,§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§=d§ = this.§8!7§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§?,§ = this.§8!7§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§,0§ = this.§8!7§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§]o§ = this.§8!7§(param1.FinishParticleSizeVarianceY);
         }
         this.§6!;§ = deg2rad(this.§8!7§(param1.angle));
         this.§@"§ = deg2rad(this.§8!7§(param1.angleVariance));
         this.§8j§ = this.§8!7§(param1.speed);
         this.§<&§ = this.§8!7§(param1.speedVariance);
         this.§-g§ = this.§8!7§(param1.radialAcceleration);
         this.§=!>§ = this.§8!7§(param1.tangentialAcceleration);
         this.§,&§ = this.§8!7§(param1.maxRadius);
         this.§^§ = this.§8!7§(param1.maxRadiusVariance);
         this.§4u§ = this.§8!7§(param1.minRadius);
         this.§true§ = deg2rad(this.§8!7§(param1.rotatePerSecond));
         this.§<w§ = deg2rad(this.§8!7§(param1.rotatePerSecondVariance));
         this.§&_§ = this.§9l§(param1.startColor);
         this.§<!4§ = this.§9l§(param1.startColorVariance);
         this.§@!B§ = this.§9l§(param1.finishColor);
         this.§;!U§ = this.§9l§(param1.finishColorVariance);
         §5m§ = this.§9!A§(param1.blendFuncSource);
         §6!a§ = this.§9!A§(param1.blendFuncDestination);
         §%!7§ = this.§]'§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §?!3§ = this.§8!7§(param1.emissionVariance);
         }
      }
      
      protected function §`f§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §8!7§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §@w§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9l§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §9!A§(param1:XMLList) : String
      {
         var _loc2_:int = this.§`f§(param1);
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
      
      protected function §]'§(param1:XMLList) : String
      {
         var _loc2_:String = this.§@w§(param1);
         if(_loc2_ == §&S§.§+!$§ || _loc2_ == §&S§.§#`§ || _loc2_ == §&S§.NONE)
         {
            return _loc2_;
         }
         return §&S§.§+!$§;
      }
   }
}

import §'!J§.§8m§;

class PDParticle extends §8m§
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
