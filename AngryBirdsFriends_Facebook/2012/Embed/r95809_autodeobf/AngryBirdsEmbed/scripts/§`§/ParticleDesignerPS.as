package §`§
{
   import §&!7§.§"`§;
   import §&!7§.Texture;
   import §<§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §?!G§
   {
       
      
      private const §2T§:int = 0;
      
      private const §`b§:int = 1;
      
      private var §!_§:Number;
      
      private var §7!!§:int;
      
      private var §`3§:Number;
      
      private var §3b§:Number;
      
      private var §'Z§:int;
      
      private var §,j§:Number;
      
      private var §+!9§:Number;
      
      private var §]W§:Number;
      
      private var §]d§:Number;
      
      private var §!&§:Number;
      
      private var §=!<§:Number;
      
      private var §,-§:Number;
      
      private var §1!"§:Number;
      
      private var §]n§:Number;
      
      private var §+G§:Number;
      
      private var §>!1§:Number;
      
      private var §8j§:Number;
      
      private var §,#§:Number;
      
      private var §"!§:Number;
      
      private var §%?§:Number;
      
      private var §@!7§:Number;
      
      private var §8!A§:Number;
      
      private var §>!#§:Number;
      
      private var §^c§:Number;
      
      private var §5T§:Number;
      
      private var §?[§:Number;
      
      private var §"c§:Number;
      
      private var §"x§:Number;
      
      private var §5g§:Number;
      
      private var §?!6§:Number;
      
      private var §;T§:Number;
      
      private var §#B§:ColorArgb;
      
      private var static:ColorArgb;
      
      private var §?c§:ColorArgb;
      
      private var §^! §:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§ ;§(param1,param2);
         var _loc3_:Number = this.§'Z§ / (this.§,j§ + this.§]W§);
         super(param2,_loc3_,this.§'Z§,§4!8§,§,8§);
         §'i§ = false;
      }
      
      public function get §?k§() : int
      {
         return this.§'Z§;
      }
      
      override protected function createParticle() : §#m§
      {
         return new PDParticle();
      }
      
      private function get §3!;§() : Boolean
      {
         return this.§?k§ >= 20;
      }
      
      override protected function initParticle(param1:§#m§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§,j§ + this.§+!9§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§?r§ = _loc3_;
         _loc2_.x = §#5§ + this.§`3§ * (Math.random() * 2 - 1);
         _loc2_.y = §^q§ + this.§3b§ * (Math.random() * 2 - 1);
         _loc2_.startX = §#5§;
         _loc2_.startY = §^q§;
         var _loc4_:Number = this.§8j§ + this.§,#§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§"!§ + this.§%?§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§"c§ + this.§"x§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§"c§ / _loc3_;
         _loc2_.rotation = this.§8j§ + this.§,#§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§?!6§ + this.§;T§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§>!#§;
         _loc2_.tangentialAcceleration = this.§5T§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§]d§ + this.§!&§ * _loc6_;
         if(!isNaN(this.§1!"§))
         {
            _loc8_ = this.§1!"§;
            if(!isNaN(this.§]n§))
            {
               _loc8_ += this.§]n§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§=!<§ + this.§,-§ * _loc6_;
         if(!isNaN(this.§+G§))
         {
            _loc10_ = this.§+G§;
            if(!isNaN(this.§>!1§))
            {
               _loc10_ += this.§>!1§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§#B§.red;
         _loc11_.green = this.§#B§.green;
         _loc11_.blue = this.§#B§.blue;
         _loc11_.alpha = this.§#B§.alpha;
         if(this.static.red != 0)
         {
            _loc11_.red += this.static.red * (Math.random() * 2 - 1);
         }
         if(this.static.green != 0)
         {
            _loc11_.green += this.static.green * (Math.random() * 2 - 1);
         }
         if(this.static.blue != 0)
         {
            _loc11_.blue += this.static.blue * (Math.random() * 2 - 1);
         }
         if(this.static.alpha != 0)
         {
            _loc11_.alpha += this.static.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§?c§.red;
         var _loc14_:Number = this.§?c§.green;
         var _loc15_:Number = this.§?c§.blue;
         var _loc16_:Number = this.§?c§.alpha;
         if(this.§^! §.red != 0)
         {
            _loc13_ += this.§^! §.red * (Math.random() * 2 - 1);
         }
         if(this.§^! §.green != 0)
         {
            _loc14_ += this.§^! §.green * (Math.random() * 2 - 1);
         }
         if(this.§^! §.blue != 0)
         {
            _loc15_ += this.§^! §.blue * (Math.random() * 2 - 1);
         }
         if(this.§^! §.alpha != 0)
         {
            _loc16_ += this.§^! §.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§#m§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§?r§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§7!!§ == this.§`b§)
         {
            if(!_loc3_.skipUpdate || !this.§3!;§)
            {
               if(this.§3!;§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §#5§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §^q§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§5g§)
               {
                  _loc3_.currentTime = _loc3_.§?r§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§3!;§)
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
               if(this.§3!;§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§@!7§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§8!A§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§@!7§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§8!A§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§3!;§)
         {
            if(this.§3!;§)
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
      
      private function § ;§(param1:XML, param2:Texture) : void
      {
         this.§`3§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§3b§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§@!7§ = parseFloat(param1.gravity.attribute("x"));
         this.§8!A§ = parseFloat(param1.gravity.attribute("y"));
         this.§7!!§ = this.§;0§(param1.emitterType);
         this.§'Z§ = this.§;0§(param1.maxParticles);
         this.§,j§ = Math.max(0.01,this.§%]§(param1.particleLifeSpan));
         this.§+!9§ = this.§%]§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§]W§ = this.§%]§(param1.particleInterval);
         }
         else
         {
            this.§]W§ = 0;
         }
         this.§]d§ = this.§%]§(param1.startParticleSize);
         this.§=!<§ = this.§]d§ * param2.height / param2.width;
         this.§!&§ = this.§%]§(param1.startParticleSizeVariance);
         this.§,-§ = this.§!&§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§]d§ = this.§%]§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§!&§ = this.§%]§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§=!<§ = this.§%]§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§,-§ = this.§%]§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§1!"§ = this.§%]§(param1.finishParticleSize);
            this.§+G§ = this.§1!"§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§]n§ = this.§%]§(param1.FinishParticleSizeVariance);
            this.§>!1§ = this.§]n§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§1!"§ = this.§%]§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§]n§ = this.§%]§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§+G§ = this.§%]§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§>!1§ = this.§%]§(param1.FinishParticleSizeVarianceY);
         }
         this.§8j§ = deg2rad(this.§%]§(param1.angle));
         this.§,#§ = deg2rad(this.§%]§(param1.angleVariance));
         this.§"!§ = this.§%]§(param1.speed);
         this.§%?§ = this.§%]§(param1.speedVariance);
         this.§>!#§ = this.§%]§(param1.radialAcceleration);
         this.§5T§ = this.§%]§(param1.tangentialAcceleration);
         this.§"c§ = this.§%]§(param1.maxRadius);
         this.§"x§ = this.§%]§(param1.maxRadiusVariance);
         this.§5g§ = this.§%]§(param1.minRadius);
         this.§?!6§ = deg2rad(this.§%]§(param1.rotatePerSecond));
         this.§;T§ = deg2rad(this.§%]§(param1.rotatePerSecondVariance));
         this.§#B§ = this.§<`§(param1.startColor);
         this.static = this.§<`§(param1.startColorVariance);
         this.§?c§ = this.§<`§(param1.finishColor);
         this.§^! § = this.§<`§(param1.finishColorVariance);
         §4!8§ = this.§`H§(param1.blendFuncSource);
         §,8§ = this.§`H§(param1.blendFuncDestination);
         §7]§ = this.§>4§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §7l§ = this.§%]§(param1.emissionVariance);
         }
      }
      
      protected function §;0§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §%]§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §8s§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<`§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §`H§(param1:XMLList) : String
      {
         var _loc2_:int = this.§;0§(param1);
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
      
      protected function §>4§(param1:XMLList) : String
      {
         var _loc2_:String = this.§8s§(param1);
         if(_loc2_ == §"`§.§ !=§ || _loc2_ == §"`§.§&!"§ || _loc2_ == §"`§.NONE)
         {
            return _loc2_;
         }
         return §"`§.§ !=§;
      }
   }
}

import §`§.§#m§;

class PDParticle extends §#m§
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
