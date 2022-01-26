package §4!+§
{
   import §%?§.§@s§;
   import §%?§.Texture;
   import §5!3§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §4j§
   {
       
      
      private const §19§:int = 0;
      
      private const §5j§:int = 1;
      
      private var §@q§:Number;
      
      private var §=u§:int;
      
      private var §%t§:Number;
      
      private var §#8§:Number;
      
      private var §-m§:int;
      
      private var §3=§:Number;
      
      private var §1!&§:Number;
      
      private var §;g§:Number;
      
      private var §0Z§:Number;
      
      private var §!+§:Number;
      
      private var §return§:Number;
      
      private var §%4§:Number;
      
      private var §7b§:Number;
      
      private var §8'§:Number;
      
      private var §#C§:Number;
      
      private var §1!2§:Number;
      
      private var §[J§:Number;
      
      private var §>z§:Number;
      
      private var §&!A§:Number;
      
      private var §!v§:Number;
      
      private var §5k§:Number;
      
      private var §`$§:Number;
      
      private var §9$§:Number;
      
      private var §[!E§:Number;
      
      private var §3!"§:Number;
      
      private var §&7§:Number;
      
      private var §@!-§:Number;
      
      private var §#X§:Number;
      
      private var §+!8§:Number;
      
      private var §3"§:Number;
      
      private var §1,§:Number;
      
      private var §4Z§:ColorArgb;
      
      private var §@!5§:ColorArgb;
      
      private var §0%§:ColorArgb;
      
      private var §6!?§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§41§(param1,param2);
         var _loc3_:Number = this.§-m§ / (this.§3=§ + this.§;g§);
         super(param2,_loc3_,this.§-m§,§&!3§,§@i§);
         §]H§ = false;
      }
      
      public function get §>,§() : int
      {
         return this.§-m§;
      }
      
      override protected function createParticle() : §'!!§
      {
         return new PDParticle();
      }
      
      private function get §]3§() : Boolean
      {
         return this.§>,§ >= 20;
      }
      
      override protected function initParticle(param1:§'!!§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§3=§ + this.§1!&§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§?l§ = _loc3_;
         _loc2_.x = §7F§ + this.§%t§ * (Math.random() * 2 - 1);
         _loc2_.y = §!i§ + this.§#8§ * (Math.random() * 2 - 1);
         _loc2_.startX = §7F§;
         _loc2_.startY = §!i§;
         var _loc4_:Number = this.§[J§ + this.§>z§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§&!A§ + this.§!v§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§@!-§ + this.§#X§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§@!-§ / _loc3_;
         _loc2_.rotation = this.§[J§ + this.§>z§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§3"§ + this.§1,§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§9$§;
         _loc2_.tangentialAcceleration = this.§3!"§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§0Z§ + this.§!+§ * _loc6_;
         if(!isNaN(this.§7b§))
         {
            _loc8_ = this.§7b§;
            if(!isNaN(this.§8'§))
            {
               _loc8_ += this.§8'§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§return§ + this.§%4§ * _loc6_;
         if(!isNaN(this.§#C§))
         {
            _loc10_ = this.§#C§;
            if(!isNaN(this.§1!2§))
            {
               _loc10_ += this.§1!2§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§4Z§.red;
         _loc11_.green = this.§4Z§.green;
         _loc11_.blue = this.§4Z§.blue;
         _loc11_.alpha = this.§4Z§.alpha;
         if(this.§@!5§.red != 0)
         {
            _loc11_.red += this.§@!5§.red * (Math.random() * 2 - 1);
         }
         if(this.§@!5§.green != 0)
         {
            _loc11_.green += this.§@!5§.green * (Math.random() * 2 - 1);
         }
         if(this.§@!5§.blue != 0)
         {
            _loc11_.blue += this.§@!5§.blue * (Math.random() * 2 - 1);
         }
         if(this.§@!5§.alpha != 0)
         {
            _loc11_.alpha += this.§@!5§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§0%§.red;
         var _loc14_:Number = this.§0%§.green;
         var _loc15_:Number = this.§0%§.blue;
         var _loc16_:Number = this.§0%§.alpha;
         if(this.§6!?§.red != 0)
         {
            _loc13_ += this.§6!?§.red * (Math.random() * 2 - 1);
         }
         if(this.§6!?§.green != 0)
         {
            _loc14_ += this.§6!?§.green * (Math.random() * 2 - 1);
         }
         if(this.§6!?§.blue != 0)
         {
            _loc15_ += this.§6!?§.blue * (Math.random() * 2 - 1);
         }
         if(this.§6!?§.alpha != 0)
         {
            _loc16_ += this.§6!?§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§'!!§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§?l§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§=u§ == this.§5j§)
         {
            if(!_loc3_.skipUpdate || !this.§]3§)
            {
               if(this.§]3§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §7F§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §!i§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§+!8§)
               {
                  _loc3_.currentTime = _loc3_.§?l§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§]3§)
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
               if(this.§]3§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§5k§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`$§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§5k§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`$§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§]3§)
         {
            if(this.§]3§)
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
      
      private function §41§(param1:XML, param2:Texture) : void
      {
         this.§%t§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§#8§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§5k§ = parseFloat(param1.gravity.attribute("x"));
         this.§`$§ = parseFloat(param1.gravity.attribute("y"));
         this.§=u§ = this.§=!F§(param1.emitterType);
         this.§-m§ = this.§=!F§(param1.maxParticles);
         this.§3=§ = Math.max(0.01,this.§2[§(param1.particleLifeSpan));
         this.§1!&§ = this.§2[§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§;g§ = this.§2[§(param1.particleInterval);
         }
         else
         {
            this.§;g§ = 0;
         }
         this.§0Z§ = this.§2[§(param1.startParticleSize);
         this.§return§ = this.§0Z§ * param2.height / param2.width;
         this.§!+§ = this.§2[§(param1.startParticleSizeVariance);
         this.§%4§ = this.§!+§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§0Z§ = this.§2[§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§!+§ = this.§2[§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§return§ = this.§2[§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§%4§ = this.§2[§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§7b§ = this.§2[§(param1.finishParticleSize);
            this.§#C§ = this.§7b§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§8'§ = this.§2[§(param1.FinishParticleSizeVariance);
            this.§1!2§ = this.§8'§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§7b§ = this.§2[§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§8'§ = this.§2[§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§#C§ = this.§2[§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§1!2§ = this.§2[§(param1.FinishParticleSizeVarianceY);
         }
         this.§[J§ = deg2rad(this.§2[§(param1.angle));
         this.§>z§ = deg2rad(this.§2[§(param1.angleVariance));
         this.§&!A§ = this.§2[§(param1.speed);
         this.§!v§ = this.§2[§(param1.speedVariance);
         this.§9$§ = this.§2[§(param1.radialAcceleration);
         this.§3!"§ = this.§2[§(param1.tangentialAcceleration);
         this.§@!-§ = this.§2[§(param1.maxRadius);
         this.§#X§ = this.§2[§(param1.maxRadiusVariance);
         this.§+!8§ = this.§2[§(param1.minRadius);
         this.§3"§ = deg2rad(this.§2[§(param1.rotatePerSecond));
         this.§1,§ = deg2rad(this.§2[§(param1.rotatePerSecondVariance));
         this.§4Z§ = this.§3!§(param1.startColor);
         this.§@!5§ = this.§3!§(param1.startColorVariance);
         this.§0%§ = this.§3!§(param1.finishColor);
         this.§6!?§ = this.§3!§(param1.finishColorVariance);
         §&!3§ = this.§#l§(param1.blendFuncSource);
         §@i§ = this.§#l§(param1.blendFuncDestination);
         § !D§ = this.§[>§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §,X§ = this.§2[§(param1.emissionVariance);
         }
      }
      
      protected function §=!F§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §2[§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §%q§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §3!§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §#l§(param1:XMLList) : String
      {
         var _loc2_:int = this.§=!F§(param1);
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
      
      protected function §[>§(param1:XMLList) : String
      {
         var _loc2_:String = this.§%q§(param1);
         if(_loc2_ == §@s§.§>i§ || _loc2_ == §@s§.§;!0§ || _loc2_ == §@s§.NONE)
         {
            return _loc2_;
         }
         return §@s§.§>i§;
      }
   }
}

import §4!+§.§'!!§;

class PDParticle extends §'!!§
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
