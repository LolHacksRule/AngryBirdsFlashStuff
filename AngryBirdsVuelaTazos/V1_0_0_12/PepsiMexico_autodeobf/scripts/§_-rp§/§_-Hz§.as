package §_-rp§
{
   import §_-Hw§.§_-3C§;
   import §_-RG§.§_-HT§;
   import §_-Su§.§_-Bk§;
   import §_-Su§.§_-Xk§;
   import §_-u§.§_-5Q§;
   
   public class §_-Hz§
   {
      
      public static const §_-VQ§:Number = 1.25;
      
      public static const §_-DI§:Number = 0.15;
      
      public static const §_-RT§:Number = §_-3C§.§_-dN§ * §_-c5§.§_-Wa§;
      
      public static const §_-Lb§:Number = §_-3C§.§_-mI§ * §_-c5§.§_-Wa§;
      
      public static const §_-1H§:Number = 1;
      
      public static const §_-Tc§:Number = 0.4;
      
      public static const §_-Gw§:Number = 0.1;
      
      public static const §_-vC§:int = 1500;
      
      public static const §_-Er§:int = 10;
      
      public static const §_-4d§:int = 15;
      
      public static const §_-CM§:int = 300;
      
      public static const §_-Zz§:int = 1000;
      
      public static const §_-XQ§:int = 10000;
      
      public static const §_-2v§:int = §_-XQ§ / 50;
      
      public static const §_-Ev§:int = 0;
      
      public static const §_-6p§:int = 1;
      
      public static const §_-TN§:int = 2;
      
      public static const §_-Pj§:int = 3;
      
      public static const §_-pa§:int = 4;
      
      public static const §_-bs§:int = 5;
      
      public static const §_-Mq§:int = 6;
      
      public static const §_-Ua§:String = "CASTLE";
      
      public static const §_-MY§:String = "SLINGSHOT";
      
      public static var §_-sV§:Number;
      
      public static var §_-F5§:Number;
      
      public static var §_-cK§:Number;
      
      public static const §_-Fk§:Number = 2000;
       
      
      public var mManualScale:Number;
      
      public var §_-ED§:Number;
      
      public var §_-dk§:Number;
      
      public var §_-ll§:Number;
      
      public var §_-K0§:Number;
      
      public var §_-AW§:Number;
      
      public var §_-Vg§:Number;
      
      public var §_-fE§:§_-c5§;
      
      public var §_-HF§:Number;
      
      public var §_-73§:Number;
      
      public var §_-AA§:Number;
      
      public var §_-tR§:Number;
      
      public var §_-bS§:Number;
      
      public var §_-Ep§:Number;
      
      public var §_-Ce§:Number;
      
      public var §_-UL§:Number;
      
      public var §_-AR§:Number;
      
      public var §_-rL§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-Vi§:Number;
      
      public var §_-eP§:Number;
      
      public var §_-qV§:Number;
      
      public var §_-7D§:Number;
      
      public var §_-H1§:Number;
      
      public var mPigsAreOnRight:Boolean;
      
      public var §_-QJ§:Number;
      
      public var §_-TD§:Number;
      
      public var §_-Ra§:Number;
      
      public var §_-nu§:Number;
      
      public var §_-N0§:Number;
      
      public var §_-YC§:Number;
      
      public var §_-vS§:Number = 0;
      
      public var §_-H6§:Number = 0;
      
      public var §_-ql§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-pt§:Number = 0;
      
      public var §_-RB§:Boolean = true;
      
      public var §_-PF§:Number = 0;
      
      public var §_-FN§:Number = 0;
      
      public var §_-C1§:Number = 0;
      
      public var §_-14§:Number = 0;
      
      public var §_-3§:Number = 0;
      
      public var §_-jE§:Number = 0;
      
      public var §_-1f§:Number = 0;
      
      public var §_-sH§:Number = 0;
      
      public var §_-4X§:Number = 0;
      
      public var §_-tH§:Number = 0;
      
      public var §_-Ln§:Number = 0;
      
      public var §_-iE§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-6U§:Number = 0;
      
      private var §_-bI§:Number = 0;
      
      public var §_-0e§:Number = 0;
      
      public var §_-kD§:Number = 0;
      
      public var §_-Os§:Number = 0;
      
      public var §_-dq§:Number = 0;
      
      public var §_-0r§:Number;
      
      public var §_-B8§:Number;
      
      public var §_-7v§:Number;
      
      private var §_-oW§:Boolean = false;
      
      private var §_-vO§:§_-Bk§ = null;
      
      private var §switch§:§_-Bk§ = null;
      
      public function §_-Hz§(param1:§_-c5§, param2:§_-Xk§)
      {
         super();
         this.§_-ED§ = 0;
         this.§_-dk§ = 0;
         this.§_-fE§ = param1;
         §_-Hz§.§_-sV§ = 1;
         this.mManualScale = 1;
         this.§_-RD§(param2.§_-0y§);
         this.§_-uf§();
         this.§_-vS§ = this.§_-AA§ - this.§_-Ep§;
         this.§_-H6§ = this.§_-tR§ - this.§_-Ce§;
         this.§_-ql§ = this.§_-bS§ - this.§_-UL§;
         this.§_-ED§ = this.§_-AA§;
         this.§_-dk§ = this.§_-tR§;
         §_-sV§ = this.§_-bS§;
         this.mCurrentCameraSliderLocation = §_-XQ§;
         this.§_-RB§ = true;
         this.§_-pt§ = §_-XQ§ / 500;
         this.goToCastleView();
         this.§_-PF§ = 2000;
         this.§_-78§();
         this.§_-J7§();
         this.§_-m3§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-ED§ = this.§_-Ep§;
         this.§_-dk§ = this.§_-Ce§;
         this.§_-RB§ = false;
         this.§_-pt§ = §_-XQ§ / 160000;
         this.§_-pN§(§_-bs§);
      }
      
      public function §_-uf§() : void
      {
         this.§_-eP§ = this.§_-Ep§ - §_-RT§ / this.§_-UL§ / 2;
         this.§_-qV§ = this.§_-AA§ + §_-RT§ / this.§_-bS§ / 2;
         this.§_-7D§ = this.§_-fE§.§_-tB§.§_-JX§ - 20 * §_-c5§.§_-rk§ * §_-c5§.§_-Wa§;
         this.§_-H1§ = this.§_-fE§.§_-tB§.§_-JX§ + 4;
      }
      
      public function clear() : void
      {
         this.§_-fE§ = null;
      }
      
      public function §_-RD§(param1:Vector.<§_-Bk§>) : void
      {
         var _loc2_:§_-Bk§ = null;
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
               this.§_-kw§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-Lb§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-RT§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-MY§)
            {
               this.§_-Ep§ = _loc8_;
               this.§_-Ce§ = _loc9_;
               this.§_-UL§ = _loc12_;
            }
            else if(_loc3_ == §_-Ua§)
            {
               this.§_-AA§ = _loc8_;
               this.§_-tR§ = _loc9_;
               this.§_-bS§ = _loc12_;
            }
            else
            {
               §_-HT§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.§_-AA§ >= this.§_-Ep§;
      }
      
      public function §_-io§(param1:§_-Xk§) : void
      {
         var _loc2_:§_-Bk§ = new §_-Bk§();
         _loc2_.id = §_-MY§;
         _loc2_.x = this.§_-Ep§;
         _loc2_.y = this.§_-Ce§;
         var _loc3_:Number = §_-RT§ / this.§_-UL§ / 2;
         var _loc4_:Number = §_-Lb§ / this.§_-UL§ / 2;
         _loc2_.left = this.§_-Ep§ - _loc3_;
         _loc2_.right = this.§_-Ep§ + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-Bk§;
         (_loc5_ = new §_-Bk§()).id = §_-Ua§;
         _loc5_.x = this.§_-AA§;
         _loc5_.y = this.§_-tR§;
         var _loc6_:Number = §_-RT§ / this.§_-bS§ / 2;
         var _loc7_:Number = §_-Lb§ / this.§_-bS§ / 2;
         _loc5_.left = this.§_-AA§ - _loc6_;
         _loc5_.right = this.§_-AA§ + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-0y§.length > 0)
         {
            param1.§_-0y§.pop();
         }
         param1.§_-0y§.push(_loc2_);
         param1.§_-0y§.push(_loc5_);
      }
      
      public function §_-kw§(param1:§_-Bk§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-3C§.§_-dN§ * 0.5 / _loc2_ * §_-c5§.§_-Wa§;
         var _loc4_:Number = param1.y - §_-3C§.§_-mI§ * 0.5 / _loc2_ * §_-c5§.§_-Wa§;
         var _loc5_:Number = _loc3_ + §_-3C§.§_-dN§ / _loc2_ * §_-c5§.§_-Wa§;
         var _loc6_:Number = _loc4_ + §_-3C§.§_-mI§ / _loc2_ * §_-c5§.§_-Wa§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      public function §_-1y§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-vO§)
         {
            this.§_-ED§ = this.§_-vO§.x;
            this.§_-dk§ = this.§_-vO§.y;
            §_-sV§ = §_-RT§ / (this.§_-vO§.right - this.§_-vO§.left);
         }
         else
         {
            this.§_-g§();
            _loc2_ = this.mCurrentCameraSliderLocation;
            if(this.mCurrentAction == §_-bs§)
            {
               _loc2_ += param1 * this.§_-pt§;
               if(_loc2_ >= §_-XQ§)
               {
                  _loc2_ = §_-XQ§;
                  this.§_-pt§ = -this.§_-pt§;
               }
               this.mCurrentCameraSliderLocation = _loc2_;
            }
            else if(this.mCurrentAction == §_-6p§)
            {
               if(this.§_-oW§)
               {
                  this.§_-0r§ = this.§_-AA§;
                  this.§_-B8§ = this.§_-tR§;
                  this.§_-7v§ = this.mManualScale = this.§_-bS§;
               }
               else
               {
                  _loc2_ += param1 * this.§_-pt§;
                  if(_loc2_ >= §_-XQ§)
                  {
                     _loc2_ = §_-XQ§;
                     this.§_-pN§(§_-Ev§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-TN§)
            {
               if(this.§_-oW§)
               {
                  this.§_-0r§ = this.§_-Ep§;
                  this.§_-B8§ = this.§_-Ce§;
                  this.§_-7v§ = this.mManualScale = this.§_-UL§;
               }
               else
               {
                  _loc2_ -= param1 * this.§_-pt§;
                  if(_loc2_ <= 0)
                  {
                     _loc2_ = 0;
                     this.§_-pN§(§_-Ev§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-Pj§)
            {
               this.§_-RB§ = true;
            }
            else if(this.mCurrentAction == §_-pa§)
            {
               this.§_-Z0§(param1);
            }
            else if(this.mCurrentAction == §_-Mq§)
            {
               this.§_-AL§(param1);
            }
            this.§_-uj§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-78§();
         this.§_-J7§();
         this.§_-m3§();
      }
      
      public function §_-uj§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-5Q§ = null;
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
            this.§_-RB§ = true;
            this.§_-pt§ = 0;
         }
         if(this.mCurrentCameraSliderLocation > §_-XQ§)
         {
            this.§_-RB§ = true;
            this.§_-pt§ = 0;
         }
         if(this.mCurrentAction == §_-Pj§)
         {
            if(!this.§_-fE§.mActiveObject)
            {
               this.§_-pN§(§_-6p§);
               this.§_-4X§ = §_-Zz§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-fE§.mActiveObject).§_-t9§().GetPosition().x + (!!_loc5_.§_-vr§ ? _loc5_.§_-vr§ * §_-c5§.§_-Wa§ : 0);
               _loc7_ = _loc5_.§_-t9§().GetPosition().y + (!!_loc5_.§_-M-§ ? _loc5_.§_-M-§ * §_-c5§.§_-Wa§ : 0);
               if((_loc8_ = _loc5_.§_-t9§().GetLinearVelocity().x) > 0 && this.§_-vS§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-vS§ * §_-XQ§;
               }
               if(param1 >= §_-XQ§)
               {
                  param1 = §_-XQ§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc24_ = param1 / §_-XQ§;
               _loc25_ = this.§_-YC§ + (this.§_-Ra§ - this.§_-YC§) * _loc24_;
               _loc26_ = this.§_-nu§ + (this.§_-QJ§ - this.§_-nu§) * _loc24_;
               _loc27_ = this.§_-N0§ + (this.§_-TD§ - this.§_-N0§) * _loc24_;
               this.§_-iE§ -= (this.§_-iE§ - _loc25_) * _loc4_;
               this.§_-tH§ -= (this.§_-tH§ - _loc26_) * _loc4_;
               this.§_-Ln§ -= (this.§_-Ln§ - _loc27_) * _loc4_;
               _loc9_ = this.§_-tH§ - §_-RT§ * 0.5 / this.§_-iE§;
               _loc10_ = this.§_-Ln§ - §_-Lb§ * 0.5 / this.§_-iE§;
               _loc11_ = this.§_-tH§ + §_-RT§ * 0.5 / this.§_-iE§;
               _loc12_ = this.§_-Ln§ + §_-Lb§ * 0.5 / this.§_-iE§;
               _loc13_ = 150 * §_-c5§.§_-Wa§;
               _loc14_ = Math.min(_loc9_,_loc6_ - _loc13_);
               _loc15_ = Math.min(_loc10_,_loc7_ - _loc13_);
               _loc16_ = Math.max(_loc11_,_loc6_ + _loc13_);
               _loc17_ = Math.max(_loc12_,_loc7_ + _loc13_);
               _loc14_ = Math.max(this.§_-eP§,_loc14_);
               _loc16_ = Math.min(this.§_-qV§,_loc16_);
               _loc18_ = Math.abs(§_-RT§ / (_loc16_ - _loc14_));
               _loc19_ = Math.abs(§_-Lb§ / (_loc17_ - _loc15_));
               if((_loc20_ = Math.min(_loc18_,_loc19_)) > this.§_-iE§)
               {
                  _loc20_ = this.§_-iE§;
               }
               _loc21_ = (_loc16_ + _loc14_) * 0.5;
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = false;
               if(_loc21_ + §_-RT§ * 0.5 / _loc20_ > this.§_-qV§)
               {
                  _loc14_ = (_loc16_ = this.§_-qV§) - §_-RT§ / _loc20_;
                  _loc23_ = true;
                  if(_loc14_ < this.§_-eP§)
                  {
                     _loc14_ = this.§_-eP§;
                  }
               }
               if(_loc21_ - §_-RT§ * 0.5 / _loc20_ < this.§_-eP§)
               {
                  _loc16_ = (_loc14_ = this.§_-eP§) + §_-RT§ / _loc20_;
                  _loc23_ = true;
                  if(_loc16_ > this.§_-qV§)
                  {
                     _loc16_ = this.§_-qV§;
                  }
               }
               if(_loc23_)
               {
                  _loc21_ = (_loc16_ + _loc14_) * 0.5;
                  _loc20_ = Math.abs(§_-RT§ / (_loc16_ - _loc14_));
               }
               if(_loc22_ - §_-RT§ * 0.5 / _loc20_ < this.§_-7D§)
               {
                  _loc22_ = this.§_-7D§ + §_-RT§ * 0.5 / _loc20_;
               }
               this.§_-ED§ -= (this.§_-ED§ - _loc21_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc20_) * _loc4_;
               §_-sV§ = this.mTempCameraAnimationScale2;
               this.§_-dk§ -= (this.§_-dk§ - _loc22_) * _loc4_;
               if(_loc6_ >= this.§_-qV§ || _loc6_ <= this.§_-eP§)
               {
                  this.§_-iE§ = §_-sV§;
                  this.§_-tH§ = this.§_-ED§;
                  this.§_-Ln§ = this.§_-dk§;
               }
               _loc20_ = Math.abs(§_-RT§ / (_loc16_ - _loc14_));
               if(_loc22_ - §_-RT§ * 0.5 / _loc20_ < this.§_-7D§)
               {
                  _loc22_ = this.§_-7D§ + §_-RT§ * 0.5 / _loc20_;
               }
            }
         }
         else if(this.§_-oW§)
         {
            if(this.§_-RB§ == false)
            {
               _loc4_ = 1;
            }
            this.§_-ED§ -= (this.§_-ED§ - this.§_-0r§) * _loc4_;
            this.§_-dk§ -= (this.§_-dk§ - this.§_-B8§) * _loc4_;
            §_-sV§ -= (§_-sV§ - this.§_-7v§) * _loc4_;
         }
         else if(this.§_-vS§ != 0)
         {
            if(this.§_-RB§ == false)
            {
               _loc4_ = 1;
            }
            _loc24_ = param1 / §_-XQ§;
            _loc25_ = this.§_-YC§ + (this.§_-Ra§ - this.§_-YC§) * _loc24_;
            _loc26_ = this.§_-nu§ + (this.§_-QJ§ - this.§_-nu§) * _loc24_;
            _loc27_ = this.§_-N0§ + (this.§_-TD§ - this.§_-N0§) * _loc24_;
            this.§_-tH§ -= (this.§_-tH§ - _loc26_) * _loc4_;
            this.§_-Ln§ -= (this.§_-Ln§ - _loc27_) * _loc4_;
            this.§_-iE§ -= (this.§_-iE§ - _loc25_) * _loc4_;
            this.§_-ED§ = this.§_-tH§;
            this.§_-dk§ = this.§_-Ln§;
            §_-sV§ = this.§_-iE§;
         }
      }
      
      public function §_-8-§(param1:Number, param2:Number) : void
      {
         this.§_-6U§ = param1;
         this.§_-bI§ = param2;
      }
      
      public function §_-g§() : void
      {
         this.§_-YC§ = §_-DI§ + (this.§_-UL§ - §_-DI§) * this.mManualScale;
         this.§_-N0§ = this.§_-Ce§;
         var _loc1_:Number = this.§_-N0§ + §_-Lb§ * 0.5 / this.§_-UL§;
         var _loc2_:Number = §_-Lb§ / §_-DI§ * 5;
         if(_loc1_ > _loc2_)
         {
            this.§_-N0§ += _loc2_ - _loc1_;
         }
         this.§_-nu§ = this.§_-Ep§;
         var _loc3_:Number = this.§_-nu§ - §_-RT§ * 0.5 / this.§_-YC§;
         if(_loc3_ < this.§_-eP§)
         {
            this.§_-nu§ += this.§_-eP§ - _loc3_;
         }
         this.§_-Ra§ = §_-DI§ + (this.§_-bS§ - §_-DI§) * this.mManualScale;
         this.§_-TD§ = this.§_-tR§;
         _loc1_ = this.§_-TD§ + §_-Lb§ * 0.5 / this.§_-Ra§;
         if(_loc1_ > _loc2_)
         {
            this.§_-TD§ += _loc2_ - _loc1_;
         }
         this.§_-QJ§ = this.§_-AA§;
         var _loc4_:Number;
         if((_loc4_ = this.§_-QJ§ + §_-RT§ * 0.5 / this.§_-Ra§) > this.§_-qV§)
         {
            this.§_-QJ§ += this.§_-qV§ - _loc4_;
         }
         this.§_-7v§ = this.mManualScale;
         if(§_-RT§ / this.§_-7v§ > this.§_-kD§ - this.§_-0e§)
         {
            this.§_-7v§ = §_-RT§ / (this.§_-kD§ - this.§_-0e§);
         }
         this.§_-7v§ = this.§_-7v§ < §_-DI§ ? Number(§_-DI§) : (this.§_-7v§ > §_-VQ§ ? Number(§_-VQ§) : Number(this.§_-7v§));
         _loc3_ = this.§_-0r§ - §_-RT§ * 0.5 / this.§_-7v§;
         if(_loc3_ < this.§_-0e§)
         {
            this.§_-0r§ += this.§_-0e§ - _loc3_;
         }
         if((_loc4_ = this.§_-0r§ + §_-RT§ * 0.5 / this.§_-7v§) > this.§_-kD§)
         {
            this.§_-0r§ += this.§_-kD§ - _loc4_;
         }
         var _loc5_:Number;
         if((_loc5_ = this.§_-B8§ - §_-Lb§ * 0.5 / this.§_-7v§) < this.§_-Os§)
         {
            this.§_-B8§ += this.§_-Os§ - _loc5_;
         }
         _loc1_ = this.§_-B8§ + §_-Lb§ * 0.5 / this.§_-7v§;
         if(_loc1_ > this.§_-dq§)
         {
            this.§_-B8§ += this.§_-dq§ - _loc1_;
         }
      }
      
      public function §_-6D§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§_-oW§ = true;
         this.§_-0r§ = this.§_-ED§;
         this.§_-B8§ = this.§_-dk§;
         this.§_-0e§ = param1;
         this.§_-kD§ = param3;
         this.§_-Os§ = param2;
         this.§_-dq§ = param4;
         this.§_-7v§ = §_-sV§;
      }
      
      public function §_-78§() : void
      {
         if(this.§_-fE§.sprite)
         {
            §_-F5§ = this.§_-fE§.sprite.x = §_-c5§.§_-Vc§ * ((1 - §_-Hz§.§_-sV§) / 2);
            §_-cK§ = this.§_-fE§.sprite.y = §_-c5§.§_-rk§ * (1 - §_-Hz§.§_-sV§) * §_-lD§.§_-bc§;
         }
      }
      
      public function §_-m3§() : void
      {
         if(this.§_-fE§.sprite)
         {
            this.§_-fE§.sprite.scaleX = §_-sV§;
            this.§_-fE§.sprite.scaleY = §_-sV§;
         }
      }
      
      public function §_-J7§() : void
      {
         var _loc1_:Number = this.§_-ED§ / §_-c5§.§_-Wa§ + this.§_-6U§;
         var _loc2_:Number = this.§_-dk§ / §_-c5§.§_-Wa§ + this.§_-bI§;
         this.§_-AR§ = _loc1_ - §_-c5§.§_-Vc§ / 2 * §_-3C§.§_-pu§ / §_-3C§.§_-w7§;
         this.§_-rL§ = _loc2_ - §_-c5§.§_-rk§ / 2 + §_-lD§.§_-V3§;
         this.§_-fE§.§_-Hu§.§_-ty§(this.§_-AR§,this.§_-rL§);
         this.§_-fE§.mLevelObjects.§_-ty§(this.§_-AR§,this.§_-rL§);
         this.§_-fE§.§_-dl§.§_-ty§(this.§_-AR§,this.§_-rL§);
         this.§_-fE§.mLevelSlingshot.§_-ty§(this.§_-AR§,this.§_-rL§);
         this.§_-fE§.§_-AC§.§_-ty§(this.§_-AR§,this.§_-rL§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-4X§ = -1;
         if(this.§_-oW§)
         {
            this.§_-pN§(§_-Mq§);
         }
         else
         {
            this.§_-pN§(§_-pa§);
         }
         this.§_-3§ = this.§_-1f§ = this.§_-C1§ = param1;
         this.§_-jE§ = this.§_-sH§ = this.§_-14§ = param2;
         this.§_-FN§ = 0;
         this.§_-tH§ = this.§_-ED§;
         this.§_-Ln§ = this.§_-dk§;
         this.§_-iE§ = §_-sV§;
         this.mTempCameraAnimationScale2 = §_-sV§;
         if(Math.abs(this.§_-QJ§ - this.§_-nu§) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-ED§ - this.§_-nu§) / (this.§_-QJ§ - this.§_-nu§) * §_-XQ§;
         }
         this.mDragging = true;
         if(§_-c5§.§_-2r§)
         {
            this.§_-fE§.§_-cH§();
         }
      }
      
      public function §_-Z0§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-FN§ += param1;
         var _loc3_:Number = this.§_-3§ - this.§_-1f§;
         if(this.§_-vS§ > 0)
         {
            _loc2_ -= _loc3_ * §_-c5§.§_-Wa§ / §_-sV§ / this.§_-vS§ * §_-XQ§;
            this.§_-RB§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-RB§ = true;
            }
            if(_loc2_ > §_-XQ§)
            {
               _loc2_ += (§_-XQ§ - _loc2_) * 0.3;
               this.§_-RB§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-1f§ = this.§_-3§;
      }
      
      public function §_-AL§(param1:Number) : void
      {
         this.§_-0r§ += (this.§_-1f§ - this.§_-3§) * §_-c5§.§_-Wa§;
         this.§_-B8§ += (this.§_-sH§ - this.§_-jE§) * §_-c5§.§_-Wa§;
         this.§_-1f§ = this.§_-3§;
         this.§_-sH§ = this.§_-jE§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == §_-pa§ || this.mCurrentAction == §_-Mq§)
         {
            this.§_-3§ = param1;
            this.§_-jE§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-pa§)
         {
            this.§_-pN§(§_-Ev§);
            if(param1 > 0)
            {
               this.§_-3§ = param1;
            }
            _loc3_ = Math.abs(this.§_-3§ - this.§_-C1§);
            if(this.§_-FN§ < §_-vC§ && _loc3_ >= §_-Er§ && _loc3_ >= §_-4d§ * this.§_-FN§ / 1000)
            {
               if(this.§_-3§ < this.§_-C1§)
               {
                  this.§_-pN§(§_-6p§);
               }
               else
               {
                  this.§_-pN§(§_-TN§);
               }
               this.§_-pt§ = _loc3_ / this.§_-FN§ * 10;
               this.§_-RB§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-RB§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-XQ§)
               {
                  this.§_-RB§ = true;
               }
            }
            else if(this.§_-FN§ < §_-CM§)
            {
               this.§_-lJ§();
               this.§_-pt§ = §_-XQ§ / (§_-XQ§ / 500);
               this.§_-RB§ = true;
            }
            else
            {
               this.§_-Z0§(0);
               this.§_-fY§(0);
               this.§_-pt§ = §_-XQ§ / (§_-XQ§ / 500);
               this.§_-RB§ = true;
            }
         }
         this.mDragging = false;
         if(§_-c5§.§_-2r§)
         {
            this.§_-fE§.§_-WL§();
         }
      }
      
      public function §_-lJ§() : void
      {
         if(this.mCurrentAction == §_-6p§)
         {
            this.§_-pN§(§_-TN§);
         }
         else if(this.mCurrentAction == §_-TN§)
         {
            this.§_-pN§(§_-6p§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-XQ§ / 2)
         {
            this.§_-pN§(§_-TN§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-XQ§ / 2)
         {
            this.§_-pN§(§_-6p§);
         }
      }
      
      public function §_-fY§(param1:int) : void
      {
         this.§_-4X§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-XQ§ / 2)
         {
            this.§_-pN§(§_-TN§);
         }
         else
         {
            this.§_-pN§(§_-6p§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-pN§(§_-TN§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-pN§(§_-6p§);
      }
      
      public function §_-pN§(param1:int) : void
      {
         this.§_-tH§ = this.§_-ED§;
         this.§_-Ln§ = this.§_-dk§;
         this.§_-iE§ = §_-sV§;
         this.mTempCameraAnimationScale2 = §_-sV§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-XQ§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-6p§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-p6§(param1:§_-Bk§) : void
      {
         this.§_-vO§ = param1;
         if(this.§_-vO§ != null)
         {
            this.§switch§ = new §_-Bk§();
            this.§switch§.x = this.§_-ED§;
            this.§switch§.y = this.§_-dk§;
            this.§switch§.scale = §_-sV§;
         }
         else
         {
            this.§_-ED§ = this.§switch§.x;
            this.§_-dk§ = this.§switch§.y;
            §_-sV§ = this.§switch§.scale;
            this.§switch§ = null;
         }
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += §_-Gw§;
         }
         else
         {
            _loc2_ -= §_-Gw§;
         }
         _loc2_ = Math.max(§_-Tc§,Math.min(§_-1H§,_loc2_));
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
            if(this.§_-oW§)
            {
               this.§_-pN§(§_-Mq§);
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
      
      public function §_-AS§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.§_-ED§;
         _loc1_ += " mYcenterB2: " + this.§_-dk§;
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
