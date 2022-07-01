package §!C§
{
   import §1Q§.deg2rad;
   import §6s§.§<O§;
   import §6s§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §!!c§ extends §!!y§
   {
       
      
      private const §2!G§:int = 0;
      
      private const §7"§:int = 1;
      
      private var §%M§:Number;
      
      private var §^"1§:int;
      
      private var §1!N§:Number;
      
      private var §0! §:Number;
      
      private var §0!1§:int;
      
      private var §-8§:Number;
      
      private var §;!M§:Number;
      
      private var §%'§:Number;
      
      private var §'!u§:Number;
      
      private var §<u§:Number;
      
      private var § "1§:Number;
      
      private var §>W§:Number;
      
      private var §23§:Number;
      
      private var §1!K§:Number;
      
      private var §]!w§:Number;
      
      private var §'!G§:Number;
      
      private var §4Q§:Number;
      
      private var §6!6§:Number;
      
      private var §<L§:Number;
      
      private var §;w§:Number;
      
      private var §7I§:Number;
      
      private var §,!-§:Number;
      
      private var §9F§:Number;
      
      private var §5u§:Number;
      
      private var §%0§:Number;
      
      private var §@$§:Number;
      
      private var §5!g§:Number;
      
      private var §`P§:Number;
      
      private var § " §:Number;
      
      private var §#C§:Number;
      
      private var §['§:Number;
      
      private var §-!,§:ColorArgb;
      
      private var §3!'§:ColorArgb;
      
      private var §4J§:ColorArgb;
      
      private var §`!Y§:ColorArgb;
      
      public function §!!c§(param1:XML, param2:Texture)
      {
         this.§ §(param1,param2);
         var _loc3_:Number = this.§0!1§ / (this.§-8§ + this.§%'§);
         super(param2,_loc3_,this.§0!1§,§5<§,§?!P§);
         §="%§ = false;
      }
      
      public function get §6T§() : int
      {
         return this.§0!1§;
      }
      
      override protected function createParticle() : §8§
      {
         return new PDParticle();
      }
      
      private function get §'s§() : Boolean
      {
         return this.§6T§ >= 20;
      }
      
      override protected function initParticle(param1:§8§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§-8§ + this.§;!M§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§#4§ = 0;
         _loc2_.§8a§ = _loc3_;
         _loc2_.x = §=k§ + this.§1!N§ * (Math.random() * 2 - 1);
         _loc2_.y = §2!I§ + this.§0! § * (Math.random() * 2 - 1);
         _loc2_.startX = §=k§;
         _loc2_.startY = §2!I§;
         var _loc4_:Number = this.§4Q§ + this.§6!6§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§<L§ + this.§;w§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§5!g§ + this.§`P§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§5!g§ / _loc3_;
         _loc2_.rotation = this.§4Q§ + this.§6!6§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#C§ + this.§['§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§9F§;
         _loc2_.tangentialAcceleration = this.§%0§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§'!u§ + this.§<u§ * _loc6_;
         if(!isNaN(this.§23§))
         {
            _loc8_ = this.§23§;
            if(!isNaN(this.§1!K§))
            {
               _loc8_ += this.§1!K§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§ "1§ + this.§>W§ * _loc6_;
         if(!isNaN(this.§]!w§))
         {
            _loc10_ = this.§]!w§;
            if(!isNaN(this.§'!G§))
            {
               _loc10_ += this.§'!G§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§-!,§.red;
         _loc11_.green = this.§-!,§.green;
         _loc11_.blue = this.§-!,§.blue;
         _loc11_.alpha = this.§-!,§.alpha;
         if(this.§3!'§.red != 0)
         {
            _loc11_.red += this.§3!'§.red * (Math.random() * 2 - 1);
         }
         if(this.§3!'§.green != 0)
         {
            _loc11_.green += this.§3!'§.green * (Math.random() * 2 - 1);
         }
         if(this.§3!'§.blue != 0)
         {
            _loc11_.blue += this.§3!'§.blue * (Math.random() * 2 - 1);
         }
         if(this.§3!'§.alpha != 0)
         {
            _loc11_.alpha += this.§3!'§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§4J§.red;
         var _loc14_:Number = this.§4J§.green;
         var _loc15_:Number = this.§4J§.blue;
         var _loc16_:Number = this.§4J§.alpha;
         if(this.§`!Y§.red != 0)
         {
            _loc13_ += this.§`!Y§.red * (Math.random() * 2 - 1);
         }
         if(this.§`!Y§.green != 0)
         {
            _loc14_ += this.§`!Y§.green * (Math.random() * 2 - 1);
         }
         if(this.§`!Y§.blue != 0)
         {
            _loc15_ += this.§`!Y§.blue * (Math.random() * 2 - 1);
         }
         if(this.§`!Y§.alpha != 0)
         {
            _loc16_ += this.§`!Y§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§8§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§8a§ - _loc3_.§#4§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§#4§ += param2;
         if(this.§^"1§ == this.§7"§)
         {
            if(!_loc3_.skipUpdate || !this.§'s§)
            {
               if(this.§'s§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=k§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2!I§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§ " §)
               {
                  _loc3_.§#4§ = _loc3_.§8a§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§'s§)
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
               if(this.§'s§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§7I§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§,!-§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§7I§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§,!-§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§'s§)
         {
            if(this.§'s§)
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
      
      private function § §(param1:XML, param2:Texture) : void
      {
         this.§1!N§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§0! § = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§7I§ = parseFloat(param1.gravity.attribute("x"));
         this.§,!-§ = parseFloat(param1.gravity.attribute("y"));
         this.§^"1§ = this.§10§(param1.emitterType);
         this.§0!1§ = this.§10§(param1.maxParticles);
         this.§-8§ = Math.max(0.01,this.§2p§(param1.particleLifeSpan));
         this.§;!M§ = this.§2p§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§%'§ = this.§2p§(param1.particleInterval);
         }
         else
         {
            this.§%'§ = 0;
         }
         this.§'!u§ = this.§2p§(param1.startParticleSize);
         this.§ "1§ = this.§'!u§ * param2.height / param2.width;
         this.§<u§ = this.§2p§(param1.startParticleSizeVariance);
         this.§>W§ = this.§<u§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§'!u§ = this.§2p§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§<u§ = this.§2p§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§ "1§ = this.§2p§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§>W§ = this.§2p§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§23§ = this.§2p§(param1.finishParticleSize);
            this.§]!w§ = this.§23§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§1!K§ = this.§2p§(param1.FinishParticleSizeVariance);
            this.§'!G§ = this.§1!K§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§23§ = this.§2p§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§1!K§ = this.§2p§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§]!w§ = this.§2p§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§'!G§ = this.§2p§(param1.FinishParticleSizeVarianceY);
         }
         this.§4Q§ = deg2rad(this.§2p§(param1.angle));
         this.§6!6§ = deg2rad(this.§2p§(param1.angleVariance));
         this.§<L§ = this.§2p§(param1.speed);
         this.§;w§ = this.§2p§(param1.speedVariance);
         this.§9F§ = this.§2p§(param1.radialAcceleration);
         this.§%0§ = this.§2p§(param1.tangentialAcceleration);
         this.§5!g§ = this.§2p§(param1.maxRadius);
         this.§`P§ = this.§2p§(param1.maxRadiusVariance);
         this.§ " § = this.§2p§(param1.minRadius);
         this.§#C§ = deg2rad(this.§2p§(param1.rotatePerSecond));
         this.§['§ = deg2rad(this.§2p§(param1.rotatePerSecondVariance));
         this.§-!,§ = this.§0"4§(param1.startColor);
         this.§3!'§ = this.§0"4§(param1.startColorVariance);
         this.§4J§ = this.§0"4§(param1.finishColor);
         this.§`!Y§ = this.§0"4§(param1.finishColorVariance);
         §5<§ = this.§<!M§(param1.blendFuncSource);
         §?!P§ = this.§<!M§(param1.blendFuncDestination);
         §2+§ = this.§["+§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §6"&§ = this.§2p§(param1.emissionVariance);
         }
      }
      
      protected function §10§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §2p§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%l§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §0"4§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §<!M§(param1:XMLList) : String
      {
         var _loc2_:int = this.§10§(param1);
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
      
      protected function §["+§(param1:XMLList) : String
      {
         var _loc2_:String = this.§%l§(param1);
         if(_loc2_ == §<O§.§9!I§ || _loc2_ == §<O§.§`!"§ || _loc2_ == §<O§.NONE)
         {
            return _loc2_;
         }
         return §<O§.§9!I§;
      }
   }
}

import §!C§.§8§;

class PDParticle extends §8§
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
