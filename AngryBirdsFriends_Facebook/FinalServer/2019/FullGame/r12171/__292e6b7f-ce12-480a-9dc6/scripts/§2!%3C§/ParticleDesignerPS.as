package §2!<§
{
   import §,#e§.§^n§;
   import §-#]§.Texture;
   import §8#p§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §=P§:int = 0;
      
      private const §1#G§:int = 1;
      
      private var §>$@§:Number;
      
      private var §9!k§:int;
      
      private var §[#b§:Number;
      
      private var §4#h§:Number;
      
      private var §5!y§:int;
      
      private var §@!x§:Number;
      
      private var § !_§:Number;
      
      private var §;"p§:Number;
      
      private var §;v§:Number;
      
      private var §9c§:Number;
      
      private var §%!Z§:Number;
      
      private var §1"A§:Number;
      
      private var §`#%§:Number;
      
      private var §="T§:Number;
      
      private var §""x§:Number;
      
      private var §!";§:Number;
      
      private var §=$6§:Number;
      
      private var §<$@§:Number;
      
      private var §#"2§:Number;
      
      private var §##c§:Number;
      
      private var §&"y§:Number;
      
      private var §7"`§:Number;
      
      private var §,U§:Number;
      
      private var §!#H§:Number;
      
      private var §3P§:Number;
      
      private var §>!V§:Number;
      
      private var §,T§:Number;
      
      private var §;$E§:Number;
      
      private var §]#D§:Number;
      
      private var §?$6§:Number;
      
      private var §%"L§:Number;
      
      private var §6>§:ColorArgb;
      
      private var §0#7§:ColorArgb;
      
      private var §5"^§:ColorArgb;
      
      private var §3#D§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§2#D§(param1,param2);
         var _loc3_:Number = this.§5!y§ / (this.§@!x§ + this.§;"p§);
         super(param2,_loc3_,this.§5!y§,§'"z§,§##Z§);
         §1#z§ = false;
      }
      
      public function get §&6§() : int
      {
         return this.§5!y§;
      }
      
      override protected function createParticle() : §'"#§
      {
         return new PDParticle();
      }
      
      private function get §%K§() : Boolean
      {
         return this.§&6§ >= 20;
      }
      
      override protected function initParticle(param1:§'"#§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§@!x§ + this.§ !_§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§-J§ = 0;
         _loc2_.§!t§ = _loc3_;
         _loc2_.x = §["G§ + this.§[#b§ * (Math.random() * 2 - 1);
         _loc2_.y = §0o§ + this.§4#h§ * (Math.random() * 2 - 1);
         _loc2_.startX = §["G§;
         _loc2_.startY = §0o§;
         var _loc4_:Number = this.§=$6§ + this.§<$@§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§#"2§ + this.§##c§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§,T§ + this.§;$E§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§,T§ / _loc3_;
         _loc2_.rotation = this.§=$6§ + this.§<$@§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§?$6§ + this.§%"L§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§,U§;
         _loc2_.tangentialAcceleration = this.§3P§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§;v§ + this.§9c§ * _loc6_;
         if(!isNaN(this.§`#%§))
         {
            _loc8_ = this.§`#%§;
            if(!isNaN(this.§="T§))
            {
               _loc8_ += this.§="T§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§%!Z§ + this.§1"A§ * _loc6_;
         if(!isNaN(this.§""x§))
         {
            _loc10_ = this.§""x§;
            if(!isNaN(this.§!";§))
            {
               _loc10_ += this.§!";§ * (Math.random() * 2 - 1);
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
         var _loc11_:ColorArgb = _loc2_.colorArgbDelta;
         _loc2_.red = this.§6>§.red;
         _loc2_.green = this.§6>§.green;
         _loc2_.blue = this.§6>§.blue;
         _loc2_.alpha = this.§6>§.alpha;
         if(this.§0#7§.red != 0)
         {
            _loc2_.red += this.§0#7§.red * (Math.random() * 2 - 1);
         }
         if(this.§0#7§.green != 0)
         {
            _loc2_.green += this.§0#7§.green * (Math.random() * 2 - 1);
         }
         if(this.§0#7§.blue != 0)
         {
            _loc2_.blue += this.§0#7§.blue * (Math.random() * 2 - 1);
         }
         if(this.§0#7§.alpha != 0)
         {
            _loc2_.alpha += this.§0#7§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§5"^§.red;
         var _loc13_:Number = this.§5"^§.green;
         var _loc14_:Number = this.§5"^§.blue;
         var _loc15_:Number = this.§5"^§.alpha;
         if(this.§3#D§.red != 0)
         {
            _loc12_ += this.§3#D§.red * (Math.random() * 2 - 1);
         }
         if(this.§3#D§.green != 0)
         {
            _loc13_ += this.§3#D§.green * (Math.random() * 2 - 1);
         }
         if(this.§3#D§.blue != 0)
         {
            _loc14_ += this.§3#D§.blue * (Math.random() * 2 - 1);
         }
         if(this.§3#D§.alpha != 0)
         {
            _loc15_ += this.§3#D§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §##_§ = true;
         }
      }
      
      override protected function advanceParticle(param1:§'"#§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§!t§ - _loc3_.§-J§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§-J§ += param2;
         if(this.§9!k§ == this.§1#G§)
         {
            if(!_loc3_.skipUpdate || !this.§%K§)
            {
               if(this.§%K§)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §["G§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §0o§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§]#D§)
               {
                  _loc3_.§-J§ = _loc3_.§!t§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.§%K§)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.§%K§)
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
               if(_loc3_.tangentialAcceleration)
               {
                  _loc12_ = _loc10_;
                  _loc10_ = -_loc11_ * _loc3_.tangentialAcceleration;
                  _loc11_ = _loc12_ * _loc3_.tangentialAcceleration;
                  _loc3_.velocityX += param2 * (this.§&"y§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§7"`§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&"y§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§7"`§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.§%K§)
         {
            _loc3_.scaleX += _loc3_.scaleDeltaX * param2;
            _loc3_.scaleY += _loc3_.scaleDeltaY * param2;
            if(_loc3_.hasColorDelta)
            {
               _loc3_.red += _loc3_.colorArgbDelta.red * param2;
               _loc3_.green += _loc3_.colorArgbDelta.green * param2;
               _loc3_.blue += _loc3_.colorArgbDelta.blue * param2;
               _loc3_.alpha += _loc3_.colorArgbDelta.alpha * param2;
            }
         }
         _loc3_.skipUpdate = !_loc3_.skipUpdate;
      }
      
      private function §2#D§(param1:XML, param2:Texture) : void
      {
         this.§[#b§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§4#h§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&"y§ = parseFloat(param1.gravity.attribute("x"));
         this.§7"`§ = parseFloat(param1.gravity.attribute("y"));
         this.§9!k§ = this.§&$ §(param1.emitterType);
         this.§5!y§ = this.§&$ §(param1.maxParticles);
         this.§@!x§ = Math.max(0.01,this.§@"L§(param1.particleLifeSpan));
         this.§ !_§ = this.§@"L§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§;"p§ = this.§@"L§(param1.particleInterval);
         }
         else
         {
            this.§;"p§ = 0;
         }
         this.§;v§ = this.§@"L§(param1.startParticleSize);
         this.§%!Z§ = this.§;v§ * param2.height / param2.width;
         this.§9c§ = this.§@"L§(param1.startParticleSizeVariance);
         this.§1"A§ = this.§9c§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§;v§ = this.§@"L§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§9c§ = this.§@"L§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§%!Z§ = this.§@"L§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§1"A§ = this.§@"L§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§`#%§ = this.§@"L§(param1.finishParticleSize);
            this.§""x§ = this.§`#%§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§="T§ = this.§@"L§(param1.FinishParticleSizeVariance);
            this.§!";§ = this.§="T§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§`#%§ = this.§@"L§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§="T§ = this.§@"L§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§""x§ = this.§@"L§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§!";§ = this.§@"L§(param1.FinishParticleSizeVarianceY);
         }
         this.§=$6§ = deg2rad(this.§@"L§(param1.angle));
         this.§<$@§ = deg2rad(this.§@"L§(param1.angleVariance));
         this.§#"2§ = this.§@"L§(param1.speed);
         this.§##c§ = this.§@"L§(param1.speedVariance);
         this.§,U§ = this.§@"L§(param1.radialAcceleration);
         this.§3P§ = this.§@"L§(param1.tangentialAcceleration);
         this.§,T§ = this.§@"L§(param1.maxRadius);
         this.§;$E§ = this.§@"L§(param1.maxRadiusVariance);
         this.§]#D§ = this.§@"L§(param1.minRadius);
         this.§?$6§ = deg2rad(this.§@"L§(param1.rotatePerSecond));
         this.§%"L§ = deg2rad(this.§@"L§(param1.rotatePerSecondVariance));
         this.§6>§ = this.§,!u§(param1.startColor);
         this.§0#7§ = this.§,!u§(param1.startColorVariance);
         this.§5"^§ = this.§,!u§(param1.finishColor);
         this.§3#D§ = this.§,!u§(param1.finishColorVariance);
         §'"z§ = this.§5`§(param1.blendFuncSource);
         §##Z§ = this.§5`§(param1.blendFuncDestination);
         §4"^§ = this.§]"J§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §0!Y§ = this.§@"L§(param1.emissionVariance);
         }
      }
      
      protected function §&$ §(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@"L§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%#p§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §,!u§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §5`§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&$ §(param1);
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
      
      protected function §]"J§(param1:XMLList) : int
      {
         var _loc2_:String = this.§%#p§(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §^n§.§[!X§;
      }
   }
}

import §2!<§.§'"#§;

class PDParticle extends §'"#§
{
    
   
   public var colorArgbDelta:ColorArgb;
   
   public var hasColorDelta:Boolean;
   
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
