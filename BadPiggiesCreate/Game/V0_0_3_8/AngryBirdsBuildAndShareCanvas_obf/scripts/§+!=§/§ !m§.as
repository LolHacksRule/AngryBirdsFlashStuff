package §+!=§
{
   import §3!U§.§0F§;
   import §3!U§.Texture;
   import §9!a§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class § !m§ extends §6!e§
   {
       
      
      private const §>-§:int = 0;
      
      private const §9"1§:int = 1;
      
      private var §4!C§:Number;
      
      private var §[!g§:int;
      
      private var §7!&§:Number;
      
      private var §-5§:Number;
      
      private var §,%§:int;
      
      private var §4!h§:Number;
      
      private var §8o§:Number;
      
      private var §5!,§:Number;
      
      private var §-2§:Number;
      
      private var §+!j§:Number;
      
      private var §;"4§:Number;
      
      private var §7!b§:Number;
      
      private var §#P§:Number;
      
      private var §-"2§:Number;
      
      private var §-g§:Number;
      
      private var §[G§:Number;
      
      private var §<4§:Number;
      
      private var §[!Q§:Number;
      
      private var §7Z§:Number;
      
      private var §+C§:Number;
      
      private var §4$§:Number;
      
      private var §<S§:Number;
      
      private var §&L§:Number;
      
      private var §`S§:Number;
      
      private var § q§:Number;
      
      private var §#!§:Number;
      
      private var §?"'§:Number;
      
      private var §&Y§:Number;
      
      private var §,A§:Number;
      
      private var §0!?§:Number;
      
      private var §#+§:Number;
      
      private var §<[§:ColorArgb;
      
      private var §#!_§:ColorArgb;
      
      private var §15§:ColorArgb;
      
      private var §>!t§:ColorArgb;
      
      public function § !m§(param1:XML, param2:Texture)
      {
         this.§<d§(param1,param2);
         var _loc3_:Number = this.§,%§ / (this.§4!h§ + this.§5!,§);
         super(param2,_loc3_,this.§,%§,§]E§,§8!U§);
         §-!;§ = false;
      }
      
      public function get §9%§() : int
      {
         return this.§,%§;
      }
      
      override protected function createParticle() : §^!T§
      {
         return new PDParticle();
      }
      
      private function get §77§() : Boolean
      {
         return this.§9%§ >= 20;
      }
      
      override protected function initParticle(param1:§^!T§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§4!h§ + this.§8o§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§'7§ = 0;
         _loc2_.§@P§ = _loc3_;
         _loc2_.x = §;V§ + this.§7!&§ * (Math.random() * 2 - 1);
         _loc2_.y = § !k§ + this.§-5§ * (Math.random() * 2 - 1);
         _loc2_.startX = §;V§;
         _loc2_.startY = § !k§;
         var _loc4_:Number = this.§<4§ + this.§[!Q§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§7Z§ + this.§+C§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§?"'§ + this.§&Y§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§?"'§ / _loc3_;
         _loc2_.rotation = this.§<4§ + this.§[!Q§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§0!?§ + this.§#+§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§&L§;
         _loc2_.tangentialAcceleration = this.§ q§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§-2§ + this.§+!j§ * _loc6_;
         if(!isNaN(this.§#P§))
         {
            _loc8_ = this.§#P§;
            if(!isNaN(this.§-"2§))
            {
               _loc8_ += this.§-"2§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§;"4§ + this.§7!b§ * _loc6_;
         if(!isNaN(this.§-g§))
         {
            _loc10_ = this.§-g§;
            if(!isNaN(this.§[G§))
            {
               _loc10_ += this.§[G§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§<[§.red;
         _loc11_.green = this.§<[§.green;
         _loc11_.blue = this.§<[§.blue;
         _loc11_.alpha = this.§<[§.alpha;
         if(this.§#!_§.red != 0)
         {
            _loc11_.red += this.§#!_§.red * (Math.random() * 2 - 1);
         }
         if(this.§#!_§.green != 0)
         {
            _loc11_.green += this.§#!_§.green * (Math.random() * 2 - 1);
         }
         if(this.§#!_§.blue != 0)
         {
            _loc11_.blue += this.§#!_§.blue * (Math.random() * 2 - 1);
         }
         if(this.§#!_§.alpha != 0)
         {
            _loc11_.alpha += this.§#!_§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§15§.red;
         var _loc14_:Number = this.§15§.green;
         var _loc15_:Number = this.§15§.blue;
         var _loc16_:Number = this.§15§.alpha;
         if(this.§>!t§.red != 0)
         {
            _loc13_ += this.§>!t§.red * (Math.random() * 2 - 1);
         }
         if(this.§>!t§.green != 0)
         {
            _loc14_ += this.§>!t§.green * (Math.random() * 2 - 1);
         }
         if(this.§>!t§.blue != 0)
         {
            _loc15_ += this.§>!t§.blue * (Math.random() * 2 - 1);
         }
         if(this.§>!t§.alpha != 0)
         {
            _loc16_ += this.§>!t§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§^!T§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§@P§ - _loc3_.§'7§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§'7§ += param2;
         if(this.§[!g§ == this.§9"1§)
         {
            if(!_loc3_.skipUpdate || !this.§77§)
            {
               if(this.§77§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §;V§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = § !k§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§,A§)
               {
                  _loc3_.§'7§ = _loc3_.§@P§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§77§)
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
               if(this.§77§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§4$§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§<S§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§4$§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§<S§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§77§)
         {
            if(this.§77§)
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
      
      private function §<d§(param1:XML, param2:Texture) : void
      {
         this.§7!&§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§-5§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§4$§ = parseFloat(param1.gravity.attribute("x"));
         this.§<S§ = parseFloat(param1.gravity.attribute("y"));
         this.§[!g§ = this.§0@§(param1.emitterType);
         this.§,%§ = this.§0@§(param1.maxParticles);
         this.§4!h§ = Math.max(0.01,this.§!!y§(param1.particleLifeSpan));
         this.§8o§ = this.§!!y§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§5!,§ = this.§!!y§(param1.particleInterval);
         }
         else
         {
            this.§5!,§ = 0;
         }
         this.§-2§ = this.§!!y§(param1.startParticleSize);
         this.§;"4§ = this.§-2§ * param2.height / param2.width;
         this.§+!j§ = this.§!!y§(param1.startParticleSizeVariance);
         this.§7!b§ = this.§+!j§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§-2§ = this.§!!y§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§+!j§ = this.§!!y§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§;"4§ = this.§!!y§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§7!b§ = this.§!!y§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#P§ = this.§!!y§(param1.finishParticleSize);
            this.§-g§ = this.§#P§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§-"2§ = this.§!!y§(param1.FinishParticleSizeVariance);
            this.§[G§ = this.§-"2§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#P§ = this.§!!y§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§-"2§ = this.§!!y§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§-g§ = this.§!!y§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§[G§ = this.§!!y§(param1.FinishParticleSizeVarianceY);
         }
         this.§<4§ = deg2rad(this.§!!y§(param1.angle));
         this.§[!Q§ = deg2rad(this.§!!y§(param1.angleVariance));
         this.§7Z§ = this.§!!y§(param1.speed);
         this.§+C§ = this.§!!y§(param1.speedVariance);
         this.§&L§ = this.§!!y§(param1.radialAcceleration);
         this.§ q§ = this.§!!y§(param1.tangentialAcceleration);
         this.§?"'§ = this.§!!y§(param1.maxRadius);
         this.§&Y§ = this.§!!y§(param1.maxRadiusVariance);
         this.§,A§ = this.§!!y§(param1.minRadius);
         this.§0!?§ = deg2rad(this.§!!y§(param1.rotatePerSecond));
         this.§#+§ = deg2rad(this.§!!y§(param1.rotatePerSecondVariance));
         this.§<[§ = this.§72§(param1.startColor);
         this.§#!_§ = this.§72§(param1.startColorVariance);
         this.§15§ = this.§72§(param1.finishColor);
         this.§>!t§ = this.§72§(param1.finishColorVariance);
         §]E§ = this.§6!"§(param1.blendFuncSource);
         §8!U§ = this.§6!"§(param1.blendFuncDestination);
         §!!w§ = this.§>[§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §=7§ = this.§!!y§(param1.emissionVariance);
         }
      }
      
      protected function §0@§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §!!y§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §0!"§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §72§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §6!"§(param1:XMLList) : String
      {
         var _loc2_:int = this.§0@§(param1);
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
      
      protected function §>[§(param1:XMLList) : String
      {
         var _loc2_:String = this.§0!"§(param1);
         if(_loc2_ == §0F§.§%!M§ || _loc2_ == §0F§.§<p§ || _loc2_ == §0F§.NONE)
         {
            return _loc2_;
         }
         return §0F§.§%!M§;
      }
   }
}

import §+!=§.§^!T§;

class PDParticle extends §^!T§
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
