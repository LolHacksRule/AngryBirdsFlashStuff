package §0!I§
{
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §`s§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §@C§
   {
       
      
      private const § !_§:int = 0;
      
      private const §"!s§:int = 1;
      
      private var §#+§:Number;
      
      private var §@!G§:int;
      
      private var §+[§:Number;
      
      private var §%!f§:Number;
      
      private var §6R§:int;
      
      private var §#!2§:Number;
      
      private var §&!+§:Number;
      
      private var §0$§:Number;
      
      private var §1!E§:Number;
      
      private var §"!%§:Number;
      
      private var §=w§:Number;
      
      private var §4G§:Number;
      
      private var §7a§:Number;
      
      private var §&!<§:Number;
      
      private var §@O§:Number;
      
      private var §#Q§:Number;
      
      private var §&!p§:Number;
      
      private var §>3§:Number;
      
      private var §5y§:Number;
      
      private var §=!n§:Number;
      
      private var §+K§:Number;
      
      private var §^!I§:Number;
      
      private var §9J§:Number;
      
      private var §0!g§:Number;
      
      private var §22§:Number;
      
      private var §>f§:Number;
      
      private var §-!P§:Number;
      
      private var §7!U§:Number;
      
      private var §0-§:Number;
      
      private var §4y§:Number;
      
      private var §8n§:Number;
      
      private var §7!?§:ColorArgb;
      
      private var §0]§:ColorArgb;
      
      private var §^!J§:ColorArgb;
      
      private var §7!D§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§9!K§(param1,param2);
         var _loc3_:Number = this.§6R§ / (this.§#!2§ + this.§0$§);
         super(param2,_loc3_,this.§6R§,§=v§,§>y§);
         §<!h§ = false;
      }
      
      public function get §9N§() : int
      {
         return this.§6R§;
      }
      
      override protected function createParticle() : §7v§
      {
         return new PDParticle();
      }
      
      private function get §]!F§() : Boolean
      {
         return this.§9N§ >= 20;
      }
      
      override protected function initParticle(param1:§7v§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§#!2§ + this.§&!+§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§%p§ = 0;
         _loc2_.§with§ = _loc3_;
         _loc2_.x = §%v§ + this.§+[§ * (Math.random() * 2 - 1);
         _loc2_.y = §@!k§ + this.§%!f§ * (Math.random() * 2 - 1);
         _loc2_.startX = §%v§;
         _loc2_.startY = §@!k§;
         var _loc4_:Number = this.§&!p§ + this.§>3§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§5y§ + this.§=!n§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§-!P§ + this.§7!U§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§-!P§ / _loc3_;
         _loc2_.rotation = this.§&!p§ + this.§>3§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§4y§ + this.§8n§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§9J§;
         _loc2_.tangentialAcceleration = this.§22§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§1!E§ + this.§"!%§ * _loc6_;
         if(!isNaN(this.§7a§))
         {
            _loc8_ = this.§7a§;
            if(!isNaN(this.§&!<§))
            {
               _loc8_ += this.§&!<§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§=w§ + this.§4G§ * _loc6_;
         if(!isNaN(this.§@O§))
         {
            _loc10_ = this.§@O§;
            if(!isNaN(this.§#Q§))
            {
               _loc10_ += this.§#Q§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§7!?§.red;
         _loc11_.green = this.§7!?§.green;
         _loc11_.blue = this.§7!?§.blue;
         _loc11_.alpha = this.§7!?§.alpha;
         if(this.§0]§.red != 0)
         {
            _loc11_.red += this.§0]§.red * (Math.random() * 2 - 1);
         }
         if(this.§0]§.green != 0)
         {
            _loc11_.green += this.§0]§.green * (Math.random() * 2 - 1);
         }
         if(this.§0]§.blue != 0)
         {
            _loc11_.blue += this.§0]§.blue * (Math.random() * 2 - 1);
         }
         if(this.§0]§.alpha != 0)
         {
            _loc11_.alpha += this.§0]§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^!J§.red;
         var _loc14_:Number = this.§^!J§.green;
         var _loc15_:Number = this.§^!J§.blue;
         var _loc16_:Number = this.§^!J§.alpha;
         if(this.§7!D§.red != 0)
         {
            _loc13_ += this.§7!D§.red * (Math.random() * 2 - 1);
         }
         if(this.§7!D§.green != 0)
         {
            _loc14_ += this.§7!D§.green * (Math.random() * 2 - 1);
         }
         if(this.§7!D§.blue != 0)
         {
            _loc15_ += this.§7!D§.blue * (Math.random() * 2 - 1);
         }
         if(this.§7!D§.alpha != 0)
         {
            _loc16_ += this.§7!D§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§7v§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§with§ - _loc3_.§%p§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§%p§ += param2;
         if(this.§@!G§ == this.§"!s§)
         {
            if(!_loc3_.skipUpdate || !this.§]!F§)
            {
               if(this.§]!F§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §%v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §@!k§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§0-§)
               {
                  _loc3_.§%p§ = _loc3_.§with§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§]!F§)
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
               if(this.§]!F§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§+K§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§^!I§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§+K§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§^!I§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§]!F§)
         {
            if(this.§]!F§)
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
      
      private function §9!K§(param1:XML, param2:Texture) : void
      {
         this.§+[§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§%!f§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§+K§ = parseFloat(param1.gravity.attribute("x"));
         this.§^!I§ = parseFloat(param1.gravity.attribute("y"));
         this.§@!G§ = this.§'`§(param1.emitterType);
         this.§6R§ = this.§'`§(param1.maxParticles);
         this.§#!2§ = Math.max(0.01,this.§=7§(param1.particleLifeSpan));
         this.§&!+§ = this.§=7§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§0$§ = this.§=7§(param1.particleInterval);
         }
         else
         {
            this.§0$§ = 0;
         }
         this.§1!E§ = this.§=7§(param1.startParticleSize);
         this.§=w§ = this.§1!E§ * param2.height / param2.width;
         this.§"!%§ = this.§=7§(param1.startParticleSizeVariance);
         this.§4G§ = this.§"!%§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§1!E§ = this.§=7§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§"!%§ = this.§=7§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§=w§ = this.§=7§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§4G§ = this.§=7§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§7a§ = this.§=7§(param1.finishParticleSize);
            this.§@O§ = this.§7a§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&!<§ = this.§=7§(param1.FinishParticleSizeVariance);
            this.§#Q§ = this.§&!<§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§7a§ = this.§=7§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&!<§ = this.§=7§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§@O§ = this.§=7§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§#Q§ = this.§=7§(param1.FinishParticleSizeVarianceY);
         }
         this.§&!p§ = deg2rad(this.§=7§(param1.angle));
         this.§>3§ = deg2rad(this.§=7§(param1.angleVariance));
         this.§5y§ = this.§=7§(param1.speed);
         this.§=!n§ = this.§=7§(param1.speedVariance);
         this.§9J§ = this.§=7§(param1.radialAcceleration);
         this.§22§ = this.§=7§(param1.tangentialAcceleration);
         this.§-!P§ = this.§=7§(param1.maxRadius);
         this.§7!U§ = this.§=7§(param1.maxRadiusVariance);
         this.§0-§ = this.§=7§(param1.minRadius);
         this.§4y§ = deg2rad(this.§=7§(param1.rotatePerSecond));
         this.§8n§ = deg2rad(this.§=7§(param1.rotatePerSecondVariance));
         this.§7!?§ = this.§6!b§(param1.startColor);
         this.§0]§ = this.§6!b§(param1.startColorVariance);
         this.§^!J§ = this.§6!b§(param1.finishColor);
         this.§7!D§ = this.§6!b§(param1.finishColorVariance);
         §=v§ = this.§!v§(param1.blendFuncSource);
         §>y§ = this.§!v§(param1.blendFuncDestination);
         §1!6§ = this.§9!S§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §0x§ = this.§=7§(param1.emissionVariance);
         }
      }
      
      protected function §'`§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §=7§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §=!-§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §6!b§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §!v§(param1:XMLList) : String
      {
         var _loc2_:int = this.§'`§(param1);
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
      
      protected function §9!S§(param1:XMLList) : String
      {
         var _loc2_:String = this.§=!-§(param1);
         if(_loc2_ == §]-§.§![§ || _loc2_ == §]-§.§<! § || _loc2_ == §]-§.NONE)
         {
            return _loc2_;
         }
         return §]-§.§![§;
      }
   }
}

import §0!I§.§7v§;

class PDParticle extends §7v§
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
