package §7x§
{
   import §-!A§.deg2rad;
   import §@M§.§"y§;
   import §@M§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §2h§
   {
       
      
      private const §7!A§:int = 0;
      
      private const §6+§:int = 1;
      
      private var §=k§:Number;
      
      private var § 5§:int;
      
      private var §=D§:Number;
      
      private var §;^§:Number;
      
      private var §"v§:int;
      
      private var §3w§:Number;
      
      private var §9B§:Number;
      
      private var §#5§:Number;
      
      private var §-!G§:Number;
      
      private var §]L§:Number;
      
      private var §0!%§:Number;
      
      private var §8!B§:Number;
      
      private var §==§:Number;
      
      private var §1!<§:Number;
      
      private var §"7§:Number;
      
      private var §74§:Number;
      
      private var §1B§:Number;
      
      private var §#!8§:Number;
      
      private var §1!@§:Number;
      
      private var §!!&§:Number;
      
      private var §+[§:Number;
      
      private var §?!1§:Number;
      
      private var §<!8§:Number;
      
      private var §?m§:Number;
      
      private var §<!$§:Number;
      
      private var §[!H§:Number;
      
      private var §%!D§:Number;
      
      private var §-T§:Number;
      
      private var §#T§:Number;
      
      private var §@!1§:Number;
      
      private var §7!=§:Number;
      
      private var §"!$§:ColorArgb;
      
      private var §,!0§:ColorArgb;
      
      private var §0,§:ColorArgb;
      
      private var §,!?§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§;z§(param1,param2);
         var _loc3_:Number = this.§"v§ / (this.§3w§ + this.§#5§);
         super(param2,_loc3_,this.§"v§,§%!9§,§,1§);
         §77§ = false;
      }
      
      public function get §#!F§() : int
      {
         return this.§"v§;
      }
      
      override protected function createParticle() : §`V§
      {
         return new PDParticle();
      }
      
      private function get §52§() : Boolean
      {
         return this.§#!F§ >= 20;
      }
      
      override protected function initParticle(param1:§`V§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§3w§ + this.§9B§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§9;§ = 0;
         _loc2_.§>1§ = _loc3_;
         _loc2_.x = §@6§ + this.§=D§ * (Math.random() * 2 - 1);
         _loc2_.y = § 6§ + this.§;^§ * (Math.random() * 2 - 1);
         _loc2_.startX = §@6§;
         _loc2_.startY = § 6§;
         var _loc4_:Number = this.§1B§ + this.§#!8§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§1!@§ + this.§!!&§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§%!D§ + this.§-T§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§%!D§ / _loc3_;
         _loc2_.rotation = this.§1B§ + this.§#!8§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§@!1§ + this.§7!=§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§<!8§;
         _loc2_.tangentialAcceleration = this.§<!$§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§-!G§ + this.§]L§ * _loc6_;
         if(!isNaN(this.§==§))
         {
            _loc8_ = this.§==§;
            if(!isNaN(this.§1!<§))
            {
               _loc8_ += this.§1!<§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§0!%§ + this.§8!B§ * _loc6_;
         if(!isNaN(this.§"7§))
         {
            _loc10_ = this.§"7§;
            if(!isNaN(this.§74§))
            {
               _loc10_ += this.§74§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§"!$§.red;
         _loc11_.green = this.§"!$§.green;
         _loc11_.blue = this.§"!$§.blue;
         _loc11_.alpha = this.§"!$§.alpha;
         if(this.§,!0§.red != 0)
         {
            _loc11_.red += this.§,!0§.red * (Math.random() * 2 - 1);
         }
         if(this.§,!0§.green != 0)
         {
            _loc11_.green += this.§,!0§.green * (Math.random() * 2 - 1);
         }
         if(this.§,!0§.blue != 0)
         {
            _loc11_.blue += this.§,!0§.blue * (Math.random() * 2 - 1);
         }
         if(this.§,!0§.alpha != 0)
         {
            _loc11_.alpha += this.§,!0§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§0,§.red;
         var _loc14_:Number = this.§0,§.green;
         var _loc15_:Number = this.§0,§.blue;
         var _loc16_:Number = this.§0,§.alpha;
         if(this.§,!?§.red != 0)
         {
            _loc13_ += this.§,!?§.red * (Math.random() * 2 - 1);
         }
         if(this.§,!?§.green != 0)
         {
            _loc14_ += this.§,!?§.green * (Math.random() * 2 - 1);
         }
         if(this.§,!?§.blue != 0)
         {
            _loc15_ += this.§,!?§.blue * (Math.random() * 2 - 1);
         }
         if(this.§,!?§.alpha != 0)
         {
            _loc16_ += this.§,!?§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§`V§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§>1§ - _loc3_.§9;§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§9;§ += param2;
         if(this.§ 5§ == this.§6+§)
         {
            if(!_loc3_.skipUpdate || !this.§52§)
            {
               if(this.§52§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §@6§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = § 6§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§#T§)
               {
                  _loc3_.§9;§ = _loc3_.§>1§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§52§)
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
               if(this.§52§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§+[§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§?!1§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§+[§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§?!1§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§52§)
         {
            if(this.§52§)
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
      
      private function §;z§(param1:XML, param2:Texture) : void
      {
         this.§=D§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§;^§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§+[§ = parseFloat(param1.gravity.attribute("x"));
         this.§?!1§ = parseFloat(param1.gravity.attribute("y"));
         this.§ 5§ = this.§-!Q§(param1.emitterType);
         this.§"v§ = this.§-!Q§(param1.maxParticles);
         this.§3w§ = Math.max(0.01,this.§%!B§(param1.particleLifeSpan));
         this.§9B§ = this.§%!B§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§#5§ = this.§%!B§(param1.particleInterval);
         }
         else
         {
            this.§#5§ = 0;
         }
         this.§-!G§ = this.§%!B§(param1.startParticleSize);
         this.§0!%§ = this.§-!G§ * param2.height / param2.width;
         this.§]L§ = this.§%!B§(param1.startParticleSizeVariance);
         this.§8!B§ = this.§]L§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§-!G§ = this.§%!B§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§]L§ = this.§%!B§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§0!%§ = this.§%!B§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§8!B§ = this.§%!B§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§==§ = this.§%!B§(param1.finishParticleSize);
            this.§"7§ = this.§==§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§1!<§ = this.§%!B§(param1.FinishParticleSizeVariance);
            this.§74§ = this.§1!<§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§==§ = this.§%!B§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§1!<§ = this.§%!B§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§"7§ = this.§%!B§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§74§ = this.§%!B§(param1.FinishParticleSizeVarianceY);
         }
         this.§1B§ = deg2rad(this.§%!B§(param1.angle));
         this.§#!8§ = deg2rad(this.§%!B§(param1.angleVariance));
         this.§1!@§ = this.§%!B§(param1.speed);
         this.§!!&§ = this.§%!B§(param1.speedVariance);
         this.§<!8§ = this.§%!B§(param1.radialAcceleration);
         this.§<!$§ = this.§%!B§(param1.tangentialAcceleration);
         this.§%!D§ = this.§%!B§(param1.maxRadius);
         this.§-T§ = this.§%!B§(param1.maxRadiusVariance);
         this.§#T§ = this.§%!B§(param1.minRadius);
         this.§@!1§ = deg2rad(this.§%!B§(param1.rotatePerSecond));
         this.§7!=§ = deg2rad(this.§%!B§(param1.rotatePerSecondVariance));
         this.§"!$§ = this.§8!K§(param1.startColor);
         this.§,!0§ = this.§8!K§(param1.startColorVariance);
         this.§0,§ = this.§8!K§(param1.finishColor);
         this.§,!?§ = this.§8!K§(param1.finishColorVariance);
         §%!9§ = this.§]9§(param1.blendFuncSource);
         §,1§ = this.§]9§(param1.blendFuncDestination);
         §&!4§ = this.§6!G§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §3s§ = this.§%!B§(param1.emissionVariance);
         }
      }
      
      protected function §-!Q§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §%!B§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §18§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §8!K§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §]9§(param1:XMLList) : String
      {
         var _loc2_:int = this.§-!Q§(param1);
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
      
      protected function §6!G§(param1:XMLList) : String
      {
         var _loc2_:String = this.§18§(param1);
         if(_loc2_ == §"y§.§const§ || _loc2_ == §"y§.final || _loc2_ == §"y§.NONE)
         {
            return _loc2_;
         }
         return §"y§.§const§;
      }
   }
}

import §7x§.§`V§;

class PDParticle extends §`V§
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
