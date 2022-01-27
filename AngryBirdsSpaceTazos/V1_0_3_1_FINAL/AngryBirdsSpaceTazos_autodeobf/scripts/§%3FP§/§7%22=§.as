package §?P§
{
   import §'@§.§>"6§;
   import §'@§.Texture;
   import §[4§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §7"=§ extends §0!"§
   {
       
      
      private const §-§:int = 0;
      
      private const § !?§:int = 1;
      
      private var §+K§:Number;
      
      private var §0!t§:int;
      
      private var §>!q§:Number;
      
      private var §<!=§:Number;
      
      private var §8!f§:int;
      
      private var §!!G§:Number;
      
      private var §38§:Number;
      
      private var §'D§:Number;
      
      private var §[P§:Number;
      
      private var §,!z§:Number;
      
      private var §[!l§:Number;
      
      private var §?z§:Number;
      
      private var §#";§:Number;
      
      private var §8U§:Number;
      
      private var §0!a§:Number;
      
      private var §8!i§:Number;
      
      private var §[L§:Number;
      
      private var §0"B§:Number;
      
      private var §3!^§:Number;
      
      private var §&!P§:Number;
      
      private var §in §:Number;
      
      private var §`X§:Number;
      
      private var §"!^§:Number;
      
      private var §]4§:Number;
      
      private var §>=§:Number;
      
      private var §+e§:Number;
      
      private var §#e§:Number;
      
      private var § !h§:Number;
      
      private var §]"5§:Number;
      
      private var §#![§:Number;
      
      private var §>!c§:Number;
      
      private var §^]§:ColorArgb;
      
      private var §12§:ColorArgb;
      
      private var §4"B§:ColorArgb;
      
      private var §3!D§:ColorArgb;
      
      public function §7"=§(param1:XML, param2:Texture)
      {
         this.§^V§(param1,param2);
         var _loc3_:Number = this.§8!f§ / (this.§!!G§ + this.§'D§);
         super(param2,_loc3_,this.§8!f§,§>V§,§4!-§);
         §%"3§ = false;
      }
      
      public function get §13§() : int
      {
         return this.§8!f§;
      }
      
      override protected function createParticle() : §&!S§
      {
         return new PDParticle();
      }
      
      private function get §8!c§() : Boolean
      {
         return this.§13§ >= 20;
      }
      
      override protected function initParticle(param1:§&!S§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§!!G§ + this.§38§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§!p§ = 0;
         _loc2_.§4B§ = _loc3_;
         _loc2_.x = §]!<§ + this.§>!q§ * (Math.random() * 2 - 1);
         _loc2_.y = §#>§ + this.§<!=§ * (Math.random() * 2 - 1);
         _loc2_.startX = §]!<§;
         _loc2_.startY = §#>§;
         var _loc4_:Number = this.§[L§ + this.§0"B§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§3!^§ + this.§&!P§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§#e§ + this.§ !h§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§#e§ / _loc3_;
         _loc2_.rotation = this.§[L§ + this.§0"B§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#![§ + this.§>!c§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§"!^§;
         _loc2_.tangentialAcceleration = this.§>=§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§[P§ + this.§,!z§ * _loc6_;
         if(!isNaN(this.§#";§))
         {
            _loc8_ = this.§#";§;
            if(!isNaN(this.§8U§))
            {
               _loc8_ += this.§8U§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§[!l§ + this.§?z§ * _loc6_;
         if(!isNaN(this.§0!a§))
         {
            _loc10_ = this.§0!a§;
            if(!isNaN(this.§8!i§))
            {
               _loc10_ += this.§8!i§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§^]§.red;
         _loc11_.green = this.§^]§.green;
         _loc11_.blue = this.§^]§.blue;
         _loc11_.alpha = this.§^]§.alpha;
         if(this.§12§.red != 0)
         {
            _loc11_.red += this.§12§.red * (Math.random() * 2 - 1);
         }
         if(this.§12§.green != 0)
         {
            _loc11_.green += this.§12§.green * (Math.random() * 2 - 1);
         }
         if(this.§12§.blue != 0)
         {
            _loc11_.blue += this.§12§.blue * (Math.random() * 2 - 1);
         }
         if(this.§12§.alpha != 0)
         {
            _loc11_.alpha += this.§12§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§4"B§.red;
         var _loc14_:Number = this.§4"B§.green;
         var _loc15_:Number = this.§4"B§.blue;
         var _loc16_:Number = this.§4"B§.alpha;
         if(this.§3!D§.red != 0)
         {
            _loc13_ += this.§3!D§.red * (Math.random() * 2 - 1);
         }
         if(this.§3!D§.green != 0)
         {
            _loc14_ += this.§3!D§.green * (Math.random() * 2 - 1);
         }
         if(this.§3!D§.blue != 0)
         {
            _loc15_ += this.§3!D§.blue * (Math.random() * 2 - 1);
         }
         if(this.§3!D§.alpha != 0)
         {
            _loc16_ += this.§3!D§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§&!S§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§4B§ - _loc3_.§!p§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§!p§ += param2;
         if(this.§0!t§ == this.§ !?§)
         {
            if(!_loc3_.skipUpdate || !this.§8!c§)
            {
               if(this.§8!c§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §]!<§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §#>§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§]"5§)
               {
                  _loc3_.§!p§ = _loc3_.§4B§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§8!c§)
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
               if(this.§8!c§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§in § + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`X§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§in § + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`X§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§8!c§)
         {
            if(this.§8!c§)
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
      
      private function §^V§(param1:XML, param2:Texture) : void
      {
         this.§>!q§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§<!=§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§in § = parseFloat(param1.gravity.attribute("x"));
         this.§`X§ = parseFloat(param1.gravity.attribute("y"));
         this.§0!t§ = this.§8"A§(param1.emitterType);
         this.§8!f§ = this.§8"A§(param1.maxParticles);
         this.§!!G§ = Math.max(0.01,this.§7!j§(param1.particleLifeSpan));
         this.§38§ = this.§7!j§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§'D§ = this.§7!j§(param1.particleInterval);
         }
         else
         {
            this.§'D§ = 0;
         }
         this.§[P§ = this.§7!j§(param1.startParticleSize);
         this.§[!l§ = this.§[P§ * param2.height / param2.width;
         this.§,!z§ = this.§7!j§(param1.startParticleSizeVariance);
         this.§?z§ = this.§,!z§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§[P§ = this.§7!j§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§,!z§ = this.§7!j§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§[!l§ = this.§7!j§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§?z§ = this.§7!j§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#";§ = this.§7!j§(param1.finishParticleSize);
            this.§0!a§ = this.§#";§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§8U§ = this.§7!j§(param1.FinishParticleSizeVariance);
            this.§8!i§ = this.§8U§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#";§ = this.§7!j§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§8U§ = this.§7!j§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§0!a§ = this.§7!j§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§8!i§ = this.§7!j§(param1.FinishParticleSizeVarianceY);
         }
         this.§[L§ = deg2rad(this.§7!j§(param1.angle));
         this.§0"B§ = deg2rad(this.§7!j§(param1.angleVariance));
         this.§3!^§ = this.§7!j§(param1.speed);
         this.§&!P§ = this.§7!j§(param1.speedVariance);
         this.§"!^§ = this.§7!j§(param1.radialAcceleration);
         this.§>=§ = this.§7!j§(param1.tangentialAcceleration);
         this.§#e§ = this.§7!j§(param1.maxRadius);
         this.§ !h§ = this.§7!j§(param1.maxRadiusVariance);
         this.§]"5§ = this.§7!j§(param1.minRadius);
         this.§#![§ = deg2rad(this.§7!j§(param1.rotatePerSecond));
         this.§>!c§ = deg2rad(this.§7!j§(param1.rotatePerSecondVariance));
         this.§^]§ = this.§1G§(param1.startColor);
         this.§12§ = this.§1G§(param1.startColorVariance);
         this.§4"B§ = this.§1G§(param1.finishColor);
         this.§3!D§ = this.§1G§(param1.finishColorVariance);
         §>V§ = this.§"!N§(param1.blendFuncSource);
         §4!-§ = this.§"!N§(param1.blendFuncDestination);
         §@?§ = this.§4!a§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §=!Q§ = this.§7!j§(param1.emissionVariance);
         }
      }
      
      protected function §8"A§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §7!j§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §4"8§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §1G§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §"!N§(param1:XMLList) : String
      {
         var _loc2_:int = this.§8"A§(param1);
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
      
      protected function §4!a§(param1:XMLList) : String
      {
         var _loc2_:String = this.§4"8§(param1);
         if(_loc2_ == §>"6§.§]!w§ || _loc2_ == §>"6§.§;" § || _loc2_ == §>"6§.NONE)
         {
            return _loc2_;
         }
         return §>"6§.§]!w§;
      }
   }
}

import §?P§.§&!S§;

class PDParticle extends §&!S§
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
