package §2,§
{
   import §#!6§.Texture;
   import §#!6§.§]!H§;
   import §6K§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §11§ extends §>O§
   {
       
      
      private const dynamic:int = 0;
      
      private const §7!§:int = 1;
      
      private var §;`§:Number;
      
      private var §`!K§:int;
      
      private var §5p§:Number;
      
      private var §3v§:Number;
      
      private var §=!a§:int;
      
      private var §`u§:Number;
      
      private var §!!6§:Number;
      
      private var § "§:Number;
      
      private var §#!3§:Number;
      
      private var §]V§:Number;
      
      private var §6!Y§:Number;
      
      private var §<!4§:Number;
      
      private var §+!'§:Number;
      
      private var §^m§:Number;
      
      private var §+!O§:Number;
      
      private var §&k§:Number;
      
      private var §>!=§:Number;
      
      private var §0x§:Number;
      
      private var §[!R§:Number;
      
      private var §0b§:Number;
      
      private var §#!H§:Number;
      
      private var §;R§:Number;
      
      private var §'!#§:Number;
      
      private var §!-§:Number;
      
      private var §9!I§:Number;
      
      private var § =§:Number;
      
      private var §7!W§:Number;
      
      private var §,6§:Number;
      
      private var §1v§:Number;
      
      private var §9R§:Number;
      
      private var §&e§:Number;
      
      private var §0!^§:ColorArgb;
      
      private var §@E§:ColorArgb;
      
      private var §;!+§:ColorArgb;
      
      private var §0h§:ColorArgb;
      
      public function §11§(param1:XML, param2:Texture)
      {
         this.§ C§(param1,param2);
         var _loc3_:Number = this.§=!a§ / (this.§`u§ + this.§ "§);
         super(param2,_loc3_,this.§=!a§,§8Y§,§'R§);
         §!D§ = false;
      }
      
      public function get §^!;§() : int
      {
         return this.§=!a§;
      }
      
      override protected function createParticle() : §;p§
      {
         return new PDParticle();
      }
      
      private function get §>q§() : Boolean
      {
         return this.§^!;§ >= 20;
      }
      
      override protected function initParticle(param1:§;p§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§`u§ + this.§!!6§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§5F§ = 0;
         _loc2_.§7#§ = _loc3_;
         _loc2_.x = §&o§ + this.§5p§ * (Math.random() * 2 - 1);
         _loc2_.y = § !K§ + this.§3v§ * (Math.random() * 2 - 1);
         _loc2_.startX = §&o§;
         _loc2_.startY = § !K§;
         var _loc4_:Number = this.§>!=§ + this.§0x§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§[!R§ + this.§0b§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§7!W§ + this.§,6§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§7!W§ / _loc3_;
         _loc2_.rotation = this.§>!=§ + this.§0x§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§9R§ + this.§&e§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§'!#§;
         _loc2_.tangentialAcceleration = this.§9!I§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§#!3§ + this.§]V§ * _loc6_;
         if(!isNaN(this.§+!'§))
         {
            _loc8_ = this.§+!'§;
            if(!isNaN(this.§^m§))
            {
               _loc8_ += this.§^m§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§6!Y§ + this.§<!4§ * _loc6_;
         if(!isNaN(this.§+!O§))
         {
            _loc10_ = this.§+!O§;
            if(!isNaN(this.§&k§))
            {
               _loc10_ += this.§&k§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§0!^§.red;
         _loc11_.green = this.§0!^§.green;
         _loc11_.blue = this.§0!^§.blue;
         _loc11_.alpha = this.§0!^§.alpha;
         if(this.§@E§.red != 0)
         {
            _loc11_.red += this.§@E§.red * (Math.random() * 2 - 1);
         }
         if(this.§@E§.green != 0)
         {
            _loc11_.green += this.§@E§.green * (Math.random() * 2 - 1);
         }
         if(this.§@E§.blue != 0)
         {
            _loc11_.blue += this.§@E§.blue * (Math.random() * 2 - 1);
         }
         if(this.§@E§.alpha != 0)
         {
            _loc11_.alpha += this.§@E§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§;!+§.red;
         var _loc14_:Number = this.§;!+§.green;
         var _loc15_:Number = this.§;!+§.blue;
         var _loc16_:Number = this.§;!+§.alpha;
         if(this.§0h§.red != 0)
         {
            _loc13_ += this.§0h§.red * (Math.random() * 2 - 1);
         }
         if(this.§0h§.green != 0)
         {
            _loc14_ += this.§0h§.green * (Math.random() * 2 - 1);
         }
         if(this.§0h§.blue != 0)
         {
            _loc15_ += this.§0h§.blue * (Math.random() * 2 - 1);
         }
         if(this.§0h§.alpha != 0)
         {
            _loc16_ += this.§0h§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§;p§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§7#§ - _loc3_.§5F§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§5F§ += param2;
         if(this.§`!K§ == this.§7!§)
         {
            if(!_loc3_.skipUpdate || !this.§>q§)
            {
               if(this.§>q§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §&o§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = § !K§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§1v§)
               {
                  _loc3_.§5F§ = _loc3_.§7#§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§>q§)
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
               if(this.§>q§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§#!H§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§;R§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§#!H§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§;R§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§>q§)
         {
            if(this.§>q§)
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
      
      private function § C§(param1:XML, param2:Texture) : void
      {
         this.§5p§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§3v§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§#!H§ = parseFloat(param1.gravity.attribute("x"));
         this.§;R§ = parseFloat(param1.gravity.attribute("y"));
         this.§`!K§ = this.§]%§(param1.emitterType);
         this.§=!a§ = this.§]%§(param1.maxParticles);
         this.§`u§ = Math.max(0.01,this.§#>§(param1.particleLifeSpan));
         this.§!!6§ = this.§#>§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§ "§ = this.§#>§(param1.particleInterval);
         }
         else
         {
            this.§ "§ = 0;
         }
         this.§#!3§ = this.§#>§(param1.startParticleSize);
         this.§6!Y§ = this.§#!3§ * param2.height / param2.width;
         this.§]V§ = this.§#>§(param1.startParticleSizeVariance);
         this.§<!4§ = this.§]V§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§#!3§ = this.§#>§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§]V§ = this.§#>§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§6!Y§ = this.§#>§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§<!4§ = this.§#>§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§+!'§ = this.§#>§(param1.finishParticleSize);
            this.§+!O§ = this.§+!'§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§^m§ = this.§#>§(param1.FinishParticleSizeVariance);
            this.§&k§ = this.§^m§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§+!'§ = this.§#>§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§^m§ = this.§#>§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§+!O§ = this.§#>§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§&k§ = this.§#>§(param1.FinishParticleSizeVarianceY);
         }
         this.§>!=§ = deg2rad(this.§#>§(param1.angle));
         this.§0x§ = deg2rad(this.§#>§(param1.angleVariance));
         this.§[!R§ = this.§#>§(param1.speed);
         this.§0b§ = this.§#>§(param1.speedVariance);
         this.§'!#§ = this.§#>§(param1.radialAcceleration);
         this.§9!I§ = this.§#>§(param1.tangentialAcceleration);
         this.§7!W§ = this.§#>§(param1.maxRadius);
         this.§,6§ = this.§#>§(param1.maxRadiusVariance);
         this.§1v§ = this.§#>§(param1.minRadius);
         this.§9R§ = deg2rad(this.§#>§(param1.rotatePerSecond));
         this.§&e§ = deg2rad(this.§#>§(param1.rotatePerSecondVariance));
         this.§0!^§ = this.§,O§(param1.startColor);
         this.§@E§ = this.§,O§(param1.startColorVariance);
         this.§;!+§ = this.§,O§(param1.finishColor);
         this.§0h§ = this.§,O§(param1.finishColorVariance);
         §8Y§ = this.§[B§(param1.blendFuncSource);
         §'R§ = this.§[B§(param1.blendFuncDestination);
         §<6§ = this.§4q§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §8=§ = this.§#>§(param1.emissionVariance);
         }
      }
      
      protected function §]%§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §#>§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §#!O§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §,O§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §[B§(param1:XMLList) : String
      {
         var _loc2_:int = this.§]%§(param1);
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
      
      protected function §4q§(param1:XMLList) : String
      {
         var _loc2_:String = this.§#!O§(param1);
         if(_loc2_ == §]!H§.§2R§ || _loc2_ == §]!H§.§7,§ || _loc2_ == §]!H§.NONE)
         {
            return _loc2_;
         }
         return §]!H§.§2R§;
      }
   }
}

import §2,§.§;p§;

class PDParticle extends §;p§
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
