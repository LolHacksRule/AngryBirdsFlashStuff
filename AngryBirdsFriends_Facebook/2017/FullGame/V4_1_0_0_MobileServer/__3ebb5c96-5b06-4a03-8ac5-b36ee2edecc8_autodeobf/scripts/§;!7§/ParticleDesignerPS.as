package §;!7§
{
   import §&!v§.§^"L§;
   import §-"+§.Texture;
   import §>l§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §"a§:int = 0;
      
      private const §9!H§:int = 1;
      
      private var §!$9§:Number;
      
      private var §;!6§:int;
      
      private var §1"&§:Number;
      
      private var §;!S§:Number;
      
      private var §6$<§:int;
      
      private var § #s§:Number;
      
      private var §+b§:Number;
      
      private var §9!J§:Number;
      
      private var §2#k§:Number;
      
      private var §,#N§:Number;
      
      private var §3##§:Number;
      
      private var § $&§:Number;
      
      private var § +§:Number;
      
      private var §-#x§:Number;
      
      private var §[]§:Number;
      
      private var §;o§:Number;
      
      private var §2!6§:Number;
      
      private var §#m§:Number;
      
      private var §+!,§:Number;
      
      private var §3"k§:Number;
      
      private var §"o§:Number;
      
      private var §9"7§:Number;
      
      private var §%#w§:Number;
      
      private var §>#u§:Number;
      
      private var §1#@§:Number;
      
      private var § A§:Number;
      
      private var §0!'§:Number;
      
      private var §3#i§:Number;
      
      private var §@$0§:Number;
      
      private var §#"-§:Number;
      
      private var §8#'§:Number;
      
      private var §^#D§:ColorArgb;
      
      private var §0z§:ColorArgb;
      
      private var §9#h§:ColorArgb;
      
      private var §=x§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§?!i§(param1,param2);
         var _loc3_:Number = this.§6$<§ / (this.§ #s§ + this.§9!J§);
         super(param2,_loc3_,this.§6$<§,§@!A§,§;"<§);
         §=S§ = false;
      }
      
      public function get §=Z§() : int
      {
         return this.§6$<§;
      }
      
      override protected function createParticle() : §2#W§
      {
         return new PDParticle();
      }
      
      private function get §&"!§() : Boolean
      {
         return this.§=Z§ >= 20;
      }
      
      override protected function initParticle(param1:§2#W§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§ #s§ + this.§+b§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§5#9§ = 0;
         _loc2_.§9!=§ = _loc3_;
         _loc2_.x = §8#!§ + this.§1"&§ * (Math.random() * 2 - 1);
         _loc2_.y = §-!?§ + this.§;!S§ * (Math.random() * 2 - 1);
         _loc2_.startX = §8#!§;
         _loc2_.startY = §-!?§;
         var _loc4_:Number = this.§2!6§ + this.§#m§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§+!,§ + this.§3"k§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§0!'§ + this.§3#i§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§0!'§ / _loc3_;
         _loc2_.rotation = this.§2!6§ + this.§#m§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#"-§ + this.§8#'§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§%#w§;
         _loc2_.tangentialAcceleration = this.§1#@§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§2#k§ + this.§,#N§ * _loc6_;
         if(!isNaN(this.§ +§))
         {
            _loc8_ = this.§ +§;
            if(!isNaN(this.§-#x§))
            {
               _loc8_ += this.§-#x§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§3##§ + this.§ $&§ * _loc6_;
         if(!isNaN(this.§[]§))
         {
            _loc10_ = this.§[]§;
            if(!isNaN(this.§;o§))
            {
               _loc10_ += this.§;o§ * (Math.random() * 2 - 1);
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
         var _loc11_:ColorArgb = _loc2_.colorArgbDelta;
         _loc2_.red = this.§^#D§.red;
         _loc2_.green = this.§^#D§.green;
         _loc2_.blue = this.§^#D§.blue;
         _loc2_.alpha = this.§^#D§.alpha;
         if(this.§0z§.red != 0)
         {
            _loc2_.red += this.§0z§.red * (Math.random() * 2 - 1);
         }
         if(this.§0z§.green != 0)
         {
            _loc2_.green += this.§0z§.green * (Math.random() * 2 - 1);
         }
         if(this.§0z§.blue != 0)
         {
            _loc2_.blue += this.§0z§.blue * (Math.random() * 2 - 1);
         }
         if(this.§0z§.alpha != 0)
         {
            _loc2_.alpha += this.§0z§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§9#h§.red;
         var _loc13_:Number = this.§9#h§.green;
         var _loc14_:Number = this.§9#h§.blue;
         var _loc15_:Number = this.§9#h§.alpha;
         if(this.§=x§.red != 0)
         {
            _loc12_ += this.§=x§.red * (Math.random() * 2 - 1);
         }
         if(this.§=x§.green != 0)
         {
            _loc13_ += this.§=x§.green * (Math.random() * 2 - 1);
         }
         if(this.§=x§.blue != 0)
         {
            _loc14_ += this.§=x§.blue * (Math.random() * 2 - 1);
         }
         if(this.§=x§.alpha != 0)
         {
            _loc15_ += this.§=x§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §?!6§ = true;
         }
      }
      
      override protected function advanceParticle(param1:§2#W§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§9!=§ - _loc3_.§5#9§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§5#9§ += param2;
         if(this.§;!6§ == this.§9!H§)
         {
            if(!_loc3_.skipUpdate || !this.§&"!§)
            {
               if(this.§&"!§)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §8#!§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §-!?§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§@$0§)
               {
                  _loc3_.§5#9§ = _loc3_.§9!=§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.§&"!§)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.§&"!§)
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
               if(_loc3_.tangentialAcceleration)
               {
                  _loc12_ = _loc10_;
                  _loc10_ = -_loc11_ * _loc3_.tangentialAcceleration;
                  _loc11_ = _loc12_ * _loc3_.tangentialAcceleration;
                  _loc3_.velocityX += param2 * (this.§"o§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§9"7§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§"o§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§9"7§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.§&"!§)
         {
            _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
            _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
            if(_loc3_.hasColorDelta)
            {
               _loc3_.red += _loc3_.colorArgbDelta.red * param2;
               _loc3_.green += _loc3_.colorArgbDelta.green * param2;
               _loc3_.blue += _loc3_.colorArgbDelta.blue * param2;
               _loc3_.alpha += _loc3_.colorArgbDelta.alpha * param2;
            }
         }
         _loc3_.skipUpdate = !_loc3_.skipUpdate;
      }
      
      private function §?!i§(param1:XML, param2:Texture) : void
      {
         this.§1"&§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§;!S§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§"o§ = parseFloat(param1.gravity.attribute("x"));
         this.§9"7§ = parseFloat(param1.gravity.attribute("y"));
         this.§;!6§ = this.§6#m§(param1.emitterType);
         this.§6$<§ = this.§6#m§(param1.maxParticles);
         this.§ #s§ = Math.max(0.01,this.§0!6§(param1.particleLifeSpan));
         this.§+b§ = this.§0!6§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§9!J§ = this.§0!6§(param1.particleInterval);
         }
         else
         {
            this.§9!J§ = 0;
         }
         this.§2#k§ = this.§0!6§(param1.startParticleSize);
         this.§3##§ = this.§2#k§ * param2.height / param2.width;
         this.§,#N§ = this.§0!6§(param1.startParticleSizeVariance);
         this.§ $&§ = this.§,#N§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§2#k§ = this.§0!6§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§,#N§ = this.§0!6§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§3##§ = this.§0!6§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§ $&§ = this.§0!6§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§ +§ = this.§0!6§(param1.finishParticleSize);
            this.§[]§ = this.§ +§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§-#x§ = this.§0!6§(param1.FinishParticleSizeVariance);
            this.§;o§ = this.§-#x§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§ +§ = this.§0!6§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§-#x§ = this.§0!6§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§[]§ = this.§0!6§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§;o§ = this.§0!6§(param1.FinishParticleSizeVarianceY);
         }
         this.§2!6§ = deg2rad(this.§0!6§(param1.angle));
         this.§#m§ = deg2rad(this.§0!6§(param1.angleVariance));
         this.§+!,§ = this.§0!6§(param1.speed);
         this.§3"k§ = this.§0!6§(param1.speedVariance);
         this.§%#w§ = this.§0!6§(param1.radialAcceleration);
         this.§1#@§ = this.§0!6§(param1.tangentialAcceleration);
         this.§0!'§ = this.§0!6§(param1.maxRadius);
         this.§3#i§ = this.§0!6§(param1.maxRadiusVariance);
         this.§@$0§ = this.§0!6§(param1.minRadius);
         this.§#"-§ = deg2rad(this.§0!6§(param1.rotatePerSecond));
         this.§8#'§ = deg2rad(this.§0!6§(param1.rotatePerSecondVariance));
         this.§^#D§ = this.§=#U§(param1.startColor);
         this.§0z§ = this.§=#U§(param1.startColorVariance);
         this.§9#h§ = this.§=#U§(param1.finishColor);
         this.§=x§ = this.§=#U§(param1.finishColorVariance);
         §@!A§ = this.§4" §(param1.blendFuncSource);
         §;"<§ = this.§4" §(param1.blendFuncDestination);
         §,"`§ = this.§,!]§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §4!u§ = this.§0!6§(param1.emissionVariance);
         }
      }
      
      protected function §6#m§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §0!6§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §85§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §=#U§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §4" §(param1:XMLList) : String
      {
         var _loc2_:int = this.§6#m§(param1);
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
      
      protected function §,!]§(param1:XMLList) : int
      {
         var _loc2_:String = this.§85§(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §^"L§.§@!v§;
      }
   }
}

import §;!7§.§2#W§;

class PDParticle extends §2#W§
{
    
   
   public var colorArgbDelta:ColorArgb;
   
   public var hasColorDelta:Boolean;
   
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
