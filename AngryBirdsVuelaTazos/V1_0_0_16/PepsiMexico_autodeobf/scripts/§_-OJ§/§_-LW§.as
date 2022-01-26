package §_-OJ§
{
   import §_-CR§.§_-Dz§;
   import §_-Qx§.§_-7x§;
   import §_-Qx§.§_-Wv§;
   import §_-e3§.§_-54§;
   import §_-hU§.§_-MB§;
   
   public class §_-LW§
   {
      
      public static const §_-Fn§:Number = 1.25;
      
      public static const §_-KT§:Number = 0.15;
      
      public static const §_-Bh§:Number = §_-MB§.§_-1q§ * §_-tL§.§_-7m§;
      
      public static const §_-iy§:Number = §_-MB§.§_-SP§ * §_-tL§.§_-7m§;
      
      public static const §_-E3§:Number = 1;
      
      public static const §_-tc§:Number = 0.4;
      
      public static const §_-ks§:Number = 0.1;
      
      public static const §_-5T§:int = 1500;
      
      public static const §_-wS§:int = 10;
      
      public static const §_-CH§:int = 15;
      
      public static const §_-5C§:int = 300;
      
      public static const §_-9R§:int = 1000;
      
      public static const §_-K§:int = 10000;
      
      public static const §_-Fa§:int = §_-K§ / 50;
      
      public static const §_-Mt§:int = 0;
      
      public static const §_-iB§:int = 1;
      
      public static const §_-rN§:int = 2;
      
      public static const §_-Z3§:int = 3;
      
      public static const §_-Xu§:int = 4;
      
      public static const §_-pF§:int = 5;
      
      public static const §_-w8§:int = 6;
      
      public static const §_-ZB§:String = "CASTLE";
      
      public static const §_-3Y§:String = "SLINGSHOT";
      
      public static var § use§:Number;
      
      public static var §_-wF§:Number;
      
      public static var §_-C4§:Number;
      
      public static const §_-pr§:Number = 2000;
       
      
      public var mManualScale:Number;
      
      public var §_-Pm§:Number;
      
      public var §_-wo§:Number;
      
      public var §_-Xc§:Number;
      
      public var §_-id§:Number;
      
      public var §_-OV§:Number;
      
      public var §_-Ts§:Number;
      
      public var §_-Ag§:§_-tL§;
      
      public var §_-Ki§:Number;
      
      public var §_-Fy§:Number;
      
      public var §_-Jy§:Number;
      
      public var §in §:Number;
      
      public var §_-3w§:Number;
      
      public var §_-j8§:Number;
      
      public var §_-ss§:Number;
      
      public var §_-8b§:Number;
      
      public var §_-bM§:Number;
      
      public var §_-z§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-46§:Number;
      
      public var §_-DB§:Number;
      
      public var §_-4Y§:Number;
      
      public var §catch§:Number;
      
      public var §_-Ns§:Number;
      
      public var §_-6d§:Boolean;
      
      public var §_-pU§:Number;
      
      public var §_-AN§:Number;
      
      public var §_-tq§:Number;
      
      public var §_-FV§:Number;
      
      public var §_-2M§:Number;
      
      public var §_-0i§:Number;
      
      public var §_-2c§:Number = 0;
      
      public var §_-H6§:Number = 0;
      
      public var §_-tC§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-rE§:Number = 0;
      
      public var §_-Im§:Boolean = true;
      
      public var §_-UY§:Number = 0;
      
      public var §_-a6§:Number = 0;
      
      public var §_-CE§:Number = 0;
      
      public var §_-GU§:Number = 0;
      
      public var §_-Zs§:Number = 0;
      
      public var §_-ax§:Number = 0;
      
      public var §_-Ne§:Number = 0;
      
      public var §_-7n§:Number = 0;
      
      public var §_-Er§:Number = 0;
      
      public var §_-Tp§:Number = 0;
      
      public var §_-B6§:Number = 0;
      
      public var §_-CG§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-fq§:Number = 0;
      
      private var §_-IC§:Number = 0;
      
      public var §_-Qt§:Number = 0;
      
      public var §_-xA§:Number = 0;
      
      public var §_-bj§:Number = 0;
      
      public var §_-cF§:Number = 0;
      
      public var §_-qa§:Number;
      
      public var §_-zr§:Number;
      
      public var §_-Xm§:Number;
      
      private var §_-Mz§:Boolean = false;
      
      private var §_-oe§:§_-7x§ = null;
      
      private var §_-XJ§:§_-7x§ = null;
      
      public function §_-LW§(param1:§_-tL§, param2:§_-Wv§)
      {
         super();
         this.§_-Pm§ = 0;
         this.§_-wo§ = 0;
         this.§_-Ag§ = param1;
         §_-LW§.§ use§ = 1;
         this.mManualScale = 1;
         this.§_-jn§(param2.§_-Pg§);
         this.§_-9f§();
         this.§_-2c§ = this.§_-Jy§ - this.§_-j8§;
         this.§_-H6§ = this.§in § - this.§_-ss§;
         this.§_-tC§ = this.§_-3w§ - this.§_-8b§;
         this.§_-Pm§ = this.§_-Jy§;
         this.§_-wo§ = this.§in §;
         § use§ = this.§_-3w§;
         this.mCurrentCameraSliderLocation = §_-K§;
         this.§_-Im§ = true;
         this.§_-rE§ = §_-K§ / 500;
         this.goToCastleView();
         this.§_-UY§ = 2000;
         this.§_-s5§();
         this.§_-Lp§();
         this.§_-8d§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-Pm§ = this.§_-j8§;
         this.§_-wo§ = this.§_-ss§;
         this.§_-Im§ = false;
         this.§_-rE§ = §_-K§ / 160000;
         this.§_-dE§(§_-pF§);
      }
      
      public function §_-9f§() : void
      {
         this.§_-DB§ = this.§_-j8§ - §_-Bh§ / this.§_-8b§ / 2;
         this.§_-4Y§ = this.§_-Jy§ + §_-Bh§ / this.§_-3w§ / 2;
         this.§catch§ = this.§_-Ag§.§_-N7§.§_-IL§ - 20 * §_-tL§.§_-zh§ * §_-tL§.§_-7m§;
         this.§_-Ns§ = this.§_-Ag§.§_-N7§.§_-IL§ + 4;
      }
      
      public function clear() : void
      {
         this.§_-Ag§ = null;
      }
      
      public function §_-jn§(param1:Vector.<§_-7x§>) : void
      {
         var _loc2_:§_-7x§ = null;
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
               this.§_-69§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-iy§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-Bh§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-3Y§)
            {
               this.§_-j8§ = _loc8_;
               this.§_-ss§ = _loc9_;
               this.§_-8b§ = _loc12_;
            }
            else if(_loc3_ == §_-ZB§)
            {
               this.§_-Jy§ = _loc8_;
               this.§in § = _loc9_;
               this.§_-3w§ = _loc12_;
            }
            else
            {
               §_-54§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.§_-6d§ = this.§_-Jy§ >= this.§_-j8§;
      }
      
      public function §_-fU§(param1:§_-Wv§) : void
      {
         var _loc2_:§_-7x§ = new §_-7x§();
         _loc2_.id = §_-3Y§;
         _loc2_.x = this.§_-j8§;
         _loc2_.y = this.§_-ss§;
         var _loc3_:Number = §_-Bh§ / this.§_-8b§ / 2;
         var _loc4_:Number = §_-iy§ / this.§_-8b§ / 2;
         _loc2_.left = this.§_-j8§ - _loc3_;
         _loc2_.right = this.§_-j8§ + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-7x§;
         (_loc5_ = new §_-7x§()).id = §_-ZB§;
         _loc5_.x = this.§_-Jy§;
         _loc5_.y = this.§in §;
         var _loc6_:Number = §_-Bh§ / this.§_-3w§ / 2;
         var _loc7_:Number = §_-iy§ / this.§_-3w§ / 2;
         _loc5_.left = this.§_-Jy§ - _loc6_;
         _loc5_.right = this.§_-Jy§ + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-Pg§.length > 0)
         {
            param1.§_-Pg§.pop();
         }
         param1.§_-Pg§.push(_loc2_);
         param1.§_-Pg§.push(_loc5_);
      }
      
      public function §_-69§(param1:§_-7x§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-MB§.§_-1q§ * 0.5 / _loc2_ * §_-tL§.§_-7m§;
         var _loc4_:Number = param1.y - §_-MB§.§_-SP§ * 0.5 / _loc2_ * §_-tL§.§_-7m§;
         var _loc5_:Number = _loc3_ + §_-MB§.§_-1q§ / _loc2_ * §_-tL§.§_-7m§;
         var _loc6_:Number = _loc4_ + §_-MB§.§_-SP§ / _loc2_ * §_-tL§.§_-7m§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      public function §_-Jl§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-oe§)
         {
            this.§_-Pm§ = this.§_-oe§.x;
            this.§_-wo§ = this.§_-oe§.y;
            § use§ = §_-Bh§ / (this.§_-oe§.right - this.§_-oe§.left);
         }
         else
         {
            this.§_-Ql§();
            _loc2_ = this.mCurrentCameraSliderLocation;
            if(this.mCurrentAction == §_-pF§)
            {
               _loc2_ += param1 * this.§_-rE§;
               if(_loc2_ >= §_-K§)
               {
                  _loc2_ = §_-K§;
                  this.§_-rE§ = -this.§_-rE§;
               }
               this.mCurrentCameraSliderLocation = _loc2_;
            }
            else if(this.mCurrentAction == §_-iB§)
            {
               if(this.§_-Mz§)
               {
                  this.§_-qa§ = this.§_-Jy§;
                  this.§_-zr§ = this.§in §;
                  this.§_-Xm§ = this.mManualScale = this.§_-3w§;
               }
               else
               {
                  _loc2_ += param1 * this.§_-rE§;
                  if(_loc2_ >= §_-K§)
                  {
                     _loc2_ = §_-K§;
                     this.§_-dE§(§_-Mt§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-rN§)
            {
               if(this.§_-Mz§)
               {
                  this.§_-qa§ = this.§_-j8§;
                  this.§_-zr§ = this.§_-ss§;
                  this.§_-Xm§ = this.mManualScale = this.§_-8b§;
               }
               else
               {
                  _loc2_ -= param1 * this.§_-rE§;
                  if(_loc2_ <= 0)
                  {
                     _loc2_ = 0;
                     this.§_-dE§(§_-Mt§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-Z3§)
            {
               this.§_-Im§ = true;
            }
            else if(this.mCurrentAction == §_-Xu§)
            {
               this.§_-Cl§(param1);
            }
            else if(this.mCurrentAction == §_-w8§)
            {
               this.§_-c1§(param1);
            }
            this.§_-A3§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-s5§();
         this.§_-Lp§();
         this.§_-8d§();
      }
      
      public function §_-A3§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-Dz§ = null;
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
            this.§_-Im§ = true;
            this.§_-rE§ = 0;
         }
         if(this.mCurrentCameraSliderLocation > §_-K§)
         {
            this.§_-Im§ = true;
            this.§_-rE§ = 0;
         }
         if(this.mCurrentAction == §_-Z3§)
         {
            if(!this.§_-Ag§.activeObject)
            {
               this.§_-dE§(§_-iB§);
               this.§_-Er§ = §_-9R§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-Ag§.activeObject).§_-zq§().GetPosition().x + (!!_loc5_.§_-3h§ ? _loc5_.§_-3h§ * §_-tL§.§_-7m§ : 0);
               _loc7_ = _loc5_.§_-zq§().GetPosition().y + (!!_loc5_.§_-fO§ ? _loc5_.§_-fO§ * §_-tL§.§_-7m§ : 0);
               if((_loc8_ = _loc5_.§_-zq§().GetLinearVelocity().x) > 0 && this.§_-2c§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-2c§ * §_-K§;
               }
               if(param1 >= §_-K§)
               {
                  param1 = §_-K§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc24_ = param1 / §_-K§;
               _loc25_ = this.§_-0i§ + (this.§_-tq§ - this.§_-0i§) * _loc24_;
               _loc26_ = this.§_-FV§ + (this.§_-pU§ - this.§_-FV§) * _loc24_;
               _loc27_ = this.§_-2M§ + (this.§_-AN§ - this.§_-2M§) * _loc24_;
               this.§_-CG§ -= (this.§_-CG§ - _loc25_) * _loc4_;
               this.§_-Tp§ -= (this.§_-Tp§ - _loc26_) * _loc4_;
               this.§_-B6§ -= (this.§_-B6§ - _loc27_) * _loc4_;
               _loc9_ = this.§_-Tp§ - §_-Bh§ * 0.5 / this.§_-CG§;
               _loc10_ = this.§_-B6§ - §_-iy§ * 0.5 / this.§_-CG§;
               _loc11_ = this.§_-Tp§ + §_-Bh§ * 0.5 / this.§_-CG§;
               _loc12_ = this.§_-B6§ + §_-iy§ * 0.5 / this.§_-CG§;
               _loc13_ = 150 * §_-tL§.§_-7m§;
               _loc14_ = Math.min(_loc9_,_loc6_ - _loc13_);
               _loc15_ = Math.min(_loc10_,_loc7_ - _loc13_);
               _loc16_ = Math.max(_loc11_,_loc6_ + _loc13_);
               _loc17_ = Math.max(_loc12_,_loc7_ + _loc13_);
               _loc14_ = Math.max(this.§_-DB§,_loc14_);
               _loc16_ = Math.min(this.§_-4Y§,_loc16_);
               _loc18_ = Math.abs(§_-Bh§ / (_loc16_ - _loc14_));
               _loc19_ = Math.abs(§_-iy§ / (_loc17_ - _loc15_));
               if((_loc20_ = Math.min(_loc18_,_loc19_)) > this.§_-CG§)
               {
                  _loc20_ = this.§_-CG§;
               }
               _loc21_ = (_loc16_ + _loc14_) * 0.5;
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = false;
               if(_loc21_ + §_-Bh§ * 0.5 / _loc20_ > this.§_-4Y§)
               {
                  _loc14_ = (_loc16_ = this.§_-4Y§) - §_-Bh§ / _loc20_;
                  _loc23_ = true;
                  if(_loc14_ < this.§_-DB§)
                  {
                     _loc14_ = this.§_-DB§;
                  }
               }
               if(_loc21_ - §_-Bh§ * 0.5 / _loc20_ < this.§_-DB§)
               {
                  _loc16_ = (_loc14_ = this.§_-DB§) + §_-Bh§ / _loc20_;
                  _loc23_ = true;
                  if(_loc16_ > this.§_-4Y§)
                  {
                     _loc16_ = this.§_-4Y§;
                  }
               }
               if(_loc23_)
               {
                  _loc21_ = (_loc16_ + _loc14_) * 0.5;
                  _loc20_ = Math.abs(§_-Bh§ / (_loc16_ - _loc14_));
               }
               if(_loc22_ - §_-Bh§ * 0.5 / _loc20_ < this.§catch§)
               {
                  _loc22_ = this.§catch§ + §_-Bh§ * 0.5 / _loc20_;
               }
               this.§_-Pm§ -= (this.§_-Pm§ - _loc21_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc20_) * _loc4_;
               § use§ = this.mTempCameraAnimationScale2;
               this.§_-wo§ -= (this.§_-wo§ - _loc22_) * _loc4_;
               if(_loc6_ >= this.§_-4Y§ || _loc6_ <= this.§_-DB§)
               {
                  this.§_-CG§ = § use§;
                  this.§_-Tp§ = this.§_-Pm§;
                  this.§_-B6§ = this.§_-wo§;
               }
               _loc20_ = Math.abs(§_-Bh§ / (_loc16_ - _loc14_));
               if(_loc22_ - §_-Bh§ * 0.5 / _loc20_ < this.§catch§)
               {
                  _loc22_ = this.§catch§ + §_-Bh§ * 0.5 / _loc20_;
               }
            }
         }
         else if(this.§_-Mz§)
         {
            if(this.§_-Im§ == false)
            {
               _loc4_ = 1;
            }
            this.§_-Pm§ -= (this.§_-Pm§ - this.§_-qa§) * _loc4_;
            this.§_-wo§ -= (this.§_-wo§ - this.§_-zr§) * _loc4_;
            § use§ -= (§ use§ - this.§_-Xm§) * _loc4_;
         }
         else if(this.§_-2c§ != 0)
         {
            if(this.§_-Im§ == false)
            {
               _loc4_ = 1;
            }
            _loc24_ = param1 / §_-K§;
            _loc25_ = this.§_-0i§ + (this.§_-tq§ - this.§_-0i§) * _loc24_;
            _loc26_ = this.§_-FV§ + (this.§_-pU§ - this.§_-FV§) * _loc24_;
            _loc27_ = this.§_-2M§ + (this.§_-AN§ - this.§_-2M§) * _loc24_;
            this.§_-Tp§ -= (this.§_-Tp§ - _loc26_) * _loc4_;
            this.§_-B6§ -= (this.§_-B6§ - _loc27_) * _loc4_;
            this.§_-CG§ -= (this.§_-CG§ - _loc25_) * _loc4_;
            this.§_-Pm§ = this.§_-Tp§;
            this.§_-wo§ = this.§_-B6§;
            § use§ = this.§_-CG§;
         }
      }
      
      public function §_-dU§(param1:Number, param2:Number) : void
      {
         this.§_-fq§ = param1;
         this.§_-IC§ = param2;
      }
      
      public function §_-Ql§() : void
      {
         this.§_-0i§ = §_-KT§ + (this.§_-8b§ - §_-KT§) * this.mManualScale;
         this.§_-2M§ = this.§_-ss§;
         var _loc1_:Number = this.§_-2M§ + §_-iy§ * 0.5 / this.§_-8b§;
         var _loc2_:Number = §_-iy§ / §_-KT§ * 5;
         if(_loc1_ > _loc2_)
         {
            this.§_-2M§ += _loc2_ - _loc1_;
         }
         this.§_-FV§ = this.§_-j8§;
         var _loc3_:Number = this.§_-FV§ - §_-Bh§ * 0.5 / this.§_-0i§;
         if(_loc3_ < this.§_-DB§)
         {
            this.§_-FV§ += this.§_-DB§ - _loc3_;
         }
         this.§_-tq§ = §_-KT§ + (this.§_-3w§ - §_-KT§) * this.mManualScale;
         this.§_-AN§ = this.§in §;
         _loc1_ = this.§_-AN§ + §_-iy§ * 0.5 / this.§_-tq§;
         if(_loc1_ > _loc2_)
         {
            this.§_-AN§ += _loc2_ - _loc1_;
         }
         this.§_-pU§ = this.§_-Jy§;
         var _loc4_:Number;
         if((_loc4_ = this.§_-pU§ + §_-Bh§ * 0.5 / this.§_-tq§) > this.§_-4Y§)
         {
            this.§_-pU§ += this.§_-4Y§ - _loc4_;
         }
         this.§_-Xm§ = this.mManualScale;
         if(§_-Bh§ / this.§_-Xm§ > this.§_-xA§ - this.§_-Qt§)
         {
            this.§_-Xm§ = §_-Bh§ / (this.§_-xA§ - this.§_-Qt§);
         }
         this.§_-Xm§ = this.§_-Xm§ < §_-KT§ ? Number(§_-KT§) : (this.§_-Xm§ > §_-Fn§ ? Number(§_-Fn§) : Number(this.§_-Xm§));
         _loc3_ = this.§_-qa§ - §_-Bh§ * 0.5 / this.§_-Xm§;
         if(_loc3_ < this.§_-Qt§)
         {
            this.§_-qa§ += this.§_-Qt§ - _loc3_;
         }
         if((_loc4_ = this.§_-qa§ + §_-Bh§ * 0.5 / this.§_-Xm§) > this.§_-xA§)
         {
            this.§_-qa§ += this.§_-xA§ - _loc4_;
         }
         var _loc5_:Number;
         if((_loc5_ = this.§_-zr§ - §_-iy§ * 0.5 / this.§_-Xm§) < this.§_-bj§)
         {
            this.§_-zr§ += this.§_-bj§ - _loc5_;
         }
         _loc1_ = this.§_-zr§ + §_-iy§ * 0.5 / this.§_-Xm§;
         if(_loc1_ > this.§_-cF§)
         {
            this.§_-zr§ += this.§_-cF§ - _loc1_;
         }
      }
      
      public function §_-FL§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§_-Mz§ = true;
         this.§_-qa§ = this.§_-Pm§;
         this.§_-zr§ = this.§_-wo§;
         this.§_-Qt§ = param1;
         this.§_-xA§ = param3;
         this.§_-bj§ = param2;
         this.§_-cF§ = param4;
         this.§_-Xm§ = § use§;
      }
      
      public function §_-s5§() : void
      {
         if(this.§_-Ag§.sprite)
         {
            §_-wF§ = this.§_-Ag§.sprite.x = §_-tL§.§_-il§ * ((1 - §_-LW§.§ use§) / 2);
            §_-C4§ = this.§_-Ag§.sprite.y = §_-tL§.§_-zh§ * (1 - §_-LW§.§ use§) * §_-y5§.§_-f4§;
         }
      }
      
      public function §_-8d§() : void
      {
         if(this.§_-Ag§.sprite)
         {
            this.§_-Ag§.sprite.scaleX = § use§;
            this.§_-Ag§.sprite.scaleY = § use§;
         }
      }
      
      public function §_-Lp§() : void
      {
         var _loc1_:Number = this.§_-Pm§ / §_-tL§.§_-7m§ + this.§_-fq§;
         var _loc2_:Number = this.§_-wo§ / §_-tL§.§_-7m§ + this.§_-IC§;
         this.§_-bM§ = _loc1_ - §_-tL§.§_-il§ / 2 * §_-MB§.§_-Rs§ / §_-MB§.§_-D1§;
         this.§_-z§ = _loc2_ - §_-tL§.§_-zh§ / 2 + §_-y5§.§_-Rl§;
         this.§_-Ag§.background.§_-lt§(this.§_-bM§,this.§_-z§);
         this.§_-Ag§.objects.§_-lt§(this.§_-bM§,this.§_-z§);
         this.§_-Ag§.§_-hA§.§_-lt§(this.§_-bM§,this.§_-z§);
         this.§_-Ag§.slingshot.§_-lt§(this.§_-bM§,this.§_-z§);
         this.§_-Ag§.particles.§_-lt§(this.§_-bM§,this.§_-z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-Er§ = -1;
         if(this.§_-Mz§)
         {
            this.§_-dE§(§_-w8§);
         }
         else
         {
            this.§_-dE§(§_-Xu§);
         }
         this.§_-Zs§ = this.§_-Ne§ = this.§_-CE§ = param1;
         this.§_-ax§ = this.§_-7n§ = this.§_-GU§ = param2;
         this.§_-a6§ = 0;
         this.§_-Tp§ = this.§_-Pm§;
         this.§_-B6§ = this.§_-wo§;
         this.§_-CG§ = § use§;
         this.mTempCameraAnimationScale2 = § use§;
         if(Math.abs(this.§_-pU§ - this.§_-FV§) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-Pm§ - this.§_-FV§) / (this.§_-pU§ - this.§_-FV§) * §_-K§;
         }
         this.mDragging = true;
      }
      
      public function §_-Cl§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-a6§ += param1;
         var _loc3_:Number = this.§_-Zs§ - this.§_-Ne§;
         if(this.§_-2c§ > 0)
         {
            _loc2_ -= _loc3_ * §_-tL§.§_-7m§ / § use§ / this.§_-2c§ * §_-K§;
            this.§_-Im§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-Im§ = true;
            }
            if(_loc2_ > §_-K§)
            {
               _loc2_ += (§_-K§ - _loc2_) * 0.3;
               this.§_-Im§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-Ne§ = this.§_-Zs§;
      }
      
      public function §_-c1§(param1:Number) : void
      {
         this.§_-qa§ += (this.§_-Ne§ - this.§_-Zs§) * §_-tL§.§_-7m§;
         this.§_-zr§ += (this.§_-7n§ - this.§_-ax§) * §_-tL§.§_-7m§;
         this.§_-Ne§ = this.§_-Zs§;
         this.§_-7n§ = this.§_-ax§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == §_-Xu§ || this.mCurrentAction == §_-w8§)
         {
            this.§_-Zs§ = param1;
            this.§_-ax§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-Xu§)
         {
            this.§_-dE§(§_-Mt§);
            if(param1 > 0)
            {
               this.§_-Zs§ = param1;
            }
            _loc3_ = Math.abs(this.§_-Zs§ - this.§_-CE§);
            if(this.§_-a6§ < §_-5T§ && _loc3_ >= §_-wS§ && _loc3_ >= §_-CH§ * this.§_-a6§ / 1000)
            {
               if(this.§_-Zs§ < this.§_-CE§)
               {
                  this.§_-dE§(§_-iB§);
               }
               else
               {
                  this.§_-dE§(§_-rN§);
               }
               this.§_-rE§ = _loc3_ / this.§_-a6§ * 10;
               this.§_-Im§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-Im§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-K§)
               {
                  this.§_-Im§ = true;
               }
            }
            else if(this.§_-a6§ < §_-5C§)
            {
               this.§_-4q§();
               this.§_-rE§ = §_-K§ / (§_-K§ / 500);
               this.§_-Im§ = true;
            }
            else
            {
               this.§_-Cl§(0);
               this.§_-WI§(0);
               this.§_-rE§ = §_-K§ / (§_-K§ / 500);
               this.§_-Im§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-4q§() : void
      {
         if(this.mCurrentAction == §_-iB§)
         {
            this.§_-dE§(§_-rN§);
         }
         else if(this.mCurrentAction == §_-rN§)
         {
            this.§_-dE§(§_-iB§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-K§ / 2)
         {
            this.§_-dE§(§_-rN§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-K§ / 2)
         {
            this.§_-dE§(§_-iB§);
         }
      }
      
      public function §_-WI§(param1:int) : void
      {
         this.§_-Er§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-K§ / 2)
         {
            this.§_-dE§(§_-rN§);
         }
         else
         {
            this.§_-dE§(§_-iB§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-dE§(§_-rN§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-dE§(§_-iB§);
      }
      
      public function §_-dE§(param1:int) : void
      {
         this.§_-Tp§ = this.§_-Pm§;
         this.§_-B6§ = this.§_-wo§;
         this.§_-CG§ = § use§;
         this.mTempCameraAnimationScale2 = § use§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-K§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-iB§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-4m§(param1:§_-7x§) : void
      {
         this.§_-oe§ = param1;
         if(this.§_-oe§ != null)
         {
            this.§_-XJ§ = new §_-7x§();
            this.§_-XJ§.x = this.§_-Pm§;
            this.§_-XJ§.y = this.§_-wo§;
            this.§_-XJ§.scale = § use§;
         }
         else
         {
            this.§_-Pm§ = this.§_-XJ§.x;
            this.§_-wo§ = this.§_-XJ§.y;
            § use§ = this.§_-XJ§.scale;
            this.§_-XJ§ = null;
         }
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += §_-ks§;
         }
         else
         {
            _loc2_ -= §_-ks§;
         }
         _loc2_ = Math.max(§_-tc§,Math.min(§_-E3§,_loc2_));
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
            if(this.§_-Mz§)
            {
               this.§_-dE§(§_-w8§);
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
      
      public function §_-tK§() : void
      {
         this.mManualScale = Math.max(this.mManualScale - 0.5,0.5);
      }
      
      public function §_-fJ§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.§_-Pm§;
         _loc1_ += " mYcenterB2: " + this.§_-wo§;
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
