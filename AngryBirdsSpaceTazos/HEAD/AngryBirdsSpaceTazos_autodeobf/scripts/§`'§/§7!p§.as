package §`'§
{
   import §6!5§.deg2rad;
   import §9"@§.§2"=§;
   import §9"@§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §7!p§ extends §3!]§
   {
       
      
      private const §1@§:int = 0;
      
      private const §<!B§:int = 1;
      
      private var §+N§:Number;
      
      private var §#!G§:int;
      
      private var §`!^§:Number;
      
      private var §""-§:Number;
      
      private var §["5§:int;
      
      private var §8A§:Number;
      
      private var §8&§:Number;
      
      private var §?!g§:Number;
      
      private var §3d§:Number;
      
      private var §;!j§:Number;
      
      private var §!5§:Number;
      
      private var §^"5§:Number;
      
      private var §>k§:Number;
      
      private var §^!a§:Number;
      
      private var § do§:Number;
      
      private var §8m§:Number;
      
      private var §&s§:Number;
      
      private var §-!"§:Number;
      
      private var §`"%§:Number;
      
      private var §-!B§:Number;
      
      private var §#W§:Number;
      
      private var §"!L§:Number;
      
      private var §&W§:Number;
      
      private var §]!M§:Number;
      
      private var §<;§:Number;
      
      private var §?!>§:Number;
      
      private var §6!;§:Number;
      
      private var §2!6§:Number;
      
      private var §6!y§:Number;
      
      private var §#;§:Number;
      
      private var §>V§:Number;
      
      private var §<I§:ColorArgb;
      
      private var §+!Y§:ColorArgb;
      
      private var §8!;§:ColorArgb;
      
      private var §'"#§:ColorArgb;
      
      public function §7!p§(param1:XML, param2:Texture)
      {
         this.§ d§(param1,param2);
         var _loc3_:Number = this.§["5§ / (this.§8A§ + this.§?!g§);
         super(param2,_loc3_,this.§["5§,§;!M§,§-!z§);
         §>"7§ = false;
      }
      
      public function get §2>§() : int
      {
         return this.§["5§;
      }
      
      override protected function createParticle() : §0"@§
      {
         return new PDParticle();
      }
      
      private function get §0"%§() : Boolean
      {
         return this.§2>§ >= 20;
      }
      
      override protected function initParticle(param1:§0"@§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§8A§ + this.§8&§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§ !C§ = 0;
         _loc2_.§3!T§ = _loc3_;
         _loc2_.x = §+![§ + this.§`!^§ * (Math.random() * 2 - 1);
         _loc2_.y = §?N§ + this.§""-§ * (Math.random() * 2 - 1);
         _loc2_.startX = §+![§;
         _loc2_.startY = §?N§;
         var _loc4_:Number = this.§&s§ + this.§-!"§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§`"%§ + this.§-!B§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§6!;§ + this.§2!6§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§6!;§ / _loc3_;
         _loc2_.rotation = this.§&s§ + this.§-!"§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#;§ + this.§>V§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§&W§;
         _loc2_.tangentialAcceleration = this.§<;§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§3d§ + this.§;!j§ * _loc6_;
         if(!isNaN(this.§>k§))
         {
            _loc8_ = this.§>k§;
            if(!isNaN(this.§^!a§))
            {
               _loc8_ += this.§^!a§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§!5§ + this.§^"5§ * _loc6_;
         if(!isNaN(this.§ do§))
         {
            _loc10_ = this.§ do§;
            if(!isNaN(this.§8m§))
            {
               _loc10_ += this.§8m§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§<I§.red;
         _loc11_.green = this.§<I§.green;
         _loc11_.blue = this.§<I§.blue;
         _loc11_.alpha = this.§<I§.alpha;
         if(this.§+!Y§.red != 0)
         {
            _loc11_.red += this.§+!Y§.red * (Math.random() * 2 - 1);
         }
         if(this.§+!Y§.green != 0)
         {
            _loc11_.green += this.§+!Y§.green * (Math.random() * 2 - 1);
         }
         if(this.§+!Y§.blue != 0)
         {
            _loc11_.blue += this.§+!Y§.blue * (Math.random() * 2 - 1);
         }
         if(this.§+!Y§.alpha != 0)
         {
            _loc11_.alpha += this.§+!Y§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§8!;§.red;
         var _loc14_:Number = this.§8!;§.green;
         var _loc15_:Number = this.§8!;§.blue;
         var _loc16_:Number = this.§8!;§.alpha;
         if(this.§'"#§.red != 0)
         {
            _loc13_ += this.§'"#§.red * (Math.random() * 2 - 1);
         }
         if(this.§'"#§.green != 0)
         {
            _loc14_ += this.§'"#§.green * (Math.random() * 2 - 1);
         }
         if(this.§'"#§.blue != 0)
         {
            _loc15_ += this.§'"#§.blue * (Math.random() * 2 - 1);
         }
         if(this.§'"#§.alpha != 0)
         {
            _loc16_ += this.§'"#§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§0"@§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§3!T§ - _loc3_.§ !C§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§ !C§ += param2;
         if(this.§#!G§ == this.§<!B§)
         {
            if(!_loc3_.skipUpdate || !this.§0"%§)
            {
               if(this.§0"%§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §+![§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §?N§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§6!y§)
               {
                  _loc3_.§ !C§ = _loc3_.§3!T§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§0"%§)
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
               if(this.§0"%§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§#W§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§"!L§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§#W§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§"!L§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§0"%§)
         {
            if(this.§0"%§)
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
      
      private function § d§(param1:XML, param2:Texture) : void
      {
         this.§`!^§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§""-§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§#W§ = parseFloat(param1.gravity.attribute("x"));
         this.§"!L§ = parseFloat(param1.gravity.attribute("y"));
         this.§#!G§ = this.§#_§(param1.emitterType);
         this.§["5§ = this.§#_§(param1.maxParticles);
         this.§8A§ = Math.max(0.01,this.§6!S§(param1.particleLifeSpan));
         this.§8&§ = this.§6!S§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§?!g§ = this.§6!S§(param1.particleInterval);
         }
         else
         {
            this.§?!g§ = 0;
         }
         this.§3d§ = this.§6!S§(param1.startParticleSize);
         this.§!5§ = this.§3d§ * param2.height / param2.width;
         this.§;!j§ = this.§6!S§(param1.startParticleSizeVariance);
         this.§^"5§ = this.§;!j§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§3d§ = this.§6!S§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§;!j§ = this.§6!S§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§!5§ = this.§6!S§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§^"5§ = this.§6!S§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§>k§ = this.§6!S§(param1.finishParticleSize);
            this.§ do§ = this.§>k§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§^!a§ = this.§6!S§(param1.FinishParticleSizeVariance);
            this.§8m§ = this.§^!a§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§>k§ = this.§6!S§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§^!a§ = this.§6!S§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§ do§ = this.§6!S§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§8m§ = this.§6!S§(param1.FinishParticleSizeVarianceY);
         }
         this.§&s§ = deg2rad(this.§6!S§(param1.angle));
         this.§-!"§ = deg2rad(this.§6!S§(param1.angleVariance));
         this.§`"%§ = this.§6!S§(param1.speed);
         this.§-!B§ = this.§6!S§(param1.speedVariance);
         this.§&W§ = this.§6!S§(param1.radialAcceleration);
         this.§<;§ = this.§6!S§(param1.tangentialAcceleration);
         this.§6!;§ = this.§6!S§(param1.maxRadius);
         this.§2!6§ = this.§6!S§(param1.maxRadiusVariance);
         this.§6!y§ = this.§6!S§(param1.minRadius);
         this.§#;§ = deg2rad(this.§6!S§(param1.rotatePerSecond));
         this.§>V§ = deg2rad(this.§6!S§(param1.rotatePerSecondVariance));
         this.§<I§ = this.§]!v§(param1.startColor);
         this.§+!Y§ = this.§]!v§(param1.startColorVariance);
         this.§8!;§ = this.§]!v§(param1.finishColor);
         this.§'"#§ = this.§]!v§(param1.finishColorVariance);
         §;!M§ = this.§9!0§(param1.blendFuncSource);
         §-!z§ = this.§9!0§(param1.blendFuncDestination);
         §#" § = this.§,e§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            § !v§ = this.§6!S§(param1.emissionVariance);
         }
      }
      
      protected function §#_§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6!S§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §`!c§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §]!v§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §9!0§(param1:XMLList) : String
      {
         var _loc2_:int = this.§#_§(param1);
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
      
      protected function §,e§(param1:XMLList) : String
      {
         var _loc2_:String = this.§`!c§(param1);
         if(_loc2_ == §2"=§.§%"?§ || _loc2_ == §2"=§.§6!w§ || _loc2_ == §2"=§.NONE)
         {
            return _loc2_;
         }
         return §2"=§.§%"?§;
      }
   }
}

import §`'§.§0"@§;

class PDParticle extends §0"@§
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
