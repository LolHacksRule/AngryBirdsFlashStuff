package §-w§
{
   import §+<§.deg2rad;
   import §@!#§.§3"8§;
   import §@!#§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §@"4§ extends §@E§
   {
       
      
      private const §<a§:int = 0;
      
      private const §"!=§:int = 1;
      
      private var §'O§:Number;
      
      private var §%Q§:int;
      
      private var §?"7§:Number;
      
      private var §^<§:Number;
      
      private var §?d§:int;
      
      private var §'`§:Number;
      
      private var §2![§:Number;
      
      private var §1Y§:Number;
      
      private var §37§:Number;
      
      private var §[!+§:Number;
      
      private var §"2§:Number;
      
      private var §?"6§:Number;
      
      private var §#";§:Number;
      
      private var §1!>§:Number;
      
      private var §9"5§:Number;
      
      private var §0"$§:Number;
      
      private var §21§:Number;
      
      private var §+!"§:Number;
      
      private var §,"8§:Number;
      
      private var §;![§:Number;
      
      private var §;P§:Number;
      
      private var §,!W§:Number;
      
      private var § s§:Number;
      
      private var § v§:Number;
      
      private var §#!@§:Number;
      
      private var §#p§:Number;
      
      private var §06§:Number;
      
      private var §-@§:Number;
      
      private var §!3§:Number;
      
      private var §]7§:Number;
      
      private var §#F§:Number;
      
      private var §#C§:ColorArgb;
      
      private var §6!!§:ColorArgb;
      
      private var §,N§:ColorArgb;
      
      private var §45§:ColorArgb;
      
      public function §@"4§(param1:XML, param2:Texture)
      {
         this.§%F§(param1,param2);
         var _loc3_:Number = this.§?d§ / (this.§'`§ + this.§1Y§);
         super(param2,_loc3_,this.§?d§,§9!F§,§3!b§);
         § !j§ = false;
      }
      
      public function get §="§() : int
      {
         return this.§?d§;
      }
      
      override protected function createParticle() : §^7§
      {
         return new PDParticle();
      }
      
      private function get §9"4§() : Boolean
      {
         return this.§="§ >= 20;
      }
      
      override protected function initParticle(param1:§^7§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§'`§ + this.§2![§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§%<§ = 0;
         _loc2_.§4^§ = _loc3_;
         _loc2_.x = §;B§ + this.§?"7§ * (Math.random() * 2 - 1);
         _loc2_.y = §+f§ + this.§^<§ * (Math.random() * 2 - 1);
         _loc2_.startX = §;B§;
         _loc2_.startY = §+f§;
         var _loc4_:Number = this.§21§ + this.§+!"§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§,"8§ + this.§;![§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§06§ + this.§-@§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§06§ / _loc3_;
         _loc2_.rotation = this.§21§ + this.§+!"§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§]7§ + this.§#F§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§ s§;
         _loc2_.tangentialAcceleration = this.§#!@§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§37§ + this.§[!+§ * _loc6_;
         if(!isNaN(this.§#";§))
         {
            _loc8_ = this.§#";§;
            if(!isNaN(this.§1!>§))
            {
               _loc8_ += this.§1!>§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§"2§ + this.§?"6§ * _loc6_;
         if(!isNaN(this.§9"5§))
         {
            _loc10_ = this.§9"5§;
            if(!isNaN(this.§0"$§))
            {
               _loc10_ += this.§0"$§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§#C§.red;
         _loc11_.green = this.§#C§.green;
         _loc11_.blue = this.§#C§.blue;
         _loc11_.alpha = this.§#C§.alpha;
         if(this.§6!!§.red != 0)
         {
            _loc11_.red += this.§6!!§.red * (Math.random() * 2 - 1);
         }
         if(this.§6!!§.green != 0)
         {
            _loc11_.green += this.§6!!§.green * (Math.random() * 2 - 1);
         }
         if(this.§6!!§.blue != 0)
         {
            _loc11_.blue += this.§6!!§.blue * (Math.random() * 2 - 1);
         }
         if(this.§6!!§.alpha != 0)
         {
            _loc11_.alpha += this.§6!!§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§,N§.red;
         var _loc14_:Number = this.§,N§.green;
         var _loc15_:Number = this.§,N§.blue;
         var _loc16_:Number = this.§,N§.alpha;
         if(this.§45§.red != 0)
         {
            _loc13_ += this.§45§.red * (Math.random() * 2 - 1);
         }
         if(this.§45§.green != 0)
         {
            _loc14_ += this.§45§.green * (Math.random() * 2 - 1);
         }
         if(this.§45§.blue != 0)
         {
            _loc15_ += this.§45§.blue * (Math.random() * 2 - 1);
         }
         if(this.§45§.alpha != 0)
         {
            _loc16_ += this.§45§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§^7§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§4^§ - _loc3_.§%<§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§%<§ += param2;
         if(this.§%Q§ == this.§"!=§)
         {
            if(!_loc3_.skipUpdate || !this.§9"4§)
            {
               if(this.§9"4§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §;B§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §+f§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§!3§)
               {
                  _loc3_.§%<§ = _loc3_.§4^§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§9"4§)
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
               if(this.§9"4§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§;P§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§,!W§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§;P§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§,!W§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§9"4§)
         {
            if(this.§9"4§)
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
      
      private function §%F§(param1:XML, param2:Texture) : void
      {
         this.§?"7§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^<§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§;P§ = parseFloat(param1.gravity.attribute("x"));
         this.§,!W§ = parseFloat(param1.gravity.attribute("y"));
         this.§%Q§ = this.§3!%§(param1.emitterType);
         this.§?d§ = this.§3!%§(param1.maxParticles);
         this.§'`§ = Math.max(0.01,this.§<%§(param1.particleLifeSpan));
         this.§2![§ = this.§<%§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§1Y§ = this.§<%§(param1.particleInterval);
         }
         else
         {
            this.§1Y§ = 0;
         }
         this.§37§ = this.§<%§(param1.startParticleSize);
         this.§"2§ = this.§37§ * param2.height / param2.width;
         this.§[!+§ = this.§<%§(param1.startParticleSizeVariance);
         this.§?"6§ = this.§[!+§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§37§ = this.§<%§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§[!+§ = this.§<%§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§"2§ = this.§<%§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§?"6§ = this.§<%§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#";§ = this.§<%§(param1.finishParticleSize);
            this.§9"5§ = this.§#";§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§1!>§ = this.§<%§(param1.FinishParticleSizeVariance);
            this.§0"$§ = this.§1!>§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#";§ = this.§<%§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§1!>§ = this.§<%§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§9"5§ = this.§<%§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§0"$§ = this.§<%§(param1.FinishParticleSizeVarianceY);
         }
         this.§21§ = deg2rad(this.§<%§(param1.angle));
         this.§+!"§ = deg2rad(this.§<%§(param1.angleVariance));
         this.§,"8§ = this.§<%§(param1.speed);
         this.§;![§ = this.§<%§(param1.speedVariance);
         this.§ s§ = this.§<%§(param1.radialAcceleration);
         this.§#!@§ = this.§<%§(param1.tangentialAcceleration);
         this.§06§ = this.§<%§(param1.maxRadius);
         this.§-@§ = this.§<%§(param1.maxRadiusVariance);
         this.§!3§ = this.§<%§(param1.minRadius);
         this.§]7§ = deg2rad(this.§<%§(param1.rotatePerSecond));
         this.§#F§ = deg2rad(this.§<%§(param1.rotatePerSecondVariance));
         this.§#C§ = this.§-!C§(param1.startColor);
         this.§6!!§ = this.§-!C§(param1.startColorVariance);
         this.§,N§ = this.§-!C§(param1.finishColor);
         this.§45§ = this.§-!C§(param1.finishColorVariance);
         §9!F§ = this.§^!i§(param1.blendFuncSource);
         §3!b§ = this.§^!i§(param1.blendFuncDestination);
         §8!!§ = this.§]"6§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §;x§ = this.§<%§(param1.emissionVariance);
         }
      }
      
      protected function §3!%§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §<%§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §3z§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §-!C§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §^!i§(param1:XMLList) : String
      {
         var _loc2_:int = this.§3!%§(param1);
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
      
      protected function §]"6§(param1:XMLList) : String
      {
         var _loc2_:String = this.§3z§(param1);
         if(_loc2_ == §3"8§.§7"%§ || _loc2_ == §3"8§.§"!I§ || _loc2_ == §3"8§.NONE)
         {
            return _loc2_;
         }
         return §3"8§.§7"%§;
      }
   }
}

import §-w§.§^7§;

class PDParticle extends §^7§
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
