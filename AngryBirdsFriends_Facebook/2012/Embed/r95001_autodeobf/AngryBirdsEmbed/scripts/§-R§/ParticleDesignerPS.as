package §-R§
{
   import §2!+§.deg2rad;
   import §<-§.§-t§;
   import §<-§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends § s§
   {
       
      
      private const § ^§:int = 0;
      
      private const §<7§:int = 1;
      
      private var §`a§:Number;
      
      private var §5!A§:int;
      
      private var §4`§:Number;
      
      private var §'E§:Number;
      
      private var §4$§:int;
      
      private var §60§:Number;
      
      private var §;!0§:Number;
      
      private var §6f§:Number;
      
      private var §18§:Number;
      
      private var §<l§:Number;
      
      private var §5w§:Number;
      
      private var §=F§:Number;
      
      private var §4!=§:Number;
      
      private var §>l§:Number;
      
      private var §?U§:Number;
      
      private var §0h§:Number;
      
      private var §&f§:Number;
      
      private var §continue§:Number;
      
      private var §<w§:Number;
      
      private var §<!1§:Number;
      
      private var §@w§:Number;
      
      private var §!!6§:Number;
      
      private var §>!0§:Number;
      
      private var §3!>§:Number;
      
      private var § l§:Number;
      
      private var §3H§:Number;
      
      private var §%8§:Number;
      
      private var §%!6§:Number;
      
      private var §%O§:Number;
      
      private var §&! §:Number;
      
      private var §;U§:Number;
      
      private var §2R§:ColorArgb;
      
      private var §`e§:ColorArgb;
      
      private var §#!!§:ColorArgb;
      
      private var §#!B§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§!V§(param1,param2);
         var _loc3_:Number = this.§4$§ / (this.§60§ + this.§6f§);
         super(param2,_loc3_,this.§4$§,§6!0§,§<e§);
         §4E§ = false;
      }
      
      public function get §?b§() : int
      {
         return this.§4$§;
      }
      
      override protected function createParticle() : §"v§
      {
         return new PDParticle();
      }
      
      private function get §^! §() : Boolean
      {
         return this.§?b§ >= 20;
      }
      
      override protected function initParticle(param1:§"v§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§60§ + this.§;!0§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§4U§ = _loc3_;
         _loc2_.x = §6Z§ + this.§4`§ * (Math.random() * 2 - 1);
         _loc2_.y = §&[§ + this.§'E§ * (Math.random() * 2 - 1);
         _loc2_.startX = §6Z§;
         _loc2_.startY = §&[§;
         var _loc4_:Number = this.§&f§ + this.§continue§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§<w§ + this.§<!1§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§%8§ + this.§%!6§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§%8§ / _loc3_;
         _loc2_.rotation = this.§&f§ + this.§continue§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§&! § + this.§;U§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§>!0§;
         _loc2_.tangentialAcceleration = this.§ l§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§18§ + this.§<l§ * _loc6_;
         if(!isNaN(this.§4!=§))
         {
            _loc8_ = this.§4!=§;
            if(!isNaN(this.§>l§))
            {
               _loc8_ += this.§>l§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§5w§ + this.§=F§ * _loc6_;
         if(!isNaN(this.§?U§))
         {
            _loc10_ = this.§?U§;
            if(!isNaN(this.§0h§))
            {
               _loc10_ += this.§0h§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§2R§.red;
         _loc11_.green = this.§2R§.green;
         _loc11_.blue = this.§2R§.blue;
         _loc11_.alpha = this.§2R§.alpha;
         if(this.§`e§.red != 0)
         {
            _loc11_.red += this.§`e§.red * (Math.random() * 2 - 1);
         }
         if(this.§`e§.green != 0)
         {
            _loc11_.green += this.§`e§.green * (Math.random() * 2 - 1);
         }
         if(this.§`e§.blue != 0)
         {
            _loc11_.blue += this.§`e§.blue * (Math.random() * 2 - 1);
         }
         if(this.§`e§.alpha != 0)
         {
            _loc11_.alpha += this.§`e§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§#!!§.red;
         var _loc14_:Number = this.§#!!§.green;
         var _loc15_:Number = this.§#!!§.blue;
         var _loc16_:Number = this.§#!!§.alpha;
         if(this.§#!B§.red != 0)
         {
            _loc13_ += this.§#!B§.red * (Math.random() * 2 - 1);
         }
         if(this.§#!B§.green != 0)
         {
            _loc14_ += this.§#!B§.green * (Math.random() * 2 - 1);
         }
         if(this.§#!B§.blue != 0)
         {
            _loc15_ += this.§#!B§.blue * (Math.random() * 2 - 1);
         }
         if(this.§#!B§.alpha != 0)
         {
            _loc16_ += this.§#!B§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§"v§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§4U§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§5!A§ == this.§<7§)
         {
            if(!_loc3_.skipUpdate || !this.§^! §)
            {
               if(this.§^! §)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §6Z§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §&[§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§%O§)
               {
                  _loc3_.currentTime = _loc3_.§4U§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§^! §)
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
               if(this.§^! §)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§@w§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§!!6§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§@w§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§!!6§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§^! §)
         {
            if(this.§^! §)
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
      
      private function §!V§(param1:XML, param2:Texture) : void
      {
         this.§4`§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§'E§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§@w§ = parseFloat(param1.gravity.attribute("x"));
         this.§!!6§ = parseFloat(param1.gravity.attribute("y"));
         this.§5!A§ = this.§72§(param1.emitterType);
         this.§4$§ = this.§72§(param1.maxParticles);
         this.§60§ = Math.max(0.01,this.§;-§(param1.particleLifeSpan));
         this.§;!0§ = this.§;-§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§6f§ = this.§;-§(param1.particleInterval);
         }
         else
         {
            this.§6f§ = 0;
         }
         this.§18§ = this.§;-§(param1.startParticleSize);
         this.§5w§ = this.§18§ * param2.height / param2.width;
         this.§<l§ = this.§;-§(param1.startParticleSizeVariance);
         this.§=F§ = this.§<l§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§18§ = this.§;-§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§<l§ = this.§;-§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§5w§ = this.§;-§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§=F§ = this.§;-§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§4!=§ = this.§;-§(param1.finishParticleSize);
            this.§?U§ = this.§4!=§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§>l§ = this.§;-§(param1.FinishParticleSizeVariance);
            this.§0h§ = this.§>l§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§4!=§ = this.§;-§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§>l§ = this.§;-§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§?U§ = this.§;-§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§0h§ = this.§;-§(param1.FinishParticleSizeVarianceY);
         }
         this.§&f§ = deg2rad(this.§;-§(param1.angle));
         this.§continue§ = deg2rad(this.§;-§(param1.angleVariance));
         this.§<w§ = this.§;-§(param1.speed);
         this.§<!1§ = this.§;-§(param1.speedVariance);
         this.§>!0§ = this.§;-§(param1.radialAcceleration);
         this.§ l§ = this.§;-§(param1.tangentialAcceleration);
         this.§%8§ = this.§;-§(param1.maxRadius);
         this.§%!6§ = this.§;-§(param1.maxRadiusVariance);
         this.§%O§ = this.§;-§(param1.minRadius);
         this.§&! § = deg2rad(this.§;-§(param1.rotatePerSecond));
         this.§;U§ = deg2rad(this.§;-§(param1.rotatePerSecondVariance));
         this.§2R§ = this.§-!'§(param1.startColor);
         this.§`e§ = this.§-!'§(param1.startColorVariance);
         this.§#!!§ = this.§-!'§(param1.finishColor);
         this.§#!B§ = this.§-!'§(param1.finishColorVariance);
         §6!0§ = this.§?N§(param1.blendFuncSource);
         §<e§ = this.§?N§(param1.blendFuncDestination);
         §1G§ = this.§8§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §;x§ = this.§;-§(param1.emissionVariance);
         }
      }
      
      protected function §72§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §;-§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §+!'§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §-!'§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §?N§(param1:XMLList) : String
      {
         var _loc2_:int = this.§72§(param1);
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
      
      protected function §8§(param1:XMLList) : String
      {
         var _loc2_:String = this.§+!'§(param1);
         if(_loc2_ == §-t§.§1!=§ || _loc2_ == §-t§.§&!7§ || _loc2_ == §-t§.NONE)
         {
            return _loc2_;
         }
         return §-t§.§1!=§;
      }
   }
}

import §-R§.§"v§;

class PDParticle extends §"v§
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
