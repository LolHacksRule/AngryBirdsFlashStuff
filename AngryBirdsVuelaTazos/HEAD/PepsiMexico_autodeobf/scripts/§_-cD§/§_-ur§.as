package §_-cD§
{
   import §_-OP§.deg2rad;
   import §_-Q0§.Texture;
   import §_-Q0§.§_-qr§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-ur§ extends §_-XM§
   {
       
      
      private const §_-n2§:int = 0;
      
      private const §_-Rx§:int = 1;
      
      private var §_-uD§:Number;
      
      private var §_-si§:int;
      
      private var §_-II§:Number;
      
      private var §_-48§:Number;
      
      private var §_-Gt§:int;
      
      private var §_-HL§:Number;
      
      private var §_-XT§:Number;
      
      private var §_-hY§:Number;
      
      private var §_-o5§:Number;
      
      private var §_-yz§:Number;
      
      private var §_-9N§:Number;
      
      private var §_-Et§:Number;
      
      private var §_-bN§:Number;
      
      private var §_-Uv§:Number;
      
      private var §_-xZ§:Number;
      
      private var §_-Ew§:Number;
      
      private var §_-r1§:Number;
      
      private var §_-fv§:Number;
      
      private var §_-08§:Number;
      
      private var §_-ka§:Number;
      
      private var §_-VV§:Number;
      
      private var §_-B9§:Number;
      
      private var §_-R-§:Number;
      
      private var §_-Sd§:Number;
      
      private var §_-2U§:Number;
      
      private var §_-0o§:Number;
      
      private var §_-JZ§:Number;
      
      private var §_-Oz§:Number;
      
      private var §_-sD§:Number;
      
      private var §_-NQ§:Number;
      
      private var §_-pB§:Number;
      
      private var §_-rB§:ColorArgb;
      
      private var §_-U4§:ColorArgb;
      
      private var §_-j9§:ColorArgb;
      
      private var §_-bl§:ColorArgb;
      
      public function §_-ur§(param1:XML, param2:Texture)
      {
         this.§_-CX§(param1,param2);
         var _loc3_:Number = this.§_-Gt§ / (this.§_-HL§ + this.§_-hY§);
         super(param2,_loc3_,this.§_-Gt§,§_-hc§,§_-75§);
         §_-Yr§ = false;
      }
      
      public function get §_-5e§() : int
      {
         return this.§_-Gt§;
      }
      
      override protected function createParticle() : §_-dI§
      {
         return new PDParticle();
      }
      
      private function get §_-Rc§() : Boolean
      {
         return this.§_-5e§ >= 20;
      }
      
      override protected function initParticle(param1:§_-dI§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§_-HL§ + this.§_-XT§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§_-0t§ = 0;
         _loc2_.§_-aW§ = _loc3_;
         _loc2_.x = §_-eK§ + this.§_-II§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-IF§ + this.§_-48§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-eK§;
         _loc2_.startY = §_-IF§;
         var _loc4_:Number = this.§_-r1§ + this.§_-fv§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-08§ + this.§_-ka§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§_-JZ§ + this.§_-Oz§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-JZ§ / _loc3_;
         _loc2_.rotation = this.§_-r1§ + this.§_-fv§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-NQ§ + this.§_-pB§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-R-§;
         _loc2_.tangentialAcceleration = this.§_-2U§;
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = this.§_-o5§ + this.§_-yz§ * (Math.random() * 2 - 1);
         if(!isNaN(this.§_-bN§))
         {
            _loc7_ = this.§_-bN§;
            if(!isNaN(this.§_-Uv§))
            {
               _loc7_ += this.§_-Uv§ * (Math.random() * 2 - 1);
            }
         }
         if(_loc6_ < 0.1)
         {
            _loc6_ = 0.1;
         }
         if(_loc7_ < 0.1)
         {
            _loc7_ = 0.1;
         }
         _loc2_.scaleX = _loc6_ / texture.width;
         _loc2_.scaleDeltaX = (_loc7_ - _loc6_) / _loc3_ / texture.width;
         var _loc8_:Number;
         var _loc9_:Number = _loc8_ = this.§_-9N§ + this.§_-Et§ * (Math.random() * 2 - 1);
         if(!isNaN(this.§_-xZ§))
         {
            _loc9_ = this.§_-xZ§;
            if(!isNaN(this.§_-Ew§))
            {
               _loc9_ += this.§_-Ew§ * (Math.random() * 2 - 1);
            }
         }
         if(_loc8_ < 0.1)
         {
            _loc8_ = 0.1;
         }
         if(_loc9_ < 0.1)
         {
            _loc9_ = 0.1;
         }
         _loc2_.scaleY = _loc8_ / texture.height;
         _loc2_.scaleDeltaY = (_loc9_ - _loc8_) / _loc3_ / texture.height;
         var _loc10_:ColorArgb = _loc2_.colorArgb;
         var _loc11_:ColorArgb = _loc2_.colorArgbDelta;
         _loc10_.red = this.§_-rB§.red;
         _loc10_.green = this.§_-rB§.green;
         _loc10_.blue = this.§_-rB§.blue;
         _loc10_.alpha = this.§_-rB§.alpha;
         if(this.§_-U4§.red != 0)
         {
            _loc10_.red += this.§_-U4§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-U4§.green != 0)
         {
            _loc10_.green += this.§_-U4§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-U4§.blue != 0)
         {
            _loc10_.blue += this.§_-U4§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-U4§.alpha != 0)
         {
            _loc10_.alpha += this.§_-U4§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§_-j9§.red;
         var _loc13_:Number = this.§_-j9§.green;
         var _loc14_:Number = this.§_-j9§.blue;
         var _loc15_:Number = this.§_-j9§.alpha;
         if(this.§_-bl§.red != 0)
         {
            _loc12_ += this.§_-bl§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-bl§.green != 0)
         {
            _loc13_ += this.§_-bl§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-bl§.blue != 0)
         {
            _loc14_ += this.§_-bl§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-bl§.alpha != 0)
         {
            _loc15_ += this.§_-bl§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc10_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc10_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc10_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc10_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-dI§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-aW§ - _loc3_.§_-0t§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-0t§ += param2;
         if(this.§_-si§ == this.§_-Rx§)
         {
            if(!_loc3_.skipUpdate || !this.§_-Rc§)
            {
               if(this.§_-Rc§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §_-eK§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-IF§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-sD§)
               {
                  _loc3_.§_-0t§ = _loc3_.§_-aW§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§_-Rc§)
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
               if(this.§_-Rc§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§_-VV§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§_-B9§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§_-VV§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§_-B9§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§_-Rc§)
         {
            if(this.§_-Rc§)
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
      
      private function §_-CX§(param1:XML, param2:Texture) : void
      {
         this.§_-II§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§_-48§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§_-VV§ = parseFloat(param1.gravity.attribute("x"));
         this.§_-B9§ = parseFloat(param1.gravity.attribute("y"));
         this.§_-si§ = this.§_-XC§(param1.emitterType);
         this.§_-Gt§ = this.§_-XC§(param1.maxParticles);
         this.§_-HL§ = Math.max(0.01,this.§_-06§(param1.particleLifeSpan));
         this.§_-XT§ = this.§_-06§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§_-hY§ = this.§_-06§(param1.particleInterval);
         }
         else
         {
            this.§_-hY§ = 0;
         }
         this.§_-o5§ = this.§_-06§(param1.startParticleSize);
         this.§_-9N§ = this.§_-o5§ * param2.height / param2.width;
         this.§_-yz§ = this.§_-06§(param1.startParticleSizeVariance);
         this.§_-Et§ = this.§_-yz§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§_-o5§ = this.§_-06§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§_-yz§ = this.§_-06§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§_-9N§ = this.§_-06§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§_-Et§ = this.§_-06§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§_-bN§ = this.§_-06§(param1.finishParticleSize);
            this.§_-xZ§ = this.§_-bN§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§_-Uv§ = this.§_-06§(param1.FinishParticleSizeVariance);
            this.§_-Ew§ = this.§_-Uv§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§_-bN§ = this.§_-06§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§_-Uv§ = this.§_-06§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§_-xZ§ = this.§_-06§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§_-Ew§ = this.§_-06§(param1.FinishParticleSizeVarianceY);
         }
         this.§_-r1§ = deg2rad(this.§_-06§(param1.angle));
         this.§_-fv§ = deg2rad(this.§_-06§(param1.angleVariance));
         this.§_-08§ = this.§_-06§(param1.speed);
         this.§_-ka§ = this.§_-06§(param1.speedVariance);
         this.§_-R-§ = this.§_-06§(param1.radialAcceleration);
         this.§_-2U§ = this.§_-06§(param1.tangentialAcceleration);
         this.§_-JZ§ = this.§_-06§(param1.maxRadius);
         this.§_-Oz§ = this.§_-06§(param1.maxRadiusVariance);
         this.§_-sD§ = this.§_-06§(param1.minRadius);
         this.§_-NQ§ = deg2rad(this.§_-06§(param1.rotatePerSecond));
         this.§_-pB§ = deg2rad(this.§_-06§(param1.rotatePerSecondVariance));
         this.§_-rB§ = this.§_-qG§(param1.startColor);
         this.§_-U4§ = this.§_-qG§(param1.startColorVariance);
         this.§_-j9§ = this.§_-qG§(param1.finishColor);
         this.§_-bl§ = this.§_-qG§(param1.finishColorVariance);
         §_-hc§ = this.§_-O§(param1.blendFuncSource);
         §_-75§ = this.§_-O§(param1.blendFuncDestination);
         §_-7y§ = this.§_-Gm§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §_-YU§ = this.§_-06§(param1.emissionVariance);
         }
      }
      
      protected function §_-XC§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §_-06§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §_-nI§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §_-qG§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §_-O§(param1:XMLList) : String
      {
         var _loc2_:int = this.§_-XC§(param1);
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
      
      protected function §_-Gm§(param1:XMLList) : String
      {
         var _loc2_:String = this.§_-nI§(param1);
         if(_loc2_ == §_-qr§.§_-y3§ || _loc2_ == §_-qr§.§_-67§ || _loc2_ == §_-qr§.NONE)
         {
            return _loc2_;
         }
         return §_-qr§.§_-y3§;
      }
   }
}

import §_-cD§.§_-dI§;

class PDParticle extends §_-dI§
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
