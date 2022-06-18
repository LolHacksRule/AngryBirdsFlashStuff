package §var §
{
   import §1#§.§7!@§;
   import §1#§.Texture;
   import §@!E§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §^!K§
   {
       
      
      private const §"G§:int = 0;
      
      private const §1'§:int = 1;
      
      private var §"]§:Number;
      
      private var §"7§:int;
      
      private var §"L§:Number;
      
      private var §,F§:Number;
      
      private var §=!>§:int;
      
      private var §9!%§:Number;
      
      private var final:Number;
      
      private var §#J§:Number;
      
      private var §,w§:Number;
      
      private var §]g§:Number;
      
      private var §8!=§:Number;
      
      private var §!7§:Number;
      
      private var §%6§:Number;
      
      private var §%!@§:Number;
      
      private var §27§:Number;
      
      private var §"X§:Number;
      
      private var §4U§:Number;
      
      private var §<R§:Number;
      
      private var §^§:Number;
      
      private var §&n§:Number;
      
      private var §?!%§:Number;
      
      private var §@H§:Number;
      
      private var §`!J§:Number;
      
      private var §!!C§:Number;
      
      private var §3Y§:Number;
      
      private var §#k§:Number;
      
      private var § !>§:Number;
      
      private var §0!7§:Number;
      
      private var §=a§:Number;
      
      private var §@N§:Number;
      
      private var §[G§:Number;
      
      private var §2[§:ColorArgb;
      
      private var §%!'§:ColorArgb;
      
      private var §?!#§:ColorArgb;
      
      private var §"C§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§4!§(param1,param2);
         var _loc3_:Number = this.§=!>§ / (this.§9!%§ + this.§#J§);
         super(param2,_loc3_,this.§=!>§,§1J§,§1[§);
         §%!2§ = false;
      }
      
      public function get §%!3§() : int
      {
         return this.§=!>§;
      }
      
      override protected function createParticle() : §;G§
      {
         return new PDParticle();
      }
      
      private function get §9!O§() : Boolean
      {
         return this.§%!3§ >= 20;
      }
      
      override protected function initParticle(param1:§;G§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§9!%§ + this.final * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§ do§ = _loc3_;
         _loc2_.x = § for§ + this.§"L§ * (Math.random() * 2 - 1);
         _loc2_.y = §>+§ + this.§,F§ * (Math.random() * 2 - 1);
         _loc2_.startX = § for§;
         _loc2_.startY = §>+§;
         var _loc4_:Number = this.§4U§ + this.§<R§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§^§ + this.§&n§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§ !>§ + this.§0!7§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§ !>§ / _loc3_;
         _loc2_.rotation = this.§4U§ + this.§<R§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§@N§ + this.§[G§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§`!J§;
         _loc2_.tangentialAcceleration = this.§3Y§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§,w§ + this.§]g§ * _loc6_;
         if(!isNaN(this.§%6§))
         {
            _loc8_ = this.§%6§;
            if(!isNaN(this.§%!@§))
            {
               _loc8_ += this.§%!@§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§8!=§ + this.§!7§ * _loc6_;
         if(!isNaN(this.§27§))
         {
            _loc10_ = this.§27§;
            if(!isNaN(this.§"X§))
            {
               _loc10_ += this.§"X§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§2[§.red;
         _loc11_.green = this.§2[§.green;
         _loc11_.blue = this.§2[§.blue;
         _loc11_.alpha = this.§2[§.alpha;
         if(this.§%!'§.red != 0)
         {
            _loc11_.red += this.§%!'§.red * (Math.random() * 2 - 1);
         }
         if(this.§%!'§.green != 0)
         {
            _loc11_.green += this.§%!'§.green * (Math.random() * 2 - 1);
         }
         if(this.§%!'§.blue != 0)
         {
            _loc11_.blue += this.§%!'§.blue * (Math.random() * 2 - 1);
         }
         if(this.§%!'§.alpha != 0)
         {
            _loc11_.alpha += this.§%!'§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§?!#§.red;
         var _loc14_:Number = this.§?!#§.green;
         var _loc15_:Number = this.§?!#§.blue;
         var _loc16_:Number = this.§?!#§.alpha;
         if(this.§"C§.red != 0)
         {
            _loc13_ += this.§"C§.red * (Math.random() * 2 - 1);
         }
         if(this.§"C§.green != 0)
         {
            _loc14_ += this.§"C§.green * (Math.random() * 2 - 1);
         }
         if(this.§"C§.blue != 0)
         {
            _loc15_ += this.§"C§.blue * (Math.random() * 2 - 1);
         }
         if(this.§"C§.alpha != 0)
         {
            _loc16_ += this.§"C§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§;G§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§ do§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§"7§ == this.§1'§)
         {
            if(!_loc3_.skipUpdate || !this.§9!O§)
            {
               if(this.§9!O§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = § for§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §>+§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§=a§)
               {
                  _loc3_.currentTime = _loc3_.§ do§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§9!O§)
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
               if(this.§9!O§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§?!%§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§@H§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§?!%§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§@H§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§9!O§)
         {
            if(this.§9!O§)
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
      
      private function §4!§(param1:XML, param2:Texture) : void
      {
         this.§"L§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§,F§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§?!%§ = parseFloat(param1.gravity.attribute("x"));
         this.§@H§ = parseFloat(param1.gravity.attribute("y"));
         this.§"7§ = this.§@-§(param1.emitterType);
         this.§=!>§ = this.§@-§(param1.maxParticles);
         this.§9!%§ = Math.max(0.01,this.§ !6§(param1.particleLifeSpan));
         this.final = this.§ !6§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§#J§ = this.§ !6§(param1.particleInterval);
         }
         else
         {
            this.§#J§ = 0;
         }
         this.§,w§ = this.§ !6§(param1.startParticleSize);
         this.§8!=§ = this.§,w§ * param2.height / param2.width;
         this.§]g§ = this.§ !6§(param1.startParticleSizeVariance);
         this.§!7§ = this.§]g§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§,w§ = this.§ !6§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§]g§ = this.§ !6§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§8!=§ = this.§ !6§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§!7§ = this.§ !6§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§%6§ = this.§ !6§(param1.finishParticleSize);
            this.§27§ = this.§%6§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§%!@§ = this.§ !6§(param1.FinishParticleSizeVariance);
            this.§"X§ = this.§%!@§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§%6§ = this.§ !6§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§%!@§ = this.§ !6§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§27§ = this.§ !6§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§"X§ = this.§ !6§(param1.FinishParticleSizeVarianceY);
         }
         this.§4U§ = deg2rad(this.§ !6§(param1.angle));
         this.§<R§ = deg2rad(this.§ !6§(param1.angleVariance));
         this.§^§ = this.§ !6§(param1.speed);
         this.§&n§ = this.§ !6§(param1.speedVariance);
         this.§`!J§ = this.§ !6§(param1.radialAcceleration);
         this.§3Y§ = this.§ !6§(param1.tangentialAcceleration);
         this.§ !>§ = this.§ !6§(param1.maxRadius);
         this.§0!7§ = this.§ !6§(param1.maxRadiusVariance);
         this.§=a§ = this.§ !6§(param1.minRadius);
         this.§@N§ = deg2rad(this.§ !6§(param1.rotatePerSecond));
         this.§[G§ = deg2rad(this.§ !6§(param1.rotatePerSecondVariance));
         this.§2[§ = this.§]i§(param1.startColor);
         this.§%!'§ = this.§]i§(param1.startColorVariance);
         this.§?!#§ = this.§]i§(param1.finishColor);
         this.§"C§ = this.§]i§(param1.finishColorVariance);
         §1J§ = this.§#!3§(param1.blendFuncSource);
         §1[§ = this.§#!3§(param1.blendFuncDestination);
         §"!1§ = this.§"?§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §]a§ = this.§ !6§(param1.emissionVariance);
         }
      }
      
      protected function §@-§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function § !6§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §0'§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §]i§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §#!3§(param1:XMLList) : String
      {
         var _loc2_:int = this.§@-§(param1);
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
      
      protected function §"?§(param1:XMLList) : String
      {
         var _loc2_:String = this.§0'§(param1);
         if(_loc2_ == §7!@§.§=!C§ || _loc2_ == §7!@§.§#n§ || _loc2_ == §7!@§.NONE)
         {
            return _loc2_;
         }
         return §7!@§.§=!C§;
      }
   }
}

import §var §.§;G§;

class PDParticle extends §;G§
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
