package §0!-§
{
   import §3!$§.deg2rad;
   import §[P§.§@!$§;
   import §[P§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §9v§
   {
       
      
      private const §[!>§:int = 0;
      
      private const §@`§:int = 1;
      
      private var §<X§:Number;
      
      private var §^q§:int;
      
      private var §-z§:Number;
      
      private var §5<§:Number;
      
      private var §'X§:int;
      
      private var §0>§:Number;
      
      private var §2C§:Number;
      
      private var §;6§:Number;
      
      private var §[A§:Number;
      
      private var §]!+§:Number;
      
      private var §`!+§:Number;
      
      private var §2!G§:Number;
      
      private var §#O§:Number;
      
      private var §4!C§:Number;
      
      private var §[z§:Number;
      
      private var § D§:Number;
      
      private var §;Y§:Number;
      
      private var §[!%§:Number;
      
      private var §?!A§:Number;
      
      private var §[m§:Number;
      
      private var §68§:Number;
      
      private var §-]§:Number;
      
      private var §[!,§:Number;
      
      private var §]S§:Number;
      
      private var §@v§:Number;
      
      private var §^]§:Number;
      
      private var §32§:Number;
      
      private var §`l§:Number;
      
      private var §0z§:Number;
      
      private var §`!!§:Number;
      
      private var §>q§:Number;
      
      private var §6!C§:ColorArgb;
      
      private var §1f§:ColorArgb;
      
      private var §`=§:ColorArgb;
      
      private var §^!>§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§^b§(param1,param2);
         var _loc3_:Number = this.§'X§ / (this.§0>§ + this.§;6§);
         super(param2,_loc3_,this.§'X§,§3k§,§9^§);
         §3Y§ = false;
      }
      
      public function get §3D§() : int
      {
         return this.§'X§;
      }
      
      override protected function createParticle() : §9T§
      {
         return new PDParticle();
      }
      
      private function get §-D§() : Boolean
      {
         return this.§3D§ >= 20;
      }
      
      override protected function initParticle(param1:§9T§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§0>§ + this.§2C§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§6<§ = _loc3_;
         _loc2_.x = §5!A§ + this.§-z§ * (Math.random() * 2 - 1);
         _loc2_.y = §2?§ + this.§5<§ * (Math.random() * 2 - 1);
         _loc2_.startX = §5!A§;
         _loc2_.startY = §2?§;
         var _loc4_:Number = this.§;Y§ + this.§[!%§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§?!A§ + this.§[m§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§32§ + this.§`l§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§32§ / _loc3_;
         _loc2_.rotation = this.§;Y§ + this.§[!%§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§`!!§ + this.§>q§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§[!,§;
         _loc2_.tangentialAcceleration = this.§@v§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§[A§ + this.§]!+§ * _loc6_;
         if(!isNaN(this.§#O§))
         {
            _loc8_ = this.§#O§;
            if(!isNaN(this.§4!C§))
            {
               _loc8_ += this.§4!C§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§`!+§ + this.§2!G§ * _loc6_;
         if(!isNaN(this.§[z§))
         {
            _loc10_ = this.§[z§;
            if(!isNaN(this.§ D§))
            {
               _loc10_ += this.§ D§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§6!C§.red;
         _loc11_.green = this.§6!C§.green;
         _loc11_.blue = this.§6!C§.blue;
         _loc11_.alpha = this.§6!C§.alpha;
         if(this.§1f§.red != 0)
         {
            _loc11_.red += this.§1f§.red * (Math.random() * 2 - 1);
         }
         if(this.§1f§.green != 0)
         {
            _loc11_.green += this.§1f§.green * (Math.random() * 2 - 1);
         }
         if(this.§1f§.blue != 0)
         {
            _loc11_.blue += this.§1f§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1f§.alpha != 0)
         {
            _loc11_.alpha += this.§1f§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§`=§.red;
         var _loc14_:Number = this.§`=§.green;
         var _loc15_:Number = this.§`=§.blue;
         var _loc16_:Number = this.§`=§.alpha;
         if(this.§^!>§.red != 0)
         {
            _loc13_ += this.§^!>§.red * (Math.random() * 2 - 1);
         }
         if(this.§^!>§.green != 0)
         {
            _loc14_ += this.§^!>§.green * (Math.random() * 2 - 1);
         }
         if(this.§^!>§.blue != 0)
         {
            _loc15_ += this.§^!>§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^!>§.alpha != 0)
         {
            _loc16_ += this.§^!>§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§9T§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§6<§ - _loc3_.currentTime)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§^q§ == this.§@`§)
         {
            if(!_loc3_.skipUpdate || !this.§-D§)
            {
               if(this.§-D§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §5!A§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2?§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§0z§)
               {
                  _loc3_.currentTime = _loc3_.§6<§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-D§)
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
               if(this.§-D§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§68§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§-]§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§68§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§-]§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-D§)
         {
            if(this.§-D§)
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
      
      private function §^b§(param1:XML, param2:Texture) : void
      {
         this.§-z§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§5<§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§68§ = parseFloat(param1.gravity.attribute("x"));
         this.§-]§ = parseFloat(param1.gravity.attribute("y"));
         this.§^q§ = this.§@7§(param1.emitterType);
         this.§'X§ = this.§@7§(param1.maxParticles);
         this.§0>§ = Math.max(0.01,this.§;!B§(param1.particleLifeSpan));
         this.§2C§ = this.§;!B§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§;6§ = this.§;!B§(param1.particleInterval);
         }
         else
         {
            this.§;6§ = 0;
         }
         this.§[A§ = this.§;!B§(param1.startParticleSize);
         this.§`!+§ = this.§[A§ * param2.height / param2.width;
         this.§]!+§ = this.§;!B§(param1.startParticleSizeVariance);
         this.§2!G§ = this.§]!+§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§[A§ = this.§;!B§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§]!+§ = this.§;!B§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§`!+§ = this.§;!B§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§2!G§ = this.§;!B§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#O§ = this.§;!B§(param1.finishParticleSize);
            this.§[z§ = this.§#O§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§4!C§ = this.§;!B§(param1.FinishParticleSizeVariance);
            this.§ D§ = this.§4!C§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#O§ = this.§;!B§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§4!C§ = this.§;!B§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§[z§ = this.§;!B§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§ D§ = this.§;!B§(param1.FinishParticleSizeVarianceY);
         }
         this.§;Y§ = deg2rad(this.§;!B§(param1.angle));
         this.§[!%§ = deg2rad(this.§;!B§(param1.angleVariance));
         this.§?!A§ = this.§;!B§(param1.speed);
         this.§[m§ = this.§;!B§(param1.speedVariance);
         this.§[!,§ = this.§;!B§(param1.radialAcceleration);
         this.§@v§ = this.§;!B§(param1.tangentialAcceleration);
         this.§32§ = this.§;!B§(param1.maxRadius);
         this.§`l§ = this.§;!B§(param1.maxRadiusVariance);
         this.§0z§ = this.§;!B§(param1.minRadius);
         this.§`!!§ = deg2rad(this.§;!B§(param1.rotatePerSecond));
         this.§>q§ = deg2rad(this.§;!B§(param1.rotatePerSecondVariance));
         this.§6!C§ = this.§2$§(param1.startColor);
         this.§1f§ = this.§2$§(param1.startColorVariance);
         this.§`=§ = this.§2$§(param1.finishColor);
         this.§^!>§ = this.§2$§(param1.finishColorVariance);
         §3k§ = this.§8§(param1.blendFuncSource);
         §9^§ = this.§8§(param1.blendFuncDestination);
         §7!8§ = this.§]U§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §&E§ = this.§;!B§(param1.emissionVariance);
         }
      }
      
      protected function §@7§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §;!B§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §,<§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §2$§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §8§(param1:XMLList) : String
      {
         var _loc2_:int = this.§@7§(param1);
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
      
      protected function §]U§(param1:XMLList) : String
      {
         var _loc2_:String = this.§,<§(param1);
         if(_loc2_ == §@!$§.§]!$§ || _loc2_ == §@!$§.§-b§ || _loc2_ == §@!$§.NONE)
         {
            return _loc2_;
         }
         return §@!$§.§]!$§;
      }
   }
}

import §0!-§.§9T§;

class PDParticle extends §9T§
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
