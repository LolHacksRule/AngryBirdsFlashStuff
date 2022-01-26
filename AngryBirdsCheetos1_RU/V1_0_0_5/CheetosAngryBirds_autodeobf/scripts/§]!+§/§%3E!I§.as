package §]!+§
{
   import §-A§.Texture;
   import §-A§.§]!5§;
   import §;!,§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §>!I§ extends §!0§
   {
       
      
      private const §1!%§:int = 0;
      
      private const §1!I§:int = 1;
      
      private var §&s§:Number;
      
      private var §6!H§:int;
      
      private var §&!!§:Number;
      
      private var §8!=§:Number;
      
      private var §2"§:int;
      
      private var §<!C§:Number;
      
      private var §,f§:Number;
      
      private var §+^§:Number;
      
      private var §=!A§:Number;
      
      private var §5+§:Number;
      
      private var §,!1§:Number;
      
      private var §1M§:Number;
      
      private var §5!M§:Number;
      
      private var §?!§:Number;
      
      private var §6k§:Number;
      
      private var §^#§:Number;
      
      private var §"!=§:Number;
      
      private var §5!E§:Number;
      
      private var §!!!§:Number;
      
      private var §,!L§:Number;
      
      private var §,>§:Number;
      
      private var §"!"§:Number;
      
      private var §7!R§:Number;
      
      private var § in§:Number;
      
      private var §>!<§:Number;
      
      private var §,!Z§:Number;
      
      private var §@?§:Number;
      
      private var §<2§:Number;
      
      private var §8F§:Number;
      
      private var §&!W§:Number;
      
      private var §#H§:Number;
      
      private var §1!]§:ColorArgb;
      
      private var §!!D§:ColorArgb;
      
      private var §["§:ColorArgb;
      
      private var §!!C§:ColorArgb;
      
      public function §>!I§(param1:XML, param2:Texture)
      {
         this.§1!H§(param1,param2);
         var _loc3_:Number = this.§2"§ / (this.§<!C§ + this.§+^§);
         super(param2,_loc3_,this.§2"§,§^!2§,§2!V§);
         §-N§ = false;
      }
      
      public function get §3$§() : int
      {
         return this.§2"§;
      }
      
      override protected function createParticle() : §5r§
      {
         return new PDParticle();
      }
      
      private function get §+C§() : Boolean
      {
         return this.§3$§ >= 20;
      }
      
      override protected function initParticle(param1:§5r§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§<!C§ + this.§,f§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§]8§ = 0;
         _loc2_.§^!$§ = _loc3_;
         _loc2_.x = §^9§ + this.§&!!§ * (Math.random() * 2 - 1);
         _loc2_.y = §?%§ + this.§8!=§ * (Math.random() * 2 - 1);
         _loc2_.startX = §^9§;
         _loc2_.startY = §?%§;
         var _loc4_:Number = this.§"!=§ + this.§5!E§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§!!!§ + this.§,!L§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§@?§ + this.§<2§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§@?§ / _loc3_;
         _loc2_.rotation = this.§"!=§ + this.§5!E§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§&!W§ + this.§#H§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§7!R§;
         _loc2_.tangentialAcceleration = this.§>!<§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§=!A§ + this.§5+§ * _loc6_;
         if(!isNaN(this.§5!M§))
         {
            _loc8_ = this.§5!M§;
            if(!isNaN(this.§?!§))
            {
               _loc8_ += this.§?!§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§,!1§ + this.§1M§ * _loc6_;
         if(!isNaN(this.§6k§))
         {
            _loc10_ = this.§6k§;
            if(!isNaN(this.§^#§))
            {
               _loc10_ += this.§^#§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§1!]§.red;
         _loc11_.green = this.§1!]§.green;
         _loc11_.blue = this.§1!]§.blue;
         _loc11_.alpha = this.§1!]§.alpha;
         if(this.§!!D§.red != 0)
         {
            _loc11_.red += this.§!!D§.red * (Math.random() * 2 - 1);
         }
         if(this.§!!D§.green != 0)
         {
            _loc11_.green += this.§!!D§.green * (Math.random() * 2 - 1);
         }
         if(this.§!!D§.blue != 0)
         {
            _loc11_.blue += this.§!!D§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!!D§.alpha != 0)
         {
            _loc11_.alpha += this.§!!D§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§["§.red;
         var _loc14_:Number = this.§["§.green;
         var _loc15_:Number = this.§["§.blue;
         var _loc16_:Number = this.§["§.alpha;
         if(this.§!!C§.red != 0)
         {
            _loc13_ += this.§!!C§.red * (Math.random() * 2 - 1);
         }
         if(this.§!!C§.green != 0)
         {
            _loc14_ += this.§!!C§.green * (Math.random() * 2 - 1);
         }
         if(this.§!!C§.blue != 0)
         {
            _loc15_ += this.§!!C§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!!C§.alpha != 0)
         {
            _loc16_ += this.§!!C§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§5r§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§^!$§ - _loc3_.§]8§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§]8§ += param2;
         if(this.§6!H§ == this.§1!I§)
         {
            if(!_loc3_.skipUpdate || !this.§+C§)
            {
               if(this.§+C§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §^9§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §?%§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§8F§)
               {
                  _loc3_.§]8§ = _loc3_.§^!$§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§+C§)
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
               if(this.§+C§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§,>§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§"!"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§,>§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§"!"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§+C§)
         {
            if(this.§+C§)
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
      
      private function §1!H§(param1:XML, param2:Texture) : void
      {
         this.§&!!§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§8!=§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§,>§ = parseFloat(param1.gravity.attribute("x"));
         this.§"!"§ = parseFloat(param1.gravity.attribute("y"));
         this.§6!H§ = this.§8!>§(param1.emitterType);
         this.§2"§ = this.§8!>§(param1.maxParticles);
         this.§<!C§ = Math.max(0.01,this.§<!$§(param1.particleLifeSpan));
         this.§,f§ = this.§<!$§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§+^§ = this.§<!$§(param1.particleInterval);
         }
         else
         {
            this.§+^§ = 0;
         }
         this.§=!A§ = this.§<!$§(param1.startParticleSize);
         this.§,!1§ = this.§=!A§ * param2.height / param2.width;
         this.§5+§ = this.§<!$§(param1.startParticleSizeVariance);
         this.§1M§ = this.§5+§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§=!A§ = this.§<!$§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§5+§ = this.§<!$§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§,!1§ = this.§<!$§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§1M§ = this.§<!$§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§5!M§ = this.§<!$§(param1.finishParticleSize);
            this.§6k§ = this.§5!M§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§?!§ = this.§<!$§(param1.FinishParticleSizeVariance);
            this.§^#§ = this.§?!§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§5!M§ = this.§<!$§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§?!§ = this.§<!$§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§6k§ = this.§<!$§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§^#§ = this.§<!$§(param1.FinishParticleSizeVarianceY);
         }
         this.§"!=§ = deg2rad(this.§<!$§(param1.angle));
         this.§5!E§ = deg2rad(this.§<!$§(param1.angleVariance));
         this.§!!!§ = this.§<!$§(param1.speed);
         this.§,!L§ = this.§<!$§(param1.speedVariance);
         this.§7!R§ = this.§<!$§(param1.radialAcceleration);
         this.§>!<§ = this.§<!$§(param1.tangentialAcceleration);
         this.§@?§ = this.§<!$§(param1.maxRadius);
         this.§<2§ = this.§<!$§(param1.maxRadiusVariance);
         this.§8F§ = this.§<!$§(param1.minRadius);
         this.§&!W§ = deg2rad(this.§<!$§(param1.rotatePerSecond));
         this.§#H§ = deg2rad(this.§<!$§(param1.rotatePerSecondVariance));
         this.§1!]§ = this.§"!M§(param1.startColor);
         this.§!!D§ = this.§"!M§(param1.startColorVariance);
         this.§["§ = this.§"!M§(param1.finishColor);
         this.§!!C§ = this.§"!M§(param1.finishColorVariance);
         §^!2§ = this.§<!4§(param1.blendFuncSource);
         §2!V§ = this.§<!4§(param1.blendFuncDestination);
         §`!]§ = this.§#G§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §5!0§ = this.§<!$§(param1.emissionVariance);
         }
      }
      
      protected function §8!>§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §<!$§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §?H§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §"!M§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §<!4§(param1:XMLList) : String
      {
         var _loc2_:int = this.§8!>§(param1);
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
      
      protected function §#G§(param1:XMLList) : String
      {
         var _loc2_:String = this.§?H§(param1);
         if(_loc2_ == §]!5§.§'!E§ || _loc2_ == §]!5§.§+-§ || _loc2_ == §]!5§.NONE)
         {
            return _loc2_;
         }
         return §]!5§.§'!E§;
      }
   }
}

import §]!+§.§5r§;

class PDParticle extends §5r§
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
