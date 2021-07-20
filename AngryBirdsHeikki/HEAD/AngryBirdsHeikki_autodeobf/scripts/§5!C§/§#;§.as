package §5!C§
{
   import §!!S§.§5!T§;
   import §!!S§.Texture;
   import §`>§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §#;§ extends §]?§
   {
       
      
      private const §38§:int = 0;
      
      private const §8!c§:int = 1;
      
      private var §3!K§:Number;
      
      private var §<!O§:int;
      
      private var §3N§:Number;
      
      private var §1-§:Number;
      
      private var §6!g§:int;
      
      private var §=!9§:Number;
      
      private var §,^§:Number;
      
      private var §5F§:Number;
      
      private var §9W§:Number;
      
      private var §&J§:Number;
      
      private var § !G§:Number;
      
      private var §`U§:Number;
      
      private var §];§:Number;
      
      private var §>!P§:Number;
      
      private var §&!B§:Number;
      
      private var §]!>§:Number;
      
      private var §?n§:Number;
      
      private var §<Q§:Number;
      
      private var §8!#§:Number;
      
      private var §2W§:Number;
      
      private var §`R§:Number;
      
      private var §7!d§:Number;
      
      private var §0Q§:Number;
      
      private var §1j§:Number;
      
      private var §!'§:Number;
      
      private var §&r§:Number;
      
      private var §][§:Number;
      
      private var §;! §:Number;
      
      private var §5!§:Number;
      
      private var §'9§:Number;
      
      private var §;!=§:Number;
      
      private var §,!O§:ColorArgb;
      
      private var §;!d§:ColorArgb;
      
      private var §]!`§:ColorArgb;
      
      private var §<y§:ColorArgb;
      
      public function §#;§(param1:XML, param2:Texture)
      {
         this.§4C§(param1,param2);
         var _loc3_:Number = this.§6!g§ / (this.§=!9§ + this.§5F§);
         super(param2,_loc3_,this.§6!g§,§4!9§,§=I§);
         §3!M§ = false;
      }
      
      public function get §;!$§() : int
      {
         return this.§6!g§;
      }
      
      override protected function createParticle() : §<b§
      {
         return new PDParticle();
      }
      
      private function get §<!N§() : Boolean
      {
         return this.§;!$§ >= 20;
      }
      
      override protected function initParticle(param1:§<b§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§=!9§ + this.§,^§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§-v§ = 0;
         _loc2_.§1!M§ = _loc3_;
         _loc2_.x = §%!P§ + this.§3N§ * (Math.random() * 2 - 1);
         _loc2_.y = §&!'§ + this.§1-§ * (Math.random() * 2 - 1);
         _loc2_.startX = §%!P§;
         _loc2_.startY = §&!'§;
         var _loc4_:Number = this.§?n§ + this.§<Q§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§8!#§ + this.§2W§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§][§ + this.§;! § * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§][§ / _loc3_;
         _loc2_.rotation = this.§?n§ + this.§<Q§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§'9§ + this.§;!=§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§0Q§;
         _loc2_.tangentialAcceleration = this.§!'§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§9W§ + this.§&J§ * _loc6_;
         if(!isNaN(this.§];§))
         {
            _loc8_ = this.§];§;
            if(!isNaN(this.§>!P§))
            {
               _loc8_ += this.§>!P§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§ !G§ + this.§`U§ * _loc6_;
         if(!isNaN(this.§&!B§))
         {
            _loc10_ = this.§&!B§;
            if(!isNaN(this.§]!>§))
            {
               _loc10_ += this.§]!>§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§,!O§.red;
         _loc11_.green = this.§,!O§.green;
         _loc11_.blue = this.§,!O§.blue;
         _loc11_.alpha = this.§,!O§.alpha;
         if(this.§;!d§.red != 0)
         {
            _loc11_.red += this.§;!d§.red * (Math.random() * 2 - 1);
         }
         if(this.§;!d§.green != 0)
         {
            _loc11_.green += this.§;!d§.green * (Math.random() * 2 - 1);
         }
         if(this.§;!d§.blue != 0)
         {
            _loc11_.blue += this.§;!d§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;!d§.alpha != 0)
         {
            _loc11_.alpha += this.§;!d§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§]!`§.red;
         var _loc14_:Number = this.§]!`§.green;
         var _loc15_:Number = this.§]!`§.blue;
         var _loc16_:Number = this.§]!`§.alpha;
         if(this.§<y§.red != 0)
         {
            _loc13_ += this.§<y§.red * (Math.random() * 2 - 1);
         }
         if(this.§<y§.green != 0)
         {
            _loc14_ += this.§<y§.green * (Math.random() * 2 - 1);
         }
         if(this.§<y§.blue != 0)
         {
            _loc15_ += this.§<y§.blue * (Math.random() * 2 - 1);
         }
         if(this.§<y§.alpha != 0)
         {
            _loc16_ += this.§<y§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§<b§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§1!M§ - _loc3_.§-v§)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§-v§ += param2;
         if(this.§<!O§ == this.§8!c§)
         {
            if(!_loc3_.skipUpdate || !this.§<!N§)
            {
               if(this.§<!N§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §%!P§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §&!'§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§5!§)
               {
                  _loc3_.§-v§ = _loc3_.§1!M§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§<!N§)
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
               if(this.§<!N§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§`R§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§7!d§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§`R§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§7!d§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§<!N§)
         {
            if(this.§<!N§)
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
      
      private function §4C§(param1:XML, param2:Texture) : void
      {
         this.§3N§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§1-§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§`R§ = parseFloat(param1.gravity.attribute("x"));
         this.§7!d§ = parseFloat(param1.gravity.attribute("y"));
         this.§<!O§ = this.§"3§(param1.emitterType);
         this.§6!g§ = this.§"3§(param1.maxParticles);
         this.§=!9§ = Math.max(0.01,this.§-!,§(param1.particleLifeSpan));
         this.§,^§ = this.§-!,§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§5F§ = this.§-!,§(param1.particleInterval);
         }
         else
         {
            this.§5F§ = 0;
         }
         this.§9W§ = this.§-!,§(param1.startParticleSize);
         this.§ !G§ = this.§9W§ * param2.height / param2.width;
         this.§&J§ = this.§-!,§(param1.startParticleSizeVariance);
         this.§`U§ = this.§&J§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§9W§ = this.§-!,§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§&J§ = this.§-!,§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§ !G§ = this.§-!,§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§`U§ = this.§-!,§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§];§ = this.§-!,§(param1.finishParticleSize);
            this.§&!B§ = this.§];§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§>!P§ = this.§-!,§(param1.FinishParticleSizeVariance);
            this.§]!>§ = this.§>!P§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§];§ = this.§-!,§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§>!P§ = this.§-!,§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§&!B§ = this.§-!,§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§]!>§ = this.§-!,§(param1.FinishParticleSizeVarianceY);
         }
         this.§?n§ = deg2rad(this.§-!,§(param1.angle));
         this.§<Q§ = deg2rad(this.§-!,§(param1.angleVariance));
         this.§8!#§ = this.§-!,§(param1.speed);
         this.§2W§ = this.§-!,§(param1.speedVariance);
         this.§0Q§ = this.§-!,§(param1.radialAcceleration);
         this.§!'§ = this.§-!,§(param1.tangentialAcceleration);
         this.§][§ = this.§-!,§(param1.maxRadius);
         this.§;! § = this.§-!,§(param1.maxRadiusVariance);
         this.§5!§ = this.§-!,§(param1.minRadius);
         this.§'9§ = deg2rad(this.§-!,§(param1.rotatePerSecond));
         this.§;!=§ = deg2rad(this.§-!,§(param1.rotatePerSecondVariance));
         this.§,!O§ = this.§^>§(param1.startColor);
         this.§;!d§ = this.§^>§(param1.startColorVariance);
         this.§]!`§ = this.§^>§(param1.finishColor);
         this.§<y§ = this.§^>§(param1.finishColorVariance);
         §4!9§ = this.§!8§(param1.blendFuncSource);
         §=I§ = this.§!8§(param1.blendFuncDestination);
         §7!V§ = this.§7g§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §1!%§ = this.§-!,§(param1.emissionVariance);
         }
      }
      
      protected function §"3§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §-!,§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §],§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §^>§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §!8§(param1:XMLList) : String
      {
         var _loc2_:int = this.§"3§(param1);
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
      
      protected function §7g§(param1:XMLList) : String
      {
         var _loc2_:String = this.§],§(param1);
         if(_loc2_ == §5!T§.§7!2§ || _loc2_ == §5!T§.§[i§ || _loc2_ == §5!T§.NONE)
         {
            return _loc2_;
         }
         return §5!T§.§7!2§;
      }
   }
}

import §5!C§.§<b§;

class PDParticle extends §<b§
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
