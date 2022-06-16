package §9!>§
{
   import §21§.§&!?§;
   import §21§.Texture;
   import §5^§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §<@§
   {
       
      
      private const §<j§:int = 0;
      
      private const §@J§:int = 1;
      
      private var §`m§:Number;
      
      private var §4!L§:int;
      
      private var §=W§:Number;
      
      private var §<!4§:Number;
      
      private var §]m§:int;
      
      private var §`U§:Number;
      
      private var §4n§:Number;
      
      private var §]!8§:Number;
      
      private var §,!L§:Number;
      
      private var §^b§:Number;
      
      private var §#L§:Number;
      
      private var §0Q§:Number;
      
      private var §4!'§:Number;
      
      private var §<9§:Number;
      
      private var §%S§:Number;
      
      private var §&5§:Number;
      
      private var §#3§:Number;
      
      private var §5!4§:Number;
      
      private var §'c§:Number;
      
      private var §"!3§:Number;
      
      private var §2u§:Number;
      
      private var §@!1§:Number;
      
      private var §#h§:Number;
      
      private var §<Q§:Number;
      
      private var §2§:Number;
      
      private var §2H§:Number;
      
      private var §0!I§:Number;
      
      private var §&!#§:Number;
      
      private var §-b§:Number;
      
      private var §+U§:Number;
      
      private var §5!>§:Number;
      
      private var §>8§:ColorArgb;
      
      private var §%n§:ColorArgb;
      
      private var §^f§:ColorArgb;
      
      private var §8!+§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§;b§(param1,param2);
         var _loc3_:Number = this.§]m§ / (this.§`U§ + this.§]!8§);
         super(param2,_loc3_,this.§]m§,§<u§,§&!-§);
         §'!C§ = false;
      }
      
      public function get §1v§() : int
      {
         return this.§]m§;
      }
      
      override protected function createParticle() : §0'§
      {
         return new PDParticle();
      }
      
      private function get §1W§() : Boolean
      {
         return this.§1v§ >= 20;
      }
      
      override protected function initParticle(param1:§0'§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§`U§ + this.§4n§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§#!&§ = _loc3_;
         _loc2_.x = §-v§ + this.§=W§ * (Math.random() * 2 - 1);
         _loc2_.y = §?!A§ + this.§<!4§ * (Math.random() * 2 - 1);
         _loc2_.startX = §-v§;
         _loc2_.startY = §?!A§;
         var _loc4_:Number = this.§#3§ + this.§5!4§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§'c§ + this.§"!3§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§0!I§ + this.§&!#§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§0!I§ / _loc3_;
         _loc2_.rotation = this.§#3§ + this.§5!4§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§+U§ + this.§5!>§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§#h§;
         _loc2_.tangentialAcceleration = this.§2§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§,!L§ + this.§^b§ * _loc6_;
         if(!isNaN(this.§4!'§))
         {
            _loc8_ = this.§4!'§;
            if(!isNaN(this.§<9§))
            {
               _loc8_ += this.§<9§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§#L§ + this.§0Q§ * _loc6_;
         if(!isNaN(this.§%S§))
         {
            _loc10_ = this.§%S§;
            if(!isNaN(this.§&5§))
            {
               _loc10_ += this.§&5§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§>8§.red;
         _loc11_.green = this.§>8§.green;
         _loc11_.blue = this.§>8§.blue;
         _loc11_.alpha = this.§>8§.alpha;
         if(this.§%n§.red != 0)
         {
            _loc11_.red += this.§%n§.red * (Math.random() * 2 - 1);
         }
         if(this.§%n§.green != 0)
         {
            _loc11_.green += this.§%n§.green * (Math.random() * 2 - 1);
         }
         if(this.§%n§.blue != 0)
         {
            _loc11_.blue += this.§%n§.blue * (Math.random() * 2 - 1);
         }
         if(this.§%n§.alpha != 0)
         {
            _loc11_.alpha += this.§%n§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§^f§.red;
         var _loc14_:Number = this.§^f§.green;
         var _loc15_:Number = this.§^f§.blue;
         var _loc16_:Number = this.§^f§.alpha;
         if(this.§8!+§.red != 0)
         {
            _loc13_ += this.§8!+§.red * (Math.random() * 2 - 1);
         }
         if(this.§8!+§.green != 0)
         {
            _loc14_ += this.§8!+§.green * (Math.random() * 2 - 1);
         }
         if(this.§8!+§.blue != 0)
         {
            _loc15_ += this.§8!+§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8!+§.alpha != 0)
         {
            _loc16_ += this.§8!+§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§0'§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§#!&§ - _loc3_.currentTime)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§4!L§ == this.§@J§)
         {
            if(!_loc3_.skipUpdate || !this.§1W§)
            {
               if(this.§1W§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §-v§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §?!A§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§-b§)
               {
                  _loc3_.currentTime = _loc3_.§#!&§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§1W§)
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
               if(this.§1W§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§2u§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§@!1§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§2u§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§@!1§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§1W§)
         {
            if(this.§1W§)
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
      
      private function §;b§(param1:XML, param2:Texture) : void
      {
         this.§=W§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§<!4§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§2u§ = parseFloat(param1.gravity.attribute("x"));
         this.§@!1§ = parseFloat(param1.gravity.attribute("y"));
         this.§4!L§ = this.§8v§(param1.emitterType);
         this.§]m§ = this.§8v§(param1.maxParticles);
         this.§`U§ = Math.max(0.01,this.§2!K§(param1.particleLifeSpan));
         this.§4n§ = this.§2!K§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§]!8§ = this.§2!K§(param1.particleInterval);
         }
         else
         {
            this.§]!8§ = 0;
         }
         this.§,!L§ = this.§2!K§(param1.startParticleSize);
         this.§#L§ = this.§,!L§ * param2.height / param2.width;
         this.§^b§ = this.§2!K§(param1.startParticleSizeVariance);
         this.§0Q§ = this.§^b§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§,!L§ = this.§2!K§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§^b§ = this.§2!K§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§#L§ = this.§2!K§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§0Q§ = this.§2!K§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§4!'§ = this.§2!K§(param1.finishParticleSize);
            this.§%S§ = this.§4!'§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§<9§ = this.§2!K§(param1.FinishParticleSizeVariance);
            this.§&5§ = this.§<9§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§4!'§ = this.§2!K§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§<9§ = this.§2!K§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§%S§ = this.§2!K§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§&5§ = this.§2!K§(param1.FinishParticleSizeVarianceY);
         }
         this.§#3§ = deg2rad(this.§2!K§(param1.angle));
         this.§5!4§ = deg2rad(this.§2!K§(param1.angleVariance));
         this.§'c§ = this.§2!K§(param1.speed);
         this.§"!3§ = this.§2!K§(param1.speedVariance);
         this.§#h§ = this.§2!K§(param1.radialAcceleration);
         this.§2§ = this.§2!K§(param1.tangentialAcceleration);
         this.§0!I§ = this.§2!K§(param1.maxRadius);
         this.§&!#§ = this.§2!K§(param1.maxRadiusVariance);
         this.§-b§ = this.§2!K§(param1.minRadius);
         this.§+U§ = deg2rad(this.§2!K§(param1.rotatePerSecond));
         this.§5!>§ = deg2rad(this.§2!K§(param1.rotatePerSecondVariance));
         this.§>8§ = this.§7;§(param1.startColor);
         this.§%n§ = this.§7;§(param1.startColorVariance);
         this.§^f§ = this.§7;§(param1.finishColor);
         this.§8!+§ = this.§7;§(param1.finishColorVariance);
         §<u§ = this.§6!2§(param1.blendFuncSource);
         §&!-§ = this.§6!2§(param1.blendFuncDestination);
         §=X§ = this.§5@§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §6g§ = this.§2!K§(param1.emissionVariance);
         }
      }
      
      protected function §8v§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §2!K§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §'!?§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §7;§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §6!2§(param1:XMLList) : String
      {
         var _loc2_:int = this.§8v§(param1);
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
      
      protected function §5@§(param1:XMLList) : String
      {
         var _loc2_:String = this.§'!?§(param1);
         if(_loc2_ == §&!?§.§&!C§ || _loc2_ == §&!?§.§8!F§ || _loc2_ == §&!?§.NONE)
         {
            return _loc2_;
         }
         return §&!?§.§&!C§;
      }
   }
}

import §9!>§.§0'§;

class PDParticle extends §0'§
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
