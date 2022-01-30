package §@N§
{
   import § !a§.§>a§;
   import § !a§.Texture;
   import §=D§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §2!i§ extends §?!V§
   {
       
      
      private const §[?§:int = 0;
      
      private const §1e§:int = 1;
      
      private var §%T§:Number;
      
      private var §&!D§:int;
      
      private var §&l§:Number;
      
      private var §9Y§:Number;
      
      private var §&2§:int;
      
      private var §]!r§:Number;
      
      private var §;C§:Number;
      
      private var §5n§:Number;
      
      private var §2j§:Number;
      
      private var §%!b§:Number;
      
      private var §7!"§:Number;
      
      private var §5!s§:Number;
      
      private var §2!I§:Number;
      
      private var §>J§:Number;
      
      private var §6U§:Number;
      
      private var §0e§:Number;
      
      private var §&n§:Number;
      
      private var §4!&§:Number;
      
      private var §!#§:Number;
      
      private var §^!d§:Number;
      
      private var §0!o§:Number;
      
      private var §[!B§:Number;
      
      private var §"!M§:Number;
      
      private var §7"4§:Number;
      
      private var §7!P§:Number;
      
      private var §=G§:Number;
      
      private var §5!O§:Number;
      
      private var §4!w§:Number;
      
      private var §=m§:Number;
      
      private var §#!]§:Number;
      
      private var §#D§:Number;
      
      private var §]i§:ColorArgb;
      
      private var §@!^§:ColorArgb;
      
      private var §!1§:ColorArgb;
      
      private var §=!C§:ColorArgb;
      
      public function §2!i§(param1:XML, param2:Texture)
      {
         this.§0"6§(param1,param2);
         var _loc3_:Number = this.§&2§ / (this.§]!r§ + this.§5n§);
         super(param2,_loc3_,this.§&2§,§#f§,§+!]§);
         §if § = false;
      }
      
      public function get §@!'§() : int
      {
         return this.§&2§;
      }
      
      override protected function createParticle() : §<d§
      {
         return new PDParticle();
      }
      
      private function get §5!F§() : Boolean
      {
         return this.§@!'§ >= 20;
      }
      
      override protected function initParticle(param1:§<d§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§]!r§ + this.§;C§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§'S§ = 0;
         _loc2_.§=0§ = _loc3_;
         _loc2_.x = §+!#§ + this.§&l§ * (Math.random() * 2 - 1);
         _loc2_.y = §'"!§ + this.§9Y§ * (Math.random() * 2 - 1);
         _loc2_.startX = §+!#§;
         _loc2_.startY = §'"!§;
         var _loc4_:Number = this.§&n§ + this.§4!&§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§!#§ + this.§^!d§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§5!O§ + this.§4!w§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§5!O§ / _loc3_;
         _loc2_.rotation = this.§&n§ + this.§4!&§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§#!]§ + this.§#D§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§"!M§;
         _loc2_.tangentialAcceleration = this.§7!P§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§2j§ + this.§%!b§ * _loc6_;
         if(!isNaN(this.§2!I§))
         {
            _loc8_ = this.§2!I§;
            if(!isNaN(this.§>J§))
            {
               _loc8_ += this.§>J§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§7!"§ + this.§5!s§ * _loc6_;
         if(!isNaN(this.§6U§))
         {
            _loc10_ = this.§6U§;
            if(!isNaN(this.§0e§))
            {
               _loc10_ += this.§0e§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§]i§.red;
         _loc11_.green = this.§]i§.green;
         _loc11_.blue = this.§]i§.blue;
         _loc11_.alpha = this.§]i§.alpha;
         if(this.§@!^§.red != 0)
         {
            _loc11_.red += this.§@!^§.red * (Math.random() * 2 - 1);
         }
         if(this.§@!^§.green != 0)
         {
            _loc11_.green += this.§@!^§.green * (Math.random() * 2 - 1);
         }
         if(this.§@!^§.blue != 0)
         {
            _loc11_.blue += this.§@!^§.blue * (Math.random() * 2 - 1);
         }
         if(this.§@!^§.alpha != 0)
         {
            _loc11_.alpha += this.§@!^§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§!1§.red;
         var _loc14_:Number = this.§!1§.green;
         var _loc15_:Number = this.§!1§.blue;
         var _loc16_:Number = this.§!1§.alpha;
         if(this.§=!C§.red != 0)
         {
            _loc13_ += this.§=!C§.red * (Math.random() * 2 - 1);
         }
         if(this.§=!C§.green != 0)
         {
            _loc14_ += this.§=!C§.green * (Math.random() * 2 - 1);
         }
         if(this.§=!C§.blue != 0)
         {
            _loc15_ += this.§=!C§.blue * (Math.random() * 2 - 1);
         }
         if(this.§=!C§.alpha != 0)
         {
            _loc16_ += this.§=!C§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§<d§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§=0§ - _loc3_.§'S§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§'S§ += param2;
         if(this.§&!D§ == this.§1e§)
         {
            if(!_loc3_.skipUpdate || !this.§5!F§)
            {
               if(this.§5!F§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §+!#§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §'"!§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§=m§)
               {
                  _loc3_.§'S§ = _loc3_.§=0§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§5!F§)
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
               if(this.§5!F§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§0!o§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§[!B§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§0!o§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§[!B§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§5!F§)
         {
            if(this.§5!F§)
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
      
      private function §0"6§(param1:XML, param2:Texture) : void
      {
         this.§&l§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§9Y§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§0!o§ = parseFloat(param1.gravity.attribute("x"));
         this.§[!B§ = parseFloat(param1.gravity.attribute("y"));
         this.§&!D§ = this.§9!!§(param1.emitterType);
         this.§&2§ = this.§9!!§(param1.maxParticles);
         this.§]!r§ = Math.max(0.01,this.§-K§(param1.particleLifeSpan));
         this.§;C§ = this.§-K§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§5n§ = this.§-K§(param1.particleInterval);
         }
         else
         {
            this.§5n§ = 0;
         }
         this.§2j§ = this.§-K§(param1.startParticleSize);
         this.§7!"§ = this.§2j§ * param2.height / param2.width;
         this.§%!b§ = this.§-K§(param1.startParticleSizeVariance);
         this.§5!s§ = this.§%!b§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§2j§ = this.§-K§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§%!b§ = this.§-K§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§7!"§ = this.§-K§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§5!s§ = this.§-K§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§2!I§ = this.§-K§(param1.finishParticleSize);
            this.§6U§ = this.§2!I§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§>J§ = this.§-K§(param1.FinishParticleSizeVariance);
            this.§0e§ = this.§>J§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§2!I§ = this.§-K§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§>J§ = this.§-K§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§6U§ = this.§-K§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§0e§ = this.§-K§(param1.FinishParticleSizeVarianceY);
         }
         this.§&n§ = deg2rad(this.§-K§(param1.angle));
         this.§4!&§ = deg2rad(this.§-K§(param1.angleVariance));
         this.§!#§ = this.§-K§(param1.speed);
         this.§^!d§ = this.§-K§(param1.speedVariance);
         this.§"!M§ = this.§-K§(param1.radialAcceleration);
         this.§7!P§ = this.§-K§(param1.tangentialAcceleration);
         this.§5!O§ = this.§-K§(param1.maxRadius);
         this.§4!w§ = this.§-K§(param1.maxRadiusVariance);
         this.§=m§ = this.§-K§(param1.minRadius);
         this.§#!]§ = deg2rad(this.§-K§(param1.rotatePerSecond));
         this.§#D§ = deg2rad(this.§-K§(param1.rotatePerSecondVariance));
         this.§]i§ = this.§9b§(param1.startColor);
         this.§@!^§ = this.§9b§(param1.startColorVariance);
         this.§!1§ = this.§9b§(param1.finishColor);
         this.§=!C§ = this.§9b§(param1.finishColorVariance);
         §#f§ = this.§9!b§(param1.blendFuncSource);
         §+!]§ = this.§9!b§(param1.blendFuncDestination);
         §9W§ = this.§7""§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §1!V§ = this.§-K§(param1.emissionVariance);
         }
      }
      
      protected function §9!!§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §-K§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §0w§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §9b§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §9!b§(param1:XMLList) : String
      {
         var _loc2_:int = this.§9!!§(param1);
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
      
      protected function §7""§(param1:XMLList) : String
      {
         var _loc2_:String = this.§0w§(param1);
         if(_loc2_ == §>a§.§4!k§ || _loc2_ == §>a§.§-!"§ || _loc2_ == §>a§.NONE)
         {
            return _loc2_;
         }
         return §>a§.§4!k§;
      }
   }
}

import §@N§.§<d§;

class PDParticle extends §<d§
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
