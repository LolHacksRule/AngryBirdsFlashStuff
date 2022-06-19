package §_-0E§
{
   import §_-Bt§.deg2rad;
   import §_-Dk§.§ use§;
   import §_-Dk§.Texture;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-C9§ extends §_-Gh§
   {
       
      
      private const §_-VW§:int = 0;
      
      private const §_-mD§:int = 1;
      
      private var §_-Dz§:Number;
      
      private var §_-AO§:int;
      
      private var §_-KP§:Number;
      
      private var §_-RH§:Number;
      
      private var §_-Qi§:int;
      
      private var §_-sR§:Number;
      
      private var §_-hu§:Number;
      
      private var §_-p1§:Number;
      
      private var §_-t-§:Number;
      
      private var §_-h8§:Number;
      
      private var §_-PR§:Number;
      
      private var §_-r3§:Number;
      
      private var §_-Oj§:Number;
      
      private var §_-JN§:Number;
      
      private var §_-VE§:Number;
      
      private var §_-SV§:Number;
      
      private var §_-Va§:Number;
      
      private var §_-WS§:Number;
      
      private var §_-S8§:Number;
      
      private var §_-ad§:Number;
      
      private var §_-AY§:Number;
      
      private var §_-dG§:Number;
      
      private var §_-nP§:Number;
      
      private var §_-Xm§:Number;
      
      private var §_-81§:Number;
      
      private var §_-Yi§:Number;
      
      private var §_-N3§:Number;
      
      private var §_-78§:Number;
      
      private var §_-xh§:Number;
      
      private var §_-FV§:Number;
      
      private var §_-hr§:Number;
      
      private var §_-FU§:ColorArgb;
      
      private var §_-hd§:ColorArgb;
      
      private var §_-Ed§:ColorArgb;
      
      private var §_-aR§:ColorArgb;
      
      public function §_-C9§(param1:XML, param2:Texture)
      {
         this.§_-E5§(param1,param2);
         var _loc3_:Number = this.§_-Qi§ / (this.§_-sR§ + this.§_-p1§);
         super(param2,_loc3_,this.§_-Qi§,§_-4n§,§_-qc§);
         §_-Wp§ = false;
      }
      
      public function get §_-Hp§() : int
      {
         return this.§_-Qi§;
      }
      
      override protected function createParticle() : §_-WW§
      {
         return new PDParticle();
      }
      
      private function get §_-lZ§() : Boolean
      {
         return this.§_-Hp§ >= 20;
      }
      
      override protected function initParticle(param1:§_-WW§) : void
      {
         var _loc2_:PDParticle = null;
         var _loc3_:Number = NaN;
         _loc2_ = param1 as PDParticle;
         _loc3_ = this.§_-sR§ + this.§_-hu§ * (Math.random() * 2 - 1);
         if(_loc3_ <= 0)
         {
            return;
         }
         _loc2_.alpha = 0;
         _loc2_.§_-Ho§ = 0;
         _loc2_.§_-vF§ = _loc3_;
         _loc2_.x = §_-Sm§ + this.§_-KP§ * (Math.random() * 2 - 1);
         _loc2_.y = §_-hQ§ + this.§_-RH§ * (Math.random() * 2 - 1);
         _loc2_.startX = §_-Sm§;
         _loc2_.startY = §_-hQ§;
         var _loc4_:Number = this.§_-Va§ + this.§_-WS§ * (Math.random() * 2 - 1);
         var _loc5_:Number = this.§_-S8§ + this.§_-ad§ * (Math.random() * 2 - 1);
         _loc2_.velocityX = _loc5_ * Math.cos(_loc4_);
         _loc2_.velocityY = _loc5_ * -Math.sin(_loc4_);
         _loc2_.radius = this.§_-N3§ + this.§_-78§ * (Math.random() * 2 - 1);
         _loc2_.radiusDelta = this.§_-N3§ / _loc3_;
         _loc2_.rotation = this.§_-Va§ + this.§_-WS§ * (Math.random() * 2 - 1);
         _loc2_.rotationDelta = this.§_-FV§ + this.§_-hr§ * (Math.random() * 2 - 1);
         _loc2_.radialAcceleration = this.§_-nP§;
         _loc2_.tangentialAcceleration = this.§_-81§;
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = this.§_-t-§ + this.§_-h8§ * (Math.random() * 2 - 1);
         if(!isNaN(this.§_-Oj§))
         {
            _loc7_ = this.§_-Oj§;
            if(!isNaN(this.§_-JN§))
            {
               _loc7_ += this.§_-JN§ * (Math.random() * 2 - 1);
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
         var _loc9_:Number = _loc8_ = this.§_-PR§ + this.§_-r3§ * (Math.random() * 2 - 1);
         if(!isNaN(this.§_-VE§))
         {
            _loc9_ = this.§_-VE§;
            if(!isNaN(this.§_-SV§))
            {
               _loc9_ += this.§_-SV§ * (Math.random() * 2 - 1);
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
         _loc10_.red = this.§_-FU§.red;
         _loc10_.green = this.§_-FU§.green;
         _loc10_.blue = this.§_-FU§.blue;
         _loc10_.alpha = this.§_-FU§.alpha;
         if(this.§_-hd§.red != 0)
         {
            _loc10_.red += this.§_-hd§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-hd§.green != 0)
         {
            _loc10_.green += this.§_-hd§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-hd§.blue != 0)
         {
            _loc10_.blue += this.§_-hd§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-hd§.alpha != 0)
         {
            _loc10_.alpha += this.§_-hd§.alpha * (Math.random() * 2 - 1);
         }
         var _loc12_:Number = this.§_-Ed§.red;
         var _loc13_:Number = this.§_-Ed§.green;
         var _loc14_:Number = this.§_-Ed§.blue;
         var _loc15_:Number = this.§_-Ed§.alpha;
         if(this.§_-aR§.red != 0)
         {
            _loc12_ += this.§_-aR§.red * (Math.random() * 2 - 1);
         }
         if(this.§_-aR§.green != 0)
         {
            _loc13_ += this.§_-aR§.green * (Math.random() * 2 - 1);
         }
         if(this.§_-aR§.blue != 0)
         {
            _loc14_ += this.§_-aR§.blue * (Math.random() * 2 - 1);
         }
         if(this.§_-aR§.alpha != 0)
         {
            _loc15_ += this.§_-aR§.alpha * (Math.random() * 2 - 1);
         }
         _loc11_.red = (_loc12_ - _loc10_.red) / _loc3_;
         _loc11_.green = (_loc13_ - _loc10_.green) / _loc3_;
         _loc11_.blue = (_loc14_ - _loc10_.blue) / _loc3_;
         _loc11_.alpha = (_loc15_ - _loc10_.alpha) / _loc3_;
      }
      
      override protected function advanceParticle(param1:§_-WW§, param2:Number) : void
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
         param2 = (_loc4_ = _loc3_.§_-vF§ - _loc3_.§_-Ho§) > param2 ? Number(param2) : Number(_loc4_);
         _loc3_.§_-Ho§ += param2;
         if(this.§_-AO§ == this.§_-mD§)
         {
            if(!_loc3_.skipUpdate || !this.§_-lZ§)
            {
               if(this.§_-lZ§)
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2 * 2;
               }
               else
               {
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
                  _loc3_.radius -= _loc3_.radiusDelta * param2;
               }
               _loc3_.x = §_-Sm§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
               _loc3_.y = §_-hQ§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
               if(_loc3_.radius < this.§_-xh§)
               {
                  _loc3_.§_-Ho§ = _loc3_.§_-vF§;
               }
            }
         }
         else
         {
            if(!_loc3_.skipUpdate || !this.§_-lZ§)
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
               if(this.§_-lZ§)
               {
                  _loc3_.velocityX += 2 * param2 * (this.§_-AY§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += 2 * param2 * (this.§_-dG§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
               }
               else
               {
                  _loc3_.velocityX += param2 * (this.§_-AY§ + _loc8_ + _loc10_);
                  _loc3_.velocityY += param2 * (this.§_-dG§ + _loc9_ + _loc11_);
                  _loc3_.rotation += _loc3_.rotationDelta * param2;
               }
            }
            _loc3_.x += _loc3_.velocityX * param2;
            _loc3_.y += _loc3_.velocityY * param2;
         }
         if(!_loc3_.skipUpdate || !this.§_-lZ§)
         {
            if(this.§_-lZ§)
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
      
      private function §_-E5§(param1:XML, param2:Texture) : void
      {
         this.§_-KP§ = parseFloat(param1.sourcePositionVariance.attribute("x"));
         this.§_-RH§ = parseFloat(param1.sourcePositionVariance.attribute("y"));
         this.§_-AY§ = parseFloat(param1.gravity.attribute("x"));
         this.§_-dG§ = parseFloat(param1.gravity.attribute("y"));
         this.§_-AO§ = this.§_-ta§(param1.emitterType);
         this.§_-Qi§ = this.§_-ta§(param1.maxParticles);
         this.§_-sR§ = Math.max(0.01,this.§_-xF§(param1.particleLifeSpan));
         this.§_-hu§ = this.§_-xF§(param1.particleLifespanVariance);
         if(param1.particleInterval.length() == 1)
         {
            this.§_-p1§ = this.§_-xF§(param1.particleInterval);
         }
         else
         {
            this.§_-p1§ = 0;
         }
         this.§_-t-§ = this.§_-xF§(param1.startParticleSize);
         this.§_-PR§ = this.§_-t-§ * param2.height / param2.width;
         this.§_-h8§ = this.§_-xF§(param1.startParticleSizeVariance);
         this.§_-r3§ = this.§_-h8§ * param2.height / param2.width;
         if(param1.startParticleSizeX.length() == 1)
         {
            this.§_-t-§ = this.§_-xF§(param1.startParticleSizeX);
         }
         if(param1.startParticleSizeVarianceX.length() == 1)
         {
            this.§_-h8§ = this.§_-xF§(param1.startParticleSizeVarianceX);
         }
         if(param1.startParticleSizeY.length() == 1)
         {
            this.§_-PR§ = this.§_-xF§(param1.startParticleSizeY);
         }
         if(param1.startParticleSizeVarianceY.length() == 1)
         {
            this.§_-r3§ = this.§_-xF§(param1.startParticleSizeVarianceY);
         }
         if(param1.finishParticleSize.length() == 1)
         {
            this.§_-Oj§ = this.§_-xF§(param1.finishParticleSize);
            this.§_-VE§ = this.§_-Oj§ * param2.height / param2.width;
         }
         if(param1.FinishParticleSizeVariance.length() == 1)
         {
            this.§_-JN§ = this.§_-xF§(param1.FinishParticleSizeVariance);
            this.§_-SV§ = this.§_-JN§ * param2.height / param2.width;
         }
         if(param1.finishParticleSizeX.length() == 1)
         {
            this.§_-Oj§ = this.§_-xF§(param1.finishParticleSizeX);
         }
         if(param1.FinishParticleSizeVarianceX.length() == 1)
         {
            this.§_-JN§ = this.§_-xF§(param1.FinishParticleSizeVarianceX);
         }
         if(param1.finishParticleSizeY.length() == 1)
         {
            this.§_-VE§ = this.§_-xF§(param1.finishParticleSizeY);
         }
         if(param1.FinishParticleSizeVarianceY.length() == 1)
         {
            this.§_-SV§ = this.§_-xF§(param1.FinishParticleSizeVarianceY);
         }
         this.§_-Va§ = deg2rad(this.§_-xF§(param1.angle));
         this.§_-WS§ = deg2rad(this.§_-xF§(param1.angleVariance));
         this.§_-S8§ = this.§_-xF§(param1.speed);
         this.§_-ad§ = this.§_-xF§(param1.speedVariance);
         this.§_-nP§ = this.§_-xF§(param1.radialAcceleration);
         this.§_-81§ = this.§_-xF§(param1.tangentialAcceleration);
         this.§_-N3§ = this.§_-xF§(param1.maxRadius);
         this.§_-78§ = this.§_-xF§(param1.maxRadiusVariance);
         this.§_-xh§ = this.§_-xF§(param1.minRadius);
         this.§_-FV§ = deg2rad(this.§_-xF§(param1.rotatePerSecond));
         this.§_-hr§ = deg2rad(this.§_-xF§(param1.rotatePerSecondVariance));
         this.§_-FU§ = this.§_-wq§(param1.startColor);
         this.§_-hd§ = this.§_-wq§(param1.startColorVariance);
         this.§_-Ed§ = this.§_-wq§(param1.finishColor);
         this.§_-aR§ = this.§_-wq§(param1.finishColorVariance);
         §_-4n§ = this.§_-EW§(param1.blendFuncSource);
         §_-qc§ = this.§_-EW§(param1.blendFuncDestination);
         §_-fq§ = this.§_-lv§(param1.textureSmoothing);
         if(param1.emissionVariance.length == 1)
         {
            §_-QH§ = this.§_-xF§(param1.emissionVariance);
         }
      }
      
      protected function §_-ta§(param1:XMLList) : int
      {
         return parseInt(param1.attribute("value"));
      }
      
      protected function §_-xF§(param1:XMLList) : Number
      {
         return parseFloat(param1.attribute("value"));
      }
      
      protected function §while§(param1:XMLList) : String
      {
         return param1.attribute("value");
      }
      
      protected function §_-wq§(param1:XMLList) : ColorArgb
      {
         var _loc2_:ColorArgb = new ColorArgb();
         _loc2_.red = parseFloat(param1.attribute("red"));
         _loc2_.green = parseFloat(param1.attribute("green"));
         _loc2_.blue = parseFloat(param1.attribute("blue"));
         _loc2_.alpha = parseFloat(param1.attribute("alpha"));
         return _loc2_;
      }
      
      protected function §_-EW§(param1:XMLList) : String
      {
         var _loc2_:int = this.§_-ta§(param1);
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
      
      protected function §_-lv§(param1:XMLList) : String
      {
         var _loc2_:String = this.§while§(param1);
         if(_loc2_ == § use§.§_-3m§ || _loc2_ == § use§.§_-vM§ || _loc2_ == § use§.NONE)
         {
            return _loc2_;
         }
         return § use§.§_-3m§;
      }
   }
}

import §_-0E§.§_-WW§;

class PDParticle extends §_-WW§
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
