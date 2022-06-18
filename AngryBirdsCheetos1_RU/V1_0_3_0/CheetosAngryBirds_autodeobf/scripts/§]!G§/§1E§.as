package §]!G§
{
   import §+a§.§"!>§;
   import §+a§.Texture;
   import §-!%§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §1E§ extends §7!1§
   {
       
      
      private const §2!F§:int = 0;
      
      private const §10§:int = 1;
      
      private var §;!O§:Number;
      
      private var §>b§:int;
      
      private var §%!G§:Number;
      
      private var §!!$§:Number;
      
      private var §0!@§:int;
      
      private var §#!;§:Number;
      
      private var §,!S§:Number;
      
      private var §-!;§:Number;
      
      private var §2P§:Number;
      
      private var §=X§:Number;
      
      private var static:Number;
      
      private var § get§:Number;
      
      private var §%!W§:Number;
      
      private var §;6§:Number;
      
      private var §^!,§:Number;
      
      private var §"+§:Number;
      
      private var §8!3§:Number;
      
      private var §%![§:Number;
      
      private var §4R§:Number;
      
      private var §%!,§:Number;
      
      private var § true§:Number;
      
      private var §`!a§:Number;
      
      private var §'!T§:Number;
      
      private var §+M§:Number;
      
      private var §<![§:Number;
      
      private var §1]§:Number;
      
      private var §7U§:Number;
      
      private var § !G§:Number;
      
      private var §4!`§:Number;
      
      private var §0r§:Number;
      
      private var §&w§:Number;
      
      private var §]!5§:ColorArgb;
      
      private var §!J§:ColorArgb;
      
      private var § 5§:ColorArgb;
      
      private var §9!V§:ColorArgb;
      
      public function §1E§(param1:XML, param2:Texture)
      {
         this.§-i§(param1,param2);
         var _loc3_:Number = this.§0!@§ / (this.§#!;§ + this.§-!;§);
         super(param2,_loc3_,this.§0!@§,§"!#§,§0!W§);
         §>!T§ = false;
      }
      
      public function get §]![§() : int
      {
         return this.§0!@§;
      }
      
      override protected function createParticle() : §1!=§
      {
         return new PDParticle();
      }
      
      private function get §3!2§() : Boolean
      {
         return this.§]![§ >= 20;
      }
      
      override protected function initParticle(param1:§1!=§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§#!;§ + this.§,!S§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§-!^§ = 0;
         _loc2_.§^E§ = _loc3_;
         _loc2_.x = §8!]§ + this.§%!G§ * (Math.random() * 2 - 1);
         _loc2_.y = §>J§ + this.§!!$§ * (Math.random() * 2 - 1);
         _loc2_.startX = §8!]§;
         _loc2_.startY = §>J§;
         var _loc4_:Number = this.§8!3§ + this.§%![§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§4R§ + this.§%!,§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§7U§ + this.§ !G§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§7U§ / _loc3_;
         _loc2_.rotation = this.§8!3§ + this.§%![§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§0r§ + this.§&w§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§'!T§;
         _loc2_.tangentialAcceleration = this.§<![§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§2P§ + this.§=X§ * _loc6_;
         if(!isNaN(this.§%!W§))
         {
            _loc8_ = this.§%!W§;
            if(!isNaN(this.§;6§))
            {
               _loc8_ += this.§;6§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.static + this.§ get§ * _loc6_;
         if(!isNaN(this.§^!,§))
         {
            _loc10_ = this.§^!,§;
            if(!isNaN(this.§"+§))
            {
               _loc10_ += this.§"+§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]!5§.red;
         _loc11_.green = this.§]!5§.green;
         _loc11_.blue = this.§]!5§.blue;
         _loc11_.alpha = this.§]!5§.alpha;
         if(this.§!J§.red != 0)
         {
            _loc11_.red += this.§!J§.red * (Math.random() * 2 - 1);
         }
         if(this.§!J§.green != 0)
         {
            _loc11_.green += this.§!J§.green * (Math.random() * 2 - 1);
         }
         if(this.§!J§.blue != 0)
         {
            _loc11_.blue += this.§!J§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!J§.alpha != 0)
         {
            _loc11_.alpha += this.§!J§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§ 5§.red;
         var _loc14_:Number = this.§ 5§.green;
         var _loc15_:Number = this.§ 5§.blue;
         var _loc16_:Number = this.§ 5§.alpha;
         if(this.§9!V§.red != 0)
         {
            _loc13_ += this.§9!V§.red * (Math.random() * 2 - 1);
         }
         if(this.§9!V§.green != 0)
         {
            _loc14_ += this.§9!V§.green * (Math.random() * 2 - 1);
         }
         if(this.§9!V§.blue != 0)
         {
            _loc15_ += this.§9!V§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9!V§.alpha != 0)
         {
            _loc16_ += this.§9!V§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§1!=§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§^E§ - _loc3_.§-!^§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§-!^§ += param2;
         if(this.§>b§ == this.§10§)
         {
            if(!_loc3_.skipUpdate || !this.§3!2§)
            {
               if(this.§3!2§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §8!]§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §>J§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§4!`§)
               {
                  _loc3_.§-!^§ = _loc3_.§^E§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§3!2§)
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
               if(this.§3!2§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§ true§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`!a§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§ true§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`!a§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§3!2§)
         {
            if(this.§3!2§)
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
      
      private function §-i§(param1:XML, param2:Texture) : void
      {
         this.§%!G§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§!!$§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§ true§ = parseFloat(param1.gravity.attribute("x"));
         this.§`!a§ = parseFloat(param1.gravity.attribute("y"));
         this.§>b§ = this.§1>§(param1.emitterType);
         this.§0!@§ = this.§1>§(param1.maxParticles);
         this.§#!;§ = Math.max(0.01,this.§&n§(param1.particleLifeSpan));
         this.§,!S§ = this.§&n§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§-!;§ = this.§&n§(param1.particleInterval);
         }
         else
         {
            this.§-!;§ = 0;
         }
         this.§2P§ = this.§&n§(param1.startParticleSize);
         this.static = this.§2P§ * param2.height / param2.width;
         this.§=X§ = this.§&n§(param1.startParticleSizeVariance);
         this.§ get§ = this.§=X§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§2P§ = this.§&n§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§=X§ = this.§&n§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.static = this.§&n§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§ get§ = this.§&n§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§%!W§ = this.§&n§(param1.finishParticleSize);
            this.§^!,§ = this.§%!W§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§;6§ = this.§&n§(param1.FinishParticleSizeVariance);
            this.§"+§ = this.§;6§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§%!W§ = this.§&n§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§;6§ = this.§&n§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§^!,§ = this.§&n§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§"+§ = this.§&n§(param1.FinishParticleSizeVarianceY);
         }
         this.§8!3§ = deg2rad(this.§&n§(param1.angle));
         this.§%![§ = deg2rad(this.§&n§(param1.angleVariance));
         this.§4R§ = this.§&n§(param1.speed);
         this.§%!,§ = this.§&n§(param1.speedVariance);
         this.§'!T§ = this.§&n§(param1.radialAcceleration);
         this.§<![§ = this.§&n§(param1.tangentialAcceleration);
         this.§7U§ = this.§&n§(param1.maxRadius);
         this.§ !G§ = this.§&n§(param1.maxRadiusVariance);
         this.§4!`§ = this.§&n§(param1.minRadius);
         this.§0r§ = deg2rad(this.§&n§(param1.rotatePerSecond));
         this.§&w§ = deg2rad(this.§&n§(param1.rotatePerSecondVariance));
         this.§]!5§ = this.§9!O§(param1.startColor);
         this.§!J§ = this.§9!O§(param1.startColorVariance);
         this.§ 5§ = this.§9!O§(param1.finishColor);
         this.§9!V§ = this.§9!O§(param1.finishColorVariance);
         §"!#§ = this.§;9§(param1.blendFuncSource);
         §0!W§ = this.§;9§(param1.blendFuncDestination);
         §true§ = this.§<a§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §7!>§ = this.§&n§(param1.emissionVariance);
         }
      }
      
      protected function §1>§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §&n§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5!L§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9!O§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §;9§(param1:XMLList) : String
      {
         var _loc2_:int = this.§1>§(param1);
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
      
      protected function §<a§(param1:XMLList) : String
      {
         var _loc2_:String = this.§5!L§(param1);
         if(_loc2_ == §"!>§.§`5§ || _loc2_ == §"!>§.§^!J§ || _loc2_ == §"!>§.NONE)
         {
            return _loc2_;
         }
         return §"!>§.§`5§;
      }
   }
}

import §]!G§.§1!=§;

class PDParticle extends §1!=§
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
