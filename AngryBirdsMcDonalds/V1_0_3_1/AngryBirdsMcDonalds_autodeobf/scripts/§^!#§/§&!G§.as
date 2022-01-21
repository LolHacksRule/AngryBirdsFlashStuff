package §^!#§
{
   import §&Y§.§-!G§;
   import §&Y§.Texture;
   import §=G§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §&!G§ extends §-!p§
   {
       
      
      private const §]!W§:int = 0;
      
      private const §"!j§:int = 1;
      
      private var §9!M§:Number;
      
      private var §"!Z§:int;
      
      private var §-!j§:Number;
      
      private var §^!I§:Number;
      
      private var §<!a§:int;
      
      private var §+!p§:Number;
      
      private var §#B§:Number;
      
      private var §'!<§:Number;
      
      private var §&!A§:Number;
      
      private var §`!S§:Number;
      
      private var §[!?§:Number;
      
      private var §=!^§:Number;
      
      private var §6=§:Number;
      
      private var §1!V§:Number;
      
      private var §3q§:Number;
      
      private var §4!b§:Number;
      
      private var §!+§:Number;
      
      private var §1!"§:Number;
      
      private var §[A§:Number;
      
      private var §,!C§:Number;
      
      private var §2!%§:Number;
      
      private var §<!m§:Number;
      
      private var §=Z§:Number;
      
      private var §<!J§:Number;
      
      private var §8v§:Number;
      
      private var §]F§:Number;
      
      private var §2!2§:Number;
      
      private var §=`§:Number;
      
      private var §[!4§:Number;
      
      private var §'-§:Number;
      
      private var §#!f§:Number;
      
      private var §]b§:ColorArgb;
      
      private var §<!E§:ColorArgb;
      
      private var §7^§:ColorArgb;
      
      private var §84§:ColorArgb;
      
      public function §&!G§(param1:XML, param2:Texture)
      {
         this.§!v§(param1,param2);
         var _loc3_:Number = this.§<!a§ / (this.§+!p§ + this.§'!<§);
         super(param2,_loc3_,this.§<!a§,§'!d§,§9!F§);
         §6H§ = false;
      }
      
      public function get §5!"§() : int
      {
         return this.§<!a§;
      }
      
      override protected function createParticle() : §0! §
      {
         return new PDParticle();
      }
      
      private function get §-!3§() : Boolean
      {
         return this.§5!"§ >= 20;
      }
      
      override protected function initParticle(param1:§0! §) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§+!p§ + this.§#B§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§;]§ = 0;
         _loc2_.§&a§ = _loc3_;
         _loc2_.x = §0!1§ + this.§-!j§ * (Math.random() * 2 - 1);
         _loc2_.y = §#a§ + this.§^!I§ * (Math.random() * 2 - 1);
         _loc2_.startX = §0!1§;
         _loc2_.startY = §#a§;
         var _loc4_:Number = this.§!+§ + this.§1!"§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§[A§ + this.§,!C§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§2!2§ + this.§=`§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§2!2§ / _loc3_;
         _loc2_.rotation = this.§!+§ + this.§1!"§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§'-§ + this.§#!f§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§=Z§;
         _loc2_.tangentialAcceleration = this.§8v§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§&!A§ + this.§`!S§ * _loc6_;
         if(!isNaN(this.§6=§))
         {
            _loc8_ = this.§6=§;
            if(!isNaN(this.§1!V§))
            {
               _loc8_ += this.§1!V§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§[!?§ + this.§=!^§ * _loc6_;
         if(!isNaN(this.§3q§))
         {
            _loc10_ = this.§3q§;
            if(!isNaN(this.§4!b§))
            {
               _loc10_ += this.§4!b§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]b§.red;
         _loc11_.green = this.§]b§.green;
         _loc11_.blue = this.§]b§.blue;
         _loc11_.alpha = this.§]b§.alpha;
         if(this.§<!E§.red != 0)
         {
            _loc11_.red += this.§<!E§.red * (Math.random() * 2 - 1);
         }
         if(this.§<!E§.green != 0)
         {
            _loc11_.green += this.§<!E§.green * (Math.random() * 2 - 1);
         }
         if(this.§<!E§.blue != 0)
         {
            _loc11_.blue += this.§<!E§.blue * (Math.random() * 2 - 1);
         }
         if(this.§<!E§.alpha != 0)
         {
            _loc11_.alpha += this.§<!E§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§7^§.red;
         var _loc14_:Number = this.§7^§.green;
         var _loc15_:Number = this.§7^§.blue;
         var _loc16_:Number = this.§7^§.alpha;
         if(this.§84§.red != 0)
         {
            _loc13_ += this.§84§.red * (Math.random() * 2 - 1);
         }
         if(this.§84§.green != 0)
         {
            _loc14_ += this.§84§.green * (Math.random() * 2 - 1);
         }
         if(this.§84§.blue != 0)
         {
            _loc15_ += this.§84§.blue * (Math.random() * 2 - 1);
         }
         if(this.§84§.alpha != 0)
         {
            _loc16_ += this.§84§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§0! §, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§&a§ - _loc3_.§;]§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§;]§ += param2;
         if(this.§"!Z§ == this.§"!j§)
         {
            if(!_loc3_.skipUpdate || !this.§-!3§)
            {
               if(this.§-!3§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §0!1§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §#a§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§[!4§)
               {
                  _loc3_.§;]§ = _loc3_.§&a§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-!3§)
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
               if(this.§-!3§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§2!%§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§<!m§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§2!%§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§<!m§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-!3§)
         {
            if(this.§-!3§)
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
      
      private function §!v§(param1:XML, param2:Texture) : void
      {
         this.§-!j§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^!I§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§2!%§ = parseFloat(param1.gravity.attribute("x"));
         this.§<!m§ = parseFloat(param1.gravity.attribute("y"));
         this.§"!Z§ = this.§6!Y§(param1.emitterType);
         this.§<!a§ = this.§6!Y§(param1.maxParticles);
         this.§+!p§ = Math.max(0.01,this.§^g§(param1.particleLifeSpan));
         this.§#B§ = this.§^g§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§'!<§ = this.§^g§(param1.particleInterval);
         }
         else
         {
            this.§'!<§ = 0;
         }
         this.§&!A§ = this.§^g§(param1.startParticleSize);
         this.§[!?§ = this.§&!A§ * param2.height / param2.width;
         this.§`!S§ = this.§^g§(param1.startParticleSizeVariance);
         this.§=!^§ = this.§`!S§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§&!A§ = this.§^g§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`!S§ = this.§^g§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§[!?§ = this.§^g§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§=!^§ = this.§^g§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§6=§ = this.§^g§(param1.finishParticleSize);
            this.§3q§ = this.§6=§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§1!V§ = this.§^g§(param1.FinishParticleSizeVariance);
            this.§4!b§ = this.§1!V§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§6=§ = this.§^g§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§1!V§ = this.§^g§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§3q§ = this.§^g§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§4!b§ = this.§^g§(param1.FinishParticleSizeVarianceY);
         }
         this.§!+§ = deg2rad(this.§^g§(param1.angle));
         this.§1!"§ = deg2rad(this.§^g§(param1.angleVariance));
         this.§[A§ = this.§^g§(param1.speed);
         this.§,!C§ = this.§^g§(param1.speedVariance);
         this.§=Z§ = this.§^g§(param1.radialAcceleration);
         this.§8v§ = this.§^g§(param1.tangentialAcceleration);
         this.§2!2§ = this.§^g§(param1.maxRadius);
         this.§=`§ = this.§^g§(param1.maxRadiusVariance);
         this.§[!4§ = this.§^g§(param1.minRadius);
         this.§'-§ = deg2rad(this.§^g§(param1.rotatePerSecond));
         this.§#!f§ = deg2rad(this.§^g§(param1.rotatePerSecondVariance));
         this.§]b§ = this.§-!]§(param1.startColor);
         this.§<!E§ = this.§-!]§(param1.startColorVariance);
         this.§7^§ = this.§-!]§(param1.finishColor);
         this.§84§ = this.§-!]§(param1.finishColorVariance);
         §'!d§ = this.§4p§(param1.blendFuncSource);
         §9!F§ = this.§4p§(param1.blendFuncDestination);
         §[F§ = this.§"U§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §1i§ = this.§^g§(param1.emissionVariance);
         }
      }
      
      protected function §6!Y§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §^g§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §>0§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §-!]§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §4p§(param1:XMLList) : String
      {
         var _loc2_:int = this.§6!Y§(param1);
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
      
      protected function §"U§(param1:XMLList) : String
      {
         var _loc2_:String = this.§>0§(param1);
         if(_loc2_ == §-!G§.§9A§ || _loc2_ == §-!G§.§+^§ || _loc2_ == §-!G§.NONE)
         {
            return _loc2_;
         }
         return §-!G§.§9A§;
      }
   }
}

import §^!#§.§0! §;

class PDParticle extends §0! §
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
