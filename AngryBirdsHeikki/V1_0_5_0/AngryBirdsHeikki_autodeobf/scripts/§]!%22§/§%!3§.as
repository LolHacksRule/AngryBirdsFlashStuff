package §]!"§
{
   import § !9§.§&N§;
   import § !9§.Texture;
   import §8!4§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §%!3§ extends §!m§
   {
       
      
      private const §;u§:int = 0;
      
      private const §3o§:int = 1;
      
      private var §1@§:Number;
      
      private var §&C§:int;
      
      private var §[g§:Number;
      
      private var §+0§:Number;
      
      private var §"Q§:int;
      
      private var §;]§:Number;
      
      private var §7R§:Number;
      
      private var §"!E§:Number;
      
      private var §+!O§:Number;
      
      private var §`i§:Number;
      
      private var §5,§:Number;
      
      private var §7!L§:Number;
      
      private var §<7§:Number;
      
      private var §=!L§:Number;
      
      private var §+V§:Number;
      
      private var §=T§:Number;
      
      private var §7!&§:Number;
      
      private var §5_§:Number;
      
      private var §#!N§:Number;
      
      private var §[!4§:Number;
      
      private var §^w§:Number;
      
      private var §4"§:Number;
      
      private var §0!?§:Number;
      
      private var § ![§:Number;
      
      private var §6!"§:Number;
      
      private var §^m§:Number;
      
      private var §%N§:Number;
      
      private var §'G§:Number;
      
      private var native:Number;
      
      private var §"&§:Number;
      
      private var §;!H§:Number;
      
      private var §;!b§:ColorArgb;
      
      private var § $§:ColorArgb;
      
      private var §;!8§:ColorArgb;
      
      private var §1W§:ColorArgb;
      
      public function §%!3§(param1:XML, param2:Texture)
      {
         this.§7s§(param1,param2);
         var _loc3_:Number = this.§"Q§ / (this.§;]§ + this.§"!E§);
         super(param2,_loc3_,this.§"Q§,§!!1§,§>!b§);
         §&!;§ = false;
      }
      
      public function get §#!8§() : int
      {
         return this.§"Q§;
      }
      
      override protected function createParticle() : §0!"§
      {
         return new PDParticle();
      }
      
      private function get §%!A§() : Boolean
      {
         return this.§#!8§ >= 20;
      }
      
      override protected function initParticle(param1:§0!"§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§;]§ + this.§7R§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§"!3§ = 0;
         _loc2_.§>! § = _loc3_;
         _loc2_.x = §<]§ + this.§[g§ * (Math.random() * 2 - 1);
         _loc2_.y = §#F§ + this.§+0§ * (Math.random() * 2 - 1);
         _loc2_.startX = §<]§;
         _loc2_.startY = §#F§;
         var _loc4_:Number = this.§7!&§ + this.§5_§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§#!N§ + this.§[!4§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§%N§ + this.§'G§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§%N§ / _loc3_;
         _loc2_.rotation = this.§7!&§ + this.§5_§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§"&§ + this.§;!H§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§0!?§;
         _loc2_.tangentialAcceleration = this.§6!"§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§+!O§ + this.§`i§ * _loc6_;
         if(!isNaN(this.§<7§))
         {
            _loc8_ = this.§<7§;
            if(!isNaN(this.§=!L§))
            {
               _loc8_ += this.§=!L§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§5,§ + this.§7!L§ * _loc6_;
         if(!isNaN(this.§+V§))
         {
            _loc10_ = this.§+V§;
            if(!isNaN(this.§=T§))
            {
               _loc10_ += this.§=T§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§;!b§.red;
         _loc11_.green = this.§;!b§.green;
         _loc11_.blue = this.§;!b§.blue;
         _loc11_.alpha = this.§;!b§.alpha;
         if(this.§ $§.red != 0)
         {
            _loc11_.red += this.§ $§.red * (Math.random() * 2 - 1);
         }
         if(this.§ $§.green != 0)
         {
            _loc11_.green += this.§ $§.green * (Math.random() * 2 - 1);
         }
         if(this.§ $§.blue != 0)
         {
            _loc11_.blue += this.§ $§.blue * (Math.random() * 2 - 1);
         }
         if(this.§ $§.alpha != 0)
         {
            _loc11_.alpha += this.§ $§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§;!8§.red;
         var _loc14_:Number = this.§;!8§.green;
         var _loc15_:Number = this.§;!8§.blue;
         var _loc16_:Number = this.§;!8§.alpha;
         if(this.§1W§.red != 0)
         {
            _loc13_ += this.§1W§.red * (Math.random() * 2 - 1);
         }
         if(this.§1W§.green != 0)
         {
            _loc14_ += this.§1W§.green * (Math.random() * 2 - 1);
         }
         if(this.§1W§.blue != 0)
         {
            _loc15_ += this.§1W§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1W§.alpha != 0)
         {
            _loc16_ += this.§1W§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§0!"§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§>! § - _loc3_.§"!3§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§"!3§ += param2;
         if(this.§&C§ == this.§3o§)
         {
            if(!_loc3_.skipUpdate || !this.§%!A§)
            {
               if(this.§%!A§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §<]§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §#F§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.native)
               {
                  _loc3_.§"!3§ = _loc3_.§>! §;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§%!A§)
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
               if(this.§%!A§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§^w§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§4"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§^w§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§4"§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§%!A§)
         {
            if(this.§%!A§)
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
      
      private function §7s§(param1:XML, param2:Texture) : void
      {
         this.§[g§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§+0§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§^w§ = parseFloat(param1.gravity.attribute("x"));
         this.§4"§ = parseFloat(param1.gravity.attribute("y"));
         this.§&C§ = this.§-a§(param1.emitterType);
         this.§"Q§ = this.§-a§(param1.maxParticles);
         this.§;]§ = Math.max(0.01,this.§]N§(param1.particleLifeSpan));
         this.§7R§ = this.§]N§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§"!E§ = this.§]N§(param1.particleInterval);
         }
         else
         {
            this.§"!E§ = 0;
         }
         this.§+!O§ = this.§]N§(param1.startParticleSize);
         this.§5,§ = this.§+!O§ * param2.height / param2.width;
         this.§`i§ = this.§]N§(param1.startParticleSizeVariance);
         this.§7!L§ = this.§`i§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§+!O§ = this.§]N§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`i§ = this.§]N§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§5,§ = this.§]N§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§7!L§ = this.§]N§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§<7§ = this.§]N§(param1.finishParticleSize);
            this.§+V§ = this.§<7§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§=!L§ = this.§]N§(param1.FinishParticleSizeVariance);
            this.§=T§ = this.§=!L§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§<7§ = this.§]N§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§=!L§ = this.§]N§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§+V§ = this.§]N§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§=T§ = this.§]N§(param1.FinishParticleSizeVarianceY);
         }
         this.§7!&§ = deg2rad(this.§]N§(param1.angle));
         this.§5_§ = deg2rad(this.§]N§(param1.angleVariance));
         this.§#!N§ = this.§]N§(param1.speed);
         this.§[!4§ = this.§]N§(param1.speedVariance);
         this.§0!?§ = this.§]N§(param1.radialAcceleration);
         this.§6!"§ = this.§]N§(param1.tangentialAcceleration);
         this.§%N§ = this.§]N§(param1.maxRadius);
         this.§'G§ = this.§]N§(param1.maxRadiusVariance);
         this.native = this.§]N§(param1.minRadius);
         this.§"&§ = deg2rad(this.§]N§(param1.rotatePerSecond));
         this.§;!H§ = deg2rad(this.§]N§(param1.rotatePerSecondVariance));
         this.§;!b§ = this.§+@§(param1.startColor);
         this.§ $§ = this.§+@§(param1.startColorVariance);
         this.§;!8§ = this.§+@§(param1.finishColor);
         this.§1W§ = this.§+@§(param1.finishColorVariance);
         §!!1§ = this.§'U§(param1.blendFuncSource);
         §>!b§ = this.§'U§(param1.blendFuncDestination);
         §-!F§ = this.§"!<§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §[!<§ = this.§]N§(param1.emissionVariance);
         }
      }
      
      protected function §-a§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]N§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §7'§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+@§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §'U§(param1:XMLList) : String
      {
         var _loc2_:int = this.§-a§(param1);
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
      
      protected function §"!<§(param1:XMLList) : String
      {
         var _loc2_:String = this.§7'§(param1);
         if(_loc2_ == §&N§.§3@§ || _loc2_ == §&N§.§?k§ || _loc2_ == §&N§.NONE)
         {
            return _loc2_;
         }
         return §&N§.§3@§;
      }
   }
}

import §]!"§.§0!"§;

class PDParticle extends §0!"§
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
