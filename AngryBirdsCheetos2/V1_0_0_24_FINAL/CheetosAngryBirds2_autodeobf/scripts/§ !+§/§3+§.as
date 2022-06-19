package § !+§
{
   import §4v§.deg2rad;
   import §]!a§.§ !g§;
   import §]!a§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §3+§ extends §1!&§
   {
       
      
      private const §'p§:int = 0;
      
      private const §#! §:int = 1;
      
      private var §65§:Number;
      
      private var §33§:int;
      
      private var §=!Y§:Number;
      
      private var §4g§:Number;
      
      private var §5!3§:int;
      
      private var §-!W§:Number;
      
      private var §,b§:Number;
      
      private var §9!>§:Number;
      
      private var § !%§:Number;
      
      private var §!!1§:Number;
      
      private var §+^§:Number;
      
      private var §0!^§:Number;
      
      private var §8O§:Number;
      
      private var §2O§:Number;
      
      private var §get §:Number;
      
      private var §&!$§:Number;
      
      private var §]C§:Number;
      
      private var §&8§:Number;
      
      private var §@c§:Number;
      
      private var §3o§:Number;
      
      private var §3!5§:Number;
      
      private var §!T§:Number;
      
      private var §"!0§:Number;
      
      private var §&!L§:Number;
      
      private var §`Y§:Number;
      
      private var §-E§:Number;
      
      private var §set §:Number;
      
      private var §6-§:Number;
      
      private var §[&§:Number;
      
      private var §`!B§:Number;
      
      private var §<E§:Number;
      
      private var §6!6§:ColorArgb;
      
      private var § !-§:ColorArgb;
      
      private var §4^§:ColorArgb;
      
      private var §8!X§:ColorArgb;
      
      public function §3+§(param1:XML, param2:Texture)
      {
         this.§8!E§(param1,param2);
         var _loc3_:Number = this.§5!3§ / (this.§-!W§ + this.§9!>§);
         super(param2,_loc3_,this.§5!3§,§6W§,§,!i§);
         §@!,§ = false;
      }
      
      public function get § =§() : int
      {
         return this.§5!3§;
      }
      
      override protected function createParticle() : §]!N§
      {
         return new PDParticle();
      }
      
      private function get §`!F§() : Boolean
      {
         return this.§ =§ >= 20;
      }
      
      override protected function initParticle(param1:§]!N§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§-!W§ + this.§,b§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§]!h§ = 0;
         _loc2_.§4A§ = _loc3_;
         _loc2_.x = §5v§ + this.§=!Y§ * (Math.random() * 2 - 1);
         _loc2_.y = §9!I§ + this.§4g§ * (Math.random() * 2 - 1);
         _loc2_.startX = §5v§;
         _loc2_.startY = §9!I§;
         var _loc4_:Number = this.§]C§ + this.§&8§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§@c§ + this.§3o§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§set § + this.§6-§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§set § / _loc3_;
         _loc2_.rotation = this.§]C§ + this.§&8§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§`!B§ + this.§<E§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§"!0§;
         _loc2_.tangentialAcceleration = this.§`Y§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§ !%§ + this.§!!1§ * _loc6_;
         if(!isNaN(this.§8O§))
         {
            _loc8_ = this.§8O§;
            if(!isNaN(this.§2O§))
            {
               _loc8_ += this.§2O§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§+^§ + this.§0!^§ * _loc6_;
         if(!isNaN(this.§get §))
         {
            _loc10_ = this.§get §;
            if(!isNaN(this.§&!$§))
            {
               _loc10_ += this.§&!$§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§6!6§.red;
         _loc11_.green = this.§6!6§.green;
         _loc11_.blue = this.§6!6§.blue;
         _loc11_.alpha = this.§6!6§.alpha;
         if(this.§ !-§.red != 0)
         {
            _loc11_.red += this.§ !-§.red * (Math.random() * 2 - 1);
         }
         if(this.§ !-§.green != 0)
         {
            _loc11_.green += this.§ !-§.green * (Math.random() * 2 - 1);
         }
         if(this.§ !-§.blue != 0)
         {
            _loc11_.blue += this.§ !-§.blue * (Math.random() * 2 - 1);
         }
         if(this.§ !-§.alpha != 0)
         {
            _loc11_.alpha += this.§ !-§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§4^§.red;
         var _loc14_:Number = this.§4^§.green;
         var _loc15_:Number = this.§4^§.blue;
         var _loc16_:Number = this.§4^§.alpha;
         if(this.§8!X§.red != 0)
         {
            _loc13_ += this.§8!X§.red * (Math.random() * 2 - 1);
         }
         if(this.§8!X§.green != 0)
         {
            _loc14_ += this.§8!X§.green * (Math.random() * 2 - 1);
         }
         if(this.§8!X§.blue != 0)
         {
            _loc15_ += this.§8!X§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8!X§.alpha != 0)
         {
            _loc16_ += this.§8!X§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§]!N§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§4A§ - _loc3_.§]!h§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§]!h§ += param2;
         if(this.§33§ == this.§#! §)
         {
            if(!_loc3_.skipUpdate || !this.§`!F§)
            {
               if(this.§`!F§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §5v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §9!I§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§[&§)
               {
                  _loc3_.§]!h§ = _loc3_.§4A§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§`!F§)
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
               if(this.§`!F§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§3!5§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§!T§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§3!5§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§!T§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§`!F§)
         {
            if(this.§`!F§)
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
      
      private function §8!E§(param1:XML, param2:Texture) : void
      {
         this.§=!Y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§4g§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§3!5§ = parseFloat(param1.gravity.attribute("x"));
         this.§!T§ = parseFloat(param1.gravity.attribute("y"));
         this.§33§ = this.§6V§(param1.emitterType);
         this.§5!3§ = this.§6V§(param1.maxParticles);
         this.§-!W§ = Math.max(0.01,this.§catch§(param1.particleLifeSpan));
         this.§,b§ = this.§catch§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§9!>§ = this.§catch§(param1.particleInterval);
         }
         else
         {
            this.§9!>§ = 0;
         }
         this.§ !%§ = this.§catch§(param1.startParticleSize);
         this.§+^§ = this.§ !%§ * param2.height / param2.width;
         this.§!!1§ = this.§catch§(param1.startParticleSizeVariance);
         this.§0!^§ = this.§!!1§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§ !%§ = this.§catch§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§!!1§ = this.§catch§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§+^§ = this.§catch§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§0!^§ = this.§catch§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§8O§ = this.§catch§(param1.finishParticleSize);
            this.§get § = this.§8O§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§2O§ = this.§catch§(param1.FinishParticleSizeVariance);
            this.§&!$§ = this.§2O§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§8O§ = this.§catch§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§2O§ = this.§catch§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§get § = this.§catch§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§&!$§ = this.§catch§(param1.FinishParticleSizeVarianceY);
         }
         this.§]C§ = deg2rad(this.§catch§(param1.angle));
         this.§&8§ = deg2rad(this.§catch§(param1.angleVariance));
         this.§@c§ = this.§catch§(param1.speed);
         this.§3o§ = this.§catch§(param1.speedVariance);
         this.§"!0§ = this.§catch§(param1.radialAcceleration);
         this.§`Y§ = this.§catch§(param1.tangentialAcceleration);
         this.§set § = this.§catch§(param1.maxRadius);
         this.§6-§ = this.§catch§(param1.maxRadiusVariance);
         this.§[&§ = this.§catch§(param1.minRadius);
         this.§`!B§ = deg2rad(this.§catch§(param1.rotatePerSecond));
         this.§<E§ = deg2rad(this.§catch§(param1.rotatePerSecondVariance));
         this.§6!6§ = this.§'x§(param1.startColor);
         this.§ !-§ = this.§'x§(param1.startColorVariance);
         this.§4^§ = this.§'x§(param1.finishColor);
         this.§8!X§ = this.§'x§(param1.finishColorVariance);
         §6W§ = this.§8x§(param1.blendFuncSource);
         §,!i§ = this.§8x§(param1.blendFuncDestination);
         §#H§ = this.§8!f§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §;!E§ = this.§catch§(param1.emissionVariance);
         }
      }
      
      protected function §6V§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §catch§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §;!@§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §'x§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §8x§(param1:XMLList) : String
      {
         var _loc2_:int = this.§6V§(param1);
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
      
      protected function §8!f§(param1:XMLList) : String
      {
         var _loc2_:String = this.§;!@§(param1);
         if(_loc2_ == § !g§.§5!8§ || _loc2_ == § !g§.§62§ || _loc2_ == § !g§.NONE)
         {
            return _loc2_;
         }
         return § !g§.§5!8§;
      }
   }
}

import § !+§.§]!N§;

class PDParticle extends §]!N§
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
