package §_-ym§
{
   import §_-7x§.§_-oH§;
   import §_-7x§.§_-yE§;
   import §_-Di§.§_-58§;
   import §_-Di§.§_-ix§;
   import §_-gM§.§_-yj§;
   import §_-pm§.§_-gb§;
   import §_-tW§.§_-lx§;
   
   public class §_-7s§
   {
      
      public static const §_-yD§:Number = 1.25;
      
      public static const §_-k6§:Number = 0.15;
      
      public static const §_-eh§:Number = §_-gb§.§ null§ * §_-ix§.§_-z8§;
      
      public static const §_-SG§:Number = §_-gb§.§_-aD§ * §_-ix§.§_-z8§;
      
      public static const §_-Wp§:Number = 1;
      
      public static const §_-hd§:Number = 0.2;
      
      public static const §_-bF§:Number = 0.1;
      
      public static const §_-hF§:int = 1500;
      
      public static const §_-fk§:int = 10;
      
      public static const §_-kJ§:int = 15;
      
      public static const §_-Dy§:int = 300;
      
      public static const §_-h-§:int = 1000;
      
      public static const §_-Wf§:int = 10000;
      
      public static const §_-HP§:int = §_-Wf§ / 50;
      
      public static const §_-zO§:int = 0;
      
      public static const §_-oY§:int = 1;
      
      public static const §_-2C§:int = 2;
      
      public static const §_-C5§:int = 3;
      
      public static const §_-Ql§:int = 4;
      
      public static const §_-p9§:int = 5;
      
      public static const §_-Ps§:String = "CASTLE";
      
      public static const §_-gR§:String = "SLINGSHOT";
      
      private static var §_-Cc§:Number;
      
      public static var §_-4P§:Number;
      
      public static var §_-2a§:Number;
      
      public static const §_-PI§:Number = 2000;
       
      
      protected var §_-4C§:Number;
      
      protected var §_-5t§:Number;
      
      protected var §_-Jy§:Number;
      
      public var §_-JH§:§_-ix§;
      
      public var §_-WC§:Number;
      
      public var §_-ad§:Number;
      
      private var §_-SU§:§_-cq§;
      
      private var §_-Fc§:§_-cq§;
      
      public var §_-dz§:Number;
      
      public var §_-qJ§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-P0§:Number;
      
      public var §_-bp§:Number;
      
      public var §_-b6§:Number;
      
      public var §_-Np§:Number;
      
      private var §_-pZ§:Number;
      
      private var §_-Sw§:§_-lD§;
      
      private var §_-10§:§_-lD§;
      
      protected var §_-zb§:Number = 0;
      
      protected var §_-ln§:Number = 0;
      
      protected var §_-nt§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-ke§:Number = 0;
      
      public var §_-ZO§:Boolean = true;
      
      public var §_-tc§:Number = 0;
      
      public var §_-d2§:Number = 0;
      
      public var §_-Bj§:Number = 0;
      
      public var §_-V5§:Number = 0;
      
      public var §_-jm§:Number = 0;
      
      public var §_-DX§:Number = 0;
      
      public var §_-NK§:Number = 0;
      
      public var §_-td§:Number = 0;
      
      public var §_-MR§:Number = 0;
      
      private var §_-MP§:§_-lD§;
      
      public var §_-Th§:Number = 0;
      
      private var §_-b2§:Number = 0;
      
      private var §_-Tx§:Number = 0;
      
      private var §_-sp§:§_-oH§ = null;
      
      private var §_-9f§:§_-oH§ = null;
      
      public function §_-7s§(param1:§_-ix§, param2:§_-yE§)
      {
         this.§_-MP§ = new §_-lD§(0,0,1,false);
         super();
         this.§_-5t§ = 0;
         this.§_-Jy§ = 0;
         this.§_-JH§ = param1;
         §_-7s§.§_-Cc§ = 1;
         this.§_-4C§ = 1;
         this.§_-Te§(param2.§_-o9§);
         this.§_-11§();
         this.§_-zb§ = this.§_-SU§.x - this.§_-Fc§.x;
         this.§_-ln§ = this.§_-SU§.y - this.§_-Fc§.y;
         this.§_-nt§ = this.§_-SU§.scale - this.§_-Fc§.scale;
         this.§_-5t§ = this.§_-SU§.x;
         this.§_-Jy§ = this.§_-SU§.y;
         §_-Cc§ = this.§_-SU§.scale;
         this.mCurrentCameraSliderLocation = §_-Wf§;
         this.§_-ZO§ = true;
         this.§_-ke§ = §_-Wf§ / 500;
      }
      
      private static function §_-tH§() : Number
      {
         var _loc1_:Number = §_-gb§.§_-EZ§ / §_-gb§.§_-Kx§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §_-ng§() : Number
      {
         return §_-Cc§ * §_-tH§();
      }
      
      public function get manualScale() : Number
      {
         return this.§_-4C§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§_-4C§ = param1;
      }
      
      public function get §_-7N§() : Number
      {
         return this.§_-pZ§;
      }
      
      public function §_-0T§() : Number
      {
         return §_-eh§ / (this.§_-bp§ - this.§_-P0§);
      }
      
      public function §try§(param1:Number) : void
      {
         this.§_-4C§ = param1;
         this.§_-xl§();
         this.§_-tf§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         this.goToCastleView();
         this.§_-tc§ = 2000;
         this.§_-t3§();
         this.§_-Dh§();
         this.§_-tm§();
      }
      
      public function initSlowScroll() : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-5t§ = this.§_-Fc§.x;
         this.§_-Jy§ = this.§_-Fc§.y;
         this.§_-ZO§ = false;
         this.§_-ke§ = §_-Wf§ / 160000;
         this.§_-A7§(§_-p9§);
      }
      
      public function §_-11§() : void
      {
         this.§_-P0§ = this.§_-Fc§.x - §_-eh§ / this.§_-Fc§.scale / 2;
         this.§_-bp§ = this.§_-SU§.x + §_-eh§ / this.§_-SU§.scale / 2;
         this.§_-b6§ = this.§_-JH§.§_-Ts§.§_-p7§ - 20 * §_-ix§.§_-l3§ * §_-ix§.§_-z8§;
         this.§_-Np§ = this.§_-JH§.§_-Ts§.§_-p7§ + 4;
         var _loc1_:Number = §_-eh§ / (this.§_-bp§ - this.§_-P0§);
         this.§_-pZ§ = this.§_-Np§ - §_-SG§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§_-JH§ = null;
      }
      
      public function §_-Te§(param1:Vector.<§_-oH§>) : void
      {
         var _loc2_:§_-oH§ = null;
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
               this.§_-gw§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-SG§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-eh§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-gR§)
            {
               this.§_-Fc§ = new §_-cq§(_loc8_,_loc9_,_loc12_,true);
               this.§_-10§ = new §_-lD§(_loc8_,_loc9_,_loc12_,true);
            }
            else if(_loc3_ == §_-Ps§)
            {
               this.§_-SU§ = new §_-cq§(_loc8_,_loc9_,_loc12_,false);
               this.§_-Sw§ = new §_-lD§(_loc8_,_loc9_,_loc12_,false);
            }
            else
            {
               §_-yj§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      public function §_-lu§(param1:§_-yE§) : void
      {
         var _loc2_:§_-oH§ = new §_-oH§();
         _loc2_.id = §_-gR§;
         _loc2_.x = this.§_-Fc§.x;
         _loc2_.y = this.§_-Fc§.y;
         var _loc3_:Number = §_-eh§ / this.§_-Fc§.scale / 2;
         var _loc4_:Number = §_-SG§ / this.§_-Fc§.scale / 2;
         _loc2_.left = this.§_-Fc§.x - _loc3_;
         _loc2_.right = this.§_-Fc§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-oH§;
         (_loc5_ = new §_-oH§()).id = §_-Ps§;
         _loc5_.x = this.§_-SU§.x;
         _loc5_.y = this.§_-SU§.y;
         var _loc6_:Number = §_-eh§ / this.§_-SU§.scale / 2;
         var _loc7_:Number = §_-SG§ / this.§_-SU§.scale / 2;
         _loc5_.left = this.§_-SU§.x - _loc6_;
         _loc5_.right = this.§_-SU§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-o9§.length > 0)
         {
            param1.§_-o9§.pop();
         }
         param1.§_-o9§.push(_loc2_);
         param1.§_-o9§.push(_loc5_);
      }
      
      public function §_-gw§(param1:§_-oH§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-gb§.§ null§ * 0.5 / _loc2_ * §_-ix§.§_-z8§;
         var _loc4_:Number = param1.y - §_-gb§.§_-aD§ * 0.5 / _loc2_ * §_-ix§.§_-z8§;
         var _loc5_:Number = _loc3_ + §_-gb§.§ null§ / _loc2_ * §_-ix§.§_-z8§;
         var _loc6_:Number = _loc4_ + §_-gb§.§_-aD§ / _loc2_ * §_-ix§.§_-z8§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §_-ly§(param1:§_-cq§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§_-ke§;
         if(_loc3_ >= §_-Wf§)
         {
            _loc3_ = §_-Wf§;
            this.§_-A7§(§_-zO§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§_-A7§(§_-zO§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §_-A2§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§_-ke§;
         var _loc4_:Number = -§_-Wf§ * 0.7;
         if(_loc2_ >= §_-Wf§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §_-Wf§;
            }
            this.§_-ke§ = -this.§_-ke§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §_-dy§(param1:Number) : void
      {
         if(this.mCurrentAction == §_-p9§)
         {
            this.§_-A2§(param1);
         }
         else if(this.mCurrentAction == §_-oY§)
         {
            this.§_-ly§(this.§_-SU§,param1);
         }
         else if(this.mCurrentAction == §_-2C§)
         {
            this.§_-ly§(this.§_-Fc§,-param1);
         }
         else if(this.mCurrentAction == §_-C5§)
         {
            this.§_-ZO§ = true;
         }
         else if(this.mCurrentAction == §_-Ql§)
         {
            this.§_-qA§(param1);
         }
      }
      
      public function §_-1E§(param1:Number) : void
      {
         if(this.§_-sp§)
         {
            this.§_-5t§ = this.§_-sp§.x;
            this.§_-Jy§ = this.§_-sp§.y;
            §_-Cc§ = §_-eh§ / (this.§_-sp§.right - this.§_-sp§.left);
         }
         else
         {
            this.§_-xl§();
            this.§_-dy§(param1);
            this.§_-Ct§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-t3§();
         this.§_-Dh§();
         this.§_-tm§();
      }
      
      private function §_-O9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-10§.scale + (this.§_-Sw§.scale - this.§_-10§.scale) * param1;
         var _loc4_:Number = this.§_-10§.x + (this.§_-Sw§.x - this.§_-10§.x) * param1;
         var _loc5_:Number = this.§_-10§.y + (this.§_-Sw§.y - this.§_-10§.y) * param1;
         this.§_-MP§.x -= (this.§_-MP§.x - _loc4_) * param2;
         this.§_-MP§.y -= (this.§_-MP§.y - _loc5_) * param2;
         this.§_-MP§.scale -= (this.§_-MP§.scale - _loc3_) * param2;
      }
      
      protected function §_-tf§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-zb§ != 0)
         {
            if(!this.§_-ZO§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §_-Wf§;
            this.§_-O9§(_loc3_,param2);
            this.§_-5t§ = this.§_-MP§.x;
            this.§_-Jy§ = this.§_-MP§.y;
            §_-Cc§ = this.§_-MP§.scale;
         }
      }
      
      public function §_-Ct§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-lx§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §_-Wf§)
         {
            this.§_-ZO§ = true;
         }
         if(this.mCurrentAction == §_-C5§)
         {
            if(!this.§_-JH§.activeObject)
            {
               this.§_-A7§(§_-oY§);
               this.§_-MR§ = §_-h-§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-JH§.activeObject).§_-UF§().GetPosition().x + (!!_loc5_.§_-H7§ ? _loc5_.§_-H7§ * §_-ix§.§_-z8§ : 0);
               _loc7_ = _loc5_.§_-UF§().GetPosition().y + (!!_loc5_.§_-ex§ ? _loc5_.§_-ex§ * §_-ix§.§_-z8§ : 0);
               if((_loc8_ = _loc5_.§_-UF§().GetLinearVelocity().x) > 0 && this.§_-zb§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-zb§ * §_-Wf§;
               }
               if(param1 >= §_-Wf§)
               {
                  param1 = §_-Wf§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §_-Wf§;
               this.§_-O9§(_loc9_,_loc4_);
               _loc10_ = this.§_-MP§.x - §_-eh§ * 0.5 / this.§_-MP§.scale;
               _loc11_ = this.§_-MP§.y - §_-SG§ * 0.5 / this.§_-MP§.scale;
               _loc12_ = this.§_-MP§.x + §_-eh§ * 0.5 / this.§_-MP§.scale;
               _loc13_ = this.§_-MP§.y + §_-SG§ * 0.5 / this.§_-MP§.scale;
               _loc14_ = 150 * §_-ix§.§_-z8§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§_-P0§,_loc15_);
               _loc17_ = Math.min(this.§_-bp§,_loc17_);
               _loc19_ = Math.abs(§_-eh§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§_-SG§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§_-MP§.scale)
               {
                  _loc21_ = this.§_-MP§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §_-eh§ * 0.5 / _loc21_ > this.§_-bp§)
               {
                  _loc15_ = (_loc17_ = this.§_-bp§) - §_-eh§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§_-P0§)
                  {
                     _loc15_ = this.§_-P0§;
                  }
               }
               if(_loc22_ - §_-eh§ * 0.5 / _loc21_ < this.§_-P0§)
               {
                  _loc17_ = (_loc15_ = this.§_-P0§) + §_-eh§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§_-bp§)
                  {
                     _loc17_ = this.§_-bp§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§_-eh§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §_-eh§ * 0.5 / _loc21_ < this.§_-b6§)
               {
                  _loc23_ = this.§_-b6§ + §_-eh§ * 0.5 / _loc21_;
               }
               this.§_-5t§ -= (this.§_-5t§ - _loc22_) * _loc4_;
               this.§_-Th§ -= (this.§_-Th§ - _loc21_) * _loc4_;
               §_-Cc§ = this.§_-Th§;
               this.§_-Jy§ -= (this.§_-Jy§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§_-bp§ || _loc6_ <= this.§_-P0§)
               {
                  this.§_-MP§.scale = §_-Cc§;
                  this.§_-MP§.x = this.§_-5t§;
                  this.§_-MP§.y = this.§_-Jy§;
               }
            }
         }
         else
         {
            this.§_-tf§(param1,_loc4_);
         }
      }
      
      public function §_-dX§(param1:Number, param2:Number) : void
      {
         this.§_-b2§ = param1;
         this.§_-Tx§ = param2;
      }
      
      private function §_-3H§(param1:§_-lD§, param2:§_-cq§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §_-k6§ + (param2.scale - §_-k6§) * this.§_-4C§ * §_-7s§.§_-tH§();
         if(§_-eh§ / param1.scale > this.§_-bp§ - this.§_-P0§)
         {
            _loc3_ = §_-eh§ / (this.§_-bp§ - this.§_-P0§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §_-qW§(param1:§_-lD§, param2:§_-cq§) : Boolean
      {
         var _loc3_:Boolean = this.§_-3H§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §_-SG§ * 0.5 / param1.scale;
         var _loc5_:Number = §_-SG§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §_-eh§ * 0.5 / param1.scale) < this.§_-P0§ && param1.§_-wQ§)
         {
            param1.x += this.§_-P0§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §_-eh§ * 0.5 / param1.scale) > this.§_-bp§ && !param1.§_-wQ§)
         {
            param1.x += this.§_-bp§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §_-bx§(param1:§_-lD§, param2:§_-cq§) : Number
      {
         return (param1.scale - §_-k6§) / (§_-7s§.§_-tH§() * (param2.scale - §_-k6§));
      }
      
      protected function §_-xl§() : void
      {
         this.§_-qW§(this.§_-10§,this.§_-Fc§);
         var _loc1_:Number = this.§_-bx§(this.§_-10§,this.§_-Fc§);
         this.§_-qW§(this.§_-Sw§,this.§_-SU§);
         var _loc2_:Number = this.§_-bx§(this.§_-Sw§,this.§_-SU§);
         this.§_-4C§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §_-t3§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§_-JH§.sprite)
         {
            _loc1_ = §_-gb§.§_-P8§() / §_-gb§.§_-EZ§ - §_-gb§.§_-aD§ >> 1;
            §_-4P§ = this.§_-JH§.sprite.x = §_-ix§.§_-md§ * ((1 - §_-7s§.§_-ng§) / 2);
            §_-2a§ = this.§_-JH§.sprite.y = _loc1_ + §_-ix§.§_-l3§ * (1 - §_-7s§.§_-ng§) * §_-58§.§_-IM§;
         }
      }
      
      public function §_-tm§() : void
      {
         if(this.§_-JH§.sprite)
         {
            this.§_-JH§.sprite.scaleX = §_-ng§;
            this.§_-JH§.sprite.scaleY = §_-ng§;
         }
      }
      
      public function §_-Dh§() : void
      {
         var _loc1_:Number = this.§_-5t§ / §_-ix§.§_-z8§ + this.§_-b2§;
         var _loc2_:Number = this.§_-Jy§ / §_-ix§.§_-z8§ + this.§_-Tx§;
         this.§_-dz§ = _loc1_ - §_-ix§.§_-md§ / 2 * §_-gb§.§_-EZ§ / §_-gb§.§_-lv§;
         this.§_-qJ§ = _loc2_ - §_-ix§.§_-l3§ / 2 + §_-58§.§_-IJ§;
         this.§_-JH§.background.§_-3I§(this.§_-dz§,this.§_-qJ§);
         this.§_-JH§.objects.§_-3I§(this.§_-dz§,this.§_-qJ§);
         this.§_-JH§.§_-v0§.§_-3I§(this.§_-dz§,this.§_-qJ§);
         this.§_-JH§.slingshot.§_-3I§(this.§_-dz§,this.§_-qJ§);
         this.§_-JH§.particles.§_-3I§(this.§_-dz§,this.§_-qJ§);
      }
      
      protected function §_-9S§() : void
      {
         this.§_-A7§(§_-Ql§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-MR§ = -1;
         this.§_-9S§();
         this.§_-jm§ = this.§_-NK§ = this.§_-Bj§ = param1;
         this.§_-DX§ = this.§_-td§ = this.§_-V5§ = param2;
         this.§_-d2§ = 0;
         this.§_-MP§.x = this.§_-5t§;
         this.§_-MP§.y = this.§_-Jy§;
         this.§_-MP§.scale = §_-Cc§;
         this.§_-Th§ = §_-Cc§;
         if(Math.abs(this.§_-Sw§.x - this.§_-10§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-5t§ - this.§_-10§.x) / (this.§_-Sw§.x - this.§_-10§.x) * §_-Wf§;
         }
         this.mDragging = true;
      }
      
      public function §_-qA§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-d2§ += param1;
         var _loc3_:Number = this.§_-jm§ - this.§_-NK§;
         if(this.§_-zb§ > 0)
         {
            _loc2_ -= _loc3_ * §_-ix§.§_-z8§ / §_-ng§ / this.§_-zb§ * §_-Wf§;
            this.§_-ZO§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-ZO§ = true;
            }
            if(_loc2_ > §_-Wf§)
            {
               _loc2_ += (§_-Wf§ - _loc2_) * 0.3;
               this.§_-ZO§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-NK§ = this.§_-jm§;
      }
      
      protected function §_-sA§() : Boolean
      {
         return this.mCurrentAction == §_-Ql§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§_-jm§ = param1;
            this.§_-DX§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-Ql§)
         {
            this.§_-A7§(§_-zO§);
            if(param1 > 0)
            {
               this.§_-jm§ = param1;
            }
            _loc3_ = Math.abs(this.§_-jm§ - this.§_-Bj§);
            if(this.§_-d2§ < §_-hF§ && _loc3_ >= §_-fk§ && _loc3_ >= §_-kJ§ * this.§_-d2§ / 1000)
            {
               if(this.§_-jm§ < this.§_-Bj§)
               {
                  this.§_-A7§(§_-oY§);
               }
               else
               {
                  this.§_-A7§(§_-2C§);
               }
               this.§_-ke§ = _loc3_ / this.§_-d2§ * 10;
               this.§_-ZO§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-ZO§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-Wf§)
               {
                  this.§_-ZO§ = true;
               }
            }
            else if(this.§_-d2§ < §_-Dy§)
            {
               this.§_-5j§();
               this.§_-ke§ = §_-Wf§ / (§_-Wf§ / 500);
               this.§_-ZO§ = true;
            }
            else
            {
               this.§_-qA§(0);
               this.§_-iW§(0);
               this.§_-ke§ = §_-Wf§ / (§_-Wf§ / 500);
               this.§_-ZO§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-5j§() : void
      {
         if(this.mCurrentAction == §_-oY§)
         {
            this.§_-A7§(§_-2C§);
         }
         else if(this.mCurrentAction == §_-2C§)
         {
            this.§_-A7§(§_-oY§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-Wf§ / 2)
         {
            this.§_-A7§(§_-2C§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-Wf§ / 2)
         {
            this.§_-A7§(§_-oY§);
         }
      }
      
      public function §_-iW§(param1:int) : void
      {
         this.§_-MR§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-Wf§ / 2)
         {
            this.§_-A7§(§_-2C§);
         }
         else
         {
            this.§_-A7§(§_-oY§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-A7§(§_-2C§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-A7§(§_-oY§);
      }
      
      public function §_-A7§(param1:int) : void
      {
         this.§_-MP§.x = this.§_-5t§;
         this.§_-MP§.y = this.§_-Jy§;
         this.§_-MP§.scale = §_-Cc§;
         this.§_-Th§ = §_-Cc§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-Wf§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-oY§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-eH§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §_-2C§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-p0§(param1:§_-oH§) : void
      {
         this.§_-sp§ = param1;
         if(this.§_-sp§ != null)
         {
            this.§_-9f§ = new §_-oH§();
            this.§_-9f§.x = this.§_-5t§;
            this.§_-9f§.y = this.§_-Jy§;
            this.§_-9f§.scale = §_-Cc§;
         }
         else
         {
            this.§_-5t§ = this.§_-9f§.x;
            this.§_-Jy§ = this.§_-9f§.y;
            §_-Cc§ = this.§_-9f§.scale;
            this.§_-9f§ = null;
         }
      }
      
      protected function §use §() : void
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
         var _loc3_:Number = this.§_-4C§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(§_-hd§,Math.min(§_-Wp§,_loc3_));
         if(_loc3_ != this.§_-4C§)
         {
            this.§_-4C§ = _loc3_;
            this.§use §();
         }
      }
      
      public function §_-1W§() : void
      {
         this.§_-4C§ = Math.max(this.§_-4C§ - 0.5,0.5);
      }
      
      public function §_-66§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§_-4C§;
         _loc1_ += " mXcenterB2: " + this.§_-5t§;
         _loc1_ += " mYcenterB2: " + this.§_-Jy§;
         _loc1_ += " mXcenterB2target: " + this.§_-4C§;
         _loc1_ += "\n mYcenterB2target: " + this.§_-4C§;
         _loc1_ += " mXcenterB2previous: " + this.§_-4C§;
         _loc1_ += " mYcenterB2previous: " + this.§_-4C§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§_-4C§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§_-4C§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§_-4C§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§_-4C§;
         _loc1_ += " mTargetScale: " + this.§_-4C§;
         _loc1_ += " mTargetScalePrevious: " + this.§_-4C§;
         _loc1_ += " mCastleCameraX: " + this.§_-4C§;
         _loc1_ += "\n mCastleCameraY: " + this.§_-4C§;
         _loc1_ += " mCastleCameraScale: " + this.§_-4C§;
         _loc1_ += " mBirdCameraX: " + this.§_-4C§;
         _loc1_ += " mBirdCameraY: " + this.§_-4C§;
         _loc1_ += " mBirdCameraScale: " + this.§_-4C§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§_-4C§;
         _loc1_ += " mScreenTopScroll: " + this.§_-4C§;
         _loc1_ += " mDragging: " + this.§_-4C§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§_-4C§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§_-4C§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§_-4C§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§_-4C§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§_-4C§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§_-4C§;
         _loc1_ += " mDraggingTimer: " + this.§_-4C§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§_-4C§;
         _loc1_ += " mCameraBorderRight: " + this.§_-4C§;
         _loc1_ += " mCameraBorderSky: " + this.§_-4C§;
         _loc1_ += " mCameraBorderGround: " + this.§_-4C§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§_-4C§ + "\n ");
      }
   }
}
