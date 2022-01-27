package §6i§
{
   import §7G§.deg2rad;
   import §[!A§.§0]§;
   import §[!A§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §6w§
   {
       
      
      private const §1T§:int = 0;
      
      private const §^w§:int = 1;
      
      private var § Z§:Number;
      
      private var §#a§:int;
      
      private var §8p§:Number;
      
      private var §1!$§:Number;
      
      private var §-x§:int;
      
      private var §0t§:Number;
      
      private var §#F§:Number;
      
      private var §<!1§:Number;
      
      private var §6!8§:Number;
      
      private var §=?§:Number;
      
      private var §;8§:Number;
      
      private var §;9§:Number;
      
      private var §5!-§:Number;
      
      private var §&N§:Number;
      
      private var §&9§:Number;
      
      private var §[!+§:Number;
      
      private var §?n§:Number;
      
      private var §"O§:Number;
      
      private var §8!3§:Number;
      
      private var §5e§:Number;
      
      private var § each§:Number;
      
      private var §?!D§:Number;
      
      private var §,!$§:Number;
      
      private var §<!G§:Number;
      
      private var §^4§:Number;
      
      private var §=&§:Number;
      
      private var §`6§:Number;
      
      private var §`!'§:Number;
      
      private var §"B§:Number;
      
      private var §9!P§:Number;
      
      private var §^G§:Number;
      
      private var §+!P§:ColorArgb;
      
      private var §;"§:ColorArgb;
      
      private var § !5§:ColorArgb;
      
      private var §?U§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§7!I§(param1,param2);
         var _loc3_:Number = this.§-x§ / (this.§0t§ + this.§<!1§);
         super(param2,_loc3_,this.§-x§,§?V§,§1!'§);
         §8E§ = false;
      }
      
      public function get §<d§() : int
      {
         return this.§-x§;
      }
      
      override protected function createParticle() : §+0§
      {
         return new PDParticle();
      }
      
      private function get §#'§() : Boolean
      {
         return this.§<d§ >= 20;
      }
      
      override protected function initParticle(param1:§+0§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§0t§ + this.§#F§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§&!L§ = 0;
         _loc2_.§!B§ = _loc3_;
         _loc2_.x = §=m§ + this.§8p§ * (Math.random() * 2 - 1);
         _loc2_.y = §2N§ + this.§1!$§ * (Math.random() * 2 - 1);
         _loc2_.startX = §=m§;
         _loc2_.startY = §2N§;
         var _loc4_:Number = this.§?n§ + this.§"O§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§8!3§ + this.§5e§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§`6§ + this.§`!'§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§`6§ / _loc3_;
         _loc2_.rotation = this.§?n§ + this.§"O§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§9!P§ + this.§^G§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§,!$§;
         _loc2_.tangentialAcceleration = this.§^4§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§6!8§ + this.§=?§ * _loc6_;
         if(!isNaN(this.§5!-§))
         {
            _loc8_ = this.§5!-§;
            if(!isNaN(this.§&N§))
            {
               _loc8_ += this.§&N§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§;8§ + this.§;9§ * _loc6_;
         if(!isNaN(this.§&9§))
         {
            _loc10_ = this.§&9§;
            if(!isNaN(this.§[!+§))
            {
               _loc10_ += this.§[!+§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§+!P§.red;
         _loc11_.green = this.§+!P§.green;
         _loc11_.blue = this.§+!P§.blue;
         _loc11_.alpha = this.§+!P§.alpha;
         if(this.§;"§.red != 0)
         {
            _loc11_.red += this.§;"§.red * (Math.random() * 2 - 1);
         }
         if(this.§;"§.green != 0)
         {
            _loc11_.green += this.§;"§.green * (Math.random() * 2 - 1);
         }
         if(this.§;"§.blue != 0)
         {
            _loc11_.blue += this.§;"§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;"§.alpha != 0)
         {
            _loc11_.alpha += this.§;"§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§ !5§.red;
         var _loc14_:Number = this.§ !5§.green;
         var _loc15_:Number = this.§ !5§.blue;
         var _loc16_:Number = this.§ !5§.alpha;
         if(this.§?U§.red != 0)
         {
            _loc13_ += this.§?U§.red * (Math.random() * 2 - 1);
         }
         if(this.§?U§.green != 0)
         {
            _loc14_ += this.§?U§.green * (Math.random() * 2 - 1);
         }
         if(this.§?U§.blue != 0)
         {
            _loc15_ += this.§?U§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?U§.alpha != 0)
         {
            _loc16_ += this.§?U§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§+0§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§!B§ - _loc3_.§&!L§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§&!L§ += param2;
         if(this.§#a§ == this.§^w§)
         {
            if(!_loc3_.skipUpdate || !this.§#'§)
            {
               if(this.§#'§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=m§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2N§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§"B§)
               {
                  _loc3_.§&!L§ = _loc3_.§!B§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§#'§)
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
               if(this.§#'§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§ each§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§?!D§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§ each§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§?!D§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§#'§)
         {
            if(this.§#'§)
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
      
      private function §7!I§(param1:XML, param2:Texture) : void
      {
         this.§8p§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§1!$§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§ each§ = parseFloat(param1.gravity.attribute("x"));
         this.§?!D§ = parseFloat(param1.gravity.attribute("y"));
         this.§#a§ = this.§&!D§(param1.emitterType);
         this.§-x§ = this.§&!D§(param1.maxParticles);
         this.§0t§ = Math.max(0.01,this.§,!<§(param1.particleLifeSpan));
         this.§#F§ = this.§,!<§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§<!1§ = this.§,!<§(param1.particleInterval);
         }
         else
         {
            this.§<!1§ = 0;
         }
         this.§6!8§ = this.§,!<§(param1.startParticleSize);
         this.§;8§ = this.§6!8§ * param2.height / param2.width;
         this.§=?§ = this.§,!<§(param1.startParticleSizeVariance);
         this.§;9§ = this.§=?§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§6!8§ = this.§,!<§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§=?§ = this.§,!<§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§;8§ = this.§,!<§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§;9§ = this.§,!<§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§5!-§ = this.§,!<§(param1.finishParticleSize);
            this.§&9§ = this.§5!-§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&N§ = this.§,!<§(param1.FinishParticleSizeVariance);
            this.§[!+§ = this.§&N§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§5!-§ = this.§,!<§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&N§ = this.§,!<§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§&9§ = this.§,!<§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§[!+§ = this.§,!<§(param1.FinishParticleSizeVarianceY);
         }
         this.§?n§ = deg2rad(this.§,!<§(param1.angle));
         this.§"O§ = deg2rad(this.§,!<§(param1.angleVariance));
         this.§8!3§ = this.§,!<§(param1.speed);
         this.§5e§ = this.§,!<§(param1.speedVariance);
         this.§,!$§ = this.§,!<§(param1.radialAcceleration);
         this.§^4§ = this.§,!<§(param1.tangentialAcceleration);
         this.§`6§ = this.§,!<§(param1.maxRadius);
         this.§`!'§ = this.§,!<§(param1.maxRadiusVariance);
         this.§"B§ = this.§,!<§(param1.minRadius);
         this.§9!P§ = deg2rad(this.§,!<§(param1.rotatePerSecond));
         this.§^G§ = deg2rad(this.§,!<§(param1.rotatePerSecondVariance));
         this.§+!P§ = this.§2l§(param1.startColor);
         this.§;"§ = this.§2l§(param1.startColorVariance);
         this.§ !5§ = this.§2l§(param1.finishColor);
         this.§?U§ = this.§2l§(param1.finishColorVariance);
         §?V§ = this.§]p§(param1.blendFuncSource);
         §1!'§ = this.§]p§(param1.blendFuncDestination);
         §6k§ = this.§']§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §;L§ = this.§,!<§(param1.emissionVariance);
         }
      }
      
      protected function §&!D§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §,!<§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §#m§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §2l§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §]p§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&!D§(param1);
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
      
      protected function §']§(param1:XMLList) : String
      {
         var _loc2_:String = this.§#m§(param1);
         if(_loc2_ == §0]§.§-$§ || _loc2_ == §0]§.§`>§ || _loc2_ == §0]§.NONE)
         {
            return _loc2_;
         }
         return §0]§.§-$§;
      }
   }
}

import §6i§.§+0§;

class PDParticle extends §+0§
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
