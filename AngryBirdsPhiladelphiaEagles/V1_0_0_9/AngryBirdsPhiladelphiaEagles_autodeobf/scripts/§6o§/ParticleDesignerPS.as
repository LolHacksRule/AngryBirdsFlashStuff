package §6o§
{
   import §,]§.§#!K§;
   import §,]§.Texture;
   import §5D§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §!!$§
   {
       
      
      private const §3S§:int = 0;
      
      private const §[!G§:int = 1;
      
      private var §6!N§:Number;
      
      private var §0r§:int;
      
      private var §`-§:Number;
      
      private var §#§:Number;
      
      private var §8X§:int;
      
      private var §'G§:Number;
      
      private var §>7§:Number;
      
      private var §4t§:Number;
      
      private var §case §:Number;
      
      private var §^g§:Number;
      
      private var §#A§:Number;
      
      private var §?!+§:Number;
      
      private var §;!6§:Number;
      
      private var §&h§:Number;
      
      private var §<!!§:Number;
      
      private var §1!$§:Number;
      
      private var §1t§:Number;
      
      private var §!&§:Number;
      
      private var §2!P§:Number;
      
      private var §+!§:Number;
      
      private var §!!#§:Number;
      
      private var §^A§:Number;
      
      private var §&!-§:Number;
      
      private var §<]§:Number;
      
      private var §0"§:Number;
      
      private var §1p§:Number;
      
      private var §!!8§:Number;
      
      private var §[L§:Number;
      
      private var §]%§:Number;
      
      private var §7K§:Number;
      
      private var §#!§:Number;
      
      private var §8d§:ColorArgb;
      
      private var §1%§:ColorArgb;
      
      private var §<7§:ColorArgb;
      
      private var §+!-§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§+J§(param1,param2);
         var _loc3_:Number = this.§8X§ / (this.§'G§ + this.§4t§);
         super(param2,_loc3_,this.§8X§,§=!=§,§"X§);
         §^8§ = false;
      }
      
      public function get §?W§() : int
      {
         return this.§8X§;
      }
      
      override protected function createParticle() : §9!I§
      {
         return new PDParticle();
      }
      
      private function get §5!+§() : Boolean
      {
         return this.§?W§ >= 20;
      }
      
      override protected function initParticle(param1:§9!I§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§'G§ + this.§>7§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§5V§ = 0;
         _loc2_.§1!H§ = _loc3_;
         _loc2_.x = § W§ + this.§`-§ * (Math.random() * 2 - 1);
         _loc2_.y = §9!"§ + this.§#§ * (Math.random() * 2 - 1);
         _loc2_.startX = § W§;
         _loc2_.startY = §9!"§;
         var _loc4_:Number = this.§1t§ + this.§!&§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§2!P§ + this.§+!§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§!!8§ + this.§[L§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§!!8§ / _loc3_;
         _loc2_.rotation = this.§1t§ + this.§!&§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§7K§ + this.§#!§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§&!-§;
         _loc2_.tangentialAcceleration = this.§0"§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§case § + this.§^g§ * _loc6_;
         if(!isNaN(this.§;!6§))
         {
            _loc8_ = this.§;!6§;
            if(!isNaN(this.§&h§))
            {
               _loc8_ += this.§&h§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§#A§ + this.§?!+§ * _loc6_;
         if(!isNaN(this.§<!!§))
         {
            _loc10_ = this.§<!!§;
            if(!isNaN(this.§1!$§))
            {
               _loc10_ += this.§1!$§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§8d§.red;
         _loc11_.green = this.§8d§.green;
         _loc11_.blue = this.§8d§.blue;
         _loc11_.alpha = this.§8d§.alpha;
         if(this.§1%§.red != 0)
         {
            _loc11_.red += this.§1%§.red * (Math.random() * 2 - 1);
         }
         if(this.§1%§.green != 0)
         {
            _loc11_.green += this.§1%§.green * (Math.random() * 2 - 1);
         }
         if(this.§1%§.blue != 0)
         {
            _loc11_.blue += this.§1%§.blue * (Math.random() * 2 - 1);
         }
         if(this.§1%§.alpha != 0)
         {
            _loc11_.alpha += this.§1%§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§<7§.red;
         var _loc14_:Number = this.§<7§.green;
         var _loc15_:Number = this.§<7§.blue;
         var _loc16_:Number = this.§<7§.alpha;
         if(this.§+!-§.red != 0)
         {
            _loc13_ += this.§+!-§.red * (Math.random() * 2 - 1);
         }
         if(this.§+!-§.green != 0)
         {
            _loc14_ += this.§+!-§.green * (Math.random() * 2 - 1);
         }
         if(this.§+!-§.blue != 0)
         {
            _loc15_ += this.§+!-§.blue * (Math.random() * 2 - 1);
         }
         if(this.§+!-§.alpha != 0)
         {
            _loc16_ += this.§+!-§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§9!I§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§1!H§ - _loc3_.§5V§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§5V§ += param2;
         if(this.§0r§ == this.§[!G§)
         {
            if(!_loc3_.skipUpdate || !this.§5!+§)
            {
               if(this.§5!+§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = § W§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §9!"§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§]%§)
               {
                  _loc3_.§5V§ = _loc3_.§1!H§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§5!+§)
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
               if(this.§5!+§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§!!#§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§^A§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§!!#§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§^A§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§5!+§)
         {
            if(this.§5!+§)
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
      
      private function §+J§(param1:XML, param2:Texture) : void
      {
         this.§`-§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§#§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§!!#§ = parseFloat(param1.gravity.attribute("x"));
         this.§^A§ = parseFloat(param1.gravity.attribute("y"));
         this.§0r§ = this.§<!$§(param1.emitterType);
         this.§8X§ = this.§<!$§(param1.maxParticles);
         this.§'G§ = Math.max(0.01,this.§0!2§(param1.particleLifeSpan));
         this.§>7§ = this.§0!2§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§4t§ = this.§0!2§(param1.particleInterval);
         }
         else
         {
            this.§4t§ = 0;
         }
         this.§case § = this.§0!2§(param1.startParticleSize);
         this.§#A§ = this.§case § * param2.height / param2.width;
         this.§^g§ = this.§0!2§(param1.startParticleSizeVariance);
         this.§?!+§ = this.§^g§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§case § = this.§0!2§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§^g§ = this.§0!2§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§#A§ = this.§0!2§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§?!+§ = this.§0!2§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§;!6§ = this.§0!2§(param1.finishParticleSize);
            this.§<!!§ = this.§;!6§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§&h§ = this.§0!2§(param1.FinishParticleSizeVariance);
            this.§1!$§ = this.§&h§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§;!6§ = this.§0!2§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§&h§ = this.§0!2§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§<!!§ = this.§0!2§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§1!$§ = this.§0!2§(param1.FinishParticleSizeVarianceY);
         }
         this.§1t§ = deg2rad(this.§0!2§(param1.angle));
         this.§!&§ = deg2rad(this.§0!2§(param1.angleVariance));
         this.§2!P§ = this.§0!2§(param1.speed);
         this.§+!§ = this.§0!2§(param1.speedVariance);
         this.§&!-§ = this.§0!2§(param1.radialAcceleration);
         this.§0"§ = this.§0!2§(param1.tangentialAcceleration);
         this.§!!8§ = this.§0!2§(param1.maxRadius);
         this.§[L§ = this.§0!2§(param1.maxRadiusVariance);
         this.§]%§ = this.§0!2§(param1.minRadius);
         this.§7K§ = deg2rad(this.§0!2§(param1.rotatePerSecond));
         this.§#!§ = deg2rad(this.§0!2§(param1.rotatePerSecondVariance));
         this.§8d§ = this.§null§(param1.startColor);
         this.§1%§ = this.§null§(param1.startColorVariance);
         this.§<7§ = this.§null§(param1.finishColor);
         this.§+!-§ = this.§null§(param1.finishColorVariance);
         §=!=§ = this.§^a§(param1.blendFuncSource);
         §"X§ = this.§^a§(param1.blendFuncDestination);
         §;!0§ = this.§=!;§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §^v§ = this.§0!2§(param1.emissionVariance);
         }
      }
      
      protected function §<!$§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §0!2§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §;x§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §null§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §^a§(param1:XMLList) : String
      {
         var _loc2_:int = this.§<!$§(param1);
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
      
      protected function §=!;§(param1:XMLList) : String
      {
         var _loc2_:String = this.§;x§(param1);
         if(_loc2_ == §#!K§.§>!J§ || _loc2_ == §#!K§.§6"§ || _loc2_ == §#!K§.NONE)
         {
            return _loc2_;
         }
         return §#!K§.§>!J§;
      }
   }
}

import §6o§.§9!I§;

class PDParticle extends §9!I§
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
