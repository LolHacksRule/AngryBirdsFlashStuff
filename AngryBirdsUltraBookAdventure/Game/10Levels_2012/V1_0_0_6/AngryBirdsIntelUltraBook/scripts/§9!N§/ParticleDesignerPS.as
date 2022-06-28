package §9!N§
{
   import §4>§.§#i§;
   import §4>§.Texture;
   import §9!k§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §@!K§
   {
       
      
      private const §=!t§:int = 0;
      
      private const §=t§:int = 1;
      
      private var § P§:Number;
      
      private var §;!&§:int;
      
      private var §;!Y§:Number;
      
      private var §5!H§:Number;
      
      private var §^!;§:int;
      
      private var §+z§:Number;
      
      private var §`!?§:Number;
      
      private var §=9§:Number;
      
      private var §]!=§:Number;
      
      private var §"!`§:Number;
      
      private var §=e§:Number;
      
      private var §;!U§:Number;
      
      private var §;!9§:Number;
      
      private var §@!x§:Number;
      
      private var §7=§:Number;
      
      private var §;`§:Number;
      
      private var §%!-§:Number;
      
      private var §#u§:Number;
      
      private var §&!&§:Number;
      
      private var §"!q§:Number;
      
      private var §?3§:Number;
      
      private var §2!%§:Number;
      
      private var §=!Y§:Number;
      
      private var § e§:Number;
      
      private var § b§:Number;
      
      private var §@=§:Number;
      
      private var §'q§:Number;
      
      private var §]!Z§:Number;
      
      private var §-!H§:Number;
      
      private var §&9§:Number;
      
      private var § !Y§:Number;
      
      private var §-"§:ColorArgb;
      
      private var §?+§:ColorArgb;
      
      private var §4!F§:ColorArgb;
      
      private var §'z§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§6!;§(param1,param2);
         var _loc3_:Number = this.§^!;§ / (this.§+z§ + this.§=9§);
         super(param2,_loc3_,this.§^!;§,§%r§,§6!h§);
         §3!Z§ = false;
      }
      
      public function get §;G§() : int
      {
         return this.§^!;§;
      }
      
      override protected function createParticle() : §4!h§
      {
         return new PDParticle();
      }
      
      private function get §`+§() : Boolean
      {
         return this.§;G§ >= 20;
      }
      
      override protected function initParticle(param1:§4!h§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§+z§ + this.§`!?§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§45§ = 0;
         _loc2_.§3!&§ = _loc3_;
         _loc2_.x = §%Z§ + this.§;!Y§ * (Math.random() * 2 - 1);
         _loc2_.y = §8!c§ + this.§5!H§ * (Math.random() * 2 - 1);
         _loc2_.startX = §%Z§;
         _loc2_.startY = §8!c§;
         var _loc4_:Number = this.§%!-§ + this.§#u§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§&!&§ + this.§"!q§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§'q§ + this.§]!Z§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§'q§ / _loc3_;
         _loc2_.rotation = this.§%!-§ + this.§#u§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§&9§ + this.§ !Y§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§=!Y§;
         _loc2_.tangentialAcceleration = this.§ b§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§]!=§ + this.§"!`§ * _loc6_;
         if(!isNaN(this.§;!9§))
         {
            _loc8_ = this.§;!9§;
            if(!isNaN(this.§@!x§))
            {
               _loc8_ += this.§@!x§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§=e§ + this.§;!U§ * _loc6_;
         if(!isNaN(this.§7=§))
         {
            _loc10_ = this.§7=§;
            if(!isNaN(this.§;`§))
            {
               _loc10_ += this.§;`§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§-"§.red;
         _loc11_.green = this.§-"§.green;
         _loc11_.blue = this.§-"§.blue;
         _loc11_.alpha = this.§-"§.alpha;
         if(this.§?+§.red != 0)
         {
            _loc11_.red += this.§?+§.red * (Math.random() * 2 - 1);
         }
         if(this.§?+§.green != 0)
         {
            _loc11_.green += this.§?+§.green * (Math.random() * 2 - 1);
         }
         if(this.§?+§.blue != 0)
         {
            _loc11_.blue += this.§?+§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?+§.alpha != 0)
         {
            _loc11_.alpha += this.§?+§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§4!F§.red;
         var _loc14_:Number = this.§4!F§.green;
         var _loc15_:Number = this.§4!F§.blue;
         var _loc16_:Number = this.§4!F§.alpha;
         if(this.§'z§.red != 0)
         {
            _loc13_ += this.§'z§.red * (Math.random() * 2 - 1);
         }
         if(this.§'z§.green != 0)
         {
            _loc14_ += this.§'z§.green * (Math.random() * 2 - 1);
         }
         if(this.§'z§.blue != 0)
         {
            _loc15_ += this.§'z§.blue * (Math.random() * 2 - 1);
         }
         if(this.§'z§.alpha != 0)
         {
            _loc16_ += this.§'z§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§4!h§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§3!&§ - _loc3_.§45§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§45§ += param2;
         if(this.§;!&§ == this.§=t§)
         {
            if(!_loc3_.skipUpdate || !this.§`+§)
            {
               if(this.§`+§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §%Z§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §8!c§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§-!H§)
               {
                  _loc3_.§45§ = _loc3_.§3!&§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§`+§)
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
               if(this.§`+§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§?3§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§2!%§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§?3§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§2!%§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§`+§)
         {
            if(this.§`+§)
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
      
      private function §6!;§(param1:XML, param2:Texture) : void
      {
         this.§;!Y§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§5!H§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§?3§ = parseFloat(param1.gravity.attribute("x"));
         this.§2!%§ = parseFloat(param1.gravity.attribute("y"));
         this.§;!&§ = this.§!!v§(param1.emitterType);
         this.§^!;§ = this.§!!v§(param1.maxParticles);
         this.§+z§ = Math.max(0.01,this.§+@§(param1.particleLifeSpan));
         this.§`!?§ = this.§+@§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§=9§ = this.§+@§(param1.particleInterval);
         }
         else
         {
            this.§=9§ = 0;
         }
         this.§]!=§ = this.§+@§(param1.startParticleSize);
         this.§=e§ = this.§]!=§ * param2.height / param2.width;
         this.§"!`§ = this.§+@§(param1.startParticleSizeVariance);
         this.§;!U§ = this.§"!`§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§]!=§ = this.§+@§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§"!`§ = this.§+@§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§=e§ = this.§+@§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§;!U§ = this.§+@§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§;!9§ = this.§+@§(param1.finishParticleSize);
            this.§7=§ = this.§;!9§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§@!x§ = this.§+@§(param1.FinishParticleSizeVariance);
            this.§;`§ = this.§@!x§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§;!9§ = this.§+@§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§@!x§ = this.§+@§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§7=§ = this.§+@§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§;`§ = this.§+@§(param1.FinishParticleSizeVarianceY);
         }
         this.§%!-§ = deg2rad(this.§+@§(param1.angle));
         this.§#u§ = deg2rad(this.§+@§(param1.angleVariance));
         this.§&!&§ = this.§+@§(param1.speed);
         this.§"!q§ = this.§+@§(param1.speedVariance);
         this.§=!Y§ = this.§+@§(param1.radialAcceleration);
         this.§ b§ = this.§+@§(param1.tangentialAcceleration);
         this.§'q§ = this.§+@§(param1.maxRadius);
         this.§]!Z§ = this.§+@§(param1.maxRadiusVariance);
         this.§-!H§ = this.§+@§(param1.minRadius);
         this.§&9§ = deg2rad(this.§+@§(param1.rotatePerSecond));
         this.§ !Y§ = deg2rad(this.§+@§(param1.rotatePerSecondVariance));
         this.§-"§ = this.§?!c§(param1.startColor);
         this.§?+§ = this.§?!c§(param1.startColorVariance);
         this.§4!F§ = this.§?!c§(param1.finishColor);
         this.§'z§ = this.§?!c§(param1.finishColorVariance);
         §%r§ = this.§,!;§(param1.blendFuncSource);
         §6!h§ = this.§,!;§(param1.blendFuncDestination);
         §=!W§ = this.§+8§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §@b§ = this.§+@§(param1.emissionVariance);
         }
      }
      
      protected function §!!v§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §+@§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §<!3§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?!c§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §,!;§(param1:XMLList) : String
      {
         var _loc2_:int = this.§!!v§(param1);
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
      
      protected function §+8§(param1:XMLList) : String
      {
         var _loc2_:String = this.§<!3§(param1);
         if(_loc2_ == §#i§.§@R§ || _loc2_ == §#i§.§!!7§ || _loc2_ == §#i§.NONE)
         {
            return _loc2_;
         }
         return §#i§.§@R§;
      }
   }
}

import §9!N§.§4!h§;

class PDParticle extends §4!h§
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
