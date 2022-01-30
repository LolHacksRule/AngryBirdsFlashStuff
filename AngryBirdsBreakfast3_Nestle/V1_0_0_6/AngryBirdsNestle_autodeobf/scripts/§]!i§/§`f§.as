package §]!i§
{
   import §-$§.deg2rad;
   import §?V§.§@A§;
   import §?V§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §`f§ extends §0""§
   {
       
      
      private const §<6§:int = 0;
      
      private const §,G§:int = 1;
      
      private var §-S§:Number;
      
      private var §6"&§:int;
      
      private var §?c§:Number;
      
      private var §;o§:Number;
      
      private var §'!l§:int;
      
      private var §>B§:Number;
      
      private var §^5§:Number;
      
      private var §!!m§:Number;
      
      private var §4X§:Number;
      
      private var §1!2§:Number;
      
      private var §5W§:Number;
      
      private var §]S§:Number;
      
      private var §^V§:Number;
      
      private var §0>§:Number;
      
      private var §<I§:Number;
      
      private var §'s§:Number;
      
      private var §4a§:Number;
      
      private var §14§:Number;
      
      private var §;!3§:Number;
      
      private var §[]§:Number;
      
      private var §1z§:Number;
      
      private var §`b§:Number;
      
      private var §[!1§:Number;
      
      private var §7!5§:Number;
      
      private var §^>§:Number;
      
      private var §>![§:Number;
      
      private var §;"!§:Number;
      
      private var §0!w§:Number;
      
      private var §2$§:Number;
      
      private var §<!h§:Number;
      
      private var §3[§:Number;
      
      private var §9!Q§:ColorArgb;
      
      private var §=M§:ColorArgb;
      
      private var §%?§:ColorArgb;
      
      private var §,&§:ColorArgb;
      
      public function §`f§(param1:XML, param2:Texture)
      {
         this.§0!R§(param1,param2);
         var _loc3_:Number = this.§'!l§ / (this.§>B§ + this.§!!m§);
         super(param2,_loc3_,this.§'!l§,§@!L§,§?!,§);
         §>P§ = false;
      }
      
      public function get §&"1§() : int
      {
         return this.§'!l§;
      }
      
      override protected function createParticle() : § "'§
      {
         return new PDParticle();
      }
      
      private function get §^!i§() : Boolean
      {
         return this.§&"1§ >= 20;
      }
      
      override protected function initParticle(param1:§ "'§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§>B§ + this.§^5§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§%!d§ = 0;
         _loc2_.§'!M§ = _loc3_;
         _loc2_.x = §=!6§ + this.§?c§ * (Math.random() * 2 - 1);
         _loc2_.y = §%!P§ + this.§;o§ * (Math.random() * 2 - 1);
         _loc2_.startX = §=!6§;
         _loc2_.startY = §%!P§;
         var _loc4_:Number = this.§4a§ + this.§14§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§;!3§ + this.§[]§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§;"!§ + this.§0!w§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§;"!§ / _loc3_;
         _loc2_.rotation = this.§4a§ + this.§14§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§<!h§ + this.§3[§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§[!1§;
         _loc2_.tangentialAcceleration = this.§^>§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§4X§ + this.§1!2§ * _loc6_;
         if(!isNaN(this.§^V§))
         {
            _loc8_ = this.§^V§;
            if(!isNaN(this.§0>§))
            {
               _loc8_ += this.§0>§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§5W§ + this.§]S§ * _loc6_;
         if(!isNaN(this.§<I§))
         {
            _loc10_ = this.§<I§;
            if(!isNaN(this.§'s§))
            {
               _loc10_ += this.§'s§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§9!Q§.red;
         _loc11_.green = this.§9!Q§.green;
         _loc11_.blue = this.§9!Q§.blue;
         _loc11_.alpha = this.§9!Q§.alpha;
         if(this.§=M§.red != 0)
         {
            _loc11_.red += this.§=M§.red * (Math.random() * 2 - 1);
         }
         if(this.§=M§.green != 0)
         {
            _loc11_.green += this.§=M§.green * (Math.random() * 2 - 1);
         }
         if(this.§=M§.blue != 0)
         {
            _loc11_.blue += this.§=M§.blue * (Math.random() * 2 - 1);
         }
         if(this.§=M§.alpha != 0)
         {
            _loc11_.alpha += this.§=M§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§%?§.red;
         var _loc14_:Number = this.§%?§.green;
         var _loc15_:Number = this.§%?§.blue;
         var _loc16_:Number = this.§%?§.alpha;
         if(this.§,&§.red != 0)
         {
            _loc13_ += this.§,&§.red * (Math.random() * 2 - 1);
         }
         if(this.§,&§.green != 0)
         {
            _loc14_ += this.§,&§.green * (Math.random() * 2 - 1);
         }
         if(this.§,&§.blue != 0)
         {
            _loc15_ += this.§,&§.blue * (Math.random() * 2 - 1);
         }
         if(this.§,&§.alpha != 0)
         {
            _loc16_ += this.§,&§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§ "'§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§'!M§ - _loc3_.§%!d§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§%!d§ += param2;
         if(this.§6"&§ == this.§,G§)
         {
            if(!_loc3_.skipUpdate || !this.§^!i§)
            {
               if(this.§^!i§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=!6§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §%!P§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§2$§)
               {
                  _loc3_.§%!d§ = _loc3_.§'!M§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§^!i§)
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
               if(this.§^!i§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§1z§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`b§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§1z§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`b§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§^!i§)
         {
            if(this.§^!i§)
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
      
      private function §0!R§(param1:XML, param2:Texture) : void
      {
         this.§?c§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§;o§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§1z§ = parseFloat(param1.gravity.attribute("x"));
         this.§`b§ = parseFloat(param1.gravity.attribute("y"));
         this.§6"&§ = this.§4""§(param1.emitterType);
         this.§'!l§ = this.§4""§(param1.maxParticles);
         this.§>B§ = Math.max(0.01,this.§];§(param1.particleLifeSpan));
         this.§^5§ = this.§];§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§!!m§ = this.§];§(param1.particleInterval);
         }
         else
         {
            this.§!!m§ = 0;
         }
         this.§4X§ = this.§];§(param1.startParticleSize);
         this.§5W§ = this.§4X§ * param2.height / param2.width;
         this.§1!2§ = this.§];§(param1.startParticleSizeVariance);
         this.§]S§ = this.§1!2§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§4X§ = this.§];§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§1!2§ = this.§];§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§5W§ = this.§];§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§]S§ = this.§];§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§^V§ = this.§];§(param1.finishParticleSize);
            this.§<I§ = this.§^V§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§0>§ = this.§];§(param1.FinishParticleSizeVariance);
            this.§'s§ = this.§0>§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§^V§ = this.§];§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§0>§ = this.§];§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§<I§ = this.§];§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§'s§ = this.§];§(param1.FinishParticleSizeVarianceY);
         }
         this.§4a§ = deg2rad(this.§];§(param1.angle));
         this.§14§ = deg2rad(this.§];§(param1.angleVariance));
         this.§;!3§ = this.§];§(param1.speed);
         this.§[]§ = this.§];§(param1.speedVariance);
         this.§[!1§ = this.§];§(param1.radialAcceleration);
         this.§^>§ = this.§];§(param1.tangentialAcceleration);
         this.§;"!§ = this.§];§(param1.maxRadius);
         this.§0!w§ = this.§];§(param1.maxRadiusVariance);
         this.§2$§ = this.§];§(param1.minRadius);
         this.§<!h§ = deg2rad(this.§];§(param1.rotatePerSecond));
         this.§3[§ = deg2rad(this.§];§(param1.rotatePerSecondVariance));
         this.§9!Q§ = this.§,!X§(param1.startColor);
         this.§=M§ = this.§,!X§(param1.startColorVariance);
         this.§%?§ = this.§,!X§(param1.finishColor);
         this.§,&§ = this.§,!X§(param1.finishColorVariance);
         §@!L§ = this.§;r§(param1.blendFuncSource);
         §?!,§ = this.§;r§(param1.blendFuncDestination);
         §["§ = this.§3l§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §[!n§ = this.§];§(param1.emissionVariance);
         }
      }
      
      protected function §4""§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §];§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §8-§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §,!X§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §;r§(param1:XMLList) : String
      {
         var _loc2_:int = this.§4""§(param1);
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
      
      protected function §3l§(param1:XMLList) : String
      {
         var _loc2_:String = this.§8-§(param1);
         if(_loc2_ == §@A§.§,9§ || _loc2_ == §@A§.§[!b§ || _loc2_ == §@A§.NONE)
         {
            return _loc2_;
         }
         return §@A§.§,9§;
      }
   }
}

import §]!i§.§ "'§;

class PDParticle extends § "'§
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
