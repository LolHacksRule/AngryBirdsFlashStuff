package §_-ez§
{
   import §_-Ah§.§_-b§;
   import §_-ST§.§_-fK§;
   import §_-Y-§.§_-Wl§;
   import §_-Y-§.§_-ZB§;
   import §_-ZG§.§_-Ne§;
   
   public class §_-8g§
   {
      
      public static const §_-6i§:Number = 1.25;
      
      public static const §_-0u§:Number = 0.15;
      
      public static const §_-nD§:Number = §_-b§.§_-iX§ * §_-Ay§.§_-G0§;
      
      public static const §_-pu§:Number = §_-b§.§_-q§ * §_-Ay§.§_-G0§;
      
      public static const §_-Hz§:Number = 1;
      
      public static const §_-Z3§:Number = 0.4;
      
      public static const §_-L3§:Number = 0.1;
      
      public static const §_-pX§:int = 1500;
      
      public static const §_-Nq§:int = 10;
      
      public static const §_-6h§:int = 15;
      
      public static const §_-Hb§:int = 300;
      
      public static const §_-YF§:int = 1000;
      
      public static const §_-d9§:int = 10000;
      
      public static const §_-BY§:int = §_-d9§ / 50;
      
      public static const §_-Qc§:int = 0;
      
      public static const §_-ud§:int = 1;
      
      public static const §_-J8§:int = 2;
      
      public static const §_-7W§:int = 3;
      
      public static const §_-he§:int = 4;
      
      public static const §_-Sb§:int = 5;
      
      public static const §_-pb§:int = 6;
      
      public static const §_-v7§:String = "CASTLE";
      
      public static const §_-xB§:String = "SLINGSHOT";
      
      public static var §_-YI§:Number;
      
      public static var §_-1e§:Number;
      
      public static var §_-Va§:Number;
      
      public static const §_-5v§:Number = 2000;
       
      
      public var mManualScale:Number;
      
      public var §_-pc§:Number;
      
      public var §_-hL§:Number;
      
      public var §_-TD§:Number;
      
      public var §_-mj§:Number;
      
      public var §_-8o§:Number;
      
      public var §_-00§:Number;
      
      public var §_-9N§:§_-Ay§;
      
      public var §_-d1§:Number;
      
      public var §_-PA§:Number;
      
      public var §_-oQ§:Number;
      
      public var §_-s5§:Number;
      
      public var §_-hv§:Number;
      
      public var §_-RH§:Number;
      
      public var §_-6w§:Number;
      
      public var §_-Gv§:Number;
      
      public var §_-UN§:Number;
      
      public var §_-1D§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-PT§:Number;
      
      public var §_-9A§:Number;
      
      public var §_-wM§:Number;
      
      public var §_-q4§:Number;
      
      public var §_-vn§:Number;
      
      public var mPigsAreOnRight:Boolean;
      
      public var §_-11§:Number;
      
      public var §_-Zh§:Number;
      
      public var §_-9n§:Number;
      
      public var §_-t-§:Number;
      
      public var §_-7V§:Number;
      
      public var §_-ae§:Number;
      
      public var §_-m2§:Number = 0;
      
      public var §_-pv§:Number = 0;
      
      public var §_-Jr§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-ot§:Number = 0;
      
      public var §_-i2§:Boolean = true;
      
      public var §_-3q§:Number = 0;
      
      public var §_-oC§:Number = 0;
      
      public var §_-kQ§:Number = 0;
      
      public var §_-vA§:Number = 0;
      
      public var §_-DN§:Number = 0;
      
      public var §_-Da§:Number = 0;
      
      public var §_-jC§:Number = 0;
      
      public var §_-Ct§:Number = 0;
      
      public var §_-WG§:Number = 0;
      
      public var §_-5T§:Number = 0;
      
      public var §_-wC§:Number = 0;
      
      public var §_-Vb§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-ho§:Number = 0;
      
      private var §_-cl§:Number = 0;
      
      public var §break§:Number = 0;
      
      public var §_-69§:Number = 0;
      
      public var §_-tr§:Number = 0;
      
      public var §_-0M§:Number = 0;
      
      public var §_-lX§:Number;
      
      public var §_-SK§:Number;
      
      public var §_-RD§:Number;
      
      private var §_-d3§:Boolean = false;
      
      private var §_-Kp§:§_-ZB§ = null;
      
      private var §_-2p§:§_-ZB§ = null;
      
      public function §_-8g§(param1:§_-Ay§, param2:§_-Wl§)
      {
         super();
         this.§_-pc§ = 0;
         this.§_-hL§ = 0;
         this.§_-9N§ = param1;
         §_-8g§.§_-YI§ = 1;
         this.mManualScale = 1;
         this.§_-1q§(param2.§_-Jc§);
         this.§_-10§();
         this.§_-m2§ = this.§_-oQ§ - this.§_-RH§;
         this.§_-pv§ = this.§_-s5§ - this.§_-6w§;
         this.§_-Jr§ = this.§_-hv§ - this.§_-Gv§;
         this.§_-pc§ = this.§_-oQ§;
         this.§_-hL§ = this.§_-s5§;
         §_-YI§ = this.§_-hv§;
         this.mCurrentCameraSliderLocation = §_-d9§;
         this.§_-i2§ = true;
         this.§_-ot§ = §_-d9§ / 500;
         this.goToCastleView();
         this.§_-3q§ = 2000;
         this.§_-IC§();
         this.§_-Ha§();
         this.§_-rG§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-pc§ = this.§_-RH§;
         this.§_-hL§ = this.§_-6w§;
         this.§_-i2§ = false;
         this.§_-ot§ = §_-d9§ / 160000;
         this.§_-IZ§(§_-Sb§);
      }
      
      public function §_-10§() : void
      {
         this.§_-9A§ = this.§_-RH§ - §_-nD§ / this.§_-Gv§ / 2;
         this.§_-wM§ = this.§_-oQ§ + §_-nD§ / this.§_-hv§ / 2;
         this.§_-q4§ = this.§_-9N§.§_-k8§.§_-4p§ - 20 * §_-Ay§.§_-8K§ * §_-Ay§.§_-G0§;
         this.§_-vn§ = this.§_-9N§.§_-k8§.§_-4p§ + 4;
      }
      
      public function clear() : void
      {
         this.§_-9N§ = null;
      }
      
      public function §_-1q§(param1:Vector.<§_-ZB§>) : void
      {
         var _loc2_:§_-ZB§ = null;
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
               this.§_-Lx§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-pu§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-nD§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-xB§)
            {
               this.§_-RH§ = _loc8_;
               this.§_-6w§ = _loc9_;
               this.§_-Gv§ = _loc12_;
            }
            else if(_loc3_ == §_-v7§)
            {
               this.§_-oQ§ = _loc8_;
               this.§_-s5§ = _loc9_;
               this.§_-hv§ = _loc12_;
            }
            else
            {
               §_-Ne§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.§_-oQ§ >= this.§_-RH§;
      }
      
      public function §_-Jf§(param1:§_-Wl§) : void
      {
         var _loc2_:§_-ZB§ = new §_-ZB§();
         _loc2_.id = §_-xB§;
         _loc2_.x = this.§_-RH§;
         _loc2_.y = this.§_-6w§;
         var _loc3_:Number = §_-nD§ / this.§_-Gv§ / 2;
         var _loc4_:Number = §_-pu§ / this.§_-Gv§ / 2;
         _loc2_.left = this.§_-RH§ - _loc3_;
         _loc2_.right = this.§_-RH§ + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-ZB§;
         (_loc5_ = new §_-ZB§()).id = §_-v7§;
         _loc5_.x = this.§_-oQ§;
         _loc5_.y = this.§_-s5§;
         var _loc6_:Number = §_-nD§ / this.§_-hv§ / 2;
         var _loc7_:Number = §_-pu§ / this.§_-hv§ / 2;
         _loc5_.left = this.§_-oQ§ - _loc6_;
         _loc5_.right = this.§_-oQ§ + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-Jc§.length > 0)
         {
            param1.§_-Jc§.pop();
         }
         param1.§_-Jc§.push(_loc2_);
         param1.§_-Jc§.push(_loc5_);
      }
      
      public function §_-Lx§(param1:§_-ZB§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-b§.§_-iX§ * 0.5 / _loc2_ * §_-Ay§.§_-G0§;
         var _loc4_:Number = param1.y - §_-b§.§_-q§ * 0.5 / _loc2_ * §_-Ay§.§_-G0§;
         var _loc5_:Number = _loc3_ + §_-b§.§_-iX§ / _loc2_ * §_-Ay§.§_-G0§;
         var _loc6_:Number = _loc4_ + §_-b§.§_-q§ / _loc2_ * §_-Ay§.§_-G0§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      public function §_-2i§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-Kp§)
         {
            this.§_-pc§ = this.§_-Kp§.x;
            this.§_-hL§ = this.§_-Kp§.y;
            §_-YI§ = §_-nD§ / (this.§_-Kp§.right - this.§_-Kp§.left);
         }
         else
         {
            this.§_-Fn§();
            _loc2_ = this.mCurrentCameraSliderLocation;
            if(this.mCurrentAction == §_-Sb§)
            {
               _loc2_ += param1 * this.§_-ot§;
               if(_loc2_ >= §_-d9§)
               {
                  _loc2_ = §_-d9§;
                  this.§_-ot§ = -this.§_-ot§;
               }
               this.mCurrentCameraSliderLocation = _loc2_;
            }
            else if(this.mCurrentAction == §_-ud§)
            {
               if(this.§_-d3§)
               {
                  this.§_-lX§ = this.§_-oQ§;
                  this.§_-SK§ = this.§_-s5§;
                  this.§_-RD§ = this.mManualScale = this.§_-hv§;
               }
               else
               {
                  _loc2_ += param1 * this.§_-ot§;
                  if(_loc2_ >= §_-d9§)
                  {
                     _loc2_ = §_-d9§;
                     this.§_-IZ§(§_-Qc§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-J8§)
            {
               if(this.§_-d3§)
               {
                  this.§_-lX§ = this.§_-RH§;
                  this.§_-SK§ = this.§_-6w§;
                  this.§_-RD§ = this.mManualScale = this.§_-Gv§;
               }
               else
               {
                  _loc2_ -= param1 * this.§_-ot§;
                  if(_loc2_ <= 0)
                  {
                     _loc2_ = 0;
                     this.§_-IZ§(§_-Qc§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-7W§)
            {
               this.§_-i2§ = true;
            }
            else if(this.mCurrentAction == §_-he§)
            {
               this.§_-8Z§(param1);
            }
            else if(this.mCurrentAction == §_-pb§)
            {
               this.§_-Kk§(param1);
            }
            this.§_-6Z§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-IC§();
         this.§_-Ha§();
         this.§_-rG§();
      }
      
      public function §_-6Z§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-fK§ = null;
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
            this.§_-i2§ = true;
            this.§_-ot§ = 0;
         }
         if(this.mCurrentCameraSliderLocation > §_-d9§)
         {
            this.§_-i2§ = true;
            this.§_-ot§ = 0;
         }
         if(this.mCurrentAction == §_-7W§)
         {
            if(!this.§_-9N§.mActiveObject)
            {
               this.§_-IZ§(§_-ud§);
               this.§_-WG§ = §_-YF§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-9N§.mActiveObject).§_-Nu§().GetPosition().x + (!!_loc5_.§_-uK§ ? _loc5_.§_-uK§ * §_-Ay§.§_-G0§ : 0);
               _loc7_ = _loc5_.§_-Nu§().GetPosition().y + (!!_loc5_.§_-88§ ? _loc5_.§_-88§ * §_-Ay§.§_-G0§ : 0);
               if((_loc8_ = _loc5_.§_-Nu§().GetLinearVelocity().x) > 0 && this.§_-m2§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-m2§ * §_-d9§;
               }
               if(param1 >= §_-d9§)
               {
                  param1 = §_-d9§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc24_ = param1 / §_-d9§;
               _loc25_ = this.§_-ae§ + (this.§_-9n§ - this.§_-ae§) * _loc24_;
               _loc26_ = this.§_-t-§ + (this.§_-11§ - this.§_-t-§) * _loc24_;
               _loc27_ = this.§_-7V§ + (this.§_-Zh§ - this.§_-7V§) * _loc24_;
               this.§_-Vb§ -= (this.§_-Vb§ - _loc25_) * _loc4_;
               this.§_-5T§ -= (this.§_-5T§ - _loc26_) * _loc4_;
               this.§_-wC§ -= (this.§_-wC§ - _loc27_) * _loc4_;
               _loc9_ = this.§_-5T§ - §_-nD§ * 0.5 / this.§_-Vb§;
               _loc10_ = this.§_-wC§ - §_-pu§ * 0.5 / this.§_-Vb§;
               _loc11_ = this.§_-5T§ + §_-nD§ * 0.5 / this.§_-Vb§;
               _loc12_ = this.§_-wC§ + §_-pu§ * 0.5 / this.§_-Vb§;
               _loc13_ = 150 * §_-Ay§.§_-G0§;
               _loc14_ = Math.min(_loc9_,_loc6_ - _loc13_);
               _loc15_ = Math.min(_loc10_,_loc7_ - _loc13_);
               _loc16_ = Math.max(_loc11_,_loc6_ + _loc13_);
               _loc17_ = Math.max(_loc12_,_loc7_ + _loc13_);
               _loc14_ = Math.max(this.§_-9A§,_loc14_);
               _loc16_ = Math.min(this.§_-wM§,_loc16_);
               _loc18_ = Math.abs(§_-nD§ / (_loc16_ - _loc14_));
               _loc19_ = Math.abs(§_-pu§ / (_loc17_ - _loc15_));
               if((_loc20_ = Math.min(_loc18_,_loc19_)) > this.§_-Vb§)
               {
                  _loc20_ = this.§_-Vb§;
               }
               _loc21_ = (_loc16_ + _loc14_) * 0.5;
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = false;
               if(_loc21_ + §_-nD§ * 0.5 / _loc20_ > this.§_-wM§)
               {
                  _loc14_ = (_loc16_ = this.§_-wM§) - §_-nD§ / _loc20_;
                  _loc23_ = true;
                  if(_loc14_ < this.§_-9A§)
                  {
                     _loc14_ = this.§_-9A§;
                  }
               }
               if(_loc21_ - §_-nD§ * 0.5 / _loc20_ < this.§_-9A§)
               {
                  _loc16_ = (_loc14_ = this.§_-9A§) + §_-nD§ / _loc20_;
                  _loc23_ = true;
                  if(_loc16_ > this.§_-wM§)
                  {
                     _loc16_ = this.§_-wM§;
                  }
               }
               if(_loc23_)
               {
                  _loc21_ = (_loc16_ + _loc14_) * 0.5;
                  _loc20_ = Math.abs(§_-nD§ / (_loc16_ - _loc14_));
               }
               if(_loc22_ - §_-nD§ * 0.5 / _loc20_ < this.§_-q4§)
               {
                  _loc22_ = this.§_-q4§ + §_-nD§ * 0.5 / _loc20_;
               }
               this.§_-pc§ -= (this.§_-pc§ - _loc21_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc20_) * _loc4_;
               §_-YI§ = this.mTempCameraAnimationScale2;
               this.§_-hL§ -= (this.§_-hL§ - _loc22_) * _loc4_;
               if(_loc6_ >= this.§_-wM§ || _loc6_ <= this.§_-9A§)
               {
                  this.§_-Vb§ = §_-YI§;
                  this.§_-5T§ = this.§_-pc§;
                  this.§_-wC§ = this.§_-hL§;
               }
               _loc20_ = Math.abs(§_-nD§ / (_loc16_ - _loc14_));
               if(_loc22_ - §_-nD§ * 0.5 / _loc20_ < this.§_-q4§)
               {
                  _loc22_ = this.§_-q4§ + §_-nD§ * 0.5 / _loc20_;
               }
            }
         }
         else if(this.§_-d3§)
         {
            if(this.§_-i2§ == false)
            {
               _loc4_ = 1;
            }
            this.§_-pc§ -= (this.§_-pc§ - this.§_-lX§) * _loc4_;
            this.§_-hL§ -= (this.§_-hL§ - this.§_-SK§) * _loc4_;
            §_-YI§ -= (§_-YI§ - this.§_-RD§) * _loc4_;
         }
         else if(this.§_-m2§ != 0)
         {
            if(this.§_-i2§ == false)
            {
               _loc4_ = 1;
            }
            _loc24_ = param1 / §_-d9§;
            _loc25_ = this.§_-ae§ + (this.§_-9n§ - this.§_-ae§) * _loc24_;
            _loc26_ = this.§_-t-§ + (this.§_-11§ - this.§_-t-§) * _loc24_;
            _loc27_ = this.§_-7V§ + (this.§_-Zh§ - this.§_-7V§) * _loc24_;
            this.§_-5T§ -= (this.§_-5T§ - _loc26_) * _loc4_;
            this.§_-wC§ -= (this.§_-wC§ - _loc27_) * _loc4_;
            this.§_-Vb§ -= (this.§_-Vb§ - _loc25_) * _loc4_;
            this.§_-pc§ = this.§_-5T§;
            this.§_-hL§ = this.§_-wC§;
            §_-YI§ = this.§_-Vb§;
         }
      }
      
      public function §_-K4§(param1:Number, param2:Number) : void
      {
         this.§_-ho§ = param1;
         this.§_-cl§ = param2;
      }
      
      public function §_-Fn§() : void
      {
         this.§_-ae§ = §_-0u§ + (this.§_-Gv§ - §_-0u§) * this.mManualScale;
         this.§_-7V§ = this.§_-6w§;
         var _loc1_:Number = this.§_-7V§ + §_-pu§ * 0.5 / this.§_-Gv§;
         var _loc2_:Number = §_-pu§ / §_-0u§ * 5;
         if(_loc1_ > _loc2_)
         {
            this.§_-7V§ += _loc2_ - _loc1_;
         }
         this.§_-t-§ = this.§_-RH§;
         var _loc3_:Number = this.§_-t-§ - §_-nD§ * 0.5 / this.§_-ae§;
         if(_loc3_ < this.§_-9A§)
         {
            this.§_-t-§ += this.§_-9A§ - _loc3_;
         }
         this.§_-9n§ = §_-0u§ + (this.§_-hv§ - §_-0u§) * this.mManualScale;
         this.§_-Zh§ = this.§_-s5§;
         _loc1_ = this.§_-Zh§ + §_-pu§ * 0.5 / this.§_-9n§;
         if(_loc1_ > _loc2_)
         {
            this.§_-Zh§ += _loc2_ - _loc1_;
         }
         this.§_-11§ = this.§_-oQ§;
         var _loc4_:Number;
         if((_loc4_ = this.§_-11§ + §_-nD§ * 0.5 / this.§_-9n§) > this.§_-wM§)
         {
            this.§_-11§ += this.§_-wM§ - _loc4_;
         }
         this.§_-RD§ = this.mManualScale;
         if(§_-nD§ / this.§_-RD§ > this.§_-69§ - this.§break§)
         {
            this.§_-RD§ = §_-nD§ / (this.§_-69§ - this.§break§);
         }
         this.§_-RD§ = this.§_-RD§ < §_-0u§ ? Number(§_-0u§) : (this.§_-RD§ > §_-6i§ ? Number(§_-6i§) : Number(this.§_-RD§));
         _loc3_ = this.§_-lX§ - §_-nD§ * 0.5 / this.§_-RD§;
         if(_loc3_ < this.§break§)
         {
            this.§_-lX§ += this.§break§ - _loc3_;
         }
         if((_loc4_ = this.§_-lX§ + §_-nD§ * 0.5 / this.§_-RD§) > this.§_-69§)
         {
            this.§_-lX§ += this.§_-69§ - _loc4_;
         }
         var _loc5_:Number;
         if((_loc5_ = this.§_-SK§ - §_-pu§ * 0.5 / this.§_-RD§) < this.§_-tr§)
         {
            this.§_-SK§ += this.§_-tr§ - _loc5_;
         }
         _loc1_ = this.§_-SK§ + §_-pu§ * 0.5 / this.§_-RD§;
         if(_loc1_ > this.§_-0M§)
         {
            this.§_-SK§ += this.§_-0M§ - _loc1_;
         }
      }
      
      public function §_-1U§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§_-d3§ = true;
         this.§_-lX§ = this.§_-pc§;
         this.§_-SK§ = this.§_-hL§;
         this.§break§ = param1;
         this.§_-69§ = param3;
         this.§_-tr§ = param2;
         this.§_-0M§ = param4;
         this.§_-RD§ = §_-YI§;
      }
      
      public function §_-IC§() : void
      {
         if(this.§_-9N§.sprite)
         {
            §_-1e§ = this.§_-9N§.sprite.x = §_-Ay§.§_-vr§ * ((1 - §_-8g§.§_-YI§) / 2);
            §_-Va§ = this.§_-9N§.sprite.y = §_-Ay§.§_-8K§ * (1 - §_-8g§.§_-YI§) * §_-H1§.§_-v8§;
         }
      }
      
      public function §_-rG§() : void
      {
         if(this.§_-9N§.sprite)
         {
            this.§_-9N§.sprite.scaleX = §_-YI§;
            this.§_-9N§.sprite.scaleY = §_-YI§;
         }
      }
      
      public function §_-Ha§() : void
      {
         var _loc1_:Number = this.§_-pc§ / §_-Ay§.§_-G0§ + this.§_-ho§;
         var _loc2_:Number = this.§_-hL§ / §_-Ay§.§_-G0§ + this.§_-cl§;
         this.§_-UN§ = _loc1_ - §_-Ay§.§_-vr§ / 2 * §_-b§.§_-X4§ / §_-b§.§_-q-§;
         this.§_-1D§ = _loc2_ - §_-Ay§.§_-8K§ / 2 + §_-H1§.§_-pf§;
         this.§_-9N§.§_-c§.§do§(this.§_-UN§,this.§_-1D§);
         this.§_-9N§.mLevelObjects.§do§(this.§_-UN§,this.§_-1D§);
         this.§_-9N§.§_-dv§.§do§(this.§_-UN§,this.§_-1D§);
         this.§_-9N§.mLevelSlingshot.§do§(this.§_-UN§,this.§_-1D§);
         this.§_-9N§.§_-Rh§.§do§(this.§_-UN§,this.§_-1D§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-WG§ = -1;
         if(this.§_-d3§)
         {
            this.§_-IZ§(§_-pb§);
         }
         else
         {
            this.§_-IZ§(§_-he§);
         }
         this.§_-DN§ = this.§_-jC§ = this.§_-kQ§ = param1;
         this.§_-Da§ = this.§_-Ct§ = this.§_-vA§ = param2;
         this.§_-oC§ = 0;
         this.§_-5T§ = this.§_-pc§;
         this.§_-wC§ = this.§_-hL§;
         this.§_-Vb§ = §_-YI§;
         this.mTempCameraAnimationScale2 = §_-YI§;
         if(Math.abs(this.§_-11§ - this.§_-t-§) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-pc§ - this.§_-t-§) / (this.§_-11§ - this.§_-t-§) * §_-d9§;
         }
         this.mDragging = true;
         if(§_-Ay§.§_-2Z§)
         {
            this.§_-9N§.§_-VZ§();
         }
      }
      
      public function §_-8Z§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-oC§ += param1;
         var _loc3_:Number = this.§_-DN§ - this.§_-jC§;
         if(this.§_-m2§ > 0)
         {
            _loc2_ -= _loc3_ * §_-Ay§.§_-G0§ / §_-YI§ / this.§_-m2§ * §_-d9§;
            this.§_-i2§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-i2§ = true;
            }
            if(_loc2_ > §_-d9§)
            {
               _loc2_ += (§_-d9§ - _loc2_) * 0.3;
               this.§_-i2§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-jC§ = this.§_-DN§;
      }
      
      public function §_-Kk§(param1:Number) : void
      {
         this.§_-lX§ += (this.§_-jC§ - this.§_-DN§) * §_-Ay§.§_-G0§;
         this.§_-SK§ += (this.§_-Ct§ - this.§_-Da§) * §_-Ay§.§_-G0§;
         this.§_-jC§ = this.§_-DN§;
         this.§_-Ct§ = this.§_-Da§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == §_-he§ || this.mCurrentAction == §_-pb§)
         {
            this.§_-DN§ = param1;
            this.§_-Da§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-he§)
         {
            this.§_-IZ§(§_-Qc§);
            if(param1 > 0)
            {
               this.§_-DN§ = param1;
            }
            _loc3_ = Math.abs(this.§_-DN§ - this.§_-kQ§);
            if(this.§_-oC§ < §_-pX§ && _loc3_ >= §_-Nq§ && _loc3_ >= §_-6h§ * this.§_-oC§ / 1000)
            {
               if(this.§_-DN§ < this.§_-kQ§)
               {
                  this.§_-IZ§(§_-ud§);
               }
               else
               {
                  this.§_-IZ§(§_-J8§);
               }
               this.§_-ot§ = _loc3_ / this.§_-oC§ * 10;
               this.§_-i2§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-i2§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-d9§)
               {
                  this.§_-i2§ = true;
               }
            }
            else if(this.§_-oC§ < §_-Hb§)
            {
               this.§_-tO§();
               this.§_-ot§ = §_-d9§ / (§_-d9§ / 500);
               this.§_-i2§ = true;
            }
            else
            {
               this.§_-8Z§(0);
               this.§_-T2§(0);
               this.§_-ot§ = §_-d9§ / (§_-d9§ / 500);
               this.§_-i2§ = true;
            }
         }
         this.mDragging = false;
         if(§_-Ay§.§_-2Z§)
         {
            this.§_-9N§.§_-cp§();
         }
      }
      
      public function §_-tO§() : void
      {
         if(this.mCurrentAction == §_-ud§)
         {
            this.§_-IZ§(§_-J8§);
         }
         else if(this.mCurrentAction == §_-J8§)
         {
            this.§_-IZ§(§_-ud§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-d9§ / 2)
         {
            this.§_-IZ§(§_-J8§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-d9§ / 2)
         {
            this.§_-IZ§(§_-ud§);
         }
      }
      
      public function §_-T2§(param1:int) : void
      {
         this.§_-WG§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-d9§ / 2)
         {
            this.§_-IZ§(§_-J8§);
         }
         else
         {
            this.§_-IZ§(§_-ud§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-IZ§(§_-J8§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-IZ§(§_-ud§);
      }
      
      public function §_-IZ§(param1:int) : void
      {
         this.§_-5T§ = this.§_-pc§;
         this.§_-wC§ = this.§_-hL§;
         this.§_-Vb§ = §_-YI§;
         this.mTempCameraAnimationScale2 = §_-YI§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-d9§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-ud§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-Qm§(param1:§_-ZB§) : void
      {
         this.§_-Kp§ = param1;
         if(this.§_-Kp§ != null)
         {
            this.§_-2p§ = new §_-ZB§();
            this.§_-2p§.x = this.§_-pc§;
            this.§_-2p§.y = this.§_-hL§;
            this.§_-2p§.scale = §_-YI§;
         }
         else
         {
            this.§_-pc§ = this.§_-2p§.x;
            this.§_-hL§ = this.§_-2p§.y;
            §_-YI§ = this.§_-2p§.scale;
            this.§_-2p§ = null;
         }
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += §_-L3§;
         }
         else
         {
            _loc2_ -= §_-L3§;
         }
         _loc2_ = Math.max(§_-Z3§,Math.min(§_-Hz§,_loc2_));
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
            if(this.§_-d3§)
            {
               this.§_-IZ§(§_-pb§);
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
      
      public function §_-nZ§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.§_-pc§;
         _loc1_ += " mYcenterB2: " + this.§_-hL§;
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
