package §>!H§
{
   import §,G§.deg2rad;
   import §7!=§.§<V§;
   import §7!=§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §;N§
   {
       
      
      private const §"U§:int = 0;
      
      private const §=!E§:int = 1;
      
      private var §7t§:Number;
      
      private var §<X§:int;
      
      private var §[!0§:Number;
      
      private var §2#§:Number;
      
      private var §8@§:int;
      
      private var §?A§:Number;
      
      private var §0,§:Number;
      
      private var § get§:Number;
      
      private var §7D§:Number;
      
      private var §`l§:Number;
      
      private var §in§:Number;
      
      private var § h§:Number;
      
      private var §30§:Number;
      
      private var §7K§:Number;
      
      private var §7!>§:Number;
      
      private var § U§:Number;
      
      private var §^Z§:Number;
      
      private var §!b§:Number;
      
      private var §#A§:Number;
      
      private var §3E§:Number;
      
      private var §>G§:Number;
      
      private var §'k§:Number;
      
      private var §>0§:Number;
      
      private var §"!$§:Number;
      
      private var §;L§:Number;
      
      private var §&=§:Number;
      
      private var §-!6§:Number;
      
      private var §<!2§:Number;
      
      private var §^'§:Number;
      
      private var §7S§:Number;
      
      private var §-^§:Number;
      
      private var §1M§:ColorArgb;
      
      private var §'!H§:ColorArgb;
      
      private var §%!F§:ColorArgb;
      
      private var § !§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§,=§(param1,param2);
         var _loc3_:Number = this.§8@§ / (this.§?A§ + this.§ get§);
         super(param2,_loc3_,this.§8@§,§5d§,§7&§);
         §7M§ = false;
      }
      
      public function get §>m§() : int
      {
         return this.§8@§;
      }
      
      override protected function createParticle() : §<J§
      {
         return new PDParticle();
      }
      
      private function get §4r§() : Boolean
      {
         return this.§>m§ >= 20;
      }
      
      override protected function initParticle(param1:§<J§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§?A§ + this.§0,§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§2S§ = _loc3_;
         _loc2_.x = §0=§ + this.§[!0§ * (Math.random() * 2 - 1);
         _loc2_.y = §9E§ + this.§2#§ * (Math.random() * 2 - 1);
         _loc2_.startX = §0=§;
         _loc2_.startY = §9E§;
         var _loc4_:Number = this.§^Z§ + this.§!b§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§#A§ + this.§3E§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§-!6§ + this.§<!2§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§-!6§ / _loc3_;
         _loc2_.rotation = this.§^Z§ + this.§!b§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§7S§ + this.§-^§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§>0§;
         _loc2_.tangentialAcceleration = this.§;L§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§7D§ + this.§`l§ * _loc6_;
         if(!isNaN(this.§30§))
         {
            _loc8_ = this.§30§;
            if(!isNaN(this.§7K§))
            {
               _loc8_ += this.§7K§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§in§ + this.§ h§ * _loc6_;
         if(!isNaN(this.§7!>§))
         {
            _loc10_ = this.§7!>§;
            if(!isNaN(this.§ U§))
            {
               _loc10_ += this.§ U§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§1M§.red;
         _loc11_.green = this.§1M§.green;
         _loc11_.blue = this.§1M§.blue;
         _loc11_.alpha = this.§1M§.alpha;
         if(this.§'!H§.red != 0)
         {
            _loc11_.red += this.§'!H§.red * (Math.random() * 2 - 1);
         }
         if(this.§'!H§.green != 0)
         {
            _loc11_.green += this.§'!H§.green * (Math.random() * 2 - 1);
         }
         if(this.§'!H§.blue != 0)
         {
            _loc11_.blue += this.§'!H§.blue * (Math.random() * 2 - 1);
         }
         if(this.§'!H§.alpha != 0)
         {
            _loc11_.alpha += this.§'!H§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§%!F§.red;
         var _loc14_:Number = this.§%!F§.green;
         var _loc15_:Number = this.§%!F§.blue;
         var _loc16_:Number = this.§%!F§.alpha;
         if(this.§ !§.red != 0)
         {
            _loc13_ += this.§ !§.red * (Math.random() * 2 - 1);
         }
         if(this.§ !§.green != 0)
         {
            _loc14_ += this.§ !§.green * (Math.random() * 2 - 1);
         }
         if(this.§ !§.blue != 0)
         {
            _loc15_ += this.§ !§.blue * (Math.random() * 2 - 1);
         }
         if(this.§ !§.alpha != 0)
         {
            _loc16_ += this.§ !§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§<J§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§2S§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§<X§ == this.§=!E§)
         {
            if(!_loc3_.skipUpdate || !this.§4r§)
            {
               if(this.§4r§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §0=§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §9E§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§^'§)
               {
                  _loc3_.currentTime = _loc3_.§2S§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§4r§)
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
               if(this.§4r§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§>G§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§'k§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§>G§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§'k§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§4r§)
         {
            if(this.§4r§)
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
      
      private function §,=§(param1:XML, param2:Texture) : void
      {
         this.§[!0§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§2#§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§>G§ = parseFloat(param1.gravity.attribute("x"));
         this.§'k§ = parseFloat(param1.gravity.attribute("y"));
         this.§<X§ = this.§`!1§(param1.emitterType);
         this.§8@§ = this.§`!1§(param1.maxParticles);
         this.§?A§ = Math.max(0.01,this.§@[§(param1.particleLifeSpan));
         this.§0,§ = this.§@[§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§ get§ = this.§@[§(param1.particleInterval);
         }
         else
         {
            this.§ get§ = 0;
         }
         this.§7D§ = this.§@[§(param1.startParticleSize);
         this.§in§ = this.§7D§ * param2.height / param2.width;
         this.§`l§ = this.§@[§(param1.startParticleSizeVariance);
         this.§ h§ = this.§`l§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§7D§ = this.§@[§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`l§ = this.§@[§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§in§ = this.§@[§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§ h§ = this.§@[§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§30§ = this.§@[§(param1.finishParticleSize);
            this.§7!>§ = this.§30§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§7K§ = this.§@[§(param1.FinishParticleSizeVariance);
            this.§ U§ = this.§7K§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§30§ = this.§@[§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§7K§ = this.§@[§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§7!>§ = this.§@[§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§ U§ = this.§@[§(param1.FinishParticleSizeVarianceY);
         }
         this.§^Z§ = deg2rad(this.§@[§(param1.angle));
         this.§!b§ = deg2rad(this.§@[§(param1.angleVariance));
         this.§#A§ = this.§@[§(param1.speed);
         this.§3E§ = this.§@[§(param1.speedVariance);
         this.§>0§ = this.§@[§(param1.radialAcceleration);
         this.§;L§ = this.§@[§(param1.tangentialAcceleration);
         this.§-!6§ = this.§@[§(param1.maxRadius);
         this.§<!2§ = this.§@[§(param1.maxRadiusVariance);
         this.§^'§ = this.§@[§(param1.minRadius);
         this.§7S§ = deg2rad(this.§@[§(param1.rotatePerSecond));
         this.§-^§ = deg2rad(this.§@[§(param1.rotatePerSecondVariance));
         this.§1M§ = this.§?6§(param1.startColor);
         this.§'!H§ = this.§?6§(param1.startColorVariance);
         this.§%!F§ = this.§?6§(param1.finishColor);
         this.§ !§ = this.§?6§(param1.finishColorVariance);
         §5d§ = this.§3!§(param1.blendFuncSource);
         §7&§ = this.§3!§(param1.blendFuncDestination);
         §@>§ = this.§7w§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §"!C§ = this.§@[§(param1.emissionVariance);
         }
      }
      
      protected function §`!1§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@[§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §6l§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?6§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §3!§(param1:XMLList) : String
      {
         var _loc2_:int = this.§`!1§(param1);
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
      
      protected function §7w§(param1:XMLList) : String
      {
         var _loc2_:String = this.§6l§(param1);
         if(_loc2_ == §<V§.§4s§ || _loc2_ == §<V§.§2'§ || _loc2_ == §<V§.NONE)
         {
            return _loc2_;
         }
         return §<V§.§4s§;
      }
   }
}

import §>!H§.§<J§;

class PDParticle extends §<J§
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
