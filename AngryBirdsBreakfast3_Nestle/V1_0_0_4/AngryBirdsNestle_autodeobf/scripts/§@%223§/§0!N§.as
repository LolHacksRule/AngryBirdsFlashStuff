package §@"3§
{
   import §7"+§.§<!r§;
   import §7"+§.Texture;
   import §<C§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §0!N§ extends §8W§
   {
       
      
      private const §<!!§:int = 0;
      
      private const §1!c§:int = 1;
      
      private var §3"&§:Number;
      
      private var §2!n§:int;
      
      private var §^R§:Number;
      
      private var §!"1§:Number;
      
      private var §^e§:int;
      
      private var §<!u§:Number;
      
      private var §@v§:Number;
      
      private var §]!=§:Number;
      
      private var §8!@§:Number;
      
      private var §0f§:Number;
      
      private var §+H§:Number;
      
      private var §-!<§:Number;
      
      private var §9!p§:Number;
      
      private var §]!$§:Number;
      
      private var §#P§:Number;
      
      private var §-E§:Number;
      
      private var §2!'§:Number;
      
      private var §%K§:Number;
      
      private var §8!i§:Number;
      
      private var §`!z§:Number;
      
      private var §11§:Number;
      
      private var §7!D§:Number;
      
      private var §2G§:Number;
      
      private var §<"0§:Number;
      
      private var §+!t§:Number;
      
      private var §^!i§:Number;
      
      private var §&!q§:Number;
      
      private var §5!V§:Number;
      
      private var §!M§:Number;
      
      private var §#![§:Number;
      
      private var §]!6§:Number;
      
      private var §=!q§:ColorArgb;
      
      private var §#g§:ColorArgb;
      
      private var §,%§:ColorArgb;
      
      private var § !m§:ColorArgb;
      
      public function §0!N§(param1:XML, param2:Texture)
      {
         this.§1q§(param1,param2);
         var _loc3_:Number = this.§^e§ / (this.§<!u§ + this.§]!=§);
         super(param2,_loc3_,this.§^e§,§-!H§,§3!u§);
         §'!7§ = false;
      }
      
      public function get §7R§() : int
      {
         return this.§^e§;
      }
      
      override protected function createParticle() : §[!d§
      {
         return new PDParticle();
      }
      
      private function get §9!r§() : Boolean
      {
         return this.§7R§ >= 20;
      }
      
      override protected function initParticle(param1:§[!d§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§<!u§ + this.§@v§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§%t§ = 0;
         _loc2_.§9e§ = _loc3_;
         _loc2_.x = §>"!§ + this.§^R§ * (Math.random() * 2 - 1);
         _loc2_.y = §-$§ + this.§!"1§ * (Math.random() * 2 - 1);
         _loc2_.startX = §>"!§;
         _loc2_.startY = §-$§;
         var _loc4_:Number = this.§2!'§ + this.§%K§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§8!i§ + this.§`!z§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§&!q§ + this.§5!V§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§&!q§ / _loc3_;
         _loc2_.rotation = this.§2!'§ + this.§%K§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#![§ + this.§]!6§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2G§;
         _loc2_.tangentialAcceleration = this.§+!t§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§8!@§ + this.§0f§ * _loc6_;
         if(!isNaN(this.§9!p§))
         {
            _loc8_ = this.§9!p§;
            if(!isNaN(this.§]!$§))
            {
               _loc8_ += this.§]!$§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§+H§ + this.§-!<§ * _loc6_;
         if(!isNaN(this.§#P§))
         {
            _loc10_ = this.§#P§;
            if(!isNaN(this.§-E§))
            {
               _loc10_ += this.§-E§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§=!q§.red;
         _loc11_.green = this.§=!q§.green;
         _loc11_.blue = this.§=!q§.blue;
         _loc11_.alpha = this.§=!q§.alpha;
         if(this.§#g§.red != 0)
         {
            _loc11_.red += this.§#g§.red * (Math.random() * 2 - 1);
         }
         if(this.§#g§.green != 0)
         {
            _loc11_.green += this.§#g§.green * (Math.random() * 2 - 1);
         }
         if(this.§#g§.blue != 0)
         {
            _loc11_.blue += this.§#g§.blue * (Math.random() * 2 - 1);
         }
         if(this.§#g§.alpha != 0)
         {
            _loc11_.alpha += this.§#g§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§,%§.red;
         var _loc14_:Number = this.§,%§.green;
         var _loc15_:Number = this.§,%§.blue;
         var _loc16_:Number = this.§,%§.alpha;
         if(this.§ !m§.red != 0)
         {
            _loc13_ += this.§ !m§.red * (Math.random() * 2 - 1);
         }
         if(this.§ !m§.green != 0)
         {
            _loc14_ += this.§ !m§.green * (Math.random() * 2 - 1);
         }
         if(this.§ !m§.blue != 0)
         {
            _loc15_ += this.§ !m§.blue * (Math.random() * 2 - 1);
         }
         if(this.§ !m§.alpha != 0)
         {
            _loc16_ += this.§ !m§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§[!d§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§9e§ - _loc3_.§%t§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§%t§ += param2;
         if(this.§2!n§ == this.§1!c§)
         {
            if(!_loc3_.skipUpdate || !this.§9!r§)
            {
               if(this.§9!r§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §>"!§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §-$§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§!M§)
               {
                  _loc3_.§%t§ = _loc3_.§9e§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§9!r§)
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
               if(this.§9!r§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§11§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§7!D§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§11§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§7!D§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§9!r§)
         {
            if(this.§9!r§)
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
      
      private function §1q§(param1:XML, param2:Texture) : void
      {
         this.§^R§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§!"1§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§11§ = parseFloat(param1.gravity.attribute("x"));
         this.§7!D§ = parseFloat(param1.gravity.attribute("y"));
         this.§2!n§ = this.§1o§(param1.emitterType);
         this.§^e§ = this.§1o§(param1.maxParticles);
         this.§<!u§ = Math.max(0.01,this.§7!p§(param1.particleLifeSpan));
         this.§@v§ = this.§7!p§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§]!=§ = this.§7!p§(param1.particleInterval);
         }
         else
         {
            this.§]!=§ = 0;
         }
         this.§8!@§ = this.§7!p§(param1.startParticleSize);
         this.§+H§ = this.§8!@§ * param2.height / param2.width;
         this.§0f§ = this.§7!p§(param1.startParticleSizeVariance);
         this.§-!<§ = this.§0f§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§8!@§ = this.§7!p§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§0f§ = this.§7!p§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§+H§ = this.§7!p§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§-!<§ = this.§7!p§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§9!p§ = this.§7!p§(param1.finishParticleSize);
            this.§#P§ = this.§9!p§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§]!$§ = this.§7!p§(param1.FinishParticleSizeVariance);
            this.§-E§ = this.§]!$§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§9!p§ = this.§7!p§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§]!$§ = this.§7!p§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§#P§ = this.§7!p§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§-E§ = this.§7!p§(param1.FinishParticleSizeVarianceY);
         }
         this.§2!'§ = deg2rad(this.§7!p§(param1.angle));
         this.§%K§ = deg2rad(this.§7!p§(param1.angleVariance));
         this.§8!i§ = this.§7!p§(param1.speed);
         this.§`!z§ = this.§7!p§(param1.speedVariance);
         this.§2G§ = this.§7!p§(param1.radialAcceleration);
         this.§+!t§ = this.§7!p§(param1.tangentialAcceleration);
         this.§&!q§ = this.§7!p§(param1.maxRadius);
         this.§5!V§ = this.§7!p§(param1.maxRadiusVariance);
         this.§!M§ = this.§7!p§(param1.minRadius);
         this.§#![§ = deg2rad(this.§7!p§(param1.rotatePerSecond));
         this.§]!6§ = deg2rad(this.§7!p§(param1.rotatePerSecondVariance));
         this.§=!q§ = this.§1! §(param1.startColor);
         this.§#g§ = this.§1! §(param1.startColorVariance);
         this.§,%§ = this.§1! §(param1.finishColor);
         this.§ !m§ = this.§1! §(param1.finishColorVariance);
         §-!H§ = this.§`T§(param1.blendFuncSource);
         §3!u§ = this.§`T§(param1.blendFuncDestination);
         §?Y§ = this.§^!c§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §>>§ = this.§7!p§(param1.emissionVariance);
         }
      }
      
      protected function §1o§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §7!p§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §'!e§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §1! §(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §`T§(param1:XMLList) : String
      {
         var _loc2_:int = this.§1o§(param1);
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
      
      protected function §^!c§(param1:XMLList) : String
      {
         var _loc2_:String = this.§'!e§(param1);
         if(_loc2_ == §<!r§.§4t§ || _loc2_ == §<!r§.§6x§ || _loc2_ == §<!r§.NONE)
         {
            return _loc2_;
         }
         return §<!r§.§4t§;
      }
   }
}

import §@"3§.§[!d§;

class PDParticle extends §[!d§
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
