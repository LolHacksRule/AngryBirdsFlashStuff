package §?g§
{
   import §8!8§.deg2rad;
   import §?7§.§'!6§;
   import §?7§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §1!,§
   {
       
      
      private const §!"E§:int = 0;
      
      private const §5"8§:int = 1;
      
      private var §=P§:Number;
      
      private var §9!O§:int;
      
      private var §["!§:Number;
      
      private var §["1§:Number;
      
      private var §?;§:int;
      
      private var §,$§:Number;
      
      private var §#;§:Number;
      
      private var §"">§:Number;
      
      private var §4P§:Number;
      
      private var §9p§:Number;
      
      private var §%$§:Number;
      
      private var §+!G§:Number;
      
      private var §^!M§:Number;
      
      private var §@g§:Number;
      
      private var §#""§:Number;
      
      private var § "=§:Number;
      
      private var §4!x§:Number;
      
      private var §;!i§:Number;
      
      private var §3"=§:Number;
      
      private var §8x§:Number;
      
      private var §?6§:Number;
      
      private var §;!k§:Number;
      
      private var §^!l§:Number;
      
      private var § %§:Number;
      
      private var §&c§:Number;
      
      private var §>!c§:Number;
      
      private var override:Number;
      
      private var §>!k§:Number;
      
      private var §'u§:Number;
      
      private var §7!l§:Number;
      
      private var §8!x§:Number;
      
      private var §!!=§:ColorArgb;
      
      private var §]j§:ColorArgb;
      
      private var §>0§:ColorArgb;
      
      private var §5"K§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§1w§(param1,param2);
         var _loc3_:Number = this.§?;§ / (this.§,$§ + this.§"">§);
         super(param2,_loc3_,this.§?;§,§'d§,§5U§);
         §8-§ = false;
      }
      
      public function get §@"A§() : int
      {
         return this.§?;§;
      }
      
      override protected function createParticle() : §+4§
      {
         return new PDParticle();
      }
      
      private function get §6"6§() : Boolean
      {
         return this.§@"A§ >= 20;
      }
      
      override protected function initParticle(param1:§+4§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§,$§ + this.§#;§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§+X§ = 0;
         _loc2_.§=g§ = _loc3_;
         _loc2_.x = §9j§ + this.§["!§ * (Math.random() * 2 - 1);
         _loc2_.y = §!#§ + this.§["1§ * (Math.random() * 2 - 1);
         _loc2_.startX = §9j§;
         _loc2_.startY = §!#§;
         var _loc4_:Number = this.§4!x§ + this.§;!i§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§3"=§ + this.§8x§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.override + this.§>!k§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.override / _loc3_;
         _loc2_.rotation = this.§4!x§ + this.§;!i§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§7!l§ + this.§8!x§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§^!l§;
         _loc2_.tangentialAcceleration = this.§&c§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§4P§ + this.§9p§ * _loc6_;
         if(!isNaN(this.§^!M§))
         {
            _loc8_ = this.§^!M§;
            if(!isNaN(this.§@g§))
            {
               _loc8_ += this.§@g§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§%$§ + this.§+!G§ * _loc6_;
         if(!isNaN(this.§#""§))
         {
            _loc10_ = this.§#""§;
            if(!isNaN(this.§ "=§))
            {
               _loc10_ += this.§ "=§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§!!=§.red;
         _loc11_.green = this.§!!=§.green;
         _loc11_.blue = this.§!!=§.blue;
         _loc11_.alpha = this.§!!=§.alpha;
         if(this.§]j§.red != 0)
         {
            _loc11_.red += this.§]j§.red * (Math.random() * 2 - 1);
         }
         if(this.§]j§.green != 0)
         {
            _loc11_.green += this.§]j§.green * (Math.random() * 2 - 1);
         }
         if(this.§]j§.blue != 0)
         {
            _loc11_.blue += this.§]j§.blue * (Math.random() * 2 - 1);
         }
         if(this.§]j§.alpha != 0)
         {
            _loc11_.alpha += this.§]j§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§>0§.red;
         var _loc14_:Number = this.§>0§.green;
         var _loc15_:Number = this.§>0§.blue;
         var _loc16_:Number = this.§>0§.alpha;
         if(this.§5"K§.red != 0)
         {
            _loc13_ += this.§5"K§.red * (Math.random() * 2 - 1);
         }
         if(this.§5"K§.green != 0)
         {
            _loc14_ += this.§5"K§.green * (Math.random() * 2 - 1);
         }
         if(this.§5"K§.blue != 0)
         {
            _loc15_ += this.§5"K§.blue * (Math.random() * 2 - 1);
         }
         if(this.§5"K§.alpha != 0)
         {
            _loc16_ += this.§5"K§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§+4§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§=g§ - _loc3_.§+X§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§+X§ += param2;
         if(this.§9!O§ == this.§5"8§)
         {
            if(!_loc3_.skipUpdate || !this.§6"6§)
            {
               if(this.§6"6§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §9j§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §!#§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§'u§)
               {
                  _loc3_.§+X§ = _loc3_.§=g§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§6"6§)
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
               if(this.§6"6§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§?6§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§;!k§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§?6§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§;!k§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§6"6§)
         {
            if(this.§6"6§)
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
      
      private function §1w§(param1:XML, param2:Texture) : void
      {
         this.§["!§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§["1§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§?6§ = parseFloat(param1.gravity.attribute("x"));
         this.§;!k§ = parseFloat(param1.gravity.attribute("y"));
         this.§9!O§ = this.§ L§(param1.emitterType);
         this.§?;§ = this.§ L§(param1.maxParticles);
         this.§,$§ = Math.max(0.01,this.§^!w§(param1.particleLifeSpan));
         this.§#;§ = this.§^!w§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§"">§ = this.§^!w§(param1.particleInterval);
         }
         else
         {
            this.§"">§ = 0;
         }
         this.§4P§ = this.§^!w§(param1.startParticleSize);
         this.§%$§ = this.§4P§ * param2.height / param2.width;
         this.§9p§ = this.§^!w§(param1.startParticleSizeVariance);
         this.§+!G§ = this.§9p§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§4P§ = this.§^!w§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§9p§ = this.§^!w§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§%$§ = this.§^!w§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§+!G§ = this.§^!w§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§^!M§ = this.§^!w§(param1.finishParticleSize);
            this.§#""§ = this.§^!M§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§@g§ = this.§^!w§(param1.FinishParticleSizeVariance);
            this.§ "=§ = this.§@g§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§^!M§ = this.§^!w§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§@g§ = this.§^!w§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§#""§ = this.§^!w§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§ "=§ = this.§^!w§(param1.FinishParticleSizeVarianceY);
         }
         this.§4!x§ = deg2rad(this.§^!w§(param1.angle));
         this.§;!i§ = deg2rad(this.§^!w§(param1.angleVariance));
         this.§3"=§ = this.§^!w§(param1.speed);
         this.§8x§ = this.§^!w§(param1.speedVariance);
         this.§^!l§ = this.§^!w§(param1.radialAcceleration);
         this.§&c§ = this.§^!w§(param1.tangentialAcceleration);
         this.override = this.§^!w§(param1.maxRadius);
         this.§>!k§ = this.§^!w§(param1.maxRadiusVariance);
         this.§'u§ = this.§^!w§(param1.minRadius);
         this.§7!l§ = deg2rad(this.§^!w§(param1.rotatePerSecond));
         this.§8!x§ = deg2rad(this.§^!w§(param1.rotatePerSecondVariance));
         this.§!!=§ = this.§^Z§(param1.startColor);
         this.§]j§ = this.§^Z§(param1.startColorVariance);
         this.§>0§ = this.§^Z§(param1.finishColor);
         this.§5"K§ = this.§^Z§(param1.finishColorVariance);
         §'d§ = this.§&0§(param1.blendFuncSource);
         §5U§ = this.§&0§(param1.blendFuncDestination);
         §[<§ = this.§9!-§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §,#§ = this.§^!w§(param1.emissionVariance);
         }
      }
      
      protected function § L§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §^!w§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §2b§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §^Z§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §&0§(param1:XMLList) : String
      {
         var _loc2_:int = this.§ L§(param1);
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
      
      protected function §9!-§(param1:XMLList) : String
      {
         var _loc2_:String = this.§2b§(param1);
         if(_loc2_ == §'!6§.§!!6§ || _loc2_ == §'!6§.§,j§ || _loc2_ == §'!6§.NONE)
         {
            return _loc2_;
         }
         return §'!6§.§!!6§;
      }
   }
}

import §?g§.§+4§;

class PDParticle extends §+4§
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
