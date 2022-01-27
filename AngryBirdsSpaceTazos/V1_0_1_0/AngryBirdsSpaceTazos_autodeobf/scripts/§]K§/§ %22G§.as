package §]K§
{
   import §&!Z§.deg2rad;
   import §`!#§.§-!k§;
   import §`!#§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class § "G§ extends §2!k§
   {
       
      
      private const §'!-§:int = 0;
      
      private const §6!D§:int = 1;
      
      private var §?!H§:Number;
      
      private var §8!q§:int;
      
      private var §'!_§:Number;
      
      private var §`!"§:Number;
      
      private var §?"2§:int;
      
      private var §]"=§:Number;
      
      private var §5"B§:Number;
      
      private var §2A§:Number;
      
      private var §%"@§:Number;
      
      private var §9!"§:Number;
      
      private var §="0§:Number;
      
      private var §2b§:Number;
      
      private var §&"2§:Number;
      
      private var §2!B§:Number;
      
      private var §^!6§:Number;
      
      private var §`"1§:Number;
      
      private var §2!^§:Number;
      
      private var §]T§:Number;
      
      private var §^§:Number;
      
      private var §1L§:Number;
      
      private var §'6§:Number;
      
      private var §%=§:Number;
      
      private var §!f§:Number;
      
      private var §4W§:Number;
      
      private var §in§:Number;
      
      private var §0!n§:Number;
      
      private var §?!c§:Number;
      
      private var §6!C§:Number;
      
      private var §4p§:Number;
      
      private var §%!5§:Number;
      
      private var §=!Y§:Number;
      
      private var §0,§:ColorArgb;
      
      private var §>o§:ColorArgb;
      
      private var §&!M§:ColorArgb;
      
      private var §[!G§:ColorArgb;
      
      public function § "G§(param1:XML, param2:Texture)
      {
         this.§%B§(param1,param2);
         var _loc3_:Number = this.§?"2§ / (this.§]"=§ + this.§2A§);
         super(param2,_loc3_,this.§?"2§,§&!d§,§'!c§);
         §<!l§ = false;
      }
      
      public function get §8!n§() : int
      {
         return this.§?"2§;
      }
      
      override protected function createParticle() : §;!`§
      {
         return new PDParticle();
      }
      
      private function get §;"0§() : Boolean
      {
         return this.§8!n§ >= 20;
      }
      
      override protected function initParticle(param1:§;!`§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§]"=§ + this.§5"B§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§+V§ = 0;
         _loc2_.§#F§ = _loc3_;
         _loc2_.x = §%"D§ + this.§'!_§ * (Math.random() * 2 - 1);
         _loc2_.y = §9!J§ + this.§`!"§ * (Math.random() * 2 - 1);
         _loc2_.startX = §%"D§;
         _loc2_.startY = §9!J§;
         var _loc4_:Number = this.§2!^§ + this.§]T§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§^§ + this.§1L§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§?!c§ + this.§6!C§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§?!c§ / _loc3_;
         _loc2_.rotation = this.§2!^§ + this.§]T§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§%!5§ + this.§=!Y§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§!f§;
         _loc2_.tangentialAcceleration = this.§in§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§%"@§ + this.§9!"§ * _loc6_;
         if(!isNaN(this.§&"2§))
         {
            _loc8_ = this.§&"2§;
            if(!isNaN(this.§2!B§))
            {
               _loc8_ += this.§2!B§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§="0§ + this.§2b§ * _loc6_;
         if(!isNaN(this.§^!6§))
         {
            _loc10_ = this.§^!6§;
            if(!isNaN(this.§`"1§))
            {
               _loc10_ += this.§`"1§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§0,§.red;
         _loc11_.green = this.§0,§.green;
         _loc11_.blue = this.§0,§.blue;
         _loc11_.alpha = this.§0,§.alpha;
         if(this.§>o§.red != 0)
         {
            _loc11_.red += this.§>o§.red * (Math.random() * 2 - 1);
         }
         if(this.§>o§.green != 0)
         {
            _loc11_.green += this.§>o§.green * (Math.random() * 2 - 1);
         }
         if(this.§>o§.blue != 0)
         {
            _loc11_.blue += this.§>o§.blue * (Math.random() * 2 - 1);
         }
         if(this.§>o§.alpha != 0)
         {
            _loc11_.alpha += this.§>o§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§&!M§.red;
         var _loc14_:Number = this.§&!M§.green;
         var _loc15_:Number = this.§&!M§.blue;
         var _loc16_:Number = this.§&!M§.alpha;
         if(this.§[!G§.red != 0)
         {
            _loc13_ += this.§[!G§.red * (Math.random() * 2 - 1);
         }
         if(this.§[!G§.green != 0)
         {
            _loc14_ += this.§[!G§.green * (Math.random() * 2 - 1);
         }
         if(this.§[!G§.blue != 0)
         {
            _loc15_ += this.§[!G§.blue * (Math.random() * 2 - 1);
         }
         if(this.§[!G§.alpha != 0)
         {
            _loc16_ += this.§[!G§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§;!`§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§#F§ - _loc3_.§+V§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§+V§ += param2;
         if(this.§8!q§ == this.§6!D§)
         {
            if(!_loc3_.skipUpdate || !this.§;"0§)
            {
               if(this.§;"0§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §%"D§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §9!J§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§4p§)
               {
                  _loc3_.§+V§ = _loc3_.§#F§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§;"0§)
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
               if(this.§;"0§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§'6§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§%=§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§'6§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§%=§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§;"0§)
         {
            if(this.§;"0§)
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
      
      private function §%B§(param1:XML, param2:Texture) : void
      {
         this.§'!_§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§`!"§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§'6§ = parseFloat(param1.gravity.attribute("x"));
         this.§%=§ = parseFloat(param1.gravity.attribute("y"));
         this.§8!q§ = this.§!!E§(param1.emitterType);
         this.§?"2§ = this.§!!E§(param1.maxParticles);
         this.§]"=§ = Math.max(0.01,this.§]"?§(param1.particleLifeSpan));
         this.§5"B§ = this.§]"?§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§2A§ = this.§]"?§(param1.particleInterval);
         }
         else
         {
            this.§2A§ = 0;
         }
         this.§%"@§ = this.§]"?§(param1.startParticleSize);
         this.§="0§ = this.§%"@§ * param2.height / param2.width;
         this.§9!"§ = this.§]"?§(param1.startParticleSizeVariance);
         this.§2b§ = this.§9!"§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§%"@§ = this.§]"?§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§9!"§ = this.§]"?§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§="0§ = this.§]"?§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§2b§ = this.§]"?§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§&"2§ = this.§]"?§(param1.finishParticleSize);
            this.§^!6§ = this.§&"2§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§2!B§ = this.§]"?§(param1.FinishParticleSizeVariance);
            this.§`"1§ = this.§2!B§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§&"2§ = this.§]"?§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§2!B§ = this.§]"?§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§^!6§ = this.§]"?§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§`"1§ = this.§]"?§(param1.FinishParticleSizeVarianceY);
         }
         this.§2!^§ = deg2rad(this.§]"?§(param1.angle));
         this.§]T§ = deg2rad(this.§]"?§(param1.angleVariance));
         this.§^§ = this.§]"?§(param1.speed);
         this.§1L§ = this.§]"?§(param1.speedVariance);
         this.§!f§ = this.§]"?§(param1.radialAcceleration);
         this.§in§ = this.§]"?§(param1.tangentialAcceleration);
         this.§?!c§ = this.§]"?§(param1.maxRadius);
         this.§6!C§ = this.§]"?§(param1.maxRadiusVariance);
         this.§4p§ = this.§]"?§(param1.minRadius);
         this.§%!5§ = deg2rad(this.§]"?§(param1.rotatePerSecond));
         this.§=!Y§ = deg2rad(this.§]"?§(param1.rotatePerSecondVariance));
         this.§0,§ = this.§[w§(param1.startColor);
         this.§>o§ = this.§[w§(param1.startColorVariance);
         this.§&!M§ = this.§[w§(param1.finishColor);
         this.§[!G§ = this.§[w§(param1.finishColorVariance);
         §&!d§ = this.§6"+§(param1.blendFuncSource);
         §'!c§ = this.§6"+§(param1.blendFuncDestination);
         §'"5§ = this.§2!9§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            § !f§ = this.§]"?§(param1.emissionVariance);
         }
      }
      
      protected function §!!E§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]"?§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §2!<§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §[w§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §6"+§(param1:XMLList) : String
      {
         var _loc2_:int = this.§!!E§(param1);
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
      
      protected function §2!9§(param1:XMLList) : String
      {
         var _loc2_:String = this.§2!<§(param1);
         if(_loc2_ == §-!k§.§?F§ || _loc2_ == §-!k§.§+!%§ || _loc2_ == §-!k§.NONE)
         {
            return _loc2_;
         }
         return §-!k§.§?F§;
      }
   }
}

import §]K§.§;!`§;

class PDParticle extends §;!`§
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
