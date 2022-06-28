package §4!<§
{
   import §7i§.§=!C§;
   import §7i§.Texture;
   import §8g§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §@!5§:int = 0;
      
      private const §;N§:int = 1;
      
      private var §63§:Number;
      
      private var §!!3§:int;
      
      private var §4!=§:Number;
      
      private var § !8§:Number;
      
      private var §-!Y§:int;
      
      private var §,k§:Number;
      
      private var §>M§:Number;
      
      private var §=6§:Number;
      
      private var §6x§:Number;
      
      private var §7!+§:Number;
      
      private var §7!c§:Number;
      
      private var §4!O§:Number;
      
      private var §,W§:Number;
      
      private var §9]§:Number;
      
      private var §9d§:Number;
      
      private var §9!E§:Number;
      
      private var §<u§:Number;
      
      private var §&!&§:Number;
      
      private var §8%§:Number;
      
      private var §;A§:Number;
      
      private var §+!g§:Number;
      
      private var §%!'§:Number;
      
      private var §-!<§:Number;
      
      private var §=e§:Number;
      
      private var §#!b§:Number;
      
      private var §>!D§:Number;
      
      private var §[!1§:Number;
      
      private var §%O§:Number;
      
      private var §;>§:Number;
      
      private var §%y§:Number;
      
      private var §[U§:Number;
      
      private var §-h§:ColorArgb;
      
      private var §;[§:ColorArgb;
      
      private var §>!O§:ColorArgb;
      
      private var §!o§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§^0§(param1,param2);
         var _loc3_:Number = this.§-!Y§ / (this.§,k§ + this.§=6§);
         super(param2,_loc3_,this.§-!Y§,§?`§,§@f§);
         §1y§ = false;
      }
      
      public function get §1p§() : int
      {
         return this.§-!Y§;
      }
      
      override protected function createParticle() : §0!W§
      {
         return new PDParticle();
      }
      
      private function get §46§() : Boolean
      {
         return this.§1p§ >= 20;
      }
      
      override protected function initParticle(param1:§0!W§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§,k§ + this.§>M§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§6§ = 0;
         _loc2_.§?!D§ = _loc3_;
         _loc2_.x = §]W§ + this.§4!=§ * (Math.random() * 2 - 1);
         _loc2_.y = §+!6§ + this.§ !8§ * (Math.random() * 2 - 1);
         _loc2_.startX = §]W§;
         _loc2_.startY = §+!6§;
         var _loc4_:Number = this.§<u§ + this.§&!&§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§8%§ + this.§;A§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§[!1§ + this.§%O§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§[!1§ / _loc3_;
         _loc2_.rotation = this.§<u§ + this.§&!&§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§%y§ + this.§[U§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§-!<§;
         _loc2_.tangentialAcceleration = this.§#!b§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number = this.§6x§ + this.§7!+§ * _loc6_;
         var _loc8_:Number = _loc7_;
         if(!isNaN(this.§,W§))
         {
            _loc8_ = this.§,W§;
            if(!isNaN(this.§9]§))
            {
               _loc8_ += this.§9]§ * (Math.random() * 2 - 1);
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
         var _loc9_:Number = this.§7!c§ + this.§4!O§ * _loc6_;
         var _loc10_:Number = _loc9_;
         if(!isNaN(this.§9d§))
         {
            _loc10_ = this.§9d§;
            if(!isNaN(this.§9!E§))
            {
               _loc10_ += this.§9!E§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§-h§.red;
         _loc11_.green = this.§-h§.green;
         _loc11_.blue = this.§-h§.blue;
         _loc11_.alpha = this.§-h§.alpha;
         if(this.§;[§.red != 0)
         {
            _loc11_.red += this.§;[§.red * (Math.random() * 2 - 1);
         }
         if(this.§;[§.green != 0)
         {
            _loc11_.green += this.§;[§.green * (Math.random() * 2 - 1);
         }
         if(this.§;[§.blue != 0)
         {
            _loc11_.blue += this.§;[§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;[§.alpha != 0)
         {
            _loc11_.alpha += this.§;[§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§>!O§.red;
         var _loc14_:Number = this.§>!O§.green;
         var _loc15_:Number = this.§>!O§.blue;
         var _loc16_:Number = this.§>!O§.alpha;
         if(this.§!o§.red != 0)
         {
            _loc13_ += this.§!o§.red * (Math.random() * 2 - 1);
         }
         if(this.§!o§.green != 0)
         {
            _loc14_ += this.§!o§.green * (Math.random() * 2 - 1);
         }
         if(this.§!o§.blue != 0)
         {
            _loc15_ += this.§!o§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!o§.alpha != 0)
         {
            _loc16_ += this.§!o§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§0!W§, param2:Number) : void
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
         var _loc4_:Number = _loc3_.§?!D§ - _loc3_.§6§;
         param2 = _loc4_ > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§6§ += param2;
         if(this.§!!3§ == this.§;N§)
         {
            if(!_loc3_.skipUpdate || !this.§46§)
            {
               if(this.§46§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §]W§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §+!6§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§;>§)
               {
                  _loc3_.§6§ = _loc3_.§?!D§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§46§)
            {
               _loc5_ = _loc3_.x - _loc3_.startX;
               _loc6_ = _loc3_.y - _loc3_.startY;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ < 0.01)
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
               if(this.§46§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§+!g§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§%!'§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§+!g§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§%!'§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§46§)
         {
            if(this.§46§)
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
      
      private function §^0§(param1:XML, param2:Texture) : void
      {
         this.§4!=§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§ !8§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§+!g§ = parseFloat(param1.gravity.attribute("x"));
         this.§%!'§ = parseFloat(param1.gravity.attribute("y"));
         this.§!!3§ = this.§@H§(param1.emitterType);
         this.§-!Y§ = this.§@H§(param1.maxParticles);
         this.§,k§ = Math.max(0.01,this.§]v§(param1.particleLifeSpan));
         this.§>M§ = this.§]v§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§=6§ = this.§]v§(param1.particleInterval);
         }
         else
         {
            this.§=6§ = 0;
         }
         this.§6x§ = this.§]v§(param1.startParticleSize);
         this.§7!c§ = this.§6x§ * param2.height / param2.width;
         this.§7!+§ = this.§]v§(param1.startParticleSizeVariance);
         this.§4!O§ = this.§7!+§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§6x§ = this.§]v§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§7!+§ = this.§]v§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§7!c§ = this.§]v§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§4!O§ = this.§]v§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§,W§ = this.§]v§(param1.finishParticleSize);
            this.§9d§ = this.§,W§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§9]§ = this.§]v§(param1.FinishParticleSizeVariance);
            this.§9!E§ = this.§9]§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§,W§ = this.§]v§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§9]§ = this.§]v§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§9d§ = this.§]v§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§9!E§ = this.§]v§(param1.FinishParticleSizeVarianceY);
         }
         this.§<u§ = deg2rad(this.§]v§(param1.angle));
         this.§&!&§ = deg2rad(this.§]v§(param1.angleVariance));
         this.§8%§ = this.§]v§(param1.speed);
         this.§;A§ = this.§]v§(param1.speedVariance);
         this.§-!<§ = this.§]v§(param1.radialAcceleration);
         this.§#!b§ = this.§]v§(param1.tangentialAcceleration);
         this.§[!1§ = this.§]v§(param1.maxRadius);
         this.§%O§ = this.§]v§(param1.maxRadiusVariance);
         this.§;>§ = this.§]v§(param1.minRadius);
         this.§%y§ = deg2rad(this.§]v§(param1.rotatePerSecond));
         this.§[U§ = deg2rad(this.§]v§(param1.rotatePerSecondVariance));
         this.§-h§ = this.§3<§(param1.startColor);
         this.§;[§ = this.§3<§(param1.startColorVariance);
         this.§>!O§ = this.§3<§(param1.finishColor);
         this.§!o§ = this.§3<§(param1.finishColorVariance);
         §?`§ = this.§7!<§(param1.blendFuncSource);
         §@f§ = this.§7!<§(param1.blendFuncDestination);
         § !3§ = this.§,@§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §^4§ = this.§]v§(param1.emissionVariance);
         }
      }
      
      protected function §@H§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]v§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §03§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §3<§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §7!<§(param1:XMLList) : String
      {
         var _loc2_:int = this.§@H§(param1);
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
      
      protected function §,@§(param1:XMLList) : String
      {
         var _loc2_:String = this.§03§(param1);
         if(_loc2_ == §=!C§.§1l§ || _loc2_ == §=!C§.§!!N§ || _loc2_ == §=!C§.NONE)
         {
            return _loc2_;
         }
         return §=!C§.§1l§;
      }
   }
}

import §4!<§.§0!W§;

class PDParticle extends §0!W§
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
