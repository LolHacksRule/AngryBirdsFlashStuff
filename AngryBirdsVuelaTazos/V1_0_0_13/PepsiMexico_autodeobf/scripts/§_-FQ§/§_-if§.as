package §_-FQ§
{
   import §_-7§.§_-ph§;
   import §_-PS§.§_-sq§;
   import §_-PS§.§_-zG§;
   import §_-Xd§.§_-sW§;
   import §_-ex§.§_-mR§;
   
   public class §_-if§
   {
      
      public static const §_-hx§:Number = 1.25;
      
      public static const §_-Dv§:Number = 0.15;
      
      public static const §_-io§:Number = §_-ph§.§_-EK§ * §_-7W§.§_-hT§;
      
      public static const §_-Lz§:Number = §_-ph§.§_-UU§ * §_-7W§.§_-hT§;
      
      public static const §_-8K§:Number = 1;
      
      public static const §_-kh§:Number = 0.4;
      
      public static const §_-yi§:Number = 0.1;
      
      public static const §_-n2§:int = 1500;
      
      public static const §_-wu§:int = 10;
      
      public static const §_-wY§:int = 15;
      
      public static const §_-9d§:int = 300;
      
      public static const §_-hw§:int = 1000;
      
      public static const §_-aT§:int = 10000;
      
      public static const §_-4m§:int = §_-aT§ / 50;
      
      public static const §_-6m§:int = 0;
      
      public static const §_-Io§:int = 1;
      
      public static const §_-Or§:int = 2;
      
      public static const §_-w-§:int = 3;
      
      public static const §_-me§:int = 4;
      
      public static const §_-wI§:int = 5;
      
      public static const §_-Lm§:int = 6;
      
      public static const §_-7V§:String = "CASTLE";
      
      public static const §_-0x§:String = "SLINGSHOT";
      
      public static var §_-4X§:Number;
      
      public static var §_-1r§:Number;
      
      public static var §_-Rw§:Number;
      
      public static const §_-xi§:Number = 2000;
       
      
      public var mManualScale:Number;
      
      public var §_-er§:Number;
      
      public var §_-2j§:Number;
      
      public var §_-9z§:Number;
      
      public var §_-WW§:Number;
      
      public var §_-L9§:Number;
      
      public var §_-v3§:Number;
      
      public var §_-6q§:§_-7W§;
      
      public var §_-DI§:Number;
      
      public var §_-Kc§:Number;
      
      public var §_-MT§:Number;
      
      public var §_-nn§:Number;
      
      public var §_-mh§:Number;
      
      public var §_-Pd§:Number;
      
      public var §_-Cf§:Number;
      
      public var §_-wv§:Number;
      
      public var §_-U0§:Number;
      
      public var §_-RW§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-T-§:Number;
      
      public var §_-6S§:Number;
      
      public var §_-T7§:Number;
      
      public var §_-vU§:Number;
      
      public var §_-p6§:Number;
      
      public var mPigsAreOnRight:Boolean;
      
      public var §_-jz§:Number;
      
      public var §_-Le§:Number;
      
      public var §_-84§:Number;
      
      public var §_-Ys§:Number;
      
      public var §_-9n§:Number;
      
      public var §_-S3§:Number;
      
      public var §_-ar§:Number = 0;
      
      public var §_-CZ§:Number = 0;
      
      public var §_-1w§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-dQ§:Number = 0;
      
      public var §_-7E§:Boolean = true;
      
      public var §_-Rm§:Number = 0;
      
      public var §_-pt§:Number = 0;
      
      public var §_-tz§:Number = 0;
      
      public var §_-5u§:Number = 0;
      
      public var §_-nt§:Number = 0;
      
      public var §_-gH§:Number = 0;
      
      public var §_-PW§:Number = 0;
      
      public var §_-7t§:Number = 0;
      
      public var §_-mo§:Number = 0;
      
      public var §_-oi§:Number = 0;
      
      public var §_-Uc§:Number = 0;
      
      public var §_-Ba§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-7a§:Number = 0;
      
      private var §_-hi§:Number = 0;
      
      public var §_-8u§:Number = 0;
      
      public var §for§:Number = 0;
      
      public var §_-dJ§:Number = 0;
      
      public var §_-Go§:Number = 0;
      
      public var §_-GN§:Number;
      
      public var §finally§:Number;
      
      public var §_-H5§:Number;
      
      private var §_-F1§:Boolean = false;
      
      private var §_-B§:§_-zG§ = null;
      
      private var §_-TJ§:§_-zG§ = null;
      
      public function §_-if§(param1:§_-7W§, param2:§_-sq§)
      {
         super();
         this.§_-er§ = 0;
         this.§_-2j§ = 0;
         this.§_-6q§ = param1;
         §_-if§.§_-4X§ = 1;
         this.mManualScale = 1;
         this.§_-Ss§(param2.§_-PR§);
         this.§_-gZ§();
         this.§_-ar§ = this.§_-MT§ - this.§_-Pd§;
         this.§_-CZ§ = this.§_-nn§ - this.§_-Cf§;
         this.§_-1w§ = this.§_-mh§ - this.§_-wv§;
         this.§_-er§ = this.§_-MT§;
         this.§_-2j§ = this.§_-nn§;
         §_-4X§ = this.§_-mh§;
         this.mCurrentCameraSliderLocation = §_-aT§;
         this.§_-7E§ = true;
         this.§_-dQ§ = §_-aT§ / 500;
         this.goToCastleView();
         this.§_-Rm§ = 2000;
         this.§_-S-§();
         this.§_-iM§();
         this.§_-wS§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-er§ = this.§_-Pd§;
         this.§_-2j§ = this.§_-Cf§;
         this.§_-7E§ = false;
         this.§_-dQ§ = §_-aT§ / 160000;
         this.§_-gP§(§_-wI§);
      }
      
      public function §_-gZ§() : void
      {
         this.§_-6S§ = this.§_-Pd§ - §_-io§ / this.§_-wv§ / 2;
         this.§_-T7§ = this.§_-MT§ + §_-io§ / this.§_-mh§ / 2;
         this.§_-vU§ = this.§_-6q§.§_-Dw§.§_-X1§ - 20 * §_-7W§.§_-T2§ * §_-7W§.§_-hT§;
         this.§_-p6§ = this.§_-6q§.§_-Dw§.§_-X1§ + 4;
      }
      
      public function clear() : void
      {
         this.§_-6q§ = null;
      }
      
      public function §_-Ss§(param1:Vector.<§_-zG§>) : void
      {
         var _loc2_:§_-zG§ = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.id;
            _loc3_ = _loc3_.toUpperCase();
            if(_loc2_.scale.toString() != "" && _loc2_.scale.toString() != "null" && _loc2_.scale.toString() != "0")
            {
               this.§_-fx§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-Lz§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-io§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-0x§)
            {
               this.§_-Pd§ = _loc8_;
               this.§_-Cf§ = _loc9_;
               this.§_-wv§ = _loc12_;
            }
            else if(_loc3_ == §_-7V§)
            {
               this.§_-MT§ = _loc8_;
               this.§_-nn§ = _loc9_;
               this.§_-mh§ = _loc12_;
            }
            else
            {
               §_-mR§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.§_-MT§ >= this.§_-Pd§;
      }
      
      public function §_-Tm§(param1:§_-sq§) : void
      {
         var _loc2_:§_-zG§ = new §_-zG§();
         _loc2_.id = §_-0x§;
         _loc2_.x = this.§_-Pd§;
         _loc2_.y = this.§_-Cf§;
         var _loc3_:Number = §_-io§ / this.§_-wv§ / 2;
         var _loc4_:Number = §_-Lz§ / this.§_-wv§ / 2;
         _loc2_.left = this.§_-Pd§ - _loc3_;
         _loc2_.right = this.§_-Pd§ + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-zG§;
         (_loc5_ = new §_-zG§()).id = §_-7V§;
         _loc5_.x = this.§_-MT§;
         _loc5_.y = this.§_-nn§;
         var _loc6_:Number = §_-io§ / this.§_-mh§ / 2;
         var _loc7_:Number = §_-Lz§ / this.§_-mh§ / 2;
         _loc5_.left = this.§_-MT§ - _loc6_;
         _loc5_.right = this.§_-MT§ + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-PR§.length > 0)
         {
            param1.§_-PR§.pop();
         }
         param1.§_-PR§.push(_loc2_);
         param1.§_-PR§.push(_loc5_);
      }
      
      public function §_-fx§(param1:§_-zG§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-ph§.§_-EK§ * 0.5 / _loc2_ * §_-7W§.§_-hT§;
         var _loc4_:Number = param1.y - §_-ph§.§_-UU§ * 0.5 / _loc2_ * §_-7W§.§_-hT§;
         var _loc5_:Number = _loc3_ + §_-ph§.§_-EK§ / _loc2_ * §_-7W§.§_-hT§;
         var _loc6_:Number = _loc4_ + §_-ph§.§_-UU§ / _loc2_ * §_-7W§.§_-hT§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      public function §_-Qi§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-B§)
         {
            this.§_-er§ = this.§_-B§.x;
            this.§_-2j§ = this.§_-B§.y;
            §_-4X§ = §_-io§ / (this.§_-B§.right - this.§_-B§.left);
         }
         else
         {
            this.§_-Zn§();
            _loc2_ = this.mCurrentCameraSliderLocation;
            if(this.mCurrentAction == §_-wI§)
            {
               _loc2_ += param1 * this.§_-dQ§;
               if(_loc2_ >= §_-aT§)
               {
                  _loc2_ = §_-aT§;
                  this.§_-dQ§ = -this.§_-dQ§;
               }
               this.mCurrentCameraSliderLocation = _loc2_;
            }
            else if(this.mCurrentAction == §_-Io§)
            {
               if(this.§_-F1§)
               {
                  this.§_-GN§ = this.§_-MT§;
                  this.§finally§ = this.§_-nn§;
                  this.§_-H5§ = this.mManualScale = this.§_-mh§;
               }
               else
               {
                  _loc2_ += param1 * this.§_-dQ§;
                  if(_loc2_ >= §_-aT§)
                  {
                     _loc2_ = §_-aT§;
                     this.§_-gP§(§_-6m§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-Or§)
            {
               if(this.§_-F1§)
               {
                  this.§_-GN§ = this.§_-Pd§;
                  this.§finally§ = this.§_-Cf§;
                  this.§_-H5§ = this.mManualScale = this.§_-wv§;
               }
               else
               {
                  _loc2_ -= param1 * this.§_-dQ§;
                  if(_loc2_ <= 0)
                  {
                     _loc2_ = 0;
                     this.§_-gP§(§_-6m§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-w-§)
            {
               this.§_-7E§ = true;
            }
            else if(this.mCurrentAction == §_-me§)
            {
               this.§_-Fr§(param1);
            }
            else if(this.mCurrentAction == §_-Lm§)
            {
               this.§_-av§(param1);
            }
            this.§_-D5§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-S-§();
         this.§_-iM§();
         this.§_-wS§();
      }
      
      public function §_-D5§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-sW§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Boolean = false;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation < 0)
         {
            this.§_-7E§ = true;
            this.§_-dQ§ = 0;
         }
         if(this.mCurrentCameraSliderLocation > §_-aT§)
         {
            this.§_-7E§ = true;
            this.§_-dQ§ = 0;
         }
         if(this.mCurrentAction == §_-w-§)
         {
            if(!this.§_-6q§.mActiveObject)
            {
               this.§_-gP§(§_-Io§);
               this.§_-mo§ = §_-hw§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-6q§.mActiveObject).§_-vv§().GetPosition().x + (!!_loc5_.§_-ke§ ? _loc5_.§_-ke§ * §_-7W§.§_-hT§ : 0);
               _loc7_ = _loc5_.§_-vv§().GetPosition().y + (!!_loc5_.§_-Ia§ ? _loc5_.§_-Ia§ * §_-7W§.§_-hT§ : 0);
               if((_loc8_ = _loc5_.§_-vv§().GetLinearVelocity().x) > 0 && this.§_-ar§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-ar§ * §_-aT§;
               }
               if(param1 >= §_-aT§)
               {
                  param1 = §_-aT§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc24_ = param1 / §_-aT§;
               _loc25_ = this.§_-S3§ + (this.§_-84§ - this.§_-S3§) * _loc24_;
               _loc26_ = this.§_-Ys§ + (this.§_-jz§ - this.§_-Ys§) * _loc24_;
               _loc27_ = this.§_-9n§ + (this.§_-Le§ - this.§_-9n§) * _loc24_;
               this.§_-Ba§ -= (this.§_-Ba§ - _loc25_) * _loc4_;
               this.§_-oi§ -= (this.§_-oi§ - _loc26_) * _loc4_;
               this.§_-Uc§ -= (this.§_-Uc§ - _loc27_) * _loc4_;
               _loc9_ = this.§_-oi§ - §_-io§ * 0.5 / this.§_-Ba§;
               _loc10_ = this.§_-Uc§ - §_-Lz§ * 0.5 / this.§_-Ba§;
               _loc11_ = this.§_-oi§ + §_-io§ * 0.5 / this.§_-Ba§;
               _loc12_ = this.§_-Uc§ + §_-Lz§ * 0.5 / this.§_-Ba§;
               _loc13_ = 150 * §_-7W§.§_-hT§;
               _loc14_ = Math.min(_loc9_,_loc6_ - _loc13_);
               _loc15_ = Math.min(_loc10_,_loc7_ - _loc13_);
               _loc16_ = Math.max(_loc11_,_loc6_ + _loc13_);
               _loc17_ = Math.max(_loc12_,_loc7_ + _loc13_);
               _loc14_ = Math.max(this.§_-6S§,_loc14_);
               _loc16_ = Math.min(this.§_-T7§,_loc16_);
               _loc18_ = Math.abs(§_-io§ / (_loc16_ - _loc14_));
               _loc19_ = Math.abs(§_-Lz§ / (_loc17_ - _loc15_));
               if((_loc20_ = Math.min(_loc18_,_loc19_)) > this.§_-Ba§)
               {
                  _loc20_ = this.§_-Ba§;
               }
               _loc21_ = (_loc16_ + _loc14_) * 0.5;
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = false;
               if(_loc21_ + §_-io§ * 0.5 / _loc20_ > this.§_-T7§)
               {
                  _loc14_ = (_loc16_ = this.§_-T7§) - §_-io§ / _loc20_;
                  _loc23_ = true;
                  if(_loc14_ < this.§_-6S§)
                  {
                     _loc14_ = this.§_-6S§;
                  }
               }
               if(_loc21_ - §_-io§ * 0.5 / _loc20_ < this.§_-6S§)
               {
                  _loc16_ = (_loc14_ = this.§_-6S§) + §_-io§ / _loc20_;
                  _loc23_ = true;
                  if(_loc16_ > this.§_-T7§)
                  {
                     _loc16_ = this.§_-T7§;
                  }
               }
               if(_loc23_)
               {
                  _loc21_ = (_loc16_ + _loc14_) * 0.5;
                  _loc20_ = Math.abs(§_-io§ / (_loc16_ - _loc14_));
               }
               if(_loc22_ - §_-io§ * 0.5 / _loc20_ < this.§_-vU§)
               {
                  _loc22_ = this.§_-vU§ + §_-io§ * 0.5 / _loc20_;
               }
               this.§_-er§ -= (this.§_-er§ - _loc21_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc20_) * _loc4_;
               §_-4X§ = this.mTempCameraAnimationScale2;
               this.§_-2j§ -= (this.§_-2j§ - _loc22_) * _loc4_;
               if(_loc6_ >= this.§_-T7§ || _loc6_ <= this.§_-6S§)
               {
                  this.§_-Ba§ = §_-4X§;
                  this.§_-oi§ = this.§_-er§;
                  this.§_-Uc§ = this.§_-2j§;
               }
               _loc20_ = Math.abs(§_-io§ / (_loc16_ - _loc14_));
               if(_loc22_ - §_-io§ * 0.5 / _loc20_ < this.§_-vU§)
               {
                  _loc22_ = this.§_-vU§ + §_-io§ * 0.5 / _loc20_;
               }
            }
         }
         else if(this.§_-F1§)
         {
            if(this.§_-7E§ == false)
            {
               _loc4_ = 1;
            }
            this.§_-er§ -= (this.§_-er§ - this.§_-GN§) * _loc4_;
            this.§_-2j§ -= (this.§_-2j§ - this.§finally§) * _loc4_;
            §_-4X§ -= (§_-4X§ - this.§_-H5§) * _loc4_;
         }
         else if(this.§_-ar§ != 0)
         {
            if(this.§_-7E§ == false)
            {
               _loc4_ = 1;
            }
            _loc24_ = param1 / §_-aT§;
            _loc25_ = this.§_-S3§ + (this.§_-84§ - this.§_-S3§) * _loc24_;
            _loc26_ = this.§_-Ys§ + (this.§_-jz§ - this.§_-Ys§) * _loc24_;
            _loc27_ = this.§_-9n§ + (this.§_-Le§ - this.§_-9n§) * _loc24_;
            this.§_-oi§ -= (this.§_-oi§ - _loc26_) * _loc4_;
            this.§_-Uc§ -= (this.§_-Uc§ - _loc27_) * _loc4_;
            this.§_-Ba§ -= (this.§_-Ba§ - _loc25_) * _loc4_;
            this.§_-er§ = this.§_-oi§;
            this.§_-2j§ = this.§_-Uc§;
            §_-4X§ = this.§_-Ba§;
         }
      }
      
      public function §_-AW§(param1:Number, param2:Number) : void
      {
         this.§_-7a§ = param1;
         this.§_-hi§ = param2;
      }
      
      public function §_-Zn§() : void
      {
         this.§_-S3§ = §_-Dv§ + (this.§_-wv§ - §_-Dv§) * this.mManualScale;
         this.§_-9n§ = this.§_-Cf§;
         var _loc1_:Number = this.§_-9n§ + §_-Lz§ * 0.5 / this.§_-wv§;
         var _loc2_:Number = §_-Lz§ / §_-Dv§ * 5;
         if(_loc1_ > _loc2_)
         {
            this.§_-9n§ += _loc2_ - _loc1_;
         }
         this.§_-Ys§ = this.§_-Pd§;
         var _loc3_:Number = this.§_-Ys§ - §_-io§ * 0.5 / this.§_-S3§;
         if(_loc3_ < this.§_-6S§)
         {
            this.§_-Ys§ += this.§_-6S§ - _loc3_;
         }
         this.§_-84§ = §_-Dv§ + (this.§_-mh§ - §_-Dv§) * this.mManualScale;
         this.§_-Le§ = this.§_-nn§;
         _loc1_ = this.§_-Le§ + §_-Lz§ * 0.5 / this.§_-84§;
         if(_loc1_ > _loc2_)
         {
            this.§_-Le§ += _loc2_ - _loc1_;
         }
         this.§_-jz§ = this.§_-MT§;
         var _loc4_:Number;
         if((_loc4_ = this.§_-jz§ + §_-io§ * 0.5 / this.§_-84§) > this.§_-T7§)
         {
            this.§_-jz§ += this.§_-T7§ - _loc4_;
         }
         this.§_-H5§ = this.mManualScale;
         if(§_-io§ / this.§_-H5§ > this.§for§ - this.§_-8u§)
         {
            this.§_-H5§ = §_-io§ / (this.§for§ - this.§_-8u§);
         }
         this.§_-H5§ = this.§_-H5§ < §_-Dv§ ? Number(§_-Dv§) : (this.§_-H5§ > §_-hx§ ? Number(§_-hx§) : Number(this.§_-H5§));
         _loc3_ = this.§_-GN§ - §_-io§ * 0.5 / this.§_-H5§;
         if(_loc3_ < this.§_-8u§)
         {
            this.§_-GN§ += this.§_-8u§ - _loc3_;
         }
         if((_loc4_ = this.§_-GN§ + §_-io§ * 0.5 / this.§_-H5§) > this.§for§)
         {
            this.§_-GN§ += this.§for§ - _loc4_;
         }
         var _loc5_:Number;
         if((_loc5_ = this.§finally§ - §_-Lz§ * 0.5 / this.§_-H5§) < this.§_-dJ§)
         {
            this.§finally§ += this.§_-dJ§ - _loc5_;
         }
         _loc1_ = this.§finally§ + §_-Lz§ * 0.5 / this.§_-H5§;
         if(_loc1_ > this.§_-Go§)
         {
            this.§finally§ += this.§_-Go§ - _loc1_;
         }
      }
      
      public function §_-fV§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§_-F1§ = true;
         this.§_-GN§ = this.§_-er§;
         this.§finally§ = this.§_-2j§;
         this.§_-8u§ = param1;
         this.§for§ = param3;
         this.§_-dJ§ = param2;
         this.§_-Go§ = param4;
         this.§_-H5§ = §_-4X§;
      }
      
      public function §_-S-§() : void
      {
         if(this.§_-6q§.sprite)
         {
            §_-1r§ = this.§_-6q§.sprite.x = §_-7W§.§_-8G§ * ((1 - §_-if§.§_-4X§) / 2);
            §_-Rw§ = this.§_-6q§.sprite.y = §_-7W§.§_-T2§ * (1 - §_-if§.§_-4X§) * §_-ih§.§_-R0§;
         }
      }
      
      public function §_-wS§() : void
      {
         if(this.§_-6q§.sprite)
         {
            this.§_-6q§.sprite.scaleX = §_-4X§;
            this.§_-6q§.sprite.scaleY = §_-4X§;
         }
      }
      
      public function §_-iM§() : void
      {
         var _loc1_:Number = this.§_-er§ / §_-7W§.§_-hT§ + this.§_-7a§;
         var _loc2_:Number = this.§_-2j§ / §_-7W§.§_-hT§ + this.§_-hi§;
         this.§_-U0§ = _loc1_ - §_-7W§.§_-8G§ / 2 * §_-ph§.§_-6t§ / §_-ph§.§_-Qn§;
         this.§_-RW§ = _loc2_ - §_-7W§.§_-T2§ / 2 + §_-ih§.§_-ea§;
         this.§_-6q§.§_-3z§.§_-hH§(this.§_-U0§,this.§_-RW§);
         this.§_-6q§.mLevelObjects.§_-hH§(this.§_-U0§,this.§_-RW§);
         this.§_-6q§.§_-vs§.§_-hH§(this.§_-U0§,this.§_-RW§);
         this.§_-6q§.mLevelSlingshot.§_-hH§(this.§_-U0§,this.§_-RW§);
         this.§_-6q§.§_-sk§.§_-hH§(this.§_-U0§,this.§_-RW§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-mo§ = -1;
         if(this.§_-F1§)
         {
            this.§_-gP§(§_-Lm§);
         }
         else
         {
            this.§_-gP§(§_-me§);
         }
         this.§_-nt§ = this.§_-PW§ = this.§_-tz§ = param1;
         this.§_-gH§ = this.§_-7t§ = this.§_-5u§ = param2;
         this.§_-pt§ = 0;
         this.§_-oi§ = this.§_-er§;
         this.§_-Uc§ = this.§_-2j§;
         this.§_-Ba§ = §_-4X§;
         this.mTempCameraAnimationScale2 = §_-4X§;
         if(Math.abs(this.§_-jz§ - this.§_-Ys§) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-er§ - this.§_-Ys§) / (this.§_-jz§ - this.§_-Ys§) * §_-aT§;
         }
         this.mDragging = true;
         if(§_-7W§.§_-nv§)
         {
            this.§_-6q§.§_-VH§();
         }
      }
      
      public function §_-Fr§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-pt§ += param1;
         var _loc3_:Number = this.§_-nt§ - this.§_-PW§;
         if(this.§_-ar§ > 0)
         {
            _loc2_ -= _loc3_ * §_-7W§.§_-hT§ / §_-4X§ / this.§_-ar§ * §_-aT§;
            this.§_-7E§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-7E§ = true;
            }
            if(_loc2_ > §_-aT§)
            {
               _loc2_ += (§_-aT§ - _loc2_) * 0.3;
               this.§_-7E§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-PW§ = this.§_-nt§;
      }
      
      public function §_-av§(param1:Number) : void
      {
         this.§_-GN§ += (this.§_-PW§ - this.§_-nt§) * §_-7W§.§_-hT§;
         this.§finally§ += (this.§_-7t§ - this.§_-gH§) * §_-7W§.§_-hT§;
         this.§_-PW§ = this.§_-nt§;
         this.§_-7t§ = this.§_-gH§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == §_-me§ || this.mCurrentAction == §_-Lm§)
         {
            this.§_-nt§ = param1;
            this.§_-gH§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-me§)
         {
            this.§_-gP§(§_-6m§);
            if(param1 > 0)
            {
               this.§_-nt§ = param1;
            }
            _loc3_ = Math.abs(this.§_-nt§ - this.§_-tz§);
            if(this.§_-pt§ < §_-n2§ && _loc3_ >= §_-wu§ && _loc3_ >= §_-wY§ * this.§_-pt§ / 1000)
            {
               if(this.§_-nt§ < this.§_-tz§)
               {
                  this.§_-gP§(§_-Io§);
               }
               else
               {
                  this.§_-gP§(§_-Or§);
               }
               this.§_-dQ§ = _loc3_ / this.§_-pt§ * 10;
               this.§_-7E§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-7E§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-aT§)
               {
                  this.§_-7E§ = true;
               }
            }
            else if(this.§_-pt§ < §_-9d§)
            {
               this.§_-1S§();
               this.§_-dQ§ = §_-aT§ / (§_-aT§ / 500);
               this.§_-7E§ = true;
            }
            else
            {
               this.§_-Fr§(0);
               this.§_-XS§(0);
               this.§_-dQ§ = §_-aT§ / (§_-aT§ / 500);
               this.§_-7E§ = true;
            }
         }
         this.mDragging = false;
         if(§_-7W§.§_-nv§)
         {
            this.§_-6q§.§_-x2§();
         }
      }
      
      public function §_-1S§() : void
      {
         if(this.mCurrentAction == §_-Io§)
         {
            this.§_-gP§(§_-Or§);
         }
         else if(this.mCurrentAction == §_-Or§)
         {
            this.§_-gP§(§_-Io§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-aT§ / 2)
         {
            this.§_-gP§(§_-Or§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-aT§ / 2)
         {
            this.§_-gP§(§_-Io§);
         }
      }
      
      public function §_-XS§(param1:int) : void
      {
         this.§_-mo§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-aT§ / 2)
         {
            this.§_-gP§(§_-Or§);
         }
         else
         {
            this.§_-gP§(§_-Io§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-gP§(§_-Or§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-gP§(§_-Io§);
      }
      
      public function §_-gP§(param1:int) : void
      {
         this.§_-oi§ = this.§_-er§;
         this.§_-Uc§ = this.§_-2j§;
         this.§_-Ba§ = §_-4X§;
         this.mTempCameraAnimationScale2 = §_-4X§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-aT§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-Io§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-BL§(param1:§_-zG§) : void
      {
         this.§_-B§ = param1;
         if(this.§_-B§ != null)
         {
            this.§_-TJ§ = new §_-zG§();
            this.§_-TJ§.x = this.§_-er§;
            this.§_-TJ§.y = this.§_-2j§;
            this.§_-TJ§.scale = §_-4X§;
         }
         else
         {
            this.§_-er§ = this.§_-TJ§.x;
            this.§_-2j§ = this.§_-TJ§.y;
            §_-4X§ = this.§_-TJ§.scale;
            this.§_-TJ§ = null;
         }
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += §_-yi§;
         }
         else
         {
            _loc2_ -= §_-yi§;
         }
         _loc2_ = Math.max(§_-kh§,Math.min(§_-8K§,_loc2_));
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
            if(this.§_-F1§)
            {
               this.§_-gP§(§_-Lm§);
            }
            else if(this.isOnCastleView())
            {
               this.goToCastleView();
            }
            else
            {
               this.goToBirdView();
            }
         }
      }
      
      public function §_-0q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.§_-er§;
         _loc1_ += " mYcenterB2: " + this.§_-2j§;
         _loc1_ += " mXcenterB2target: " + this.mManualScale;
         _loc1_ += "\n mYcenterB2target: " + this.mManualScale;
         _loc1_ += " mXcenterB2previous: " + this.mManualScale;
         _loc1_ += " mYcenterB2previous: " + this.mManualScale;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.mManualScale;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.mManualScale;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.mManualScale;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.mManualScale;
         _loc1_ += " mTargetScale: " + this.mManualScale;
         _loc1_ += " mTargetScalePrevious: " + this.mManualScale;
         _loc1_ += " mCastleCameraX: " + this.mManualScale;
         _loc1_ += "\n mCastleCameraY: " + this.mManualScale;
         _loc1_ += " mCastleCameraScale: " + this.mManualScale;
         _loc1_ += " mBirdCameraX: " + this.mManualScale;
         _loc1_ += " mBirdCameraY: " + this.mManualScale;
         _loc1_ += " mBirdCameraScale: " + this.mManualScale;
         _loc1_ += "\n mScreenLeftScroll: " + this.mManualScale;
         _loc1_ += " mScreenTopScroll: " + this.mManualScale;
         _loc1_ += " mDragging: " + this.mManualScale;
         _loc1_ += " mDraggingPointPreviousX: " + this.mManualScale;
         _loc1_ += " mDraggingPointPreviousY: " + this.mManualScale;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.mManualScale;
         _loc1_ += " mDraggingPointCurrentY: " + this.mManualScale;
         _loc1_ += " mDraggingPointOriginalX: " + this.mManualScale;
         _loc1_ += " mDraggingPointOriginalY: " + this.mManualScale;
         _loc1_ += " mDraggingTimer: " + this.mManualScale;
         _loc1_ += "\n mCameraBorderLeft: " + this.mManualScale;
         _loc1_ += " mCameraBorderRight: " + this.mManualScale;
         _loc1_ += " mCameraBorderSky: " + this.mManualScale;
         _loc1_ += " mCameraBorderGround: " + this.mManualScale;
         return _loc1_ + (" mPigsAreOnRight: " + this.mManualScale + "\n ");
      }
   }
}
