package §!!I§
{
   import §;! §.deg2rad;
   import §]!B§.§1!;§;
   import §]!B§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §`[§ extends §2!7§
   {
       
      
      private const §catch§:int = 0;
      
      private const §+v§:int = 1;
      
      private var §0w§:Number;
      
      private var §[7§:int;
      
      private var §2x§:Number;
      
      private var §7!#§:Number;
      
      private var § u§:int;
      
      private var §4^§:Number;
      
      private var §?!=§:Number;
      
      private var §import§:Number;
      
      private var §7!O§:Number;
      
      private var §!!G§:Number;
      
      private var §'!4§:Number;
      
      private var §-A§:Number;
      
      private var §6!]§:Number;
      
      private var §,!S§:Number;
      
      private var §<!'§:Number;
      
      private var §=k§:Number;
      
      private var §"!V§:Number;
      
      private var §3Y§:Number;
      
      private var §0t§:Number;
      
      private var §4!C§:Number;
      
      private var §<d§:Number;
      
      private var §7Q§:Number;
      
      private var §`!3§:Number;
      
      private var §^!;§:Number;
      
      private var §?!0§:Number;
      
      private var §'!R§:Number;
      
      private var §3o§:Number;
      
      private var §^!=§:Number;
      
      private var §<4§:Number;
      
      private var §4!X§:Number;
      
      private var §6!R§:Number;
      
      private var §,L§:ColorArgb;
      
      private var §=@§:ColorArgb;
      
      private var §0c§:ColorArgb;
      
      private var §9I§:ColorArgb;
      
      public function §`[§(param1:XML, param2:Texture)
      {
         this.§2!<§(param1,param2);
         var _loc3_:Number = this.§ u§ / (this.§4^§ + this.§import§);
         super(param2,_loc3_,this.§ u§,§0S§,§[! §);
         §'!P§ = false;
      }
      
      public function get §9!1§() : int
      {
         return this.§ u§;
      }
      
      override protected function createParticle() : §^!7§
      {
         return new PDParticle();
      }
      
      private function get §[^§() : Boolean
      {
         return this.§9!1§ >= 20;
      }
      
      override protected function initParticle(param1:§^!7§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§4^§ + this.§?!=§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§[m§ = 0;
         _loc2_.§,l§ = _loc3_;
         _loc2_.x = §`N§ + this.§2x§ * (Math.random() * 2 - 1);
         _loc2_.y = §2+§ + this.§7!#§ * (Math.random() * 2 - 1);
         _loc2_.startX = §`N§;
         _loc2_.startY = §2+§;
         var _loc4_:Number = this.§"!V§ + this.§3Y§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§0t§ + this.§4!C§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§3o§ + this.§^!=§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§3o§ / _loc3_;
         _loc2_.rotation = this.§"!V§ + this.§3Y§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§4!X§ + this.§6!R§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§`!3§;
         _loc2_.tangentialAcceleration = this.§?!0§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§7!O§ + this.§!!G§ * _loc6_;
         if(!isNaN(this.§6!]§))
         {
            _loc8_ = this.§6!]§;
            if(!isNaN(this.§,!S§))
            {
               _loc8_ += this.§,!S§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§'!4§ + this.§-A§ * _loc6_;
         if(!isNaN(this.§<!'§))
         {
            _loc10_ = this.§<!'§;
            if(!isNaN(this.§=k§))
            {
               _loc10_ += this.§=k§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§,L§.red;
         _loc11_.green = this.§,L§.green;
         _loc11_.blue = this.§,L§.blue;
         _loc11_.alpha = this.§,L§.alpha;
         if(this.§=@§.red != 0)
         {
            _loc11_.red += this.§=@§.red * (Math.random() * 2 - 1);
         }
         if(this.§=@§.green != 0)
         {
            _loc11_.green += this.§=@§.green * (Math.random() * 2 - 1);
         }
         if(this.§=@§.blue != 0)
         {
            _loc11_.blue += this.§=@§.blue * (Math.random() * 2 - 1);
         }
         if(this.§=@§.alpha != 0)
         {
            _loc11_.alpha += this.§=@§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§0c§.red;
         var _loc14_:Number = this.§0c§.green;
         var _loc15_:Number = this.§0c§.blue;
         var _loc16_:Number = this.§0c§.alpha;
         if(this.§9I§.red != 0)
         {
            _loc13_ += this.§9I§.red * (Math.random() * 2 - 1);
         }
         if(this.§9I§.green != 0)
         {
            _loc14_ += this.§9I§.green * (Math.random() * 2 - 1);
         }
         if(this.§9I§.blue != 0)
         {
            _loc15_ += this.§9I§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9I§.alpha != 0)
         {
            _loc16_ += this.§9I§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§^!7§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,l§ - _loc3_.§[m§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§[m§ += param2;
         if(this.§[7§ == this.§+v§)
         {
            if(!_loc3_.skipUpdate || !this.§[^§)
            {
               if(this.§[^§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §`N§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2+§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§<4§)
               {
                  _loc3_.§[m§ = _loc3_.§,l§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§[^§)
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
               if(this.§[^§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§<d§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§7Q§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§<d§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§7Q§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§[^§)
         {
            if(this.§[^§)
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
      
      private function §2!<§(param1:XML, param2:Texture) : void
      {
         this.§2x§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§7!#§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§<d§ = parseFloat(param1.gravity.attribute("x"));
         this.§7Q§ = parseFloat(param1.gravity.attribute("y"));
         this.§[7§ = this.§#Q§(param1.emitterType);
         this.§ u§ = this.§#Q§(param1.maxParticles);
         this.§4^§ = Math.max(0.01,this.§1h§(param1.particleLifeSpan));
         this.§?!=§ = this.§1h§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§import§ = this.§1h§(param1.particleInterval);
         }
         else
         {
            this.§import§ = 0;
         }
         this.§7!O§ = this.§1h§(param1.startParticleSize);
         this.§'!4§ = this.§7!O§ * param2.height / param2.width;
         this.§!!G§ = this.§1h§(param1.startParticleSizeVariance);
         this.§-A§ = this.§!!G§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§7!O§ = this.§1h§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§!!G§ = this.§1h§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§'!4§ = this.§1h§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§-A§ = this.§1h§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§6!]§ = this.§1h§(param1.finishParticleSize);
            this.§<!'§ = this.§6!]§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§,!S§ = this.§1h§(param1.FinishParticleSizeVariance);
            this.§=k§ = this.§,!S§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§6!]§ = this.§1h§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§,!S§ = this.§1h§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§<!'§ = this.§1h§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§=k§ = this.§1h§(param1.FinishParticleSizeVarianceY);
         }
         this.§"!V§ = deg2rad(this.§1h§(param1.angle));
         this.§3Y§ = deg2rad(this.§1h§(param1.angleVariance));
         this.§0t§ = this.§1h§(param1.speed);
         this.§4!C§ = this.§1h§(param1.speedVariance);
         this.§`!3§ = this.§1h§(param1.radialAcceleration);
         this.§?!0§ = this.§1h§(param1.tangentialAcceleration);
         this.§3o§ = this.§1h§(param1.maxRadius);
         this.§^!=§ = this.§1h§(param1.maxRadiusVariance);
         this.§<4§ = this.§1h§(param1.minRadius);
         this.§4!X§ = deg2rad(this.§1h§(param1.rotatePerSecond));
         this.§6!R§ = deg2rad(this.§1h§(param1.rotatePerSecondVariance));
         this.§,L§ = this.§+;§(param1.startColor);
         this.§=@§ = this.§+;§(param1.startColorVariance);
         this.§0c§ = this.§+;§(param1.finishColor);
         this.§9I§ = this.§+;§(param1.finishColorVariance);
         §0S§ = this.§4!I§(param1.blendFuncSource);
         §[! § = this.§4!I§(param1.blendFuncDestination);
         §5f§ = this.§22§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §1G§ = this.§1h§(param1.emissionVariance);
         }
      }
      
      protected function §#Q§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §1h§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%h§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+;§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §4!I§(param1:XMLList) : String
      {
         var _loc2_:int = this.§#Q§(param1);
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
      
      protected function §22§(param1:XMLList) : String
      {
         var _loc2_:String = this.§%h§(param1);
         if(_loc2_ == §1!;§.§&@§ || _loc2_ == §1!;§.§>!7§ || _loc2_ == §1!;§.NONE)
         {
            return _loc2_;
         }
         return §1!;§.§&@§;
      }
   }
}

import §!!I§.§^!7§;

class PDParticle extends §^!7§
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
