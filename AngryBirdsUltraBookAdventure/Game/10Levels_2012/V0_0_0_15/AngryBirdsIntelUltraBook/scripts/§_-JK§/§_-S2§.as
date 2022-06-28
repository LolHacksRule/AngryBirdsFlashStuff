package §_-JK§
{
   import §_-0BH§.§_-FK§;
   import §_-Ga§.§_-2w§;
   import §_-Ga§.§_-bm§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-pD§;
   import §_-lt§.§_-eZ§;
   import §_-qO§.§ in§;
   
   public class §_-S2§
   {
      
      public static const §_-6D§:Number = 1.25;
      
      public static const §_-7-§:Number = 0.15;
      
      public static const §_-U9§:Number = § in§.§_-W8§ * §_-00u§.§_-lY§;
      
      public static const §_-u-§:Number = § in§.§_-Kj§ * §_-00u§.§_-lY§;
      
      public static const §_-vy§:Number = 0.1;
      
      public static const §_-e5§:int = 1500;
      
      public static const §_-eL§:int = 10;
      
      public static const §_-e0§:int = 15;
      
      public static const §_-2W§:int = 300;
      
      public static const §_-sU§:int = 1000;
      
      public static const §_-05T§:int = 10000;
      
      public static const §_-Rj§:int = §_-05T§ / 50;
      
      public static const §_-br§:int = 0;
      
      public static const §_-fV§:int = 1;
      
      public static const §_-7X§:int = 2;
      
      public static const §_-0Co§:int = 3;
      
      public static const §_-07O§:int = 4;
      
      public static const §_-fC§:int = 5;
      
      public static const §_-05X§:String = "CASTLE";
      
      public static const §_-Ky§:String = "SLINGSHOT";
      
      protected static var §_-RQ§:Number;
      
      public static var §_-qy§:Number;
      
      public static var §_-w6§:Number;
      
      public static const §_-aD§:Number = 2000;
       
      
      private var §_-04O§:Number = 1.0;
      
      private var §_-3-§:Number = 0.2;
      
      protected var §_-ZJ§:Number;
      
      protected var §_-0-Y§:Number;
      
      protected var §_-cB§:Number;
      
      public var §_-6A§:§_-00u§;
      
      public var §_-02S§:Number;
      
      public var §_-05C§:Number;
      
      private var §_-WX§:§_-HK§;
      
      private var §_-Ds§:§_-HK§;
      
      public var §_-jV§:Number;
      
      public var §_-2m§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-W6§:Number;
      
      public var §_-wQ§:Number;
      
      public var §_-BC§:Number;
      
      public var §_-02A§:Number;
      
      private var §_-uh§:Number;
      
      private var §_-hc§:§_-020§;
      
      private var §_-sV§:§_-020§;
      
      protected var §_-03g§:Number = 0;
      
      protected var §_-CM§:Number = 0;
      
      protected var §_-08Z§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-44§:Number = 0;
      
      public var §_-01u§:Boolean = true;
      
      public var §_-0A7§:Number = 0;
      
      public var §_-SY§:Number = 0;
      
      public var §_-RS§:Number = 0;
      
      public var §_-n4§:Number = 0;
      
      public var §_-04K§:Number = 0;
      
      public var §_-am§:Number = 0;
      
      public var §_-01H§:Number = 0;
      
      public var §_-yz§:Number = 0;
      
      public var §_-06C§:Number = 0;
      
      private var §_-0DW§:§_-020§;
      
      public var §_-1k§:Number = 0;
      
      private var §while§:Number = 0;
      
      private var §_-hG§:Number = 0;
      
      private var §_-Ym§:§_-2w§ = null;
      
      private var §_-0-4§:§_-2w§ = null;
      
      public function §_-S2§(param1:§_-00u§, param2:§_-bm§, param3:Number = 1.0)
      {
         this.§_-0DW§ = new §_-020§(0,0,1,false);
         super();
         this.§_-0-Y§ = 0;
         this.§_-cB§ = 0;
         this.§_-6A§ = param1;
         §_-S2§.§_-RQ§ = 1;
         this.§_-04O§ = Math.max(1,Math.min(2,param3));
         this.§_-ZJ§ = this.§_-04O§;
         this.§_-Bp§(param2);
         if(this.§_-WX§ && this.§_-Ds§)
         {
            this.§_-ID§();
            this.§_-03g§ = this.§_-WX§.x - this.§_-Ds§.x;
            this.§_-CM§ = this.§_-WX§.y - this.§_-Ds§.y;
            this.§_-08Z§ = this.§_-WX§.scale - this.§_-Ds§.scale;
            this.§_-0-Y§ = this.§_-WX§.x;
            this.§_-cB§ = this.§_-WX§.y;
            §_-RQ§ = this.§_-WX§.scale * this.§_-ZJ§;
         }
         this.mCurrentCameraSliderLocation = §_-05T§;
         this.§_-01u§ = true;
         this.§_-44§ = §_-05T§ / 500;
      }
      
      private static function §_-7K§() : Number
      {
         var _loc1_:Number = § in§.§_-57§ / § in§.§_-Sr§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §_-4-§() : Number
      {
         return §_-RQ§ * §_-7K§();
      }
      
      public function get §_-kC§() : Number
      {
         return this.§_-ZJ§;
      }
      
      public function set §_-kC§(param1:Number) : void
      {
         this.§_-ZJ§ = param1;
      }
      
      public function get §_-0AX§() : Number
      {
         return this.§_-uh§;
      }
      
      public function §_-fw§() : Number
      {
         return §_-U9§ / (this.§_-wQ§ - this.§_-W6§);
      }
      
      public function get §_-TL§() : Number
      {
         return this.§_-04O§;
      }
      
      public function get §_-NK§() : Number
      {
         return this.§_-3-§;
      }
      
      public function §_-5H§(param1:Number) : void
      {
         this.§_-ZJ§ = param1;
         this.§_-0CF§();
         this.§_-Sa§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §_-fC§)
         {
            return;
         }
         this.goToCastleView();
         this.§_-0A7§ = 2000;
         this.§_-7H§();
         this.§_-S-§();
         this.§_-bd§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§_-0-Y§ = this.§_-Ds§.x;
         this.§_-cB§ = this.§_-Ds§.y;
         this.§_-01u§ = false;
         this.§_-44§ = §_-05T§ / 160000 * param1;
         this.§_-Hg§(§_-fC§);
      }
      
      public function §_-ID§() : void
      {
         this.§_-W6§ = this.§_-Ds§.x - §_-U9§ / this.§_-Ds§.scale / 2;
         this.§_-wQ§ = this.§_-WX§.x + §_-U9§ / this.§_-WX§.scale / 2;
         this.§_-BC§ = this.§_-6A§.§_-Uv§.§_-GV§ - 20 * §_-00u§.§_-IE§ * §_-00u§.§_-lY§;
         this.§_-02A§ = this.§_-6A§.§_-Uv§.§_-GV§ + 4;
         var _loc1_:Number = §_-U9§ / (this.§_-wQ§ - this.§_-W6§);
         this.§_-uh§ = this.§_-02A§ - §_-u-§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§_-6A§ = null;
      }
      
      public function §_-Bp§(param1:§_-bm§) : void
      {
         var _loc3_:§_-2w§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§_-aj§)
         {
            _loc3_ = param1.§_-jQ§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§_-08G§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §_-u-§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §_-U9§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §_-Ky§)
            {
               this.§_-Ds§ = new §_-HK§(_loc9_,_loc10_,_loc13_,true);
               this.§_-sV§ = new §_-020§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §_-05X§)
            {
               this.§_-WX§ = new §_-HK§(_loc9_,_loc10_,_loc13_,false);
               this.§_-hc§ = new §_-020§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §_-FK§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §_-Mr§(param1:§_-bm§) : void
      {
         var _loc2_:§_-2w§ = new §_-2w§();
         _loc2_.id = §_-Ky§;
         _loc2_.x = this.§_-Ds§.x;
         _loc2_.y = this.§_-Ds§.y;
         var _loc3_:Number = §_-U9§ / this.§_-Ds§.scale / 2;
         var _loc4_:Number = §_-u-§ / this.§_-Ds§.scale / 2;
         _loc2_.left = this.§_-Ds§.x - _loc3_;
         _loc2_.right = this.§_-Ds§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§_-2w§;
         (_loc5_ = new §_-2w§()).id = §_-05X§;
         _loc5_.x = this.§_-WX§.x;
         _loc5_.y = this.§_-WX§.y;
         var _loc6_:Number = §_-U9§ / this.§_-WX§.scale / 2;
         var _loc7_:Number = §_-u-§ / this.§_-WX§.scale / 2;
         _loc5_.left = this.§_-WX§.x - _loc6_;
         _loc5_.right = this.§_-WX§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§_-iT§();
         param1.§_-03T§(_loc2_);
         param1.§_-03T§(_loc5_);
      }
      
      public function §_-08G§(param1:§_-2w§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - § in§.§_-W8§ * 0.5 / _loc2_ * §_-00u§.§_-lY§;
         var _loc4_:Number = param1.y - § in§.§_-Kj§ * 0.5 / _loc2_ * §_-00u§.§_-lY§;
         var _loc5_:Number = _loc3_ + § in§.§_-W8§ / _loc2_ * §_-00u§.§_-lY§;
         var _loc6_:Number = _loc4_ + § in§.§_-Kj§ / _loc2_ * §_-00u§.§_-lY§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §_-vd§(param1:§_-HK§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§_-44§;
         if(_loc3_ >= §_-05T§)
         {
            _loc3_ = §_-05T§;
            this.§_-Hg§(§_-br§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§_-Hg§(§_-br§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §_-024§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§_-44§;
         var _loc4_:Number = -§_-05T§ * 0.7;
         if(_loc2_ >= §_-05T§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §_-05T§;
            }
            this.§_-44§ = -this.§_-44§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §_-d0§(param1:Number) : void
      {
         if(this.mCurrentAction == §_-fC§)
         {
            this.§_-024§(param1);
         }
         else if(this.mCurrentAction == §_-fV§)
         {
            this.§_-vd§(this.§_-WX§,param1);
         }
         else if(this.mCurrentAction == §_-7X§)
         {
            this.§_-vd§(this.§_-Ds§,-param1);
         }
         else if(this.mCurrentAction == §_-0Co§)
         {
            this.§_-01u§ = true;
         }
         else if(this.mCurrentAction == §_-07O§)
         {
            this.§set §(param1);
         }
      }
      
      public function §_-q7§(param1:Number) : void
      {
         if(this.§_-Ym§)
         {
            this.§_-0-Y§ = this.§_-Ym§.x;
            this.§_-cB§ = this.§_-Ym§.y;
            §_-RQ§ = §_-U9§ / (this.§_-Ym§.right - this.§_-Ym§.left);
         }
         else
         {
            this.§_-0CF§();
            this.§_-d0§(param1);
            this.§_-cP§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§_-7H§();
         this.§_-S-§();
         this.§_-bd§();
      }
      
      private function §_-qF§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-sV§.scale + (this.§_-hc§.scale - this.§_-sV§.scale) * param1;
         var _loc4_:Number = this.§_-sV§.x + (this.§_-hc§.x - this.§_-sV§.x) * param1;
         var _loc5_:Number = this.§_-sV§.y + (this.§_-hc§.y - this.§_-sV§.y) * param1;
         this.§_-0DW§.x -= (this.§_-0DW§.x - _loc4_) * param2;
         this.§_-0DW§.y -= (this.§_-0DW§.y - _loc5_) * param2;
         this.§_-0DW§.scale -= (this.§_-0DW§.scale - _loc3_) * param2;
      }
      
      protected function §_-Sa§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-03g§ != 0)
         {
            if(!this.§_-01u§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §_-05T§;
            this.§_-qF§(_loc3_,param2);
            this.§_-0-Y§ = this.§_-0DW§.x;
            this.§_-cB§ = this.§_-0DW§.y;
            §_-RQ§ = this.§_-0DW§.scale;
         }
      }
      
      public function §_-cP§(param1:Number, param2:Number) : void
      {
         var _loc5_:§_-eZ§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §_-05T§)
         {
            this.§_-01u§ = true;
         }
         if(this.mCurrentAction == §_-0Co§)
         {
            if(!this.§_-6A§.activeObject)
            {
               this.§_-Hg§(§_-fV§);
               this.§_-06C§ = §_-sU§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§_-6A§.activeObject).§_-SJ§().GetPosition().x + (!!_loc5_.§_-02Q§ ? _loc5_.§_-02Q§ * §_-00u§.§_-lY§ : 0);
               _loc7_ = _loc5_.§_-SJ§().GetPosition().y + (!!_loc5_.§_-yE§ ? _loc5_.§_-yE§ * §_-00u§.§_-lY§ : 0);
               if((_loc8_ = _loc5_.§_-SJ§().GetLinearVelocity().x) > 0 && this.§_-03g§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§_-03g§ * §_-05T§;
               }
               if(param1 >= §_-05T§)
               {
                  param1 = §_-05T§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §_-05T§;
               this.§_-qF§(_loc9_,_loc4_);
               _loc10_ = this.§_-0DW§.x - §_-U9§ * 0.5 / this.§_-0DW§.scale;
               _loc11_ = this.§_-0DW§.y - §_-u-§ * 0.5 / this.§_-0DW§.scale;
               _loc12_ = this.§_-0DW§.x + §_-U9§ * 0.5 / this.§_-0DW§.scale;
               _loc13_ = this.§_-0DW§.y + §_-u-§ * 0.5 / this.§_-0DW§.scale;
               _loc14_ = 150 * §_-00u§.§_-lY§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§_-W6§,_loc15_);
               _loc17_ = Math.min(this.§_-wQ§,_loc17_);
               _loc19_ = Math.abs(§_-U9§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§_-u-§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§_-0DW§.scale)
               {
                  _loc21_ = this.§_-0DW§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §_-U9§ * 0.5 / _loc21_ > this.§_-wQ§)
               {
                  _loc15_ = (_loc17_ = this.§_-wQ§) - §_-U9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§_-W6§)
                  {
                     _loc15_ = this.§_-W6§;
                  }
               }
               if(_loc22_ - §_-U9§ * 0.5 / _loc21_ < this.§_-W6§)
               {
                  _loc17_ = (_loc15_ = this.§_-W6§) + §_-U9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§_-wQ§)
                  {
                     _loc17_ = this.§_-wQ§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§_-U9§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §_-U9§ * 0.5 / _loc21_ < this.§_-BC§)
               {
                  _loc23_ = this.§_-BC§ + §_-U9§ * 0.5 / _loc21_;
               }
               this.§_-0-Y§ -= (this.§_-0-Y§ - _loc22_) * _loc4_;
               this.§_-1k§ -= (this.§_-1k§ - _loc21_) * _loc4_;
               §_-RQ§ = this.§_-1k§;
               this.§_-cB§ -= (this.§_-cB§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§_-wQ§ || _loc6_ <= this.§_-W6§)
               {
                  this.§_-0DW§.scale = §_-RQ§;
                  this.§_-0DW§.x = this.§_-0-Y§;
                  this.§_-0DW§.y = this.§_-cB§;
               }
            }
         }
         else
         {
            this.§_-Sa§(param1,_loc4_);
         }
      }
      
      public function §_-WK§(param1:Number, param2:Number) : void
      {
         this.§while§ = param1;
         this.§_-hG§ = param2;
      }
      
      private function §_-oS§(param1:§_-020§, param2:§_-HK§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §_-7-§ + (param2.scale - §_-7-§) * this.§_-ZJ§ * §_-S2§.§_-7K§();
         if(§_-U9§ / param1.scale > this.§_-wQ§ - this.§_-W6§)
         {
            _loc3_ = §_-U9§ / (this.§_-wQ§ - this.§_-W6§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §_-YQ§(param1:§_-020§, param2:§_-HK§) : Boolean
      {
         var _loc3_:Boolean = this.§_-oS§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §_-u-§ * 0.5 / param1.scale;
         var _loc5_:Number = §_-u-§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §_-U9§ * 0.5 / param1.scale) < this.§_-W6§ && param1.§_-SR§)
         {
            param1.x += this.§_-W6§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §_-U9§ * 0.5 / param1.scale) > this.§_-wQ§ && !param1.§_-SR§)
         {
            param1.x += this.§_-wQ§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §_-p1§(param1:§_-020§, param2:§_-HK§) : Number
      {
         return (param1.scale - §_-7-§) / (§_-S2§.§_-7K§() * (param2.scale - §_-7-§));
      }
      
      protected function §_-0CF§() : void
      {
         this.§_-YQ§(this.§_-sV§,this.§_-Ds§);
         var _loc1_:Number = this.§_-p1§(this.§_-sV§,this.§_-Ds§);
         this.§_-YQ§(this.§_-hc§,this.§_-WX§);
         var _loc2_:Number = this.§_-p1§(this.§_-hc§,this.§_-WX§);
         this.§_-ZJ§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §_-7H§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§_-6A§.sprite)
         {
            _loc1_ = § in§.§_-q8§() / § in§.§_-57§ - § in§.§_-Kj§ >> 1;
            §_-qy§ = this.§_-6A§.sprite.x = §_-00u§.§_-F1§ * ((1 - §_-S2§.§_-4-§) / 2);
            §_-w6§ = this.§_-6A§.sprite.y = _loc1_ + §_-00u§.§_-IE§ * (1 - §_-S2§.§_-4-§) * §_-pD§.§_-UG§;
         }
      }
      
      public function §_-bd§() : void
      {
         if(this.§_-6A§.sprite)
         {
            this.§_-6A§.sprite.scaleX = §_-4-§;
            this.§_-6A§.sprite.scaleY = §_-4-§;
         }
      }
      
      public function §_-S-§() : void
      {
         var _loc1_:Number = this.§_-0-Y§ / §_-00u§.§_-lY§ + this.§while§;
         var _loc2_:Number = this.§_-cB§ / §_-00u§.§_-lY§ + this.§_-hG§;
         this.§_-jV§ = _loc1_ - §_-00u§.§_-F1§ / 2 * § in§.§_-57§ / § in§.§_-Dr§;
         this.§_-2m§ = _loc2_ - §_-00u§.§_-IE§ / 2 + §_-pD§.§_-0-M§;
         if(this.§_-6A§.background)
         {
            this.§_-6A§.background.§_-12§(this.§_-jV§,this.§_-2m§);
         }
         if(this.§_-6A§.objects)
         {
            this.§_-6A§.objects.§_-12§(this.§_-jV§,this.§_-2m§);
         }
         if(this.§_-6A§.mLevelEngine)
         {
            this.§_-6A§.mLevelEngine.§_-12§(this.§_-jV§,this.§_-2m§,§_-4-§);
         }
         if(this.§_-6A§.slingshot)
         {
            this.§_-6A§.slingshot.§_-12§(this.§_-jV§,this.§_-2m§);
         }
         if(this.§_-6A§.particles)
         {
            this.§_-6A§.particles.§_-12§(this.§_-jV§,this.§_-2m§);
         }
      }
      
      protected function §_-hj§() : void
      {
         this.§_-Hg§(§_-07O§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§_-06C§ = -1;
         this.§_-hj§();
         this.§_-04K§ = this.§_-01H§ = this.§_-RS§ = param1;
         this.§_-am§ = this.§_-yz§ = this.§_-n4§ = param2;
         this.§_-SY§ = 0;
         this.§_-0DW§.x = this.§_-0-Y§;
         this.§_-0DW§.y = this.§_-cB§;
         this.§_-0DW§.scale = §_-RQ§;
         this.§_-1k§ = §_-RQ§;
         if(Math.abs(this.§_-hc§.x - this.§_-sV§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§_-0-Y§ - this.§_-sV§.x) / (this.§_-hc§.x - this.§_-sV§.x) * §_-05T§;
         }
         this.mDragging = true;
      }
      
      public function §set §(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§_-SY§ += param1;
         var _loc3_:Number = this.§_-04K§ - this.§_-01H§;
         if(this.§_-03g§ > 0)
         {
            _loc2_ -= _loc3_ * §_-00u§.§_-lY§ / §_-4-§ / this.§_-03g§ * §_-05T§;
            this.§_-01u§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§_-01u§ = true;
            }
            if(_loc2_ > §_-05T§)
            {
               _loc2_ += (§_-05T§ - _loc2_) * 0.3;
               this.§_-01u§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§_-01H§ = this.§_-04K§;
      }
      
      protected function §_-07p§() : Boolean
      {
         return this.mCurrentAction == §_-07O§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§_-04K§ = param1;
            this.§_-am§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §_-07O§)
         {
            this.§_-Hg§(§_-br§);
            if(param1 > 0)
            {
               this.§_-04K§ = param1;
            }
            _loc3_ = Math.abs(this.§_-04K§ - this.§_-RS§);
            if(this.§_-SY§ < §_-e5§ && _loc3_ >= §_-eL§ && _loc3_ >= §_-e0§ * this.§_-SY§ / 1000)
            {
               if(this.§_-04K§ < this.§_-RS§)
               {
                  this.§_-Hg§(§_-fV§);
               }
               else
               {
                  this.§_-Hg§(§_-7X§);
               }
               this.§_-44§ = _loc3_ / this.§_-SY§ * 10;
               this.§_-01u§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§_-01u§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §_-05T§)
               {
                  this.§_-01u§ = true;
               }
            }
            else if(this.§_-SY§ < §_-2W§)
            {
               this.§_-hl§();
               this.§_-44§ = §_-05T§ / (§_-05T§ / 500);
               this.§_-01u§ = true;
            }
            else
            {
               this.§set §(0);
               this.§_-07w§(0);
               this.§_-44§ = §_-05T§ / (§_-05T§ / 500);
               this.§_-01u§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §_-hl§() : void
      {
         if(this.mCurrentAction == §_-fV§)
         {
            this.§_-Hg§(§_-7X§);
         }
         else if(this.mCurrentAction == §_-7X§)
         {
            this.§_-Hg§(§_-fV§);
         }
         else if(this.mCurrentCameraSliderLocation >= §_-05T§ / 2)
         {
            this.§_-Hg§(§_-7X§);
         }
         else if(this.mCurrentCameraSliderLocation <= §_-05T§ / 2)
         {
            this.§_-Hg§(§_-fV§);
         }
      }
      
      public function §_-07w§(param1:int) : void
      {
         this.§_-06C§ = param1;
         if(this.mCurrentCameraSliderLocation < §_-05T§ / 2)
         {
            this.§_-Hg§(§_-7X§);
         }
         else
         {
            this.§_-Hg§(§_-fV§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§_-Hg§(§_-7X§);
      }
      
      public function goToCastleView() : void
      {
         this.§_-Hg§(§_-fV§);
      }
      
      public function §_-Hg§(param1:int) : void
      {
         this.§_-0DW§.x = this.§_-0-Y§;
         this.§_-0DW§.y = this.§_-cB§;
         this.§_-0DW§.scale = §_-RQ§;
         this.§_-1k§ = §_-RQ§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §_-05T§)
         {
            return true;
         }
         if(this.mCurrentAction == §_-fV§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-7Q§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §_-7X§)
         {
            return true;
         }
         return false;
      }
      
      public function §_-0D9§(param1:§_-2w§) : void
      {
         this.§_-Ym§ = param1;
         if(this.§_-Ym§ != null)
         {
            this.§_-0-4§ = new §_-2w§();
            this.§_-0-4§.x = this.§_-0-Y§;
            this.§_-0-4§.y = this.§_-cB§;
            this.§_-0-4§.scale = §_-RQ§;
         }
         else
         {
            this.§_-0-Y§ = this.§_-0-4§.x;
            this.§_-cB§ = this.§_-0-4§.y;
            §_-RQ§ = this.§_-0-4§.scale;
            this.§_-0-4§ = null;
         }
      }
      
      protected function §_-Zg§() : void
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
         var _loc3_:Number = this.§_-ZJ§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§_-NK§,Math.min(this.§_-TL§,_loc3_));
         if(_loc3_ != this.§_-ZJ§)
         {
            this.§_-ZJ§ = _loc3_;
            this.§_-Zg§();
         }
      }
      
      public function §_-0A5§() : Number
      {
         return (this.§_-kC§ - this.§_-NK§) / (this.§_-TL§ - this.§_-NK§);
      }
      
      public function §_-IH§(param1:Number) : void
      {
         this.§_-kC§ = Math.min(Math.max(param1,0),1) * (this.§_-TL§ - this.§_-NK§) + this.§_-NK§;
      }
      
      public function §_-09l§() : void
      {
         this.§_-ZJ§ = Math.max(this.§_-ZJ§ - 0.5,0.5);
      }
      
      public function §_-2I§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§_-ZJ§;
         _loc1_ += " mXcenterB2: " + this.§_-0-Y§;
         _loc1_ += " mYcenterB2: " + this.§_-cB§;
         _loc1_ += " mXcenterB2target: " + this.§_-ZJ§;
         _loc1_ += "\n mYcenterB2target: " + this.§_-ZJ§;
         _loc1_ += " mXcenterB2previous: " + this.§_-ZJ§;
         _loc1_ += " mYcenterB2previous: " + this.§_-ZJ§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§_-ZJ§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§_-ZJ§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§_-ZJ§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§_-ZJ§;
         _loc1_ += " mTargetScale: " + this.§_-ZJ§;
         _loc1_ += " mTargetScalePrevious: " + this.§_-ZJ§;
         _loc1_ += " mCastleCameraX: " + this.§_-ZJ§;
         _loc1_ += "\n mCastleCameraY: " + this.§_-ZJ§;
         _loc1_ += " mCastleCameraScale: " + this.§_-ZJ§;
         _loc1_ += " mBirdCameraX: " + this.§_-ZJ§;
         _loc1_ += " mBirdCameraY: " + this.§_-ZJ§;
         _loc1_ += " mBirdCameraScale: " + this.§_-ZJ§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§_-ZJ§;
         _loc1_ += " mScreenTopScroll: " + this.§_-ZJ§;
         _loc1_ += " mDragging: " + this.§_-ZJ§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§_-ZJ§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§_-ZJ§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§_-ZJ§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§_-ZJ§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§_-ZJ§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§_-ZJ§;
         _loc1_ += " mDraggingTimer: " + this.§_-ZJ§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§_-ZJ§;
         _loc1_ += " mCameraBorderRight: " + this.§_-ZJ§;
         _loc1_ += " mCameraBorderSky: " + this.§_-ZJ§;
         _loc1_ += " mCameraBorderGround: " + this.§_-ZJ§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§_-ZJ§ + "\n ");
      }
   }
}
