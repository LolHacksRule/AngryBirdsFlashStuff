package §[!-§
{
   import §=E§.deg2rad;
   import §@j§.§8!'§;
   import §@j§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §'!H§ extends §]!C§
   {
       
      
      private const §0!b§:int = 0;
      
      private const §[!Y§:int = 1;
      
      private var §7f§:Number;
      
      private var §!!i§:int;
      
      private var §-2§:Number;
      
      private var §if§:Number;
      
      private var §4!I§:int;
      
      private var §09§:Number;
      
      private var §1!=§:Number;
      
      private var §=0§:Number;
      
      private var §>!a§:Number;
      
      private var §=!i§:Number;
      
      private var §!!k§:Number;
      
      private var §2!j§:Number;
      
      private var §"!A§:Number;
      
      private var §^!6§:Number;
      
      private var §5!2§:Number;
      
      private var §%v§:Number;
      
      private var §@4§:Number;
      
      private var §7!B§:Number;
      
      private var §5!h§:Number;
      
      private var §?!l§:Number;
      
      private var §"C§:Number;
      
      private var §?8§:Number;
      
      private var §0"§:Number;
      
      private var § t§:Number;
      
      private var §[^§:Number;
      
      private var §#!"§:Number;
      
      private var §9!!§:Number;
      
      private var §`!Y§:Number;
      
      private var §1!_§:Number;
      
      private var §6!#§:Number;
      
      private var §?+§:Number;
      
      private var §8!B§:ColorArgb;
      
      private var §&§:ColorArgb;
      
      private var §`!B§:ColorArgb;
      
      private var §1F§:ColorArgb;
      
      public function §'!H§(param1:XML, param2:Texture)
      {
         this.§'!!§(param1,param2);
         var _loc3_:Number = this.§4!I§ / (this.§09§ + this.§=0§);
         super(param2,_loc3_,this.§4!I§,§;h§,§7p§);
         §7h§ = false;
      }
      
      public function get §&!A§() : int
      {
         return this.§4!I§;
      }
      
      override protected function createParticle() : §6!g§
      {
         return new PDParticle();
      }
      
      private function get §;!B§() : Boolean
      {
         return this.§&!A§ >= 20;
      }
      
      override protected function initParticle(param1:§6!g§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§09§ + this.§1!=§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§-a§ = 0;
         _loc2_.§3v§ = _loc3_;
         _loc2_.x = §0!j§ + this.§-2§ * (Math.random() * 2 - 1);
         _loc2_.y = §!!m§ + this.§if§ * (Math.random() * 2 - 1);
         _loc2_.startX = §0!j§;
         _loc2_.startY = §!!m§;
         var _loc4_:Number = this.§@4§ + this.§7!B§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§5!h§ + this.§?!l§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§9!!§ + this.§`!Y§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§9!!§ / _loc3_;
         _loc2_.rotation = this.§@4§ + this.§7!B§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§6!#§ + this.§?+§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§0"§;
         _loc2_.tangentialAcceleration = this.§[^§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§>!a§ + this.§=!i§ * _loc6_;
         if(!isNaN(this.§"!A§))
         {
            _loc8_ = this.§"!A§;
            if(!isNaN(this.§^!6§))
            {
               _loc8_ += this.§^!6§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§!!k§ + this.§2!j§ * _loc6_;
         if(!isNaN(this.§5!2§))
         {
            _loc10_ = this.§5!2§;
            if(!isNaN(this.§%v§))
            {
               _loc10_ += this.§%v§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§8!B§.red;
         _loc11_.green = this.§8!B§.green;
         _loc11_.blue = this.§8!B§.blue;
         _loc11_.alpha = this.§8!B§.alpha;
         if(this.§&§.red != 0)
         {
            _loc11_.red += this.§&§.red * (Math.random() * 2 - 1);
         }
         if(this.§&§.green != 0)
         {
            _loc11_.green += this.§&§.green * (Math.random() * 2 - 1);
         }
         if(this.§&§.blue != 0)
         {
            _loc11_.blue += this.§&§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&§.alpha != 0)
         {
            _loc11_.alpha += this.§&§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§`!B§.red;
         var _loc14_:Number = this.§`!B§.green;
         var _loc15_:Number = this.§`!B§.blue;
         var _loc16_:Number = this.§`!B§.alpha;
         if(this.§1F§.red != 0)
         {
            _loc13_ += this.§1F§.red * (Math.random() * 2 - 1);
         }
         if(this.§1F§.green != 0)
         {
            _loc14_ += this.§1F§.green * (Math.random() * 2 - 1);
         }
         if(this.§1F§.blue != 0)
         {
            _loc15_ += this.§1F§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1F§.alpha != 0)
         {
            _loc16_ += this.§1F§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§6!g§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§3v§ - _loc3_.§-a§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§-a§ += param2;
         if(this.§!!i§ == this.§[!Y§)
         {
            if(!_loc3_.skipUpdate || !this.§;!B§)
            {
               if(this.§;!B§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §0!j§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §!!m§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§1!_§)
               {
                  _loc3_.§-a§ = _loc3_.§3v§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§;!B§)
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
               if(this.§;!B§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§"C§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§?8§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§"C§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§?8§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§;!B§)
         {
            if(this.§;!B§)
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
      
      private function §'!!§(param1:XML, param2:Texture) : void
      {
         this.§-2§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§if§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§"C§ = parseFloat(param1.gravity.attribute("x"));
         this.§?8§ = parseFloat(param1.gravity.attribute("y"));
         this.§!!i§ = this.§&X§(param1.emitterType);
         this.§4!I§ = this.§&X§(param1.maxParticles);
         this.§09§ = Math.max(0.01,this.§2z§(param1.particleLifeSpan));
         this.§1!=§ = this.§2z§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§=0§ = this.§2z§(param1.particleInterval);
         }
         else
         {
            this.§=0§ = 0;
         }
         this.§>!a§ = this.§2z§(param1.startParticleSize);
         this.§!!k§ = this.§>!a§ * param2.height / param2.width;
         this.§=!i§ = this.§2z§(param1.startParticleSizeVariance);
         this.§2!j§ = this.§=!i§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§>!a§ = this.§2z§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§=!i§ = this.§2z§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§!!k§ = this.§2z§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§2!j§ = this.§2z§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§"!A§ = this.§2z§(param1.finishParticleSize);
            this.§5!2§ = this.§"!A§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§^!6§ = this.§2z§(param1.FinishParticleSizeVariance);
            this.§%v§ = this.§^!6§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§"!A§ = this.§2z§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§^!6§ = this.§2z§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§5!2§ = this.§2z§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§%v§ = this.§2z§(param1.FinishParticleSizeVarianceY);
         }
         this.§@4§ = deg2rad(this.§2z§(param1.angle));
         this.§7!B§ = deg2rad(this.§2z§(param1.angleVariance));
         this.§5!h§ = this.§2z§(param1.speed);
         this.§?!l§ = this.§2z§(param1.speedVariance);
         this.§0"§ = this.§2z§(param1.radialAcceleration);
         this.§[^§ = this.§2z§(param1.tangentialAcceleration);
         this.§9!!§ = this.§2z§(param1.maxRadius);
         this.§`!Y§ = this.§2z§(param1.maxRadiusVariance);
         this.§1!_§ = this.§2z§(param1.minRadius);
         this.§6!#§ = deg2rad(this.§2z§(param1.rotatePerSecond));
         this.§?+§ = deg2rad(this.§2z§(param1.rotatePerSecondVariance));
         this.§8!B§ = this.§"f§(param1.startColor);
         this.§&§ = this.§"f§(param1.startColorVariance);
         this.§`!B§ = this.§"f§(param1.finishColor);
         this.§1F§ = this.§"f§(param1.finishColorVariance);
         §;h§ = this.§6!N§(param1.blendFuncSource);
         §7p§ = this.§6!N§(param1.blendFuncDestination);
         §9!I§ = this.§,!H§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §6!P§ = this.§2z§(param1.emissionVariance);
         }
      }
      
      protected function §&X§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §2z§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §8E§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §"f§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §6!N§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&X§(param1);
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
      
      protected function §,!H§(param1:XMLList) : String
      {
         var _loc2_:String = this.§8E§(param1);
         if(_loc2_ == §8!'§.§%!>§ || _loc2_ == §8!'§.§?z§ || _loc2_ == §8!'§.NONE)
         {
            return _loc2_;
         }
         return §8!'§.§%!>§;
      }
   }
}

import §[!-§.§6!g§;

class PDParticle extends §6!g§
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
