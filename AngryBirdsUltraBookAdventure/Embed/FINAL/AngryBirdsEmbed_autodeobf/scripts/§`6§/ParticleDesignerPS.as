package §`6§
{
   import §'j§.deg2rad;
   import §0! §.§ case§;
   import §0! §.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §&U§
   {
       
      
      private const §2t§:int = 0;
      
      private const §1b§:int = 1;
      
      private var §9G§:Number;
      
      private var §8!E§:int;
      
      private var §0!;§:Number;
      
      private var §^!3§:Number;
      
      private var §07§:int;
      
      private var §<n§:Number;
      
      private var §!t§:Number;
      
      private var §6C§:Number;
      
      private var §7! §:Number;
      
      private var §59§:Number;
      
      private var §%r§:Number;
      
      private var §^p§:Number;
      
      private var §2'§:Number;
      
      private var §[v§:Number;
      
      private var §3!&§:Number;
      
      private var §48§:Number;
      
      private var §5!M§:Number;
      
      private var §'A§:Number;
      
      private var §5!G§:Number;
      
      private var §+U§:Number;
      
      private var §4a§:Number;
      
      private var §>!§:Number;
      
      private var §2!0§:Number;
      
      private var §1!#§:Number;
      
      private var §58§:Number;
      
      private var §&!§:Number;
      
      private var §7;§:Number;
      
      private var § if§:Number;
      
      private var §'!#§:Number;
      
      private var §&P§:Number;
      
      private var §!S§:Number;
      
      private var §43§:ColorArgb;
      
      private var §^Z§:ColorArgb;
      
      private var §?!I§:ColorArgb;
      
      private var §"t§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§,2§(param1,param2);
         var _loc3_:Number = this.§07§ / (this.§<n§ + this.§6C§);
         super(param2,_loc3_,this.§07§,§@s§,§"k§);
         §7R§ = false;
      }
      
      public function get §`+§() : int
      {
         return this.§07§;
      }
      
      override protected function createParticle() : §61§
      {
         return new PDParticle();
      }
      
      private function get §6@§() : Boolean
      {
         return this.§`+§ >= 20;
      }
      
      override protected function initParticle(param1:§61§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§<n§ + this.§!t§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§9t§ = _loc3_;
         _loc2_.x = §@m§ + this.§0!;§ * (Math.random() * 2 - 1);
         _loc2_.y = §1!F§ + this.§^!3§ * (Math.random() * 2 - 1);
         _loc2_.startX = §@m§;
         _loc2_.startY = §1!F§;
         var _loc4_:Number = this.§5!M§ + this.§'A§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§5!G§ + this.§+U§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§7;§ + this.§ if§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§7;§ / _loc3_;
         _loc2_.rotation = this.§5!M§ + this.§'A§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§&P§ + this.§!S§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§2!0§;
         _loc2_.tangentialAcceleration = this.§58§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§7! § + this.§59§ * _loc6_;
         if(!isNaN(this.§2'§))
         {
            _loc8_ = this.§2'§;
            if(!isNaN(this.§[v§))
            {
               _loc8_ += this.§[v§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§%r§ + this.§^p§ * _loc6_;
         if(!isNaN(this.§3!&§))
         {
            _loc10_ = this.§3!&§;
            if(!isNaN(this.§48§))
            {
               _loc10_ += this.§48§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§43§.red;
         _loc11_.green = this.§43§.green;
         _loc11_.blue = this.§43§.blue;
         _loc11_.alpha = this.§43§.alpha;
         if(this.§^Z§.red != 0)
         {
            _loc11_.red += this.§^Z§.red * (Math.random() * 2 - 1);
         }
         if(this.§^Z§.green != 0)
         {
            _loc11_.green += this.§^Z§.green * (Math.random() * 2 - 1);
         }
         if(this.§^Z§.blue != 0)
         {
            _loc11_.blue += this.§^Z§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^Z§.alpha != 0)
         {
            _loc11_.alpha += this.§^Z§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§?!I§.red;
         var _loc14_:Number = this.§?!I§.green;
         var _loc15_:Number = this.§?!I§.blue;
         var _loc16_:Number = this.§?!I§.alpha;
         if(this.§"t§.red != 0)
         {
            _loc13_ += this.§"t§.red * (Math.random() * 2 - 1);
         }
         if(this.§"t§.green != 0)
         {
            _loc14_ += this.§"t§.green * (Math.random() * 2 - 1);
         }
         if(this.§"t§.blue != 0)
         {
            _loc15_ += this.§"t§.blue * (Math.random() * 2 - 1);
         }
         if(this.§"t§.alpha != 0)
         {
            _loc16_ += this.§"t§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§61§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§9t§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§8!E§ == this.§1b§)
         {
            if(!_loc3_.skipUpdate || !this.§6@§)
            {
               if(this.§6@§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §@m§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §1!F§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§'!#§)
               {
                  _loc3_.currentTime = _loc3_.§9t§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§6@§)
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
               if(this.§6@§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§4a§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§>!§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§4a§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§>!§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§6@§)
         {
            if(this.§6@§)
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
      
      private function §,2§(param1:XML, param2:Texture) : void
      {
         this.§0!;§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^!3§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§4a§ = parseFloat(param1.gravity.attribute("x"));
         this.§>!§ = parseFloat(param1.gravity.attribute("y"));
         this.§8!E§ = this.§+n§(param1.emitterType);
         this.§07§ = this.§+n§(param1.maxParticles);
         this.§<n§ = Math.max(0.01,this.§&§(param1.particleLifeSpan));
         this.§!t§ = this.§&§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§6C§ = this.§&§(param1.particleInterval);
         }
         else
         {
            this.§6C§ = 0;
         }
         this.§7! § = this.§&§(param1.startParticleSize);
         this.§%r§ = this.§7! § * param2.height / param2.width;
         this.§59§ = this.§&§(param1.startParticleSizeVariance);
         this.§^p§ = this.§59§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§7! § = this.§&§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§59§ = this.§&§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§%r§ = this.§&§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§^p§ = this.§&§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§2'§ = this.§&§(param1.finishParticleSize);
            this.§3!&§ = this.§2'§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§[v§ = this.§&§(param1.FinishParticleSizeVariance);
            this.§48§ = this.§[v§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§2'§ = this.§&§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§[v§ = this.§&§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§3!&§ = this.§&§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§48§ = this.§&§(param1.FinishParticleSizeVarianceY);
         }
         this.§5!M§ = deg2rad(this.§&§(param1.angle));
         this.§'A§ = deg2rad(this.§&§(param1.angleVariance));
         this.§5!G§ = this.§&§(param1.speed);
         this.§+U§ = this.§&§(param1.speedVariance);
         this.§2!0§ = this.§&§(param1.radialAcceleration);
         this.§58§ = this.§&§(param1.tangentialAcceleration);
         this.§7;§ = this.§&§(param1.maxRadius);
         this.§ if§ = this.§&§(param1.maxRadiusVariance);
         this.§'!#§ = this.§&§(param1.minRadius);
         this.§&P§ = deg2rad(this.§&§(param1.rotatePerSecond));
         this.§!S§ = deg2rad(this.§&§(param1.rotatePerSecondVariance));
         this.§43§ = this.§+!#§(param1.startColor);
         this.§^Z§ = this.§+!#§(param1.startColorVariance);
         this.§?!I§ = this.§+!#§(param1.finishColor);
         this.§"t§ = this.§+!#§(param1.finishColorVariance);
         §@s§ = this.§>!6§(param1.blendFuncSource);
         §"k§ = this.§>!6§(param1.blendFuncDestination);
         §#E§ = this.§&!F§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §]!?§ = this.§&§(param1.emissionVariance);
         }
      }
      
      protected function §+n§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §&§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §"D§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+!#§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §>!6§(param1:XMLList) : String
      {
         var _loc2_:int = this.§+n§(param1);
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
      
      protected function §&!F§(param1:XMLList) : String
      {
         var _loc2_:String = this.§"D§(param1);
         if(_loc2_ == § case§.§@§ || _loc2_ == § case§.§ 6§ || _loc2_ == § case§.NONE)
         {
            return _loc2_;
         }
         return § case§.§@§;
      }
   }
}

import §`6§.§61§;

class PDParticle extends §61§
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
