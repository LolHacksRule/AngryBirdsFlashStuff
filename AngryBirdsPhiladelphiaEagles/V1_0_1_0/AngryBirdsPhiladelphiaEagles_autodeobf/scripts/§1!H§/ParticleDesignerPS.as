package §1!H§
{
   import §#M§.deg2rad;
   import §0l§.Texture;
   import §0l§.§[x§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §`"§
   {
       
      
      private const § k§:int = 0;
      
      private const §'d§:int = 1;
      
      private var §;!M§:Number;
      
      private var §8§:int;
      
      private var §&W§:Number;
      
      private var §!!2§:Number;
      
      private var §#!8§:int;
      
      private var § V§:Number;
      
      private var §<!E§:Number;
      
      private var §9X§:Number;
      
      private var §!!,§:Number;
      
      private var §0!>§:Number;
      
      private var §=!P§:Number;
      
      private var §6m§:Number;
      
      private var §>!1§:Number;
      
      private var §#Q§:Number;
      
      private var §>]§:Number;
      
      private var §;d§:Number;
      
      private var §+?§:Number;
      
      private var §5j§:Number;
      
      private var §<H§:Number;
      
      private var §"x§:Number;
      
      private var §^<§:Number;
      
      private var §^^§:Number;
      
      private var §2Q§:Number;
      
      private var §@!"§:Number;
      
      private var § v§:Number;
      
      private var §7!!§:Number;
      
      private var §0s§:Number;
      
      private var §8!?§:Number;
      
      private var §!!P§:Number;
      
      private var §0!0§:Number;
      
      private var §5?§:Number;
      
      private var §+k§:ColorArgb;
      
      private var §#F§:ColorArgb;
      
      private var §9O§:ColorArgb;
      
      private var §!!7§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§'!P§(param1,param2);
         var _loc3_:Number = this.§#!8§ / (this.§ V§ + this.§9X§);
         super(param2,_loc3_,this.§#!8§,§6R§,§"!!§);
         §&!@§ = false;
      }
      
      public function get §-&§() : int
      {
         return this.§#!8§;
      }
      
      override protected function createParticle() : §9a§
      {
         return new PDParticle();
      }
      
      private function get §use §() : Boolean
      {
         return this.§-&§ >= 20;
      }
      
      override protected function initParticle(param1:§9a§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§ V§ + this.§<!E§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§&Q§ = 0;
         _loc2_.§0!L§ = _loc3_;
         _loc2_.x = §"`§ + this.§&W§ * (Math.random() * 2 - 1);
         _loc2_.y = §&+§ + this.§!!2§ * (Math.random() * 2 - 1);
         _loc2_.startX = §"`§;
         _loc2_.startY = §&+§;
         var _loc4_:Number = this.§+?§ + this.§5j§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§<H§ + this.§"x§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§0s§ + this.§8!?§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§0s§ / _loc3_;
         _loc2_.rotation = this.§+?§ + this.§5j§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§0!0§ + this.§5?§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2Q§;
         _loc2_.tangentialAcceleration = this.§ v§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§!!,§ + this.§0!>§ * _loc6_;
         if(!isNaN(this.§>!1§))
         {
            _loc8_ = this.§>!1§;
            if(!isNaN(this.§#Q§))
            {
               _loc8_ += this.§#Q§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§=!P§ + this.§6m§ * _loc6_;
         if(!isNaN(this.§>]§))
         {
            _loc10_ = this.§>]§;
            if(!isNaN(this.§;d§))
            {
               _loc10_ += this.§;d§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§+k§.red;
         _loc11_.green = this.§+k§.green;
         _loc11_.blue = this.§+k§.blue;
         _loc11_.alpha = this.§+k§.alpha;
         if(this.§#F§.red != 0)
         {
            _loc11_.red += this.§#F§.red * (Math.random() * 2 - 1);
         }
         if(this.§#F§.green != 0)
         {
            _loc11_.green += this.§#F§.green * (Math.random() * 2 - 1);
         }
         if(this.§#F§.blue != 0)
         {
            _loc11_.blue += this.§#F§.blue * (Math.random() * 2 - 1);
         }
         if(this.§#F§.alpha != 0)
         {
            _loc11_.alpha += this.§#F§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§9O§.red;
         var _loc14_:Number = this.§9O§.green;
         var _loc15_:Number = this.§9O§.blue;
         var _loc16_:Number = this.§9O§.alpha;
         if(this.§!!7§.red != 0)
         {
            _loc13_ += this.§!!7§.red * (Math.random() * 2 - 1);
         }
         if(this.§!!7§.green != 0)
         {
            _loc14_ += this.§!!7§.green * (Math.random() * 2 - 1);
         }
         if(this.§!!7§.blue != 0)
         {
            _loc15_ += this.§!!7§.blue * (Math.random() * 2 - 1);
         }
         if(this.§!!7§.alpha != 0)
         {
            _loc16_ += this.§!!7§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§9a§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§0!L§ - _loc3_.§&Q§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§&Q§ += param2;
         if(this.§8§ == this.§'d§)
         {
            if(!_loc3_.skipUpdate || !this.§use §)
            {
               if(this.§use §)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §"`§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §&+§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§!!P§)
               {
                  _loc3_.§&Q§ = _loc3_.§0!L§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§use §)
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
               if(this.§use §)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§^<§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§^^§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§^<§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§^^§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§use §)
         {
            if(this.§use §)
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
      
      private function §'!P§(param1:XML, param2:Texture) : void
      {
         this.§&W§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§!!2§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§^<§ = parseFloat(param1.gravity.attribute("x"));
         this.§^^§ = parseFloat(param1.gravity.attribute("y"));
         this.§8§ = this.§!#§(param1.emitterType);
         this.§#!8§ = this.§!#§(param1.maxParticles);
         this.§ V§ = Math.max(0.01,this.§^M§(param1.particleLifeSpan));
         this.§<!E§ = this.§^M§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§9X§ = this.§^M§(param1.particleInterval);
         }
         else
         {
            this.§9X§ = 0;
         }
         this.§!!,§ = this.§^M§(param1.startParticleSize);
         this.§=!P§ = this.§!!,§ * param2.height / param2.width;
         this.§0!>§ = this.§^M§(param1.startParticleSizeVariance);
         this.§6m§ = this.§0!>§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§!!,§ = this.§^M§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§0!>§ = this.§^M§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§=!P§ = this.§^M§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§6m§ = this.§^M§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§>!1§ = this.§^M§(param1.finishParticleSize);
            this.§>]§ = this.§>!1§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§#Q§ = this.§^M§(param1.FinishParticleSizeVariance);
            this.§;d§ = this.§#Q§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§>!1§ = this.§^M§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§#Q§ = this.§^M§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§>]§ = this.§^M§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§;d§ = this.§^M§(param1.FinishParticleSizeVarianceY);
         }
         this.§+?§ = deg2rad(this.§^M§(param1.angle));
         this.§5j§ = deg2rad(this.§^M§(param1.angleVariance));
         this.§<H§ = this.§^M§(param1.speed);
         this.§"x§ = this.§^M§(param1.speedVariance);
         this.§2Q§ = this.§^M§(param1.radialAcceleration);
         this.§ v§ = this.§^M§(param1.tangentialAcceleration);
         this.§0s§ = this.§^M§(param1.maxRadius);
         this.§8!?§ = this.§^M§(param1.maxRadiusVariance);
         this.§!!P§ = this.§^M§(param1.minRadius);
         this.§0!0§ = deg2rad(this.§^M§(param1.rotatePerSecond));
         this.§5?§ = deg2rad(this.§^M§(param1.rotatePerSecondVariance));
         this.§+k§ = this.§8!5§(param1.startColor);
         this.§#F§ = this.§8!5§(param1.startColorVariance);
         this.§9O§ = this.§8!5§(param1.finishColor);
         this.§!!7§ = this.§8!5§(param1.finishColorVariance);
         §6R§ = this.§7"§(param1.blendFuncSource);
         §"!!§ = this.§7"§(param1.blendFuncDestination);
         §=m§ = this.§#!5§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §[b§ = this.§^M§(param1.emissionVariance);
         }
      }
      
      protected function §!#§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §^M§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §@!'§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §8!5§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §7"§(param1:XMLList) : String
      {
         var _loc2_:int = this.§!#§(param1);
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
      
      protected function §#!5§(param1:XMLList) : String
      {
         var _loc2_:String = this.§@!'§(param1);
         if(_loc2_ == §[x§.§1h§ || _loc2_ == §[x§.§8!%§ || _loc2_ == §[x§.NONE)
         {
            return _loc2_;
         }
         return §[x§.§1h§;
      }
   }
}

import §1!H§.§9a§;

class PDParticle extends §9a§
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
