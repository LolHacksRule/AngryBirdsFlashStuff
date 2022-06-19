package §_-7T§
{
   import §_-94§.§_-si§;
   import §_-Kz§.§_-bo§;
   import §_-Kz§.§_-c3§;
   import §_-MP§.§_-BI§;
   import §_-MP§.§_-vz§;
   import §_-aA§.§_-I0§;
   import §_-fr§.§_-FX§;
   
   public class §_-yJ§
   {
      
      public static const §_-D2§:Number = 1.25;
      
      public static const §_-C6§:Number = 0.15;
      
      public static const §_-20§:Number = §_-si§.§_-dI§ * §_-c3§.§_-GA§;
      
      public static const §_-Sc§:Number = §_-si§.§_-0R§ * §_-c3§.§_-GA§;
      
      public static const §_-bN§:Number = 1;
      
      public static const §_-DY§:Number = 0.2;
      
      public static const §_-P7§:Number = 0.1;
      
      public static const §_-Jn§:int = 1500;
      
      public static const §_-GV§:int = 10;
      
      public static const §_-hq§:int = 15;
      
      public static const §_-2A§:int = 300;
      
      public static const §_-RK§:int = 1000;
      
      public static const §_-ZE§:int = 10000;
      
      public static const §_-mK§:int = §_-ZE§ / 50;
      
      public static const §_-7L§:int = 0;
      
      public static const §_-oW§:int = 1;
      
      public static const §_-W1§:int = 2;
      
      public static const §_-nF§:int = 3;
      
      public static const §_-iB§:int = 4;
      
      public static const §_-1X§:int = 5;
      
      public static const §_-Mx§:String = "CASTLE";
      
      public static const §_-UV§:String = "SLINGSHOT";
      
      protected static var §_-d8§:Number;
      
      public static var §_-gB§:Number;
      
      public static var §_-Fo§:Number;
      
      public static const §_-J-§:Number = 2000;
       
      
      protected var §_-hW§:Number;
      
      protected var §_-VR§:Number;
      
      protected var § do§:Number;
      
      public var §_-GF§:§_-c3§;
      
      public var §_-WV§:Number;
      
      public var §_-w5§:Number;
      
      private var §_-xL§:§_-Fi§;
      
      private var §_-hP§:§_-Fi§;
      
      public var §_-wC§:Number;
      
      public var §_-CV§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-VV§:Number;
      
      public var §_-bj§:Number;
      
      public var §_-uT§:Number;
      
      public var §_-91§:Number;
      
      private var §_-Fr§:Number;
      
      private var §_-8r§:§_-v0§;
      
      private var §_-s0§:§_-v0§;
      
      protected var §_-FT§:Number = 0;
      
      protected var §_-UJ§:Number = 0;
      
      protected var §_-o0§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-zV§:Number = 0;
      
      public var §_-gu§:Boolean = true;
      
      public var §_-3x§:Number = 0;
      
      public var §_-k1§:Number = 0;
      
      public var §_-Bb§:Number = 0;
      
      public var §_-dm§:Number = 0;
      
      public var §_-sM§:Number = 0;
      
      public var §_-nf§:Number = 0;
      
      public var §_-bT§:Number = 0;
      
      public var §_-nB§:Number = 0;
      
      public var §_-GW§:Number = 0;
      
      private var §_-Z6§:§_-v0§;
      
      public var §_-x§:Number = 0;
      
      private var §_-V3§:Number = 0;
      
      private var §_-o-§:Number = 0;
      
      private var §_-9a§:§_-vz§ = null;
      
      private var §_-34§:§_-vz§ = null;
      
      public function §_-yJ§(param1:§_-c3§, param2:§_-BI§)
      {
         this.§_-Z6§ = new §_-v0§(0,0,1,false);
         super();
         this.§_-VR§ = 0;
         this.§ do§ = 0;
         this.§_-GF§ = param1;
         §_-yJ§.§_-d8§ = 1;
         this.§_-hW§ = 1;
         this.§_-Aq§(param2.§_-nc§);
         if(this.§_-xL§ && this.§_-hP§)
         {
            this.§_-l5§();
            this.§_-FT§ = this.§_-xL§.x - this.§_-hP§.x;
            this.§_-UJ§ = this.§_-xL§.y - this.§_-hP§.y;
            this.§_-o0§ = this.§_-xL§.scale - this.§_-hP§.scale;
            this.§_-VR§ = this.§_-xL§.x;
            this.§ do§ = this.§_-xL§.y;
            §_-d8§ = this.§_-xL§.scale;
         }
         this.mCurrentCameraSliderLocation = §_-ZE§;
         this.§_-gu§ = true;
         this.§_-zV§ = §_-ZE§ / 500;
      }
      
      private static function §_-U6§() : Number
      {
         var _loc1_:Number = §_-si§.§_-gP§ / §_-si§.§_-3a§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §_-rO§() : Number
      {
         return §_-d8§ * §_-U6§();
      }
      
      public function get manualScale() : Number
      {
         return this.§_-hW§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§_-hW§ = param1;
      }
      
      public function get §_-Ph§() : Number
      {
         return this.§_-Fr§;
      }
      
      public function §_-H9§() : Number
      {
         return §_-20§ / (this.§_-bj§ - this.§_-VV§);
      }
      
      public function §_-ce§(param1:Number) : void
      {
         this.§_-hW§ = param1;
         this.§_-tK§();
         this.§_-JX§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         this.goToCastleView();
         this.§_-3x§ = 2000;
         this.§_-wQ§();
         this.§_-Ja§();
         this.§_-k8§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-VR§ = this.§_-hP§.x;
         this.§ do§ = this.§_-hP§.y;
         this.§_-gu§ = false;
         this.§_-zV§ = §_-ZE§ / 160000 * param1;
         this.§_-t§(§_-1X§);
      }
      
      public function §_-l5§() : void
      {
         this.§_-VV§ = this.§_-hP§.x - §_-20§ / this.§_-hP§.scale / 2;
         this.§_-bj§ = this.§_-xL§.x + §_-20§ / this.§_-xL§.scale / 2;
         this.§_-uT§ = this.§_-GF§.§_-6X§.§_-Ku§ - 20 * §_-c3§.§_-j0§ * §_-c3§.§_-GA§;
         this.§_-91§ = this.§_-GF§.§_-6X§.§_-Ku§ + 4;
         var _loc1_:Number = §_-20§ / (this.§_-bj§ - this.§_-VV§);
         this.§_-Fr§ = this.§_-91§ - §_-Sc§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§_-GF§ = null;
      }
      
      public function §_-Aq§(param1:Vector.<§_-vz§>) : void
      {
         var _loc2_:§_-vz§ = null;
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
               this.§_-V8§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-Sc§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-20§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-UV§)
            {
               this.§_-hP§ = new §_-Fi§(_loc8_,_loc9_,_loc12_,true);
               this.§_-s0§ = new §_-v0§(_loc8_,_loc9_,_loc12_,true);
            }
            else if(_loc3_ == §_-Mx§)
            {
               this.§_-xL§ = new §_-Fi§(_loc8_,_loc9_,_loc12_,false);
               this.§_-8r§ = new §_-v0§(_loc8_,_loc9_,_loc12_,false);
            }
            else
            {
               §_-I0§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      public function §_-7a§(param1:§_-BI§) : void
      {
         var _loc2_:§_-vz§ = new §_-vz§();
         _loc2_.id = §_-UV§;
         _loc2_.x = this.§_-hP§.x;
         _loc2_.y = this.§_-hP§.y;
         var _loc3_:Number = §_-20§ / this.§_-hP§.scale / 2;
         var _loc4_:Number = §_-Sc§ / this.§_-hP§.scale / 2;
         _loc2_.left = this.§_-hP§.x - _loc3_;
         _loc2_.right = this.§_-hP§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-vz§;
         (_loc5_ = new §_-vz§()).id = §_-Mx§;
         _loc5_.x = this.§_-xL§.x;
         _loc5_.y = this.§_-xL§.y;
         var _loc6_:Number = §_-20§ / this.§_-xL§.scale / 2;
         var _loc7_:Number = §_-Sc§ / this.§_-xL§.scale / 2;
         _loc5_.left = this.§_-xL§.x - _loc6_;
         _loc5_.right = this.§_-xL§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-nc§.length > 0)
         {
            param1.§_-nc§.pop();
         }
         param1.§_-nc§.push(_loc2_);
         param1.§_-nc§.push(_loc5_);
      }
      
      public function §_-V8§(param1:§_-vz§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-si§.§_-dI§ * 0.5 / _loc2_ * §_-c3§.§_-GA§;
         var _loc4_:Number = param1.y - §_-si§.§_-0R§ * 0.5 / _loc2_ * §_-c3§.§_-GA§;
         var _loc5_:Number = _loc3_ + §_-si§.§_-dI§ / _loc2_ * §_-c3§.§_-GA§;
         var _loc6_:Number = _loc4_ + §_-si§.§_-0R§ / _loc2_ * §_-c3§.§_-GA§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §_-Un§(param1:§_-Fi§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§_-zV§;
         if(_loc3_ >= §_-ZE§)
         {
            _loc3_ = §_-ZE§;
            this.§_-t§(§_-7L§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§_-t§(§_-7L§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §_-y§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§_-zV§;
         var _loc4_:Number = -§_-ZE§ * 0.7;
         if(_loc2_ >= §_-ZE§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §_-ZE§;
            }
            this.§_-zV§ = -this.§_-zV§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §_-gs§(param1:Number) : void
      {
         if(this.mCurrentAction == §_-1X§)
         {
            this.§_-y§(param1);
         }
         else if(this.mCurrentAction == §_-oW§)
         {
            this.§_-Un§(this.§_-xL§,param1);
         }
         else if(this.mCurrentAction == §_-W1§)
         {
            this.§_-Un§(this.§_-hP§,-param1);
         }
         else if(this.mCurrentAction == §_-nF§)
         {
            this.§_-gu§ = true;
         }
         else if(this.mCurrentAction == §_-iB§)
         {
            this.§_-1R§(param1);
         }
      }
      
      public function §_-Gg§(param1:Number) : void
      {
         if(this.§_-9a§)
         {
            this.§_-VR§ = this.§_-9a§.x;
            this.§ do§ = this.§_-9a§.y;
            §_-d8§ = §_-20§ / (this.§_-9a§.right - this.§_-9a§.left);
         }
         else
         {
            this.§_-tK§();
            this.§_-gs§(param1);
            this.§_-bZ§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-wQ§();
         this.§_-Ja§();
         this.§_-k8§();
      }
      
      private function §_-Zb§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-s0§.scale + (this.§_-8r§.scale - this.§_-s0§.scale) * param1;
         var _loc4_:Number = this.§_-s0§.x + (this.§_-8r§.x - this.§_-s0§.x) * param1;
         var _loc5_:Number = this.§_-s0§.y + (this.§_-8r§.y - this.§_-s0§.y) * param1;
         this.§_-Z6§.x -= (this.§_-Z6§.x - _loc4_) * param2;
         this.§_-Z6§.y -= (this.§_-Z6§.y - _loc5_) * param2;
         this.§_-Z6§.scale -= (this.§_-Z6§.scale - _loc3_) * param2;
      }
      
      protected function §_-JX§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-FT§ != 0)
         {
            if(!this.§_-gu§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §_-ZE§;
            this.§_-Zb§(_loc3_,param2);
            this.§_-VR§ = this.§_-Z6§.x;
            this.§ do§ = this.§_-Z6§.y;
            §_-d8§ = this.§_-Z6§.scale;
         }
      }
      
      public function §_-bZ§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-FX§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §_-ZE§)
         {
            this.§_-gu§ = true;
         }
         if(this.mCurrentAction == §_-nF§)
         {
            if(!this.§_-GF§.activeObject)
            {
               this.§_-t§(§_-oW§);
               this.§_-GW§ = §_-RK§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-GF§.activeObject).§implements§().GetPosition().x + (!!_loc5_.§_-Ys§ ? _loc5_.§_-Ys§ * §_-c3§.§_-GA§ : 0);
               _loc7_ = _loc5_.§implements§().GetPosition().y + (!!_loc5_.§_-v6§ ? _loc5_.§_-v6§ * §_-c3§.§_-GA§ : 0);
               if((_loc8_ = _loc5_.§implements§().GetLinearVelocity().x) > 0 && this.§_-FT§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-FT§ * §_-ZE§;
               }
               if(param1 >= §_-ZE§)
               {
                  param1 = §_-ZE§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §_-ZE§;
               this.§_-Zb§(_loc9_,_loc4_);
               _loc10_ = this.§_-Z6§.x - §_-20§ * 0.5 / this.§_-Z6§.scale;
               _loc11_ = this.§_-Z6§.y - §_-Sc§ * 0.5 / this.§_-Z6§.scale;
               _loc12_ = this.§_-Z6§.x + §_-20§ * 0.5 / this.§_-Z6§.scale;
               _loc13_ = this.§_-Z6§.y + §_-Sc§ * 0.5 / this.§_-Z6§.scale;
               _loc14_ = 150 * §_-c3§.§_-GA§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§_-VV§,_loc15_);
               _loc17_ = Math.min(this.§_-bj§,_loc17_);
               _loc19_ = Math.abs(§_-20§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§_-Sc§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§_-Z6§.scale)
               {
                  _loc21_ = this.§_-Z6§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §_-20§ * 0.5 / _loc21_ > this.§_-bj§)
               {
                  _loc15_ = (_loc17_ = this.§_-bj§) - §_-20§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§_-VV§)
                  {
                     _loc15_ = this.§_-VV§;
                  }
               }
               if(_loc22_ - §_-20§ * 0.5 / _loc21_ < this.§_-VV§)
               {
                  _loc17_ = (_loc15_ = this.§_-VV§) + §_-20§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§_-bj§)
                  {
                     _loc17_ = this.§_-bj§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§_-20§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §_-20§ * 0.5 / _loc21_ < this.§_-uT§)
               {
                  _loc23_ = this.§_-uT§ + §_-20§ * 0.5 / _loc21_;
               }
               this.§_-VR§ -= (this.§_-VR§ - _loc22_) * _loc4_;
               this.§_-x§ -= (this.§_-x§ - _loc21_) * _loc4_;
               §_-d8§ = this.§_-x§;
               this.§ do§ -= (this.§ do§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§_-bj§ || _loc6_ <= this.§_-VV§)
               {
                  this.§_-Z6§.scale = §_-d8§;
                  this.§_-Z6§.x = this.§_-VR§;
                  this.§_-Z6§.y = this.§ do§;
               }
            }
         }
         else
         {
            this.§_-JX§(param1,_loc4_);
         }
      }
      
      public function §_-ye§(param1:Number, param2:Number) : void
      {
         this.§_-V3§ = param1;
         this.§_-o-§ = param2;
      }
      
      private function §_-sX§(param1:§_-v0§, param2:§_-Fi§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §_-C6§ + (param2.scale - §_-C6§) * this.§_-hW§ * §_-yJ§.§_-U6§();
         if(§_-20§ / param1.scale > this.§_-bj§ - this.§_-VV§)
         {
            _loc3_ = §_-20§ / (this.§_-bj§ - this.§_-VV§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §_-Rn§(param1:§_-v0§, param2:§_-Fi§) : Boolean
      {
         var _loc3_:Boolean = this.§_-sX§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §_-Sc§ * 0.5 / param1.scale;
         var _loc5_:Number = §_-Sc§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §_-20§ * 0.5 / param1.scale) < this.§_-VV§ && param1.§_-8C§)
         {
            param1.x += this.§_-VV§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §_-20§ * 0.5 / param1.scale) > this.§_-bj§ && !param1.§_-8C§)
         {
            param1.x += this.§_-bj§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §_-fK§(param1:§_-v0§, param2:§_-Fi§) : Number
      {
         return (param1.scale - §_-C6§) / (§_-yJ§.§_-U6§() * (param2.scale - §_-C6§));
      }
      
      protected function §_-tK§() : void
      {
         this.§_-Rn§(this.§_-s0§,this.§_-hP§);
         var _loc1_:Number = this.§_-fK§(this.§_-s0§,this.§_-hP§);
         this.§_-Rn§(this.§_-8r§,this.§_-xL§);
         var _loc2_:Number = this.§_-fK§(this.§_-8r§,this.§_-xL§);
         this.§_-hW§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §_-wQ§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§_-GF§.sprite)
         {
            _loc1_ = §_-si§.§_-mi§() / §_-si§.§_-gP§ - §_-si§.§_-0R§ >> 1;
            §_-gB§ = this.§_-GF§.sprite.x = §_-c3§.§_-6Y§ * ((1 - §_-yJ§.§_-rO§) / 2);
            §_-Fo§ = this.§_-GF§.sprite.y = _loc1_ + §_-c3§.§_-j0§ * (1 - §_-yJ§.§_-rO§) * §_-bo§.§_-IW§;
         }
      }
      
      public function §_-k8§() : void
      {
         if(this.§_-GF§.sprite)
         {
            this.§_-GF§.sprite.scaleX = §_-rO§;
            this.§_-GF§.sprite.scaleY = §_-rO§;
         }
      }
      
      public function §_-Ja§() : void
      {
         var _loc1_:Number = this.§_-VR§ / §_-c3§.§_-GA§ + this.§_-V3§;
         var _loc2_:Number = this.§ do§ / §_-c3§.§_-GA§ + this.§_-o-§;
         this.§_-wC§ = _loc1_ - §_-c3§.§_-6Y§ / 2 * §_-si§.§_-gP§ / §_-si§.final;
         this.§_-CV§ = _loc2_ - §_-c3§.§_-j0§ / 2 + §_-bo§.§ null§;
         if(this.§_-GF§.background)
         {
            this.§_-GF§.background.§_-n0§(this.§_-wC§,this.§_-CV§);
         }
         if(this.§_-GF§.objects)
         {
            this.§_-GF§.objects.§_-n0§(this.§_-wC§,this.§_-CV§);
         }
         if(this.§_-GF§.mLevelEngine)
         {
            this.§_-GF§.mLevelEngine.§_-n0§(this.§_-wC§,this.§_-CV§);
         }
         if(this.§_-GF§.slingshot)
         {
            this.§_-GF§.slingshot.§_-n0§(this.§_-wC§,this.§_-CV§);
         }
         if(this.§_-GF§.particles)
         {
            this.§_-GF§.particles.§_-n0§(this.§_-wC§,this.§_-CV§);
         }
      }
      
      protected function §_-5U§() : void
      {
         this.§_-t§(§_-iB§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-GW§ = -1;
         this.§_-5U§();
         this.§_-sM§ = this.§_-bT§ = this.§_-Bb§ = param1;
         this.§_-nf§ = this.§_-nB§ = this.§_-dm§ = param2;
         this.§_-k1§ = 0;
         this.§_-Z6§.x = this.§_-VR§;
         this.§_-Z6§.y = this.§ do§;
         this.§_-Z6§.scale = §_-d8§;
         this.§_-x§ = §_-d8§;
         if(Math.abs(this.§_-8r§.x - this.§_-s0§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-VR§ - this.§_-s0§.x) / (this.§_-8r§.x - this.§_-s0§.x) * §_-ZE§;
         }
         this.mDragging = true;
      }
      
      public function §_-1R§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-k1§ += param1;
         var _loc3_:Number = this.§_-sM§ - this.§_-bT§;
         if(this.§_-FT§ > 0)
         {
            _loc2_ -= _loc3_ * §_-c3§.§_-GA§ / §_-rO§ / this.§_-FT§ * §_-ZE§;
            this.§_-gu§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-gu§ = true;
            }
            if(_loc2_ > §_-ZE§)
            {
               _loc2_ += (§_-ZE§ - _loc2_) * 0.3;
               this.§_-gu§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-bT§ = this.§_-sM§;
      }
      
      protected function §_-wN§() : Boolean
      {
         return this.mCurrentAction == §_-iB§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§_-sM§ = param1;
            this.§_-nf§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-iB§)
         {
            this.§_-t§(§_-7L§);
            if(param1 > 0)
            {
               this.§_-sM§ = param1;
            }
            _loc3_ = Math.abs(this.§_-sM§ - this.§_-Bb§);
            if(this.§_-k1§ < §_-Jn§ && _loc3_ >= §_-GV§ && _loc3_ >= §_-hq§ * this.§_-k1§ / 1000)
            {
               if(this.§_-sM§ < this.§_-Bb§)
               {
                  this.§_-t§(§_-oW§);
               }
               else
               {
                  this.§_-t§(§_-W1§);
               }
               this.§_-zV§ = _loc3_ / this.§_-k1§ * 10;
               this.§_-gu§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-gu§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-ZE§)
               {
                  this.§_-gu§ = true;
               }
            }
            else if(this.§_-k1§ < §_-2A§)
            {
               this.§_-Zq§();
               this.§_-zV§ = §_-ZE§ / (§_-ZE§ / 500);
               this.§_-gu§ = true;
            }
            else
            {
               this.§_-1R§(0);
               this.§_-zR§(0);
               this.§_-zV§ = §_-ZE§ / (§_-ZE§ / 500);
               this.§_-gu§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-Zq§() : void
      {
         if(this.mCurrentAction == §_-oW§)
         {
            this.§_-t§(§_-W1§);
         }
         else if(this.mCurrentAction == §_-W1§)
         {
            this.§_-t§(§_-oW§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-ZE§ / 2)
         {
            this.§_-t§(§_-W1§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-ZE§ / 2)
         {
            this.§_-t§(§_-oW§);
         }
      }
      
      public function §_-zR§(param1:int) : void
      {
         this.§_-GW§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-ZE§ / 2)
         {
            this.§_-t§(§_-W1§);
         }
         else
         {
            this.§_-t§(§_-oW§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-t§(§_-W1§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-t§(§_-oW§);
      }
      
      public function §_-t§(param1:int) : void
      {
         this.§_-Z6§.x = this.§_-VR§;
         this.§_-Z6§.y = this.§ do§;
         this.§_-Z6§.scale = §_-d8§;
         this.§_-x§ = §_-d8§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-ZE§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-oW§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-69§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §_-W1§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-J2§(param1:§_-vz§) : void
      {
         this.§_-9a§ = param1;
         if(this.§_-9a§ != null)
         {
            this.§_-34§ = new §_-vz§();
            this.§_-34§.x = this.§_-VR§;
            this.§_-34§.y = this.§ do§;
            this.§_-34§.scale = §_-d8§;
         }
         else
         {
            this.§_-VR§ = this.§_-34§.x;
            this.§ do§ = this.§_-34§.y;
            §_-d8§ = this.§_-34§.scale;
            this.§_-34§ = null;
         }
      }
      
      protected function §_-Es§() : void
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
         var _loc3_:Number = this.§_-hW§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(§_-DY§,Math.min(§_-bN§,_loc3_));
         if(_loc3_ != this.§_-hW§)
         {
            this.§_-hW§ = _loc3_;
            this.§_-Es§();
         }
      }
      
      public function §_-bh§() : Number
      {
         return (this.manualScale - §_-DY§) / (§_-bN§ - §_-DY§);
      }
      
      public function §_-Dz§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (§_-bN§ - §_-DY§) + §_-DY§;
      }
      
      public function §_-zH§() : void
      {
         this.§_-hW§ = Math.max(this.§_-hW§ - 0.5,0.5);
      }
      
      public function §_-ks§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§_-hW§;
         _loc1_ += " mXcenterB2: " + this.§_-VR§;
         _loc1_ += " mYcenterB2: " + this.§ do§;
         _loc1_ += " mXcenterB2target: " + this.§_-hW§;
         _loc1_ += "\n mYcenterB2target: " + this.§_-hW§;
         _loc1_ += " mXcenterB2previous: " + this.§_-hW§;
         _loc1_ += " mYcenterB2previous: " + this.§_-hW§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§_-hW§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§_-hW§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§_-hW§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§_-hW§;
         _loc1_ += " mTargetScale: " + this.§_-hW§;
         _loc1_ += " mTargetScalePrevious: " + this.§_-hW§;
         _loc1_ += " mCastleCameraX: " + this.§_-hW§;
         _loc1_ += "\n mCastleCameraY: " + this.§_-hW§;
         _loc1_ += " mCastleCameraScale: " + this.§_-hW§;
         _loc1_ += " mBirdCameraX: " + this.§_-hW§;
         _loc1_ += " mBirdCameraY: " + this.§_-hW§;
         _loc1_ += " mBirdCameraScale: " + this.§_-hW§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§_-hW§;
         _loc1_ += " mScreenTopScroll: " + this.§_-hW§;
         _loc1_ += " mDragging: " + this.§_-hW§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§_-hW§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§_-hW§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§_-hW§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§_-hW§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§_-hW§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§_-hW§;
         _loc1_ += " mDraggingTimer: " + this.§_-hW§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§_-hW§;
         _loc1_ += " mCameraBorderRight: " + this.§_-hW§;
         _loc1_ += " mCameraBorderSky: " + this.§_-hW§;
         _loc1_ += " mCameraBorderGround: " + this.§_-hW§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§_-hW§ + "\n ");
      }
   }
}
