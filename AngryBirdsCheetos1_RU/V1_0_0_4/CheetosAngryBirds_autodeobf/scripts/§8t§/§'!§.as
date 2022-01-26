package §8t§
{
   import §5L§.deg2rad;
   import §^n§.Texture;
   import §^n§.§in§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §'!§ extends §4!@§
   {
       
      
      private const §%l§:int = 0;
      
      private const §&c§:int = 1;
      
      private var §;!G§:Number;
      
      private var §0!]§:int;
      
      private var §[Y§:Number;
      
      private var §%`§:Number;
      
      private var §?^§:int;
      
      private var §9! §:Number;
      
      private var §0!9§:Number;
      
      private var §0j§:Number;
      
      private var §0!O§:Number;
      
      private var §3_§:Number;
      
      private var §8!4§:Number;
      
      private var §8!#§:Number;
      
      private var §@!8§:Number;
      
      private var §#!V§:Number;
      
      private var §=!%§:Number;
      
      private var §-!Y§:Number;
      
      private var § a§:Number;
      
      private var §0T§:Number;
      
      private var §9i§:Number;
      
      private var §8!6§:Number;
      
      private var §[c§:Number;
      
      private var §7S§:Number;
      
      private var §?g§:Number;
      
      private var §7i§:Number;
      
      private var §=`§:Number;
      
      private var §&-§:Number;
      
      private var §;!J§:Number;
      
      private var §4!U§:Number;
      
      private var §+!>§:Number;
      
      private var § !!§:Number;
      
      private var §#^§:Number;
      
      private var §]!H§:ColorArgb;
      
      private var §,!5§:ColorArgb;
      
      private var §47§:ColorArgb;
      
      private var §5i§:ColorArgb;
      
      public function §'!§(param1:XML, param2:Texture)
      {
         this.§+,§(param1,param2);
         var _loc3_:Number = this.§?^§ / (this.§9! § + this.§0j§);
         super(param2,_loc3_,this.§?^§,§"e§,§3!$§);
         §true § = false;
      }
      
      public function get § n§() : int
      {
         return this.§?^§;
      }
      
      override protected function createParticle() : §>!!§
      {
         return new PDParticle();
      }
      
      private function get §`!>§() : Boolean
      {
         return this.§ n§ >= 20;
      }
      
      override protected function initParticle(param1:§>!!§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§9! § + this.§0!9§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§!;§ = 0;
         _loc2_.§[_§ = _loc3_;
         _loc2_.x = §?!P§ + this.§[Y§ * (Math.random() * 2 - 1);
         _loc2_.y = §#!A§ + this.§%`§ * (Math.random() * 2 - 1);
         _loc2_.startX = §?!P§;
         _loc2_.startY = §#!A§;
         var _loc4_:Number = this.§ a§ + this.§0T§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§9i§ + this.§8!6§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§;!J§ + this.§4!U§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§;!J§ / _loc3_;
         _loc2_.rotation = this.§ a§ + this.§0T§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§ !!§ + this.§#^§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§?g§;
         _loc2_.tangentialAcceleration = this.§=`§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§0!O§ + this.§3_§ * _loc6_;
         if(!isNaN(this.§@!8§))
         {
            _loc8_ = this.§@!8§;
            if(!isNaN(this.§#!V§))
            {
               _loc8_ += this.§#!V§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§8!4§ + this.§8!#§ * _loc6_;
         if(!isNaN(this.§=!%§))
         {
            _loc10_ = this.§=!%§;
            if(!isNaN(this.§-!Y§))
            {
               _loc10_ += this.§-!Y§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]!H§.red;
         _loc11_.green = this.§]!H§.green;
         _loc11_.blue = this.§]!H§.blue;
         _loc11_.alpha = this.§]!H§.alpha;
         if(this.§,!5§.red != 0)
         {
            _loc11_.red += this.§,!5§.red * (Math.random() * 2 - 1);
         }
         if(this.§,!5§.green != 0)
         {
            _loc11_.green += this.§,!5§.green * (Math.random() * 2 - 1);
         }
         if(this.§,!5§.blue != 0)
         {
            _loc11_.blue += this.§,!5§.blue * (Math.random() * 2 - 1);
         }
         if(this.§,!5§.alpha != 0)
         {
            _loc11_.alpha += this.§,!5§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§47§.red;
         var _loc14_:Number = this.§47§.green;
         var _loc15_:Number = this.§47§.blue;
         var _loc16_:Number = this.§47§.alpha;
         if(this.§5i§.red != 0)
         {
            _loc13_ += this.§5i§.red * (Math.random() * 2 - 1);
         }
         if(this.§5i§.green != 0)
         {
            _loc14_ += this.§5i§.green * (Math.random() * 2 - 1);
         }
         if(this.§5i§.blue != 0)
         {
            _loc15_ += this.§5i§.blue * (Math.random() * 2 - 1);
         }
         if(this.§5i§.alpha != 0)
         {
            _loc16_ += this.§5i§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§>!!§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§[_§ - _loc3_.§!;§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§!;§ += param2;
         if(this.§0!]§ == this.§&c§)
         {
            if(!_loc3_.skipUpdate || !this.§`!>§)
            {
               if(this.§`!>§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §?!P§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §#!A§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§+!>§)
               {
                  _loc3_.§!;§ = _loc3_.§[_§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§`!>§)
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
               if(this.§`!>§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§[c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§7S§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§[c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§7S§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§`!>§)
         {
            if(this.§`!>§)
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
      
      private function §+,§(param1:XML, param2:Texture) : void
      {
         this.§[Y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§%`§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§[c§ = parseFloat(param1.gravity.attribute("x"));
         this.§7S§ = parseFloat(param1.gravity.attribute("y"));
         this.§0!]§ = this.§2!&§(param1.emitterType);
         this.§?^§ = this.§2!&§(param1.maxParticles);
         this.§9! § = Math.max(0.01,this.§?e§(param1.particleLifeSpan));
         this.§0!9§ = this.§?e§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§0j§ = this.§?e§(param1.particleInterval);
         }
         else
         {
            this.§0j§ = 0;
         }
         this.§0!O§ = this.§?e§(param1.startParticleSize);
         this.§8!4§ = this.§0!O§ * param2.height / param2.width;
         this.§3_§ = this.§?e§(param1.startParticleSizeVariance);
         this.§8!#§ = this.§3_§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§0!O§ = this.§?e§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§3_§ = this.§?e§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§8!4§ = this.§?e§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§8!#§ = this.§?e§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§@!8§ = this.§?e§(param1.finishParticleSize);
            this.§=!%§ = this.§@!8§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§#!V§ = this.§?e§(param1.FinishParticleSizeVariance);
            this.§-!Y§ = this.§#!V§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§@!8§ = this.§?e§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§#!V§ = this.§?e§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§=!%§ = this.§?e§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§-!Y§ = this.§?e§(param1.FinishParticleSizeVarianceY);
         }
         this.§ a§ = deg2rad(this.§?e§(param1.angle));
         this.§0T§ = deg2rad(this.§?e§(param1.angleVariance));
         this.§9i§ = this.§?e§(param1.speed);
         this.§8!6§ = this.§?e§(param1.speedVariance);
         this.§?g§ = this.§?e§(param1.radialAcceleration);
         this.§=`§ = this.§?e§(param1.tangentialAcceleration);
         this.§;!J§ = this.§?e§(param1.maxRadius);
         this.§4!U§ = this.§?e§(param1.maxRadiusVariance);
         this.§+!>§ = this.§?e§(param1.minRadius);
         this.§ !!§ = deg2rad(this.§?e§(param1.rotatePerSecond));
         this.§#^§ = deg2rad(this.§?e§(param1.rotatePerSecondVariance));
         this.§]!H§ = this.§9!3§(param1.startColor);
         this.§,!5§ = this.§9!3§(param1.startColorVariance);
         this.§47§ = this.§9!3§(param1.finishColor);
         this.§5i§ = this.§9!3§(param1.finishColorVariance);
         §"e§ = this.§`0§(param1.blendFuncSource);
         §3!$§ = this.§`0§(param1.blendFuncDestination);
         §"!D§ = this.§&"§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §%!+§ = this.§?e§(param1.emissionVariance);
         }
      }
      
      protected function §2!&§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §?e§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §-2§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9!3§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §`0§(param1:XMLList) : String
      {
         var _loc2_:int = this.§2!&§(param1);
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
      
      protected function §&"§(param1:XMLList) : String
      {
         var _loc2_:String = this.§-2§(param1);
         if(_loc2_ == §in§.§8M§ || _loc2_ == §in§.§!!1§ || _loc2_ == §in§.NONE)
         {
            return _loc2_;
         }
         return §in§.§8M§;
      }
   }
}

import §8t§.§>!!§;

class PDParticle extends §>!!§
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
