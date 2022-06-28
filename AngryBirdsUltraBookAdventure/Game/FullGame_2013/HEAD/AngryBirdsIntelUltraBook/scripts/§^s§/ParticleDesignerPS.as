package §^s§
{
   import §'7§.deg2rad;
   import §6!J§.§&!A§;
   import §6!J§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §1A§:int = 0;
      
      private const §!!5§:int = 1;
      
      private var §&u§:Number;
      
      private var §,8§:int;
      
      private var §'C§:Number;
      
      private var §=!3§:Number;
      
      private var §%d§:int;
      
      private var §]^§:Number;
      
      private var §^O§:Number;
      
      private var §1r§:Number;
      
      private var §"!@§:Number;
      
      private var §1!b§:Number;
      
      private var §43§:Number;
      
      private var §-!'§:Number;
      
      private var §#!>§:Number;
      
      private var §]=§:Number;
      
      private var §,!3§:Number;
      
      private var §6U§:Number;
      
      private var §<!K§:Number;
      
      private var §=!I§:Number;
      
      private var §-]§:Number;
      
      private var §=O§:Number;
      
      private var §>!E§:Number;
      
      private var §'f§:Number;
      
      private var §?!_§:Number;
      
      private var §;!#§:Number;
      
      private var §5!e§:Number;
      
      private var §-!G§:Number;
      
      private var §<!c§:Number;
      
      private var §]!4§:Number;
      
      private var §=B§:Number;
      
      private var §5!%§:Number;
      
      private var §@G§:Number;
      
      private var §#!A§:ColorArgb;
      
      private var §8!A§:ColorArgb;
      
      private var §^U§:ColorArgb;
      
      private var §^7§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§]!K§(param1,param2);
         var _loc3_:Number = this.§%d§ / (this.§]^§ + this.§1r§);
         super(param2,_loc3_,this.§%d§,§-!9§,§-w§);
         §@!Y§ = false;
      }
      
      public function get §7!O§() : int
      {
         return this.§%d§;
      }
      
      override protected function createParticle() : §#-§
      {
         return new PDParticle();
      }
      
      private function get §-!>§() : Boolean
      {
         return this.§7!O§ >= 20;
      }
      
      override protected function initParticle(param1:§#-§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§]^§ + this.§^O§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§,b§ = 0;
         _loc2_.§%!2§ = _loc3_;
         _loc2_.x = §&!!§ + this.§'C§ * (Math.random() * 2 - 1);
         _loc2_.y = §1!0§ + this.§=!3§ * (Math.random() * 2 - 1);
         _loc2_.startX = §&!!§;
         _loc2_.startY = §1!0§;
         var _loc4_:Number = this.§<!K§ + this.§=!I§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§-]§ + this.§=O§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§<!c§ + this.§]!4§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§<!c§ / _loc3_;
         _loc2_.rotation = this.§<!K§ + this.§=!I§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§5!%§ + this.§@G§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§?!_§;
         _loc2_.tangentialAcceleration = this.§5!e§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number = this.§"!@§ + this.§1!b§ * _loc6_;
         var _loc8_:Number = _loc7_;
         if(!isNaN(this.§#!>§))
         {
            _loc8_ = this.§#!>§;
            if(!isNaN(this.§]=§))
            {
               _loc8_ += this.§]=§ * (Math.random() * 2 - 1);
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
         var _loc9_:Number = this.§43§ + this.§-!'§ * _loc6_;
         var _loc10_:Number = _loc9_;
         if(!isNaN(this.§,!3§))
         {
            _loc10_ = this.§,!3§;
            if(!isNaN(this.§6U§))
            {
               _loc10_ += this.§6U§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§#!A§.red;
         _loc11_.green = this.§#!A§.green;
         _loc11_.blue = this.§#!A§.blue;
         _loc11_.alpha = this.§#!A§.alpha;
         if(this.§8!A§.red != 0)
         {
            _loc11_.red += this.§8!A§.red * (Math.random() * 2 - 1);
         }
         if(this.§8!A§.green != 0)
         {
            _loc11_.green += this.§8!A§.green * (Math.random() * 2 - 1);
         }
         if(this.§8!A§.blue != 0)
         {
            _loc11_.blue += this.§8!A§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8!A§.alpha != 0)
         {
            _loc11_.alpha += this.§8!A§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^U§.red;
         var _loc14_:Number = this.§^U§.green;
         var _loc15_:Number = this.§^U§.blue;
         var _loc16_:Number = this.§^U§.alpha;
         if(this.§^7§.red != 0)
         {
            _loc13_ += this.§^7§.red * (Math.random() * 2 - 1);
         }
         if(this.§^7§.green != 0)
         {
            _loc14_ += this.§^7§.green * (Math.random() * 2 - 1);
         }
         if(this.§^7§.blue != 0)
         {
            _loc15_ += this.§^7§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^7§.alpha != 0)
         {
            _loc16_ += this.§^7§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§#-§, param2:Number) : void
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
         var _loc4_:Number = _loc3_.§%!2§ - _loc3_.§,b§;
         param2 = _loc4_ > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§,b§ += param2;
         if(this.§,8§ == this.§!!5§)
         {
            if(!_loc3_.skipUpdate || !this.§-!>§)
            {
               if(this.§-!>§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §&!!§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §1!0§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§=B§)
               {
                  _loc3_.§,b§ = _loc3_.§%!2§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-!>§)
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
               if(this.§-!>§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§>!E§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§'f§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§>!E§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§'f§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-!>§)
         {
            if(this.§-!>§)
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
      
      private function §]!K§(param1:XML, param2:Texture) : void
      {
         this.§'C§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§=!3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§>!E§ = parseFloat(param1.gravity.attribute("x"));
         this.§'f§ = parseFloat(param1.gravity.attribute("y"));
         this.§,8§ = this.§+!^§(param1.emitterType);
         this.§%d§ = this.§+!^§(param1.maxParticles);
         this.§]^§ = Math.max(0.01,this.§>!G§(param1.particleLifeSpan));
         this.§^O§ = this.§>!G§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§1r§ = this.§>!G§(param1.particleInterval);
         }
         else
         {
            this.§1r§ = 0;
         }
         this.§"!@§ = this.§>!G§(param1.startParticleSize);
         this.§43§ = this.§"!@§ * param2.height / param2.width;
         this.§1!b§ = this.§>!G§(param1.startParticleSizeVariance);
         this.§-!'§ = this.§1!b§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§"!@§ = this.§>!G§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§1!b§ = this.§>!G§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§43§ = this.§>!G§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§-!'§ = this.§>!G§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#!>§ = this.§>!G§(param1.finishParticleSize);
            this.§,!3§ = this.§#!>§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§]=§ = this.§>!G§(param1.FinishParticleSizeVariance);
            this.§6U§ = this.§]=§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#!>§ = this.§>!G§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§]=§ = this.§>!G§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§,!3§ = this.§>!G§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§6U§ = this.§>!G§(param1.FinishParticleSizeVarianceY);
         }
         this.§<!K§ = deg2rad(this.§>!G§(param1.angle));
         this.§=!I§ = deg2rad(this.§>!G§(param1.angleVariance));
         this.§-]§ = this.§>!G§(param1.speed);
         this.§=O§ = this.§>!G§(param1.speedVariance);
         this.§?!_§ = this.§>!G§(param1.radialAcceleration);
         this.§5!e§ = this.§>!G§(param1.tangentialAcceleration);
         this.§<!c§ = this.§>!G§(param1.maxRadius);
         this.§]!4§ = this.§>!G§(param1.maxRadiusVariance);
         this.§=B§ = this.§>!G§(param1.minRadius);
         this.§5!%§ = deg2rad(this.§>!G§(param1.rotatePerSecond));
         this.§@G§ = deg2rad(this.§>!G§(param1.rotatePerSecondVariance));
         this.§#!A§ = this.§<X§(param1.startColor);
         this.§8!A§ = this.§<X§(param1.startColorVariance);
         this.§^U§ = this.§<X§(param1.finishColor);
         this.§^7§ = this.§<X§(param1.finishColorVariance);
         §-!9§ = this.§>x§(param1.blendFuncSource);
         §-w§ = this.§>x§(param1.blendFuncDestination);
         §-x§ = this.§3!Q§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §4!F§ = this.§>!G§(param1.emissionVariance);
         }
      }
      
      protected function §+!^§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §>!G§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §[,§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<X§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §>x§(param1:XMLList) : String
      {
         var _loc2_:int = this.§+!^§(param1);
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
      
      protected function §3!Q§(param1:XMLList) : String
      {
         var _loc2_:String = this.§[,§(param1);
         if(_loc2_ == §&!A§.§^Z§ || _loc2_ == §&!A§.§?k§ || _loc2_ == §&!A§.NONE)
         {
            return _loc2_;
         }
         return §&!A§.§^Z§;
      }
   }
}

import §^s§.§#-§;

class PDParticle extends §#-§
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
