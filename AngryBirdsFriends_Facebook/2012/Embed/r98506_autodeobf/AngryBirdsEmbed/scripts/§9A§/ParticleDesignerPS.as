package §9A§
{
   import §2c§.deg2rad;
   import §5@§.§3w§;
   import §5@§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §1d§
   {
       
      
      private const §8s§:int = 0;
      
      private const §-§:int = 1;
      
      private var §6o§:Number;
      
      private var §-G§:int;
      
      private var §2!E§:Number;
      
      private var §8!C§:Number;
      
      private var §2!2§:int;
      
      private var §0!8§:Number;
      
      private var §7!9§:Number;
      
      private var §,l§:Number;
      
      private var §-b§:Number;
      
      private var §4C§:Number;
      
      private var §&! §:Number;
      
      private var §0Q§:Number;
      
      private var §@0§:Number;
      
      private var §,!?§:Number;
      
      private var §&!!§:Number;
      
      private var §3!I§:Number;
      
      private var §;4§:Number;
      
      private var §4b§:Number;
      
      private var §8w§:Number;
      
      private var §>!'§:Number;
      
      private var §&f§:Number;
      
      private var §;!"§:Number;
      
      private var §]A§:Number;
      
      private var §7m§:Number;
      
      private var §%u§:Number;
      
      private var §3!$§:Number;
      
      private var §0=§:Number;
      
      private var §+6§:Number;
      
      private var §>x§:Number;
      
      private var §+!2§:Number;
      
      private var §1!I§:Number;
      
      private var §#L§:ColorArgb;
      
      private var §3y§:ColorArgb;
      
      private var §3!6§:ColorArgb;
      
      private var §&§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§!'§(param1,param2);
         var _loc3_:Number = this.§2!2§ / (this.§0!8§ + this.§,l§);
         super(param2,_loc3_,this.§2!2§,§0i§,§%L§);
         §&n§ = false;
      }
      
      public function get §&!C§() : int
      {
         return this.§2!2§;
      }
      
      override protected function createParticle() : §5!"§
      {
         return new PDParticle();
      }
      
      private function get §%!8§() : Boolean
      {
         return this.§&!C§ >= 20;
      }
      
      override protected function initParticle(param1:§5!"§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§0!8§ + this.§7!9§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§]!§ = _loc3_;
         _loc2_.x = §?!,§ + this.§2!E§ * (Math.random() * 2 - 1);
         _loc2_.y = §7`§ + this.§8!C§ * (Math.random() * 2 - 1);
         _loc2_.startX = §?!,§;
         _loc2_.startY = §7`§;
         var _loc4_:Number = this.§;4§ + this.§4b§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§8w§ + this.§>!'§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§0=§ + this.§+6§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§0=§ / _loc3_;
         _loc2_.rotation = this.§;4§ + this.§4b§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§+!2§ + this.§1!I§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§]A§;
         _loc2_.tangentialAcceleration = this.§%u§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§-b§ + this.§4C§ * _loc6_;
         if(!isNaN(this.§@0§))
         {
            _loc8_ = this.§@0§;
            if(!isNaN(this.§,!?§))
            {
               _loc8_ += this.§,!?§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§&! § + this.§0Q§ * _loc6_;
         if(!isNaN(this.§&!!§))
         {
            _loc10_ = this.§&!!§;
            if(!isNaN(this.§3!I§))
            {
               _loc10_ += this.§3!I§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§#L§.red;
         _loc11_.green = this.§#L§.green;
         _loc11_.blue = this.§#L§.blue;
         _loc11_.alpha = this.§#L§.alpha;
         if(this.§3y§.red != 0)
         {
            _loc11_.red += this.§3y§.red * (Math.random() * 2 - 1);
         }
         if(this.§3y§.green != 0)
         {
            _loc11_.green += this.§3y§.green * (Math.random() * 2 - 1);
         }
         if(this.§3y§.blue != 0)
         {
            _loc11_.blue += this.§3y§.blue * (Math.random() * 2 - 1);
         }
         if(this.§3y§.alpha != 0)
         {
            _loc11_.alpha += this.§3y§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§3!6§.red;
         var _loc14_:Number = this.§3!6§.green;
         var _loc15_:Number = this.§3!6§.blue;
         var _loc16_:Number = this.§3!6§.alpha;
         if(this.§&§.red != 0)
         {
            _loc13_ += this.§&§.red * (Math.random() * 2 - 1);
         }
         if(this.§&§.green != 0)
         {
            _loc14_ += this.§&§.green * (Math.random() * 2 - 1);
         }
         if(this.§&§.blue != 0)
         {
            _loc15_ += this.§&§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&§.alpha != 0)
         {
            _loc16_ += this.§&§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§5!"§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§]!§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§-G§ == this.§-§)
         {
            if(!_loc3_.skipUpdate || !this.§%!8§)
            {
               if(this.§%!8§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §?!,§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §7`§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§>x§)
               {
                  _loc3_.currentTime = _loc3_.§]!§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§%!8§)
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
               if(this.§%!8§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§&f§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§;!"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&f§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§;!"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§%!8§)
         {
            if(this.§%!8§)
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
      
      private function §!'§(param1:XML, param2:Texture) : void
      {
         this.§2!E§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§8!C§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&f§ = parseFloat(param1.gravity.attribute("x"));
         this.§;!"§ = parseFloat(param1.gravity.attribute("y"));
         this.§-G§ = this.§6!B§(param1.emitterType);
         this.§2!2§ = this.§6!B§(param1.maxParticles);
         this.§0!8§ = Math.max(0.01,this.§34§(param1.particleLifeSpan));
         this.§7!9§ = this.§34§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§,l§ = this.§34§(param1.particleInterval);
         }
         else
         {
            this.§,l§ = 0;
         }
         this.§-b§ = this.§34§(param1.startParticleSize);
         this.§&! § = this.§-b§ * param2.height / param2.width;
         this.§4C§ = this.§34§(param1.startParticleSizeVariance);
         this.§0Q§ = this.§4C§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§-b§ = this.§34§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§4C§ = this.§34§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§&! § = this.§34§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§0Q§ = this.§34§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§@0§ = this.§34§(param1.finishParticleSize);
            this.§&!!§ = this.§@0§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§,!?§ = this.§34§(param1.FinishParticleSizeVariance);
            this.§3!I§ = this.§,!?§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§@0§ = this.§34§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§,!?§ = this.§34§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§&!!§ = this.§34§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§3!I§ = this.§34§(param1.FinishParticleSizeVarianceY);
         }
         this.§;4§ = deg2rad(this.§34§(param1.angle));
         this.§4b§ = deg2rad(this.§34§(param1.angleVariance));
         this.§8w§ = this.§34§(param1.speed);
         this.§>!'§ = this.§34§(param1.speedVariance);
         this.§]A§ = this.§34§(param1.radialAcceleration);
         this.§%u§ = this.§34§(param1.tangentialAcceleration);
         this.§0=§ = this.§34§(param1.maxRadius);
         this.§+6§ = this.§34§(param1.maxRadiusVariance);
         this.§>x§ = this.§34§(param1.minRadius);
         this.§+!2§ = deg2rad(this.§34§(param1.rotatePerSecond));
         this.§1!I§ = deg2rad(this.§34§(param1.rotatePerSecondVariance));
         this.§#L§ = this.§^B§(param1.startColor);
         this.§3y§ = this.§^B§(param1.startColorVariance);
         this.§3!6§ = this.§^B§(param1.finishColor);
         this.§&§ = this.§^B§(param1.finishColorVariance);
         §0i§ = this.§&!'§(param1.blendFuncSource);
         §%L§ = this.§&!'§(param1.blendFuncDestination);
         §8h§ = this.§@j§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §&!B§ = this.§34§(param1.emissionVariance);
         }
      }
      
      protected function §6!B§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §34§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §[^§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §^B§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §&!'§(param1:XMLList) : String
      {
         var _loc2_:int = this.§6!B§(param1);
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
      
      protected function §@j§(param1:XMLList) : String
      {
         var _loc2_:String = this.§[^§(param1);
         if(_loc2_ == §3w§.§-!,§ || _loc2_ == §3w§.§0!,§ || _loc2_ == §3w§.NONE)
         {
            return _loc2_;
         }
         return §3w§.§-!,§;
      }
   }
}

import §9A§.§5!"§;

class PDParticle extends §5!"§
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
