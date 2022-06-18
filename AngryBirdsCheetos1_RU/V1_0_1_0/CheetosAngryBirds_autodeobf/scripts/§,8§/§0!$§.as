package §,8§
{
   import §%W§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   import §switch§.Texture;
   import §switch§.§[&§;
   
   public class §0!$§ extends §=<§
   {
       
      
      private const §'I§:int = 0;
      
      private const §"S§:int = 1;
      
      private var §3j§:Number;
      
      private var §@=§:int;
      
      private var §,K§:Number;
      
      private var §2S§:Number;
      
      private var §<a§:int;
      
      private var §<G§:Number;
      
      private var §#X§:Number;
      
      private var §&O§:Number;
      
      private var §1f§:Number;
      
      private var §3o§:Number;
      
      private var §!!§:Number;
      
      private var §#!@§:Number;
      
      private var §^?§:Number;
      
      private var §3`§:Number;
      
      private var §0!?§:Number;
      
      private var §^!=§:Number;
      
      private var §0!a§:Number;
      
      private var §@!G§:Number;
      
      private var §9_§:Number;
      
      private var §2K§:Number;
      
      private var §`!G§:Number;
      
      private var §;s§:Number;
      
      private var §9x§:Number;
      
      private var §?E§:Number;
      
      private var §&!!§:Number;
      
      private var §3!?§:Number;
      
      private var §%F§:Number;
      
      private var §?B§:Number;
      
      private var §1I§:Number;
      
      private var §2v§:Number;
      
      private var §7u§:Number;
      
      private var §,!a§:ColorArgb;
      
      private var §]!%§:ColorArgb;
      
      private var §"Q§:ColorArgb;
      
      private var §,!"§:ColorArgb;
      
      public function §0!$§(param1:XML, param2:Texture)
      {
         this.§-<§(param1,param2);
         var _loc3_:Number = this.§<a§ / (this.§<G§ + this.§&O§);
         super(param2,_loc3_,this.§<a§,§@!'§,§+!+§);
         §<$§ = false;
      }
      
      public function get §+2§() : int
      {
         return this.§<a§;
      }
      
      override protected function createParticle() : § !"§
      {
         return new PDParticle();
      }
      
      private function get §^w§() : Boolean
      {
         return this.§+2§ >= 20;
      }
      
      override protected function initParticle(param1:§ !"§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§<G§ + this.§#X§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§&§ = 0;
         _loc2_.§!5§ = _loc3_;
         _loc2_.x = §#h§ + this.§,K§ * (Math.random() * 2 - 1);
         _loc2_.y = §?X§ + this.§2S§ * (Math.random() * 2 - 1);
         _loc2_.startX = §#h§;
         _loc2_.startY = §?X§;
         var _loc4_:Number = this.§0!a§ + this.§@!G§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§9_§ + this.§2K§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§%F§ + this.§?B§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§%F§ / _loc3_;
         _loc2_.rotation = this.§0!a§ + this.§@!G§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§2v§ + this.§7u§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§9x§;
         _loc2_.tangentialAcceleration = this.§&!!§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§1f§ + this.§3o§ * _loc6_;
         if(!isNaN(this.§^?§))
         {
            _loc8_ = this.§^?§;
            if(!isNaN(this.§3`§))
            {
               _loc8_ += this.§3`§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§!!§ + this.§#!@§ * _loc6_;
         if(!isNaN(this.§0!?§))
         {
            _loc10_ = this.§0!?§;
            if(!isNaN(this.§^!=§))
            {
               _loc10_ += this.§^!=§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§,!a§.red;
         _loc11_.green = this.§,!a§.green;
         _loc11_.blue = this.§,!a§.blue;
         _loc11_.alpha = this.§,!a§.alpha;
         if(this.§]!%§.red != 0)
         {
            _loc11_.red += this.§]!%§.red * (Math.random() * 2 - 1);
         }
         if(this.§]!%§.green != 0)
         {
            _loc11_.green += this.§]!%§.green * (Math.random() * 2 - 1);
         }
         if(this.§]!%§.blue != 0)
         {
            _loc11_.blue += this.§]!%§.blue * (Math.random() * 2 - 1);
         }
         if(this.§]!%§.alpha != 0)
         {
            _loc11_.alpha += this.§]!%§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§"Q§.red;
         var _loc14_:Number = this.§"Q§.green;
         var _loc15_:Number = this.§"Q§.blue;
         var _loc16_:Number = this.§"Q§.alpha;
         if(this.§,!"§.red != 0)
         {
            _loc13_ += this.§,!"§.red * (Math.random() * 2 - 1);
         }
         if(this.§,!"§.green != 0)
         {
            _loc14_ += this.§,!"§.green * (Math.random() * 2 - 1);
         }
         if(this.§,!"§.blue != 0)
         {
            _loc15_ += this.§,!"§.blue * (Math.random() * 2 - 1);
         }
         if(this.§,!"§.alpha != 0)
         {
            _loc16_ += this.§,!"§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§ !"§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§!5§ - _loc3_.§&§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§&§ += param2;
         if(this.§@=§ == this.§"S§)
         {
            if(!_loc3_.skipUpdate || !this.§^w§)
            {
               if(this.§^w§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §#h§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §?X§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§1I§)
               {
                  _loc3_.§&§ = _loc3_.§!5§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§^w§)
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
               if(this.§^w§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§`!G§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§;s§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§`!G§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§;s§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§^w§)
         {
            if(this.§^w§)
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
      
      private function §-<§(param1:XML, param2:Texture) : void
      {
         this.§,K§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§2S§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§`!G§ = parseFloat(param1.gravity.attribute("x"));
         this.§;s§ = parseFloat(param1.gravity.attribute("y"));
         this.§@=§ = this.§-e§(param1.emitterType);
         this.§<a§ = this.§-e§(param1.maxParticles);
         this.§<G§ = Math.max(0.01,this.§=B§(param1.particleLifeSpan));
         this.§#X§ = this.§=B§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§&O§ = this.§=B§(param1.particleInterval);
         }
         else
         {
            this.§&O§ = 0;
         }
         this.§1f§ = this.§=B§(param1.startParticleSize);
         this.§!!§ = this.§1f§ * param2.height / param2.width;
         this.§3o§ = this.§=B§(param1.startParticleSizeVariance);
         this.§#!@§ = this.§3o§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§1f§ = this.§=B§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§3o§ = this.§=B§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§!!§ = this.§=B§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§#!@§ = this.§=B§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§^?§ = this.§=B§(param1.finishParticleSize);
            this.§0!?§ = this.§^?§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§3`§ = this.§=B§(param1.FinishParticleSizeVariance);
            this.§^!=§ = this.§3`§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§^?§ = this.§=B§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§3`§ = this.§=B§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§0!?§ = this.§=B§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§^!=§ = this.§=B§(param1.FinishParticleSizeVarianceY);
         }
         this.§0!a§ = deg2rad(this.§=B§(param1.angle));
         this.§@!G§ = deg2rad(this.§=B§(param1.angleVariance));
         this.§9_§ = this.§=B§(param1.speed);
         this.§2K§ = this.§=B§(param1.speedVariance);
         this.§9x§ = this.§=B§(param1.radialAcceleration);
         this.§&!!§ = this.§=B§(param1.tangentialAcceleration);
         this.§%F§ = this.§=B§(param1.maxRadius);
         this.§?B§ = this.§=B§(param1.maxRadiusVariance);
         this.§1I§ = this.§=B§(param1.minRadius);
         this.§2v§ = deg2rad(this.§=B§(param1.rotatePerSecond));
         this.§7u§ = deg2rad(this.§=B§(param1.rotatePerSecondVariance));
         this.§,!a§ = this.§]?§(param1.startColor);
         this.§]!%§ = this.§]?§(param1.startColorVariance);
         this.§"Q§ = this.§]?§(param1.finishColor);
         this.§,!"§ = this.§]?§(param1.finishColorVariance);
         §@!'§ = this.§@!;§(param1.blendFuncSource);
         §+!+§ = this.§@!;§(param1.blendFuncDestination);
         §4#§ = this.§]!C§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §?[§ = this.§=B§(param1.emissionVariance);
         }
      }
      
      protected function §-e§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §=B§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §>!9§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §]?§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §@!;§(param1:XMLList) : String
      {
         var _loc2_:int = this.§-e§(param1);
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
      
      protected function §]!C§(param1:XMLList) : String
      {
         var _loc2_:String = this.§>!9§(param1);
         if(_loc2_ == §[&§.§47§ || _loc2_ == §[&§.native || _loc2_ == §[&§.NONE)
         {
            return _loc2_;
         }
         return §[&§.§47§;
      }
   }
}

import §,8§.§ !"§;

class PDParticle extends § !"§
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
