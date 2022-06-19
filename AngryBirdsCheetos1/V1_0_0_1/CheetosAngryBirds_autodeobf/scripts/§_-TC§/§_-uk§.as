package §_-TC§
{
   import §_-2r§.§_-XE§;
   import §_-2r§.§_-sn§;
   import §_-T8§.§_-GI§;
   import §_-T8§.§_-Yr§;
   import §_-U0§.§_-tF§;
   import §_-bl§.§_-Ie§;
   import §_-gC§.§_-XR§;
   
   public class §_-uk§
   {
      
      public static const §_-i4§:Number = 1.25;
      
      public static const §_-sM§:Number = 0.15;
      
      public static const §_-0s§:Number = §_-XR§.§_-jC§ * §_-sn§.§_-5Y§;
      
      public static const §_-mO§:Number = §_-XR§.§_-0-3§ * §_-sn§.§_-5Y§;
      
      public static const §_-g1§:Number = 1;
      
      public static const §_-U§:Number = 0.2;
      
      public static const §_-MO§:Number = 0.1;
      
      public static const §_-ol§:int = 1500;
      
      public static const §_-2Z§:int = 10;
      
      public static const §_-DR§:int = 15;
      
      public static const §_-0d§:int = 300;
      
      public static const §_-t2§:int = 1000;
      
      public static const §_-9i§:int = 10000;
      
      public static const §_-TT§:int = §_-9i§ / 50;
      
      public static const §_-yx§:int = 0;
      
      public static const §_-ny§:int = 1;
      
      public static const §_-aK§:int = 2;
      
      public static const §_-ca§:int = 3;
      
      public static const §_-Ik§:int = 4;
      
      public static const §_-or§:int = 5;
      
      public static const §_-4Y§:String = "CASTLE";
      
      public static const §_-KE§:String = "SLINGSHOT";
      
      protected static var §_-us§:Number;
      
      public static var §_-j4§:Number;
      
      public static var §_-iS§:Number;
      
      public static const §_-8E§:Number = 2000;
       
      
      protected var §_-09§:Number;
      
      protected var §_-0-y§:Number;
      
      protected var §_-bb§:Number;
      
      public var §_-5F§:§_-sn§;
      
      public var §_-9q§:Number;
      
      public var §_-Mz§:Number;
      
      private var §_-t3§:§_-Kc§;
      
      private var §_-eM§:§_-Kc§;
      
      public var §_-Rs§:Number;
      
      public var §_-Nb§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-d5§:Number;
      
      public var §_-Et§:Number;
      
      public var §_-tC§:Number;
      
      public var §_-io§:Number;
      
      private var §_-mZ§:Number;
      
      private var §_-2X§:§_-yi§;
      
      private var §_-mW§:§_-yi§;
      
      protected var §_-xC§:Number = 0;
      
      protected var §_-be§:Number = 0;
      
      protected var §_-Fm§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-Lc§:Number = 0;
      
      public var §_-wD§:Boolean = true;
      
      public var §_-Sr§:Number = 0;
      
      public var §_-eJ§:Number = 0;
      
      public var §_-1Q§:Number = 0;
      
      public var §_-jB§:Number = 0;
      
      public var §_-WD§:Number = 0;
      
      public var §_-1k§:Number = 0;
      
      public var §_-e6§:Number = 0;
      
      public var §_-gX§:Number = 0;
      
      public var §_-ee§:Number = 0;
      
      private var §_-0-F§:§_-yi§;
      
      public var §_-bc§:Number = 0;
      
      private var §_-ym§:Number = 0;
      
      private var §_-Hz§:Number = 0;
      
      private var §_-vc§:§_-Yr§ = null;
      
      private var §_-K8§:§_-Yr§ = null;
      
      public function §_-uk§(param1:§_-sn§, param2:§_-GI§)
      {
         this.§_-0-F§ = new §_-yi§(0,0,1,false);
         super();
         this.§_-0-y§ = 0;
         this.§_-bb§ = 0;
         this.§_-5F§ = param1;
         §_-uk§.§_-us§ = 1;
         this.§_-09§ = 1;
         this.§_-yV§(param2.§_-nL§);
         if(this.§_-t3§ && this.§_-eM§)
         {
            this.§_-A1§();
            this.§_-xC§ = this.§_-t3§.x - this.§_-eM§.x;
            this.§_-be§ = this.§_-t3§.y - this.§_-eM§.y;
            this.§_-Fm§ = this.§_-t3§.scale - this.§_-eM§.scale;
            this.§_-0-y§ = this.§_-t3§.x;
            this.§_-bb§ = this.§_-t3§.y;
            §_-us§ = this.§_-t3§.scale;
         }
         this.mCurrentCameraSliderLocation = §_-9i§;
         this.§_-wD§ = true;
         this.§_-Lc§ = §_-9i§ / 500;
      }
      
      private static function §_-Y4§() : Number
      {
         var _loc1_:Number = §_-XR§.§_-BS§ / §_-XR§.§_-Rt§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §_-gJ§() : Number
      {
         return §_-us§ * §_-Y4§();
      }
      
      public function get manualScale() : Number
      {
         return this.§_-09§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§_-09§ = param1;
      }
      
      public function get §_-kv§() : Number
      {
         return this.§_-mZ§;
      }
      
      public function §_-bu§() : Number
      {
         return §_-0s§ / (this.§_-Et§ - this.§_-d5§);
      }
      
      public function §_-2B§(param1:Number) : void
      {
         this.§_-09§ = param1;
         this.§_-PT§();
         this.§_-6T§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         this.goToCastleView();
         this.§_-Sr§ = 2000;
         this.§_-0Z§();
         this.§_-xw§();
         this.§_-u0§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-0-y§ = this.§_-eM§.x;
         this.§_-bb§ = this.§_-eM§.y;
         this.§_-wD§ = false;
         this.§_-Lc§ = §_-9i§ / 160000 * param1;
         this.§_-hR§(§_-or§);
      }
      
      public function §_-A1§() : void
      {
         this.§_-d5§ = this.§_-eM§.x - §_-0s§ / this.§_-eM§.scale / 2;
         this.§_-Et§ = this.§_-t3§.x + §_-0s§ / this.§_-t3§.scale / 2;
         this.§_-tC§ = this.§_-5F§.§_-BV§.§use§ - 20 * §_-sn§.§_-ne§ * §_-sn§.§_-5Y§;
         this.§_-io§ = this.§_-5F§.§_-BV§.§use§ + 4;
         var _loc1_:Number = §_-0s§ / (this.§_-Et§ - this.§_-d5§);
         this.§_-mZ§ = this.§_-io§ - §_-mO§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§_-5F§ = null;
      }
      
      public function §_-yV§(param1:Vector.<§_-Yr§>) : void
      {
         var _loc2_:§_-Yr§ = null;
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
               this.§_-qR§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-mO§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-0s§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-KE§)
            {
               this.§_-eM§ = new §_-Kc§(_loc8_,_loc9_,_loc12_,true);
               this.§_-mW§ = new §_-yi§(_loc8_,_loc9_,_loc12_,true);
            }
            else if(_loc3_ == §_-4Y§)
            {
               this.§_-t3§ = new §_-Kc§(_loc8_,_loc9_,_loc12_,false);
               this.§_-2X§ = new §_-yi§(_loc8_,_loc9_,_loc12_,false);
            }
            else
            {
               §_-tF§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      public function §_-GW§(param1:§_-GI§) : void
      {
         var _loc2_:§_-Yr§ = new §_-Yr§();
         _loc2_.id = §_-KE§;
         _loc2_.x = this.§_-eM§.x;
         _loc2_.y = this.§_-eM§.y;
         var _loc3_:Number = §_-0s§ / this.§_-eM§.scale / 2;
         var _loc4_:Number = §_-mO§ / this.§_-eM§.scale / 2;
         _loc2_.left = this.§_-eM§.x - _loc3_;
         _loc2_.right = this.§_-eM§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-Yr§;
         (_loc5_ = new §_-Yr§()).id = §_-4Y§;
         _loc5_.x = this.§_-t3§.x;
         _loc5_.y = this.§_-t3§.y;
         var _loc6_:Number = §_-0s§ / this.§_-t3§.scale / 2;
         var _loc7_:Number = §_-mO§ / this.§_-t3§.scale / 2;
         _loc5_.left = this.§_-t3§.x - _loc6_;
         _loc5_.right = this.§_-t3§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-nL§.length > 0)
         {
            param1.§_-nL§.pop();
         }
         param1.§_-nL§.push(_loc2_);
         param1.§_-nL§.push(_loc5_);
      }
      
      public function §_-qR§(param1:§_-Yr§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-XR§.§_-jC§ * 0.5 / _loc2_ * §_-sn§.§_-5Y§;
         var _loc4_:Number = param1.y - §_-XR§.§_-0-3§ * 0.5 / _loc2_ * §_-sn§.§_-5Y§;
         var _loc5_:Number = _loc3_ + §_-XR§.§_-jC§ / _loc2_ * §_-sn§.§_-5Y§;
         var _loc6_:Number = _loc4_ + §_-XR§.§_-0-3§ / _loc2_ * §_-sn§.§_-5Y§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §_-op§(param1:§_-Kc§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§_-Lc§;
         if(_loc3_ >= §_-9i§)
         {
            _loc3_ = §_-9i§;
            this.§_-hR§(§_-yx§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§_-hR§(§_-yx§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §_-jS§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§_-Lc§;
         var _loc4_:Number = -§_-9i§ * 0.7;
         if(_loc2_ >= §_-9i§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §_-9i§;
            }
            this.§_-Lc§ = -this.§_-Lc§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §_-I6§(param1:Number) : void
      {
         if(this.mCurrentAction == §_-or§)
         {
            this.§_-jS§(param1);
         }
         else if(this.mCurrentAction == §_-ny§)
         {
            this.§_-op§(this.§_-t3§,param1);
         }
         else if(this.mCurrentAction == §_-aK§)
         {
            this.§_-op§(this.§_-eM§,-param1);
         }
         else if(this.mCurrentAction == §_-ca§)
         {
            this.§_-wD§ = true;
         }
         else if(this.mCurrentAction == §_-Ik§)
         {
            this.§_-BE§(param1);
         }
      }
      
      public function §_-2F§(param1:Number) : void
      {
         if(this.§_-vc§)
         {
            this.§_-0-y§ = this.§_-vc§.x;
            this.§_-bb§ = this.§_-vc§.y;
            §_-us§ = §_-0s§ / (this.§_-vc§.right - this.§_-vc§.left);
         }
         else
         {
            this.§_-PT§();
            this.§_-I6§(param1);
            this.§_-TU§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-0Z§();
         this.§_-xw§();
         this.§_-u0§();
      }
      
      private function § true§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-mW§.scale + (this.§_-2X§.scale - this.§_-mW§.scale) * param1;
         var _loc4_:Number = this.§_-mW§.x + (this.§_-2X§.x - this.§_-mW§.x) * param1;
         var _loc5_:Number = this.§_-mW§.y + (this.§_-2X§.y - this.§_-mW§.y) * param1;
         this.§_-0-F§.x -= (this.§_-0-F§.x - _loc4_) * param2;
         this.§_-0-F§.y -= (this.§_-0-F§.y - _loc5_) * param2;
         this.§_-0-F§.scale -= (this.§_-0-F§.scale - _loc3_) * param2;
      }
      
      protected function §_-6T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-xC§ != 0)
         {
            if(!this.§_-wD§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §_-9i§;
            this.§ true§(_loc3_,param2);
            this.§_-0-y§ = this.§_-0-F§.x;
            this.§_-bb§ = this.§_-0-F§.y;
            §_-us§ = this.§_-0-F§.scale;
         }
      }
      
      public function §_-TU§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-Ie§ = null;
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
         var _loc23_:Number = NaN;
         var _loc24_:Boolean = false;
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §_-9i§)
         {
            this.§_-wD§ = true;
         }
         if(this.mCurrentAction == §_-ca§)
         {
            if(!this.§_-5F§.activeObject)
            {
               this.§_-hR§(§_-ny§);
               this.§_-ee§ = §_-t2§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-5F§.activeObject).§_-BO§().GetPosition().x + (!!_loc5_.§_-kR§ ? _loc5_.§_-kR§ * §_-sn§.§_-5Y§ : 0);
               _loc7_ = _loc5_.§_-BO§().GetPosition().y + (!!_loc5_.§_-3p§ ? _loc5_.§_-3p§ * §_-sn§.§_-5Y§ : 0);
               if((_loc8_ = _loc5_.§_-BO§().GetLinearVelocity().x) > 0 && this.§_-xC§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-xC§ * §_-9i§;
               }
               if(param1 >= §_-9i§)
               {
                  param1 = §_-9i§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §_-9i§;
               this.§ true§(_loc9_,_loc4_);
               _loc10_ = this.§_-0-F§.x - §_-0s§ * 0.5 / this.§_-0-F§.scale;
               _loc11_ = this.§_-0-F§.y - §_-mO§ * 0.5 / this.§_-0-F§.scale;
               _loc12_ = this.§_-0-F§.x + §_-0s§ * 0.5 / this.§_-0-F§.scale;
               _loc13_ = this.§_-0-F§.y + §_-mO§ * 0.5 / this.§_-0-F§.scale;
               _loc14_ = 150 * §_-sn§.§_-5Y§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§_-d5§,_loc15_);
               _loc17_ = Math.min(this.§_-Et§,_loc17_);
               _loc19_ = Math.abs(§_-0s§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§_-mO§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§_-0-F§.scale)
               {
                  _loc21_ = this.§_-0-F§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §_-0s§ * 0.5 / _loc21_ > this.§_-Et§)
               {
                  _loc15_ = (_loc17_ = this.§_-Et§) - §_-0s§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§_-d5§)
                  {
                     _loc15_ = this.§_-d5§;
                  }
               }
               if(_loc22_ - §_-0s§ * 0.5 / _loc21_ < this.§_-d5§)
               {
                  _loc17_ = (_loc15_ = this.§_-d5§) + §_-0s§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§_-Et§)
                  {
                     _loc17_ = this.§_-Et§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§_-0s§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §_-0s§ * 0.5 / _loc21_ < this.§_-tC§)
               {
                  _loc23_ = this.§_-tC§ + §_-0s§ * 0.5 / _loc21_;
               }
               this.§_-0-y§ -= (this.§_-0-y§ - _loc22_) * _loc4_;
               this.§_-bc§ -= (this.§_-bc§ - _loc21_) * _loc4_;
               §_-us§ = this.§_-bc§;
               this.§_-bb§ -= (this.§_-bb§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§_-Et§ || _loc6_ <= this.§_-d5§)
               {
                  this.§_-0-F§.scale = §_-us§;
                  this.§_-0-F§.x = this.§_-0-y§;
                  this.§_-0-F§.y = this.§_-bb§;
               }
            }
         }
         else
         {
            this.§_-6T§(param1,_loc4_);
         }
      }
      
      public function §_-Mc§(param1:Number, param2:Number) : void
      {
         this.§_-ym§ = param1;
         this.§_-Hz§ = param2;
      }
      
      private function §_-i-§(param1:§_-yi§, param2:§_-Kc§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §_-sM§ + (param2.scale - §_-sM§) * this.§_-09§ * §_-uk§.§_-Y4§();
         if(§_-0s§ / param1.scale > this.§_-Et§ - this.§_-d5§)
         {
            _loc3_ = §_-0s§ / (this.§_-Et§ - this.§_-d5§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §_-jG§(param1:§_-yi§, param2:§_-Kc§) : Boolean
      {
         var _loc3_:Boolean = this.§_-i-§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §_-mO§ * 0.5 / param1.scale;
         var _loc5_:Number = §_-mO§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §_-0s§ * 0.5 / param1.scale) < this.§_-d5§ && param1.§_-EB§)
         {
            param1.x += this.§_-d5§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §_-0s§ * 0.5 / param1.scale) > this.§_-Et§ && !param1.§_-EB§)
         {
            param1.x += this.§_-Et§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §_-UB§(param1:§_-yi§, param2:§_-Kc§) : Number
      {
         return (param1.scale - §_-sM§) / (§_-uk§.§_-Y4§() * (param2.scale - §_-sM§));
      }
      
      protected function §_-PT§() : void
      {
         this.§_-jG§(this.§_-mW§,this.§_-eM§);
         var _loc1_:Number = this.§_-UB§(this.§_-mW§,this.§_-eM§);
         this.§_-jG§(this.§_-2X§,this.§_-t3§);
         var _loc2_:Number = this.§_-UB§(this.§_-2X§,this.§_-t3§);
         this.§_-09§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §_-0Z§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§_-5F§.sprite)
         {
            _loc1_ = §_-XR§.§_-GF§() / §_-XR§.§_-BS§ - §_-XR§.§_-0-3§ >> 1;
            §_-j4§ = this.§_-5F§.sprite.x = §_-sn§.§_-MH§ * ((1 - §_-uk§.§_-gJ§) / 2);
            §_-iS§ = this.§_-5F§.sprite.y = _loc1_ + §_-sn§.§_-ne§ * (1 - §_-uk§.§_-gJ§) * §_-XE§.§_-UT§;
         }
      }
      
      public function §_-u0§() : void
      {
         if(this.§_-5F§.sprite)
         {
            this.§_-5F§.sprite.scaleX = §_-gJ§;
            this.§_-5F§.sprite.scaleY = §_-gJ§;
         }
      }
      
      public function §_-xw§() : void
      {
         var _loc1_:Number = this.§_-0-y§ / §_-sn§.§_-5Y§ + this.§_-ym§;
         var _loc2_:Number = this.§_-bb§ / §_-sn§.§_-5Y§ + this.§_-Hz§;
         this.§_-Rs§ = _loc1_ - §_-sn§.§_-MH§ / 2 * §_-XR§.§_-BS§ / §_-XR§.§_-Gm§;
         this.§_-Nb§ = _loc2_ - §_-sn§.§_-ne§ / 2 + §_-XE§.§_-§;
         if(this.§_-5F§.background)
         {
            this.§_-5F§.background.§ for§(this.§_-Rs§,this.§_-Nb§);
         }
         if(this.§_-5F§.objects)
         {
            this.§_-5F§.objects.§ for§(this.§_-Rs§,this.§_-Nb§);
         }
         if(this.§_-5F§.mLevelEngine)
         {
            this.§_-5F§.mLevelEngine.§ for§(this.§_-Rs§,this.§_-Nb§);
         }
         if(this.§_-5F§.slingshot)
         {
            this.§_-5F§.slingshot.§ for§(this.§_-Rs§,this.§_-Nb§);
         }
         if(this.§_-5F§.particles)
         {
            this.§_-5F§.particles.§ for§(this.§_-Rs§,this.§_-Nb§);
         }
      }
      
      protected function §_-yt§() : void
      {
         this.§_-hR§(§_-Ik§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-ee§ = -1;
         this.§_-yt§();
         this.§_-WD§ = this.§_-e6§ = this.§_-1Q§ = param1;
         this.§_-1k§ = this.§_-gX§ = this.§_-jB§ = param2;
         this.§_-eJ§ = 0;
         this.§_-0-F§.x = this.§_-0-y§;
         this.§_-0-F§.y = this.§_-bb§;
         this.§_-0-F§.scale = §_-us§;
         this.§_-bc§ = §_-us§;
         if(Math.abs(this.§_-2X§.x - this.§_-mW§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-0-y§ - this.§_-mW§.x) / (this.§_-2X§.x - this.§_-mW§.x) * §_-9i§;
         }
         this.mDragging = true;
      }
      
      public function §_-BE§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-eJ§ += param1;
         var _loc3_:Number = this.§_-WD§ - this.§_-e6§;
         if(this.§_-xC§ > 0)
         {
            _loc2_ -= _loc3_ * §_-sn§.§_-5Y§ / §_-gJ§ / this.§_-xC§ * §_-9i§;
            this.§_-wD§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-wD§ = true;
            }
            if(_loc2_ > §_-9i§)
            {
               _loc2_ += (§_-9i§ - _loc2_) * 0.3;
               this.§_-wD§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-e6§ = this.§_-WD§;
      }
      
      protected function §_-bp§() : Boolean
      {
         return this.mCurrentAction == §_-Ik§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§_-WD§ = param1;
            this.§_-1k§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-Ik§)
         {
            this.§_-hR§(§_-yx§);
            if(param1 > 0)
            {
               this.§_-WD§ = param1;
            }
            _loc3_ = Math.abs(this.§_-WD§ - this.§_-1Q§);
            if(this.§_-eJ§ < §_-ol§ && _loc3_ >= §_-2Z§ && _loc3_ >= §_-DR§ * this.§_-eJ§ / 1000)
            {
               if(this.§_-WD§ < this.§_-1Q§)
               {
                  this.§_-hR§(§_-ny§);
               }
               else
               {
                  this.§_-hR§(§_-aK§);
               }
               this.§_-Lc§ = _loc3_ / this.§_-eJ§ * 10;
               this.§_-wD§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-wD§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-9i§)
               {
                  this.§_-wD§ = true;
               }
            }
            else if(this.§_-eJ§ < §_-0d§)
            {
               this.§_-Zt§();
               this.§_-Lc§ = §_-9i§ / (§_-9i§ / 500);
               this.§_-wD§ = true;
            }
            else
            {
               this.§_-BE§(0);
               this.§_-gH§(0);
               this.§_-Lc§ = §_-9i§ / (§_-9i§ / 500);
               this.§_-wD§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-Zt§() : void
      {
         if(this.mCurrentAction == §_-ny§)
         {
            this.§_-hR§(§_-aK§);
         }
         else if(this.mCurrentAction == §_-aK§)
         {
            this.§_-hR§(§_-ny§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-9i§ / 2)
         {
            this.§_-hR§(§_-aK§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-9i§ / 2)
         {
            this.§_-hR§(§_-ny§);
         }
      }
      
      public function §_-gH§(param1:int) : void
      {
         this.§_-ee§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-9i§ / 2)
         {
            this.§_-hR§(§_-aK§);
         }
         else
         {
            this.§_-hR§(§_-ny§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-hR§(§_-aK§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-hR§(§_-ny§);
      }
      
      public function §_-hR§(param1:int) : void
      {
         this.§_-0-F§.x = this.§_-0-y§;
         this.§_-0-F§.y = this.§_-bb§;
         this.§_-0-F§.scale = §_-us§;
         this.§_-bc§ = §_-us§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-9i§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-ny§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-p8§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §_-aK§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-vu§(param1:§_-Yr§) : void
      {
         this.§_-vc§ = param1;
         if(this.§_-vc§ != null)
         {
            this.§_-K8§ = new §_-Yr§();
            this.§_-K8§.x = this.§_-0-y§;
            this.§_-K8§.y = this.§_-bb§;
            this.§_-K8§.scale = §_-us§;
         }
         else
         {
            this.§_-0-y§ = this.§_-K8§.x;
            this.§_-bb§ = this.§_-K8§.y;
            §_-us§ = this.§_-K8§.scale;
            this.§_-K8§ = null;
         }
      }
      
      protected function §_-Oe§() : void
      {
         if(this.isOnCastleView())
         {
            this.goToCastleView();
         }
         else
         {
            this.goToBirdView();
         }
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc3_:Number = this.§_-09§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(§_-U§,Math.min(§_-g1§,_loc3_));
         if(_loc3_ != this.§_-09§)
         {
            this.§_-09§ = _loc3_;
            this.§_-Oe§();
         }
      }
      
      public function §_-je§() : Number
      {
         return (this.manualScale - §_-U§) / (§_-g1§ - §_-U§);
      }
      
      public function §_-Nw§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (§_-g1§ - §_-U§) + §_-U§;
      }
      
      public function §_-Qm§() : void
      {
         this.§_-09§ = Math.max(this.§_-09§ - 0.5,0.5);
      }
      
      public function §_-8U§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§_-09§;
         _loc1_ += " mXcenterB2: " + this.§_-0-y§;
         _loc1_ += " mYcenterB2: " + this.§_-bb§;
         _loc1_ += " mXcenterB2target: " + this.§_-09§;
         _loc1_ += "\n mYcenterB2target: " + this.§_-09§;
         _loc1_ += " mXcenterB2previous: " + this.§_-09§;
         _loc1_ += " mYcenterB2previous: " + this.§_-09§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§_-09§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§_-09§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§_-09§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§_-09§;
         _loc1_ += " mTargetScale: " + this.§_-09§;
         _loc1_ += " mTargetScalePrevious: " + this.§_-09§;
         _loc1_ += " mCastleCameraX: " + this.§_-09§;
         _loc1_ += "\n mCastleCameraY: " + this.§_-09§;
         _loc1_ += " mCastleCameraScale: " + this.§_-09§;
         _loc1_ += " mBirdCameraX: " + this.§_-09§;
         _loc1_ += " mBirdCameraY: " + this.§_-09§;
         _loc1_ += " mBirdCameraScale: " + this.§_-09§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§_-09§;
         _loc1_ += " mScreenTopScroll: " + this.§_-09§;
         _loc1_ += " mDragging: " + this.§_-09§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§_-09§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§_-09§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§_-09§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§_-09§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§_-09§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§_-09§;
         _loc1_ += " mDraggingTimer: " + this.§_-09§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§_-09§;
         _loc1_ += " mCameraBorderRight: " + this.§_-09§;
         _loc1_ += " mCameraBorderSky: " + this.§_-09§;
         _loc1_ += " mCameraBorderGround: " + this.§_-09§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§_-09§ + "\n ");
      }
   }
}
