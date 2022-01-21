package §&P§
{
   import § !^§.§6m§;
   import § !^§.Texture;
   import §6!J§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §<!F§ extends §[!H§
   {
       
      
      private const §7!9§:int = 0;
      
      private const §'!'§:int = 1;
      
      private var §&=§:Number;
      
      private var §07§:int;
      
      private var §9+§:Number;
      
      private var § !2§:Number;
      
      private var §!!h§:int;
      
      private var §3>§:Number;
      
      private var §57§:Number;
      
      private var §+!U§:Number;
      
      private var §0!O§:Number;
      
      private var §;!S§:Number;
      
      private var §7!-§:Number;
      
      private var §^!8§:Number;
      
      private var §5!N§:Number;
      
      private var §>!2§:Number;
      
      private var §!!V§:Number;
      
      private var §5!9§:Number;
      
      private var §<!c§:Number;
      
      private var §6!%§:Number;
      
      private var §'!X§:Number;
      
      private var §+!k§:Number;
      
      private var §-!U§:Number;
      
      private var §?g§:Number;
      
      private var §2v§:Number;
      
      private var §7r§:Number;
      
      private var §!!W§:Number;
      
      private var §1m§:Number;
      
      private var §>!!§:Number;
      
      private var §!!-§:Number;
      
      private var §3u§:Number;
      
      private var §1&§:Number;
      
      private var §^V§:Number;
      
      private var §]g§:ColorArgb;
      
      private var §7Z§:ColorArgb;
      
      private var §^K§:ColorArgb;
      
      private var §8!k§:ColorArgb;
      
      public function §<!F§(param1:XML, param2:Texture)
      {
         this.§-!<§(param1,param2);
         var _loc3_:Number = this.§!!h§ / (this.§3>§ + this.§+!U§);
         super(param2,_loc3_,this.§!!h§,§5N§,§?C§);
         §;+§ = false;
      }
      
      public function get § else§() : int
      {
         return this.§!!h§;
      }
      
      override protected function createParticle() : §0]§
      {
         return new PDParticle();
      }
      
      private function get §7!G§() : Boolean
      {
         return this.§ else§ >= 20;
      }
      
      override protected function initParticle(param1:§0]§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§3>§ + this.§57§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§+!h§ = 0;
         _loc2_.§,!1§ = _loc3_;
         _loc2_.x = §;!"§ + this.§9+§ * (Math.random() * 2 - 1);
         _loc2_.y = §%#§ + this.§ !2§ * (Math.random() * 2 - 1);
         _loc2_.startX = §;!"§;
         _loc2_.startY = §%#§;
         var _loc4_:Number = this.§<!c§ + this.§6!%§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§'!X§ + this.§+!k§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§>!!§ + this.§!!-§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§>!!§ / _loc3_;
         _loc2_.rotation = this.§<!c§ + this.§6!%§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§1&§ + this.§^V§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2v§;
         _loc2_.tangentialAcceleration = this.§!!W§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§0!O§ + this.§;!S§ * _loc6_;
         if(!isNaN(this.§5!N§))
         {
            _loc8_ = this.§5!N§;
            if(!isNaN(this.§>!2§))
            {
               _loc8_ += this.§>!2§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§7!-§ + this.§^!8§ * _loc6_;
         if(!isNaN(this.§!!V§))
         {
            _loc10_ = this.§!!V§;
            if(!isNaN(this.§5!9§))
            {
               _loc10_ += this.§5!9§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]g§.red;
         _loc11_.green = this.§]g§.green;
         _loc11_.blue = this.§]g§.blue;
         _loc11_.alpha = this.§]g§.alpha;
         if(this.§7Z§.red != 0)
         {
            _loc11_.red += this.§7Z§.red * (Math.random() * 2 - 1);
         }
         if(this.§7Z§.green != 0)
         {
            _loc11_.green += this.§7Z§.green * (Math.random() * 2 - 1);
         }
         if(this.§7Z§.blue != 0)
         {
            _loc11_.blue += this.§7Z§.blue * (Math.random() * 2 - 1);
         }
         if(this.§7Z§.alpha != 0)
         {
            _loc11_.alpha += this.§7Z§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^K§.red;
         var _loc14_:Number = this.§^K§.green;
         var _loc15_:Number = this.§^K§.blue;
         var _loc16_:Number = this.§^K§.alpha;
         if(this.§8!k§.red != 0)
         {
            _loc13_ += this.§8!k§.red * (Math.random() * 2 - 1);
         }
         if(this.§8!k§.green != 0)
         {
            _loc14_ += this.§8!k§.green * (Math.random() * 2 - 1);
         }
         if(this.§8!k§.blue != 0)
         {
            _loc15_ += this.§8!k§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8!k§.alpha != 0)
         {
            _loc16_ += this.§8!k§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§0]§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,!1§ - _loc3_.§+!h§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§+!h§ += param2;
         if(this.§07§ == this.§'!'§)
         {
            if(!_loc3_.skipUpdate || !this.§7!G§)
            {
               if(this.§7!G§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §;!"§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §%#§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§3u§)
               {
                  _loc3_.§+!h§ = _loc3_.§,!1§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§7!G§)
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
               if(this.§7!G§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§-!U§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§?g§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§-!U§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§?g§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§7!G§)
         {
            if(this.§7!G§)
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
      
      private function §-!<§(param1:XML, param2:Texture) : void
      {
         this.§9+§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§ !2§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§-!U§ = parseFloat(param1.gravity.attribute("x"));
         this.§?g§ = parseFloat(param1.gravity.attribute("y"));
         this.§07§ = this.§^j§(param1.emitterType);
         this.§!!h§ = this.§^j§(param1.maxParticles);
         this.§3>§ = Math.max(0.01,this.§"6§(param1.particleLifeSpan));
         this.§57§ = this.§"6§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§+!U§ = this.§"6§(param1.particleInterval);
         }
         else
         {
            this.§+!U§ = 0;
         }
         this.§0!O§ = this.§"6§(param1.startParticleSize);
         this.§7!-§ = this.§0!O§ * param2.height / param2.width;
         this.§;!S§ = this.§"6§(param1.startParticleSizeVariance);
         this.§^!8§ = this.§;!S§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§0!O§ = this.§"6§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§;!S§ = this.§"6§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§7!-§ = this.§"6§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§^!8§ = this.§"6§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§5!N§ = this.§"6§(param1.finishParticleSize);
            this.§!!V§ = this.§5!N§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§>!2§ = this.§"6§(param1.FinishParticleSizeVariance);
            this.§5!9§ = this.§>!2§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§5!N§ = this.§"6§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§>!2§ = this.§"6§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§!!V§ = this.§"6§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§5!9§ = this.§"6§(param1.FinishParticleSizeVarianceY);
         }
         this.§<!c§ = deg2rad(this.§"6§(param1.angle));
         this.§6!%§ = deg2rad(this.§"6§(param1.angleVariance));
         this.§'!X§ = this.§"6§(param1.speed);
         this.§+!k§ = this.§"6§(param1.speedVariance);
         this.§2v§ = this.§"6§(param1.radialAcceleration);
         this.§!!W§ = this.§"6§(param1.tangentialAcceleration);
         this.§>!!§ = this.§"6§(param1.maxRadius);
         this.§!!-§ = this.§"6§(param1.maxRadiusVariance);
         this.§3u§ = this.§"6§(param1.minRadius);
         this.§1&§ = deg2rad(this.§"6§(param1.rotatePerSecond));
         this.§^V§ = deg2rad(this.§"6§(param1.rotatePerSecondVariance));
         this.§]g§ = this.§,1§(param1.startColor);
         this.§7Z§ = this.§,1§(param1.startColorVariance);
         this.§^K§ = this.§,1§(param1.finishColor);
         this.§8!k§ = this.§,1§(param1.finishColorVariance);
         §5N§ = this.§"I§(param1.blendFuncSource);
         §?C§ = this.§"I§(param1.blendFuncDestination);
         §0!#§ = this.§6!D§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §<q§ = this.§"6§(param1.emissionVariance);
         }
      }
      
      protected function §^j§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §"6§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%!3§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §,1§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §"I§(param1:XMLList) : String
      {
         var _loc2_:int = this.§^j§(param1);
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
      
      protected function §6!D§(param1:XMLList) : String
      {
         var _loc2_:String = this.§%!3§(param1);
         if(_loc2_ == §6m§.§0s§ || _loc2_ == §6m§.§=!U§ || _loc2_ == §6m§.NONE)
         {
            return _loc2_;
         }
         return §6m§.§0s§;
      }
   }
}

import §&P§.§0]§;

class PDParticle extends §0]§
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
