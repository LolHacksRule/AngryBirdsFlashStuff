package §=s§
{
   import §5!@§.§7!=§;
   import §5!@§.Texture;
   import §@e§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §#!H§
   {
       
      
      private const § J§:int = 0;
      
      private const §8Y§:int = 1;
      
      private var §4q§:Number;
      
      private var §0U§:int;
      
      private var §#D§:Number;
      
      private var §"!B§:Number;
      
      private var §[`§:int;
      
      private var §9!2§:Number;
      
      private var §"#§:Number;
      
      private var §9!C§:Number;
      
      private var §31§:Number;
      
      private var §!u§:Number;
      
      private var §,O§:Number;
      
      private var §7a§:Number;
      
      private var §[g§:Number;
      
      private var §&'§:Number;
      
      private var §1!-§:Number;
      
      private var §?B§:Number;
      
      private var §>A§:Number;
      
      private var §=!3§:Number;
      
      private var §6;§:Number;
      
      private var §7L§:Number;
      
      private var §0g§:Number;
      
      private var §3!,§:Number;
      
      private var §`y§:Number;
      
      private var §^6§:Number;
      
      private var §^!F§:Number;
      
      private var §0z§:Number;
      
      private var §^k§:Number;
      
      private var §8§:Number;
      
      private var §@!G§:Number;
      
      private var §6<§:Number;
      
      private var §0O§:Number;
      
      private var §'8§:ColorArgb;
      
      private var §+p§:ColorArgb;
      
      private var §!!3§:ColorArgb;
      
      private var §3!D§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§!c§(param1,param2);
         var _loc3_:Number = this.§[`§ / (this.§9!2§ + this.§9!C§);
         super(param2,_loc3_,this.§[`§,§-!&§,§]`§);
         §+!8§ = false;
      }
      
      public function get §%!%§() : int
      {
         return this.§[`§;
      }
      
      override protected function createParticle() : § !H§
      {
         return new PDParticle();
      }
      
      private function get §-!4§() : Boolean
      {
         return this.§%!%§ >= 20;
      }
      
      override protected function initParticle(param1:§ !H§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§9!2§ + this.§"#§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§=!,§ = _loc3_;
         _loc2_.x = §+I§ + this.§#D§ * (Math.random() * 2 - 1);
         _loc2_.y = §8]§ + this.§"!B§ * (Math.random() * 2 - 1);
         _loc2_.startX = §+I§;
         _loc2_.startY = §8]§;
         var _loc4_:Number = this.§>A§ + this.§=!3§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§6;§ + this.§7L§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§^k§ + this.§8§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§^k§ / _loc3_;
         _loc2_.rotation = this.§>A§ + this.§=!3§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§6<§ + this.§0O§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§`y§;
         _loc2_.tangentialAcceleration = this.§^!F§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§31§ + this.§!u§ * _loc6_;
         if(!isNaN(this.§[g§))
         {
            _loc8_ = this.§[g§;
            if(!isNaN(this.§&'§))
            {
               _loc8_ += this.§&'§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§,O§ + this.§7a§ * _loc6_;
         if(!isNaN(this.§1!-§))
         {
            _loc10_ = this.§1!-§;
            if(!isNaN(this.§?B§))
            {
               _loc10_ += this.§?B§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§'8§.red;
         _loc11_.green = this.§'8§.green;
         _loc11_.blue = this.§'8§.blue;
         _loc11_.alpha = this.§'8§.alpha;
         if(this.§+p§.red != 0)
         {
            _loc11_.red += this.§+p§.red * (Math.random() * 2 - 1);
         }
         if(this.§+p§.green != 0)
         {
            _loc11_.green += this.§+p§.green * (Math.random() * 2 - 1);
         }
         if(this.§+p§.blue != 0)
         {
            _loc11_.blue += this.§+p§.blue * (Math.random() * 2 - 1);
         }
         if(this.§+p§.alpha != 0)
         {
            _loc11_.alpha += this.§+p§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§!!3§.red;
         var _loc14_:Number = this.§!!3§.green;
         var _loc15_:Number = this.§!!3§.blue;
         var _loc16_:Number = this.§!!3§.alpha;
         if(this.§3!D§.red != 0)
         {
            _loc13_ += this.§3!D§.red * (Math.random() * 2 - 1);
         }
         if(this.§3!D§.green != 0)
         {
            _loc14_ += this.§3!D§.green * (Math.random() * 2 - 1);
         }
         if(this.§3!D§.blue != 0)
         {
            _loc15_ += this.§3!D§.blue * (Math.random() * 2 - 1);
         }
         if(this.§3!D§.alpha != 0)
         {
            _loc16_ += this.§3!D§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§ !H§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§=!,§ - _loc3_.currentTime)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§0U§ == this.§8Y§)
         {
            if(!_loc3_.skipUpdate || !this.§-!4§)
            {
               if(this.§-!4§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §+I§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §8]§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§@!G§)
               {
                  _loc3_.currentTime = _loc3_.§=!,§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-!4§)
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
               if(this.§-!4§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§0g§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§3!,§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§0g§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§3!,§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-!4§)
         {
            if(this.§-!4§)
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
      
      private function §!c§(param1:XML, param2:Texture) : void
      {
         this.§#D§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§"!B§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§0g§ = parseFloat(param1.gravity.attribute("x"));
         this.§3!,§ = parseFloat(param1.gravity.attribute("y"));
         this.§0U§ = this.§%M§(param1.emitterType);
         this.§[`§ = this.§%M§(param1.maxParticles);
         this.§9!2§ = Math.max(0.01,this.§@h§(param1.particleLifeSpan));
         this.§"#§ = this.§@h§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§9!C§ = this.§@h§(param1.particleInterval);
         }
         else
         {
            this.§9!C§ = 0;
         }
         this.§31§ = this.§@h§(param1.startParticleSize);
         this.§,O§ = this.§31§ * param2.height / param2.width;
         this.§!u§ = this.§@h§(param1.startParticleSizeVariance);
         this.§7a§ = this.§!u§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§31§ = this.§@h§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§!u§ = this.§@h§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§,O§ = this.§@h§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§7a§ = this.§@h§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§[g§ = this.§@h§(param1.finishParticleSize);
            this.§1!-§ = this.§[g§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&'§ = this.§@h§(param1.FinishParticleSizeVariance);
            this.§?B§ = this.§&'§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§[g§ = this.§@h§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&'§ = this.§@h§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§1!-§ = this.§@h§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§?B§ = this.§@h§(param1.FinishParticleSizeVarianceY);
         }
         this.§>A§ = deg2rad(this.§@h§(param1.angle));
         this.§=!3§ = deg2rad(this.§@h§(param1.angleVariance));
         this.§6;§ = this.§@h§(param1.speed);
         this.§7L§ = this.§@h§(param1.speedVariance);
         this.§`y§ = this.§@h§(param1.radialAcceleration);
         this.§^!F§ = this.§@h§(param1.tangentialAcceleration);
         this.§^k§ = this.§@h§(param1.maxRadius);
         this.§8§ = this.§@h§(param1.maxRadiusVariance);
         this.§@!G§ = this.§@h§(param1.minRadius);
         this.§6<§ = deg2rad(this.§@h§(param1.rotatePerSecond));
         this.§0O§ = deg2rad(this.§@h§(param1.rotatePerSecondVariance));
         this.§'8§ = this.§+!+§(param1.startColor);
         this.§+p§ = this.§+!+§(param1.startColorVariance);
         this.§!!3§ = this.§+!+§(param1.finishColor);
         this.§3!D§ = this.§+!+§(param1.finishColorVariance);
         §-!&§ = this.§,!C§(param1.blendFuncSource);
         §]`§ = this.§,!C§(param1.blendFuncDestination);
         §6@§ = this.§,!4§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §]+§ = this.§@h§(param1.emissionVariance);
         }
      }
      
      protected function §%M§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@h§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §]r§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+!+§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §,!C§(param1:XMLList) : String
      {
         var _loc2_:int = this.§%M§(param1);
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
      
      protected function §,!4§(param1:XMLList) : String
      {
         var _loc2_:String = this.§]r§(param1);
         if(_loc2_ == §7!=§.§1%§ || _loc2_ == §7!=§.§"V§ || _loc2_ == §7!=§.NONE)
         {
            return _loc2_;
         }
         return §7!=§.§1%§;
      }
   }
}

import §=s§.§ !H§;

class PDParticle extends § !H§
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
