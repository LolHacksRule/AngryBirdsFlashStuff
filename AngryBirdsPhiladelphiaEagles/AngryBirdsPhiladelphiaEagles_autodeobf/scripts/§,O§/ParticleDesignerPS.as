package §,O§
{
   import §+§.deg2rad;
   import §8z§.Texture;
   import §8z§.§^,§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends § d§
   {
       
      
      private const §=S§:int = 0;
      
      private const §;d§:int = 1;
      
      private var §-o§:Number;
      
      private var §9S§:int;
      
      private var §7!+§:Number;
      
      private var §#k§:Number;
      
      private var §3V§:int;
      
      private var §case §:Number;
      
      private var §&w§:Number;
      
      private var §3!K§:Number;
      
      private var §4!+§:Number;
      
      private var §1`§:Number;
      
      private var §-!+§:Number;
      
      private var §`>§:Number;
      
      private var §]'§:Number;
      
      private var §7#§:Number;
      
      private var §=!-§:Number;
      
      private var §3!#§:Number;
      
      private var § !!§:Number;
      
      private var §"%§:Number;
      
      private var §`!;§:Number;
      
      private var § !=§:Number;
      
      private var §&!K§:Number;
      
      private var §#G§:Number;
      
      private var §4A§:Number;
      
      private var §?!?§:Number;
      
      private var §?H§:Number;
      
      private var §@!N§:Number;
      
      private var §#w§:Number;
      
      private var §0N§:Number;
      
      private var §;O§:Number;
      
      private var §&m§:Number;
      
      private var §&&§:Number;
      
      private var §?!>§:ColorArgb;
      
      private var §=!5§:ColorArgb;
      
      private var §^7§:ColorArgb;
      
      private var §7%§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§7e§(param1,param2);
         var _loc3_:Number = this.§3V§ / (this.§case § + this.§3!K§);
         super(param2,_loc3_,this.§3V§,§;p§,§>=§);
         §7o§ = false;
      }
      
      public function get §6!,§() : int
      {
         return this.§3V§;
      }
      
      override protected function createParticle() : §50§
      {
         return new PDParticle();
      }
      
      private function get §2!4§() : Boolean
      {
         return this.§6!,§ >= 20;
      }
      
      override protected function initParticle(param1:§50§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§case § + this.§&w§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§=d§ = 0;
         _loc2_.§[@§ = _loc3_;
         _loc2_.x = §^!4§ + this.§7!+§ * (Math.random() * 2 - 1);
         _loc2_.y = §>g§ + this.§#k§ * (Math.random() * 2 - 1);
         _loc2_.startX = §^!4§;
         _loc2_.startY = §>g§;
         var _loc4_:Number = this.§ !!§ + this.§"%§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§`!;§ + this.§ !=§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§#w§ + this.§0N§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§#w§ / _loc3_;
         _loc2_.rotation = this.§ !!§ + this.§"%§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§&m§ + this.§&&§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§4A§;
         _loc2_.tangentialAcceleration = this.§?H§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§4!+§ + this.§1`§ * _loc6_;
         if(!isNaN(this.§]'§))
         {
            _loc8_ = this.§]'§;
            if(!isNaN(this.§7#§))
            {
               _loc8_ += this.§7#§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§-!+§ + this.§`>§ * _loc6_;
         if(!isNaN(this.§=!-§))
         {
            _loc10_ = this.§=!-§;
            if(!isNaN(this.§3!#§))
            {
               _loc10_ += this.§3!#§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§?!>§.red;
         _loc11_.green = this.§?!>§.green;
         _loc11_.blue = this.§?!>§.blue;
         _loc11_.alpha = this.§?!>§.alpha;
         if(this.§=!5§.red != 0)
         {
            _loc11_.red += this.§=!5§.red * (Math.random() * 2 - 1);
         }
         if(this.§=!5§.green != 0)
         {
            _loc11_.green += this.§=!5§.green * (Math.random() * 2 - 1);
         }
         if(this.§=!5§.blue != 0)
         {
            _loc11_.blue += this.§=!5§.blue * (Math.random() * 2 - 1);
         }
         if(this.§=!5§.alpha != 0)
         {
            _loc11_.alpha += this.§=!5§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^7§.red;
         var _loc14_:Number = this.§^7§.green;
         var _loc15_:Number = this.§^7§.blue;
         var _loc16_:Number = this.§^7§.alpha;
         if(this.§7%§.red != 0)
         {
            _loc13_ += this.§7%§.red * (Math.random() * 2 - 1);
         }
         if(this.§7%§.green != 0)
         {
            _loc14_ += this.§7%§.green * (Math.random() * 2 - 1);
         }
         if(this.§7%§.blue != 0)
         {
            _loc15_ += this.§7%§.blue * (Math.random() * 2 - 1);
         }
         if(this.§7%§.alpha != 0)
         {
            _loc16_ += this.§7%§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§50§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§[@§ - _loc3_.§=d§)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§=d§ += param2;
         if(this.§9S§ == this.§;d§)
         {
            if(!_loc3_.skipUpdate || !this.§2!4§)
            {
               if(this.§2!4§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §^!4§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §>g§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§;O§)
               {
                  _loc3_.§=d§ = _loc3_.§[@§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§2!4§)
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
               if(this.§2!4§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§&!K§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§#G§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&!K§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§#G§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§2!4§)
         {
            if(this.§2!4§)
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
      
      private function §7e§(param1:XML, param2:Texture) : void
      {
         this.§7!+§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§#k§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&!K§ = parseFloat(param1.gravity.attribute("x"));
         this.§#G§ = parseFloat(param1.gravity.attribute("y"));
         this.§9S§ = this.§ U§(param1.emitterType);
         this.§3V§ = this.§ U§(param1.maxParticles);
         this.§case § = Math.max(0.01,this.§@!L§(param1.particleLifeSpan));
         this.§&w§ = this.§@!L§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§3!K§ = this.§@!L§(param1.particleInterval);
         }
         else
         {
            this.§3!K§ = 0;
         }
         this.§4!+§ = this.§@!L§(param1.startParticleSize);
         this.§-!+§ = this.§4!+§ * param2.height / param2.width;
         this.§1`§ = this.§@!L§(param1.startParticleSizeVariance);
         this.§`>§ = this.§1`§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§4!+§ = this.§@!L§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§1`§ = this.§@!L§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§-!+§ = this.§@!L§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§`>§ = this.§@!L§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§]'§ = this.§@!L§(param1.finishParticleSize);
            this.§=!-§ = this.§]'§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§7#§ = this.§@!L§(param1.FinishParticleSizeVariance);
            this.§3!#§ = this.§7#§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§]'§ = this.§@!L§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§7#§ = this.§@!L§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§=!-§ = this.§@!L§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§3!#§ = this.§@!L§(param1.FinishParticleSizeVarianceY);
         }
         this.§ !!§ = deg2rad(this.§@!L§(param1.angle));
         this.§"%§ = deg2rad(this.§@!L§(param1.angleVariance));
         this.§`!;§ = this.§@!L§(param1.speed);
         this.§ !=§ = this.§@!L§(param1.speedVariance);
         this.§4A§ = this.§@!L§(param1.radialAcceleration);
         this.§?H§ = this.§@!L§(param1.tangentialAcceleration);
         this.§#w§ = this.§@!L§(param1.maxRadius);
         this.§0N§ = this.§@!L§(param1.maxRadiusVariance);
         this.§;O§ = this.§@!L§(param1.minRadius);
         this.§&m§ = deg2rad(this.§@!L§(param1.rotatePerSecond));
         this.§&&§ = deg2rad(this.§@!L§(param1.rotatePerSecondVariance));
         this.§?!>§ = this.§^3§(param1.startColor);
         this.§=!5§ = this.§^3§(param1.startColorVariance);
         this.§^7§ = this.§^3§(param1.finishColor);
         this.§7%§ = this.§^3§(param1.finishColorVariance);
         §;p§ = this.§;!A§(param1.blendFuncSource);
         §>=§ = this.§;!A§(param1.blendFuncDestination);
         §=o§ = this.§,1§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §'!L§ = this.§@!L§(param1.emissionVariance);
         }
      }
      
      protected function § U§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@!L§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §1!&§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §^3§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §;!A§(param1:XMLList) : String
      {
         var _loc2_:int = this.§ U§(param1);
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
      
      protected function §,1§(param1:XMLList) : String
      {
         var _loc2_:String = this.§1!&§(param1);
         if(_loc2_ == §^,§.§#b§ || _loc2_ == §^,§.§1K§ || _loc2_ == §^,§.NONE)
         {
            return _loc2_;
         }
         return §^,§.§#b§;
      }
   }
}

import §,O§.§50§;

class PDParticle extends §50§
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
