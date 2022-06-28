package §%!=§
{
   import §'_§.§'h§;
   import §'_§.Texture;
   import §@2§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §`;§:int = 0;
      
      private const §16§:int = 1;
      
      private var §=!3§:Number;
      
      private var §5!h§:int;
      
      private var §;!%§:Number;
      
      private var §@!?§:Number;
      
      private var §@<§:int;
      
      private var §3e§:Number;
      
      private var §+]§:Number;
      
      private var §=!§:Number;
      
      private var §"g§:Number;
      
      private var §2!L§:Number;
      
      private var §-C§:Number;
      
      private var §;8§:Number;
      
      private var §,!B§:Number;
      
      private var §!!§:Number;
      
      private var §;!E§:Number;
      
      private var §?]§:Number;
      
      private var §1w§:Number;
      
      private var §2V§:Number;
      
      private var §<,§:Number;
      
      private var §^!$§:Number;
      
      private var §8!=§:Number;
      
      private var §8e§:Number;
      
      private var §'!4§:Number;
      
      private var §9-§:Number;
      
      private var §1!Z§:Number;
      
      private var §^J§:Number;
      
      private var §3!e§:Number;
      
      private var §8!b§:Number;
      
      private var §'1§:Number;
      
      private var §5!4§:Number;
      
      private var §>T§:Number;
      
      private var §=b§:ColorArgb;
      
      private var §&!<§:ColorArgb;
      
      private var §^!0§:ColorArgb;
      
      private var §7,§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§4!3§(param1,param2);
         var _loc3_:Number = this.§@<§ / (this.§3e§ + this.§=!§);
         super(param2,_loc3_,this.§@<§,§44§,§2!9§);
         §1J§ = false;
      }
      
      public function get §6d§() : int
      {
         return this.§@<§;
      }
      
      override protected function createParticle() : § W§
      {
         return new PDParticle();
      }
      
      private function get §4n§() : Boolean
      {
         return this.§6d§ >= 20;
      }
      
      override protected function initParticle(param1:§ W§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§3e§ + this.§+]§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§#!@§ = 0;
         _loc2_.§2L§ = _loc3_;
         _loc2_.x = §#J§ + this.§;!%§ * (Math.random() * 2 - 1);
         _loc2_.y = §>^§ + this.§@!?§ * (Math.random() * 2 - 1);
         _loc2_.startX = §#J§;
         _loc2_.startY = §>^§;
         var _loc4_:Number = this.§1w§ + this.§2V§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§<,§ + this.§^!$§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§3!e§ + this.§8!b§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§3!e§ / _loc3_;
         _loc2_.rotation = this.§1w§ + this.§2V§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§5!4§ + this.§>T§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§'!4§;
         _loc2_.tangentialAcceleration = this.§1!Z§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number = this.§"g§ + this.§2!L§ * _loc6_;
         var _loc8_:Number = _loc7_;
         if(!isNaN(this.§,!B§))
         {
            _loc8_ = this.§,!B§;
            if(!isNaN(this.§!!§))
            {
               _loc8_ += this.§!!§ * (Math.random() * 2 - 1);
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
         var _loc9_:Number = this.§-C§ + this.§;8§ * _loc6_;
         var _loc10_:Number = _loc9_;
         if(!isNaN(this.§;!E§))
         {
            _loc10_ = this.§;!E§;
            if(!isNaN(this.§?]§))
            {
               _loc10_ += this.§?]§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§=b§.red;
         _loc11_.green = this.§=b§.green;
         _loc11_.blue = this.§=b§.blue;
         _loc11_.alpha = this.§=b§.alpha;
         if(this.§&!<§.red != 0)
         {
            _loc11_.red += this.§&!<§.red * (Math.random() * 2 - 1);
         }
         if(this.§&!<§.green != 0)
         {
            _loc11_.green += this.§&!<§.green * (Math.random() * 2 - 1);
         }
         if(this.§&!<§.blue != 0)
         {
            _loc11_.blue += this.§&!<§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&!<§.alpha != 0)
         {
            _loc11_.alpha += this.§&!<§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^!0§.red;
         var _loc14_:Number = this.§^!0§.green;
         var _loc15_:Number = this.§^!0§.blue;
         var _loc16_:Number = this.§^!0§.alpha;
         if(this.§7,§.red != 0)
         {
            _loc13_ += this.§7,§.red * (Math.random() * 2 - 1);
         }
         if(this.§7,§.green != 0)
         {
            _loc14_ += this.§7,§.green * (Math.random() * 2 - 1);
         }
         if(this.§7,§.blue != 0)
         {
            _loc15_ += this.§7,§.blue * (Math.random() * 2 - 1);
         }
         if(this.§7,§.alpha != 0)
         {
            _loc16_ += this.§7,§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§ W§, param2:Number) : void
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
         var _loc4_:Number = _loc3_.§2L§ - _loc3_.§#!@§;
         param2 = _loc4_ > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§#!@§ += param2;
         if(this.§5!h§ == this.§16§)
         {
            if(!_loc3_.skipUpdate || !this.§4n§)
            {
               if(this.§4n§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §#J§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §>^§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§'1§)
               {
                  _loc3_.§#!@§ = _loc3_.§2L§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§4n§)
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
               if(this.§4n§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§8!=§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§8e§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§8!=§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§8e§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§4n§)
         {
            if(this.§4n§)
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
      
      private function §4!3§(param1:XML, param2:Texture) : void
      {
         this.§;!%§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§@!?§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§8!=§ = parseFloat(param1.gravity.attribute("x"));
         this.§8e§ = parseFloat(param1.gravity.attribute("y"));
         this.§5!h§ = this.§2w§(param1.emitterType);
         this.§@<§ = this.§2w§(param1.maxParticles);
         this.§3e§ = Math.max(0.01,this.§]!T§(param1.particleLifeSpan));
         this.§+]§ = this.§]!T§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§=!§ = this.§]!T§(param1.particleInterval);
         }
         else
         {
            this.§=!§ = 0;
         }
         this.§"g§ = this.§]!T§(param1.startParticleSize);
         this.§-C§ = this.§"g§ * param2.height / param2.width;
         this.§2!L§ = this.§]!T§(param1.startParticleSizeVariance);
         this.§;8§ = this.§2!L§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§"g§ = this.§]!T§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§2!L§ = this.§]!T§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§-C§ = this.§]!T§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§;8§ = this.§]!T§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§,!B§ = this.§]!T§(param1.finishParticleSize);
            this.§;!E§ = this.§,!B§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§!!§ = this.§]!T§(param1.FinishParticleSizeVariance);
            this.§?]§ = this.§!!§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§,!B§ = this.§]!T§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§!!§ = this.§]!T§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§;!E§ = this.§]!T§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§?]§ = this.§]!T§(param1.FinishParticleSizeVarianceY);
         }
         this.§1w§ = deg2rad(this.§]!T§(param1.angle));
         this.§2V§ = deg2rad(this.§]!T§(param1.angleVariance));
         this.§<,§ = this.§]!T§(param1.speed);
         this.§^!$§ = this.§]!T§(param1.speedVariance);
         this.§'!4§ = this.§]!T§(param1.radialAcceleration);
         this.§1!Z§ = this.§]!T§(param1.tangentialAcceleration);
         this.§3!e§ = this.§]!T§(param1.maxRadius);
         this.§8!b§ = this.§]!T§(param1.maxRadiusVariance);
         this.§'1§ = this.§]!T§(param1.minRadius);
         this.§5!4§ = deg2rad(this.§]!T§(param1.rotatePerSecond));
         this.§>T§ = deg2rad(this.§]!T§(param1.rotatePerSecondVariance));
         this.§=b§ = this.§9!#§(param1.startColor);
         this.§&!<§ = this.§9!#§(param1.startColorVariance);
         this.§^!0§ = this.§9!#§(param1.finishColor);
         this.§7,§ = this.§9!#§(param1.finishColorVariance);
         §44§ = this.§?!a§(param1.blendFuncSource);
         §2!9§ = this.§?!a§(param1.blendFuncDestination);
         §9!Z§ = this.§&_§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §>c§ = this.§]!T§(param1.emissionVariance);
         }
      }
      
      protected function §2w§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]!T§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9!#§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §?!a§(param1:XMLList) : String
      {
         var _loc2_:int = this.§2w§(param1);
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
      
      protected function §&_§(param1:XMLList) : String
      {
         var _loc2_:String = this.§5§(param1);
         if(_loc2_ == §'h§.§?!4§ || _loc2_ == §'h§.§^`§ || _loc2_ == §'h§.NONE)
         {
            return _loc2_;
         }
         return §'h§.§?!4§;
      }
   }
}

import §%!=§.§ W§;

class PDParticle extends § W§
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
