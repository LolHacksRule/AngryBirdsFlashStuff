package §'p§
{
   import §"!<§.§7$§;
   import §"!<§.Texture;
   import §;!F§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §!-§ extends §6!=§
   {
       
      
      private const §#L§:int = 0;
      
      private const §8f§:int = 1;
      
      private var §+!?§:Number;
      
      private var §#K§:int;
      
      private var §5!Q§:Number;
      
      private var §@!!§:Number;
      
      private var §2!E§:int;
      
      private var § !-§:Number;
      
      private var §!!F§:Number;
      
      private var §2M§:Number;
      
      private var §4!_§:Number;
      
      private var §1O§:Number;
      
      private var §?j§:Number;
      
      private var §0!8§:Number;
      
      private var §1W§:Number;
      
      private var §0!§:Number;
      
      private var §+!R§:Number;
      
      private var §8!&§:Number;
      
      private var §,!"§:Number;
      
      private var §@!M§:Number;
      
      private var §%S§:Number;
      
      private var §5!F§:Number;
      
      private var §+f§:Number;
      
      private var §,!;§:Number;
      
      private var §;v§:Number;
      
      private var §2C§:Number;
      
      private var §0G§:Number;
      
      private var §^!I§:Number;
      
      private var §@x§:Number;
      
      private var §-[§:Number;
      
      private var §"0§:Number;
      
      private var §2]§:Number;
      
      private var §@!=§:Number;
      
      private var §&F§:ColorArgb;
      
      private var §9!A§:ColorArgb;
      
      private var §!!-§:ColorArgb;
      
      private var §7!E§:ColorArgb;
      
      public function §!-§(param1:XML, param2:Texture)
      {
         this.§?t§(param1,param2);
         var _loc3_:Number = this.§2!E§ / (this.§ !-§ + this.§2M§);
         super(param2,_loc3_,this.§2!E§,§=!2§,§"_§);
         §-!'§ = false;
      }
      
      public function get §5[§() : int
      {
         return this.§2!E§;
      }
      
      override protected function createParticle() : §"!M§
      {
         return new PDParticle();
      }
      
      private function get §79§() : Boolean
      {
         return this.§5[§ >= 20;
      }
      
      override protected function initParticle(param1:§"!M§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§ !-§ + this.§!!F§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§@!-§ = 0;
         _loc2_.§7!?§ = _loc3_;
         _loc2_.x = §"v§ + this.§5!Q§ * (Math.random() * 2 - 1);
         _loc2_.y = §^M§ + this.§@!!§ * (Math.random() * 2 - 1);
         _loc2_.startX = §"v§;
         _loc2_.startY = §^M§;
         var _loc4_:Number = this.§,!"§ + this.§@!M§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§%S§ + this.§5!F§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§@x§ + this.§-[§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§@x§ / _loc3_;
         _loc2_.rotation = this.§,!"§ + this.§@!M§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§2]§ + this.§@!=§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§;v§;
         _loc2_.tangentialAcceleration = this.§0G§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§4!_§ + this.§1O§ * _loc6_;
         if(!isNaN(this.§1W§))
         {
            _loc8_ = this.§1W§;
            if(!isNaN(this.§0!§))
            {
               _loc8_ += this.§0!§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§?j§ + this.§0!8§ * _loc6_;
         if(!isNaN(this.§+!R§))
         {
            _loc10_ = this.§+!R§;
            if(!isNaN(this.§8!&§))
            {
               _loc10_ += this.§8!&§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§&F§.red;
         _loc11_.green = this.§&F§.green;
         _loc11_.blue = this.§&F§.blue;
         _loc11_.alpha = this.§&F§.alpha;
         if(this.§9!A§.red != 0)
         {
            _loc11_.red += this.§9!A§.red * (Math.random() * 2 - 1);
         }
         if(this.§9!A§.green != 0)
         {
            _loc11_.green += this.§9!A§.green * (Math.random() * 2 - 1);
         }
         if(this.§9!A§.blue != 0)
         {
            _loc11_.blue += this.§9!A§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9!A§.alpha != 0)
         {
            _loc11_.alpha += this.§9!A§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§!!-§.red;
         var _loc14_:Number = this.§!!-§.green;
         var _loc15_:Number = this.§!!-§.blue;
         var _loc16_:Number = this.§!!-§.alpha;
         if(this.§7!E§.red != 0)
         {
            _loc13_ += this.§7!E§.red * (Math.random() * 2 - 1);
         }
         if(this.§7!E§.green != 0)
         {
            _loc14_ += this.§7!E§.green * (Math.random() * 2 - 1);
         }
         if(this.§7!E§.blue != 0)
         {
            _loc15_ += this.§7!E§.blue * (Math.random() * 2 - 1);
         }
         if(this.§7!E§.alpha != 0)
         {
            _loc16_ += this.§7!E§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§"!M§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§7!?§ - _loc3_.§@!-§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§@!-§ += param2;
         if(this.§#K§ == this.§8f§)
         {
            if(!_loc3_.skipUpdate || !this.§79§)
            {
               if(this.§79§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §"v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §^M§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§"0§)
               {
                  _loc3_.§@!-§ = _loc3_.§7!?§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§79§)
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
               if(this.§79§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§+f§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§,!;§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§+f§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§,!;§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§79§)
         {
            if(this.§79§)
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
      
      private function §?t§(param1:XML, param2:Texture) : void
      {
         this.§5!Q§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§@!!§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§+f§ = parseFloat(param1.gravity.attribute("x"));
         this.§,!;§ = parseFloat(param1.gravity.attribute("y"));
         this.§#K§ = this.§,+§(param1.emitterType);
         this.§2!E§ = this.§,+§(param1.maxParticles);
         this.§ !-§ = Math.max(0.01,this.§ G§(param1.particleLifeSpan));
         this.§!!F§ = this.§ G§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§2M§ = this.§ G§(param1.particleInterval);
         }
         else
         {
            this.§2M§ = 0;
         }
         this.§4!_§ = this.§ G§(param1.startParticleSize);
         this.§?j§ = this.§4!_§ * param2.height / param2.width;
         this.§1O§ = this.§ G§(param1.startParticleSizeVariance);
         this.§0!8§ = this.§1O§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§4!_§ = this.§ G§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§1O§ = this.§ G§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§?j§ = this.§ G§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§0!8§ = this.§ G§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§1W§ = this.§ G§(param1.finishParticleSize);
            this.§+!R§ = this.§1W§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§0!§ = this.§ G§(param1.FinishParticleSizeVariance);
            this.§8!&§ = this.§0!§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§1W§ = this.§ G§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§0!§ = this.§ G§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§+!R§ = this.§ G§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§8!&§ = this.§ G§(param1.FinishParticleSizeVarianceY);
         }
         this.§,!"§ = deg2rad(this.§ G§(param1.angle));
         this.§@!M§ = deg2rad(this.§ G§(param1.angleVariance));
         this.§%S§ = this.§ G§(param1.speed);
         this.§5!F§ = this.§ G§(param1.speedVariance);
         this.§;v§ = this.§ G§(param1.radialAcceleration);
         this.§0G§ = this.§ G§(param1.tangentialAcceleration);
         this.§@x§ = this.§ G§(param1.maxRadius);
         this.§-[§ = this.§ G§(param1.maxRadiusVariance);
         this.§"0§ = this.§ G§(param1.minRadius);
         this.§2]§ = deg2rad(this.§ G§(param1.rotatePerSecond));
         this.§@!=§ = deg2rad(this.§ G§(param1.rotatePerSecondVariance));
         this.§&F§ = this.§#!Q§(param1.startColor);
         this.§9!A§ = this.§#!Q§(param1.startColorVariance);
         this.§!!-§ = this.§#!Q§(param1.finishColor);
         this.§7!E§ = this.§#!Q§(param1.finishColorVariance);
         §=!2§ = this.§0k§(param1.blendFuncSource);
         §"_§ = this.§0k§(param1.blendFuncDestination);
         §=!<§ = this.§1!"§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §^m§ = this.§ G§(param1.emissionVariance);
         }
      }
      
      protected function §,+§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function § G§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §8!S§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §#!Q§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §0k§(param1:XMLList) : String
      {
         var _loc2_:int = this.§,+§(param1);
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
      
      protected function §1!"§(param1:XMLList) : String
      {
         var _loc2_:String = this.§8!S§(param1);
         if(_loc2_ == §7$§.§6!!§ || _loc2_ == §7$§.§'@§ || _loc2_ == §7$§.NONE)
         {
            return _loc2_;
         }
         return §7$§.§6!!§;
      }
   }
}

import §'p§.§"!M§;

class PDParticle extends §"!M§
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
