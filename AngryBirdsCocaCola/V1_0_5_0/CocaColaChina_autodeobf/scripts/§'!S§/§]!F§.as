package §'!S§
{
   import §%Q§.deg2rad;
   import §@'§.§2!Y§;
   import §@'§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §]!F§ extends §"F§
   {
       
      
      private const §@x§:int = 0;
      
      private const §4!;§:int = 1;
      
      private var §-=§:Number;
      
      private var §8n§:int;
      
      private var §0v§:Number;
      
      private var §-f§:Number;
      
      private var §?&§:int;
      
      private var §4b§:Number;
      
      private var §@!4§:Number;
      
      private var §2!;§:Number;
      
      private var § !G§:Number;
      
      private var §&"§:Number;
      
      private var §>!!§:Number;
      
      private var §'!&§:Number;
      
      private var §^!8§:Number;
      
      private var §&y§:Number;
      
      private var §#!D§:Number;
      
      private var §8]§:Number;
      
      private var §]>§:Number;
      
      private var §=i§:Number;
      
      private var §%a§:Number;
      
      private var §=h§:Number;
      
      private var §"o§:Number;
      
      private var §@<§:Number;
      
      private var §;!Y§:Number;
      
      private var §7T§:Number;
      
      private var §#!<§:Number;
      
      private var §;z§:Number;
      
      private var §8!I§:Number;
      
      private var §0!V§:Number;
      
      private var §^#§:Number;
      
      private var §?9§:Number;
      
      private var §;q§:Number;
      
      private var §-!R§:ColorArgb;
      
      private var §[§:ColorArgb;
      
      private var §>m§:ColorArgb;
      
      private var §>3§:ColorArgb;
      
      public function §]!F§(param1:XML, param2:Texture)
      {
         this.§0d§(param1,param2);
         var _loc3_:Number = this.§?&§ / (this.§4b§ + this.§2!;§);
         super(param2,_loc3_,this.§?&§,§@!N§,§3K§);
         §2"§ = false;
      }
      
      public function get § !-§() : int
      {
         return this.§?&§;
      }
      
      override protected function createParticle() : §[!+§
      {
         return new PDParticle();
      }
      
      private function get §<H§() : Boolean
      {
         return this.§ !-§ >= 20;
      }
      
      override protected function initParticle(param1:§[!+§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§4b§ + this.§@!4§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§3H§ = 0;
         _loc2_.§3E§ = _loc3_;
         _loc2_.x = §!k§ + this.§0v§ * (Math.random() * 2 - 1);
         _loc2_.y = §8!`§ + this.§-f§ * (Math.random() * 2 - 1);
         _loc2_.startX = §!k§;
         _loc2_.startY = §8!`§;
         var _loc4_:Number = this.§]>§ + this.§=i§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§%a§ + this.§=h§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§8!I§ + this.§0!V§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§8!I§ / _loc3_;
         _loc2_.rotation = this.§]>§ + this.§=i§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§?9§ + this.§;q§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§;!Y§;
         _loc2_.tangentialAcceleration = this.§#!<§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§ !G§ + this.§&"§ * _loc6_;
         if(!isNaN(this.§^!8§))
         {
            _loc8_ = this.§^!8§;
            if(!isNaN(this.§&y§))
            {
               _loc8_ += this.§&y§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§>!!§ + this.§'!&§ * _loc6_;
         if(!isNaN(this.§#!D§))
         {
            _loc10_ = this.§#!D§;
            if(!isNaN(this.§8]§))
            {
               _loc10_ += this.§8]§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§-!R§.red;
         _loc11_.green = this.§-!R§.green;
         _loc11_.blue = this.§-!R§.blue;
         _loc11_.alpha = this.§-!R§.alpha;
         if(this.§[§.red != 0)
         {
            _loc11_.red += this.§[§.red * (Math.random() * 2 - 1);
         }
         if(this.§[§.green != 0)
         {
            _loc11_.green += this.§[§.green * (Math.random() * 2 - 1);
         }
         if(this.§[§.blue != 0)
         {
            _loc11_.blue += this.§[§.blue * (Math.random() * 2 - 1);
         }
         if(this.§[§.alpha != 0)
         {
            _loc11_.alpha += this.§[§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§>m§.red;
         var _loc14_:Number = this.§>m§.green;
         var _loc15_:Number = this.§>m§.blue;
         var _loc16_:Number = this.§>m§.alpha;
         if(this.§>3§.red != 0)
         {
            _loc13_ += this.§>3§.red * (Math.random() * 2 - 1);
         }
         if(this.§>3§.green != 0)
         {
            _loc14_ += this.§>3§.green * (Math.random() * 2 - 1);
         }
         if(this.§>3§.blue != 0)
         {
            _loc15_ += this.§>3§.blue * (Math.random() * 2 - 1);
         }
         if(this.§>3§.alpha != 0)
         {
            _loc16_ += this.§>3§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§[!+§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§3E§ - _loc3_.§3H§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§3H§ += param2;
         if(this.§8n§ == this.§4!;§)
         {
            if(!_loc3_.skipUpdate || !this.§<H§)
            {
               if(this.§<H§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §!k§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §8!`§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§^#§)
               {
                  _loc3_.§3H§ = _loc3_.§3E§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§<H§)
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
               if(this.§<H§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§"o§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§@<§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§"o§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§@<§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§<H§)
         {
            if(this.§<H§)
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
      
      private function §0d§(param1:XML, param2:Texture) : void
      {
         this.§0v§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§-f§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§"o§ = parseFloat(param1.gravity.attribute("x"));
         this.§@<§ = parseFloat(param1.gravity.attribute("y"));
         this.§8n§ = this.§;!P§(param1.emitterType);
         this.§?&§ = this.§;!P§(param1.maxParticles);
         this.§4b§ = Math.max(0.01,this.§6-§(param1.particleLifeSpan));
         this.§@!4§ = this.§6-§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§2!;§ = this.§6-§(param1.particleInterval);
         }
         else
         {
            this.§2!;§ = 0;
         }
         this.§ !G§ = this.§6-§(param1.startParticleSize);
         this.§>!!§ = this.§ !G§ * param2.height / param2.width;
         this.§&"§ = this.§6-§(param1.startParticleSizeVariance);
         this.§'!&§ = this.§&"§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§ !G§ = this.§6-§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§&"§ = this.§6-§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§>!!§ = this.§6-§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§'!&§ = this.§6-§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§^!8§ = this.§6-§(param1.finishParticleSize);
            this.§#!D§ = this.§^!8§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&y§ = this.§6-§(param1.FinishParticleSizeVariance);
            this.§8]§ = this.§&y§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§^!8§ = this.§6-§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&y§ = this.§6-§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§#!D§ = this.§6-§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§8]§ = this.§6-§(param1.FinishParticleSizeVarianceY);
         }
         this.§]>§ = deg2rad(this.§6-§(param1.angle));
         this.§=i§ = deg2rad(this.§6-§(param1.angleVariance));
         this.§%a§ = this.§6-§(param1.speed);
         this.§=h§ = this.§6-§(param1.speedVariance);
         this.§;!Y§ = this.§6-§(param1.radialAcceleration);
         this.§#!<§ = this.§6-§(param1.tangentialAcceleration);
         this.§8!I§ = this.§6-§(param1.maxRadius);
         this.§0!V§ = this.§6-§(param1.maxRadiusVariance);
         this.§^#§ = this.§6-§(param1.minRadius);
         this.§?9§ = deg2rad(this.§6-§(param1.rotatePerSecond));
         this.§;q§ = deg2rad(this.§6-§(param1.rotatePerSecondVariance));
         this.§-!R§ = this.§?]§(param1.startColor);
         this.§[§ = this.§?]§(param1.startColorVariance);
         this.§>m§ = this.§?]§(param1.finishColor);
         this.§>3§ = this.§?]§(param1.finishColorVariance);
         §@!N§ = this.§`O§(param1.blendFuncSource);
         §3K§ = this.§`O§(param1.blendFuncDestination);
         §]!K§ = this.§5!2§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §?m§ = this.§6-§(param1.emissionVariance);
         }
      }
      
      protected function §;!P§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6-§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §"h§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?]§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §`O§(param1:XMLList) : String
      {
         var _loc2_:int = this.§;!P§(param1);
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
      
      protected function §5!2§(param1:XMLList) : String
      {
         var _loc2_:String = this.§"h§(param1);
         if(_loc2_ == §2!Y§.§3!N§ || _loc2_ == §2!Y§.§7!O§ || _loc2_ == §2!Y§.NONE)
         {
            return _loc2_;
         }
         return §2!Y§.§3!N§;
      }
   }
}

import §'!S§.§[!+§;

class PDParticle extends §[!+§
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
