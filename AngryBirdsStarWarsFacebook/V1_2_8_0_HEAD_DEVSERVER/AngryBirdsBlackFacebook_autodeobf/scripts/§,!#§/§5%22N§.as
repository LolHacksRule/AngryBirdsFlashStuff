package §,!#§
{
   import §&v§.§ +§;
   import §&v§.Texture;
   import §=]§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §5"N§ extends §^"n§
   {
       
      
      private const §%!=§:int = 0;
      
      private const §+#A§:int = 1;
      
      private var §%`§:Number;
      
      private var §3r§:int;
      
      private var §5!E§:Number;
      
      private var §0"F§:Number;
      
      private var §'W§:int;
      
      private var §7!Z§:Number;
      
      private var §2!0§:Number;
      
      private var §@!$§:Number;
      
      private var §=!=§:Number;
      
      private var §>!R§:Number;
      
      private var §+!Y§:Number;
      
      private var § #=§:Number;
      
      private var §3!v§:Number;
      
      private var §0"e§:Number;
      
      private var §,"R§:Number;
      
      private var §@!"§:Number;
      
      private var §^F§:Number;
      
      private var §#"%§:Number;
      
      private var §<C§:Number;
      
      private var §8"V§:Number;
      
      private var §6"C§:Number;
      
      private var §=!]§:Number;
      
      private var §`"F§:Number;
      
      private var §>#Z§:Number;
      
      private var §0#D§:Number;
      
      private var §0#<§:Number;
      
      private var § null§:Number;
      
      private var §2"v§:Number;
      
      private var §+#C§:Number;
      
      private var §4!S§:Number;
      
      private var §@!e§:Number;
      
      private var §>"M§:ColorArgb;
      
      private var §1"%§:ColorArgb;
      
      private var §in §:ColorArgb;
      
      private var §#8§:ColorArgb;
      
      public function §5"N§(param1:XML, param2:Texture)
      {
         this.§-R§(param1,param2);
         var _loc3_:Number = this.§'W§ / (this.§7!Z§ + this.§@!$§);
         super(param2,_loc3_,this.§'W§,§=#§,§8G§);
         §3"$§ = false;
      }
      
      public function get §0"g§() : int
      {
         return this.§'W§;
      }
      
      override protected function createParticle() : §`E§
      {
         return new PDParticle();
      }
      
      private function get §!!7§() : Boolean
      {
         return this.§0"g§ >= 20;
      }
      
      override protected function initParticle(param1:§`E§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§7!Z§ + this.§2!0§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§,!@§ = _loc3_;
         _loc2_.x = §5#`§ + this.§5!E§ * (Math.random() * 2 - 1);
         _loc2_.y = §2!?§ + this.§0"F§ * (Math.random() * 2 - 1);
         _loc2_.startX = §5#`§;
         _loc2_.startY = §2!?§;
         var _loc4_:Number = this.§^F§ + this.§#"%§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§<C§ + this.§8"V§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§ null§ + this.§2"v§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§ null§ / _loc3_;
         _loc2_.rotation = this.§^F§ + this.§#"%§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§4!S§ + this.§@!e§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§`"F§;
         _loc2_.tangentialAcceleration = this.§0#D§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§=!=§ + this.§>!R§ * _loc6_;
         if(!isNaN(this.§3!v§))
         {
            _loc8_ = this.§3!v§;
            if(!isNaN(this.§0"e§))
            {
               _loc8_ += this.§0"e§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§+!Y§ + this.§ #=§ * _loc6_;
         if(!isNaN(this.§,"R§))
         {
            _loc10_ = this.§,"R§;
            if(!isNaN(this.§@!"§))
            {
               _loc10_ += this.§@!"§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§>"M§.red;
         _loc11_.green = this.§>"M§.green;
         _loc11_.blue = this.§>"M§.blue;
         _loc11_.alpha = this.§>"M§.alpha;
         if(this.§1"%§.red != 0)
         {
            _loc11_.red += this.§1"%§.red * (Math.random() * 2 - 1);
         }
         if(this.§1"%§.green != 0)
         {
            _loc11_.green += this.§1"%§.green * (Math.random() * 2 - 1);
         }
         if(this.§1"%§.blue != 0)
         {
            _loc11_.blue += this.§1"%§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1"%§.alpha != 0)
         {
            _loc11_.alpha += this.§1"%§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§in §.red;
         var _loc14_:Number = this.§in §.green;
         var _loc15_:Number = this.§in §.blue;
         var _loc16_:Number = this.§in §.alpha;
         if(this.§#8§.red != 0)
         {
            _loc13_ += this.§#8§.red * (Math.random() * 2 - 1);
         }
         if(this.§#8§.green != 0)
         {
            _loc14_ += this.§#8§.green * (Math.random() * 2 - 1);
         }
         if(this.§#8§.blue != 0)
         {
            _loc15_ += this.§#8§.blue * (Math.random() * 2 - 1);
         }
         if(this.§#8§.alpha != 0)
         {
            _loc16_ += this.§#8§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§`E§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,!@§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§3r§ == this.§+#A§)
         {
            if(!_loc3_.skipUpdate || !this.§!!7§)
            {
               if(this.§!!7§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §5#`§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2!?§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§+#C§)
               {
                  _loc3_.currentTime = _loc3_.§,!@§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§!!7§)
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
               if(this.§!!7§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§6"C§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§=!]§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§6"C§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§=!]§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§!!7§)
         {
            if(this.§!!7§)
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
      
      private function §-R§(param1:XML, param2:Texture) : void
      {
         this.§5!E§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§0"F§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§6"C§ = parseFloat(param1.gravity.attribute("x"));
         this.§=!]§ = parseFloat(param1.gravity.attribute("y"));
         this.§3r§ = this.§3">§(param1.emitterType);
         this.§'W§ = this.§3">§(param1.maxParticles);
         this.§7!Z§ = Math.max(0.01,this.§%!4§(param1.particleLifeSpan));
         this.§2!0§ = this.§%!4§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§@!$§ = this.§%!4§(param1.particleInterval);
         }
         else
         {
            this.§@!$§ = 0;
         }
         this.§=!=§ = this.§%!4§(param1.startParticleSize);
         this.§+!Y§ = this.§=!=§ * param2.height / param2.width;
         this.§>!R§ = this.§%!4§(param1.startParticleSizeVariance);
         this.§ #=§ = this.§>!R§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§=!=§ = this.§%!4§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§>!R§ = this.§%!4§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§+!Y§ = this.§%!4§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§ #=§ = this.§%!4§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§3!v§ = this.§%!4§(param1.finishParticleSize);
            this.§,"R§ = this.§3!v§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§0"e§ = this.§%!4§(param1.FinishParticleSizeVariance);
            this.§@!"§ = this.§0"e§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§3!v§ = this.§%!4§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§0"e§ = this.§%!4§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§,"R§ = this.§%!4§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§@!"§ = this.§%!4§(param1.FinishParticleSizeVarianceY);
         }
         this.§^F§ = deg2rad(this.§%!4§(param1.angle));
         this.§#"%§ = deg2rad(this.§%!4§(param1.angleVariance));
         this.§<C§ = this.§%!4§(param1.speed);
         this.§8"V§ = this.§%!4§(param1.speedVariance);
         this.§`"F§ = this.§%!4§(param1.radialAcceleration);
         this.§0#D§ = this.§%!4§(param1.tangentialAcceleration);
         this.§ null§ = this.§%!4§(param1.maxRadius);
         this.§2"v§ = this.§%!4§(param1.maxRadiusVariance);
         this.§+#C§ = this.§%!4§(param1.minRadius);
         this.§4!S§ = deg2rad(this.§%!4§(param1.rotatePerSecond));
         this.§@!e§ = deg2rad(this.§%!4§(param1.rotatePerSecondVariance));
         this.§>"M§ = this.§&!H§(param1.startColor);
         this.§1"%§ = this.§&!H§(param1.startColorVariance);
         this.§in § = this.§&!H§(param1.finishColor);
         this.§#8§ = this.§&!H§(param1.finishColorVariance);
         §=#§ = this.§0!F§(param1.blendFuncSource);
         §8G§ = this.§0!F§(param1.blendFuncDestination);
         §"#O§ = this.§;#,§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §'"H§ = this.§%!4§(param1.emissionVariance);
         }
      }
      
      protected function §3">§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §%!4§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §5F§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §&!H§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §0!F§(param1:XMLList) : String
      {
         var _loc2_:int = this.§3">§(param1);
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
      
      protected function §;#,§(param1:XMLList) : String
      {
         var _loc2_:String = this.§5F§(param1);
         if(_loc2_ == § +§.§1#B§ || _loc2_ == § +§.§5!^§ || _loc2_ == § +§.NONE)
         {
            return _loc2_;
         }
         return § +§.§1#B§;
      }
   }
}

import §,!#§.§`E§;

class PDParticle extends §`E§
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
