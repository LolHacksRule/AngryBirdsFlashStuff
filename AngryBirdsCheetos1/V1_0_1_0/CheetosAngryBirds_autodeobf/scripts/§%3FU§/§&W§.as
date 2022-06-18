package §?U§
{
   import §2!-§.Texture;
   import §2!-§.§]!=§;
   import §<!M§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §&W§ extends §'!>§
   {
       
      
      private const §7O§:int = 0;
      
      private const §"!F§:int = 1;
      
      private var §>!N§:Number;
      
      private var §3!H§:int;
      
      private var §1]§:Number;
      
      private var §6;§:Number;
      
      private var §%!#§:int;
      
      private var §&3§:Number;
      
      private var §5`§:Number;
      
      private var §'t§:Number;
      
      private var §!,§:Number;
      
      private var §@!4§:Number;
      
      private var §9`§:Number;
      
      private var §%1§:Number;
      
      private var §=C§:Number;
      
      private var §=n§:Number;
      
      private var §2;§:Number;
      
      private var §'!C§:Number;
      
      private var §"!$§:Number;
      
      private var §]!V§:Number;
      
      private var §4!Y§:Number;
      
      private var §<!0§:Number;
      
      private var §9X§:Number;
      
      private var §`!B§:Number;
      
      private var §<!6§:Number;
      
      private var §6x§:Number;
      
      private var §5!G§:Number;
      
      private var §&+§:Number;
      
      private var §,z§:Number;
      
      private var §>!9§:Number;
      
      private var §-!!§:Number;
      
      private var §`!!§:Number;
      
      private var §default§:Number;
      
      private var §`!$§:ColorArgb;
      
      private var § !H§:ColorArgb;
      
      private var §-I§:ColorArgb;
      
      private var §63§:ColorArgb;
      
      public function §&W§(param1:XML, param2:Texture)
      {
         this.§#O§(param1,param2);
         var _loc3_:Number = this.§%!#§ / (this.§&3§ + this.§'t§);
         super(param2,_loc3_,this.§%!#§,§3!0§,§#!Z§);
         §<!8§ = false;
      }
      
      public function get §^m§() : int
      {
         return this.§%!#§;
      }
      
      override protected function createParticle() : §^&§
      {
         return new PDParticle();
      }
      
      private function get §34§() : Boolean
      {
         return this.§^m§ >= 20;
      }
      
      override protected function initParticle(param1:§^&§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§&3§ + this.§5`§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§>!Y§ = 0;
         _loc2_.§'"§ = _loc3_;
         _loc2_.x = §9H§ + this.§1]§ * (Math.random() * 2 - 1);
         _loc2_.y = §9!L§ + this.§6;§ * (Math.random() * 2 - 1);
         _loc2_.startX = §9H§;
         _loc2_.startY = §9!L§;
         var _loc4_:Number = this.§"!$§ + this.§]!V§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§4!Y§ + this.§<!0§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§,z§ + this.§>!9§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§,z§ / _loc3_;
         _loc2_.rotation = this.§"!$§ + this.§]!V§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§`!!§ + this.§default§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§<!6§;
         _loc2_.tangentialAcceleration = this.§5!G§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§!,§ + this.§@!4§ * _loc6_;
         if(!isNaN(this.§=C§))
         {
            _loc8_ = this.§=C§;
            if(!isNaN(this.§=n§))
            {
               _loc8_ += this.§=n§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§9`§ + this.§%1§ * _loc6_;
         if(!isNaN(this.§2;§))
         {
            _loc10_ = this.§2;§;
            if(!isNaN(this.§'!C§))
            {
               _loc10_ += this.§'!C§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§`!$§.red;
         _loc11_.green = this.§`!$§.green;
         _loc11_.blue = this.§`!$§.blue;
         _loc11_.alpha = this.§`!$§.alpha;
         if(this.§ !H§.red != 0)
         {
            _loc11_.red += this.§ !H§.red * (Math.random() * 2 - 1);
         }
         if(this.§ !H§.green != 0)
         {
            _loc11_.green += this.§ !H§.green * (Math.random() * 2 - 1);
         }
         if(this.§ !H§.blue != 0)
         {
            _loc11_.blue += this.§ !H§.blue * (Math.random() * 2 - 1);
         }
         if(this.§ !H§.alpha != 0)
         {
            _loc11_.alpha += this.§ !H§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§-I§.red;
         var _loc14_:Number = this.§-I§.green;
         var _loc15_:Number = this.§-I§.blue;
         var _loc16_:Number = this.§-I§.alpha;
         if(this.§63§.red != 0)
         {
            _loc13_ += this.§63§.red * (Math.random() * 2 - 1);
         }
         if(this.§63§.green != 0)
         {
            _loc14_ += this.§63§.green * (Math.random() * 2 - 1);
         }
         if(this.§63§.blue != 0)
         {
            _loc15_ += this.§63§.blue * (Math.random() * 2 - 1);
         }
         if(this.§63§.alpha != 0)
         {
            _loc16_ += this.§63§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§^&§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§'"§ - _loc3_.§>!Y§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§>!Y§ += param2;
         if(this.§3!H§ == this.§"!F§)
         {
            if(!_loc3_.skipUpdate || !this.§34§)
            {
               if(this.§34§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §9H§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §9!L§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§-!!§)
               {
                  _loc3_.§>!Y§ = _loc3_.§'"§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§34§)
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
               if(this.§34§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§9X§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`!B§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§9X§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`!B§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§34§)
         {
            if(this.§34§)
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
      
      private function §#O§(param1:XML, param2:Texture) : void
      {
         this.§1]§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§6;§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§9X§ = parseFloat(param1.gravity.attribute("x"));
         this.§`!B§ = parseFloat(param1.gravity.attribute("y"));
         this.§3!H§ = this.§4!W§(param1.emitterType);
         this.§%!#§ = this.§4!W§(param1.maxParticles);
         this.§&3§ = Math.max(0.01,this.§4!G§(param1.particleLifeSpan));
         this.§5`§ = this.§4!G§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§'t§ = this.§4!G§(param1.particleInterval);
         }
         else
         {
            this.§'t§ = 0;
         }
         this.§!,§ = this.§4!G§(param1.startParticleSize);
         this.§9`§ = this.§!,§ * param2.height / param2.width;
         this.§@!4§ = this.§4!G§(param1.startParticleSizeVariance);
         this.§%1§ = this.§@!4§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§!,§ = this.§4!G§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§@!4§ = this.§4!G§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§9`§ = this.§4!G§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§%1§ = this.§4!G§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§=C§ = this.§4!G§(param1.finishParticleSize);
            this.§2;§ = this.§=C§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§=n§ = this.§4!G§(param1.FinishParticleSizeVariance);
            this.§'!C§ = this.§=n§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§=C§ = this.§4!G§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§=n§ = this.§4!G§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§2;§ = this.§4!G§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§'!C§ = this.§4!G§(param1.FinishParticleSizeVarianceY);
         }
         this.§"!$§ = deg2rad(this.§4!G§(param1.angle));
         this.§]!V§ = deg2rad(this.§4!G§(param1.angleVariance));
         this.§4!Y§ = this.§4!G§(param1.speed);
         this.§<!0§ = this.§4!G§(param1.speedVariance);
         this.§<!6§ = this.§4!G§(param1.radialAcceleration);
         this.§5!G§ = this.§4!G§(param1.tangentialAcceleration);
         this.§,z§ = this.§4!G§(param1.maxRadius);
         this.§>!9§ = this.§4!G§(param1.maxRadiusVariance);
         this.§-!!§ = this.§4!G§(param1.minRadius);
         this.§`!!§ = deg2rad(this.§4!G§(param1.rotatePerSecond));
         this.§default§ = deg2rad(this.§4!G§(param1.rotatePerSecondVariance));
         this.§`!$§ = this.§3!R§(param1.startColor);
         this.§ !H§ = this.§3!R§(param1.startColorVariance);
         this.§-I§ = this.§3!R§(param1.finishColor);
         this.§63§ = this.§3!R§(param1.finishColorVariance);
         §3!0§ = this.§!!O§(param1.blendFuncSource);
         §#!Z§ = this.§!!O§(param1.blendFuncDestination);
         §52§ = this.§3!C§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            § !7§ = this.§4!G§(param1.emissionVariance);
         }
      }
      
      protected function §4!W§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §4!G§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §^!5§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §3!R§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §!!O§(param1:XMLList) : String
      {
         var _loc2_:int = this.§4!W§(param1);
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
      
      protected function §3!C§(param1:XMLList) : String
      {
         var _loc2_:String = this.§^!5§(param1);
         if(_loc2_ == §]!=§.§8]§ || _loc2_ == §]!=§.§=_§ || _loc2_ == §]!=§.NONE)
         {
            return _loc2_;
         }
         return §]!=§.§8]§;
      }
   }
}

import §?U§.§^&§;

class PDParticle extends §^&§
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
