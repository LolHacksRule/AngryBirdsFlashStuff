package §53§
{
   import §=9§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §7k§ extends §;!B§
   {
       
      
      private const §[<§:int = 0;
      
      private const §0!`§:int = 1;
      
      private var § D§:Number;
      
      private var §`j§:int;
      
      private var §?l§:Number;
      
      private var §0m§:Number;
      
      private var §,z§:int;
      
      private var §5X§:Number;
      
      private var §'y§:Number;
      
      private var §!f§:Number;
      
      private var §0S§:Number;
      
      private var §'!9§:Number;
      
      private var §2A§:Number;
      
      private var §8!<§:Number;
      
      private var §@!`§:Number;
      
      private var §3!>§:Number;
      
      private var §-;§:Number;
      
      private var §^1§:Number;
      
      private var §=!X§:Number;
      
      private var §&!X§:Number;
      
      private var §4r§:Number;
      
      private var §`v§:Number;
      
      private var §<c§:Number;
      
      private var §4!O§:Number;
      
      private var §1!3§:Number;
      
      private var §>_§:Number;
      
      private var §^!A§:Number;
      
      private var §[k§:Number;
      
      private var §<!%§:Number;
      
      private var §6!3§:Number;
      
      private var §"D§:Number;
      
      private var §]a§:Number;
      
      private var §&F§:Number;
      
      private var §%!X§:ColorArgb;
      
      private var §+h§:ColorArgb;
      
      private var §!! §:ColorArgb;
      
      private var §=!Y§:ColorArgb;
      
      public function §7k§(param1:XML, param2:Texture)
      {
         this.§44§(param1,param2);
         var _loc3_:Number = this.§,z§ / (this.§5X§ + this.§!f§);
         super(param2,_loc3_,this.§,z§,§-"§,§;!"§);
         §][§ = false;
      }
      
      public function get §3!U§() : int
      {
         return this.§,z§;
      }
      
      override protected function createParticle() : §=!b§
      {
         return new PDParticle();
      }
      
      private function get §'!P§() : Boolean
      {
         return this.§3!U§ >= 20;
      }
      
      override protected function initParticle(param1:§=!b§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§5X§ + this.§'y§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§7-§ = 0;
         _loc2_.§2c§ = _loc3_;
         _loc2_.x = §0!Z§ + this.§?l§ * (Math.random() * 2 - 1);
         _loc2_.y = §@!<§ + this.§0m§ * (Math.random() * 2 - 1);
         _loc2_.startX = §0!Z§;
         _loc2_.startY = §@!<§;
         var _loc4_:Number = this.§=!X§ + this.§&!X§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§4r§ + this.§`v§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§<!%§ + this.§6!3§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§<!%§ / _loc3_;
         _loc2_.rotation = this.§=!X§ + this.§&!X§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§]a§ + this.§&F§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§1!3§;
         _loc2_.tangentialAcceleration = this.§^!A§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§0S§ + this.§'!9§ * _loc6_;
         if(!isNaN(this.§@!`§))
         {
            _loc8_ = this.§@!`§;
            if(!isNaN(this.§3!>§))
            {
               _loc8_ += this.§3!>§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§2A§ + this.§8!<§ * _loc6_;
         if(!isNaN(this.§-;§))
         {
            _loc10_ = this.§-;§;
            if(!isNaN(this.§^1§))
            {
               _loc10_ += this.§^1§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§%!X§.red;
         _loc11_.green = this.§%!X§.green;
         _loc11_.blue = this.§%!X§.blue;
         _loc11_.alpha = this.§%!X§.alpha;
         if(this.§+h§.red != 0)
         {
            _loc11_.red += this.§+h§.red * (Math.random() * 2 - 1);
         }
         if(this.§+h§.green != 0)
         {
            _loc11_.green += this.§+h§.green * (Math.random() * 2 - 1);
         }
         if(this.§+h§.blue != 0)
         {
            _loc11_.blue += this.§+h§.blue * (Math.random() * 2 - 1);
         }
         if(this.§+h§.alpha != 0)
         {
            _loc11_.alpha += this.§+h§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§!! §.red;
         var _loc14_:Number = this.§!! §.green;
         var _loc15_:Number = this.§!! §.blue;
         var _loc16_:Number = this.§!! §.alpha;
         if(this.§=!Y§.red != 0)
         {
            _loc13_ += this.§=!Y§.red * (Math.random() * 2 - 1);
         }
         if(this.§=!Y§.green != 0)
         {
            _loc14_ += this.§=!Y§.green * (Math.random() * 2 - 1);
         }
         if(this.§=!Y§.blue != 0)
         {
            _loc15_ += this.§=!Y§.blue * (Math.random() * 2 - 1);
         }
         if(this.§=!Y§.alpha != 0)
         {
            _loc16_ += this.§=!Y§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§=!b§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§2c§ - _loc3_.§7-§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§7-§ += param2;
         if(this.§`j§ == this.§0!`§)
         {
            if(!_loc3_.skipUpdate || !this.§'!P§)
            {
               if(this.§'!P§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §0!Z§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §@!<§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§"D§)
               {
                  _loc3_.§7-§ = _loc3_.§2c§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§'!P§)
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
               if(this.§'!P§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§<c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§4!O§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§<c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§4!O§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§'!P§)
         {
            if(this.§'!P§)
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
      
      private function §44§(param1:XML, param2:Texture) : void
      {
         this.§?l§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§0m§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§<c§ = parseFloat(param1.gravity.attribute("x"));
         this.§4!O§ = parseFloat(param1.gravity.attribute("y"));
         this.§`j§ = this.§'w§(param1.emitterType);
         this.§,z§ = this.§'w§(param1.maxParticles);
         this.§5X§ = Math.max(0.01,this.§6&§(param1.particleLifeSpan));
         this.§'y§ = this.§6&§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§!f§ = this.§6&§(param1.particleInterval);
         }
         else
         {
            this.§!f§ = 0;
         }
         this.§0S§ = this.§6&§(param1.startParticleSize);
         this.§2A§ = this.§0S§ * param2.height / param2.width;
         this.§'!9§ = this.§6&§(param1.startParticleSizeVariance);
         this.§8!<§ = this.§'!9§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§0S§ = this.§6&§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§'!9§ = this.§6&§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§2A§ = this.§6&§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§8!<§ = this.§6&§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§@!`§ = this.§6&§(param1.finishParticleSize);
            this.§-;§ = this.§@!`§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§3!>§ = this.§6&§(param1.FinishParticleSizeVariance);
            this.§^1§ = this.§3!>§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§@!`§ = this.§6&§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§3!>§ = this.§6&§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§-;§ = this.§6&§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§^1§ = this.§6&§(param1.FinishParticleSizeVarianceY);
         }
         this.§=!X§ = deg2rad(this.§6&§(param1.angle));
         this.§&!X§ = deg2rad(this.§6&§(param1.angleVariance));
         this.§4r§ = this.§6&§(param1.speed);
         this.§`v§ = this.§6&§(param1.speedVariance);
         this.§1!3§ = this.§6&§(param1.radialAcceleration);
         this.§^!A§ = this.§6&§(param1.tangentialAcceleration);
         this.§<!%§ = this.§6&§(param1.maxRadius);
         this.§6!3§ = this.§6&§(param1.maxRadiusVariance);
         this.§"D§ = this.§6&§(param1.minRadius);
         this.§]a§ = deg2rad(this.§6&§(param1.rotatePerSecond));
         this.§&F§ = deg2rad(this.§6&§(param1.rotatePerSecondVariance));
         this.§%!X§ = this.§!z§(param1.startColor);
         this.§+h§ = this.§!z§(param1.startColorVariance);
         this.§!! § = this.§!z§(param1.finishColor);
         this.§=!Y§ = this.§!z§(param1.finishColorVariance);
         §-"§ = this.§!!6§(param1.blendFuncSource);
         §;!"§ = this.§!!6§(param1.blendFuncDestination);
         §+!$§ = this.§?!_§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §6j§ = this.§6&§(param1.emissionVariance);
         }
      }
      
      protected function §'w§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6&§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §;j§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §!z§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §!!6§(param1:XMLList) : String
      {
         var _loc2_:int = this.§'w§(param1);
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
      
      protected function §?!_§(param1:XMLList) : String
      {
         var _loc2_:String = this.§;j§(param1);
         if(_loc2_ == §#!P§.§?!T§ || _loc2_ == §#!P§.§,!3§ || _loc2_ == §#!P§.NONE)
         {
            return _loc2_;
         }
         return §#!P§.§?!T§;
      }
   }
}

import §53§.§=!b§;

class PDParticle extends §=!b§
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
