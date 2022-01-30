package §>"6§
{
   import §4!S§.§4Q§;
   import §4!S§.Texture;
   import §="#§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §9!;§ extends §6$§
   {
       
      
      private const §&!e§:int = 0;
      
      private const §8!;§:int = 1;
      
      private var §2!Y§:Number;
      
      private var §<C§:int;
      
      private var §`s§:Number;
      
      private var § !]§:Number;
      
      private var §'!i§:int;
      
      private var §2!X§:Number;
      
      private var §+e§:Number;
      
      private var §`#§:Number;
      
      private var §]"+§:Number;
      
      private var §+8§:Number;
      
      private var §!" §:Number;
      
      private var §;!P§:Number;
      
      private var §4r§:Number;
      
      private var §-0§:Number;
      
      private var §4!`§:Number;
      
      private var §6b§:Number;
      
      private var §@!?§:Number;
      
      private var §[n§:Number;
      
      private var §-R§:Number;
      
      private var §;!^§:Number;
      
      private var §>!Q§:Number;
      
      private var §&!f§:Number;
      
      private var §-!P§:Number;
      
      private var §>6§:Number;
      
      private var §9!X§:Number;
      
      private var §2t§:Number;
      
      private var §#m§:Number;
      
      private var §;`§:Number;
      
      private var §&k§:Number;
      
      private var §!"4§:Number;
      
      private var §>§:Number;
      
      private var §1!x§:ColorArgb;
      
      private var §9!3§:ColorArgb;
      
      private var §%w§:ColorArgb;
      
      private var §]!T§:ColorArgb;
      
      public function §9!;§(param1:XML, param2:Texture)
      {
         this.§&!F§(param1,param2);
         var _loc3_:Number = this.§'!i§ / (this.§2!X§ + this.§`#§);
         super(param2,_loc3_,this.§'!i§,§=!K§,§3v§);
         §@!!§ = false;
      }
      
      public function get §#`§() : int
      {
         return this.§'!i§;
      }
      
      override protected function createParticle() : §4R§
      {
         return new PDParticle();
      }
      
      private function get §>!2§() : Boolean
      {
         return this.§#`§ >= 20;
      }
      
      override protected function initParticle(param1:§4R§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§2!X§ + this.§+e§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§[[§ = 0;
         _loc2_.§!w§ = _loc3_;
         _loc2_.x = §9"1§ + this.§`s§ * (Math.random() * 2 - 1);
         _loc2_.y = §^!i§ + this.§ !]§ * (Math.random() * 2 - 1);
         _loc2_.startX = §9"1§;
         _loc2_.startY = §^!i§;
         var _loc4_:Number = this.§@!?§ + this.§[n§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§-R§ + this.§;!^§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§#m§ + this.§;`§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§#m§ / _loc3_;
         _loc2_.rotation = this.§@!?§ + this.§[n§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§!"4§ + this.§>§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§-!P§;
         _loc2_.tangentialAcceleration = this.§9!X§;
         var _loc6_:Number = Math.random() * 2 - 1;
         var _loc7_:Number;
         var _loc8_:Number = _loc7_ = this.§]"+§ + this.§+8§ * _loc6_;
         if(!isNaN(this.§4r§))
         {
            _loc8_ = this.§4r§;
            if(!isNaN(this.§-0§))
            {
               _loc8_ += this.§-0§ * (Math.random() * 2 - 1);
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
         var _loc10_:Number = _loc9_ = this.§!" § + this.§;!P§ * _loc6_;
         if(!isNaN(this.§4!`§))
         {
            _loc10_ = this.§4!`§;
            if(!isNaN(this.§6b§))
            {
               _loc10_ += this.§6b§ * (Math.random() * 2 - 1);
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
         _loc11_.red = this.§1!x§.red;
         _loc11_.green = this.§1!x§.green;
         _loc11_.blue = this.§1!x§.blue;
         _loc11_.alpha = this.§1!x§.alpha;
         if(this.§9!3§.red != 0)
         {
            _loc11_.red += this.§9!3§.red * (Math.random() * 2 - 1);
         }
         if(this.§9!3§.green != 0)
         {
            _loc11_.green += this.§9!3§.green * (Math.random() * 2 - 1);
         }
         if(this.§9!3§.blue != 0)
         {
            _loc11_.blue += this.§9!3§.blue * (Math.random() * 2 - 1);
         }
         if(this.§9!3§.alpha != 0)
         {
            _loc11_.alpha += this.§9!3§.alpha * (Math.random() * 2 - 1);
         }
         var _loc13_:Number = this.§%w§.red;
         var _loc14_:Number = this.§%w§.green;
         var _loc15_:Number = this.§%w§.blue;
         var _loc16_:Number = this.§%w§.alpha;
         if(this.§]!T§.red != 0)
         {
            _loc13_ += this.§]!T§.red * (Math.random() * 2 - 1);
         }
         if(this.§]!T§.green != 0)
         {
            _loc14_ += this.§]!T§.green * (Math.random() * 2 - 1);
         }
         if(this.§]!T§.blue != 0)
         {
            _loc15_ += this.§]!T§.blue * (Math.random() * 2 - 1);
         }
         if(this.§]!T§.alpha != 0)
         {
            _loc16_ += this.§]!T§.alpha * (Math.random() * 2 - 1);
         }
         _loc12_.red = (_loc13_ - _loc11_.red) / _loc3_;
         _loc12_.green = (_loc14_ - _loc11_.green) / _loc3_;
         _loc12_.blue = (_loc15_ - _loc11_.blue) / _loc3_;
         _loc12_.alpha = (_loc16_ - _loc11_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§4R§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§!w§ - _loc3_.§[[§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§[[§ += param2;
         if(this.§<C§ == this.§8!;§)
         {
            if(!_loc3_.skipUpdate || !this.§>!2§)
            {
               if(this.§>!2§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §9"1§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §^!i§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§&k§)
               {
                  _loc3_.§[[§ = _loc3_.§!w§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§>!2§)
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
               if(this.§>!2§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§>!Q§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§&!f§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§>!Q§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§&!f§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§>!2§)
         {
            if(this.§>!2§)
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
      
      private function §&!F§(param1:XML, param2:Texture) : void
      {
         this.§`s§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§ !]§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§>!Q§ = parseFloat(param1.gravity.attribute("x"));
         this.§&!f§ = parseFloat(param1.gravity.attribute("y"));
         this.§<C§ = this.§4_§(param1.emitterType);
         this.§'!i§ = this.§4_§(param1.maxParticles);
         this.§2!X§ = Math.max(0.01,this.§6c§(param1.particleLifeSpan));
         this.§+e§ = this.§6c§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§`#§ = this.§6c§(param1.particleInterval);
         }
         else
         {
            this.§`#§ = 0;
         }
         this.§]"+§ = this.§6c§(param1.startParticleSize);
         this.§!" § = this.§]"+§ * param2.height / param2.width;
         this.§+8§ = this.§6c§(param1.startParticleSizeVariance);
         this.§;!P§ = this.§+8§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§]"+§ = this.§6c§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§+8§ = this.§6c§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§!" § = this.§6c§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§;!P§ = this.§6c§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§4r§ = this.§6c§(param1.finishParticleSize);
            this.§4!`§ = this.§4r§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§-0§ = this.§6c§(param1.FinishParticleSizeVariance);
            this.§6b§ = this.§-0§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§4r§ = this.§6c§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§-0§ = this.§6c§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§4!`§ = this.§6c§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§6b§ = this.§6c§(param1.FinishParticleSizeVarianceY);
         }
         this.§@!?§ = deg2rad(this.§6c§(param1.angle));
         this.§[n§ = deg2rad(this.§6c§(param1.angleVariance));
         this.§-R§ = this.§6c§(param1.speed);
         this.§;!^§ = this.§6c§(param1.speedVariance);
         this.§-!P§ = this.§6c§(param1.radialAcceleration);
         this.§9!X§ = this.§6c§(param1.tangentialAcceleration);
         this.§#m§ = this.§6c§(param1.maxRadius);
         this.§;`§ = this.§6c§(param1.maxRadiusVariance);
         this.§&k§ = this.§6c§(param1.minRadius);
         this.§!"4§ = deg2rad(this.§6c§(param1.rotatePerSecond));
         this.§>§ = deg2rad(this.§6c§(param1.rotatePerSecondVariance));
         this.§1!x§ = this.§+!g§(param1.startColor);
         this.§9!3§ = this.§+!g§(param1.startColorVariance);
         this.§%w§ = this.§+!g§(param1.finishColor);
         this.§]!T§ = this.§+!g§(param1.finishColorVariance);
         §=!K§ = this.§2?§(param1.blendFuncSource);
         §3v§ = this.§2?§(param1.blendFuncDestination);
         §<o§ = this.§3!M§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §3"'§ = this.§6c§(param1.emissionVariance);
         }
      }
      
      protected function §4_§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §6c§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §!!w§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §+!g§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §2?§(param1:XMLList) : String
      {
         var _loc2_:int = this.§4_§(param1);
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
      
      protected function §3!M§(param1:XMLList) : String
      {
         var _loc2_:String = this.§!!w§(param1);
         if(_loc2_ == §4Q§.§-"#§ || _loc2_ == §4Q§.§1j§ || _loc2_ == §4Q§.NONE)
         {
            return _loc2_;
         }
         return §4Q§.§-"#§;
      }
   }
}

import §>"6§.§4R§;

class PDParticle extends §4R§
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
