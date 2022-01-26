package §5!S§
{
   import §+![§.§;7§;
   import §+![§.Texture;
   import §9![§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §6B§ extends §;! §
   {
       
      
      private const §9!"§:int = 0;
      
      private const §5!^§:int = 1;
      
      private var §>D§:Number;
      
      private var §3!F§:int;
      
      private var §1!,§:Number;
      
      private var §3b§:Number;
      
      private var §[T§:int;
      
      private var §!!D§:Number;
      
      private var §"!1§:Number;
      
      private var §"!a§:Number;
      
      private var §9z§:Number;
      
      private var §+N§:Number;
      
      private var §?!D§:Number;
      
      private var §3!^§:Number;
      
      private var §2!F§:Number;
      
      private var §67§:Number;
      
      private var §>!,§:Number;
      
      private var §`!6§:Number;
      
      private var §<!I§:Number;
      
      private var §,S§:Number;
      
      private var §&k§:Number;
      
      private var § !5§:Number;
      
      private var §;!A§:Number;
      
      private var §[a§:Number;
      
      private var §,V§:Number;
      
      private var §7G§:Number;
      
      private var §>n§:Number;
      
      private var §[!B§:Number;
      
      private var §[7§:Number;
      
      private var §2D§:Number;
      
      private var §^R§:Number;
      
      private var §;5§:Number;
      
      private var §#!'§:Number;
      
      private var §&z§:ColorArgb;
      
      private var §[K§:ColorArgb;
      
      private var §&!B§:ColorArgb;
      
      private var §>9§:ColorArgb;
      
      public function §6B§(param1:XML, param2:Texture)
      {
         this.§!!6§(param1,param2);
         var _loc3_:Number = this.§[T§ / (this.§!!D§ + this.§"!a§);
         super(param2,_loc3_,this.§[T§,§+3§,§3@§);
         §4&§ = false;
      }
      
      public function get §-V§() : int
      {
         return this.§[T§;
      }
      
      override protected function createParticle() : §`!D§
      {
         return new PDParticle();
      }
      
      private function get §0!K§() : Boolean
      {
         return this.§-V§ >= 20;
      }
      
      override protected function initParticle(param1:§`!D§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§!!D§ + this.§"!1§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§@a§ = 0;
         _loc2_.§[O§ = _loc3_;
         _loc2_.x = §5b§ + this.§1!,§ * (Math.random() * 2 - 1);
         _loc2_.y = §[=§ + this.§3b§ * (Math.random() * 2 - 1);
         _loc2_.startX = §5b§;
         _loc2_.startY = §[=§;
         var _loc4_:Number = this.§<!I§ + this.§,S§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§&k§ + this.§ !5§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§[7§ + this.§2D§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§[7§ / _loc3_;
         _loc2_.rotation = this.§<!I§ + this.§,S§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§;5§ + this.§#!'§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§,V§;
         _loc2_.tangentialAcceleration = this.§>n§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§9z§ + this.§+N§ * _loc6_;
         if(!isNaN(this.§2!F§))
         {
            _loc8_ = this.§2!F§;
            if(!isNaN(this.§67§))
            {
               _loc8_ += this.§67§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§?!D§ + this.§3!^§ * _loc6_;
         if(!isNaN(this.§>!,§))
         {
            _loc10_ = this.§>!,§;
            if(!isNaN(this.§`!6§))
            {
               _loc10_ += this.§`!6§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§&z§.red;
         _loc11_.green = this.§&z§.green;
         _loc11_.blue = this.§&z§.blue;
         _loc11_.alpha = this.§&z§.alpha;
         if(this.§[K§.red != 0)
         {
            _loc11_.red += this.§[K§.red * (Math.random() * 2 - 1);
         }
         if(this.§[K§.green != 0)
         {
            _loc11_.green += this.§[K§.green * (Math.random() * 2 - 1);
         }
         if(this.§[K§.blue != 0)
         {
            _loc11_.blue += this.§[K§.blue * (Math.random() * 2 - 1);
         }
         if(this.§[K§.alpha != 0)
         {
            _loc11_.alpha += this.§[K§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§&!B§.red;
         var _loc14_:Number = this.§&!B§.green;
         var _loc15_:Number = this.§&!B§.blue;
         var _loc16_:Number = this.§&!B§.alpha;
         if(this.§>9§.red != 0)
         {
            _loc13_ += this.§>9§.red * (Math.random() * 2 - 1);
         }
         if(this.§>9§.green != 0)
         {
            _loc14_ += this.§>9§.green * (Math.random() * 2 - 1);
         }
         if(this.§>9§.blue != 0)
         {
            _loc15_ += this.§>9§.blue * (Math.random() * 2 - 1);
         }
         if(this.§>9§.alpha != 0)
         {
            _loc16_ += this.§>9§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§`!D§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§[O§ - _loc3_.§@a§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§@a§ += param2;
         if(this.§3!F§ == this.§5!^§)
         {
            if(!_loc3_.skipUpdate || !this.§0!K§)
            {
               if(this.§0!K§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §5b§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §[=§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§^R§)
               {
                  _loc3_.§@a§ = _loc3_.§[O§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§0!K§)
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
               if(this.§0!K§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§;!A§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§[a§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§;!A§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§[a§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§0!K§)
         {
            if(this.§0!K§)
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
      
      private function §!!6§(param1:XML, param2:Texture) : void
      {
         this.§1!,§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§3b§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§;!A§ = parseFloat(param1.gravity.attribute("x"));
         this.§[a§ = parseFloat(param1.gravity.attribute("y"));
         this.§3!F§ = this.§4W§(param1.emitterType);
         this.§[T§ = this.§4W§(param1.maxParticles);
         this.§!!D§ = Math.max(0.01,this.§]3§(param1.particleLifeSpan));
         this.§"!1§ = this.§]3§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§"!a§ = this.§]3§(param1.particleInterval);
         }
         else
         {
            this.§"!a§ = 0;
         }
         this.§9z§ = this.§]3§(param1.startParticleSize);
         this.§?!D§ = this.§9z§ * param2.height / param2.width;
         this.§+N§ = this.§]3§(param1.startParticleSizeVariance);
         this.§3!^§ = this.§+N§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§9z§ = this.§]3§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§+N§ = this.§]3§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§?!D§ = this.§]3§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§3!^§ = this.§]3§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§2!F§ = this.§]3§(param1.finishParticleSize);
            this.§>!,§ = this.§2!F§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§67§ = this.§]3§(param1.FinishParticleSizeVariance);
            this.§`!6§ = this.§67§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§2!F§ = this.§]3§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§67§ = this.§]3§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§>!,§ = this.§]3§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§`!6§ = this.§]3§(param1.FinishParticleSizeVarianceY);
         }
         this.§<!I§ = deg2rad(this.§]3§(param1.angle));
         this.§,S§ = deg2rad(this.§]3§(param1.angleVariance));
         this.§&k§ = this.§]3§(param1.speed);
         this.§ !5§ = this.§]3§(param1.speedVariance);
         this.§,V§ = this.§]3§(param1.radialAcceleration);
         this.§>n§ = this.§]3§(param1.tangentialAcceleration);
         this.§[7§ = this.§]3§(param1.maxRadius);
         this.§2D§ = this.§]3§(param1.maxRadiusVariance);
         this.§^R§ = this.§]3§(param1.minRadius);
         this.§;5§ = deg2rad(this.§]3§(param1.rotatePerSecond));
         this.§#!'§ = deg2rad(this.§]3§(param1.rotatePerSecondVariance));
         this.§&z§ = this.§@§(param1.startColor);
         this.§[K§ = this.§@§(param1.startColorVariance);
         this.§&!B§ = this.§@§(param1.finishColor);
         this.§>9§ = this.§@§(param1.finishColorVariance);
         §+3§ = this.§7!9§(param1.blendFuncSource);
         §3@§ = this.§7!9§(param1.blendFuncDestination);
         §&!S§ = this.§6s§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §4!_§ = this.§]3§(param1.emissionVariance);
         }
      }
      
      protected function §4W§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §]3§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §?N§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §@§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §7!9§(param1:XMLList) : String
      {
         var _loc2_:int = this.§4W§(param1);
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
      
      protected function §6s§(param1:XMLList) : String
      {
         var _loc2_:String = this.§?N§(param1);
         if(_loc2_ == §;7§.§^,§ || _loc2_ == §;7§.§-!O§ || _loc2_ == §;7§.NONE)
         {
            return _loc2_;
         }
         return §;7§.§^,§;
      }
   }
}

import §5!S§.§`!D§;

class PDParticle extends §`!D§
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
