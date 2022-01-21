package § !g§
{
   import §&!9§.§,l§;
   import §&!9§.Texture;
   import §'!>§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §-!Q§ extends §@n§
   {
       
      
      private const §2K§:int = 0;
      
      private const §?m§:int = 1;
      
      private var §[!A§:Number;
      
      private var §]h§:int;
      
      private var §,!E§:Number;
      
      private var §1!S§:Number;
      
      private var § O§:int;
      
      private var §[!c§:Number;
      
      private var §!!7§:Number;
      
      private var §8q§:Number;
      
      private var §!!b§:Number;
      
      private var § G§:Number;
      
      private var §,!>§:Number;
      
      private var §'=§:Number;
      
      private var §;B§:Number;
      
      private var §]Q§:Number;
      
      private var §9!B§:Number;
      
      private var §82§:Number;
      
      private var §;6§:Number;
      
      private var §&1§:Number;
      
      private var § !6§:Number;
      
      private var §7!C§:Number;
      
      private var §5!B§:Number;
      
      private var §=!?§:Number;
      
      private var §7$§:Number;
      
      private var §#!`§:Number;
      
      private var §57§:Number;
      
      private var §=!1§:Number;
      
      private var §1$§:Number;
      
      private var §+!S§:Number;
      
      private var §#!O§:Number;
      
      private var §<!9§:Number;
      
      private var §?@§:Number;
      
      private var §>!9§:ColorArgb;
      
      private var §8h§:ColorArgb;
      
      private var §^F§:ColorArgb;
      
      private var §-!]§:ColorArgb;
      
      public function §-!Q§(param1:XML, param2:Texture)
      {
         this.§"s§(param1,param2);
         var _loc3_:Number = this.§ O§ / (this.§[!c§ + this.§8q§);
         super(param2,_loc3_,this.§ O§,§4w§,§"[§);
         §+d§ = false;
      }
      
      public function get §,f§() : int
      {
         return this.§ O§;
      }
      
      override protected function createParticle() : §]!^§
      {
         return new PDParticle();
      }
      
      private function get §+=§() : Boolean
      {
         return this.§,f§ >= 20;
      }
      
      override protected function initParticle(param1:§]!^§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§[!c§ + this.§!!7§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§2!F§ = 0;
         _loc2_.§,v§ = _loc3_;
         _loc2_.x = §?!]§ + this.§,!E§ * (Math.random() * 2 - 1);
         _loc2_.y = §]!Y§ + this.§1!S§ * (Math.random() * 2 - 1);
         _loc2_.startX = §?!]§;
         _loc2_.startY = §]!Y§;
         var _loc4_:Number = this.§;6§ + this.§&1§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§ !6§ + this.§7!C§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§1$§ + this.§+!S§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§1$§ / _loc3_;
         _loc2_.rotation = this.§;6§ + this.§&1§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§<!9§ + this.§?@§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§7$§;
         _loc2_.tangentialAcceleration = this.§57§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§!!b§ + this.§ G§ * _loc6_;
         if(!isNaN(this.§;B§))
         {
            _loc8_ = this.§;B§;
            if(!isNaN(this.§]Q§))
            {
               _loc8_ += this.§]Q§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§,!>§ + this.§'=§ * _loc6_;
         if(!isNaN(this.§9!B§))
         {
            _loc10_ = this.§9!B§;
            if(!isNaN(this.§82§))
            {
               _loc10_ += this.§82§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§>!9§.red;
         _loc11_.green = this.§>!9§.green;
         _loc11_.blue = this.§>!9§.blue;
         _loc11_.alpha = this.§>!9§.alpha;
         if(this.§8h§.red != 0)
         {
            _loc11_.red += this.§8h§.red * (Math.random() * 2 - 1);
         }
         if(this.§8h§.green != 0)
         {
            _loc11_.green += this.§8h§.green * (Math.random() * 2 - 1);
         }
         if(this.§8h§.blue != 0)
         {
            _loc11_.blue += this.§8h§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8h§.alpha != 0)
         {
            _loc11_.alpha += this.§8h§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^F§.red;
         var _loc14_:Number = this.§^F§.green;
         var _loc15_:Number = this.§^F§.blue;
         var _loc16_:Number = this.§^F§.alpha;
         if(this.§-!]§.red != 0)
         {
            _loc13_ += this.§-!]§.red * (Math.random() * 2 - 1);
         }
         if(this.§-!]§.green != 0)
         {
            _loc14_ += this.§-!]§.green * (Math.random() * 2 - 1);
         }
         if(this.§-!]§.blue != 0)
         {
            _loc15_ += this.§-!]§.blue * (Math.random() * 2 - 1);
         }
         if(this.§-!]§.alpha != 0)
         {
            _loc16_ += this.§-!]§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§]!^§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,v§ - _loc3_.§2!F§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§2!F§ += param2;
         if(this.§]h§ == this.§?m§)
         {
            if(!_loc3_.skipUpdate || !this.§+=§)
            {
               if(this.§+=§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §?!]§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §]!Y§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§#!O§)
               {
                  _loc3_.§2!F§ = _loc3_.§,v§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§+=§)
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
               if(this.§+=§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§5!B§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§=!?§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§5!B§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§=!?§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§+=§)
         {
            if(this.§+=§)
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
      
      private function §"s§(param1:XML, param2:Texture) : void
      {
         this.§,!E§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§1!S§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§5!B§ = parseFloat(param1.gravity.attribute("x"));
         this.§=!?§ = parseFloat(param1.gravity.attribute("y"));
         this.§]h§ = this.§5!5§(param1.emitterType);
         this.§ O§ = this.§5!5§(param1.maxParticles);
         this.§[!c§ = Math.max(0.01,this.§6n§(param1.particleLifeSpan));
         this.§!!7§ = this.§6n§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§8q§ = this.§6n§(param1.particleInterval);
         }
         else
         {
            this.§8q§ = 0;
         }
         this.§!!b§ = this.§6n§(param1.startParticleSize);
         this.§,!>§ = this.§!!b§ * param2.height / param2.width;
         this.§ G§ = this.§6n§(param1.startParticleSizeVariance);
         this.§'=§ = this.§ G§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§!!b§ = this.§6n§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§ G§ = this.§6n§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§,!>§ = this.§6n§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§'=§ = this.§6n§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§;B§ = this.§6n§(param1.finishParticleSize);
            this.§9!B§ = this.§;B§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§]Q§ = this.§6n§(param1.FinishParticleSizeVariance);
            this.§82§ = this.§]Q§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§;B§ = this.§6n§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§]Q§ = this.§6n§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§9!B§ = this.§6n§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§82§ = this.§6n§(param1.FinishParticleSizeVarianceY);
         }
         this.§;6§ = deg2rad(this.§6n§(param1.angle));
         this.§&1§ = deg2rad(this.§6n§(param1.angleVariance));
         this.§ !6§ = this.§6n§(param1.speed);
         this.§7!C§ = this.§6n§(param1.speedVariance);
         this.§7$§ = this.§6n§(param1.radialAcceleration);
         this.§57§ = this.§6n§(param1.tangentialAcceleration);
         this.§1$§ = this.§6n§(param1.maxRadius);
         this.§+!S§ = this.§6n§(param1.maxRadiusVariance);
         this.§#!O§ = this.§6n§(param1.minRadius);
         this.§<!9§ = deg2rad(this.§6n§(param1.rotatePerSecond));
         this.§?@§ = deg2rad(this.§6n§(param1.rotatePerSecondVariance));
         this.§>!9§ = this.static(param1.startColor);
         this.§8h§ = this.static(param1.startColorVariance);
         this.§^F§ = this.static(param1.finishColor);
         this.§-!]§ = this.static(param1.finishColorVariance);
         §4w§ = this.§&e§(param1.blendFuncSource);
         §"[§ = this.§&e§(param1.blendFuncDestination);
         §^!9§ = this.§2!h§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §2!6§ = this.§6n§(param1.emissionVariance);
         }
      }
      
      protected function §5!5§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6n§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §2!Y§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function static(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §&e§(param1:XMLList) : String
      {
         var _loc2_:int = this.§5!5§(param1);
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
      
      protected function §2!h§(param1:XMLList) : String
      {
         var _loc2_:String = this.§2!Y§(param1);
         if(_loc2_ == §,l§.§"!O§ || _loc2_ == §,l§.§-!_§ || _loc2_ == §,l§.NONE)
         {
            return _loc2_;
         }
         return §,l§.§"!O§;
      }
   }
}

import § !g§.§]!^§;

class PDParticle extends §]!^§
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
