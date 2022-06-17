package §9X§
{
   import §!6§.§9$'§;
   import §""'§.Texture;
   import §#"l§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §5"m§:int = 0;
      
      private const §?"=§:int = 1;
      
      private var §["t§:Number;
      
      private var §`J§:int;
      
      private var §1"$§:Number;
      
      private var §@!Z§:Number;
      
      private var §2'§:int;
      
      private var §6#w§:Number;
      
      private var § #U§:Number;
      
      private var §%!M§:Number;
      
      private var §%#1§:Number;
      
      private var §'"s§:Number;
      
      private var §<$-§:Number;
      
      private var §9!3§:Number;
      
      private var §#$?§:Number;
      
      private var §+"C§:Number;
      
      private var §["H§:Number;
      
      private var §55§:Number;
      
      private var §["Z§:Number;
      
      private var §=#9§:Number;
      
      private var §1!Z§:Number;
      
      private var §3!F§:Number;
      
      private var §,!v§:Number;
      
      private var §0#_§:Number;
      
      private var §]!Z§:Number;
      
      private var §;"F§:Number;
      
      private var §="]§:Number;
      
      private var §`#D§:Number;
      
      private var §4"s§:Number;
      
      private var §>"z§:Number;
      
      private var §0r§:Number;
      
      private var §8##§:Number;
      
      private var §>!y§:Number;
      
      private var §7$B§:ColorArgb;
      
      private var §&!,§:ColorArgb;
      
      private var §`#5§:ColorArgb;
      
      private var §6@§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§@"n§(param1,param2);
         var _loc3_:Number = this.§2'§ / (this.§6#w§ + this.§%!M§);
         super(param2,_loc3_,this.§2'§,§7"d§,§+&§);
         §-$&§ = false;
      }
      
      public function get §>a§() : int
      {
         return this.§2'§;
      }
      
      override protected function createParticle() : §3#5§
      {
         return new PDParticle();
      }
      
      private function get include() : Boolean
      {
         return this.§>a§ >= 20;
      }
      
      override protected function initParticle(param1:§3#5§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§6#w§ + this.§ #U§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§,$B§ = 0;
         _loc2_.§^!1§ = _loc3_;
         _loc2_.x = §4#X§ + this.§1"$§ * (Math.random() * 2 - 1);
         _loc2_.y = §"#J§ + this.§@!Z§ * (Math.random() * 2 - 1);
         _loc2_.startX = §4#X§;
         _loc2_.startY = §"#J§;
         var _loc4_:Number = this.§["Z§ + this.§=#9§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§1!Z§ + this.§3!F§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§4"s§ + this.§>"z§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§4"s§ / _loc3_;
         _loc2_.rotation = this.§["Z§ + this.§=#9§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§8##§ + this.§>!y§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§]!Z§;
         _loc2_.tangentialAcceleration = this.§="]§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§%#1§ + this.§'"s§ * _loc6_;
         if(!isNaN(this.§#$?§))
         {
            _loc8_ = this.§#$?§;
            if(!isNaN(this.§+"C§))
            {
               _loc8_ += this.§+"C§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§<$-§ + this.§9!3§ * _loc6_;
         if(!isNaN(this.§["H§))
         {
            _loc10_ = this.§["H§;
            if(!isNaN(this.§55§))
            {
               _loc10_ += this.§55§ * (Math.random() * 2 - 1);
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
         _loc2_.red = this.§7$B§.red;
         _loc2_.green = this.§7$B§.green;
         _loc2_.blue = this.§7$B§.blue;
         _loc2_.alpha = this.§7$B§.alpha;
         if(this.§&!,§.red != 0)
         {
            _loc2_.red += this.§&!,§.red * (Math.random() * 2 - 1);
         }
         if(this.§&!,§.green != 0)
         {
            _loc2_.green += this.§&!,§.green * (Math.random() * 2 - 1);
         }
         if(this.§&!,§.blue != 0)
         {
            _loc2_.blue += this.§&!,§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&!,§.alpha != 0)
         {
            _loc2_.alpha += this.§&!,§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§`#5§.red;
         var _loc13_:Number = this.§`#5§.green;
         var _loc14_:Number = this.§`#5§.blue;
         var _loc15_:Number = this.§`#5§.alpha;
         if(this.§6@§.red != 0)
         {
            _loc12_ += this.§6@§.red * (Math.random() * 2 - 1);
         }
         if(this.§6@§.green != 0)
         {
            _loc13_ += this.§6@§.green * (Math.random() * 2 - 1);
         }
         if(this.§6@§.blue != 0)
         {
            _loc14_ += this.§6@§.blue * (Math.random() * 2 - 1);
         }
         if(this.§6@§.alpha != 0)
         {
            _loc15_ += this.§6@§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §,#H§ = true;
         }
      }
      
      override protected function advanceParticle(param1:§3#5§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§^!1§ - _loc3_.§,$B§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§,$B§ += param2;
         if(this.§`J§ == this.§?"=§)
         {
            if(!_loc3_.skipUpdate || !this.include)
            {
               if(this.include)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §4#X§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §"#J§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§0r§)
               {
                  _loc3_.§,$B§ = _loc3_.§^!1§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.include)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.include)
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
                  _loc3_.velocityX += param2 * (this.§,!v§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§0#_§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§,!v§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§0#_§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.include)
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
      
      private function §@"n§(param1:XML, param2:Texture) : void
      {
         this.§1"$§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§@!Z§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§,!v§ = parseFloat(param1.gravity.attribute("x"));
         this.§0#_§ = parseFloat(param1.gravity.attribute("y"));
         this.§`J§ = this.§<"V§(param1.emitterType);
         this.§2'§ = this.§<"V§(param1.maxParticles);
         this.§6#w§ = Math.max(0.01,this.§8"=§(param1.particleLifeSpan));
         this.§ #U§ = this.§8"=§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§%!M§ = this.§8"=§(param1.particleInterval);
         }
         else
         {
            this.§%!M§ = 0;
         }
         this.§%#1§ = this.§8"=§(param1.startParticleSize);
         this.§<$-§ = this.§%#1§ * param2.height / param2.width;
         this.§'"s§ = this.§8"=§(param1.startParticleSizeVariance);
         this.§9!3§ = this.§'"s§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§%#1§ = this.§8"=§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§'"s§ = this.§8"=§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§<$-§ = this.§8"=§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§9!3§ = this.§8"=§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#$?§ = this.§8"=§(param1.finishParticleSize);
            this.§["H§ = this.§#$?§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§+"C§ = this.§8"=§(param1.FinishParticleSizeVariance);
            this.§55§ = this.§+"C§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#$?§ = this.§8"=§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§+"C§ = this.§8"=§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§["H§ = this.§8"=§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§55§ = this.§8"=§(param1.FinishParticleSizeVarianceY);
         }
         this.§["Z§ = deg2rad(this.§8"=§(param1.angle));
         this.§=#9§ = deg2rad(this.§8"=§(param1.angleVariance));
         this.§1!Z§ = this.§8"=§(param1.speed);
         this.§3!F§ = this.§8"=§(param1.speedVariance);
         this.§]!Z§ = this.§8"=§(param1.radialAcceleration);
         this.§="]§ = this.§8"=§(param1.tangentialAcceleration);
         this.§4"s§ = this.§8"=§(param1.maxRadius);
         this.§>"z§ = this.§8"=§(param1.maxRadiusVariance);
         this.§0r§ = this.§8"=§(param1.minRadius);
         this.§8##§ = deg2rad(this.§8"=§(param1.rotatePerSecond));
         this.§>!y§ = deg2rad(this.§8"=§(param1.rotatePerSecondVariance));
         this.§7$B§ = this.§]>§(param1.startColor);
         this.§&!,§ = this.§]>§(param1.startColorVariance);
         this.§`#5§ = this.§]>§(param1.finishColor);
         this.§6@§ = this.§]>§(param1.finishColorVariance);
         §7"d§ = this.§?#@§(param1.blendFuncSource);
         §+&§ = this.§?#@§(param1.blendFuncDestination);
         §28§ = this.§[$!§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            § #<§ = this.§8"=§(param1.emissionVariance);
         }
      }
      
      protected function §<"V§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §8"=§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §>#5§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §]>§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §?#@§(param1:XMLList) : String
      {
         var _loc2_:int = this.§<"V§(param1);
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
      
      protected function §[$!§(param1:XMLList) : int
      {
         var _loc2_:String = this.§>#5§(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §9$'§.§'#w§;
      }
   }
}

import §9X§.§3§;

class PDParticle extends §3#5§
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
