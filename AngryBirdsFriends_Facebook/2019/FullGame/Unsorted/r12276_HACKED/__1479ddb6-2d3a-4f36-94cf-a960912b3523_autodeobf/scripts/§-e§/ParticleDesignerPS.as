package §-e§
{
   import §""4§.Texture;
   import §#Z§.§6!`§;
   import §0"D§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §4%§:int = 0;
      
      private const §9#A§:int = 1;
      
      private var §^#=§:Number;
      
      private var §>!-§:int;
      
      private var §&#V§:Number;
      
      private var §=#i§:Number;
      
      private var §1"_§:int;
      
      private var §"!R§:Number;
      
      private var §;#?§:Number;
      
      private var §="F§:Number;
      
      private var §3">§:Number;
      
      private var §`#@§:Number;
      
      private var §>#j§:Number;
      
      private var §?#@§:Number;
      
      private var §@!8§:Number;
      
      private var §4#'§:Number;
      
      private var §5h§:Number;
      
      private var §1#&§:Number;
      
      private var §&!k§:Number;
      
      private var §%^§:Number;
      
      private var §+#9§:Number;
      
      private var §3!l§:Number;
      
      private var §&§:Number;
      
      private var §^4§:Number;
      
      private var §&!l§:Number;
      
      private var §[#L§:Number;
      
      private var §;!l§:Number;
      
      private var §-$&§:Number;
      
      private var §<"]§:Number;
      
      private var §4#K§:Number;
      
      private var §5!W§:Number;
      
      private var §%",§:Number;
      
      private var §for§:Number;
      
      private var §?#1§:ColorArgb;
      
      private var §>#I§:ColorArgb;
      
      private var §^$,§:ColorArgb;
      
      private var §8!I§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§7!>§(param1,param2);
         var _loc3_:Number = this.§1"_§ / (this.§"!R§ + this.§="F§);
         super(param2,_loc3_,this.§1"_§,§#$ §,§#"q§);
         §!#H§ = false;
      }
      
      public function get §#!5§() : int
      {
         return this.§1"_§;
      }
      
      override protected function createParticle() : §]"w§
      {
         return new PDParticle();
      }
      
      private function get §,#v§() : Boolean
      {
         return this.§#!5§ >= 20;
      }
      
      override protected function initParticle(param1:§]"w§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§"!R§ + this.§;#?§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§3!j§ = 0;
         _loc2_.§9b§ = _loc3_;
         _loc2_.x = §?1§ + this.§&#V§ * (Math.random() * 2 - 1);
         _loc2_.y = §2!>§ + this.§=#i§ * (Math.random() * 2 - 1);
         _loc2_.startX = §?1§;
         _loc2_.startY = §2!>§;
         var _loc4_:Number = this.§&!k§ + this.§%^§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§+#9§ + this.§3!l§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§<"]§ + this.§4#K§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§<"]§ / _loc3_;
         _loc2_.rotation = this.§&!k§ + this.§%^§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§%",§ + this.§for§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§&!l§;
         _loc2_.tangentialAcceleration = this.§;!l§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§3">§ + this.§`#@§ * _loc6_;
         if(!isNaN(this.§@!8§))
         {
            _loc8_ = this.§@!8§;
            if(!isNaN(this.§4#'§))
            {
               _loc8_ += this.§4#'§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§>#j§ + this.§?#@§ * _loc6_;
         if(!isNaN(this.§5h§))
         {
            _loc10_ = this.§5h§;
            if(!isNaN(this.§1#&§))
            {
               _loc10_ += this.§1#&§ * (Math.random() * 2 - 1);
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
         _loc2_.red = this.§?#1§.red;
         _loc2_.green = this.§?#1§.green;
         _loc2_.blue = this.§?#1§.blue;
         _loc2_.alpha = this.§?#1§.alpha;
         if(this.§>#I§.red != 0)
         {
            _loc2_.red += this.§>#I§.red * (Math.random() * 2 - 1);
         }
         if(this.§>#I§.green != 0)
         {
            _loc2_.green += this.§>#I§.green * (Math.random() * 2 - 1);
         }
         if(this.§>#I§.blue != 0)
         {
            _loc2_.blue += this.§>#I§.blue * (Math.random() * 2 - 1);
         }
         if(this.§>#I§.alpha != 0)
         {
            _loc2_.alpha += this.§>#I§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§^$,§.red;
         var _loc13_:Number = this.§^$,§.green;
         var _loc14_:Number = this.§^$,§.blue;
         var _loc15_:Number = this.§^$,§.alpha;
         if(this.§8!I§.red != 0)
         {
            _loc12_ += this.§8!I§.red * (Math.random() * 2 - 1);
         }
         if(this.§8!I§.green != 0)
         {
            _loc13_ += this.§8!I§.green * (Math.random() * 2 - 1);
         }
         if(this.§8!I§.blue != 0)
         {
            _loc14_ += this.§8!I§.blue * (Math.random() * 2 - 1);
         }
         if(this.§8!I§.alpha != 0)
         {
            _loc15_ += this.§8!I§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §try § = true;
         }
      }
      
      override protected function advanceParticle(param1:§]"w§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§9b§ - _loc3_.§3!j§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§3!j§ += param2;
         if(this.§>!-§ == this.§9#A§)
         {
            if(!_loc3_.skipUpdate || !this.§,#v§)
            {
               if(this.§,#v§)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §?1§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §2!>§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§5!W§)
               {
                  _loc3_.§3!j§ = _loc3_.§9b§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.§,#v§)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.§,#v§)
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
                  _loc3_.velocityX += param2 * (this.§&§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§^4§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§&§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§^4§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.§,#v§)
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
      
      private function §7!>§(param1:XML, param2:Texture) : void
      {
         this.§&#V§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§=#i§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§&§ = parseFloat(param1.gravity.attribute("x"));
         this.§^4§ = parseFloat(param1.gravity.attribute("y"));
         this.§>!-§ = this.§"!Z§(param1.emitterType);
         this.§1"_§ = this.§"!Z§(param1.maxParticles);
         this.§"!R§ = Math.max(0.01,this.§?$+§(param1.particleLifeSpan));
         this.§;#?§ = this.§?$+§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§="F§ = this.§?$+§(param1.particleInterval);
         }
         else
         {
            this.§="F§ = 0;
         }
         this.§3">§ = this.§?$+§(param1.startParticleSize);
         this.§>#j§ = this.§3">§ * param2.height / param2.width;
         this.§`#@§ = this.§?$+§(param1.startParticleSizeVariance);
         this.§?#@§ = this.§`#@§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§3">§ = this.§?$+§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`#@§ = this.§?$+§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§>#j§ = this.§?$+§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§?#@§ = this.§?$+§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§@!8§ = this.§?$+§(param1.finishParticleSize);
            this.§5h§ = this.§@!8§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§4#'§ = this.§?$+§(param1.FinishParticleSizeVariance);
            this.§1#&§ = this.§4#'§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§@!8§ = this.§?$+§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§4#'§ = this.§?$+§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§5h§ = this.§?$+§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§1#&§ = this.§?$+§(param1.FinishParticleSizeVarianceY);
         }
         this.§&!k§ = deg2rad(this.§?$+§(param1.angle));
         this.§%^§ = deg2rad(this.§?$+§(param1.angleVariance));
         this.§+#9§ = this.§?$+§(param1.speed);
         this.§3!l§ = this.§?$+§(param1.speedVariance);
         this.§&!l§ = this.§?$+§(param1.radialAcceleration);
         this.§;!l§ = this.§?$+§(param1.tangentialAcceleration);
         this.§<"]§ = this.§?$+§(param1.maxRadius);
         this.§4#K§ = this.§?$+§(param1.maxRadiusVariance);
         this.§5!W§ = this.§?$+§(param1.minRadius);
         this.§%",§ = deg2rad(this.§?$+§(param1.rotatePerSecond));
         this.§for§ = deg2rad(this.§?$+§(param1.rotatePerSecondVariance));
         this.§?#1§ = this.§1w§(param1.startColor);
         this.§>#I§ = this.§1w§(param1.startColorVariance);
         this.§^$,§ = this.§1w§(param1.finishColor);
         this.§8!I§ = this.§1w§(param1.finishColorVariance);
         §#$ § = this.§8""§(param1.blendFuncSource);
         §#"q§ = this.§8""§(param1.blendFuncDestination);
         §'$;§ = this.§&!4§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §@!N§ = this.§?$+§(param1.emissionVariance);
         }
      }
      
      protected function §"!Z§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §?$+§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §0!g§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §1w§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §8""§(param1:XMLList) : String
      {
         var _loc2_:int = this.§"!Z§(param1);
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
      
      protected function §&!4§(param1:XMLList) : int
      {
         var _loc2_:String = this.§0!g§(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §6!`§.§3"6§;
      }
   }
}

import §-e§.§]"w§;

class PDParticle extends §]"w§
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
