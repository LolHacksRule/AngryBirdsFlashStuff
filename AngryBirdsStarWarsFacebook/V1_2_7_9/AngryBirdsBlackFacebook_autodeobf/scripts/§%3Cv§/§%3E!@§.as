package §<v§
{
   import §3"e§.deg2rad;
   import §<"L§.Texture;
   import §<"L§.§]!7§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §>!@§ extends §@!T§
   {
       
      
      private const §`p§:int = 0;
      
      private const §6"X§:int = 1;
      
      private var §`"&§:Number;
      
      private var §6!K§:int;
      
      private var §]!+§:Number;
      
      private var §<!W§:Number;
      
      private var §6E§:int;
      
      private var §8P§:Number;
      
      private var §8"p§:Number;
      
      private var §!"0§:Number;
      
      private var §>!§:Number;
      
      private var §`"s§:Number;
      
      private var §>K§:Number;
      
      private var §6"5§:Number;
      
      private var §^"l§:Number;
      
      private var §;]§:Number;
      
      private var §=u§:Number;
      
      private var §-!5§:Number;
      
      private var §3#-§:Number;
      
      private var §?T§:Number;
      
      private var §`w§:Number;
      
      private var §8"M§:Number;
      
      private var §!d§:Number;
      
      private var §1!u§:Number;
      
      private var §8s§:Number;
      
      private var §`"2§:Number;
      
      private var §[5§:Number;
      
      private var §6"v§:Number;
      
      private var §=##§:Number;
      
      private var §-V§:Number;
      
      private var §^!+§:Number;
      
      private var §4U§:Number;
      
      private var §4#&§:Number;
      
      private var §0##§:ColorArgb;
      
      private var §[;§:ColorArgb;
      
      private var §2"§:ColorArgb;
      
      private var §;d§:ColorArgb;
      
      public function §>!@§(param1:XML, param2:Texture)
      {
         this.§#"Q§(param1,param2);
         var _loc3_:Number = this.§6E§ / (this.§8P§ + this.§!"0§);
         super(param2,_loc3_,this.§6E§,§[! §,§>"a§);
         §2!N§ = false;
      }
      
      public function get §<#§() : int
      {
         return this.§6E§;
      }
      
      override protected function createParticle() : §3!8§
      {
         return new PDParticle();
      }
      
      private function get §<"&§() : Boolean
      {
         return this.§<#§ >= 20;
      }
      
      override protected function initParticle(param1:§3!8§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§8P§ + this.§8"p§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§%m§ = _loc3_;
         _loc2_.x = §`"n§ + this.§]!+§ * (Math.random() * 2 - 1);
         _loc2_.y = §0M§ + this.§<!W§ * (Math.random() * 2 - 1);
         _loc2_.startX = §`"n§;
         _loc2_.startY = §0M§;
         var _loc4_:Number = this.§3#-§ + this.§?T§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§`w§ + this.§8"M§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§=##§ + this.§-V§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§=##§ / _loc3_;
         _loc2_.rotation = this.§3#-§ + this.§?T§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§4U§ + this.§4#&§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§8s§;
         _loc2_.tangentialAcceleration = this.§[5§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§>!§ + this.§`"s§ * _loc6_;
         if(!isNaN(this.§^"l§))
         {
            _loc8_ = this.§^"l§;
            if(!isNaN(this.§;]§))
            {
               _loc8_ += this.§;]§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§>K§ + this.§6"5§ * _loc6_;
         if(!isNaN(this.§=u§))
         {
            _loc10_ = this.§=u§;
            if(!isNaN(this.§-!5§))
            {
               _loc10_ += this.§-!5§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§0##§.red;
         _loc11_.green = this.§0##§.green;
         _loc11_.blue = this.§0##§.blue;
         _loc11_.alpha = this.§0##§.alpha;
         if(this.§[;§.red != 0)
         {
            _loc11_.red += this.§[;§.red * (Math.random() * 2 - 1);
         }
         if(this.§[;§.green != 0)
         {
            _loc11_.green += this.§[;§.green * (Math.random() * 2 - 1);
         }
         if(this.§[;§.blue != 0)
         {
            _loc11_.blue += this.§[;§.blue * (Math.random() * 2 - 1);
         }
         if(this.§[;§.alpha != 0)
         {
            _loc11_.alpha += this.§[;§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§2"§.red;
         var _loc14_:Number = this.§2"§.green;
         var _loc15_:Number = this.§2"§.blue;
         var _loc16_:Number = this.§2"§.alpha;
         if(this.§;d§.red != 0)
         {
            _loc13_ += this.§;d§.red * (Math.random() * 2 - 1);
         }
         if(this.§;d§.green != 0)
         {
            _loc14_ += this.§;d§.green * (Math.random() * 2 - 1);
         }
         if(this.§;d§.blue != 0)
         {
            _loc15_ += this.§;d§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;d§.alpha != 0)
         {
            _loc16_ += this.§;d§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§3!8§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§%m§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§6!K§ == this.§6"X§)
         {
            if(!_loc3_.skipUpdate || !this.§<"&§)
            {
               if(this.§<"&§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §`"n§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §0M§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§^!+§)
               {
                  _loc3_.currentTime = _loc3_.§%m§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§<"&§)
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
               if(this.§<"&§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§!d§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§1!u§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§!d§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§1!u§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§<"&§)
         {
            if(this.§<"&§)
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
      
      private function §#"Q§(param1:XML, param2:Texture) : void
      {
         this.§]!+§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§<!W§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§!d§ = parseFloat(param1.gravity.attribute("x"));
         this.§1!u§ = parseFloat(param1.gravity.attribute("y"));
         this.§6!K§ = this.§^"?§(param1.emitterType);
         this.§6E§ = this.§^"?§(param1.maxParticles);
         this.§8P§ = Math.max(0.01,this.§+"m§(param1.particleLifeSpan));
         this.§8"p§ = this.§+"m§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§!"0§ = this.§+"m§(param1.particleInterval);
         }
         else
         {
            this.§!"0§ = 0;
         }
         this.§>!§ = this.§+"m§(param1.startParticleSize);
         this.§>K§ = this.§>!§ * param2.height / param2.width;
         this.§`"s§ = this.§+"m§(param1.startParticleSizeVariance);
         this.§6"5§ = this.§`"s§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§>!§ = this.§+"m§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`"s§ = this.§+"m§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§>K§ = this.§+"m§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§6"5§ = this.§+"m§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§^"l§ = this.§+"m§(param1.finishParticleSize);
            this.§=u§ = this.§^"l§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§;]§ = this.§+"m§(param1.FinishParticleSizeVariance);
            this.§-!5§ = this.§;]§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§^"l§ = this.§+"m§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§;]§ = this.§+"m§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§=u§ = this.§+"m§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§-!5§ = this.§+"m§(param1.FinishParticleSizeVarianceY);
         }
         this.§3#-§ = deg2rad(this.§+"m§(param1.angle));
         this.§?T§ = deg2rad(this.§+"m§(param1.angleVariance));
         this.§`w§ = this.§+"m§(param1.speed);
         this.§8"M§ = this.§+"m§(param1.speedVariance);
         this.§8s§ = this.§+"m§(param1.radialAcceleration);
         this.§[5§ = this.§+"m§(param1.tangentialAcceleration);
         this.§=##§ = this.§+"m§(param1.maxRadius);
         this.§-V§ = this.§+"m§(param1.maxRadiusVariance);
         this.§^!+§ = this.§+"m§(param1.minRadius);
         this.§4U§ = deg2rad(this.§+"m§(param1.rotatePerSecond));
         this.§4#&§ = deg2rad(this.§+"m§(param1.rotatePerSecondVariance));
         this.§0##§ = this.§'!r§(param1.startColor);
         this.§[;§ = this.§'!r§(param1.startColorVariance);
         this.§2"§ = this.§'!r§(param1.finishColor);
         this.§;d§ = this.§'!r§(param1.finishColorVariance);
         §[! § = this.§ ##§(param1.blendFuncSource);
         §>"a§ = this.§ ##§(param1.blendFuncDestination);
         §9O§ = this.§8"K§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §]"z§ = this.§+"m§(param1.emissionVariance);
         }
      }
      
      protected function §^"?§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §+"m§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §`!?§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §'!r§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function § ##§(param1:XMLList) : String
      {
         var _loc2_:int = this.§^"?§(param1);
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
      
      protected function §8"K§(param1:XMLList) : String
      {
         var _loc2_:String = this.§`!?§(param1);
         if(_loc2_ == §]!7§.§#!5§ || _loc2_ == §]!7§.§""`§ || _loc2_ == §]!7§.NONE)
         {
            return _loc2_;
         }
         return §]!7§.§#!5§;
      }
   }
}

import §<v§.§3!8§;

class PDParticle extends §3!8§
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
