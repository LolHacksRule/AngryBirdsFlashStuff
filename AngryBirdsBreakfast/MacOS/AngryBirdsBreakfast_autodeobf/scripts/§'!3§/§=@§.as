package §'!3§
{
   import §%q§.§+,§;
   import §%q§.Texture;
   import §+o§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §=@§ extends §"L§
   {
       
      
      private const §'!^§:int = 0;
      
      private const §3a§:int = 1;
      
      private var §08§:Number;
      
      private var §,"%§:int;
      
      private var §=`§:Number;
      
      private var § 3§:Number;
      
      private var §?A§:int;
      
      private var §&!W§:Number;
      
      private var §<!L§:Number;
      
      private var § case§:Number;
      
      private var §`!H§:Number;
      
      private var §,i§:Number;
      
      private var §<I§:Number;
      
      private var §;"$§:Number;
      
      private var §#!"§:Number;
      
      private var §,x§:Number;
      
      private var §'_§:Number;
      
      private var §else §:Number;
      
      private var §3<§:Number;
      
      private var §=q§:Number;
      
      private var §>3§:Number;
      
      private var §%V§:Number;
      
      private var §]7§:Number;
      
      private var §`!§:Number;
      
      private var §]x§:Number;
      
      private var §do§:Number;
      
      private var §,!+§:Number;
      
      private var §&d§:Number;
      
      private var §>!t§:Number;
      
      private var §>g§:Number;
      
      private var §0!U§:Number;
      
      private var §#`§:Number;
      
      private var §&!X§:Number;
      
      private var §,!Y§:ColorArgb;
      
      private var §-!Q§:ColorArgb;
      
      private var §3$§:ColorArgb;
      
      private var §[N§:ColorArgb;
      
      public function §=@§(param1:XML, param2:Texture)
      {
         this.§3!o§(param1,param2);
         var _loc3_:Number = this.§?A§ / (this.§&!W§ + this.§ case§);
         super(param2,_loc3_,this.§?A§,§&!H§,§9!K§);
         §>#§ = false;
      }
      
      public function get §8!,§() : int
      {
         return this.§?A§;
      }
      
      override protected function createParticle() : §;x§
      {
         return new PDParticle();
      }
      
      private function get § m§() : Boolean
      {
         return this.§8!,§ >= 20;
      }
      
      override protected function initParticle(param1:§;x§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§&!W§ + this.§<!L§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§+L§ = 0;
         _loc2_.§,!Q§ = _loc3_;
         _loc2_.x = §!!I§ + this.§=`§ * (Math.random() * 2 - 1);
         _loc2_.y = §?!q§ + this.§ 3§ * (Math.random() * 2 - 1);
         _loc2_.startX = §!!I§;
         _loc2_.startY = §?!q§;
         var _loc4_:Number = this.§3<§ + this.§=q§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§>3§ + this.§%V§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§>!t§ + this.§>g§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§>!t§ / _loc3_;
         _loc2_.rotation = this.§3<§ + this.§=q§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#`§ + this.§&!X§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§]x§;
         _loc2_.tangentialAcceleration = this.§,!+§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§`!H§ + this.§,i§ * _loc6_;
         if(!isNaN(this.§#!"§))
         {
            _loc8_ = this.§#!"§;
            if(!isNaN(this.§,x§))
            {
               _loc8_ += this.§,x§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§<I§ + this.§;"$§ * _loc6_;
         if(!isNaN(this.§'_§))
         {
            _loc10_ = this.§'_§;
            if(!isNaN(this.§else §))
            {
               _loc10_ += this.§else § * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§,!Y§.red;
         _loc11_.green = this.§,!Y§.green;
         _loc11_.blue = this.§,!Y§.blue;
         _loc11_.alpha = this.§,!Y§.alpha;
         if(this.§-!Q§.red != 0)
         {
            _loc11_.red += this.§-!Q§.red * (Math.random() * 2 - 1);
         }
         if(this.§-!Q§.green != 0)
         {
            _loc11_.green += this.§-!Q§.green * (Math.random() * 2 - 1);
         }
         if(this.§-!Q§.blue != 0)
         {
            _loc11_.blue += this.§-!Q§.blue * (Math.random() * 2 - 1);
         }
         if(this.§-!Q§.alpha != 0)
         {
            _loc11_.alpha += this.§-!Q§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§3$§.red;
         var _loc14_:Number = this.§3$§.green;
         var _loc15_:Number = this.§3$§.blue;
         var _loc16_:Number = this.§3$§.alpha;
         if(this.§[N§.red != 0)
         {
            _loc13_ += this.§[N§.red * (Math.random() * 2 - 1);
         }
         if(this.§[N§.green != 0)
         {
            _loc14_ += this.§[N§.green * (Math.random() * 2 - 1);
         }
         if(this.§[N§.blue != 0)
         {
            _loc15_ += this.§[N§.blue * (Math.random() * 2 - 1);
         }
         if(this.§[N§.alpha != 0)
         {
            _loc16_ += this.§[N§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§;x§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§,!Q§ - _loc3_.§+L§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§+L§ += param2;
         if(this.§,"%§ == this.§3a§)
         {
            if(!_loc3_.skipUpdate || !this.§ m§)
            {
               if(this.§ m§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §!!I§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §?!q§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§0!U§)
               {
                  _loc3_.§+L§ = _loc3_.§,!Q§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§ m§)
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
               if(this.§ m§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§]7§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`!§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§]7§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`!§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§ m§)
         {
            if(this.§ m§)
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
      
      private function §3!o§(param1:XML, param2:Texture) : void
      {
         this.§=`§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§ 3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§]7§ = parseFloat(param1.gravity.attribute("x"));
         this.§`!§ = parseFloat(param1.gravity.attribute("y"));
         this.§,"%§ = this.§6P§(param1.emitterType);
         this.§?A§ = this.§6P§(param1.maxParticles);
         this.§&!W§ = Math.max(0.01,this.§[!D§(param1.particleLifeSpan));
         this.§<!L§ = this.§[!D§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§ case§ = this.§[!D§(param1.particleInterval);
         }
         else
         {
            this.§ case§ = 0;
         }
         this.§`!H§ = this.§[!D§(param1.startParticleSize);
         this.§<I§ = this.§`!H§ * param2.height / param2.width;
         this.§,i§ = this.§[!D§(param1.startParticleSizeVariance);
         this.§;"$§ = this.§,i§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§`!H§ = this.§[!D§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§,i§ = this.§[!D§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§<I§ = this.§[!D§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§;"$§ = this.§[!D§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§#!"§ = this.§[!D§(param1.finishParticleSize);
            this.§'_§ = this.§#!"§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§,x§ = this.§[!D§(param1.FinishParticleSizeVariance);
            this.§else § = this.§,x§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§#!"§ = this.§[!D§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§,x§ = this.§[!D§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§'_§ = this.§[!D§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§else § = this.§[!D§(param1.FinishParticleSizeVarianceY);
         }
         this.§3<§ = deg2rad(this.§[!D§(param1.angle));
         this.§=q§ = deg2rad(this.§[!D§(param1.angleVariance));
         this.§>3§ = this.§[!D§(param1.speed);
         this.§%V§ = this.§[!D§(param1.speedVariance);
         this.§]x§ = this.§[!D§(param1.radialAcceleration);
         this.§,!+§ = this.§[!D§(param1.tangentialAcceleration);
         this.§>!t§ = this.§[!D§(param1.maxRadius);
         this.§>g§ = this.§[!D§(param1.maxRadiusVariance);
         this.§0!U§ = this.§[!D§(param1.minRadius);
         this.§#`§ = deg2rad(this.§[!D§(param1.rotatePerSecond));
         this.§&!X§ = deg2rad(this.§[!D§(param1.rotatePerSecondVariance));
         this.§,!Y§ = this.§>!k§(param1.startColor);
         this.§-!Q§ = this.§>!k§(param1.startColorVariance);
         this.§3$§ = this.§>!k§(param1.finishColor);
         this.§[N§ = this.§>!k§(param1.finishColorVariance);
         §&!H§ = this.§^p§(param1.blendFuncSource);
         §9!K§ = this.§^p§(param1.blendFuncDestination);
         §<,§ = this.§-"$§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §9!e§ = this.§[!D§(param1.emissionVariance);
         }
      }
      
      protected function §6P§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §[!D§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §-x§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §>!k§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §^p§(param1:XMLList) : String
      {
         var _loc2_:int = this.§6P§(param1);
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
      
      protected function §-"$§(param1:XMLList) : String
      {
         var _loc2_:String = this.§-x§(param1);
         if(_loc2_ == §+,§.§7q§ || _loc2_ == §+,§.§]!h§ || _loc2_ == §+,§.NONE)
         {
            return _loc2_;
         }
         return §+,§.§7q§;
      }
   }
}

import §'!3§.§;x§;

class PDParticle extends §;x§
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
