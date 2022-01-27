package §-!O§
{
   import §"`§.§#X§;
   import §"`§.Texture;
   import §#!5§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class ParticleDesignerPS extends §"!K§
   {
       
      
      private const §while§:int = 0;
      
      private const §&d§:int = 1;
      
      private var §;!3§:Number;
      
      private var §4! §:int;
      
      private var §!v§:Number;
      
      private var §%4§:Number;
      
      private var §<<§:int;
      
      private var §'R§:Number;
      
      private var §!^§:Number;
      
      private var §#!=§:Number;
      
      private var §]!@§:Number;
      
      private var §"D§:Number;
      
      private var §6d§:Number;
      
      private var §5!#§:Number;
      
      private var §5=§:Number;
      
      private var §+!4§:Number;
      
      private var §#!<§:Number;
      
      private var §]!?§:Number;
      
      private var §"!'§:Number;
      
      private var §&>§:Number;
      
      private var §-!2§:Number;
      
      private var §+u§:Number;
      
      private var §]!+§:Number;
      
      private var §`c§:Number;
      
      private var §08§:Number;
      
      private var §3"§:Number;
      
      private var §<+§:Number;
      
      private var §!!L§:Number;
      
      private var §]l§:Number;
      
      private var §[!I§:Number;
      
      private var §^w§:Number;
      
      private var §-!3§:Number;
      
      private var §[M§:Number;
      
      private var §`!N§:ColorArgb;
      
      private var §;V§:ColorArgb;
      
      private var §[!%§:ColorArgb;
      
      private var §9#§:ColorArgb;
      
      public function ParticleDesignerPS(param1:XML, param2:Texture)
      {
         this.§9N§(param1,param2);
         var _loc3_:Number = this.§<<§ / (this.§'R§ + this.§#!=§);
         super(param2,_loc3_,this.§<<§,§8!'§,§"!3§);
         §-!J§ = false;
      }
      
      public function get §4!7§() : int
      {
         return this.§<<§;
      }
      
      override protected function createParticle() : §2P§
      {
         return new PDParticle();
      }
      
      private function get §"!E§() : Boolean
      {
         return this.§4!7§ >= 20;
      }
      
      override protected function initParticle(param1:§2P§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§'R§ + this.§!^§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§=@§ = 0;
         _loc2_.§7z§ = _loc3_;
         _loc2_.x = §=+§ + this.§!v§ * (Math.random() * 2 - 1);
         _loc2_.y = §?U§ + this.§%4§ * (Math.random() * 2 - 1);
         _loc2_.startX = §=+§;
         _loc2_.startY = §?U§;
         var _loc4_:Number = this.§"!'§ + this.§&>§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§-!2§ + this.§+u§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§]l§ + this.§[!I§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§]l§ / _loc3_;
         _loc2_.rotation = this.§"!'§ + this.§&>§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§-!3§ + this.§[M§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§08§;
         _loc2_.tangentialAcceleration = this.§<+§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§]!@§ + this.§"D§ * _loc6_;
         if(!isNaN(this.§5=§))
         {
            _loc8_ = this.§5=§;
            if(!isNaN(this.§+!4§))
            {
               _loc8_ += this.§+!4§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§6d§ + this.§5!#§ * _loc6_;
         if(!isNaN(this.§#!<§))
         {
            _loc10_ = this.§#!<§;
            if(!isNaN(this.§]!?§))
            {
               _loc10_ += this.§]!?§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§`!N§.red;
         _loc11_.green = this.§`!N§.green;
         _loc11_.blue = this.§`!N§.blue;
         _loc11_.alpha = this.§`!N§.alpha;
         if(this.§;V§.red != 0)
         {
            _loc11_.red += this.§;V§.red * (Math.random() * 2 - 1);
         }
         if(this.§;V§.green != 0)
         {
            _loc11_.green += this.§;V§.green * (Math.random() * 2 - 1);
         }
         if(this.§;V§.blue != 0)
         {
            _loc11_.blue += this.§;V§.blue * (Math.random() * 2 - 1);
         }
         if(this.§;V§.alpha != 0)
         {
            _loc11_.alpha += this.§;V§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§[!%§.red;
         var _loc14_:Number = this.§[!%§.green;
         var _loc15_:Number = this.§[!%§.blue;
         var _loc16_:Number = this.§[!%§.alpha;
         if(this.§9#§.red != 0)
         {
            _loc13_ += this.§9#§.red * (Math.random() * 2 - 1);
         }
         if(this.§9#§.green != 0)
         {
            _loc14_ += this.§9#§.green * (Math.random() * 2 - 1);
         }
         if(this.§9#§.blue != 0)
         {
            _loc15_ += this.§9#§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9#§.alpha != 0)
         {
            _loc16_ += this.§9#§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§2P§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§7z§ - _loc3_.§=@§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§=@§ += param2;
         if(this.§4! § == this.§&d§)
         {
            if(!_loc3_.skipUpdate || !this.§"!E§)
            {
               if(this.§"!E§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §=+§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §?U§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§^w§)
               {
                  _loc3_.§=@§ = _loc3_.§7z§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§"!E§)
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
               if(this.§"!E§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§]!+§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§`c§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§]!+§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§`c§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§"!E§)
         {
            if(this.§"!E§)
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
      
      private function §9N§(param1:XML, param2:Texture) : void
      {
         this.§!v§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§%4§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§]!+§ = parseFloat(param1.gravity.attribute("x"));
         this.§`c§ = parseFloat(param1.gravity.attribute("y"));
         this.§4! § = this.§?;§(param1.emitterType);
         this.§<<§ = this.§?;§(param1.maxParticles);
         this.§'R§ = Math.max(0.01,this.§5!E§(param1.particleLifeSpan));
         this.§!^§ = this.§5!E§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§#!=§ = this.§5!E§(param1.particleInterval);
         }
         else
         {
            this.§#!=§ = 0;
         }
         this.§]!@§ = this.§5!E§(param1.startParticleSize);
         this.§6d§ = this.§]!@§ * param2.height / param2.width;
         this.§"D§ = this.§5!E§(param1.startParticleSizeVariance);
         this.§5!#§ = this.§"D§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§]!@§ = this.§5!E§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§"D§ = this.§5!E§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§6d§ = this.§5!E§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§5!#§ = this.§5!E§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§5=§ = this.§5!E§(param1.finishParticleSize);
            this.§#!<§ = this.§5=§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§+!4§ = this.§5!E§(param1.FinishParticleSizeVariance);
            this.§]!?§ = this.§+!4§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§5=§ = this.§5!E§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§+!4§ = this.§5!E§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§#!<§ = this.§5!E§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§]!?§ = this.§5!E§(param1.FinishParticleSizeVarianceY);
         }
         this.§"!'§ = deg2rad(this.§5!E§(param1.angle));
         this.§&>§ = deg2rad(this.§5!E§(param1.angleVariance));
         this.§-!2§ = this.§5!E§(param1.speed);
         this.§+u§ = this.§5!E§(param1.speedVariance);
         this.§08§ = this.§5!E§(param1.radialAcceleration);
         this.§<+§ = this.§5!E§(param1.tangentialAcceleration);
         this.§]l§ = this.§5!E§(param1.maxRadius);
         this.§[!I§ = this.§5!E§(param1.maxRadiusVariance);
         this.§^w§ = this.§5!E§(param1.minRadius);
         this.§-!3§ = deg2rad(this.§5!E§(param1.rotatePerSecond));
         this.§[M§ = deg2rad(this.§5!E§(param1.rotatePerSecondVariance));
         this.§`!N§ = this.§<Q§(param1.startColor);
         this.§;V§ = this.§<Q§(param1.startColorVariance);
         this.§[!%§ = this.§<Q§(param1.finishColor);
         this.§9#§ = this.§<Q§(param1.finishColorVariance);
         §8!'§ = this.§9§(param1.blendFuncSource);
         §"!3§ = this.§9§(param1.blendFuncDestination);
         §`x§ = this.§@P§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §`<§ = this.§5!E§(param1.emissionVariance);
         }
      }
      
      protected function §?;§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §5!E§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §]e§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §<Q§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §9§(param1:XMLList) : String
      {
         var _loc2_:int = this.§?;§(param1);
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
      
      protected function §@P§(param1:XMLList) : String
      {
         var _loc2_:String = this.§]e§(param1);
         if(_loc2_ == §#X§.§8O§ || _loc2_ == §#X§.§5w§ || _loc2_ == §#X§.NONE)
         {
            return _loc2_;
         }
         return §#X§.§8O§;
      }
   }
}

import §-!O§.§2P§;

class PDParticle extends §2P§
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
