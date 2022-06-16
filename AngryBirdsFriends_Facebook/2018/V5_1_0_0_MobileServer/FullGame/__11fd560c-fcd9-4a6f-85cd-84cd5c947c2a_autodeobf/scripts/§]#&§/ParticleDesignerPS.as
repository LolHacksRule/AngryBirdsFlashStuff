package §]#&§
{
   import §5!D§.deg2rad;
   import §9$;§.Texture;
   import §^"S§.§9$=§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §0q§:int = 0;
      
      private const §6",§:int = 1;
      
      private var §<"B§:Number;
      
      private var §7!s§:int;
      
      private var §##z§:Number;
      
      private var §,!`§:Number;
      
      private var §?,§:int;
      
      private var §1#l§:Number;
      
      private var §%"x§:Number;
      
      private var §-#@§:Number;
      
      private var §+$$§:Number;
      
      private var §,#q§:Number;
      
      private var §8y§:Number;
      
      private var §9!@§:Number;
      
      private var §=#X§:Number;
      
      private var §7$4§:Number;
      
      private var §6#S§:Number;
      
      private var §"!]§:Number;
      
      private var §=#x§:Number;
      
      private var § !7§:Number;
      
      private var §6$<§:Number;
      
      private var §>#V§:Number;
      
      private var §+=§:Number;
      
      private var §5!x§:Number;
      
      private var §>F§:Number;
      
      private var § !2§:Number;
      
      private var §["6§:Number;
      
      private var §?#n§:Number;
      
      private var §?"M§:Number;
      
      private var §[$'§:Number;
      
      private var §3#g§:Number;
      
      private var §!! §:Number;
      
      private var §+$ §:Number;
      
      private var §-!?§:ColorArgb;
      
      private var §@!K§:ColorArgb;
      
      private var §78§:ColorArgb;
      
      private var §?"T§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§5!2§(param1,param2);
         var _loc3_:Number = this.§?,§ / (this.§1#l§ + this.§-#@§);
         super(param2,_loc3_,this.§?,§,§2$4§,§@!m§);
         §!D§ = false;
      }
      
      public function get § !Y§() : int
      {
         return this.§?,§;
      }
      
      override protected function createParticle() : §%$0§
      {
         return new PDParticle();
      }
      
      private function get § "k§() : Boolean
      {
         return this.§ !Y§ >= 20;
      }
      
      override protected function initParticle(param1:§%$0§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§1#l§ + this.§%"x§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§-#M§ = 0;
         _loc2_.§5"Q§ = _loc3_;
         _loc2_.x = §0"P§ + this.§##z§ * (Math.random() * 2 - 1);
         _loc2_.y = §]$ § + this.§,!`§ * (Math.random() * 2 - 1);
         _loc2_.startX = §0"P§;
         _loc2_.startY = §]$ §;
         var _loc4_:Number = this.§=#x§ + this.§ !7§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§6$<§ + this.§>#V§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§?"M§ + this.§[$'§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§?"M§ / _loc3_;
         _loc2_.rotation = this.§=#x§ + this.§ !7§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§!! § + this.§+$ § * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§>F§;
         _loc2_.tangentialAcceleration = this.§["6§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§+$$§ + this.§,#q§ * _loc6_;
         if(!isNaN(this.§=#X§))
         {
            _loc8_ = this.§=#X§;
            if(!isNaN(this.§7$4§))
            {
               _loc8_ += this.§7$4§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§8y§ + this.§9!@§ * _loc6_;
         if(!isNaN(this.§6#S§))
         {
            _loc10_ = this.§6#S§;
            if(!isNaN(this.§"!]§))
            {
               _loc10_ += this.§"!]§ * (Math.random() * 2 - 1);
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
         _loc2_.red = this.§-!?§.red;
         _loc2_.green = this.§-!?§.green;
         _loc2_.blue = this.§-!?§.blue;
         _loc2_.alpha = this.§-!?§.alpha;
         if(this.§@!K§.red != 0)
         {
            _loc2_.red += this.§@!K§.red * (Math.random() * 2 - 1);
         }
         if(this.§@!K§.green != 0)
         {
            _loc2_.green += this.§@!K§.green * (Math.random() * 2 - 1);
         }
         if(this.§@!K§.blue != 0)
         {
            _loc2_.blue += this.§@!K§.blue * (Math.random() * 2 - 1);
         }
         if(this.§@!K§.alpha != 0)
         {
            _loc2_.alpha += this.§@!K§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§78§.red;
         var _loc13_:Number = this.§78§.green;
         var _loc14_:Number = this.§78§.blue;
         var _loc15_:Number = this.§78§.alpha;
         if(this.§?"T§.red != 0)
         {
            _loc12_ += this.§?"T§.red * (Math.random() * 2 - 1);
         }
         if(this.§?"T§.green != 0)
         {
            _loc13_ += this.§?"T§.green * (Math.random() * 2 - 1);
         }
         if(this.§?"T§.blue != 0)
         {
            _loc14_ += this.§?"T§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?"T§.alpha != 0)
         {
            _loc15_ += this.§?"T§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §+x§ = true;
         }
      }
      
      override protected function advanceParticle(param1:§%$0§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§5"Q§ - _loc3_.§-#M§)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§-#M§ += param2;
         if(this.§7!s§ == this.§6",§)
         {
            if(!_loc3_.skipUpdate || !this.§ "k§)
            {
               if(this.§ "k§)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §0"P§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §]$ § - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§3#g§)
               {
                  _loc3_.§-#M§ = _loc3_.§5"Q§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.§ "k§)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.§ "k§)
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
                  _loc3_.velocityX += param2 * (this.§+=§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§5!x§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§+=§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§5!x§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.§ "k§)
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
      
      private function §5!2§(param1:XML, param2:Texture) : void
      {
         this.§##z§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§,!`§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§+=§ = parseFloat(param1.gravity.attribute("x"));
         this.§5!x§ = parseFloat(param1.gravity.attribute("y"));
         this.§7!s§ = this.§,!?§(param1.emitterType);
         this.§?,§ = this.§,!?§(param1.maxParticles);
         this.§1#l§ = Math.max(0.01,this.§;"<§(param1.particleLifeSpan));
         this.§%"x§ = this.§;"<§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§-#@§ = this.§;"<§(param1.particleInterval);
         }
         else
         {
            this.§-#@§ = 0;
         }
         this.§+$$§ = this.§;"<§(param1.startParticleSize);
         this.§8y§ = this.§+$$§ * param2.height / param2.width;
         this.§,#q§ = this.§;"<§(param1.startParticleSizeVariance);
         this.§9!@§ = this.§,#q§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§+$$§ = this.§;"<§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§,#q§ = this.§;"<§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§8y§ = this.§;"<§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§9!@§ = this.§;"<§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§=#X§ = this.§;"<§(param1.finishParticleSize);
            this.§6#S§ = this.§=#X§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§7$4§ = this.§;"<§(param1.FinishParticleSizeVariance);
            this.§"!]§ = this.§7$4§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§=#X§ = this.§;"<§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§7$4§ = this.§;"<§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§6#S§ = this.§;"<§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§"!]§ = this.§;"<§(param1.FinishParticleSizeVarianceY);
         }
         this.§=#x§ = deg2rad(this.§;"<§(param1.angle));
         this.§ !7§ = deg2rad(this.§;"<§(param1.angleVariance));
         this.§6$<§ = this.§;"<§(param1.speed);
         this.§>#V§ = this.§;"<§(param1.speedVariance);
         this.§>F§ = this.§;"<§(param1.radialAcceleration);
         this.§["6§ = this.§;"<§(param1.tangentialAcceleration);
         this.§?"M§ = this.§;"<§(param1.maxRadius);
         this.§[$'§ = this.§;"<§(param1.maxRadiusVariance);
         this.§3#g§ = this.§;"<§(param1.minRadius);
         this.§!! § = deg2rad(this.§;"<§(param1.rotatePerSecond));
         this.§+$ § = deg2rad(this.§;"<§(param1.rotatePerSecondVariance));
         this.§-!?§ = this.§0M§(param1.startColor);
         this.§@!K§ = this.§0M§(param1.startColorVariance);
         this.§78§ = this.§0M§(param1.finishColor);
         this.§?"T§ = this.§0M§(param1.finishColorVariance);
         §2$4§ = this.§9#@§(param1.blendFuncSource);
         §@!m§ = this.§9#@§(param1.blendFuncDestination);
         §]$3§ = this.§2"^§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §1$;§ = this.§;"<§(param1.emissionVariance);
         }
      }
      
      protected function §,!?§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §;"<§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §0"I§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §0M§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §9#@§(param1:XMLList) : String
      {
         var _loc2_:int = this.§,!?§(param1);
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
      
      protected function §2"^§(param1:XMLList) : int
      {
         var _loc2_:String = this.§0"I§(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §9$=§.§'#y§;
      }
   }
}

import §]#&§.§%$0§;

class PDParticle extends §%$0§
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
