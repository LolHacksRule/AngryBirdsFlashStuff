package §_-5Y§
{
   import §_-Eo§.§_-R4§;
   import §_-M0§.§_-u4§;
   import §_-mj§.§_-GI§;
   import §_-uh§.§_-US§;
   import §_-uh§.§_-YW§;
   
   public class §_-vn§
   {
      
      public static const §_-XM§:Number = 1.25;
      
      public static const §_-Al§:Number = 0.15;
      
      public static const §_-YL§:Number = §_-u4§.§_-4r§ * §_-yw§.§_-rO§;
      
      public static const §_-1F§:Number = §_-u4§.§_-ho§ * §_-yw§.§_-rO§;
      
      public static const §_-2F§:Number = 1;
      
      public static const §_-yD§:Number = 0.4;
      
      public static const §_-1o§:Number = 0.1;
      
      public static const §_-bx§:int = 1500;
      
      public static const §_-dX§:int = 10;
      
      public static const §_-Xl§:int = 15;
      
      public static const §_-Gb§:int = 300;
      
      public static const §_-wN§:int = 1000;
      
      public static const §_-pN§:int = 10000;
      
      public static const §_-Dc§:int = §_-pN§ / 50;
      
      public static const §_-Jt§:int = 0;
      
      public static const §_-wT§:int = 1;
      
      public static const §_-fF§:int = 2;
      
      public static const §_-Ur§:int = 3;
      
      public static const §_-I7§:int = 4;
      
      public static const §_-Ev§:int = 5;
      
      public static const §_-Rs§:int = 6;
      
      public static const §_-tC§:String = "CASTLE";
      
      public static const §_-y9§:String = "SLINGSHOT";
      
      public static var §_-RC§:Number;
      
      public static var §_-G7§:Number;
      
      public static var §_-P8§:Number;
      
      public static const §_-Eb§:Number = 2000;
       
      
      public var mManualScale:Number;
      
      public var §catch§:Number;
      
      public var §_-7V§:Number;
      
      public var §_-Su§:Number;
      
      public var §_-lX§:Number;
      
      public var §_-qk§:Number;
      
      public var §_-TR§:Number;
      
      public var §_-Fx§:§_-yw§;
      
      public var §_-Iu§:Number;
      
      public var §_-2O§:Number;
      
      public var §_-Vo§:Number;
      
      public var §_-hu§:Number;
      
      public var §_-5n§:Number;
      
      public var §_-1j§:Number;
      
      public var §_-9n§:Number;
      
      public var §_-st§:Number;
      
      public var §_-MO§:Number;
      
      public var §_-D2§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-29§:Number;
      
      public var §_-kG§:Number;
      
      public var §_-89§:Number;
      
      public var §_-T1§:Number;
      
      public var §_-B5§:Number;
      
      public var §_-uj§:Boolean;
      
      public var §_-tr§:Number;
      
      public var §_-ek§:Number;
      
      public var §_-8F§:Number;
      
      public var §_-zL§:Number;
      
      public var set:Number;
      
      public var §_-nF§:Number;
      
      public var §_-vJ§:Number = 0;
      
      public var §_-HO§:Number = 0;
      
      public var §_-Q5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-C1§:Number = 0;
      
      public var §_-aT§:Boolean = true;
      
      public var §_-4S§:Number = 0;
      
      public var §_-xf§:Number = 0;
      
      public var §_-jo§:Number = 0;
      
      public var §_-nS§:Number = 0;
      
      public var §_-yi§:Number = 0;
      
      public var §_-Dw§:Number = 0;
      
      public var §_-m4§:Number = 0;
      
      public var §_-rk§:Number = 0;
      
      public var §_-Qz§:Number = 0;
      
      public var §_-Gp§:Number = 0;
      
      public var §_-RV§:Number = 0;
      
      public var §_-36§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-d2§:Number = 0;
      
      private var §_-WT§:Number = 0;
      
      public var §_-np§:Number = 0;
      
      public var §_-D3§:Number = 0;
      
      public var § true§:Number = 0;
      
      public var §_-gG§:Number = 0;
      
      public var §_-K3§:Number;
      
      public var §_-Ve§:Number;
      
      public var §_-ik§:Number;
      
      private var §_-3m§:Boolean = false;
      
      private var §_-xs§:§_-YW§ = null;
      
      private var §_-sv§:§_-YW§ = null;
      
      public function §_-vn§(param1:§_-yw§, param2:§_-US§)
      {
         super();
         this.§catch§ = 0;
         this.§_-7V§ = 0;
         this.§_-Fx§ = param1;
         §_-vn§.§_-RC§ = 1;
         this.mManualScale = 1;
         this.§_-qM§(param2.§_-Ha§);
         this.§_-gM§();
         this.§_-vJ§ = this.§_-Vo§ - this.§_-1j§;
         this.§_-HO§ = this.§_-hu§ - this.§_-9n§;
         this.§_-Q5§ = this.§_-5n§ - this.§_-st§;
         this.§catch§ = this.§_-Vo§;
         this.§_-7V§ = this.§_-hu§;
         §_-RC§ = this.§_-5n§;
         this.mCurrentCameraSliderLocation = §_-pN§;
         this.§_-aT§ = true;
         this.§_-C1§ = §_-pN§ / 500;
         this.goToCastleView();
         this.§_-4S§ = 2000;
         this.§_-0F§();
         this.§_-2s§();
         this.§_-6u§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§catch§ = this.§_-1j§;
         this.§_-7V§ = this.§_-9n§;
         this.§_-aT§ = false;
         this.§_-C1§ = §_-pN§ / 160000;
         this.§_-Nq§(§_-Ev§);
      }
      
      public function §_-gM§() : void
      {
         this.§_-kG§ = this.§_-1j§ - §_-YL§ / this.§_-st§ / 2;
         this.§_-89§ = this.§_-Vo§ + §_-YL§ / this.§_-5n§ / 2;
         this.§_-T1§ = this.§_-Fx§.§_-9W§.§_-8B§ - 20 * §_-yw§.§_-ri§ * §_-yw§.§_-rO§;
         this.§_-B5§ = this.§_-Fx§.§_-9W§.§_-8B§ + 4;
      }
      
      public function clear() : void
      {
         this.§_-Fx§ = null;
      }
      
      public function §_-qM§(param1:Vector.<§_-YW§>) : void
      {
         var _loc2_:§_-YW§ = null;
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
               this.§_-c§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-1F§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-YL§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-y9§)
            {
               this.§_-1j§ = _loc8_;
               this.§_-9n§ = _loc9_;
               this.§_-st§ = _loc12_;
            }
            else if(_loc3_ == §_-tC§)
            {
               this.§_-Vo§ = _loc8_;
               this.§_-hu§ = _loc9_;
               this.§_-5n§ = _loc12_;
            }
            else
            {
               §_-R4§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.§_-uj§ = this.§_-Vo§ >= this.§_-1j§;
      }
      
      public function §_-W8§(param1:§_-US§) : void
      {
         var _loc2_:§_-YW§ = new §_-YW§();
         _loc2_.id = §_-y9§;
         _loc2_.x = this.§_-1j§;
         _loc2_.y = this.§_-9n§;
         var _loc3_:Number = §_-YL§ / this.§_-st§ / 2;
         var _loc4_:Number = §_-1F§ / this.§_-st§ / 2;
         _loc2_.left = this.§_-1j§ - _loc3_;
         _loc2_.right = this.§_-1j§ + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-YW§;
         (_loc5_ = new §_-YW§()).id = §_-tC§;
         _loc5_.x = this.§_-Vo§;
         _loc5_.y = this.§_-hu§;
         var _loc6_:Number = §_-YL§ / this.§_-5n§ / 2;
         var _loc7_:Number = §_-1F§ / this.§_-5n§ / 2;
         _loc5_.left = this.§_-Vo§ - _loc6_;
         _loc5_.right = this.§_-Vo§ + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-Ha§.length > 0)
         {
            param1.§_-Ha§.pop();
         }
         param1.§_-Ha§.push(_loc2_);
         param1.§_-Ha§.push(_loc5_);
      }
      
      public function §_-c§(param1:§_-YW§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-u4§.§_-4r§ * 0.5 / _loc2_ * §_-yw§.§_-rO§;
         var _loc4_:Number = param1.y - §_-u4§.§_-ho§ * 0.5 / _loc2_ * §_-yw§.§_-rO§;
         var _loc5_:Number = _loc3_ + §_-u4§.§_-4r§ / _loc2_ * §_-yw§.§_-rO§;
         var _loc6_:Number = _loc4_ + §_-u4§.§_-ho§ / _loc2_ * §_-yw§.§_-rO§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      public function §_-PV§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-xs§)
         {
            this.§catch§ = this.§_-xs§.x;
            this.§_-7V§ = this.§_-xs§.y;
            §_-RC§ = §_-YL§ / (this.§_-xs§.right - this.§_-xs§.left);
         }
         else
         {
            this.§_-2G§();
            _loc2_ = this.mCurrentCameraSliderLocation;
            if(this.mCurrentAction == §_-Ev§)
            {
               _loc2_ += param1 * this.§_-C1§;
               if(_loc2_ >= §_-pN§)
               {
                  _loc2_ = §_-pN§;
                  this.§_-C1§ = -this.§_-C1§;
               }
               this.mCurrentCameraSliderLocation = _loc2_;
            }
            else if(this.mCurrentAction == §_-wT§)
            {
               if(this.§_-3m§)
               {
                  this.§_-K3§ = this.§_-Vo§;
                  this.§_-Ve§ = this.§_-hu§;
                  this.§_-ik§ = this.mManualScale = this.§_-5n§;
               }
               else
               {
                  _loc2_ += param1 * this.§_-C1§;
                  if(_loc2_ >= §_-pN§)
                  {
                     _loc2_ = §_-pN§;
                     this.§_-Nq§(§_-Jt§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-fF§)
            {
               if(this.§_-3m§)
               {
                  this.§_-K3§ = this.§_-1j§;
                  this.§_-Ve§ = this.§_-9n§;
                  this.§_-ik§ = this.mManualScale = this.§_-st§;
               }
               else
               {
                  _loc2_ -= param1 * this.§_-C1§;
                  if(_loc2_ <= 0)
                  {
                     _loc2_ = 0;
                     this.§_-Nq§(§_-Jt§);
                  }
                  this.mCurrentCameraSliderLocation = _loc2_;
               }
            }
            else if(this.mCurrentAction == §_-Ur§)
            {
               this.§_-aT§ = true;
            }
            else if(this.mCurrentAction == §_-I7§)
            {
               this.§_-G6§(param1);
            }
            else if(this.mCurrentAction == §_-Rs§)
            {
               this.§_-8d§(param1);
            }
            this.§_-Xd§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-0F§();
         this.§_-2s§();
         this.§_-6u§();
      }
      
      public function §_-Xd§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-GI§ = null;
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
            this.§_-aT§ = true;
            this.§_-C1§ = 0;
         }
         if(this.mCurrentCameraSliderLocation > §_-pN§)
         {
            this.§_-aT§ = true;
            this.§_-C1§ = 0;
         }
         if(this.mCurrentAction == §_-Ur§)
         {
            if(!this.§_-Fx§.activeObject)
            {
               this.§_-Nq§(§_-wT§);
               this.§_-Qz§ = §_-wN§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-Fx§.activeObject).§_-oR§().GetPosition().x + (!!_loc5_.§_-ls§ ? _loc5_.§_-ls§ * §_-yw§.§_-rO§ : 0);
               _loc7_ = _loc5_.§_-oR§().GetPosition().y + (!!_loc5_.§_-tO§ ? _loc5_.§_-tO§ * §_-yw§.§_-rO§ : 0);
               if((_loc8_ = _loc5_.§_-oR§().GetLinearVelocity().x) > 0 && this.§_-vJ§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-vJ§ * §_-pN§;
               }
               if(param1 >= §_-pN§)
               {
                  param1 = §_-pN§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc24_ = param1 / §_-pN§;
               _loc25_ = this.§_-nF§ + (this.§_-8F§ - this.§_-nF§) * _loc24_;
               _loc26_ = this.§_-zL§ + (this.§_-tr§ - this.§_-zL§) * _loc24_;
               _loc27_ = this.set + (this.§_-ek§ - this.set) * _loc24_;
               this.§_-36§ -= (this.§_-36§ - _loc25_) * _loc4_;
               this.§_-Gp§ -= (this.§_-Gp§ - _loc26_) * _loc4_;
               this.§_-RV§ -= (this.§_-RV§ - _loc27_) * _loc4_;
               _loc9_ = this.§_-Gp§ - §_-YL§ * 0.5 / this.§_-36§;
               _loc10_ = this.§_-RV§ - §_-1F§ * 0.5 / this.§_-36§;
               _loc11_ = this.§_-Gp§ + §_-YL§ * 0.5 / this.§_-36§;
               _loc12_ = this.§_-RV§ + §_-1F§ * 0.5 / this.§_-36§;
               _loc13_ = 150 * §_-yw§.§_-rO§;
               _loc14_ = Math.min(_loc9_,_loc6_ - _loc13_);
               _loc15_ = Math.min(_loc10_,_loc7_ - _loc13_);
               _loc16_ = Math.max(_loc11_,_loc6_ + _loc13_);
               _loc17_ = Math.max(_loc12_,_loc7_ + _loc13_);
               _loc14_ = Math.max(this.§_-kG§,_loc14_);
               _loc16_ = Math.min(this.§_-89§,_loc16_);
               _loc18_ = Math.abs(§_-YL§ / (_loc16_ - _loc14_));
               _loc19_ = Math.abs(§_-1F§ / (_loc17_ - _loc15_));
               if((_loc20_ = Math.min(_loc18_,_loc19_)) > this.§_-36§)
               {
                  _loc20_ = this.§_-36§;
               }
               _loc21_ = (_loc16_ + _loc14_) * 0.5;
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = false;
               if(_loc21_ + §_-YL§ * 0.5 / _loc20_ > this.§_-89§)
               {
                  _loc14_ = (_loc16_ = this.§_-89§) - §_-YL§ / _loc20_;
                  _loc23_ = true;
                  if(_loc14_ < this.§_-kG§)
                  {
                     _loc14_ = this.§_-kG§;
                  }
               }
               if(_loc21_ - §_-YL§ * 0.5 / _loc20_ < this.§_-kG§)
               {
                  _loc16_ = (_loc14_ = this.§_-kG§) + §_-YL§ / _loc20_;
                  _loc23_ = true;
                  if(_loc16_ > this.§_-89§)
                  {
                     _loc16_ = this.§_-89§;
                  }
               }
               if(_loc23_)
               {
                  _loc21_ = (_loc16_ + _loc14_) * 0.5;
                  _loc20_ = Math.abs(§_-YL§ / (_loc16_ - _loc14_));
               }
               if(_loc22_ - §_-YL§ * 0.5 / _loc20_ < this.§_-T1§)
               {
                  _loc22_ = this.§_-T1§ + §_-YL§ * 0.5 / _loc20_;
               }
               this.§catch§ -= (this.§catch§ - _loc21_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc20_) * _loc4_;
               §_-RC§ = this.mTempCameraAnimationScale2;
               this.§_-7V§ -= (this.§_-7V§ - _loc22_) * _loc4_;
               if(_loc6_ >= this.§_-89§ || _loc6_ <= this.§_-kG§)
               {
                  this.§_-36§ = §_-RC§;
                  this.§_-Gp§ = this.§catch§;
                  this.§_-RV§ = this.§_-7V§;
               }
               _loc20_ = Math.abs(§_-YL§ / (_loc16_ - _loc14_));
               if(_loc22_ - §_-YL§ * 0.5 / _loc20_ < this.§_-T1§)
               {
                  _loc22_ = this.§_-T1§ + §_-YL§ * 0.5 / _loc20_;
               }
            }
         }
         else if(this.§_-3m§)
         {
            if(this.§_-aT§ == false)
            {
               _loc4_ = 1;
            }
            this.§catch§ -= (this.§catch§ - this.§_-K3§) * _loc4_;
            this.§_-7V§ -= (this.§_-7V§ - this.§_-Ve§) * _loc4_;
            §_-RC§ -= (§_-RC§ - this.§_-ik§) * _loc4_;
         }
         else if(this.§_-vJ§ != 0)
         {
            if(this.§_-aT§ == false)
            {
               _loc4_ = 1;
            }
            _loc24_ = param1 / §_-pN§;
            _loc25_ = this.§_-nF§ + (this.§_-8F§ - this.§_-nF§) * _loc24_;
            _loc26_ = this.§_-zL§ + (this.§_-tr§ - this.§_-zL§) * _loc24_;
            _loc27_ = this.set + (this.§_-ek§ - this.set) * _loc24_;
            this.§_-Gp§ -= (this.§_-Gp§ - _loc26_) * _loc4_;
            this.§_-RV§ -= (this.§_-RV§ - _loc27_) * _loc4_;
            this.§_-36§ -= (this.§_-36§ - _loc25_) * _loc4_;
            this.§catch§ = this.§_-Gp§;
            this.§_-7V§ = this.§_-RV§;
            §_-RC§ = this.§_-36§;
         }
      }
      
      public function §_-OH§(param1:Number, param2:Number) : void
      {
         this.§_-d2§ = param1;
         this.§_-WT§ = param2;
      }
      
      public function §_-2G§() : void
      {
         this.§_-nF§ = §_-Al§ + (this.§_-st§ - §_-Al§) * this.mManualScale;
         this.set = this.§_-9n§;
         var _loc1_:Number = this.set + §_-1F§ * 0.5 / this.§_-st§;
         var _loc2_:Number = §_-1F§ / §_-Al§ * 5;
         if(_loc1_ > _loc2_)
         {
            this.set += _loc2_ - _loc1_;
         }
         this.§_-zL§ = this.§_-1j§;
         var _loc3_:Number = this.§_-zL§ - §_-YL§ * 0.5 / this.§_-nF§;
         if(_loc3_ < this.§_-kG§)
         {
            this.§_-zL§ += this.§_-kG§ - _loc3_;
         }
         this.§_-8F§ = §_-Al§ + (this.§_-5n§ - §_-Al§) * this.mManualScale;
         this.§_-ek§ = this.§_-hu§;
         _loc1_ = this.§_-ek§ + §_-1F§ * 0.5 / this.§_-8F§;
         if(_loc1_ > _loc2_)
         {
            this.§_-ek§ += _loc2_ - _loc1_;
         }
         this.§_-tr§ = this.§_-Vo§;
         var _loc4_:Number;
         if((_loc4_ = this.§_-tr§ + §_-YL§ * 0.5 / this.§_-8F§) > this.§_-89§)
         {
            this.§_-tr§ += this.§_-89§ - _loc4_;
         }
         this.§_-ik§ = this.mManualScale;
         if(§_-YL§ / this.§_-ik§ > this.§_-D3§ - this.§_-np§)
         {
            this.§_-ik§ = §_-YL§ / (this.§_-D3§ - this.§_-np§);
         }
         this.§_-ik§ = this.§_-ik§ < §_-Al§ ? Number(§_-Al§) : (this.§_-ik§ > §_-XM§ ? Number(§_-XM§) : Number(this.§_-ik§));
         _loc3_ = this.§_-K3§ - §_-YL§ * 0.5 / this.§_-ik§;
         if(_loc3_ < this.§_-np§)
         {
            this.§_-K3§ += this.§_-np§ - _loc3_;
         }
         if((_loc4_ = this.§_-K3§ + §_-YL§ * 0.5 / this.§_-ik§) > this.§_-D3§)
         {
            this.§_-K3§ += this.§_-D3§ - _loc4_;
         }
         var _loc5_:Number;
         if((_loc5_ = this.§_-Ve§ - §_-1F§ * 0.5 / this.§_-ik§) < this.§ true§)
         {
            this.§_-Ve§ += this.§ true§ - _loc5_;
         }
         _loc1_ = this.§_-Ve§ + §_-1F§ * 0.5 / this.§_-ik§;
         if(_loc1_ > this.§_-gG§)
         {
            this.§_-Ve§ += this.§_-gG§ - _loc1_;
         }
      }
      
      public function §_-X6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§_-3m§ = true;
         this.§_-K3§ = this.§catch§;
         this.§_-Ve§ = this.§_-7V§;
         this.§_-np§ = param1;
         this.§_-D3§ = param3;
         this.§ true§ = param2;
         this.§_-gG§ = param4;
         this.§_-ik§ = §_-RC§;
      }
      
      public function §_-0F§() : void
      {
         if(this.§_-Fx§.sprite)
         {
            §_-G7§ = this.§_-Fx§.sprite.x = §_-yw§.§_-C7§ * ((1 - §_-vn§.§_-RC§) / 2);
            §_-P8§ = this.§_-Fx§.sprite.y = §_-yw§.§_-ri§ * (1 - §_-vn§.§_-RC§) * §_-oI§.§_-Ob§;
         }
      }
      
      public function §_-6u§() : void
      {
         if(this.§_-Fx§.sprite)
         {
            this.§_-Fx§.sprite.scaleX = §_-RC§;
            this.§_-Fx§.sprite.scaleY = §_-RC§;
         }
      }
      
      public function §_-2s§() : void
      {
         var _loc1_:Number = this.§catch§ / §_-yw§.§_-rO§ + this.§_-d2§;
         var _loc2_:Number = this.§_-7V§ / §_-yw§.§_-rO§ + this.§_-WT§;
         this.§_-MO§ = _loc1_ - §_-yw§.§_-C7§ / 2 * §_-u4§.§_-cS§ / §_-u4§.§_-bA§;
         this.§_-D2§ = _loc2_ - §_-yw§.§_-ri§ / 2 + §_-oI§.§_-VO§;
         this.§_-Fx§.background.§_-rm§(this.§_-MO§,this.§_-D2§);
         this.§_-Fx§.objects.§_-rm§(this.§_-MO§,this.§_-D2§);
         this.§_-Fx§.§_-SU§.§_-rm§(this.§_-MO§,this.§_-D2§);
         this.§_-Fx§.slingshot.§_-rm§(this.§_-MO§,this.§_-D2§);
         this.§_-Fx§.particles.§_-rm§(this.§_-MO§,this.§_-D2§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-Qz§ = -1;
         if(this.§_-3m§)
         {
            this.§_-Nq§(§_-Rs§);
         }
         else
         {
            this.§_-Nq§(§_-I7§);
         }
         this.§_-yi§ = this.§_-m4§ = this.§_-jo§ = param1;
         this.§_-Dw§ = this.§_-rk§ = this.§_-nS§ = param2;
         this.§_-xf§ = 0;
         this.§_-Gp§ = this.§catch§;
         this.§_-RV§ = this.§_-7V§;
         this.§_-36§ = §_-RC§;
         this.mTempCameraAnimationScale2 = §_-RC§;
         if(Math.abs(this.§_-tr§ - this.§_-zL§) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§catch§ - this.§_-zL§) / (this.§_-tr§ - this.§_-zL§) * §_-pN§;
         }
         this.mDragging = true;
      }
      
      public function §_-G6§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-xf§ += param1;
         var _loc3_:Number = this.§_-yi§ - this.§_-m4§;
         if(this.§_-vJ§ > 0)
         {
            _loc2_ -= _loc3_ * §_-yw§.§_-rO§ / §_-RC§ / this.§_-vJ§ * §_-pN§;
            this.§_-aT§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-aT§ = true;
            }
            if(_loc2_ > §_-pN§)
            {
               _loc2_ += (§_-pN§ - _loc2_) * 0.3;
               this.§_-aT§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-m4§ = this.§_-yi§;
      }
      
      public function §_-8d§(param1:Number) : void
      {
         this.§_-K3§ += (this.§_-m4§ - this.§_-yi§) * §_-yw§.§_-rO§;
         this.§_-Ve§ += (this.§_-rk§ - this.§_-Dw§) * §_-yw§.§_-rO§;
         this.§_-m4§ = this.§_-yi§;
         this.§_-rk§ = this.§_-Dw§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == §_-I7§ || this.mCurrentAction == §_-Rs§)
         {
            this.§_-yi§ = param1;
            this.§_-Dw§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-I7§)
         {
            this.§_-Nq§(§_-Jt§);
            if(param1 > 0)
            {
               this.§_-yi§ = param1;
            }
            _loc3_ = Math.abs(this.§_-yi§ - this.§_-jo§);
            if(this.§_-xf§ < §_-bx§ && _loc3_ >= §_-dX§ && _loc3_ >= §_-Xl§ * this.§_-xf§ / 1000)
            {
               if(this.§_-yi§ < this.§_-jo§)
               {
                  this.§_-Nq§(§_-wT§);
               }
               else
               {
                  this.§_-Nq§(§_-fF§);
               }
               this.§_-C1§ = _loc3_ / this.§_-xf§ * 10;
               this.§_-aT§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-aT§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-pN§)
               {
                  this.§_-aT§ = true;
               }
            }
            else if(this.§_-xf§ < §_-Gb§)
            {
               this.§_-o§();
               this.§_-C1§ = §_-pN§ / (§_-pN§ / 500);
               this.§_-aT§ = true;
            }
            else
            {
               this.§_-G6§(0);
               this.§_-Ma§(0);
               this.§_-C1§ = §_-pN§ / (§_-pN§ / 500);
               this.§_-aT§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-o§() : void
      {
         if(this.mCurrentAction == §_-wT§)
         {
            this.§_-Nq§(§_-fF§);
         }
         else if(this.mCurrentAction == §_-fF§)
         {
            this.§_-Nq§(§_-wT§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-pN§ / 2)
         {
            this.§_-Nq§(§_-fF§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-pN§ / 2)
         {
            this.§_-Nq§(§_-wT§);
         }
      }
      
      public function §_-Ma§(param1:int) : void
      {
         this.§_-Qz§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-pN§ / 2)
         {
            this.§_-Nq§(§_-fF§);
         }
         else
         {
            this.§_-Nq§(§_-wT§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-Nq§(§_-fF§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-Nq§(§_-wT§);
      }
      
      public function §_-Nq§(param1:int) : void
      {
         this.§_-Gp§ = this.§catch§;
         this.§_-RV§ = this.§_-7V§;
         this.§_-36§ = §_-RC§;
         this.mTempCameraAnimationScale2 = §_-RC§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-pN§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-wT§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-kL§(param1:§_-YW§) : void
      {
         this.§_-xs§ = param1;
         if(this.§_-xs§ != null)
         {
            this.§_-sv§ = new §_-YW§();
            this.§_-sv§.x = this.§catch§;
            this.§_-sv§.y = this.§_-7V§;
            this.§_-sv§.scale = §_-RC§;
         }
         else
         {
            this.§catch§ = this.§_-sv§.x;
            this.§_-7V§ = this.§_-sv§.y;
            §_-RC§ = this.§_-sv§.scale;
            this.§_-sv§ = null;
         }
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += §_-1o§;
         }
         else
         {
            _loc2_ -= §_-1o§;
         }
         _loc2_ = Math.max(§_-yD§,Math.min(§_-2F§,_loc2_));
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
            if(this.§_-3m§)
            {
               this.§_-Nq§(§_-Rs§);
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
      
      public function §_-SB§() : void
      {
         this.mManualScale = Math.max(this.mManualScale - 0.5,0.5);
      }
      
      public function §_-9X§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.§catch§;
         _loc1_ += " mYcenterB2: " + this.§_-7V§;
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
