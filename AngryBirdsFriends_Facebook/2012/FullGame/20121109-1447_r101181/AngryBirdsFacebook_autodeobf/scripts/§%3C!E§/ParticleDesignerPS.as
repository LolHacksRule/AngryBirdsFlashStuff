package §<!E§
{
   import §0!R§.§=w§;
   import §0!R§.Texture;
   import §1V§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §&!C§
   {
       
      
      private const §!"C§:int = 0;
      
      private const §?!X§:int = 1;
      
      private var §@!1§:Number;
      
      private var §>5§:int;
      
      private var §,$§:Number;
      
      private var §1`§:Number;
      
      private var §<!3§:int;
      
      private var §&_§:Number;
      
      private var §-!t§:Number;
      
      private var §[!v§:Number;
      
      private var §+7§:Number;
      
      private var §<S§:Number;
      
      private var §<X§:Number;
      
      private var §^"?§:Number;
      
      private var §,"A§:Number;
      
      private var §%!u§:Number;
      
      private var §^!&§:Number;
      
      private var §6!E§:Number;
      
      private var §5J§:Number;
      
      private var §[";§:Number;
      
      private var § 1§:Number;
      
      private var §;&§:Number;
      
      private var §2P§:Number;
      
      private var §^!p§:Number;
      
      private var §8"A§:Number;
      
      private var §?"$§:Number;
      
      private var §#&§:Number;
      
      private var §]r§:Number;
      
      private var §4L§:Number;
      
      private var §`!=§:Number;
      
      private var §!!Z§:Number;
      
      private var §1+§:Number;
      
      private var §"!0§:Number;
      
      private var §^5§:ColorArgb;
      
      private var §!!=§:ColorArgb;
      
      private var § W§:ColorArgb;
      
      private var §9?§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§3@§(param1,param2);
         var _loc3_:Number = this.§<!3§ / (this.§&_§ + this.§[!v§);
         super(param2,_loc3_,this.§<!3§,§6"=§,§'!"§);
         §;!n§ = false;
      }
      
      public function get §&!&§() : int
      {
         return this.§<!3§;
      }
      
      override protected function createParticle() : §[M§
      {
         return new PDParticle();
      }
      
      private function get §,g§() : Boolean
      {
         return this.§&!&§ >= 20;
      }
      
      override protected function initParticle(param1:§[M§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§&_§ + this.§-!t§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§^#§ = 0;
         _loc2_.§ B§ = _loc3_;
         _loc2_.x = §'"9§ + this.§,$§ * (Math.random() * 2 - 1);
         _loc2_.y = §0!d§ + this.§1`§ * (Math.random() * 2 - 1);
         _loc2_.startX = §'"9§;
         _loc2_.startY = §0!d§;
         var _loc4_:Number = this.§5J§ + this.§[";§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§ 1§ + this.§;&§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§4L§ + this.§`!=§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§4L§ / _loc3_;
         _loc2_.rotation = this.§5J§ + this.§[";§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§1+§ + this.§"!0§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§8"A§;
         _loc2_.tangentialAcceleration = this.§#&§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§+7§ + this.§<S§ * _loc6_;
         if(!isNaN(this.§,"A§))
         {
            _loc8_ = this.§,"A§;
            if(!isNaN(this.§%!u§))
            {
               _loc8_ += this.§%!u§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§<X§ + this.§^"?§ * _loc6_;
         if(!isNaN(this.§^!&§))
         {
            _loc10_ = this.§^!&§;
            if(!isNaN(this.§6!E§))
            {
               _loc10_ += this.§6!E§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§^5§.red;
         _loc11_.green = this.§^5§.green;
         _loc11_.blue = this.§^5§.blue;
         _loc11_.alpha = this.§^5§.alpha;
         if(this.§!!=§.red != 0)
         {
            _loc11_.red += this.§!!=§.red * (Math.random() * 2 - 1);
         }
         if(this.§!!=§.green != 0)
         {
            _loc11_.green += this.§!!=§.green * (Math.random() * 2 - 1);
         }
         if(this.§!!=§.blue != 0)
         {
            _loc11_.blue += this.§!!=§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!!=§.alpha != 0)
         {
            _loc11_.alpha += this.§!!=§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§ W§.red;
         var _loc14_:Number = this.§ W§.green;
         var _loc15_:Number = this.§ W§.blue;
         var _loc16_:Number = this.§ W§.alpha;
         if(this.§9?§.red != 0)
         {
            _loc13_ += this.§9?§.red * (Math.random() * 2 - 1);
         }
         if(this.§9?§.green != 0)
         {
            _loc14_ += this.§9?§.green * (Math.random() * 2 - 1);
         }
         if(this.§9?§.blue != 0)
         {
            _loc15_ += this.§9?§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9?§.alpha != 0)
         {
            _loc16_ += this.§9?§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§[M§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§ B§ - _loc3_.§^#§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§^#§ += param2;
         if(this.§>5§ == this.§?!X§)
         {
            if(!_loc3_.skipUpdate || !this.§,g§)
            {
               if(this.§,g§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §'"9§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §0!d§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§!!Z§)
               {
                  _loc3_.§^#§ = _loc3_.§ B§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§,g§)
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
               if(this.§,g§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§2P§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§^!p§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§2P§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§^!p§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§,g§)
         {
            if(this.§,g§)
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
      
      private function §3@§(param1:XML, param2:Texture) : void
      {
         this.§,$§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§1`§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§2P§ = parseFloat(param1.gravity.attribute("x"));
         this.§^!p§ = parseFloat(param1.gravity.attribute("y"));
         this.§>5§ = this.§4Y§(param1.emitterType);
         this.§<!3§ = this.§4Y§(param1.maxParticles);
         this.§&_§ = Math.max(0.01,this.§4;§(param1.particleLifeSpan));
         this.§-!t§ = this.§4;§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§[!v§ = this.§4;§(param1.particleInterval);
         }
         else
         {
            this.§[!v§ = 0;
         }
         this.§+7§ = this.§4;§(param1.startParticleSize);
         this.§<X§ = this.§+7§ * param2.height / param2.width;
         this.§<S§ = this.§4;§(param1.startParticleSizeVariance);
         this.§^"?§ = this.§<S§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§+7§ = this.§4;§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§<S§ = this.§4;§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§<X§ = this.§4;§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§^"?§ = this.§4;§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§,"A§ = this.§4;§(param1.finishParticleSize);
            this.§^!&§ = this.§,"A§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§%!u§ = this.§4;§(param1.FinishParticleSizeVariance);
            this.§6!E§ = this.§%!u§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§,"A§ = this.§4;§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§%!u§ = this.§4;§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§^!&§ = this.§4;§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§6!E§ = this.§4;§(param1.FinishParticleSizeVarianceY);
         }
         this.§5J§ = deg2rad(this.§4;§(param1.angle));
         this.§[";§ = deg2rad(this.§4;§(param1.angleVariance));
         this.§ 1§ = this.§4;§(param1.speed);
         this.§;&§ = this.§4;§(param1.speedVariance);
         this.§8"A§ = this.§4;§(param1.radialAcceleration);
         this.§#&§ = this.§4;§(param1.tangentialAcceleration);
         this.§4L§ = this.§4;§(param1.maxRadius);
         this.§`!=§ = this.§4;§(param1.maxRadiusVariance);
         this.§!!Z§ = this.§4;§(param1.minRadius);
         this.§1+§ = deg2rad(this.§4;§(param1.rotatePerSecond));
         this.§"!0§ = deg2rad(this.§4;§(param1.rotatePerSecondVariance));
         this.§^5§ = this.§5"<§(param1.startColor);
         this.§!!=§ = this.§5"<§(param1.startColorVariance);
         this.§ W§ = this.§5"<§(param1.finishColor);
         this.§9?§ = this.§5"<§(param1.finishColorVariance);
         §6"=§ = this.§5$§(param1.blendFuncSource);
         §'!"§ = this.§5$§(param1.blendFuncDestination);
         §<!7§ = this.§,e§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §8!L§ = this.§4;§(param1.emissionVariance);
         }
      }
      
      protected function §4Y§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §4;§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5"A§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §5"<§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §5$§(param1:XMLList) : String
      {
         var _loc2_:int = this.§4Y§(param1);
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
      
      protected function §,e§(param1:XMLList) : String
      {
         var _loc2_:String = this.§5"A§(param1);
         if(_loc2_ == §=w§.§8!Q§ || _loc2_ == §=w§.§>o§ || _loc2_ == §=w§.NONE)
         {
            return _loc2_;
         }
         return §=w§.§8!Q§;
      }
   }
}

import §<!E§.§[M§;

class PDParticle extends §[M§
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
