package §-!A§
{
   import §#!`§.§@!&§;
   import §#!`§.Texture;
   import §@u§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §^K§ extends §9!B§
   {
       
      
      private const §0p§:int = 0;
      
      private const §5a§:int = 1;
      
      private var §1n§:Number;
      
      private var § use§:int;
      
      private var §&!T§:Number;
      
      private var §^b§:Number;
      
      private var §9! §:int;
      
      private var §9W§:Number;
      
      private var §>!3§:Number;
      
      private var §[9§:Number;
      
      private var §,!"§:Number;
      
      private var §`&§:Number;
      
      private var §3!`§:Number;
      
      private var §]S§:Number;
      
      private var §+0§:Number;
      
      private var §-2§:Number;
      
      private var §`!<§:Number;
      
      private var §#'§:Number;
      
      private var §6!$§:Number;
      
      private var §;[§:Number;
      
      private var §0k§:Number;
      
      private var §<N§:Number;
      
      private var §=9§:Number;
      
      private var §%p§:Number;
      
      private var §?n§:Number;
      
      private var §##§:Number;
      
      private var §9!Q§:Number;
      
      private var §'!"§:Number;
      
      private var §`w§:Number;
      
      private var §2!&§:Number;
      
      private var §'!A§:Number;
      
      private var §>E§:Number;
      
      private var §>!§:Number;
      
      private var §&Z§:ColorArgb;
      
      private var §+!X§:ColorArgb;
      
      private var §&!=§:ColorArgb;
      
      private var §&f§:ColorArgb;
      
      public function §^K§(param1:XML, param2:Texture)
      {
         this.§,C§(param1,param2);
         var _loc3_:Number = this.§9! § / (this.§9W§ + this.§[9§);
         super(param2,_loc3_,this.§9! §,§1!?§,§],§);
         §;!W§ = false;
      }
      
      public function get §1!1§() : int
      {
         return this.§9! §;
      }
      
      override protected function createParticle() : §@!4§
      {
         return new PDParticle();
      }
      
      private function get §[h§() : Boolean
      {
         return this.§1!1§ >= 20;
      }
      
      override protected function initParticle(param1:§@!4§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§9W§ + this.§>!3§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§;!?§ = 0;
         _loc2_.§94§ = _loc3_;
         _loc2_.x = §3-§ + this.§&!T§ * (Math.random() * 2 - 1);
         _loc2_.y = §#G§ + this.§^b§ * (Math.random() * 2 - 1);
         _loc2_.startX = §3-§;
         _loc2_.startY = §#G§;
         var _loc4_:Number = this.§6!$§ + this.§;[§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§0k§ + this.§<N§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§`w§ + this.§2!&§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§`w§ / _loc3_;
         _loc2_.rotation = this.§6!$§ + this.§;[§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§>E§ + this.§>!§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§?n§;
         _loc2_.tangentialAcceleration = this.§9!Q§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§,!"§ + this.§`&§ * _loc6_;
         if(!isNaN(this.§+0§))
         {
            _loc8_ = this.§+0§;
            if(!isNaN(this.§-2§))
            {
               _loc8_ += this.§-2§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§3!`§ + this.§]S§ * _loc6_;
         if(!isNaN(this.§`!<§))
         {
            _loc10_ = this.§`!<§;
            if(!isNaN(this.§#'§))
            {
               _loc10_ += this.§#'§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§&Z§.red;
         _loc11_.green = this.§&Z§.green;
         _loc11_.blue = this.§&Z§.blue;
         _loc11_.alpha = this.§&Z§.alpha;
         if(this.§+!X§.red != 0)
         {
            _loc11_.red += this.§+!X§.red * (Math.random() * 2 - 1);
         }
         if(this.§+!X§.green != 0)
         {
            _loc11_.green += this.§+!X§.green * (Math.random() * 2 - 1);
         }
         if(this.§+!X§.blue != 0)
         {
            _loc11_.blue += this.§+!X§.blue * (Math.random() * 2 - 1);
         }
         if(this.§+!X§.alpha != 0)
         {
            _loc11_.alpha += this.§+!X§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§&!=§.red;
         var _loc14_:Number = this.§&!=§.green;
         var _loc15_:Number = this.§&!=§.blue;
         var _loc16_:Number = this.§&!=§.alpha;
         if(this.§&f§.red != 0)
         {
            _loc13_ += this.§&f§.red * (Math.random() * 2 - 1);
         }
         if(this.§&f§.green != 0)
         {
            _loc14_ += this.§&f§.green * (Math.random() * 2 - 1);
         }
         if(this.§&f§.blue != 0)
         {
            _loc15_ += this.§&f§.blue * (Math.random() * 2 - 1);
         }
         if(this.§&f§.alpha != 0)
         {
            _loc16_ += this.§&f§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§@!4§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§94§ - _loc3_.§;!?§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§;!?§ += param2;
         if(this.§ use§ == this.§5a§)
         {
            if(!_loc3_.skipUpdate || !this.§[h§)
            {
               if(this.§[h§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §3-§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §#G§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§'!A§)
               {
                  _loc3_.§;!?§ = _loc3_.§94§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§[h§)
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
               if(this.§[h§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§=9§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§%p§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§=9§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§%p§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§[h§)
         {
            if(this.§[h§)
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
      
      private function §,C§(param1:XML, param2:Texture) : void
      {
         this.§&!T§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§^b§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§=9§ = parseFloat(param1.gravity.attribute("x"));
         this.§%p§ = parseFloat(param1.gravity.attribute("y"));
         this.§ use§ = this.§+b§(param1.emitterType);
         this.§9! § = this.§+b§(param1.maxParticles);
         this.§9W§ = Math.max(0.01,this.§<B§(param1.particleLifeSpan));
         this.§>!3§ = this.§<B§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§[9§ = this.§<B§(param1.particleInterval);
         }
         else
         {
            this.§[9§ = 0;
         }
         this.§,!"§ = this.§<B§(param1.startParticleSize);
         this.§3!`§ = this.§,!"§ * param2.height / param2.width;
         this.§`&§ = this.§<B§(param1.startParticleSizeVariance);
         this.§]S§ = this.§`&§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§,!"§ = this.§<B§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§`&§ = this.§<B§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§3!`§ = this.§<B§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§]S§ = this.§<B§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§+0§ = this.§<B§(param1.finishParticleSize);
            this.§`!<§ = this.§+0§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§-2§ = this.§<B§(param1.FinishParticleSizeVariance);
            this.§#'§ = this.§-2§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§+0§ = this.§<B§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§-2§ = this.§<B§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§`!<§ = this.§<B§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§#'§ = this.§<B§(param1.FinishParticleSizeVarianceY);
         }
         this.§6!$§ = deg2rad(this.§<B§(param1.angle));
         this.§;[§ = deg2rad(this.§<B§(param1.angleVariance));
         this.§0k§ = this.§<B§(param1.speed);
         this.§<N§ = this.§<B§(param1.speedVariance);
         this.§?n§ = this.§<B§(param1.radialAcceleration);
         this.§9!Q§ = this.§<B§(param1.tangentialAcceleration);
         this.§`w§ = this.§<B§(param1.maxRadius);
         this.§2!&§ = this.§<B§(param1.maxRadiusVariance);
         this.§'!A§ = this.§<B§(param1.minRadius);
         this.§>E§ = deg2rad(this.§<B§(param1.rotatePerSecond));
         this.§>!§ = deg2rad(this.§<B§(param1.rotatePerSecondVariance));
         this.§&Z§ = this.§]!E§(param1.startColor);
         this.§+!X§ = this.§]!E§(param1.startColorVariance);
         this.§&!=§ = this.§]!E§(param1.finishColor);
         this.§&f§ = this.§]!E§(param1.finishColorVariance);
         §1!?§ = this.§+!U§(param1.blendFuncSource);
         §],§ = this.§+!U§(param1.blendFuncDestination);
         §7Q§ = this.§;!$§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §2A§ = this.§<B§(param1.emissionVariance);
         }
      }
      
      protected function §+b§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §<B§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function § Y§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §]!E§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §+!U§(param1:XMLList) : String
      {
         var _loc2_:int = this.§+b§(param1);
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
      
      protected function §;!$§(param1:XMLList) : String
      {
         var _loc2_:String = this.§ Y§(param1);
         if(_loc2_ == §@!&§.§]!6§ || _loc2_ == §@!&§.§[e§ || _loc2_ == §@!&§.NONE)
         {
            return _loc2_;
         }
         return §@!&§.§]!6§;
      }
   }
}

import §-!A§.§@!4§;

class PDParticle extends §@!4§
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
