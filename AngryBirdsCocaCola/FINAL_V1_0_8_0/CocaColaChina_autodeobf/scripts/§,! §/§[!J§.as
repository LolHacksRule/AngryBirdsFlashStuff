package §,! §
{
   import §6!4§.§<7§;
   import §6!4§.Texture;
   import §@!a§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §[!J§ extends §>!3§
   {
       
      
      private const §>J§:int = 0;
      
      private const §3!J§:int = 1;
      
      private var §+D§:Number;
      
      private var §7k§:int;
      
      private var §,b§:Number;
      
      private var §^C§:Number;
      
      private var §=!U§:int;
      
      private var §#j§:Number;
      
      private var §1_§:Number;
      
      private var §[! §:Number;
      
      private var §%!U§:Number;
      
      private var §1!=§:Number;
      
      private var §;!]§:Number;
      
      private var §6!b§:Number;
      
      private var §,!B§:Number;
      
      private var §-!W§:Number;
      
      private var §@i§:Number;
      
      private var §[!3§:Number;
      
      private var §5_§:Number;
      
      private var §1r§:Number;
      
      private var §#n§:Number;
      
      private var §#!L§:Number;
      
      private var §false§:Number;
      
      private var §#P§:Number;
      
      private var §#!d§:Number;
      
      private var §>!Q§:Number;
      
      private var §-<§:Number;
      
      private var §1$§:Number;
      
      private var §<!a§:Number;
      
      private var §0p§:Number;
      
      private var §&`§:Number;
      
      private var §8!O§:Number;
      
      private var §1h§:Number;
      
      private var §+!;§:ColorArgb;
      
      private var §5I§:ColorArgb;
      
      private var §7t§:ColorArgb;
      
      private var §[i§:ColorArgb;
      
      public function §[!J§(param1:XML, param2:Texture)
      {
         this.§>K§(param1,param2);
         var _loc3_:Number = this.§=!U§ / (this.§#j§ + this.§[! §);
         super(param2,_loc3_,this.§=!U§,§=K§,§[>§);
         §8"§ = false;
      }
      
      public function get §-!-§() : int
      {
         return this.§=!U§;
      }
      
      override protected function createParticle() : §!!d§
      {
         return new PDParticle();
      }
      
      private function get §0!A§() : Boolean
      {
         return this.§-!-§ >= 20;
      }
      
      override protected function initParticle(param1:§!!d§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§#j§ + this.§1_§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§[0§ = 0;
         _loc2_.§##§ = _loc3_;
         _loc2_.x = §=!@§ + this.§,b§ * (Math.random() * 2 - 1);
         _loc2_.y = §2v§ + this.§^C§ * (Math.random() * 2 - 1);
         _loc2_.startX = §=!@§;
         _loc2_.startY = §2v§;
         var _loc4_:Number = this.§5_§ + this.§1r§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§#n§ + this.§#!L§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§<!a§ + this.§0p§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§<!a§ / _loc3_;
         _loc2_.rotation = this.§5_§ + this.§1r§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§8!O§ + this.§1h§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§#!d§;
         _loc2_.tangentialAcceleration = this.§-<§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§%!U§ + this.§1!=§ * _loc6_;
         if(!isNaN(this.§,!B§))
         {
            _loc8_ = this.§,!B§;
            if(!isNaN(this.§-!W§))
            {
               _loc8_ += this.§-!W§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§;!]§ + this.§6!b§ * _loc6_;
         if(!isNaN(this.§@i§))
         {
            _loc10_ = this.§@i§;
            if(!isNaN(this.§[!3§))
            {
               _loc10_ += this.§[!3§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§+!;§.red;
         _loc11_.green = this.§+!;§.green;
         _loc11_.blue = this.§+!;§.blue;
         _loc11_.alpha = this.§+!;§.alpha;
         if(this.§5I§.red != 0)
         {
            _loc11_.red += this.§5I§.red * (Math.random() * 2 - 1);
         }
         if(this.§5I§.green != 0)
         {
            _loc11_.green += this.§5I§.green * (Math.random() * 2 - 1);
         }
         if(this.§5I§.blue != 0)
         {
            _loc11_.blue += this.§5I§.blue * (Math.random() * 2 - 1);
         }
         if(this.§5I§.alpha != 0)
         {
            _loc11_.alpha += this.§5I§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§7t§.red;
         var _loc14_:Number = this.§7t§.green;
         var _loc15_:Number = this.§7t§.blue;
         var _loc16_:Number = this.§7t§.alpha;
         if(this.§[i§.red != 0)
         {
            _loc13_ += this.§[i§.red * (Math.random() * 2 - 1);
         }
         if(this.§[i§.green != 0)
         {
            _loc14_ += this.§[i§.green * (Math.random() * 2 - 1);
         }
         if(this.§[i§.blue != 0)
         {
            _loc15_ += this.§[i§.blue * (Math.random() * 2 - 1);
         }
         if(this.§[i§.alpha != 0)
         {
            _loc16_ += this.§[i§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§!!d§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§##§ - _loc3_.§[0§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§[0§ += param2;
         if(this.§7k§ == this.§3!J§)
         {
            if(!_loc3_.skipUpdate || !this.§0!A§)
            {
               if(this.§0!A§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=!@§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2v§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§&`§)
               {
                  _loc3_.§[0§ = _loc3_.§##§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§0!A§)
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
               if(this.§0!A§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§false§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§#P§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§false§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§#P§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§0!A§)
         {
            if(this.§0!A§)
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
      
      private function §>K§(param1:XML, param2:Texture) : void
      {
         this.§,b§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^C§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§false§ = parseFloat(param1.gravity.attribute("x"));
         this.§#P§ = parseFloat(param1.gravity.attribute("y"));
         this.§7k§ = this.§9]§(param1.emitterType);
         this.§=!U§ = this.§9]§(param1.maxParticles);
         this.§#j§ = Math.max(0.01,this.§@w§(param1.particleLifeSpan));
         this.§1_§ = this.§@w§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§[! § = this.§@w§(param1.particleInterval);
         }
         else
         {
            this.§[! § = 0;
         }
         this.§%!U§ = this.§@w§(param1.startParticleSize);
         this.§;!]§ = this.§%!U§ * param2.height / param2.width;
         this.§1!=§ = this.§@w§(param1.startParticleSizeVariance);
         this.§6!b§ = this.§1!=§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§%!U§ = this.§@w§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§1!=§ = this.§@w§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§;!]§ = this.§@w§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§6!b§ = this.§@w§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§,!B§ = this.§@w§(param1.finishParticleSize);
            this.§@i§ = this.§,!B§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§-!W§ = this.§@w§(param1.FinishParticleSizeVariance);
            this.§[!3§ = this.§-!W§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§,!B§ = this.§@w§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§-!W§ = this.§@w§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§@i§ = this.§@w§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§[!3§ = this.§@w§(param1.FinishParticleSizeVarianceY);
         }
         this.§5_§ = deg2rad(this.§@w§(param1.angle));
         this.§1r§ = deg2rad(this.§@w§(param1.angleVariance));
         this.§#n§ = this.§@w§(param1.speed);
         this.§#!L§ = this.§@w§(param1.speedVariance);
         this.§#!d§ = this.§@w§(param1.radialAcceleration);
         this.§-<§ = this.§@w§(param1.tangentialAcceleration);
         this.§<!a§ = this.§@w§(param1.maxRadius);
         this.§0p§ = this.§@w§(param1.maxRadiusVariance);
         this.§&`§ = this.§@w§(param1.minRadius);
         this.§8!O§ = deg2rad(this.§@w§(param1.rotatePerSecond));
         this.§1h§ = deg2rad(this.§@w§(param1.rotatePerSecondVariance));
         this.§+!;§ = this.§ G§(param1.startColor);
         this.§5I§ = this.§ G§(param1.startColorVariance);
         this.§7t§ = this.§ G§(param1.finishColor);
         this.§[i§ = this.§ G§(param1.finishColorVariance);
         §=K§ = this.§-!1§(param1.blendFuncSource);
         §[>§ = this.§-!1§(param1.blendFuncDestination);
         §?0§ = this.§>!,§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §[E§ = this.§@w§(param1.emissionVariance);
         }
      }
      
      protected function §9]§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@w§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5u§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function § G§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §-!1§(param1:XMLList) : String
      {
         var _loc2_:int = this.§9]§(param1);
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
      
      protected function §>!,§(param1:XMLList) : String
      {
         var _loc2_:String = this.§5u§(param1);
         if(_loc2_ == §<7§.§8$§ || _loc2_ == §<7§.§!!I§ || _loc2_ == §<7§.NONE)
         {
            return _loc2_;
         }
         return §<7§.§8$§;
      }
   }
}

import §,! §.§!!d§;

class PDParticle extends §!!d§
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
