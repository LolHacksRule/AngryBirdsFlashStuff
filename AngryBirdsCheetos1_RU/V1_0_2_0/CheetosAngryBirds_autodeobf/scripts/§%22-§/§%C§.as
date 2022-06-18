package §"-§
{
   import §&b§.deg2rad;
   import §,Y§.§"2§;
   import §,Y§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §%C§ extends §&g§
   {
       
      
      private const §>!7§:int = 0;
      
      private const §,F§:int = 1;
      
      private var §-!0§:Number;
      
      private var §+0§:int;
      
      private var §^!B§:Number;
      
      private var §9b§:Number;
      
      private var §2[§:int;
      
      private var §5j§:Number;
      
      private var §8<§:Number;
      
      private var §6!K§:Number;
      
      private var §6!@§:Number;
      
      private var §[!W§:Number;
      
      private var §#!T§:Number;
      
      private var §,l§:Number;
      
      private var §#z§:Number;
      
      private var §"j§:Number;
      
      private var §,!§:Number;
      
      private var §,m§:Number;
      
      private var §#8§:Number;
      
      private var §=!+§:Number;
      
      private var §var §:Number;
      
      private var §[c§:Number;
      
      private var §^H§:Number;
      
      private var §[K§:Number;
      
      private var § !>§:Number;
      
      private var §8!-§:Number;
      
      private var §8z§:Number;
      
      private var §7!'§:Number;
      
      private var §4!=§:Number;
      
      private var §1!$§:Number;
      
      private var §=!H§:Number;
      
      private var §for§:Number;
      
      private var §0!2§:Number;
      
      private var §0!0§:ColorArgb;
      
      private var §?T§:ColorArgb;
      
      private var §^%§:ColorArgb;
      
      private var §-u§:ColorArgb;
      
      public function §%C§(param1:XML, param2:Texture)
      {
         this.§7N§(param1,param2);
         var _loc3_:Number = this.§2[§ / (this.§5j§ + this.§6!K§);
         super(param2,_loc3_,this.§2[§,§0!L§,§14§);
         §+M§ = false;
      }
      
      public function get §6!D§() : int
      {
         return this.§2[§;
      }
      
      override protected function createParticle() : §`c§
      {
         return new PDParticle();
      }
      
      private function get §'^§() : Boolean
      {
         return this.§6!D§ >= 20;
      }
      
      override protected function initParticle(param1:§`c§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§5j§ + this.§8<§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§%>§ = 0;
         _loc2_.§#]§ = _loc3_;
         _loc2_.x = §9,§ + this.§^!B§ * (Math.random() * 2 - 1);
         _loc2_.y = §6]§ + this.§9b§ * (Math.random() * 2 - 1);
         _loc2_.startX = §9,§;
         _loc2_.startY = §6]§;
         var _loc4_:Number = this.§#8§ + this.§=!+§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§var § + this.§[c§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§4!=§ + this.§1!$§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§4!=§ / _loc3_;
         _loc2_.rotation = this.§#8§ + this.§=!+§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§for§ + this.§0!2§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§ !>§;
         _loc2_.tangentialAcceleration = this.§8z§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§6!@§ + this.§[!W§ * _loc6_;
         if(!isNaN(this.§#z§))
         {
            _loc8_ = this.§#z§;
            if(!isNaN(this.§"j§))
            {
               _loc8_ += this.§"j§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§#!T§ + this.§,l§ * _loc6_;
         if(!isNaN(this.§,!§))
         {
            _loc10_ = this.§,!§;
            if(!isNaN(this.§,m§))
            {
               _loc10_ += this.§,m§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§0!0§.red;
         _loc11_.green = this.§0!0§.green;
         _loc11_.blue = this.§0!0§.blue;
         _loc11_.alpha = this.§0!0§.alpha;
         if(this.§?T§.red != 0)
         {
            _loc11_.red += this.§?T§.red * (Math.random() * 2 - 1);
         }
         if(this.§?T§.green != 0)
         {
            _loc11_.green += this.§?T§.green * (Math.random() * 2 - 1);
         }
         if(this.§?T§.blue != 0)
         {
            _loc11_.blue += this.§?T§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?T§.alpha != 0)
         {
            _loc11_.alpha += this.§?T§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^%§.red;
         var _loc14_:Number = this.§^%§.green;
         var _loc15_:Number = this.§^%§.blue;
         var _loc16_:Number = this.§^%§.alpha;
         if(this.§-u§.red != 0)
         {
            _loc13_ += this.§-u§.red * (Math.random() * 2 - 1);
         }
         if(this.§-u§.green != 0)
         {
            _loc14_ += this.§-u§.green * (Math.random() * 2 - 1);
         }
         if(this.§-u§.blue != 0)
         {
            _loc15_ += this.§-u§.blue * (Math.random() * 2 - 1);
         }
         if(this.§-u§.alpha != 0)
         {
            _loc16_ += this.§-u§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§`c§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§#]§ - _loc3_.§%>§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§%>§ += param2;
         if(this.§+0§ == this.§,F§)
         {
            if(!_loc3_.skipUpdate || !this.§'^§)
            {
               if(this.§'^§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §9,§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §6]§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§=!H§)
               {
                  _loc3_.§%>§ = _loc3_.§#]§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§'^§)
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
               if(this.§'^§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§^H§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§[K§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§^H§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§[K§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§'^§)
         {
            if(this.§'^§)
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
      
      private function §7N§(param1:XML, param2:Texture) : void
      {
         this.§^!B§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§9b§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§^H§ = parseFloat(param1.gravity.attribute("x"));
         this.§[K§ = parseFloat(param1.gravity.attribute("y"));
         this.§+0§ = this.§%`§(param1.emitterType);
         this.§2[§ = this.§%`§(param1.maxParticles);
         this.§5j§ = Math.max(0.01,this.§=x§(param1.particleLifeSpan));
         this.§8<§ = this.§=x§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§6!K§ = this.§=x§(param1.particleInterval);
         }
         else
         {
            this.§6!K§ = 0;
         }
         this.§6!@§ = this.§=x§(param1.startParticleSize);
         this.§#!T§ = this.§6!@§ * param2.height / param2.width;
         this.§[!W§ = this.§=x§(param1.startParticleSizeVariance);
         this.§,l§ = this.§[!W§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§6!@§ = this.§=x§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§[!W§ = this.§=x§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§#!T§ = this.§=x§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§,l§ = this.§=x§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#z§ = this.§=x§(param1.finishParticleSize);
            this.§,!§ = this.§#z§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§"j§ = this.§=x§(param1.FinishParticleSizeVariance);
            this.§,m§ = this.§"j§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#z§ = this.§=x§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§"j§ = this.§=x§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§,!§ = this.§=x§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§,m§ = this.§=x§(param1.FinishParticleSizeVarianceY);
         }
         this.§#8§ = deg2rad(this.§=x§(param1.angle));
         this.§=!+§ = deg2rad(this.§=x§(param1.angleVariance));
         this.§var § = this.§=x§(param1.speed);
         this.§[c§ = this.§=x§(param1.speedVariance);
         this.§ !>§ = this.§=x§(param1.radialAcceleration);
         this.§8z§ = this.§=x§(param1.tangentialAcceleration);
         this.§4!=§ = this.§=x§(param1.maxRadius);
         this.§1!$§ = this.§=x§(param1.maxRadiusVariance);
         this.§=!H§ = this.§=x§(param1.minRadius);
         this.§for§ = deg2rad(this.§=x§(param1.rotatePerSecond));
         this.§0!2§ = deg2rad(this.§=x§(param1.rotatePerSecondVariance));
         this.§0!0§ = this.§#3§(param1.startColor);
         this.§?T§ = this.§#3§(param1.startColorVariance);
         this.§^%§ = this.§#3§(param1.finishColor);
         this.§-u§ = this.§#3§(param1.finishColorVariance);
         §0!L§ = this.§-g§(param1.blendFuncSource);
         §14§ = this.§-g§(param1.blendFuncDestination);
         §+!<§ = this.§@N§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §,!P§ = this.§=x§(param1.emissionVariance);
         }
      }
      
      protected function §%`§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §=x§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §9V§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §#3§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §-g§(param1:XMLList) : String
      {
         var _loc2_:int = this.§%`§(param1);
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
      
      protected function §@N§(param1:XMLList) : String
      {
         var _loc2_:String = this.§9V§(param1);
         if(_loc2_ == §"2§.§7![§ || _loc2_ == §"2§.§4!-§ || _loc2_ == §"2§.NONE)
         {
            return _loc2_;
         }
         return §"2§.§7![§;
      }
   }
}

import §"-§.§`c§;

class PDParticle extends §`c§
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
