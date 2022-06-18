package § T§
{
   import §"X§.§&!3§;
   import §"X§.Texture;
   import §`8§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §#! §
   {
       
      
      private const §7S§:int = 0;
      
      private const §<[§:int = 1;
      
      private var §[U§:Number;
      
      private var §&u§:int;
      
      private var §?c§:Number;
      
      private var §-!!§:Number;
      
      private var §<;§:int;
      
      private var §`O§:Number;
      
      private var §0!E§:Number;
      
      private var § !§:Number;
      
      private var §!!2§:Number;
      
      private var §>A§:Number;
      
      private var §]8§:Number;
      
      private var § "§:Number;
      
      private var §5!F§:Number;
      
      private var §`H§:Number;
      
      private var §"e§:Number;
      
      private var §2!!§:Number;
      
      private var §"V§:Number;
      
      private var §"!#§:Number;
      
      private var §`a§:Number;
      
      private var §`!-§:Number;
      
      private var §&y§:Number;
      
      private var §+%§:Number;
      
      private var §0i§:Number;
      
      private var §67§:Number;
      
      private var §?S§:Number;
      
      private var §,s§:Number;
      
      private var §`g§:Number;
      
      private var §=!0§:Number;
      
      private var §7A§:Number;
      
      private var §?!$§:Number;
      
      private var §^m§:Number;
      
      private var §^[§:ColorArgb;
      
      private var §^!"§:ColorArgb;
      
      private var §0B§:ColorArgb;
      
      private var §-Z§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§<c§(param1,param2);
         var _loc3_:Number = this.§<;§ / (this.§`O§ + this.§ !§);
         super(param2,_loc3_,this.§<;§,§ !C§,§+!3§);
         §+i§ = false;
      }
      
      public function get §#9§() : int
      {
         return this.§<;§;
      }
      
      override protected function createParticle() : §>!M§
      {
         return new PDParticle();
      }
      
      private function get §9!A§() : Boolean
      {
         return this.§#9§ >= 20;
      }
      
      override protected function initParticle(param1:§>!M§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§`O§ + this.§0!E§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§,F§ = _loc3_;
         _loc2_.x = §=p§ + this.§?c§ * (Math.random() * 2 - 1);
         _loc2_.y = §+0§ + this.§-!!§ * (Math.random() * 2 - 1);
         _loc2_.startX = §=p§;
         _loc2_.startY = §+0§;
         var _loc4_:Number = this.§"V§ + this.§"!#§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§`a§ + this.§`!-§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§`g§ + this.§=!0§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§`g§ / _loc3_;
         _loc2_.rotation = this.§"V§ + this.§"!#§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§?!$§ + this.§^m§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§0i§;
         _loc2_.tangentialAcceleration = this.§?S§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§!!2§ + this.§>A§ * _loc6_;
         if(!isNaN(this.§5!F§))
         {
            _loc8_ = this.§5!F§;
            if(!isNaN(this.§`H§))
            {
               _loc8_ += this.§`H§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§]8§ + this.§ "§ * _loc6_;
         if(!isNaN(this.§"e§))
         {
            _loc10_ = this.§"e§;
            if(!isNaN(this.§2!!§))
            {
               _loc10_ += this.§2!!§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§^[§.red;
         _loc11_.green = this.§^[§.green;
         _loc11_.blue = this.§^[§.blue;
         _loc11_.alpha = this.§^[§.alpha;
         if(this.§^!"§.red != 0)
         {
            _loc11_.red += this.§^!"§.red * (Math.random() * 2 - 1);
         }
         if(this.§^!"§.green != 0)
         {
            _loc11_.green += this.§^!"§.green * (Math.random() * 2 - 1);
         }
         if(this.§^!"§.blue != 0)
         {
            _loc11_.blue += this.§^!"§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^!"§.alpha != 0)
         {
            _loc11_.alpha += this.§^!"§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§0B§.red;
         var _loc14_:Number = this.§0B§.green;
         var _loc15_:Number = this.§0B§.blue;
         var _loc16_:Number = this.§0B§.alpha;
         if(this.§-Z§.red != 0)
         {
            _loc13_ += this.§-Z§.red * (Math.random() * 2 - 1);
         }
         if(this.§-Z§.green != 0)
         {
            _loc14_ += this.§-Z§.green * (Math.random() * 2 - 1);
         }
         if(this.§-Z§.blue != 0)
         {
            _loc15_ += this.§-Z§.blue * (Math.random() * 2 - 1);
         }
         if(this.§-Z§.alpha != 0)
         {
            _loc16_ += this.§-Z§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§>!M§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,F§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§&u§ == this.§<[§)
         {
            if(!_loc3_.skipUpdate || !this.§9!A§)
            {
               if(this.§9!A§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=p§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §+0§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§7A§)
               {
                  _loc3_.currentTime = _loc3_.§,F§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§9!A§)
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
               if(this.§9!A§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§&y§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§+%§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&y§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§+%§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§9!A§)
         {
            if(this.§9!A§)
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
      
      private function §<c§(param1:XML, param2:Texture) : void
      {
         this.§?c§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§-!!§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&y§ = parseFloat(param1.gravity.attribute("x"));
         this.§+%§ = parseFloat(param1.gravity.attribute("y"));
         this.§&u§ = this.§&!1§(param1.emitterType);
         this.§<;§ = this.§&!1§(param1.maxParticles);
         this.§`O§ = Math.max(0.01,this.§=!C§(param1.particleLifeSpan));
         this.§0!E§ = this.§=!C§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§ !§ = this.§=!C§(param1.particleInterval);
         }
         else
         {
            this.§ !§ = 0;
         }
         this.§!!2§ = this.§=!C§(param1.startParticleSize);
         this.§]8§ = this.§!!2§ * param2.height / param2.width;
         this.§>A§ = this.§=!C§(param1.startParticleSizeVariance);
         this.§ "§ = this.§>A§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§!!2§ = this.§=!C§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§>A§ = this.§=!C§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§]8§ = this.§=!C§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§ "§ = this.§=!C§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§5!F§ = this.§=!C§(param1.finishParticleSize);
            this.§"e§ = this.§5!F§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§`H§ = this.§=!C§(param1.FinishParticleSizeVariance);
            this.§2!!§ = this.§`H§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§5!F§ = this.§=!C§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§`H§ = this.§=!C§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§"e§ = this.§=!C§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§2!!§ = this.§=!C§(param1.FinishParticleSizeVarianceY);
         }
         this.§"V§ = deg2rad(this.§=!C§(param1.angle));
         this.§"!#§ = deg2rad(this.§=!C§(param1.angleVariance));
         this.§`a§ = this.§=!C§(param1.speed);
         this.§`!-§ = this.§=!C§(param1.speedVariance);
         this.§0i§ = this.§=!C§(param1.radialAcceleration);
         this.§?S§ = this.§=!C§(param1.tangentialAcceleration);
         this.§`g§ = this.§=!C§(param1.maxRadius);
         this.§=!0§ = this.§=!C§(param1.maxRadiusVariance);
         this.§7A§ = this.§=!C§(param1.minRadius);
         this.§?!$§ = deg2rad(this.§=!C§(param1.rotatePerSecond));
         this.§^m§ = deg2rad(this.§=!C§(param1.rotatePerSecondVariance));
         this.§^[§ = this.§'"§(param1.startColor);
         this.§^!"§ = this.§'"§(param1.startColorVariance);
         this.§0B§ = this.§'"§(param1.finishColor);
         this.§-Z§ = this.§'"§(param1.finishColorVariance);
         § !C§ = this.§&!M§(param1.blendFuncSource);
         §+!3§ = this.§&!M§(param1.blendFuncDestination);
         §#+§ = this.§[h§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §+!N§ = this.§=!C§(param1.emissionVariance);
         }
      }
      
      protected function §&!1§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §=!C§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%P§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §'"§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §&!M§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&!1§(param1);
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
      
      protected function §[h§(param1:XMLList) : String
      {
         var _loc2_:String = this.§%P§(param1);
         if(_loc2_ == §&!3§.§?!9§ || _loc2_ == §&!3§.§;L§ || _loc2_ == §&!3§.NONE)
         {
            return _loc2_;
         }
         return §&!3§.§?!9§;
      }
   }
}

import § T§.§>!M§;

class PDParticle extends §>!M§
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
