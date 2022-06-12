package §3">§
{
   import §!=§.deg2rad;
   import §<5§.Texture;
   import §<5§.§^M§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §4"1§
   {
       
      
      private const §=W§:int = 0;
      
      private const §?a§:int = 1;
      
      private var §-!1§:Number;
      
      private var §0_§:int;
      
      private var § !h§:Number;
      
      private var §1!@§:Number;
      
      private var §#!@§:int;
      
      private var §@!N§:Number;
      
      private var §%,§:Number;
      
      private var §[G§:Number;
      
      private var §^"M§:Number;
      
      private var §'!3§:Number;
      
      private var §]!e§:Number;
      
      private var §&3§:Number;
      
      private var §0S§:Number;
      
      private var §[n§:Number;
      
      private var §0"M§:Number;
      
      private var §%z§:Number;
      
      private var § !l§:Number;
      
      private var §,6§:Number;
      
      private var §?E§:Number;
      
      private var §7W§:Number;
      
      private var §>J§:Number;
      
      private var §4x§:Number;
      
      private var §2!r§:Number;
      
      private var §?f§:Number;
      
      private var §]"C§:Number;
      
      private var §>![§:Number;
      
      private var §8" §:Number;
      
      private var §8"8§:Number;
      
      private var §'O§:Number;
      
      private var §[5§:Number;
      
      private var §?!b§:Number;
      
      private var §%!§:ColorArgb;
      
      private var §;r§:ColorArgb;
      
      private var §0R§:ColorArgb;
      
      private var §`p§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§""6§(param1,param2);
         var _loc3_:Number = this.§#!@§ / (this.§@!N§ + this.§[G§);
         super(param2,_loc3_,this.§#!@§,§!!]§,§9S§);
         §8$§ = false;
      }
      
      public function get §@p§() : int
      {
         return this.§#!@§;
      }
      
      override protected function createParticle() : §!!k§
      {
         return new PDParticle();
      }
      
      private function get §]b§() : Boolean
      {
         return this.§@p§ >= 20;
      }
      
      override protected function initParticle(param1:§!!k§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§@!N§ + this.§%,§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§42§ = 0;
         _loc2_.§4!3§ = _loc3_;
         _loc2_.x = §8!f§ + this.§ !h§ * (Math.random() * 2 - 1);
         _loc2_.y = §@!J§ + this.§1!@§ * (Math.random() * 2 - 1);
         _loc2_.startX = §8!f§;
         _loc2_.startY = §@!J§;
         var _loc4_:Number = this.§ !l§ + this.§,6§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§?E§ + this.§7W§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§8" § + this.§8"8§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§8" § / _loc3_;
         _loc2_.rotation = this.§ !l§ + this.§,6§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§[5§ + this.§?!b§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2!r§;
         _loc2_.tangentialAcceleration = this.§]"C§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§^"M§ + this.§'!3§ * _loc6_;
         if(!isNaN(this.§0S§))
         {
            _loc8_ = this.§0S§;
            if(!isNaN(this.§[n§))
            {
               _loc8_ += this.§[n§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§]!e§ + this.§&3§ * _loc6_;
         if(!isNaN(this.§0"M§))
         {
            _loc10_ = this.§0"M§;
            if(!isNaN(this.§%z§))
            {
               _loc10_ += this.§%z§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§%!§.red;
         _loc11_.green = this.§%!§.green;
         _loc11_.blue = this.§%!§.blue;
         _loc11_.alpha = this.§%!§.alpha;
         if(this.§;r§.red != 0)
         {
            _loc11_.red += this.§;r§.red * (Math.random() * 2 - 1);
         }
         if(this.§;r§.green != 0)
         {
            _loc11_.green += this.§;r§.green * (Math.random() * 2 - 1);
         }
         if(this.§;r§.blue != 0)
         {
            _loc11_.blue += this.§;r§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;r§.alpha != 0)
         {
            _loc11_.alpha += this.§;r§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§0R§.red;
         var _loc14_:Number = this.§0R§.green;
         var _loc15_:Number = this.§0R§.blue;
         var _loc16_:Number = this.§0R§.alpha;
         if(this.§`p§.red != 0)
         {
            _loc13_ += this.§`p§.red * (Math.random() * 2 - 1);
         }
         if(this.§`p§.green != 0)
         {
            _loc14_ += this.§`p§.green * (Math.random() * 2 - 1);
         }
         if(this.§`p§.blue != 0)
         {
            _loc15_ += this.§`p§.blue * (Math.random() * 2 - 1);
         }
         if(this.§`p§.alpha != 0)
         {
            _loc16_ += this.§`p§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§!!k§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§4!3§ - _loc3_.§42§)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§42§ += param2;
         if(this.§0_§ == this.§?a§)
         {
            if(!_loc3_.skipUpdate || !this.§]b§)
            {
               if(this.§]b§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §8!f§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §@!J§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§'O§)
               {
                  _loc3_.§42§ = _loc3_.§4!3§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§]b§)
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
               if(this.§]b§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§>J§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§4x§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§>J§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§4x§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§]b§)
         {
            if(this.§]b§)
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
      
      private function §""6§(param1:XML, param2:Texture) : void
      {
         this.§ !h§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§1!@§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§>J§ = parseFloat(param1.gravity.attribute("x"));
         this.§4x§ = parseFloat(param1.gravity.attribute("y"));
         this.§0_§ = this.§+!t§(param1.emitterType);
         this.§#!@§ = this.§+!t§(param1.maxParticles);
         this.§@!N§ = Math.max(0.01,this.§;!!§(param1.particleLifeSpan));
         this.§%,§ = this.§;!!§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§[G§ = this.§;!!§(param1.particleInterval);
         }
         else
         {
            this.§[G§ = 0;
         }
         this.§^"M§ = this.§;!!§(param1.startParticleSize);
         this.§]!e§ = this.§^"M§ * param2.height / param2.width;
         this.§'!3§ = this.§;!!§(param1.startParticleSizeVariance);
         this.§&3§ = this.§'!3§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§^"M§ = this.§;!!§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§'!3§ = this.§;!!§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§]!e§ = this.§;!!§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§&3§ = this.§;!!§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§0S§ = this.§;!!§(param1.finishParticleSize);
            this.§0"M§ = this.§0S§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§[n§ = this.§;!!§(param1.FinishParticleSizeVariance);
            this.§%z§ = this.§[n§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§0S§ = this.§;!!§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§[n§ = this.§;!!§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§0"M§ = this.§;!!§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§%z§ = this.§;!!§(param1.FinishParticleSizeVarianceY);
         }
         this.§ !l§ = deg2rad(this.§;!!§(param1.angle));
         this.§,6§ = deg2rad(this.§;!!§(param1.angleVariance));
         this.§?E§ = this.§;!!§(param1.speed);
         this.§7W§ = this.§;!!§(param1.speedVariance);
         this.§2!r§ = this.§;!!§(param1.radialAcceleration);
         this.§]"C§ = this.§;!!§(param1.tangentialAcceleration);
         this.§8" § = this.§;!!§(param1.maxRadius);
         this.§8"8§ = this.§;!!§(param1.maxRadiusVariance);
         this.§'O§ = this.§;!!§(param1.minRadius);
         this.§[5§ = deg2rad(this.§;!!§(param1.rotatePerSecond));
         this.§?!b§ = deg2rad(this.§;!!§(param1.rotatePerSecondVariance));
         this.§%!§ = this.§9"O§(param1.startColor);
         this.§;r§ = this.§9"O§(param1.startColorVariance);
         this.§0R§ = this.§9"O§(param1.finishColor);
         this.§`p§ = this.§9"O§(param1.finishColorVariance);
         §!!]§ = this.§7!4§(param1.blendFuncSource);
         §9S§ = this.§7!4§(param1.blendFuncDestination);
         §%J§ = this.§-w§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §&!H§ = this.§;!!§(param1.emissionVariance);
         }
      }
      
      protected function §+!t§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §;!!§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%!%§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9"O§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §7!4§(param1:XMLList) : String
      {
         var _loc2_:int = this.§+!t§(param1);
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
      
      protected function §-w§(param1:XMLList) : String
      {
         var _loc2_:String = this.§%!%§(param1);
         if(_loc2_ == §^M§.§#§ || _loc2_ == §^M§.§2"C§ || _loc2_ == §^M§.NONE)
         {
            return _loc2_;
         }
         return §^M§.§#§;
      }
   }
}

import §3">§.§!!k§;

class PDParticle extends §!!k§
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
