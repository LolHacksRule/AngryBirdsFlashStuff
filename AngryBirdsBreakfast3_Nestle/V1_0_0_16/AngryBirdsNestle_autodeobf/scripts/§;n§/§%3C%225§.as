package §;n§
{
   import §=!4§.Texture;
   import §=!4§.§`'§;
   import §^!^§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §<"5§ extends §""6§
   {
       
      
      private const §>!I§:int = 0;
      
      private const §%M§:int = 1;
      
      private var §'"4§:Number;
      
      private var §5!6§:int;
      
      private var §5§:Number;
      
      private var §0!D§:Number;
      
      private var §%!G§:int;
      
      private var §"!;§:Number;
      
      private var §]]§:Number;
      
      private var §]e§:Number;
      
      private var §"R§:Number;
      
      private var §&!"§:Number;
      
      private var §=!t§:Number;
      
      private var §,F§:Number;
      
      private var §`!5§:Number;
      
      private var §1H§:Number;
      
      private var §9,§:Number;
      
      private var §?i§:Number;
      
      private var §?!f§:Number;
      
      private var §-!-§:Number;
      
      private var §6J§:Number;
      
      private var §"3§:Number;
      
      private var §^<§:Number;
      
      private var §9!3§:Number;
      
      private var §2q§:Number;
      
      private var §!3§:Number;
      
      private var §8!§:Number;
      
      private var §#R§:Number;
      
      private var §96§:Number;
      
      private var §,x§:Number;
      
      private var §[!T§:Number;
      
      private var §"!#§:Number;
      
      private var §9!6§:Number;
      
      private var §8n§:ColorArgb;
      
      private var §;!s§:ColorArgb;
      
      private var § L§:ColorArgb;
      
      private var §`"-§:ColorArgb;
      
      public function §<"5§(param1:XML, param2:Texture)
      {
         this.§1!'§(param1,param2);
         var _loc3_:Number = this.§%!G§ / (this.§"!;§ + this.§]e§);
         super(param2,_loc3_,this.§%!G§,§+!R§,§,!D§);
         §40§ = false;
      }
      
      public function get §#!f§() : int
      {
         return this.§%!G§;
      }
      
      override protected function createParticle() : §#H§
      {
         return new PDParticle();
      }
      
      private function get §8!%§() : Boolean
      {
         return this.§#!f§ >= 20;
      }
      
      override protected function initParticle(param1:§#H§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§"!;§ + this.§]]§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§[Q§ = 0;
         _loc2_.§ "-§ = _loc3_;
         _loc2_.x = §1K§ + this.§5§ * (Math.random() * 2 - 1);
         _loc2_.y = §&!U§ + this.§0!D§ * (Math.random() * 2 - 1);
         _loc2_.startX = §1K§;
         _loc2_.startY = §&!U§;
         var _loc4_:Number = this.§?!f§ + this.§-!-§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§6J§ + this.§"3§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§96§ + this.§,x§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§96§ / _loc3_;
         _loc2_.rotation = this.§?!f§ + this.§-!-§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§"!#§ + this.§9!6§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2q§;
         _loc2_.tangentialAcceleration = this.§8!§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§"R§ + this.§&!"§ * _loc6_;
         if(!isNaN(this.§`!5§))
         {
            _loc8_ = this.§`!5§;
            if(!isNaN(this.§1H§))
            {
               _loc8_ += this.§1H§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§=!t§ + this.§,F§ * _loc6_;
         if(!isNaN(this.§9,§))
         {
            _loc10_ = this.§9,§;
            if(!isNaN(this.§?i§))
            {
               _loc10_ += this.§?i§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§8n§.red;
         _loc11_.green = this.§8n§.green;
         _loc11_.blue = this.§8n§.blue;
         _loc11_.alpha = this.§8n§.alpha;
         if(this.§;!s§.red != 0)
         {
            _loc11_.red += this.§;!s§.red * (Math.random() * 2 - 1);
         }
         if(this.§;!s§.green != 0)
         {
            _loc11_.green += this.§;!s§.green * (Math.random() * 2 - 1);
         }
         if(this.§;!s§.blue != 0)
         {
            _loc11_.blue += this.§;!s§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;!s§.alpha != 0)
         {
            _loc11_.alpha += this.§;!s§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§ L§.red;
         var _loc14_:Number = this.§ L§.green;
         var _loc15_:Number = this.§ L§.blue;
         var _loc16_:Number = this.§ L§.alpha;
         if(this.§`"-§.red != 0)
         {
            _loc13_ += this.§`"-§.red * (Math.random() * 2 - 1);
         }
         if(this.§`"-§.green != 0)
         {
            _loc14_ += this.§`"-§.green * (Math.random() * 2 - 1);
         }
         if(this.§`"-§.blue != 0)
         {
            _loc15_ += this.§`"-§.blue * (Math.random() * 2 - 1);
         }
         if(this.§`"-§.alpha != 0)
         {
            _loc16_ += this.§`"-§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§#H§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§ "-§ - _loc3_.§[Q§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§[Q§ += param2;
         if(this.§5!6§ == this.§%M§)
         {
            if(!_loc3_.skipUpdate || !this.§8!%§)
            {
               if(this.§8!%§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §1K§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §&!U§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§[!T§)
               {
                  _loc3_.§[Q§ = _loc3_.§ "-§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§8!%§)
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
               if(this.§8!%§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§^<§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§9!3§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§^<§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§9!3§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§8!%§)
         {
            if(this.§8!%§)
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
      
      private function §1!'§(param1:XML, param2:Texture) : void
      {
         this.§5§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§0!D§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§^<§ = parseFloat(param1.gravity.attribute("x"));
         this.§9!3§ = parseFloat(param1.gravity.attribute("y"));
         this.§5!6§ = this.§#C§(param1.emitterType);
         this.§%!G§ = this.§#C§(param1.maxParticles);
         this.§"!;§ = Math.max(0.01,this.§ !L§(param1.particleLifeSpan));
         this.§]]§ = this.§ !L§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§]e§ = this.§ !L§(param1.particleInterval);
         }
         else
         {
            this.§]e§ = 0;
         }
         this.§"R§ = this.§ !L§(param1.startParticleSize);
         this.§=!t§ = this.§"R§ * param2.height / param2.width;
         this.§&!"§ = this.§ !L§(param1.startParticleSizeVariance);
         this.§,F§ = this.§&!"§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§"R§ = this.§ !L§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§&!"§ = this.§ !L§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§=!t§ = this.§ !L§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§,F§ = this.§ !L§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§`!5§ = this.§ !L§(param1.finishParticleSize);
            this.§9,§ = this.§`!5§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§1H§ = this.§ !L§(param1.FinishParticleSizeVariance);
            this.§?i§ = this.§1H§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§`!5§ = this.§ !L§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§1H§ = this.§ !L§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§9,§ = this.§ !L§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§?i§ = this.§ !L§(param1.FinishParticleSizeVarianceY);
         }
         this.§?!f§ = deg2rad(this.§ !L§(param1.angle));
         this.§-!-§ = deg2rad(this.§ !L§(param1.angleVariance));
         this.§6J§ = this.§ !L§(param1.speed);
         this.§"3§ = this.§ !L§(param1.speedVariance);
         this.§2q§ = this.§ !L§(param1.radialAcceleration);
         this.§8!§ = this.§ !L§(param1.tangentialAcceleration);
         this.§96§ = this.§ !L§(param1.maxRadius);
         this.§,x§ = this.§ !L§(param1.maxRadiusVariance);
         this.§[!T§ = this.§ !L§(param1.minRadius);
         this.§"!#§ = deg2rad(this.§ !L§(param1.rotatePerSecond));
         this.§9!6§ = deg2rad(this.§ !L§(param1.rotatePerSecondVariance));
         this.§8n§ = this.§9!,§(param1.startColor);
         this.§;!s§ = this.§9!,§(param1.startColorVariance);
         this.§ L§ = this.§9!,§(param1.finishColor);
         this.§`"-§ = this.§9!,§(param1.finishColorVariance);
         §+!R§ = this.§@!p§(param1.blendFuncSource);
         §,!D§ = this.§@!p§(param1.blendFuncDestination);
         §<!Z§ = this.§'§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §>!u§ = this.§ !L§(param1.emissionVariance);
         }
      }
      
      protected function §#C§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function § !L§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §1>§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9!,§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §@!p§(param1:XMLList) : String
      {
         var _loc2_:int = this.§#C§(param1);
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
      
      protected function §'§(param1:XMLList) : String
      {
         var _loc2_:String = this.§1>§(param1);
         if(_loc2_ == §`'§.§1!T§ || _loc2_ == §`'§.§&5§ || _loc2_ == §`'§.NONE)
         {
            return _loc2_;
         }
         return §`'§.§1!T§;
      }
   }
}

import §;n§.§#H§;

class PDParticle extends §#H§
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
