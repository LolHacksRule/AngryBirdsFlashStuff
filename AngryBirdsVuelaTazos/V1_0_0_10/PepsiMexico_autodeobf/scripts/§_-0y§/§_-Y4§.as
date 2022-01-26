package §_-0y§
{
   import §_-3P§.§_-Ln§;
   import §_-3P§.§_-ry§;
   import §_-I1§.§_-2N§;
   import §_-Sp§.§_-JP§;
   import §_-ot§.§_-o6§;
   
   public class §_-Y4§
   {
      
      public static const §_-t§:Number = 1.25;
      
      public static const §_-0O§:Number = 0.15;
      
      public static const §_-VJ§:Number = §_-2N§.§_-ZL§ * §_-B3§.§_-s8§;
      
      public static const §_-nq§:Number = §_-2N§.§_-Uw§ * §_-B3§.§_-s8§;
      
      public static const §_-9D§:Number = 1;
      
      public static const §_-H-§:Number = 0.4;
      
      public static const §_-cD§:Number = 0.1;
      
      public static const §_-lh§:int = 1500;
      
      public static const §_-4E§:int = 10;
      
      public static const §_-Nb§:int = 15;
      
      public static const §_-4g§:int = 300;
      
      public static const §_-so§:int = 1000;
      
      public static const §_-L4§:int = 10000;
      
      public static const §_-sr§:int = §_-L4§ / 50;
      
      public static const §_-L0§:int = 0;
      
      public static const §_-u8§:int = 1;
      
      public static const §_-RY§:int = 2;
      
      public static const §_-pm§:int = 3;
      
      public static const §_-G2§:int = 4;
      
      public static const §_-1i§:int = 5;
      
      public static const §_-P9§:int = 6;
      
      public static const §_-cK§:String = "CASTLE";
      
      public static const §_-vx§:String = "SLINGSHOT";
      
      public static var §_-Q-§:Number;
      
      public static var §_-JB§:Number;
      
      public static var §_-Eb§:Number;
      
      public static const §_-Uc§:Number = 2000;
       
      
      public var mManualScale:Number;
      
      public var §_-q6§:Number;
      
      public var §_-F7§:Number;
      
      public var §_-SU§:Number;
      
      public var §_-C3§:Number;
      
      public var §_-6a§:Number;
      
      public var static:Number;
      
      public var §_-Ia§:§_-B3§;
      
      public var §_-t9§:Number;
      
      public var §_-Gv§:Number;
      
      public var §_-Xx§:Number;
      
      public var §_-T6§:Number;
      
      public var §_-NE§:Number;
      
      public var §_-HD§:Number;
      
      public var §_-jA§:Number;
      
      public var §_-FJ§:Number;
      
      public var §_-VA§:Number;
      
      public var §_-ZQ§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-1v§:Number;
      
      public var §_-cn§:Number;
      
      public var §_-dK§:Number;
      
      public var §_-Ue§:Number;
      
      public var §_-5§:Number;
      
      public var mPigsAreOnRight:Boolean;
      
      public var §_-5E§:Number;
      
      public var §_-V2§:Number;
      
      public var §_-BH§:Number;
      
      public var §_-ed§:Number;
      
      public var §_-qg§:Number;
      
      public var §_-6t§:Number;
      
      public var §_-iT§:Number = 0;
      
      public var §_-u1§:Number = 0;
      
      public var §_-Ov§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-bu§:Number = 0;
      
      public var §_-It§:Boolean = true;
      
      public var §_-H9§:Number = 0;
      
      public var §_-27§:Number = 0;
      
      public var §_-AS§:Number = 0;
      
      public var §_-Oh§:Number = 0;
      
      public var §_-Bh§:Number = 0;
      
      public var §_-Gi§:Number = 0;
      
      public var §_-Su§:Number = 0;
      
      public var §_-bg§:Number = 0;
      
      public var §_-fN§:Number = 0;
      
      public var §_-eW§:Number = 0;
      
      public var §_-Ox§:Number = 0;
      
      public var §_-SD§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-mk§:Number = 0;
      
      private var §_-W1§:Number = 0;
      
      public var §_-mP§:Number = 0;
      
      public var §_-IE§:Number = 0;
      
      public var §_-eN§:Number = 0;
      
      public var §_-92§:Number = 0;
      
      public var §_-tm§:Number;
      
      public var §_-lv§:Number;
      
      public var §_-5o§:Number;
      
      private var §_-Tb§:Boolean = false;
      
      private var §_-f6§:§_-Ln§ = null;
      
      private var §_-b7§:§_-Ln§ = null;
      
      public function §_-Y4§(param1:§_-B3§, param2:§_-ry§)
      {
         super();
         this.§_-q6§ = 0;
         this.§_-F7§ = 0;
         this.§_-Ia§ = param1;
         §_-Y4§.§_-Q-§ = 1;
         this.mManualScale = 1;
         this.§_-a1§(param2.§_-wo§);
         this.§_-16§();
         this.§_-iT§ = this.§_-Xx§ - this.§_-HD§;
         this.§_-u1§ = this.§_-T6§ - this.§_-jA§;
         this.§_-Ov§ = this.§_-NE§ - this.§_-FJ§;
         this.§_-q6§ = this.§_-Xx§;
         this.§_-F7§ = this.§_-T6§;
         §_-Q-§ = this.§_-NE§;
         this.mCurrentCameraSliderLocation = §_-L4§;
         this.§_-It§ = true;
         this.§_-bu§ = §_-L4§ / 500;
         this.goToCastleView();
         this.§_-H9§ = 2000;
         this.§_-Ha§();
         this.§_-x2§();
         this.§_-5q§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-q6§ = this.§_-HD§;
         this.§_-F7§ = this.§_-jA§;
         this.§_-It§ = false;
         this.§_-bu§ = §_-L4§ / 160000;
         this.§_-Qn§(§_-1i§);
      }
      
      public function §_-16§() : void
      {
         this.§_-cn§ = this.§_-HD§ - §_-VJ§ / this.§_-FJ§ / 2;
         this.§_-dK§ = this.§_-Xx§ + §_-VJ§ / this.§_-NE§ / 2;
         this.§_-Ue§ = this.§_-Ia§.§_-iZ§.§_-Ab§ - 20 * §_-B3§.§_-KP§ * §_-B3§.§_-s8§;
         this.§_-5§ = this.§_-Ia§.§_-iZ§.§_-Ab§ + 4;
      }
      
      public function clear() : void
      {
         this.§_-Ia§ = null;
      }
      
      public function §_-a1§(param1:Vector.<§_-Ln§>) : void
      {
         var _loc2_:§_-Ln§ = null;
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
               this.§_-KY§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-nq§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-VJ§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-vx§)
            {
               this.§_-HD§ = _loc8_;
               this.§_-jA§ = _loc9_;
               this.§_-FJ§ = _loc12_;
            }
            else if(_loc3_ == §_-cK§)
            {
               this.§_-Xx§ = _loc8_;
               this.§_-T6§ = _loc9_;
               this.§_-NE§ = _loc12_;
            }
            else
            {
               §_-o6§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.§_-Xx§ >= this.§_-HD§;
      }
      
      public function §_-kS§(param1:§_-ry§) : void
      {
         var _loc2_:§_-Ln§ = new §_-Ln§();
         _loc2_.id = §_-vx§;
         _loc2_.x = this.§_-HD§;
         _loc2_.y = this.§_-jA§;
         var _loc3_:Number = §_-VJ§ / this.§_-FJ§ / 2;
         var _loc4_:Number = §_-nq§ / this.§_-FJ§ / 2;
         _loc2_.left = this.§_-HD§ - _loc3_;
         _loc2_.right = this.§_-HD§ + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-Ln§;
         (_loc5_ = new §_-Ln§()).id = §_-cK§;
         _loc5_.x = this.§_-Xx§;
         _loc5_.y = this.§_-T6§;
         var _loc6_:Number = §_-VJ§ / this.§_-NE§ / 2;
         var _loc7_:Number = §_-nq§ / this.§_-NE§ / 2;
         _loc5_.left = this.§_-Xx§ - _loc6_;
         _loc5_.right = this.§_-Xx§ + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-wo§.length > 0)
         {
            param1.§_-wo§.pop();
         }
         param1.§_-wo§.push(_loc2_);
         param1.§_-wo§.push(_loc5_);
      }
      
      public function §_-KY§(param1:§_-Ln§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-2N§.§_-ZL§ * 0.5 / _loc2_ * §_-B3§.§_-s8§;
         var _loc4_:Number = param1.y - §_-2N§.§_-Uw§ * 0.5 / _loc2_ * §_-B3§.§_-s8§;
         var _loc5_:Number = _loc3_ + §_-2N§.§_-ZL§ / _loc2_ * §_-B3§.§_-s8§;
         var _loc6_:Number = _loc4_ + §_-2N§.§_-Uw§ / _loc2_ * §_-B3§.§_-s8§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      public function §_-jU§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-f6§)
         {
            this.§_-q6§ = this.§_-f6§.x;
            this.§_-F7§ = this.§_-f6§.y;
            §_-Q-§ = §_-VJ§ / (this.§_-f6§.right - this.§_-f6§.left);
         }
         else
         {
            this.§_-a0§();
            _loc2_ = this.mCurrentCameraSliderLocation;
            if(this.mCurrentAction == §_-1i§)
            {
               _loc2_ += param1 * this.§_-bu§;
               if(_loc2_ >= §_-L4§)
               {
                  _loc2_ = §_-L4§;
                  this.§_-bu§ = -this.§_-bu§;
               }
               this.mCurrentCameraSliderLocation = _loc2_;
            }
            else if(this.mCurrentAction == §_-u8§)
            {
               if(this.§_-Tb§)
               {
                  this.§_-tm§ = this.§_-Xx§;
                  this.§_-lv§ = this.§_-T6§;
                  this.§_-5o§ = this.mManualScale = this.§_-NE§;
               }
               else
               {
                  _loc2_ += param1 * this.§_-bu§;
                  if(_loc2_ >= §_-L4§)
                  {
                     _loc2_ = §_-L4§;
                     this.§_-Qn§(§_-L0§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-RY§)
            {
               if(this.§_-Tb§)
               {
                  this.§_-tm§ = this.§_-HD§;
                  this.§_-lv§ = this.§_-jA§;
                  this.§_-5o§ = this.mManualScale = this.§_-FJ§;
               }
               else
               {
                  _loc2_ -= param1 * this.§_-bu§;
                  if(_loc2_ <= 0)
                  {
                     _loc2_ = 0;
                     this.§_-Qn§(§_-L0§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-pm§)
            {
               this.§_-It§ = true;
            }
            else if(this.mCurrentAction == §_-G2§)
            {
               this.§_-d2§(param1);
            }
            else if(this.mCurrentAction == §_-P9§)
            {
               this.§_-Zi§(param1);
            }
            this.§_-s9§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-Ha§();
         this.§_-x2§();
         this.§_-5q§();
      }
      
      public function §_-s9§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-JP§ = null;
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
            this.§_-It§ = true;
            this.§_-bu§ = 0;
         }
         if(this.mCurrentCameraSliderLocation > §_-L4§)
         {
            this.§_-It§ = true;
            this.§_-bu§ = 0;
         }
         if(this.mCurrentAction == §_-pm§)
         {
            if(!this.§_-Ia§.mActiveObject)
            {
               this.§_-Qn§(§_-u8§);
               this.§_-fN§ = §_-so§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-Ia§.mActiveObject).§_-dZ§().GetPosition().x + (!!_loc5_.§_-XL§ ? _loc5_.§_-XL§ * §_-B3§.§_-s8§ : 0);
               _loc7_ = _loc5_.§_-dZ§().GetPosition().y + (!!_loc5_.§_-uZ§ ? _loc5_.§_-uZ§ * §_-B3§.§_-s8§ : 0);
               if((_loc8_ = _loc5_.§_-dZ§().GetLinearVelocity().x) > 0 && this.§_-iT§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-iT§ * §_-L4§;
               }
               if(param1 >= §_-L4§)
               {
                  param1 = §_-L4§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc24_ = param1 / §_-L4§;
               _loc25_ = this.§_-6t§ + (this.§_-BH§ - this.§_-6t§) * _loc24_;
               _loc26_ = this.§_-ed§ + (this.§_-5E§ - this.§_-ed§) * _loc24_;
               _loc27_ = this.§_-qg§ + (this.§_-V2§ - this.§_-qg§) * _loc24_;
               this.§_-SD§ -= (this.§_-SD§ - _loc25_) * _loc4_;
               this.§_-eW§ -= (this.§_-eW§ - _loc26_) * _loc4_;
               this.§_-Ox§ -= (this.§_-Ox§ - _loc27_) * _loc4_;
               _loc9_ = this.§_-eW§ - §_-VJ§ * 0.5 / this.§_-SD§;
               _loc10_ = this.§_-Ox§ - §_-nq§ * 0.5 / this.§_-SD§;
               _loc11_ = this.§_-eW§ + §_-VJ§ * 0.5 / this.§_-SD§;
               _loc12_ = this.§_-Ox§ + §_-nq§ * 0.5 / this.§_-SD§;
               _loc13_ = 150 * §_-B3§.§_-s8§;
               _loc14_ = Math.min(_loc9_,_loc6_ - _loc13_);
               _loc15_ = Math.min(_loc10_,_loc7_ - _loc13_);
               _loc16_ = Math.max(_loc11_,_loc6_ + _loc13_);
               _loc17_ = Math.max(_loc12_,_loc7_ + _loc13_);
               _loc14_ = Math.max(this.§_-cn§,_loc14_);
               _loc16_ = Math.min(this.§_-dK§,_loc16_);
               _loc18_ = Math.abs(§_-VJ§ / (_loc16_ - _loc14_));
               _loc19_ = Math.abs(§_-nq§ / (_loc17_ - _loc15_));
               if((_loc20_ = Math.min(_loc18_,_loc19_)) > this.§_-SD§)
               {
                  _loc20_ = this.§_-SD§;
               }
               _loc21_ = (_loc16_ + _loc14_) * 0.5;
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = false;
               if(_loc21_ + §_-VJ§ * 0.5 / _loc20_ > this.§_-dK§)
               {
                  _loc14_ = (_loc16_ = this.§_-dK§) - §_-VJ§ / _loc20_;
                  _loc23_ = true;
                  if(_loc14_ < this.§_-cn§)
                  {
                     _loc14_ = this.§_-cn§;
                  }
               }
               if(_loc21_ - §_-VJ§ * 0.5 / _loc20_ < this.§_-cn§)
               {
                  _loc16_ = (_loc14_ = this.§_-cn§) + §_-VJ§ / _loc20_;
                  _loc23_ = true;
                  if(_loc16_ > this.§_-dK§)
                  {
                     _loc16_ = this.§_-dK§;
                  }
               }
               if(_loc23_)
               {
                  _loc21_ = (_loc16_ + _loc14_) * 0.5;
                  _loc20_ = Math.abs(§_-VJ§ / (_loc16_ - _loc14_));
               }
               if(_loc22_ - §_-VJ§ * 0.5 / _loc20_ < this.§_-Ue§)
               {
                  _loc22_ = this.§_-Ue§ + §_-VJ§ * 0.5 / _loc20_;
               }
               this.§_-q6§ -= (this.§_-q6§ - _loc21_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc20_) * _loc4_;
               §_-Q-§ = this.mTempCameraAnimationScale2;
               this.§_-F7§ -= (this.§_-F7§ - _loc22_) * _loc4_;
               if(_loc6_ >= this.§_-dK§ || _loc6_ <= this.§_-cn§)
               {
                  this.§_-SD§ = §_-Q-§;
                  this.§_-eW§ = this.§_-q6§;
                  this.§_-Ox§ = this.§_-F7§;
               }
               _loc20_ = Math.abs(§_-VJ§ / (_loc16_ - _loc14_));
               if(_loc22_ - §_-VJ§ * 0.5 / _loc20_ < this.§_-Ue§)
               {
                  _loc22_ = this.§_-Ue§ + §_-VJ§ * 0.5 / _loc20_;
               }
            }
         }
         else if(this.§_-Tb§)
         {
            if(this.§_-It§ == false)
            {
               _loc4_ = 1;
            }
            this.§_-q6§ -= (this.§_-q6§ - this.§_-tm§) * _loc4_;
            this.§_-F7§ -= (this.§_-F7§ - this.§_-lv§) * _loc4_;
            §_-Q-§ -= (§_-Q-§ - this.§_-5o§) * _loc4_;
         }
         else if(this.§_-iT§ != 0)
         {
            if(this.§_-It§ == false)
            {
               _loc4_ = 1;
            }
            _loc24_ = param1 / §_-L4§;
            _loc25_ = this.§_-6t§ + (this.§_-BH§ - this.§_-6t§) * _loc24_;
            _loc26_ = this.§_-ed§ + (this.§_-5E§ - this.§_-ed§) * _loc24_;
            _loc27_ = this.§_-qg§ + (this.§_-V2§ - this.§_-qg§) * _loc24_;
            this.§_-eW§ -= (this.§_-eW§ - _loc26_) * _loc4_;
            this.§_-Ox§ -= (this.§_-Ox§ - _loc27_) * _loc4_;
            this.§_-SD§ -= (this.§_-SD§ - _loc25_) * _loc4_;
            this.§_-q6§ = this.§_-eW§;
            this.§_-F7§ = this.§_-Ox§;
            §_-Q-§ = this.§_-SD§;
         }
      }
      
      public function §_-qO§(param1:Number, param2:Number) : void
      {
         this.§_-mk§ = param1;
         this.§_-W1§ = param2;
      }
      
      public function §_-a0§() : void
      {
         this.§_-6t§ = §_-0O§ + (this.§_-FJ§ - §_-0O§) * this.mManualScale;
         this.§_-qg§ = this.§_-jA§;
         var _loc1_:Number = this.§_-qg§ + §_-nq§ * 0.5 / this.§_-FJ§;
         var _loc2_:Number = §_-nq§ / §_-0O§ * 5;
         if(_loc1_ > _loc2_)
         {
            this.§_-qg§ += _loc2_ - _loc1_;
         }
         this.§_-ed§ = this.§_-HD§;
         var _loc3_:Number = this.§_-ed§ - §_-VJ§ * 0.5 / this.§_-6t§;
         if(_loc3_ < this.§_-cn§)
         {
            this.§_-ed§ += this.§_-cn§ - _loc3_;
         }
         this.§_-BH§ = §_-0O§ + (this.§_-NE§ - §_-0O§) * this.mManualScale;
         this.§_-V2§ = this.§_-T6§;
         _loc1_ = this.§_-V2§ + §_-nq§ * 0.5 / this.§_-BH§;
         if(_loc1_ > _loc2_)
         {
            this.§_-V2§ += _loc2_ - _loc1_;
         }
         this.§_-5E§ = this.§_-Xx§;
         var _loc4_:Number;
         if((_loc4_ = this.§_-5E§ + §_-VJ§ * 0.5 / this.§_-BH§) > this.§_-dK§)
         {
            this.§_-5E§ += this.§_-dK§ - _loc4_;
         }
         this.§_-5o§ = this.mManualScale;
         if(§_-VJ§ / this.§_-5o§ > this.§_-IE§ - this.§_-mP§)
         {
            this.§_-5o§ = §_-VJ§ / (this.§_-IE§ - this.§_-mP§);
         }
         this.§_-5o§ = this.§_-5o§ < §_-0O§ ? Number(§_-0O§) : (this.§_-5o§ > §_-t§ ? Number(§_-t§) : Number(this.§_-5o§));
         _loc3_ = this.§_-tm§ - §_-VJ§ * 0.5 / this.§_-5o§;
         if(_loc3_ < this.§_-mP§)
         {
            this.§_-tm§ += this.§_-mP§ - _loc3_;
         }
         if((_loc4_ = this.§_-tm§ + §_-VJ§ * 0.5 / this.§_-5o§) > this.§_-IE§)
         {
            this.§_-tm§ += this.§_-IE§ - _loc4_;
         }
         var _loc5_:Number;
         if((_loc5_ = this.§_-lv§ - §_-nq§ * 0.5 / this.§_-5o§) < this.§_-eN§)
         {
            this.§_-lv§ += this.§_-eN§ - _loc5_;
         }
         _loc1_ = this.§_-lv§ + §_-nq§ * 0.5 / this.§_-5o§;
         if(_loc1_ > this.§_-92§)
         {
            this.§_-lv§ += this.§_-92§ - _loc1_;
         }
      }
      
      public function §_-kX§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§_-Tb§ = true;
         this.§_-tm§ = this.§_-q6§;
         this.§_-lv§ = this.§_-F7§;
         this.§_-mP§ = param1;
         this.§_-IE§ = param3;
         this.§_-eN§ = param2;
         this.§_-92§ = param4;
         this.§_-5o§ = §_-Q-§;
      }
      
      public function §_-Ha§() : void
      {
         if(this.§_-Ia§.sprite)
         {
            §_-JB§ = this.§_-Ia§.sprite.x = §_-B3§.§_-64§ * ((1 - §_-Y4§.§_-Q-§) / 2);
            §_-Eb§ = this.§_-Ia§.sprite.y = §_-B3§.§_-KP§ * (1 - §_-Y4§.§_-Q-§) * §_-B§.§_-op§;
         }
      }
      
      public function §_-5q§() : void
      {
         if(this.§_-Ia§.sprite)
         {
            this.§_-Ia§.sprite.scaleX = §_-Q-§;
            this.§_-Ia§.sprite.scaleY = §_-Q-§;
         }
      }
      
      public function §_-x2§() : void
      {
         var _loc1_:Number = this.§_-q6§ / §_-B3§.§_-s8§ + this.§_-mk§;
         var _loc2_:Number = this.§_-F7§ / §_-B3§.§_-s8§ + this.§_-W1§;
         this.§_-VA§ = _loc1_ - §_-B3§.§_-64§ / 2 * §_-2N§.§_-QJ§ / §_-2N§.§_-nb§;
         this.§_-ZQ§ = _loc2_ - §_-B3§.§_-KP§ / 2 + §_-B§.§_-sY§;
         this.§_-Ia§.§_-Ms§.§_-Go§(this.§_-VA§,this.§_-ZQ§);
         this.§_-Ia§.mLevelObjects.§_-Go§(this.§_-VA§,this.§_-ZQ§);
         this.§_-Ia§.§_-AT§.§_-Go§(this.§_-VA§,this.§_-ZQ§);
         this.§_-Ia§.mLevelSlingshot.§_-Go§(this.§_-VA§,this.§_-ZQ§);
         this.§_-Ia§.§_-29§.§_-Go§(this.§_-VA§,this.§_-ZQ§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-fN§ = -1;
         if(this.§_-Tb§)
         {
            this.§_-Qn§(§_-P9§);
         }
         else
         {
            this.§_-Qn§(§_-G2§);
         }
         this.§_-Bh§ = this.§_-Su§ = this.§_-AS§ = param1;
         this.§_-Gi§ = this.§_-bg§ = this.§_-Oh§ = param2;
         this.§_-27§ = 0;
         this.§_-eW§ = this.§_-q6§;
         this.§_-Ox§ = this.§_-F7§;
         this.§_-SD§ = §_-Q-§;
         this.mTempCameraAnimationScale2 = §_-Q-§;
         if(Math.abs(this.§_-5E§ - this.§_-ed§) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-q6§ - this.§_-ed§) / (this.§_-5E§ - this.§_-ed§) * §_-L4§;
         }
         this.mDragging = true;
         if(§_-B3§.§_-rw§)
         {
            this.§_-Ia§.§_-3O§();
         }
      }
      
      public function §_-d2§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-27§ += param1;
         var _loc3_:Number = this.§_-Bh§ - this.§_-Su§;
         if(this.§_-iT§ > 0)
         {
            _loc2_ -= _loc3_ * §_-B3§.§_-s8§ / §_-Q-§ / this.§_-iT§ * §_-L4§;
            this.§_-It§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-It§ = true;
            }
            if(_loc2_ > §_-L4§)
            {
               _loc2_ += (§_-L4§ - _loc2_) * 0.3;
               this.§_-It§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-Su§ = this.§_-Bh§;
      }
      
      public function §_-Zi§(param1:Number) : void
      {
         this.§_-tm§ += (this.§_-Su§ - this.§_-Bh§) * §_-B3§.§_-s8§;
         this.§_-lv§ += (this.§_-bg§ - this.§_-Gi§) * §_-B3§.§_-s8§;
         this.§_-Su§ = this.§_-Bh§;
         this.§_-bg§ = this.§_-Gi§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == §_-G2§ || this.mCurrentAction == §_-P9§)
         {
            this.§_-Bh§ = param1;
            this.§_-Gi§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-G2§)
         {
            this.§_-Qn§(§_-L0§);
            if(param1 > 0)
            {
               this.§_-Bh§ = param1;
            }
            _loc3_ = Math.abs(this.§_-Bh§ - this.§_-AS§);
            if(this.§_-27§ < §_-lh§ && _loc3_ >= §_-4E§ && _loc3_ >= §_-Nb§ * this.§_-27§ / 1000)
            {
               if(this.§_-Bh§ < this.§_-AS§)
               {
                  this.§_-Qn§(§_-u8§);
               }
               else
               {
                  this.§_-Qn§(§_-RY§);
               }
               this.§_-bu§ = _loc3_ / this.§_-27§ * 10;
               this.§_-It§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-It§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-L4§)
               {
                  this.§_-It§ = true;
               }
            }
            else if(this.§_-27§ < §_-4g§)
            {
               this.§_-ca§();
               this.§_-bu§ = §_-L4§ / (§_-L4§ / 500);
               this.§_-It§ = true;
            }
            else
            {
               this.§_-d2§(0);
               this.§_-uK§(0);
               this.§_-bu§ = §_-L4§ / (§_-L4§ / 500);
               this.§_-It§ = true;
            }
         }
         this.mDragging = false;
         if(§_-B3§.§_-rw§)
         {
            this.§_-Ia§.§_-0C§();
         }
      }
      
      public function §_-ca§() : void
      {
         if(this.mCurrentAction == §_-u8§)
         {
            this.§_-Qn§(§_-RY§);
         }
         else if(this.mCurrentAction == §_-RY§)
         {
            this.§_-Qn§(§_-u8§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-L4§ / 2)
         {
            this.§_-Qn§(§_-RY§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-L4§ / 2)
         {
            this.§_-Qn§(§_-u8§);
         }
      }
      
      public function §_-uK§(param1:int) : void
      {
         this.§_-fN§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-L4§ / 2)
         {
            this.§_-Qn§(§_-RY§);
         }
         else
         {
            this.§_-Qn§(§_-u8§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-Qn§(§_-RY§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-Qn§(§_-u8§);
      }
      
      public function §_-Qn§(param1:int) : void
      {
         this.§_-eW§ = this.§_-q6§;
         this.§_-Ox§ = this.§_-F7§;
         this.§_-SD§ = §_-Q-§;
         this.mTempCameraAnimationScale2 = §_-Q-§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-L4§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-u8§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-qy§(param1:§_-Ln§) : void
      {
         this.§_-f6§ = param1;
         if(this.§_-f6§ != null)
         {
            this.§_-b7§ = new §_-Ln§();
            this.§_-b7§.x = this.§_-q6§;
            this.§_-b7§.y = this.§_-F7§;
            this.§_-b7§.scale = §_-Q-§;
         }
         else
         {
            this.§_-q6§ = this.§_-b7§.x;
            this.§_-F7§ = this.§_-b7§.y;
            §_-Q-§ = this.§_-b7§.scale;
            this.§_-b7§ = null;
         }
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += §_-cD§;
         }
         else
         {
            _loc2_ -= §_-cD§;
         }
         _loc2_ = Math.max(§_-H-§,Math.min(§_-9D§,_loc2_));
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
            if(this.§_-Tb§)
            {
               this.§_-Qn§(§_-P9§);
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
      
      public function §_-X§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.§_-q6§;
         _loc1_ += " mYcenterB2: " + this.§_-F7§;
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
