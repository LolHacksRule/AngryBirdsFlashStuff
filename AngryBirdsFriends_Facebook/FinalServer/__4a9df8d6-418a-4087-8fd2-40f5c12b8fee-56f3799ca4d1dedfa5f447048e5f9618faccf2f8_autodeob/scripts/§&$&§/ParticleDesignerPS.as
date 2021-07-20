package §&$&§
{
   import §"#z§.Texture;
   import §,#=§.deg2rad;
   import §6#H§.§<O§;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends ParticleSystem
   {
       
      
      private const §7"i§:int = 0;
      
      private const §?#@§:int = 1;
      
      private var §!_§:Number;
      
      private var §-">§:int;
      
      private var §7#X§:Number;
      
      private var §^$"§:Number;
      
      private var §2!8§:int;
      
      private var §>J§:Number;
      
      private var §@"1§:Number;
      
      private var §4$#§:Number;
      
      private var §[5§:Number;
      
      private var §'!b§:Number;
      
      private var §!#T§:Number;
      
      private var §2$4§:Number;
      
      private var §?"F§:Number;
      
      private var §7$<§:Number;
      
      private var §]#+§:Number;
      
      private var § '§:Number;
      
      private var § #e§:Number;
      
      private var §0U§:Number;
      
      private var §4"W§:Number;
      
      private var §>"?§:Number;
      
      private var §for§:Number;
      
      private var §#'§:Number;
      
      private var §!"=§:Number;
      
      private var §2N§:Number;
      
      private var § "x§:Number;
      
      private var §-$6§:Number;
      
      private var §5!g§:Number;
      
      private var §<"N§:Number;
      
      private var §""v§:Number;
      
      private var §-#F§:Number;
      
      private var §9"I§:Number;
      
      private var §@H§:ColorArgb;
      
      private var §package§:ColorArgb;
      
      private var §2#^§:ColorArgb;
      
      private var §`!r§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§7"s§(param1,param2);
         var _loc3_:Number = this.§2!8§ / (this.§>J§ + this.§4$#§);
         super(param2,_loc3_,this.§2!8§,§`#3§,§1<§);
         §9! § = false;
      }
      
      public function get §,!g§() : int
      {
         return this.§2!8§;
      }
      
      override protected function createParticle() : §^"^§
      {
         return new PDParticle();
      }
      
      private function get §-c§() : Boolean
      {
         return this.§,!g§ >= 20;
      }
      
      override protected function initParticle(param1:§^"^§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§>J§ + this.§@"1§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§7"A§ = 0;
         _loc2_.§!E§ = _loc3_;
         _loc2_.x = §'`§ + this.§7#X§ * (Math.random() * 2 - 1);
         _loc2_.y = §6#r§ + this.§^$"§ * (Math.random() * 2 - 1);
         _loc2_.startX = §'`§;
         _loc2_.startY = §6#r§;
         var _loc4_:Number = this.§ #e§ + this.§0U§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§4"W§ + this.§>"?§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§5!g§ + this.§<"N§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§5!g§ / _loc3_;
         _loc2_.rotation = this.§ #e§ + this.§0U§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§-#F§ + this.§9"I§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§!"=§;
         _loc2_.tangentialAcceleration = this.§ "x§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§[5§ + this.§'!b§ * _loc6_;
         if(!isNaN(this.§?"F§))
         {
            _loc8_ = this.§?"F§;
            if(!isNaN(this.§7$<§))
            {
               _loc8_ += this.§7$<§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§!#T§ + this.§2$4§ * _loc6_;
         if(!isNaN(this.§]#+§))
         {
            _loc10_ = this.§]#+§;
            if(!isNaN(this.§ '§))
            {
               _loc10_ += this.§ '§ * (Math.random() * 2 - 1);
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
         _loc2_.red = this.§@H§.red;
         _loc2_.green = this.§@H§.green;
         _loc2_.blue = this.§@H§.blue;
         _loc2_.alpha = this.§@H§.alpha;
         if(this.§package§.red != 0)
         {
            _loc2_.red += this.§package§.red * (Math.random() * 2 - 1);
         }
         if(this.§package§.green != 0)
         {
            _loc2_.green += this.§package§.green * (Math.random() * 2 - 1);
         }
         if(this.§package§.blue != 0)
         {
            _loc2_.blue += this.§package§.blue * (Math.random() * 2 - 1);
         }
         if(this.§package§.alpha != 0)
         {
            _loc2_.alpha += this.§package§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§2#^§.red;
         var _loc13_:Number = this.§2#^§.green;
         var _loc14_:Number = this.§2#^§.blue;
         var _loc15_:Number = this.§2#^§.alpha;
         if(this.§`!r§.red != 0)
         {
            _loc12_ += this.§`!r§.red * (Math.random() * 2 - 1);
         }
         if(this.§`!r§.green != 0)
         {
            _loc13_ += this.§`!r§.green * (Math.random() * 2 - 1);
         }
         if(this.§`!r§.blue != 0)
         {
            _loc14_ += this.§`!r§.blue * (Math.random() * 2 - 1);
         }
         if(this.§`!r§.alpha != 0)
         {
            _loc15_ += this.§`!r§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc2_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc2_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc2_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc2_.alpha) / _loc3_;
         _loc2_.hasColorDelta = _loc11_.red || _loc11_.green || _loc11_.blue || _loc11_.alpha;
         if(_loc2_.hasColorDelta)
         {
            §["y§ = true;
         }
      }
      
      override protected function advanceParticle(param1:§^"^§, param2:Number) : void
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
         param2 = (_loc4_ = Number(_loc3_.§!E§ - _loc3_.§7"A§)) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§7"A§ += param2;
         if(this.§-">§ == this.§?#@§)
         {
            if(!_loc3_.skipUpdate || !this.§-c§)
            {
               if(this.§-c§)
               {
                  param2 *= 2;
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
               _loc3_.radius -= _loc3_.radiusDelta * param2;
               _loc3_.x = §'`§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §6#r§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§""v§)
               {
                  _loc3_.§7"A§ = _loc3_.§!E§;
               }
            }
         }
         else
         {
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
            if(this.§-c§)
            {
               param2 *= 2;
            }
            if(!_loc3_.skipUpdate || !this.§-c§)
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
                  _loc3_.velocityX += param2 * (this.§for§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§#'§ + _loc9_ + _loc11_);
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§for§ + _loc8_);
                  _loc3_.velocityY += param2 * (this.§#'§ + _loc9_);
               }
               _loc3_.rotation += _loc3_.rotationDelta * param2;
            }
         }
         if(!_loc3_.skipUpdate || !this.§-c§)
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
      
      private function §7"s§(param1:XML, param2:Texture) : void
      {
         this.§7#X§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^$"§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§for§ = parseFloat(param1.gravity.attribute("x"));
         this.§#'§ = parseFloat(param1.gravity.attribute("y"));
         this.§-">§ = this.§ X§(param1.emitterType);
         this.§2!8§ = this.§ X§(param1.maxParticles);
         this.§>J§ = Math.max(0.01,this.§#3§(param1.particleLifeSpan));
         this.§@"1§ = this.§#3§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§4$#§ = this.§#3§(param1.particleInterval);
         }
         else
         {
            this.§4$#§ = 0;
         }
         this.§[5§ = this.§#3§(param1.startParticleSize);
         this.§!#T§ = this.§[5§ * param2.height / param2.width;
         this.§'!b§ = this.§#3§(param1.startParticleSizeVariance);
         this.§2$4§ = this.§'!b§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§[5§ = this.§#3§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§'!b§ = this.§#3§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§!#T§ = this.§#3§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§2$4§ = this.§#3§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§?"F§ = this.§#3§(param1.finishParticleSize);
            this.§]#+§ = this.§?"F§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§7$<§ = this.§#3§(param1.FinishParticleSizeVariance);
            this.§ '§ = this.§7$<§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§?"F§ = this.§#3§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§7$<§ = this.§#3§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§]#+§ = this.§#3§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§ '§ = this.§#3§(param1.FinishParticleSizeVarianceY);
         }
         this.§ #e§ = deg2rad(this.§#3§(param1.angle));
         this.§0U§ = deg2rad(this.§#3§(param1.angleVariance));
         this.§4"W§ = this.§#3§(param1.speed);
         this.§>"?§ = this.§#3§(param1.speedVariance);
         this.§!"=§ = this.§#3§(param1.radialAcceleration);
         this.§ "x§ = this.§#3§(param1.tangentialAcceleration);
         this.§5!g§ = this.§#3§(param1.maxRadius);
         this.§<"N§ = this.§#3§(param1.maxRadiusVariance);
         this.§""v§ = this.§#3§(param1.minRadius);
         this.§-#F§ = deg2rad(this.§#3§(param1.rotatePerSecond));
         this.§9"I§ = deg2rad(this.§#3§(param1.rotatePerSecondVariance));
         this.§@H§ = this.§?y§(param1.startColor);
         this.§package§ = this.§?y§(param1.startColorVariance);
         this.§2#^§ = this.§?y§(param1.finishColor);
         this.§`!r§ = this.§?y§(param1.finishColorVariance);
         §`#3§ = this.§@!f§(param1.blendFuncSource);
         §1<§ = this.§@!f§(param1.blendFuncDestination);
         §?$4§ = this.§["I§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §5!h§ = this.§#3§(param1.emissionVariance);
         }
      }
      
      protected function § X§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §#3§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §-" §(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §?y§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §@!f§(param1:XMLList) : String
      {
         var _loc2_:int = this.§ X§(param1);
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
      
      protected function §["I§(param1:XMLList) : int
      {
         var _loc2_:String = this.§-" §(param1);
         if(_loc2_ == "none")
         {
         }
         if(_loc2_ == "trilinear")
         {
         }
         return §<O§.§6!4§;
      }
   }
}

import §&$&§.§^"^§;

class PDParticle extends §^"^§
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
