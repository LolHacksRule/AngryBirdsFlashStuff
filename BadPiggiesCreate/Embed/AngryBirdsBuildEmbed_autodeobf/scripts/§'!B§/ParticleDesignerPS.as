package §'!B§
{
   import §0!-§.§89§;
   import §0!-§.Texture;
   import §6x§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §;V§
   {
       
      
      private const § !=§:int = 0;
      
      private const § #§:int = 1;
      
      private var §5!8§:Number;
      
      private var §`!5§:int;
      
      private var §1!1§:Number;
      
      private var §+!2§:Number;
      
      private var §0!n§:int;
      
      private var §#!h§:Number;
      
      private var §32§:Number;
      
      private var §`!+§:Number;
      
      private var §9!O§:Number;
      
      private var §^W§:Number;
      
      private var §1!9§:Number;
      
      private var §0n§:Number;
      
      private var §^!n§:Number;
      
      private var §?!b§:Number;
      
      private var §?!C§:Number;
      
      private var §,!V§:Number;
      
      private var §`2§:Number;
      
      private var §7![§:Number;
      
      private var § 2§:Number;
      
      private var §!]§:Number;
      
      private var §1!c§:Number;
      
      private var §4$§:Number;
      
      private var §]!%§:Number;
      
      private var §9,§:Number;
      
      private var §%!S§:Number;
      
      private var §5!m§:Number;
      
      private var §&F§:Number;
      
      private var §-v§:Number;
      
      private var §3!8§:Number;
      
      private var §[!!§:Number;
      
      private var §8!S§:Number;
      
      private var §,!G§:ColorArgb;
      
      private var §^!b§:ColorArgb;
      
      private var §8!J§:ColorArgb;
      
      private var §4!9§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§%!7§(param1,param2);
         var _loc3_:Number = this.§0!n§ / (this.§#!h§ + this.§`!+§);
         super(param2,_loc3_,this.§0!n§,§;!J§,§@V§);
         §2!'§ = false;
      }
      
      public function get §;!N§() : int
      {
         return this.§0!n§;
      }
      
      override protected function createParticle() : §+!Q§
      {
         return new PDParticle();
      }
      
      private function get §-M§() : Boolean
      {
         return this.§;!N§ >= 20;
      }
      
      override protected function initParticle(param1:§+!Q§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§#!h§ + this.§32§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.currentTime = 0;
         _loc2_.§=W§ = _loc3_;
         _loc2_.x = §<!t§ + this.§1!1§ * (Math.random() * 2 - 1);
         _loc2_.y = §+J§ + this.§+!2§ * (Math.random() * 2 - 1);
         _loc2_.startX = §<!t§;
         _loc2_.startY = §+J§;
         var _loc4_:Number = this.§`2§ + this.§7![§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§ 2§ + this.§!]§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§&F§ + this.§-v§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§&F§ / _loc3_;
         _loc2_.rotation = this.§`2§ + this.§7![§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§[!!§ + this.§8!S§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§]!%§;
         _loc2_.tangentialAcceleration = this.§%!S§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§9!O§ + this.§^W§ * _loc6_;
         if(!isNaN(this.§^!n§))
         {
            _loc8_ = this.§^!n§;
            if(!isNaN(this.§?!b§))
            {
               _loc8_ += this.§?!b§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§1!9§ + this.§0n§ * _loc6_;
         if(!isNaN(this.§?!C§))
         {
            _loc10_ = this.§?!C§;
            if(!isNaN(this.§,!V§))
            {
               _loc10_ += this.§,!V§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§,!G§.red;
         _loc11_.green = this.§,!G§.green;
         _loc11_.blue = this.§,!G§.blue;
         _loc11_.alpha = this.§,!G§.alpha;
         if(this.§^!b§.red != 0)
         {
            _loc11_.red += this.§^!b§.red * (Math.random() * 2 - 1);
         }
         if(this.§^!b§.green != 0)
         {
            _loc11_.green += this.§^!b§.green * (Math.random() * 2 - 1);
         }
         if(this.§^!b§.blue != 0)
         {
            _loc11_.blue += this.§^!b§.blue * (Math.random() * 2 - 1);
         }
         if(this.§^!b§.alpha != 0)
         {
            _loc11_.alpha += this.§^!b§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§8!J§.red;
         var _loc14_:Number = this.§8!J§.green;
         var _loc15_:Number = this.§8!J§.blue;
         var _loc16_:Number = this.§8!J§.alpha;
         if(this.§4!9§.red != 0)
         {
            _loc13_ += this.§4!9§.red * (Math.random() * 2 - 1);
         }
         if(this.§4!9§.green != 0)
         {
            _loc14_ += this.§4!9§.green * (Math.random() * 2 - 1);
         }
         if(this.§4!9§.blue != 0)
         {
            _loc15_ += this.§4!9§.blue * (Math.random() * 2 - 1);
         }
         if(this.§4!9§.alpha != 0)
         {
            _loc16_ += this.§4!9§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§+!Q§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§=W§ - _loc3_.currentTime) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.currentTime += param2;
         if(this.§`!5§ == this.§ #§)
         {
            if(!_loc3_.skipUpdate || !this.§-M§)
            {
               if(this.§-M§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §<!t§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §+J§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§3!8§)
               {
                  _loc3_.currentTime = _loc3_.§=W§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§-M§)
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
               if(this.§-M§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§1!c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§4$§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§1!c§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§4$§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§-M§)
         {
            if(this.§-M§)
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
      
      private function §%!7§(param1:XML, param2:Texture) : void
      {
         this.§1!1§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§+!2§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§1!c§ = parseFloat(param1.gravity.attribute("x"));
         this.§4$§ = parseFloat(param1.gravity.attribute("y"));
         this.§`!5§ = this.§?U§(param1.emitterType);
         this.§0!n§ = this.§?U§(param1.maxParticles);
         this.§#!h§ = Math.max(0.01,this.§>o§(param1.particleLifeSpan));
         this.§32§ = this.§>o§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§`!+§ = this.§>o§(param1.particleInterval);
         }
         else
         {
            this.§`!+§ = 0;
         }
         this.§9!O§ = this.§>o§(param1.startParticleSize);
         this.§1!9§ = this.§9!O§ * param2.height / param2.width;
         this.§^W§ = this.§>o§(param1.startParticleSizeVariance);
         this.§0n§ = this.§^W§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§9!O§ = this.§>o§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§^W§ = this.§>o§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§1!9§ = this.§>o§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§0n§ = this.§>o§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§^!n§ = this.§>o§(param1.finishParticleSize);
            this.§?!C§ = this.§^!n§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§?!b§ = this.§>o§(param1.FinishParticleSizeVariance);
            this.§,!V§ = this.§?!b§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§^!n§ = this.§>o§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§?!b§ = this.§>o§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§?!C§ = this.§>o§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§,!V§ = this.§>o§(param1.FinishParticleSizeVarianceY);
         }
         this.§`2§ = deg2rad(this.§>o§(param1.angle));
         this.§7![§ = deg2rad(this.§>o§(param1.angleVariance));
         this.§ 2§ = this.§>o§(param1.speed);
         this.§!]§ = this.§>o§(param1.speedVariance);
         this.§]!%§ = this.§>o§(param1.radialAcceleration);
         this.§%!S§ = this.§>o§(param1.tangentialAcceleration);
         this.§&F§ = this.§>o§(param1.maxRadius);
         this.§-v§ = this.§>o§(param1.maxRadiusVariance);
         this.§3!8§ = this.§>o§(param1.minRadius);
         this.§[!!§ = deg2rad(this.§>o§(param1.rotatePerSecond));
         this.§8!S§ = deg2rad(this.§>o§(param1.rotatePerSecondVariance));
         this.§,!G§ = this.§7k§(param1.startColor);
         this.§^!b§ = this.§7k§(param1.startColorVariance);
         this.§8!J§ = this.§7k§(param1.finishColor);
         this.§4!9§ = this.§7k§(param1.finishColorVariance);
         §;!J§ = this.§]5§(param1.blendFuncSource);
         §@V§ = this.§]5§(param1.blendFuncDestination);
         §'!L§ = this.§ n§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §&A§ = this.§>o§(param1.emissionVariance);
         }
      }
      
      protected function §?U§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §>o§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §&!h§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §7k§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §]5§(param1:XMLList) : String
      {
         var _loc2_:int = this.§?U§(param1);
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
      
      protected function § n§(param1:XMLList) : String
      {
         var _loc2_:String = this.§&!h§(param1);
         if(_loc2_ == §89§.§8!;§ || _loc2_ == §89§.§7K§ || _loc2_ == §89§.NONE)
         {
            return _loc2_;
         }
         return §89§.§8!;§;
      }
   }
}

import §'!B§.§+!Q§;

class PDParticle extends §+!Q§
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
