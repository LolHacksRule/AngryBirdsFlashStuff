package §8`§
{
   import §8j§.deg2rad;
   import §>u§.§?!8§;
   import §>u§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §5s§
   {
       
      
      private const §[o§:int = 0;
      
      private const §!i§:int = 1;
      
      private var §"!&§:Number;
      
      private var §,!G§:int;
      
      private var §4!#§:Number;
      
      private var §5!0§:Number;
      
      private var §=K§:int;
      
      private var §&!F§:Number;
      
      private var §1m§:Number;
      
      private var §,!%§:Number;
      
      private var §-!H§:Number;
      
      private var §+!+§:Number;
      
      private var §2N§:Number;
      
      private var §5P§:Number;
      
      private var §]!B§:Number;
      
      private var §+t§:Number;
      
      private var § l§:Number;
      
      private var §6!"§:Number;
      
      private var §8M§:Number;
      
      private var §%3§:Number;
      
      private var §+j§:Number;
      
      private var §^!A§:Number;
      
      private var §@_§:Number;
      
      private var §4Q§:Number;
      
      private var §3!-§:Number;
      
      private var §38§:Number;
      
      private var §[E§:Number;
      
      private var §!!#§:Number;
      
      private var §25§:Number;
      
      private var §8k§:Number;
      
      private var §&!I§:Number;
      
      private var §?b§:Number;
      
      private var §0!C§:Number;
      
      private var §7#§:ColorArgb;
      
      private var §"U§:ColorArgb;
      
      private var §!]§:ColorArgb;
      
      private var §@]§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§`L§(param1,param2);
         var _loc3_:Number = this.§=K§ / (this.§&!F§ + this.§,!%§);
         super(param2,_loc3_,this.§=K§,§+!F§,§@!3§);
         §0m§ = false;
      }
      
      public function get §!!§() : int
      {
         return this.§=K§;
      }
      
      override protected function createParticle() : §+!G§
      {
         return new PDParticle();
      }
      
      private function get § z§() : Boolean
      {
         return this.§!!§ >= 20;
      }
      
      override protected function initParticle(param1:§+!G§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§&!F§ + this.§1m§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§1t§ = _loc3_;
         _loc2_.x = §>w§ + this.§4!#§ * (Math.random() * 2 - 1);
         _loc2_.y = §7n§ + this.§5!0§ * (Math.random() * 2 - 1);
         _loc2_.startX = §>w§;
         _loc2_.startY = §7n§;
         var _loc4_:Number = this.§8M§ + this.§%3§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§+j§ + this.§^!A§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§25§ + this.§8k§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§25§ / _loc3_;
         _loc2_.rotation = this.§8M§ + this.§%3§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§?b§ + this.§0!C§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§3!-§;
         _loc2_.tangentialAcceleration = this.§[E§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§-!H§ + this.§+!+§ * _loc6_;
         if(!isNaN(this.§]!B§))
         {
            _loc8_ = this.§]!B§;
            if(!isNaN(this.§+t§))
            {
               _loc8_ += this.§+t§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§2N§ + this.§5P§ * _loc6_;
         if(!isNaN(this.§ l§))
         {
            _loc10_ = this.§ l§;
            if(!isNaN(this.§6!"§))
            {
               _loc10_ += this.§6!"§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§7#§.red;
         _loc11_.green = this.§7#§.green;
         _loc11_.blue = this.§7#§.blue;
         _loc11_.alpha = this.§7#§.alpha;
         if(this.§"U§.red != 0)
         {
            _loc11_.red += this.§"U§.red * (Math.random() * 2 - 1);
         }
         if(this.§"U§.green != 0)
         {
            _loc11_.green += this.§"U§.green * (Math.random() * 2 - 1);
         }
         if(this.§"U§.blue != 0)
         {
            _loc11_.blue += this.§"U§.blue * (Math.random() * 2 - 1);
         }
         if(this.§"U§.alpha != 0)
         {
            _loc11_.alpha += this.§"U§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§!]§.red;
         var _loc14_:Number = this.§!]§.green;
         var _loc15_:Number = this.§!]§.blue;
         var _loc16_:Number = this.§!]§.alpha;
         if(this.§@]§.red != 0)
         {
            _loc13_ += this.§@]§.red * (Math.random() * 2 - 1);
         }
         if(this.§@]§.green != 0)
         {
            _loc14_ += this.§@]§.green * (Math.random() * 2 - 1);
         }
         if(this.§@]§.blue != 0)
         {
            _loc15_ += this.§@]§.blue * (Math.random() * 2 - 1);
         }
         if(this.§@]§.alpha != 0)
         {
            _loc16_ += this.§@]§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§+!G§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§1t§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§,!G§ == this.§!i§)
         {
            if(!_loc3_.skipUpdate || !this.§ z§)
            {
               if(this.§ z§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §>w§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §7n§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§&!I§)
               {
                  _loc3_.currentTime = _loc3_.§1t§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§ z§)
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
               if(this.§ z§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§@_§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§4Q§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§@_§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§4Q§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§ z§)
         {
            if(this.§ z§)
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
      
      private function §`L§(param1:XML, param2:Texture) : void
      {
         this.§4!#§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§5!0§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§@_§ = parseFloat(param1.gravity.attribute("x"));
         this.§4Q§ = parseFloat(param1.gravity.attribute("y"));
         this.§,!G§ = this.§&Q§(param1.emitterType);
         this.§=K§ = this.§&Q§(param1.maxParticles);
         this.§&!F§ = Math.max(0.01,this.§#!#§(param1.particleLifeSpan));
         this.§1m§ = this.§#!#§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§,!%§ = this.§#!#§(param1.particleInterval);
         }
         else
         {
            this.§,!%§ = 0;
         }
         this.§-!H§ = this.§#!#§(param1.startParticleSize);
         this.§2N§ = this.§-!H§ * param2.height / param2.width;
         this.§+!+§ = this.§#!#§(param1.startParticleSizeVariance);
         this.§5P§ = this.§+!+§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§-!H§ = this.§#!#§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§+!+§ = this.§#!#§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§2N§ = this.§#!#§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§5P§ = this.§#!#§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§]!B§ = this.§#!#§(param1.finishParticleSize);
            this.§ l§ = this.§]!B§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§+t§ = this.§#!#§(param1.FinishParticleSizeVariance);
            this.§6!"§ = this.§+t§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§]!B§ = this.§#!#§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§+t§ = this.§#!#§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§ l§ = this.§#!#§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§6!"§ = this.§#!#§(param1.FinishParticleSizeVarianceY);
         }
         this.§8M§ = deg2rad(this.§#!#§(param1.angle));
         this.§%3§ = deg2rad(this.§#!#§(param1.angleVariance));
         this.§+j§ = this.§#!#§(param1.speed);
         this.§^!A§ = this.§#!#§(param1.speedVariance);
         this.§3!-§ = this.§#!#§(param1.radialAcceleration);
         this.§[E§ = this.§#!#§(param1.tangentialAcceleration);
         this.§25§ = this.§#!#§(param1.maxRadius);
         this.§8k§ = this.§#!#§(param1.maxRadiusVariance);
         this.§&!I§ = this.§#!#§(param1.minRadius);
         this.§?b§ = deg2rad(this.§#!#§(param1.rotatePerSecond));
         this.§0!C§ = deg2rad(this.§#!#§(param1.rotatePerSecondVariance));
         this.§7#§ = this.§?U§(param1.startColor);
         this.§"U§ = this.§?U§(param1.startColorVariance);
         this.§!]§ = this.§?U§(param1.finishColor);
         this.§@]§ = this.§?U§(param1.finishColorVariance);
         §+!F§ = this.§8<§(param1.blendFuncSource);
         §@!3§ = this.§8<§(param1.blendFuncDestination);
         §>f§ = this.§;!1§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §85§ = this.§#!#§(param1.emissionVariance);
         }
      }
      
      protected function §&Q§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §#!#§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §`N§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?U§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §8<§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&Q§(param1);
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
      
      protected function §;!1§(param1:XMLList) : String
      {
         var _loc2_:String = this.§`N§(param1);
         if(_loc2_ == §?!8§.§7o§ || _loc2_ == §?!8§.§&<§ || _loc2_ == §?!8§.NONE)
         {
            return _loc2_;
         }
         return §?!8§.§7o§;
      }
   }
}

import §8`§.§+!G§;

class PDParticle extends §+!G§
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
