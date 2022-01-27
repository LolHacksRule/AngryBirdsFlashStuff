package §?]§
{
   import §!!a§.deg2rad;
   import §3"$§.§>!H§;
   import §3"$§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §#"0§ extends §'!V§
   {
       
      
      private const § !k§:int = 0;
      
      private const §24§:int = 1;
      
      private var §>!D§:Number;
      
      private var § n§:int;
      
      private var §,!m§:Number;
      
      private var §-!N§:Number;
      
      private var §7[§:int;
      
      private var §<!n§:Number;
      
      private var §-!C§:Number;
      
      private var §&&§:Number;
      
      private var §6!y§:Number;
      
      private var §1!j§:Number;
      
      private var §>!#§:Number;
      
      private var §>M§:Number;
      
      private var §"!I§:Number;
      
      private var §!!o§:Number;
      
      private var §[p§:Number;
      
      private var §@§:Number;
      
      private var §1!g§:Number;
      
      private var §;!M§:Number;
      
      private var §&w§:Number;
      
      private var §7"A§:Number;
      
      private var §!'§:Number;
      
      private var §["5§:Number;
      
      private var §,!$§:Number;
      
      private var §6"1§:Number;
      
      private var §>^§:Number;
      
      private var §]"2§:Number;
      
      private var §^L§:Number;
      
      private var §>i§:Number;
      
      private var §="-§:Number;
      
      private var §'!X§:Number;
      
      private var §5a§:Number;
      
      private var §+!-§:ColorArgb;
      
      private var §&!N§:ColorArgb;
      
      private var §?!K§:ColorArgb;
      
      private var §3!X§:ColorArgb;
      
      public function §#"0§(param1:XML, param2:Texture)
      {
         this.§9"#§(param1,param2);
         var _loc3_:Number = this.§7[§ / (this.§<!n§ + this.§&&§);
         super(param2,_loc3_,this.§7[§,§'!H§,§`P§);
         §-`§ = false;
      }
      
      public function get §!"1§() : int
      {
         return this.§7[§;
      }
      
      override protected function createParticle() : §5"&§
      {
         return new PDParticle();
      }
      
      private function get §"!f§() : Boolean
      {
         return this.§!"1§ >= 20;
      }
      
      override protected function initParticle(param1:§5"&§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§<!n§ + this.§-!C§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§0"8§ = 0;
         _loc2_.§<!1§ = _loc3_;
         _loc2_.x = §=";§ + this.§,!m§ * (Math.random() * 2 - 1);
         _loc2_.y = §]"?§ + this.§-!N§ * (Math.random() * 2 - 1);
         _loc2_.startX = §=";§;
         _loc2_.startY = §]"?§;
         var _loc4_:Number = this.§1!g§ + this.§;!M§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§&w§ + this.§7"A§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§^L§ + this.§>i§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§^L§ / _loc3_;
         _loc2_.rotation = this.§1!g§ + this.§;!M§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§'!X§ + this.§5a§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§,!$§;
         _loc2_.tangentialAcceleration = this.§>^§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§6!y§ + this.§1!j§ * _loc6_;
         if(!isNaN(this.§"!I§))
         {
            _loc8_ = this.§"!I§;
            if(!isNaN(this.§!!o§))
            {
               _loc8_ += this.§!!o§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§>!#§ + this.§>M§ * _loc6_;
         if(!isNaN(this.§[p§))
         {
            _loc10_ = this.§[p§;
            if(!isNaN(this.§@§))
            {
               _loc10_ += this.§@§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§+!-§.red;
         _loc11_.green = this.§+!-§.green;
         _loc11_.blue = this.§+!-§.blue;
         _loc11_.alpha = this.§+!-§.alpha;
         if(this.§&!N§.red != 0)
         {
            _loc11_.red += this.§&!N§.red * (Math.random() * 2 - 1);
         }
         if(this.§&!N§.green != 0)
         {
            _loc11_.green += this.§&!N§.green * (Math.random() * 2 - 1);
         }
         if(this.§&!N§.blue != 0)
         {
            _loc11_.blue += this.§&!N§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&!N§.alpha != 0)
         {
            _loc11_.alpha += this.§&!N§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§?!K§.red;
         var _loc14_:Number = this.§?!K§.green;
         var _loc15_:Number = this.§?!K§.blue;
         var _loc16_:Number = this.§?!K§.alpha;
         if(this.§3!X§.red != 0)
         {
            _loc13_ += this.§3!X§.red * (Math.random() * 2 - 1);
         }
         if(this.§3!X§.green != 0)
         {
            _loc14_ += this.§3!X§.green * (Math.random() * 2 - 1);
         }
         if(this.§3!X§.blue != 0)
         {
            _loc15_ += this.§3!X§.blue * (Math.random() * 2 - 1);
         }
         if(this.§3!X§.alpha != 0)
         {
            _loc16_ += this.§3!X§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§5"&§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§<!1§ - _loc3_.§0"8§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§0"8§ += param2;
         if(this.§ n§ == this.§24§)
         {
            if(!_loc3_.skipUpdate || !this.§"!f§)
            {
               if(this.§"!f§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=";§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §]"?§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§="-§)
               {
                  _loc3_.§0"8§ = _loc3_.§<!1§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§"!f§)
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
               if(this.§"!f§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§!'§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§["5§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§!'§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§["5§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§"!f§)
         {
            if(this.§"!f§)
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
      
      private function §9"#§(param1:XML, param2:Texture) : void
      {
         this.§,!m§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§-!N§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§!'§ = parseFloat(param1.gravity.attribute("x"));
         this.§["5§ = parseFloat(param1.gravity.attribute("y"));
         this.§ n§ = this.§^r§(param1.emitterType);
         this.§7[§ = this.§^r§(param1.maxParticles);
         this.§<!n§ = Math.max(0.01,this.§>!q§(param1.particleLifeSpan));
         this.§-!C§ = this.§>!q§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§&&§ = this.§>!q§(param1.particleInterval);
         }
         else
         {
            this.§&&§ = 0;
         }
         this.§6!y§ = this.§>!q§(param1.startParticleSize);
         this.§>!#§ = this.§6!y§ * param2.height / param2.width;
         this.§1!j§ = this.§>!q§(param1.startParticleSizeVariance);
         this.§>M§ = this.§1!j§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§6!y§ = this.§>!q§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§1!j§ = this.§>!q§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§>!#§ = this.§>!q§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§>M§ = this.§>!q§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§"!I§ = this.§>!q§(param1.finishParticleSize);
            this.§[p§ = this.§"!I§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§!!o§ = this.§>!q§(param1.FinishParticleSizeVariance);
            this.§@§ = this.§!!o§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§"!I§ = this.§>!q§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§!!o§ = this.§>!q§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§[p§ = this.§>!q§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§@§ = this.§>!q§(param1.FinishParticleSizeVarianceY);
         }
         this.§1!g§ = deg2rad(this.§>!q§(param1.angle));
         this.§;!M§ = deg2rad(this.§>!q§(param1.angleVariance));
         this.§&w§ = this.§>!q§(param1.speed);
         this.§7"A§ = this.§>!q§(param1.speedVariance);
         this.§,!$§ = this.§>!q§(param1.radialAcceleration);
         this.§>^§ = this.§>!q§(param1.tangentialAcceleration);
         this.§^L§ = this.§>!q§(param1.maxRadius);
         this.§>i§ = this.§>!q§(param1.maxRadiusVariance);
         this.§="-§ = this.§>!q§(param1.minRadius);
         this.§'!X§ = deg2rad(this.§>!q§(param1.rotatePerSecond));
         this.§5a§ = deg2rad(this.§>!q§(param1.rotatePerSecondVariance));
         this.§+!-§ = this.§#<§(param1.startColor);
         this.§&!N§ = this.§#<§(param1.startColorVariance);
         this.§?!K§ = this.§#<§(param1.finishColor);
         this.§3!X§ = this.§#<§(param1.finishColorVariance);
         §'!H§ = this.§?4§(param1.blendFuncSource);
         §`P§ = this.§?4§(param1.blendFuncDestination);
         §1^§ = this.§?"3§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §-!c§ = this.§>!q§(param1.emissionVariance);
         }
      }
      
      protected function §^r§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §>!q§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §1![§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §#<§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §?4§(param1:XMLList) : String
      {
         var _loc2_:int = this.§^r§(param1);
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
      
      protected function §?"3§(param1:XMLList) : String
      {
         var _loc2_:String = this.§1![§(param1);
         if(_loc2_ == §>!H§.§?"B§ || _loc2_ == §>!H§.§8d§ || _loc2_ == §>!H§.NONE)
         {
            return _loc2_;
         }
         return §>!H§.§?"B§;
      }
   }
}

import §?]§.§5"&§;

class PDParticle extends §5"&§
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
