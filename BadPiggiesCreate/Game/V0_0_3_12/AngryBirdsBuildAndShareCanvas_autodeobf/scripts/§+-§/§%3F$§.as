package §+-§
{
   import §!p§.deg2rad;
   import §^Q§.§3!N§;
   import §^Q§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §?$§ extends §1_§
   {
       
      
      private const §2",§:int = 0;
      
      private const §?!F§:int = 1;
      
      private var §3+§:Number;
      
      private var §+"1§:int;
      
      private var §%v§:Number;
      
      private var §#"+§:Number;
      
      private var §]H§:int;
      
      private var §+j§:Number;
      
      private var §%"!§:Number;
      
      private var §^!]§:Number;
      
      private var §,!J§:Number;
      
      private var §5!R§:Number;
      
      private var §,p§:Number;
      
      private var §,"8§:Number;
      
      private var §'!-§:Number;
      
      private var §#!4§:Number;
      
      private var §46§:Number;
      
      private var §[t§:Number;
      
      private var §>I§:Number;
      
      private var §&!X§:Number;
      
      private var §"Y§:Number;
      
      private var §9"7§:Number;
      
      private var §7!Q§:Number;
      
      private var §#%§:Number;
      
      private var §3!D§:Number;
      
      private var §73§:Number;
      
      private var § !f§:Number;
      
      private var §-!,§:Number;
      
      private var §!1§:Number;
      
      private var §6e§:Number;
      
      private var §-]§:Number;
      
      private var §1!C§:Number;
      
      private var §7!Z§:Number;
      
      private var §"!s§:ColorArgb;
      
      private var §@"2§:ColorArgb;
      
      private var §'";§:ColorArgb;
      
      private var §-?§:ColorArgb;
      
      public function §?$§(param1:XML, param2:Texture)
      {
         this.§%!=§(param1,param2);
         var _loc3_:Number = this.§]H§ / (this.§+j§ + this.§^!]§);
         super(param2,_loc3_,this.§]H§,§&!'§,§+!h§);
         §6!c§ = false;
      }
      
      public function get §&!j§() : int
      {
         return this.§]H§;
      }
      
      override protected function createParticle() : §5c§
      {
         return new PDParticle();
      }
      
      private function get §>!v§() : Boolean
      {
         return this.§&!j§ >= 20;
      }
      
      override protected function initParticle(param1:§5c§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§+j§ + this.§%"!§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§5!F§ = 0;
         _loc2_.§[E§ = _loc3_;
         _loc2_.x = §%I§ + this.§%v§ * (Math.random() * 2 - 1);
         _loc2_.y = §4![§ + this.§#"+§ * (Math.random() * 2 - 1);
         _loc2_.startX = §%I§;
         _loc2_.startY = §4![§;
         var _loc4_:Number = this.§>I§ + this.§&!X§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§"Y§ + this.§9"7§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§!1§ + this.§6e§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§!1§ / _loc3_;
         _loc2_.rotation = this.§>I§ + this.§&!X§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§1!C§ + this.§7!Z§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§3!D§;
         _loc2_.tangentialAcceleration = this.§ !f§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§,!J§ + this.§5!R§ * _loc6_;
         if(!isNaN(this.§'!-§))
         {
            _loc8_ = this.§'!-§;
            if(!isNaN(this.§#!4§))
            {
               _loc8_ += this.§#!4§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§,p§ + this.§,"8§ * _loc6_;
         if(!isNaN(this.§46§))
         {
            _loc10_ = this.§46§;
            if(!isNaN(this.§[t§))
            {
               _loc10_ += this.§[t§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§"!s§.red;
         _loc11_.green = this.§"!s§.green;
         _loc11_.blue = this.§"!s§.blue;
         _loc11_.alpha = this.§"!s§.alpha;
         if(this.§@"2§.red != 0)
         {
            _loc11_.red += this.§@"2§.red * (Math.random() * 2 - 1);
         }
         if(this.§@"2§.green != 0)
         {
            _loc11_.green += this.§@"2§.green * (Math.random() * 2 - 1);
         }
         if(this.§@"2§.blue != 0)
         {
            _loc11_.blue += this.§@"2§.blue * (Math.random() * 2 - 1);
         }
         if(this.§@"2§.alpha != 0)
         {
            _loc11_.alpha += this.§@"2§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§'";§.red;
         var _loc14_:Number = this.§'";§.green;
         var _loc15_:Number = this.§'";§.blue;
         var _loc16_:Number = this.§'";§.alpha;
         if(this.§-?§.red != 0)
         {
            _loc13_ += this.§-?§.red * (Math.random() * 2 - 1);
         }
         if(this.§-?§.green != 0)
         {
            _loc14_ += this.§-?§.green * (Math.random() * 2 - 1);
         }
         if(this.§-?§.blue != 0)
         {
            _loc15_ += this.§-?§.blue * (Math.random() * 2 - 1);
         }
         if(this.§-?§.alpha != 0)
         {
            _loc16_ += this.§-?§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§5c§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§[E§ - _loc3_.§5!F§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§5!F§ += param2;
         if(this.§+"1§ == this.§?!F§)
         {
            if(!_loc3_.skipUpdate || !this.§>!v§)
            {
               if(this.§>!v§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §%I§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §4![§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§-]§)
               {
                  _loc3_.§5!F§ = _loc3_.§[E§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§>!v§)
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
               if(this.§>!v§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§7!Q§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§#%§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§7!Q§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§#%§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§>!v§)
         {
            if(this.§>!v§)
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
      
      private function §%!=§(param1:XML, param2:Texture) : void
      {
         this.§%v§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§#"+§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§7!Q§ = parseFloat(param1.gravity.attribute("x"));
         this.§#%§ = parseFloat(param1.gravity.attribute("y"));
         this.§+"1§ = this.§&"§(param1.emitterType);
         this.§]H§ = this.§&"§(param1.maxParticles);
         this.§+j§ = Math.max(0.01,this.§=a§(param1.particleLifeSpan));
         this.§%"!§ = this.§=a§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§^!]§ = this.§=a§(param1.particleInterval);
         }
         else
         {
            this.§^!]§ = 0;
         }
         this.§,!J§ = this.§=a§(param1.startParticleSize);
         this.§,p§ = this.§,!J§ * param2.height / param2.width;
         this.§5!R§ = this.§=a§(param1.startParticleSizeVariance);
         this.§,"8§ = this.§5!R§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§,!J§ = this.§=a§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§5!R§ = this.§=a§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§,p§ = this.§=a§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§,"8§ = this.§=a§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§'!-§ = this.§=a§(param1.finishParticleSize);
            this.§46§ = this.§'!-§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§#!4§ = this.§=a§(param1.FinishParticleSizeVariance);
            this.§[t§ = this.§#!4§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§'!-§ = this.§=a§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§#!4§ = this.§=a§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§46§ = this.§=a§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§[t§ = this.§=a§(param1.FinishParticleSizeVarianceY);
         }
         this.§>I§ = deg2rad(this.§=a§(param1.angle));
         this.§&!X§ = deg2rad(this.§=a§(param1.angleVariance));
         this.§"Y§ = this.§=a§(param1.speed);
         this.§9"7§ = this.§=a§(param1.speedVariance);
         this.§3!D§ = this.§=a§(param1.radialAcceleration);
         this.§ !f§ = this.§=a§(param1.tangentialAcceleration);
         this.§!1§ = this.§=a§(param1.maxRadius);
         this.§6e§ = this.§=a§(param1.maxRadiusVariance);
         this.§-]§ = this.§=a§(param1.minRadius);
         this.§1!C§ = deg2rad(this.§=a§(param1.rotatePerSecond));
         this.§7!Z§ = deg2rad(this.§=a§(param1.rotatePerSecondVariance));
         this.§"!s§ = this.§2!U§(param1.startColor);
         this.§@"2§ = this.§2!U§(param1.startColorVariance);
         this.§'";§ = this.§2!U§(param1.finishColor);
         this.§-?§ = this.§2!U§(param1.finishColorVariance);
         §&!'§ = this.§6"5§(param1.blendFuncSource);
         §+!h§ = this.§6"5§(param1.blendFuncDestination);
         §8E§ = this.§]%§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §3!&§ = this.§=a§(param1.emissionVariance);
         }
      }
      
      protected function §&"§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §=a§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §6!"§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §2!U§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §6"5§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&"§(param1);
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
      
      protected function §]%§(param1:XMLList) : String
      {
         var _loc2_:String = this.§6!"§(param1);
         if(_loc2_ == §3!N§.§`s§ || _loc2_ == §3!N§.§;<§ || _loc2_ == §3!N§.NONE)
         {
            return _loc2_;
         }
         return §3!N§.§`s§;
      }
   }
}

import §+-§.§5c§;

class PDParticle extends §5c§
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
