package override
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-Fx§;
   import §_-5b§.§_-Vj§;
   import §_-5b§.§_-z2§;
   import §_-Fk§.§_-Cb§;
   import §_-TX§.§_-0X§;
   import §_-r6§.§_-Oy§;
   
   public class §_-Eu§
   {
      
      public static const get:Number = 1.25;
      
      public static const §_-00-§:Number = 0.15;
      
      public static const §_-Z0§:Number = §_-0X§.§_-I0§ * §_-FL§.§_-NU§;
      
      public static const §_-TD§:Number = §_-0X§.§_-ZV§ * §_-FL§.§_-NU§;
      
      public static const §_-xT§:Number = 1;
      
      public static const §_-pv§:Number = 0.2;
      
      public static const §_-Dl§:Number = 0.1;
      
      public static const §_-8-§:int = 1500;
      
      public static const §_-6O§:int = 10;
      
      public static const §_-lB§:int = 15;
      
      public static const §_-Rb§:int = 300;
      
      public static const §_-5m§:int = 1000;
      
      public static const §_-hY§:int = 10000;
      
      public static const §_-US§:int = §_-hY§ / 50;
      
      public static const §_-0-G§:int = 0;
      
      public static const §_-ny§:int = 1;
      
      public static const §_-gB§:int = 2;
      
      public static const §_-dc§:int = 3;
      
      public static const §_-yD§:int = 4;
      
      public static const §_-je§:int = 5;
      
      public static const §_-qN§:String = "CASTLE";
      
      public static const §_-iS§:String = "SLINGSHOT";
      
      protected static var §_-yO§:Number;
      
      public static var §_-hh§:Number;
      
      public static var §_-uV§:Number;
      
      public static const §_-NC§:Number = 2000;
       
      
      protected var §_-iB§:Number;
      
      protected var §_-4Q§:Number;
      
      protected var §_-sG§:Number;
      
      public var §_-mC§:§_-FL§;
      
      public var §_-iK§:Number;
      
      public var §_-CX§:Number;
      
      private var §_-ev§:§_-00d§;
      
      private var §_-ZC§:§_-00d§;
      
      public var §_-a-§:Number;
      
      public var §_-Wh§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-qp§:Number;
      
      public var §_-uY§:Number;
      
      public var §_-IL§:Number;
      
      public var §_-wq§:Number;
      
      private var §_-ba§:Number;
      
      private var §_-D1§:§_-HS§;
      
      private var §_-mX§:§_-HS§;
      
      protected var §_-or§:Number = 0;
      
      protected var §_-BH§:Number = 0;
      
      protected var §_-rW§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-TS§:Number = 0;
      
      public var §_-e1§:Boolean = true;
      
      public var §_-jV§:Number = 0;
      
      public var §_-dA§:Number = 0;
      
      public var §_-f7§:Number = 0;
      
      public var §_-I§:Number = 0;
      
      public var §_-ts§:Number = 0;
      
      public var §_-00I§:Number = 0;
      
      public var §_-2I§:Number = 0;
      
      public var §_-gI§:Number = 0;
      
      public var §_-XV§:Number = 0;
      
      private var §_-gH§:§_-HS§;
      
      public var §_-QJ§:Number = 0;
      
      private var §_-pA§:Number = 0;
      
      private var §_-Mu§:Number = 0;
      
      private var §_-Ul§:§_-z2§ = null;
      
      private var §_-FU§:§_-z2§ = null;
      
      public function §_-Eu§(param1:§_-FL§, param2:§_-Vj§)
      {
         this.§_-gH§ = new §_-HS§(0,0,1,false);
         super();
         this.§_-4Q§ = 0;
         this.§_-sG§ = 0;
         this.§_-mC§ = param1;
         §_-Eu§.§_-yO§ = 1;
         this.§_-iB§ = 1;
         this.§_-9g§(param2.§_-K3§);
         if(this.§_-ev§ && this.§_-ZC§)
         {
            this.§_-ID§();
            this.§_-or§ = this.§_-ev§.x - this.§_-ZC§.x;
            this.§_-BH§ = this.§_-ev§.y - this.§_-ZC§.y;
            this.§_-rW§ = this.§_-ev§.scale - this.§_-ZC§.scale;
            this.§_-4Q§ = this.§_-ev§.x;
            this.§_-sG§ = this.§_-ev§.y;
            §_-yO§ = this.§_-ev§.scale;
         }
         this.mCurrentCameraSliderLocation = §_-hY§;
         this.§_-e1§ = true;
         this.§_-TS§ = §_-hY§ / 500;
      }
      
      private static function §_-h-§() : Number
      {
         var _loc1_:Number = §_-0X§.§_-Al§ / §_-0X§.§_-6-§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §_-Ae§() : Number
      {
         return §_-yO§ * §_-h-§();
      }
      
      public function get manualScale() : Number
      {
         return this.§_-iB§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§_-iB§ = param1;
      }
      
      public function get §_-bA§() : Number
      {
         return this.§_-ba§;
      }
      
      public function §_-004§() : Number
      {
         return §_-Z0§ / (this.§_-uY§ - this.§_-qp§);
      }
      
      public function §_-bZ§(param1:Number) : void
      {
         this.§_-iB§ = param1;
         this.§_-e0§();
         this.§_-b3§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         this.goToCastleView();
         this.§_-jV§ = 2000;
         this.§_-UG§();
         this.§_-af§();
         this.§_-zq§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-4Q§ = this.§_-ZC§.x;
         this.§_-sG§ = this.§_-ZC§.y;
         this.§_-e1§ = false;
         this.§_-TS§ = §_-hY§ / 160000 * param1;
         this.§_-LR§(§_-je§);
      }
      
      public function §_-ID§() : void
      {
         this.§_-qp§ = this.§_-ZC§.x - §_-Z0§ / this.§_-ZC§.scale / 2;
         this.§_-uY§ = this.§_-ev§.x + §_-Z0§ / this.§_-ev§.scale / 2;
         this.§_-IL§ = this.§_-mC§.§_-v5§.§_-gM§ - 20 * §_-FL§.§_-Tz§ * §_-FL§.§_-NU§;
         this.§_-wq§ = this.§_-mC§.§_-v5§.§_-gM§ + 4;
         var _loc1_:Number = §_-Z0§ / (this.§_-uY§ - this.§_-qp§);
         this.§_-ba§ = this.§_-wq§ - §_-TD§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§_-mC§ = null;
      }
      
      public function §_-9g§(param1:Vector.<§_-z2§>) : void
      {
         var _loc2_:§_-z2§ = null;
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
               this.§_-3M§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §_-TD§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §_-Z0§ / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §_-iS§)
            {
               this.§_-ZC§ = new §_-00d§(_loc8_,_loc9_,_loc12_,true);
               this.§_-mX§ = new §_-HS§(_loc8_,_loc9_,_loc12_,true);
            }
            else if(_loc3_ == §_-qN§)
            {
               this.§_-ev§ = new §_-00d§(_loc8_,_loc9_,_loc12_,false);
               this.§_-D1§ = new §_-HS§(_loc8_,_loc9_,_loc12_,false);
            }
            else
            {
               §_-Oy§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      public function §_-NY§(param1:§_-Vj§) : void
      {
         var _loc2_:§_-z2§ = new §_-z2§();
         _loc2_.id = §_-iS§;
         _loc2_.x = this.§_-ZC§.x;
         _loc2_.y = this.§_-ZC§.y;
         var _loc3_:Number = §_-Z0§ / this.§_-ZC§.scale / 2;
         var _loc4_:Number = §_-TD§ / this.§_-ZC§.scale / 2;
         _loc2_.left = this.§_-ZC§.x - _loc3_;
         _loc2_.right = this.§_-ZC§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-z2§;
         (_loc5_ = new §_-z2§()).id = §_-qN§;
         _loc5_.x = this.§_-ev§.x;
         _loc5_.y = this.§_-ev§.y;
         var _loc6_:Number = §_-Z0§ / this.§_-ev§.scale / 2;
         var _loc7_:Number = §_-TD§ / this.§_-ev§.scale / 2;
         _loc5_.left = this.§_-ev§.x - _loc6_;
         _loc5_.right = this.§_-ev§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§_-K3§.length > 0)
         {
            param1.§_-K3§.pop();
         }
         param1.§_-K3§.push(_loc2_);
         param1.§_-K3§.push(_loc5_);
      }
      
      public function §_-3M§(param1:§_-z2§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §_-0X§.§_-I0§ * 0.5 / _loc2_ * §_-FL§.§_-NU§;
         var _loc4_:Number = param1.y - §_-0X§.§_-ZV§ * 0.5 / _loc2_ * §_-FL§.§_-NU§;
         var _loc5_:Number = _loc3_ + §_-0X§.§_-I0§ / _loc2_ * §_-FL§.§_-NU§;
         var _loc6_:Number = _loc4_ + §_-0X§.§_-ZV§ / _loc2_ * §_-FL§.§_-NU§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §_-YV§(param1:§_-00d§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§_-TS§;
         if(_loc3_ >= §_-hY§)
         {
            _loc3_ = §_-hY§;
            this.§_-LR§(§_-0-G§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§_-LR§(§_-0-G§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §_-gy§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§_-TS§;
         var _loc4_:Number = -§_-hY§ * 0.7;
         if(_loc2_ >= §_-hY§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §_-hY§;
            }
            this.§_-TS§ = -this.§_-TS§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §_-PN§(param1:Number) : void
      {
         if(this.mCurrentAction == §_-je§)
         {
            this.§_-gy§(param1);
         }
         else if(this.mCurrentAction == §_-ny§)
         {
            this.§_-YV§(this.§_-ev§,param1);
         }
         else if(this.mCurrentAction == §_-gB§)
         {
            this.§_-YV§(this.§_-ZC§,-param1);
         }
         else if(this.mCurrentAction == §_-dc§)
         {
            this.§_-e1§ = true;
         }
         else if(this.mCurrentAction == §_-yD§)
         {
            this.§_-00m§(param1);
         }
      }
      
      public function §_-po§(param1:Number) : void
      {
         if(this.§_-Ul§)
         {
            this.§_-4Q§ = this.§_-Ul§.x;
            this.§_-sG§ = this.§_-Ul§.y;
            §_-yO§ = §_-Z0§ / (this.§_-Ul§.right - this.§_-Ul§.left);
         }
         else
         {
            this.§_-e0§();
            this.§_-PN§(param1);
            this.§_-r8§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-UG§();
         this.§_-af§();
         this.§_-zq§();
      }
      
      private function §_-OR§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-mX§.scale + (this.§_-D1§.scale - this.§_-mX§.scale) * param1;
         var _loc4_:Number = this.§_-mX§.x + (this.§_-D1§.x - this.§_-mX§.x) * param1;
         var _loc5_:Number = this.§_-mX§.y + (this.§_-D1§.y - this.§_-mX§.y) * param1;
         this.§_-gH§.x -= (this.§_-gH§.x - _loc4_) * param2;
         this.§_-gH§.y -= (this.§_-gH§.y - _loc5_) * param2;
         this.§_-gH§.scale -= (this.§_-gH§.scale - _loc3_) * param2;
      }
      
      protected function §_-b3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-or§ != 0)
         {
            if(!this.§_-e1§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §_-hY§;
            this.§_-OR§(_loc3_,param2);
            this.§_-4Q§ = this.§_-gH§.x;
            this.§_-sG§ = this.§_-gH§.y;
            §_-yO§ = this.§_-gH§.scale;
         }
      }
      
      public function §_-r8§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-Cb§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §_-hY§)
         {
            this.§_-e1§ = true;
         }
         if(this.mCurrentAction == §_-dc§)
         {
            if(!this.§_-mC§.activeObject)
            {
               this.§_-LR§(§_-ny§);
               this.§_-XV§ = §_-5m§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-mC§.activeObject).§_-Zv§().GetPosition().x + (!!_loc5_.§_-IG§ ? _loc5_.§_-IG§ * §_-FL§.§_-NU§ : 0);
               _loc7_ = _loc5_.§_-Zv§().GetPosition().y + (!!_loc5_.§_-Ok§ ? _loc5_.§_-Ok§ * §_-FL§.§_-NU§ : 0);
               if((_loc8_ = _loc5_.§_-Zv§().GetLinearVelocity().x) > 0 && this.§_-or§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-or§ * §_-hY§;
               }
               if(param1 >= §_-hY§)
               {
                  param1 = §_-hY§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §_-hY§;
               this.§_-OR§(_loc9_,_loc4_);
               _loc10_ = this.§_-gH§.x - §_-Z0§ * 0.5 / this.§_-gH§.scale;
               _loc11_ = this.§_-gH§.y - §_-TD§ * 0.5 / this.§_-gH§.scale;
               _loc12_ = this.§_-gH§.x + §_-Z0§ * 0.5 / this.§_-gH§.scale;
               _loc13_ = this.§_-gH§.y + §_-TD§ * 0.5 / this.§_-gH§.scale;
               _loc14_ = 150 * §_-FL§.§_-NU§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§_-qp§,_loc15_);
               _loc17_ = Math.min(this.§_-uY§,_loc17_);
               _loc19_ = Math.abs(§_-Z0§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§_-TD§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§_-gH§.scale)
               {
                  _loc21_ = this.§_-gH§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §_-Z0§ * 0.5 / _loc21_ > this.§_-uY§)
               {
                  _loc15_ = (_loc17_ = this.§_-uY§) - §_-Z0§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§_-qp§)
                  {
                     _loc15_ = this.§_-qp§;
                  }
               }
               if(_loc22_ - §_-Z0§ * 0.5 / _loc21_ < this.§_-qp§)
               {
                  _loc17_ = (_loc15_ = this.§_-qp§) + §_-Z0§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§_-uY§)
                  {
                     _loc17_ = this.§_-uY§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§_-Z0§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §_-Z0§ * 0.5 / _loc21_ < this.§_-IL§)
               {
                  _loc23_ = this.§_-IL§ + §_-Z0§ * 0.5 / _loc21_;
               }
               this.§_-4Q§ -= (this.§_-4Q§ - _loc22_) * _loc4_;
               this.§_-QJ§ -= (this.§_-QJ§ - _loc21_) * _loc4_;
               §_-yO§ = this.§_-QJ§;
               this.§_-sG§ -= (this.§_-sG§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§_-uY§ || _loc6_ <= this.§_-qp§)
               {
                  this.§_-gH§.scale = §_-yO§;
                  this.§_-gH§.x = this.§_-4Q§;
                  this.§_-gH§.y = this.§_-sG§;
               }
            }
         }
         else
         {
            this.§_-b3§(param1,_loc4_);
         }
      }
      
      public function §_-EC§(param1:Number, param2:Number) : void
      {
         this.§_-pA§ = param1;
         this.§_-Mu§ = param2;
      }
      
      private function §_-yV§(param1:§_-HS§, param2:§_-00d§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §_-00-§ + (param2.scale - §_-00-§) * this.§_-iB§ * §_-Eu§.§_-h-§();
         if(§_-Z0§ / param1.scale > this.§_-uY§ - this.§_-qp§)
         {
            _loc3_ = §_-Z0§ / (this.§_-uY§ - this.§_-qp§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §_-8z§(param1:§_-HS§, param2:§_-00d§) : Boolean
      {
         var _loc3_:Boolean = this.§_-yV§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §_-TD§ * 0.5 / param1.scale;
         var _loc5_:Number = §_-TD§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §_-Z0§ * 0.5 / param1.scale) < this.§_-qp§ && param1.§_-02§)
         {
            param1.x += this.§_-qp§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §_-Z0§ * 0.5 / param1.scale) > this.§_-uY§ && !param1.§_-02§)
         {
            param1.x += this.§_-uY§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §_-Wz§(param1:§_-HS§, param2:§_-00d§) : Number
      {
         return (param1.scale - §_-00-§) / (§_-Eu§.§_-h-§() * (param2.scale - §_-00-§));
      }
      
      protected function §_-e0§() : void
      {
         this.§_-8z§(this.§_-mX§,this.§_-ZC§);
         var _loc1_:Number = this.§_-Wz§(this.§_-mX§,this.§_-ZC§);
         this.§_-8z§(this.§_-D1§,this.§_-ev§);
         var _loc2_:Number = this.§_-Wz§(this.§_-D1§,this.§_-ev§);
         this.§_-iB§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §_-UG§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§_-mC§.sprite)
         {
            _loc1_ = §_-0X§.§_-wg§() / §_-0X§.§_-Al§ - §_-0X§.§_-ZV§ >> 1;
            §_-hh§ = this.§_-mC§.sprite.x = §_-FL§.§_-DA§ * ((1 - §_-Eu§.§_-Ae§) / 2);
            §_-uV§ = this.§_-mC§.sprite.y = _loc1_ + §_-FL§.§_-Tz§ * (1 - §_-Eu§.§_-Ae§) * §_-Fx§.§_-k4§;
         }
      }
      
      public function §_-zq§() : void
      {
         if(this.§_-mC§.sprite)
         {
            this.§_-mC§.sprite.scaleX = §_-Ae§;
            this.§_-mC§.sprite.scaleY = §_-Ae§;
         }
      }
      
      public function §_-af§() : void
      {
         var _loc1_:Number = this.§_-4Q§ / §_-FL§.§_-NU§ + this.§_-pA§;
         var _loc2_:Number = this.§_-sG§ / §_-FL§.§_-NU§ + this.§_-Mu§;
         this.§_-a-§ = _loc1_ - §_-FL§.§_-DA§ / 2 * §_-0X§.§_-Al§ / §_-0X§.§_-v-§;
         this.§_-Wh§ = _loc2_ - §_-FL§.§_-Tz§ / 2 + §_-Fx§.§_-4Z§;
         if(this.§_-mC§.background)
         {
            this.§_-mC§.background.§_-FQ§(this.§_-a-§,this.§_-Wh§);
         }
         if(this.§_-mC§.objects)
         {
            this.§_-mC§.objects.§_-FQ§(this.§_-a-§,this.§_-Wh§);
         }
         if(this.§_-mC§.mLevelEngine)
         {
            this.§_-mC§.mLevelEngine.§_-FQ§(this.§_-a-§,this.§_-Wh§);
         }
         if(this.§_-mC§.slingshot)
         {
            this.§_-mC§.slingshot.§_-FQ§(this.§_-a-§,this.§_-Wh§);
         }
         if(this.§_-mC§.particles)
         {
            this.§_-mC§.particles.§_-FQ§(this.§_-a-§,this.§_-Wh§);
         }
      }
      
      protected function §_-wy§() : void
      {
         this.§_-LR§(§_-yD§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-XV§ = -1;
         this.§_-wy§();
         this.§_-ts§ = this.§_-2I§ = this.§_-f7§ = param1;
         this.§_-00I§ = this.§_-gI§ = this.§_-I§ = param2;
         this.§_-dA§ = 0;
         this.§_-gH§.x = this.§_-4Q§;
         this.§_-gH§.y = this.§_-sG§;
         this.§_-gH§.scale = §_-yO§;
         this.§_-QJ§ = §_-yO§;
         if(Math.abs(this.§_-D1§.x - this.§_-mX§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-4Q§ - this.§_-mX§.x) / (this.§_-D1§.x - this.§_-mX§.x) * §_-hY§;
         }
         this.mDragging = true;
      }
      
      public function §_-00m§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-dA§ += param1;
         var _loc3_:Number = this.§_-ts§ - this.§_-2I§;
         if(this.§_-or§ > 0)
         {
            _loc2_ -= _loc3_ * §_-FL§.§_-NU§ / §_-Ae§ / this.§_-or§ * §_-hY§;
            this.§_-e1§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-e1§ = true;
            }
            if(_loc2_ > §_-hY§)
            {
               _loc2_ += (§_-hY§ - _loc2_) * 0.3;
               this.§_-e1§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-2I§ = this.§_-ts§;
      }
      
      protected function §_-3s§() : Boolean
      {
         return this.mCurrentAction == §_-yD§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§_-ts§ = param1;
            this.§_-00I§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-yD§)
         {
            this.§_-LR§(§_-0-G§);
            if(param1 > 0)
            {
               this.§_-ts§ = param1;
            }
            _loc3_ = Math.abs(this.§_-ts§ - this.§_-f7§);
            if(this.§_-dA§ < §_-8-§ && _loc3_ >= §_-6O§ && _loc3_ >= §_-lB§ * this.§_-dA§ / 1000)
            {
               if(this.§_-ts§ < this.§_-f7§)
               {
                  this.§_-LR§(§_-ny§);
               }
               else
               {
                  this.§_-LR§(§_-gB§);
               }
               this.§_-TS§ = _loc3_ / this.§_-dA§ * 10;
               this.§_-e1§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-e1§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-hY§)
               {
                  this.§_-e1§ = true;
               }
            }
            else if(this.§_-dA§ < §_-Rb§)
            {
               this.§_-KU§();
               this.§_-TS§ = §_-hY§ / (§_-hY§ / 500);
               this.§_-e1§ = true;
            }
            else
            {
               this.§_-00m§(0);
               this.§_-D8§(0);
               this.§_-TS§ = §_-hY§ / (§_-hY§ / 500);
               this.§_-e1§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-KU§() : void
      {
         if(this.mCurrentAction == §_-ny§)
         {
            this.§_-LR§(§_-gB§);
         }
         else if(this.mCurrentAction == §_-gB§)
         {
            this.§_-LR§(§_-ny§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-hY§ / 2)
         {
            this.§_-LR§(§_-gB§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-hY§ / 2)
         {
            this.§_-LR§(§_-ny§);
         }
      }
      
      public function §_-D8§(param1:int) : void
      {
         this.§_-XV§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-hY§ / 2)
         {
            this.§_-LR§(§_-gB§);
         }
         else
         {
            this.§_-LR§(§_-ny§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-LR§(§_-gB§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-LR§(§_-ny§);
      }
      
      public function §_-LR§(param1:int) : void
      {
         this.§_-gH§.x = this.§_-4Q§;
         this.§_-gH§.y = this.§_-sG§;
         this.§_-gH§.scale = §_-yO§;
         this.§_-QJ§ = §_-yO§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-hY§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-ny§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-18§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §_-gB§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-00l§(param1:§_-z2§) : void
      {
         this.§_-Ul§ = param1;
         if(this.§_-Ul§ != null)
         {
            this.§_-FU§ = new §_-z2§();
            this.§_-FU§.x = this.§_-4Q§;
            this.§_-FU§.y = this.§_-sG§;
            this.§_-FU§.scale = §_-yO§;
         }
         else
         {
            this.§_-4Q§ = this.§_-FU§.x;
            this.§_-sG§ = this.§_-FU§.y;
            §_-yO§ = this.§_-FU§.scale;
            this.§_-FU§ = null;
         }
      }
      
      protected function §_-Yg§() : void
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
         var _loc3_:Number = this.§_-iB§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(§_-pv§,Math.min(§_-xT§,_loc3_));
         if(_loc3_ != this.§_-iB§)
         {
            this.§_-iB§ = _loc3_;
            this.§_-Yg§();
         }
      }
      
      public function §_-rZ§() : Number
      {
         return (this.manualScale - §_-pv§) / (§_-xT§ - §_-pv§);
      }
      
      public function §_-Re§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (§_-xT§ - §_-pv§) + §_-pv§;
      }
      
      public function §_-Cz§() : void
      {
         this.§_-iB§ = Math.max(this.§_-iB§ - 0.5,0.5);
      }
      
      public function §_-xz§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§_-iB§;
         _loc1_ += " mXcenterB2: " + this.§_-4Q§;
         _loc1_ += " mYcenterB2: " + this.§_-sG§;
         _loc1_ += " mXcenterB2target: " + this.§_-iB§;
         _loc1_ += "\n mYcenterB2target: " + this.§_-iB§;
         _loc1_ += " mXcenterB2previous: " + this.§_-iB§;
         _loc1_ += " mYcenterB2previous: " + this.§_-iB§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§_-iB§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§_-iB§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§_-iB§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§_-iB§;
         _loc1_ += " mTargetScale: " + this.§_-iB§;
         _loc1_ += " mTargetScalePrevious: " + this.§_-iB§;
         _loc1_ += " mCastleCameraX: " + this.§_-iB§;
         _loc1_ += "\n mCastleCameraY: " + this.§_-iB§;
         _loc1_ += " mCastleCameraScale: " + this.§_-iB§;
         _loc1_ += " mBirdCameraX: " + this.§_-iB§;
         _loc1_ += " mBirdCameraY: " + this.§_-iB§;
         _loc1_ += " mBirdCameraScale: " + this.§_-iB§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§_-iB§;
         _loc1_ += " mScreenTopScroll: " + this.§_-iB§;
         _loc1_ += " mDragging: " + this.§_-iB§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§_-iB§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§_-iB§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§_-iB§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§_-iB§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§_-iB§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§_-iB§;
         _loc1_ += " mDraggingTimer: " + this.§_-iB§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§_-iB§;
         _loc1_ += " mCameraBorderRight: " + this.§_-iB§;
         _loc1_ += " mCameraBorderSky: " + this.§_-iB§;
         _loc1_ += " mCameraBorderGround: " + this.§_-iB§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§_-iB§ + "\n ");
      }
   }
}
