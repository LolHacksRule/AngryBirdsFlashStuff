package §?!c§
{
   import §^z§.§&!q§;
   import §^z§.Texture;
   import §`!"§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §+T§ extends §do §
   {
       
      
      private const §7!j§:int = 0;
      
      private const §<E§:int = 1;
      
      private var §0Q§:Number;
      
      private var §8S§:int;
      
      private var §+!5§:Number;
      
      private var §8"1§:Number;
      
      private var §3!X§:int;
      
      private var §=!q§:Number;
      
      private var §0!^§:Number;
      
      private var §25§:Number;
      
      private var §4!L§:Number;
      
      private var §=0§:Number;
      
      private var §""5§:Number;
      
      private var §#&§:Number;
      
      private var §'!H§:Number;
      
      private var §,$§:Number;
      
      private var §"K§:Number;
      
      private var §9"3§:Number;
      
      private var §[i§:Number;
      
      private var §[`§:Number;
      
      private var §0!c§:Number;
      
      private var §9V§:Number;
      
      private var §22§:Number;
      
      private var §@=§:Number;
      
      private var §&d§:Number;
      
      private var §#"'§:Number;
      
      private var §?A§:Number;
      
      private var §>!D§:Number;
      
      private var §?!T§:Number;
      
      private var §9-§:Number;
      
      private var §#!_§:Number;
      
      private var §2"%§:Number;
      
      private var §;!K§:Number;
      
      private var §&b§:ColorArgb;
      
      private var §?q§:ColorArgb;
      
      private var §6&§:ColorArgb;
      
      private var §?!#§:ColorArgb;
      
      public function §+T§(param1:XML, param2:Texture)
      {
         this.§'#§(param1,param2);
         var _loc3_:Number = this.§3!X§ / (this.§=!q§ + this.§25§);
         super(param2,_loc3_,this.§3!X§,§;2§,§,!z§);
         §;!d§ = false;
      }
      
      public function get §"!]§() : int
      {
         return this.§3!X§;
      }
      
      override protected function createParticle() : §<!'§
      {
         return new PDParticle();
      }
      
      private function get §[B§() : Boolean
      {
         return this.§"!]§ >= 20;
      }
      
      override protected function initParticle(param1:§<!'§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§=!q§ + this.§0!^§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§^!&§ = 0;
         _loc2_.§+!v§ = _loc3_;
         _loc2_.x = §6" § + this.§+!5§ * (Math.random() * 2 - 1);
         _loc2_.y = §6!2§ + this.§8"1§ * (Math.random() * 2 - 1);
         _loc2_.startX = §6" §;
         _loc2_.startY = §6!2§;
         var _loc4_:Number = this.§[i§ + this.§[`§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§0!c§ + this.§9V§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§?!T§ + this.§9-§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§?!T§ / _loc3_;
         _loc2_.rotation = this.§[i§ + this.§[`§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§2"%§ + this.§;!K§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§&d§;
         _loc2_.tangentialAcceleration = this.§?A§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§4!L§ + this.§=0§ * _loc6_;
         if(!isNaN(this.§'!H§))
         {
            _loc8_ = this.§'!H§;
            if(!isNaN(this.§,$§))
            {
               _loc8_ += this.§,$§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§""5§ + this.§#&§ * _loc6_;
         if(!isNaN(this.§"K§))
         {
            _loc10_ = this.§"K§;
            if(!isNaN(this.§9"3§))
            {
               _loc10_ += this.§9"3§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§&b§.red;
         _loc11_.green = this.§&b§.green;
         _loc11_.blue = this.§&b§.blue;
         _loc11_.alpha = this.§&b§.alpha;
         if(this.§?q§.red != 0)
         {
            _loc11_.red += this.§?q§.red * (Math.random() * 2 - 1);
         }
         if(this.§?q§.green != 0)
         {
            _loc11_.green += this.§?q§.green * (Math.random() * 2 - 1);
         }
         if(this.§?q§.blue != 0)
         {
            _loc11_.blue += this.§?q§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?q§.alpha != 0)
         {
            _loc11_.alpha += this.§?q§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§6&§.red;
         var _loc14_:Number = this.§6&§.green;
         var _loc15_:Number = this.§6&§.blue;
         var _loc16_:Number = this.§6&§.alpha;
         if(this.§?!#§.red != 0)
         {
            _loc13_ += this.§?!#§.red * (Math.random() * 2 - 1);
         }
         if(this.§?!#§.green != 0)
         {
            _loc14_ += this.§?!#§.green * (Math.random() * 2 - 1);
         }
         if(this.§?!#§.blue != 0)
         {
            _loc15_ += this.§?!#§.blue * (Math.random() * 2 - 1);
         }
         if(this.§?!#§.alpha != 0)
         {
            _loc16_ += this.§?!#§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§<!'§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§+!v§ - _loc3_.§^!&§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§^!&§ += param2;
         if(this.§8S§ == this.§<E§)
         {
            if(!_loc3_.skipUpdate || !this.§[B§)
            {
               if(this.§[B§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §6" § - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §6!2§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§#!_§)
               {
                  _loc3_.§^!&§ = _loc3_.§+!v§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§[B§)
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
               if(this.§[B§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§22§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§@=§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§22§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§@=§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§[B§)
         {
            if(this.§[B§)
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
      
      private function §'#§(param1:XML, param2:Texture) : void
      {
         this.§+!5§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§8"1§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§22§ = parseFloat(param1.gravity.attribute("x"));
         this.§@=§ = parseFloat(param1.gravity.attribute("y"));
         this.§8S§ = this.§^"&§(param1.emitterType);
         this.§3!X§ = this.§^"&§(param1.maxParticles);
         this.§=!q§ = Math.max(0.01,this.§'V§(param1.particleLifeSpan));
         this.§0!^§ = this.§'V§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§25§ = this.§'V§(param1.particleInterval);
         }
         else
         {
            this.§25§ = 0;
         }
         this.§4!L§ = this.§'V§(param1.startParticleSize);
         this.§""5§ = this.§4!L§ * param2.height / param2.width;
         this.§=0§ = this.§'V§(param1.startParticleSizeVariance);
         this.§#&§ = this.§=0§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§4!L§ = this.§'V§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§=0§ = this.§'V§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§""5§ = this.§'V§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§#&§ = this.§'V§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§'!H§ = this.§'V§(param1.finishParticleSize);
            this.§"K§ = this.§'!H§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§,$§ = this.§'V§(param1.FinishParticleSizeVariance);
            this.§9"3§ = this.§,$§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§'!H§ = this.§'V§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§,$§ = this.§'V§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§"K§ = this.§'V§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§9"3§ = this.§'V§(param1.FinishParticleSizeVarianceY);
         }
         this.§[i§ = deg2rad(this.§'V§(param1.angle));
         this.§[`§ = deg2rad(this.§'V§(param1.angleVariance));
         this.§0!c§ = this.§'V§(param1.speed);
         this.§9V§ = this.§'V§(param1.speedVariance);
         this.§&d§ = this.§'V§(param1.radialAcceleration);
         this.§?A§ = this.§'V§(param1.tangentialAcceleration);
         this.§?!T§ = this.§'V§(param1.maxRadius);
         this.§9-§ = this.§'V§(param1.maxRadiusVariance);
         this.§#!_§ = this.§'V§(param1.minRadius);
         this.§2"%§ = deg2rad(this.§'V§(param1.rotatePerSecond));
         this.§;!K§ = deg2rad(this.§'V§(param1.rotatePerSecondVariance));
         this.§&b§ = this.§=#§(param1.startColor);
         this.§?q§ = this.§=#§(param1.startColorVariance);
         this.§6&§ = this.§=#§(param1.finishColor);
         this.§?!#§ = this.§=#§(param1.finishColorVariance);
         §;2§ = this.§?!y§(param1.blendFuncSource);
         §,!z§ = this.§?!y§(param1.blendFuncDestination);
         §^&§ = this.§5!c§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §`p§ = this.§'V§(param1.emissionVariance);
         }
      }
      
      protected function §^"&§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §'V§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §!!k§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §=#§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §?!y§(param1:XMLList) : String
      {
         var _loc2_:int = this.§^"&§(param1);
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
      
      protected function §5!c§(param1:XMLList) : String
      {
         var _loc2_:String = this.§!!k§(param1);
         if(_loc2_ == §&!q§.§2"2§ || _loc2_ == §&!q§.§2"1§ || _loc2_ == §&!q§.NONE)
         {
            return _loc2_;
         }
         return §&!q§.§2"2§;
      }
   }
}

import §?!c§.§<!'§;

class PDParticle extends §<!'§
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
