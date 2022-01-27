package §<"[§
{
   import §&"s§.§?g§;
   import §&"s§.Texture;
   import §7"G§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §%5§ extends §7"@§
   {
       
      
      private const §>"r§:int = 0;
      
      private const §-#§:int = 1;
      
      private var §+!C§:Number;
      
      private var §]!B§:int;
      
      private var §`"I§:Number;
      
      private var §7>§:Number;
      
      private var § 3§:int;
      
      private var §7"S§:Number;
      
      private var §#";§:Number;
      
      private var §<!p§:Number;
      
      private var §+5§:Number;
      
      private var §&!;§:Number;
      
      private var §3#3§:Number;
      
      private var §'!t§:Number;
      
      private var §&"H§:Number;
      
      private var § H§:Number;
      
      private var §+!+§:Number;
      
      private var §&!@§:Number;
      
      private var §6#7§:Number;
      
      private var §^"#§:Number;
      
      private var §&"'§:Number;
      
      private var §9"i§:Number;
      
      private var §=+§:Number;
      
      private var §%d§:Number;
      
      private var §3!W§:Number;
      
      private var §,"k§:Number;
      
      private var §9"<§:Number;
      
      private var §8J§:Number;
      
      private var §^!"§:Number;
      
      private var §8! §:Number;
      
      private var §^-§:Number;
      
      private var §5s§:Number;
      
      private var §!"0§:Number;
      
      private var §4!u§:ColorArgb;
      
      private var §["q§:ColorArgb;
      
      private var §4j§:ColorArgb;
      
      private var §="v§:ColorArgb;
      
      public function §%5§(param1:XML, param2:Texture)
      {
         this.§8"$§(param1,param2);
         var _loc3_:Number = this.§ 3§ / (this.§7"S§ + this.§<!p§);
         super(param2,_loc3_,this.§ 3§,§@"§,§>"M§);
         §8q§ = false;
      }
      
      public function get §'!O§() : int
      {
         return this.§ 3§;
      }
      
      override protected function createParticle() : §?R§
      {
         return new PDParticle();
      }
      
      private function get §?"z§() : Boolean
      {
         return this.§'!O§ >= 20;
      }
      
      override protected function initParticle(param1:§?R§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§7"S§ + this.§#";§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§^!g§ = _loc3_;
         _loc2_.x = §^+§ + this.§`"I§ * (Math.random() * 2 - 1);
         _loc2_.y = §&!X§ + this.§7>§ * (Math.random() * 2 - 1);
         _loc2_.startX = §^+§;
         _loc2_.startY = §&!X§;
         var _loc4_:Number = this.§6#7§ + this.§^"#§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§&"'§ + this.§9"i§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§^!"§ + this.§8! § * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§^!"§ / _loc3_;
         _loc2_.rotation = this.§6#7§ + this.§^"#§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§5s§ + this.§!"0§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§3!W§;
         _loc2_.tangentialAcceleration = this.§9"<§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§+5§ + this.§&!;§ * _loc6_;
         if(!isNaN(this.§&"H§))
         {
            _loc8_ = this.§&"H§;
            if(!isNaN(this.§ H§))
            {
               _loc8_ += this.§ H§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§3#3§ + this.§'!t§ * _loc6_;
         if(!isNaN(this.§+!+§))
         {
            _loc10_ = this.§+!+§;
            if(!isNaN(this.§&!@§))
            {
               _loc10_ += this.§&!@§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§4!u§.red;
         _loc11_.green = this.§4!u§.green;
         _loc11_.blue = this.§4!u§.blue;
         _loc11_.alpha = this.§4!u§.alpha;
         if(this.§["q§.red != 0)
         {
            _loc11_.red += this.§["q§.red * (Math.random() * 2 - 1);
         }
         if(this.§["q§.green != 0)
         {
            _loc11_.green += this.§["q§.green * (Math.random() * 2 - 1);
         }
         if(this.§["q§.blue != 0)
         {
            _loc11_.blue += this.§["q§.blue * (Math.random() * 2 - 1);
         }
         if(this.§["q§.alpha != 0)
         {
            _loc11_.alpha += this.§["q§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§4j§.red;
         var _loc14_:Number = this.§4j§.green;
         var _loc15_:Number = this.§4j§.blue;
         var _loc16_:Number = this.§4j§.alpha;
         if(this.§="v§.red != 0)
         {
            _loc13_ += this.§="v§.red * (Math.random() * 2 - 1);
         }
         if(this.§="v§.green != 0)
         {
            _loc14_ += this.§="v§.green * (Math.random() * 2 - 1);
         }
         if(this.§="v§.blue != 0)
         {
            _loc15_ += this.§="v§.blue * (Math.random() * 2 - 1);
         }
         if(this.§="v§.alpha != 0)
         {
            _loc16_ += this.§="v§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§?R§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§^!g§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§]!B§ == this.§-#§)
         {
            if(!_loc3_.skipUpdate || !this.§?"z§)
            {
               if(this.§?"z§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §^+§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §&!X§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§^-§)
               {
                  _loc3_.currentTime = _loc3_.§^!g§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§?"z§)
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
               if(this.§?"z§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§=+§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§%d§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§=+§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§%d§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§?"z§)
         {
            if(this.§?"z§)
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
      
      private function §8"$§(param1:XML, param2:Texture) : void
      {
         this.§`"I§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§7>§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§=+§ = parseFloat(param1.gravity.attribute("x"));
         this.§%d§ = parseFloat(param1.gravity.attribute("y"));
         this.§]!B§ = this.§&"2§(param1.emitterType);
         this.§ 3§ = this.§&"2§(param1.maxParticles);
         this.§7"S§ = Math.max(0.01,this.§@E§(param1.particleLifeSpan));
         this.§#";§ = this.§@E§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§<!p§ = this.§@E§(param1.particleInterval);
         }
         else
         {
            this.§<!p§ = 0;
         }
         this.§+5§ = this.§@E§(param1.startParticleSize);
         this.§3#3§ = this.§+5§ * param2.height / param2.width;
         this.§&!;§ = this.§@E§(param1.startParticleSizeVariance);
         this.§'!t§ = this.§&!;§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§+5§ = this.§@E§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§&!;§ = this.§@E§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§3#3§ = this.§@E§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§'!t§ = this.§@E§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§&"H§ = this.§@E§(param1.finishParticleSize);
            this.§+!+§ = this.§&"H§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§ H§ = this.§@E§(param1.FinishParticleSizeVariance);
            this.§&!@§ = this.§ H§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§&"H§ = this.§@E§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§ H§ = this.§@E§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§+!+§ = this.§@E§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§&!@§ = this.§@E§(param1.FinishParticleSizeVarianceY);
         }
         this.§6#7§ = deg2rad(this.§@E§(param1.angle));
         this.§^"#§ = deg2rad(this.§@E§(param1.angleVariance));
         this.§&"'§ = this.§@E§(param1.speed);
         this.§9"i§ = this.§@E§(param1.speedVariance);
         this.§3!W§ = this.§@E§(param1.radialAcceleration);
         this.§9"<§ = this.§@E§(param1.tangentialAcceleration);
         this.§^!"§ = this.§@E§(param1.maxRadius);
         this.§8! § = this.§@E§(param1.maxRadiusVariance);
         this.§^-§ = this.§@E§(param1.minRadius);
         this.§5s§ = deg2rad(this.§@E§(param1.rotatePerSecond));
         this.§!"0§ = deg2rad(this.§@E§(param1.rotatePerSecondVariance));
         this.§4!u§ = this.§`a§(param1.startColor);
         this.§["q§ = this.§`a§(param1.startColorVariance);
         this.§4j§ = this.§`a§(param1.finishColor);
         this.§="v§ = this.§`a§(param1.finishColorVariance);
         §@"§ = this.§!!§(param1.blendFuncSource);
         §>"M§ = this.§!!§(param1.blendFuncDestination);
         §]#+§ = this.§>!w§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §1!P§ = this.§@E§(param1.emissionVariance);
         }
      }
      
      protected function §&"2§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §@E§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §2w§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §`a§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §!!§(param1:XMLList) : String
      {
         var _loc2_:int = this.§&"2§(param1);
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
      
      protected function §>!w§(param1:XMLList) : String
      {
         var _loc2_:String = this.§2w§(param1);
         if(_loc2_ == §?g§.§["§ || _loc2_ == §?g§.§-!V§ || _loc2_ == §?g§.NONE)
         {
            return _loc2_;
         }
         return §?g§.§["§;
      }
   }
}

import §<"[§.§?R§;

class PDParticle extends §?R§
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
