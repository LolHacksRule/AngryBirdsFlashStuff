package §+#&§
{
   import §1&§.Texture;
   import §4"D§.deg2rad;
   import §9$§.§3f§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §&$+§:int = 0;
      
      private const §1!i§:int = 1;
      
      private var §8#5§:Number;
      
      private var §%!o§:int;
      
      private var §%[§:Number;
      
      private var §%"G§:Number;
      
      private var §@#;§:int;
      
      private var §5!k§:Number;
      
      private var §5#6§:Number;
      
      private var §!$3§:Number;
      
      private var §0"`§:Number;
      
      private var §6a§:Number;
      
      private var §`C§:Number;
      
      private var §""A§:Number;
      
      private var §1k§:Number;
      
      private var §6"'§:Number;
      
      private var §"$+§:Number;
      
      private var §!"b§:Number;
      
      private var §<"V§:Number;
      
      private var §5^§:Number;
      
      private var §%Y§:Number;
      
      private var §@"0§:Number;
      
      private var §2#F§:Number;
      
      private var §]!<§:Number;
      
      private var §2#o§:Number;
      
      private var §7$;§:Number;
      
      private var §`o§:Number;
      
      private var §@"p§:Number;
      
      private var §4#D§:Number;
      
      private var §6o§:Number;
      
      private var §6N§:Number;
      
      private var §0#6§:Number;
      
      private var §;#c§:Number;
      
      private var §!!z§:ColorArgb;
      
      private var §^#]§:ColorArgb;
      
      private var §#"7§:ColorArgb;
      
      private var §^"6§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§+!G§(param1,param2);
         var _loc3_:Number = this.§@#;§ / (this.§5!k§ + this.§!$3§);
         super(param2,_loc3_,this.§@#;§,§9<§,§!!;§);
         §^!-§ = false;
      }
      
      public function get §'"H§() : int
      {
         return this.§@#;§;
      }
      
      override protected function createParticle() : §;5§
      {
         return new PDParticle();
      }
      
      private function get §2"A§() : Boolean
      {
         return this.§'"H§ >= 20;
      }
      
      override protected function initParticle(param1:§;5§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§5!k§ + this.§5#6§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§<$!§ = 0;
         _loc2_.§;B§ = _loc3_;
         _loc2_.x = §]K§ + this.§%[§ * (Math.random() * 2 - 1);
         _loc2_.y = §<$4§ + this.§%"G§ * (Math.random() * 2 - 1);
         _loc2_.startX = §]K§;
         _loc2_.startY = §<$4§;
         var _loc4_:Number = this.§<"V§ + this.§5^§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§%Y§ + this.§@"0§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§4#D§ + this.§6o§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§4#D§ / _loc3_;
         _loc2_.rotation = this.§<"V§ + this.§5^§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§0#6§ + this.§;#c§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2#o§;
         _loc2_.tangentialAcceleration = this.§`o§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§0"`§ + this.§6a§ * _loc6_;
         if(!isNaN(this.§1k§))
         {
            _loc8_ = this.§1k§;
            if(!isNaN(this.§6"'§))
            {
               _loc8_ += this.§6"'§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§`C§ + this.§""A§ * _loc6_;
         if(!isNaN(this.§"$+§))
         {
            _loc10_ = this.§"$+§;
            if(!isNaN(this.§!"b§))
            {
               _loc10_ += this.§!"b§ * (Math.random() * 2 - 1);
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
         _loc2_.red = this.§!!z§.red;
         _loc2_.green = this.§!!z§.green;
         _loc2_.blue = this.§!!z§.blue;
         _loc2_.alpha = this.§!!z§.alpha;
         if(this.§^#]§.red != 0)
         {
            _loc2_.red += this.§^#]§.red * (Math.random() * 2 - 1);
         }
         if(this.§^#]§.green != 0)
         {
            _loc2_.green += this.§^#]§.green * (Math.random() * 2 - 1);
         }
         if(this.§^#]§.blue != 0)
         {
            _loc2_.blue += this.§^#]§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^#]§.alpha != 0)
         {
            _loc2_.alpha += this.§^#]§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§#"7§.red;
         var _loc13_:Number = this.§#"7§.green;
         var _loc14_:Number = this.§#"7§.blue;
         var _loc15_:Number = this.§#"7§.alpha;
         if(this.§^"6§.red != 0)
         {
            _loc12_ += this.§^"6§.red * (Math.random() * 2 - 1);
         }
         if(this.§^"6§.green != 0)
         {
            _loc13_ += this.§^"6§.green * (Math.random() * 2 - 1);
         }
         if(this.§^"6§.blue != 0)
         {
            _loc14_ += this.§^"6§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^"6§.alpha != 0)
         {
            _loc15_ += this.§^"6§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §-!>§ = true;
         }
      }
      
      override protected function advanceParticle(param1:§;5§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§;B§ - _loc3_.§<$!§)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§<$!§ += param2;
         if(this.§%!o§ == this.§1!i§)
         {
            if(!_loc3_.skipUpdate || !this.§2"A§)
            {
               if(this.§2"A§)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §]K§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §<$4§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§6N§)
               {
                  _loc3_.§<$!§ = _loc3_.§;B§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.§2"A§)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.§2"A§)
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
                  _loc3_.velocityX += param2 * (this.§2#F§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§]!<§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§2#F§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§]!<§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.§2"A§)
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
      
      private function §+!G§(param1:XML, param2:Texture) : void
      {
         this.§%[§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§%"G§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§2#F§ = parseFloat(param1.gravity.attribute("x"));
         this.§]!<§ = parseFloat(param1.gravity.attribute("y"));
         this.§%!o§ = this.§<#U§(param1.emitterType);
         this.§@#;§ = this.§<#U§(param1.maxParticles);
         this.§5!k§ = Math.max(0.01,this.§'9§(param1.particleLifeSpan));
         this.§5#6§ = this.§'9§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§!$3§ = this.§'9§(param1.particleInterval);
         }
         else
         {
            this.§!$3§ = 0;
         }
         this.§0"`§ = this.§'9§(param1.startParticleSize);
         this.§`C§ = this.§0"`§ * param2.height / param2.width;
         this.§6a§ = this.§'9§(param1.startParticleSizeVariance);
         this.§""A§ = this.§6a§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§0"`§ = this.§'9§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§6a§ = this.§'9§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§`C§ = this.§'9§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§""A§ = this.§'9§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§1k§ = this.§'9§(param1.finishParticleSize);
            this.§"$+§ = this.§1k§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§6"'§ = this.§'9§(param1.FinishParticleSizeVariance);
            this.§!"b§ = this.§6"'§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§1k§ = this.§'9§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§6"'§ = this.§'9§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§"$+§ = this.§'9§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§!"b§ = this.§'9§(param1.FinishParticleSizeVarianceY);
         }
         this.§<"V§ = deg2rad(this.§'9§(param1.angle));
         this.§5^§ = deg2rad(this.§'9§(param1.angleVariance));
         this.§%Y§ = this.§'9§(param1.speed);
         this.§@"0§ = this.§'9§(param1.speedVariance);
         this.§2#o§ = this.§'9§(param1.radialAcceleration);
         this.§`o§ = this.§'9§(param1.tangentialAcceleration);
         this.§4#D§ = this.§'9§(param1.maxRadius);
         this.§6o§ = this.§'9§(param1.maxRadiusVariance);
         this.§6N§ = this.§'9§(param1.minRadius);
         this.§0#6§ = deg2rad(this.§'9§(param1.rotatePerSecond));
         this.§;#c§ = deg2rad(this.§'9§(param1.rotatePerSecondVariance));
         this.§!!z§ = this.§'$8§(param1.startColor);
         this.§^#]§ = this.§'$8§(param1.startColorVariance);
         this.§#"7§ = this.§'$8§(param1.finishColor);
         this.§^"6§ = this.§'$8§(param1.finishColorVariance);
         §9<§ = this.§""%§(param1.blendFuncSource);
         §!!;§ = this.§""%§(param1.blendFuncDestination);
         §<"b§ = this.§7H§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §7#w§ = this.§'9§(param1.emissionVariance);
         }
      }
      
      protected function §<#U§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §'9§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §6#%§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §'$8§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §""%§(param1:XMLList) : String
      {
         var _loc2_:int = this.§<#U§(param1);
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
      
      protected function §7H§(param1:XMLList) : int
      {
         var _loc2_:String = this.§6#%§(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §3f§.§>!U§;
      }
   }
}

import §+#&§.§;5§;

class PDParticle extends §;5§
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
