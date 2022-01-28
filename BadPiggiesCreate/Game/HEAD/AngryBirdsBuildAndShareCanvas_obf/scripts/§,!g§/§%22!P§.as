package §,!g§
{
   import §%!0§.§%";§;
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §,P§.§'_§;
   import §6]§.§,"0§;
   import §<i§.§'!e§;
   import §<i§.§+!S§;
   
   public class §"!P§
   {
      
      public static const §!!a§:Number = 1.25;
      
      public static const §@!f§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §'_§.§["3§ * §,4§.§,^§;
      
      public static const SCREEN_HEIGHT_B2:Number = §'_§.§7$§ * §,4§.§,^§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §,!u§:int = 1500;
      
      public static const §3!j§:int = 10;
      
      public static const §"l§:int = 15;
      
      public static const §?!y§:int = 300;
      
      public static const §'U§:int = 1000;
      
      public static const §]"?§:int = 10000;
      
      public static const §]!O§:int = §]"?§ / 50;
      
      public static const §>&§:int = 0;
      
      public static const §8"'§:int = 1;
      
      public static const §'!_§:int = 2;
      
      public static const §-!"§:int = 3;
      
      public static const §9!g§:int = 4;
      
      public static const §3J§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §&N§:Number;
      
      public static var §2'§:Number;
      
      public static var §0,§:Number;
      
      public static const §%!F§:Number = 2000;
       
      
      private var §-9§:Number = 1.0;
      
      private var §5s§:Number = 0.2;
      
      protected var §2"#§:Number;
      
      protected var §1!H§:Number;
      
      protected var §3">§:Number;
      
      public var §`!G§:§,4§;
      
      public var §+!x§:Number;
      
      public var §"!Q§:Number;
      
      private var §0"<§:§'!O§;
      
      private var §?!w§:§'!O§;
      
      public var § !2§:Number;
      
      public var §@!j§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §,!"§:Number;
      
      public var §1"%§:Number;
      
      public var §7!v§:Number;
      
      public var §?"?§:Number;
      
      private var § !C§:Number;
      
      private var §!!8§:§+2§;
      
      private var §#c§:§+2§;
      
      protected var §3!4§:Number = 0;
      
      protected var §?!i§:Number = 0;
      
      protected var §^!,§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §=H§:Number = 0;
      
      public var §@!&§:Boolean = true;
      
      public var §%O§:Number = 0;
      
      public var §^!-§:Number = 0;
      
      public var §2!=§:Number = 0;
      
      public var §#!§:Number = 0;
      
      public var §3!1§:Number = 0;
      
      public var §7l§:Number = 0;
      
      public var §0!K§:Number = 0;
      
      public var §6s§:Number = 0;
      
      public var §;">§:Number = 0;
      
      private var §>l§:§+2§;
      
      public var §<x§:Number = 0;
      
      private var §?!+§:Number = 0;
      
      private var §<"8§:Number = 0;
      
      private var §9!"§:§+!S§ = null;
      
      private var §`!j§:§+!S§ = null;
      
      public function §"!P§(param1:§,4§, param2:§'!e§, param3:Number = 1.0)
      {
         this.§>l§ = new §+2§(0,0,1,false);
         super();
         this.§1!H§ = 0;
         this.§3">§ = 0;
         this.§`!G§ = param1;
         §"!P§.§&N§ = 1;
         this.§-9§ = Math.max(1,Math.min(2,param3));
         this.§2"#§ = this.§-9§;
         this.§'!'§(param2);
         if(this.§0"<§ && this.§?!w§)
         {
            this.loadCameraBorders();
            this.§3!4§ = this.§0"<§.x - this.§?!w§.x;
            this.§?!i§ = this.§0"<§.y - this.§?!w§.y;
            this.§^!,§ = this.§0"<§.scale - this.§?!w§.scale;
            this.§1!H§ = this.§0"<§.x;
            this.§3">§ = this.§0"<§.y;
            §&N§ = this.§0"<§.scale * this.§2"#§;
         }
         this.mCurrentCameraSliderLocation = §]"?§;
         this.§@!&§ = true;
         this.§=H§ = §]"?§ / 500;
      }
      
      private static function §&]§() : Number
      {
         var _loc1_:Number = §'_§.§=!c§ / §'_§.§<e§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §#X§() : Number
      {
         return §&N§ * §&]§();
      }
      
      public function get §<>§() : Number
      {
         return this.§2"#§;
      }
      
      public function set §<>§(param1:Number) : void
      {
         this.§2"#§ = param1;
      }
      
      public function get §!`§() : Number
      {
         return this.§ !C§;
      }
      
      public function §+C§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§1"%§ - this.§,!"§);
      }
      
      public function get §1!Q§() : Number
      {
         return this.§-9§;
      }
      
      public function get §,!l§() : Number
      {
         return this.§5s§;
      }
      
      public function §'!s§(param1:Number) : void
      {
         this.§2"#§ = param1;
         this.§"Z§();
         this.§]! §(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §3J§)
         {
            return;
         }
         this.goToCastleView();
         this.§%O§ = 2000;
         this.§=!L§();
         this.§9,§();
         this.§0h§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§1!H§ = this.§?!w§.x;
         this.§3">§ = this.§?!w§.y;
         this.§@!&§ = false;
         this.§=H§ = §]"?§ / 160000 * param1;
         this.§8!;§(§3J§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§,!"§ = this.§?!w§.x - SCREEN_WIDTH_B2 / this.§?!w§.scale / 2;
         this.§1"%§ = this.§0"<§.x + SCREEN_WIDTH_B2 / this.§0"<§.scale / 2;
         this.§7!v§ = this.§`!G§.borders.mBorderGround_B2 - 20 * §,4§.§[G§ * §,4§.§,^§;
         this.§?"?§ = this.§`!G§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§1"%§ - this.§,!"§);
         this.§ !C§ = this.§?"?§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§`!G§ = null;
      }
      
      public function §'!'§(param1:§'!e§) : void
      {
         var _loc3_:§+!S§ = null;
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
         while(_loc2_ < param1.§+!L§)
         {
            _loc3_ = param1.§6!§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§9!s§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = SCREEN_HEIGHT_B2 / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = SCREEN_WIDTH_B2 / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == CAMERA_ID_SLINGSHOT)
            {
               this.§?!w§ = new §'!O§(_loc9_,_loc10_,_loc13_,true);
               this.§#c§ = new §+2§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§0"<§ = new §'!O§(_loc9_,_loc10_,_loc13_,false);
               this.§!!8§ = new §+2§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §,"0§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§'!e§) : void
      {
         var _loc2_:§+!S§ = new §+!S§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§?!w§.x;
         _loc2_.y = this.§?!w§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§?!w§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§?!w§.scale / 2;
         _loc2_.left = this.§?!w§.x - _loc3_;
         _loc2_.right = this.§?!w§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§+!S§;
         (_loc5_ = new §+!S§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§0"<§.x;
         _loc5_.y = this.§0"<§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§0"<§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§0"<§.scale / 2;
         _loc5_.left = this.§0"<§.x - _loc6_;
         _loc5_.right = this.§0"<§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§["?§();
         param1.§ d§(_loc2_);
         param1.§ d§(_loc5_);
      }
      
      public function §9!s§(param1:§+!S§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §'_§.§["3§ * 0.5 / _loc2_ * §,4§.§,^§;
         var _loc4_:Number = param1.y - §'_§.§7$§ * 0.5 / _loc2_ * §,4§.§,^§;
         var _loc5_:Number = _loc3_ + §'_§.§["3§ / _loc2_ * §,4§.§,^§;
         var _loc6_:Number = _loc4_ + §'_§.§7$§ / _loc2_ * §,4§.§,^§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §0!G§(param1:§'!O§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§=H§;
         if(_loc3_ >= §]"?§)
         {
            _loc3_ = §]"?§;
            this.§8!;§(§>&§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§8!;§(§>&§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §`!u§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§=H§;
         var _loc4_:Number = -§]"?§ * 0.7;
         if(_loc2_ >= §]"?§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]"?§;
            }
            this.§=H§ = -this.§=H§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §!!w§(param1:Number) : void
      {
         if(this.mCurrentAction == §3J§)
         {
            this.§`!u§(param1);
         }
         else if(this.mCurrentAction == §8"'§)
         {
            this.§0!G§(this.§0"<§,param1);
         }
         else if(this.mCurrentAction == §'!_§)
         {
            this.§0!G§(this.§?!w§,-param1);
         }
         else if(this.mCurrentAction == §-!"§)
         {
            this.§@!&§ = true;
         }
         else if(this.mCurrentAction == §9!g§)
         {
            this.§#K§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§9!"§)
         {
            this.§1!H§ = this.§9!"§.x;
            this.§3">§ = this.§9!"§.y;
            §&N§ = SCREEN_WIDTH_B2 / (this.§9!"§.right - this.§9!"§.left);
         }
         else
         {
            this.§"Z§();
            this.§!!w§(param1);
            this.§?!b§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§=!L§();
         this.§9,§();
         this.§0h§();
      }
      
      private function §2"7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#c§.scale + (this.§!!8§.scale - this.§#c§.scale) * param1;
         var _loc4_:Number = this.§#c§.x + (this.§!!8§.x - this.§#c§.x) * param1;
         var _loc5_:Number = this.§#c§.y + (this.§!!8§.y - this.§#c§.y) * param1;
         this.§>l§.x -= (this.§>l§.x - _loc4_) * param2;
         this.§>l§.y -= (this.§>l§.y - _loc5_) * param2;
         this.§>l§.scale -= (this.§>l§.scale - _loc3_) * param2;
      }
      
      protected function §]! §(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§3!4§ != 0)
         {
            if(!this.§@!&§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]"?§;
            this.§2"7§(_loc3_,param2);
            this.§1!H§ = this.§>l§.x;
            this.§3">§ = this.§>l§.y;
            §&N§ = this.§>l§.scale;
         }
      }
      
      public function §?!b§(param1:Number, param2:Number) : void
      {
         var _loc5_:§``§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]"?§)
         {
            this.§@!&§ = true;
         }
         if(this.mCurrentAction == §-!"§)
         {
            if(!this.§`!G§.activeObject)
            {
               this.§8!;§(§8"'§);
               this.§;">§ = §'U§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§`!G§.activeObject).getBody().GetPosition().x + (!!_loc5_.§ r§ ? _loc5_.§ r§ * §,4§.§,^§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§[",§ ? _loc5_.§[",§ * §,4§.§,^§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§3!4§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§3!4§ * §]"?§;
               }
               if(param1 >= §]"?§)
               {
                  param1 = §]"?§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]"?§;
               this.§2"7§(_loc9_,_loc4_);
               _loc10_ = this.§>l§.x - SCREEN_WIDTH_B2 * 0.5 / this.§>l§.scale;
               _loc11_ = this.§>l§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§>l§.scale;
               _loc12_ = this.§>l§.x + SCREEN_WIDTH_B2 * 0.5 / this.§>l§.scale;
               _loc13_ = this.§>l§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§>l§.scale;
               _loc14_ = 150 * §,4§.§,^§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§,!"§,_loc15_);
               _loc17_ = Math.min(this.§1"%§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§>l§.scale)
               {
                  _loc21_ = this.§>l§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§1"%§)
               {
                  _loc15_ = (_loc17_ = this.§1"%§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§,!"§)
                  {
                     _loc15_ = this.§,!"§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§,!"§)
               {
                  _loc17_ = (_loc15_ = this.§,!"§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§1"%§)
                  {
                     _loc17_ = this.§1"%§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§7!v§)
               {
                  _loc23_ = this.§7!v§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§1!H§ -= (this.§1!H§ - _loc22_) * _loc4_;
               this.§<x§ -= (this.§<x§ - _loc21_) * _loc4_;
               §&N§ = this.§<x§;
               this.§3">§ -= (this.§3">§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§1"%§ || _loc6_ <= this.§,!"§)
               {
                  this.§>l§.scale = §&N§;
                  this.§>l§.x = this.§1!H§;
                  this.§>l§.y = this.§3">§;
               }
            }
         }
         else
         {
            this.§]! §(param1,_loc4_);
         }
      }
      
      public function §`!_§(param1:Number, param2:Number) : void
      {
         this.§?!+§ = param1;
         this.§<"8§ = param2;
      }
      
      private function §=a§(param1:§+2§, param2:§'!O§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §@!f§ + (param2.scale - §@!f§) * this.§2"#§ * §"!P§.§&]§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§1"%§ - this.§,!"§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§1"%§ - this.§,!"§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §3Z§(param1:§+2§, param2:§'!O§) : Boolean
      {
         var _loc3_:Boolean = this.§=a§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§,!"§ && param1.§>"1§)
         {
            param1.x += this.§,!"§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§1"%§ && !param1.§>"1§)
         {
            param1.x += this.§1"%§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §3",§(param1:§+2§, param2:§'!O§) : Number
      {
         return (param1.scale - §@!f§) / (§"!P§.§&]§() * (param2.scale - §@!f§));
      }
      
      protected function §"Z§() : void
      {
         this.§3Z§(this.§#c§,this.§?!w§);
         var _loc1_:Number = this.§3",§(this.§#c§,this.§?!w§);
         this.§3Z§(this.§!!8§,this.§0"<§);
         var _loc2_:Number = this.§3",§(this.§!!8§,this.§0"<§);
         this.§2"#§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §=!L§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§`!G§.sprite)
         {
            _loc1_ = §'_§.§6l§() / §'_§.§=!c§ - §'_§.§7$§ >> 1;
            §2'§ = this.§`!G§.sprite.x = §,4§.§!,§ * ((1 - §"!P§.§#X§) / 2);
            §0,§ = this.§`!G§.sprite.y = _loc1_ + §,4§.§[G§ * (1 - §"!P§.§#X§) * §%";§.§7u§;
         }
      }
      
      public function §0h§() : void
      {
         if(this.§`!G§.sprite)
         {
            this.§`!G§.sprite.scaleX = §#X§;
            this.§`!G§.sprite.scaleY = §#X§;
         }
      }
      
      public function §9,§() : void
      {
         var _loc1_:Number = this.§1!H§ / §,4§.§,^§ + this.§?!+§;
         var _loc2_:Number = this.§3">§ / §,4§.§,^§ + this.§<"8§;
         this.§ !2§ = _loc1_ - §,4§.§!,§ / 2 * §'_§.§=!c§ / §'_§.§0!J§;
         this.§@!j§ = _loc2_ - §,4§.§[G§ / 2 + §%";§.§2!6§;
         if(this.§`!G§.background)
         {
            this.§`!G§.background.§6"1§(this.§ !2§,this.§@!j§);
         }
         if(this.§`!G§.objects)
         {
            this.§`!G§.objects.§6"1§(this.§ !2§,this.§@!j§);
         }
         if(this.§`!G§.§?=§)
         {
            this.§`!G§.§?=§.§6"1§(this.§ !2§,this.§@!j§,§#X§);
         }
         if(this.§`!G§.slingshot)
         {
            this.§`!G§.slingshot.§6"1§(this.§ !2§,this.§@!j§);
         }
         if(this.§`!G§.particles)
         {
            this.§`!G§.particles.§6"1§(this.§ !2§,this.§@!j§);
         }
      }
      
      protected function §'2§() : void
      {
         this.§8!;§(§9!g§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§;">§ = -1;
         this.§'2§();
         this.§3!1§ = this.§0!K§ = this.§2!=§ = param1;
         this.§7l§ = this.§6s§ = this.§#!§ = param2;
         this.§^!-§ = 0;
         this.§>l§.x = this.§1!H§;
         this.§>l§.y = this.§3">§;
         this.§>l§.scale = §&N§;
         this.§<x§ = §&N§;
         if(Math.abs(this.§!!8§.x - this.§#c§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§1!H§ - this.§#c§.x) / (this.§!!8§.x - this.§#c§.x) * §]"?§;
         }
         this.mDragging = true;
      }
      
      public function §#K§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§^!-§ += param1;
         var _loc3_:Number = this.§3!1§ - this.§0!K§;
         if(this.§3!4§ > 0)
         {
            _loc2_ -= _loc3_ * §,4§.§,^§ / §#X§ / this.§3!4§ * §]"?§;
            this.§@!&§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§@!&§ = true;
            }
            if(_loc2_ > §]"?§)
            {
               _loc2_ += (§]"?§ - _loc2_) * 0.3;
               this.§@!&§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§0!K§ = this.§3!1§;
      }
      
      protected function §<J§() : Boolean
      {
         return this.mCurrentAction == §9!g§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§3!1§ = param1;
            this.§7l§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §9!g§)
         {
            this.§8!;§(§>&§);
            if(param1 > 0)
            {
               this.§3!1§ = param1;
            }
            _loc3_ = Math.abs(this.§3!1§ - this.§2!=§);
            if(this.§^!-§ < §,!u§ && _loc3_ >= §3!j§ && _loc3_ >= §"l§ * this.§^!-§ / 1000)
            {
               if(this.§3!1§ < this.§2!=§)
               {
                  this.§8!;§(§8"'§);
               }
               else
               {
                  this.§8!;§(§'!_§);
               }
               this.§=H§ = _loc3_ / this.§^!-§ * 10;
               this.§@!&§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§@!&§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]"?§)
               {
                  this.§@!&§ = true;
               }
            }
            else if(this.§^!-§ < §?!y§)
            {
               this.§>#§();
               this.§=H§ = §]"?§ / (§]"?§ / 500);
               this.§@!&§ = true;
            }
            else
            {
               this.§#K§(0);
               this.§=i§(0);
               this.§=H§ = §]"?§ / (§]"?§ / 500);
               this.§@!&§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>#§() : void
      {
         if(this.mCurrentAction == §8"'§)
         {
            this.§8!;§(§'!_§);
         }
         else if(this.mCurrentAction == §'!_§)
         {
            this.§8!;§(§8"'§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]"?§ / 2)
         {
            this.§8!;§(§'!_§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]"?§ / 2)
         {
            this.§8!;§(§8"'§);
         }
      }
      
      public function §=i§(param1:int) : void
      {
         this.§;">§ = param1;
         if(this.mCurrentCameraSliderLocation < §]"?§ / 2)
         {
            this.§8!;§(§'!_§);
         }
         else
         {
            this.§8!;§(§8"'§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§8!;§(§'!_§);
      }
      
      public function goToCastleView() : void
      {
         this.§8!;§(§8"'§);
      }
      
      public function §8!;§(param1:int) : void
      {
         this.§>l§.x = this.§1!H§;
         this.§>l§.y = this.§3">§;
         this.§>l§.scale = §&N§;
         this.§<x§ = §&N§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]"?§)
         {
            return true;
         }
         if(this.mCurrentAction == §8"'§)
         {
            return true;
         }
         return false;
      }
      
      public function §@x§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §'!_§)
         {
            return true;
         }
         return false;
      }
      
      public function §]",§(param1:§+!S§) : void
      {
         this.§9!"§ = param1;
         if(this.§9!"§ != null)
         {
            this.§`!j§ = new §+!S§();
            this.§`!j§.x = this.§1!H§;
            this.§`!j§.y = this.§3">§;
            this.§`!j§.scale = §&N§;
         }
         else
         {
            this.§1!H§ = this.§`!j§.x;
            this.§3">§ = this.§`!j§.y;
            §&N§ = this.§`!j§.scale;
            this.§`!j§ = null;
         }
      }
      
      protected function §=!b§() : void
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
         var _loc3_:Number = this.§2"#§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§,!l§,Math.min(this.§1!Q§,_loc3_));
         if(_loc3_ != this.§2"#§)
         {
            this.§2"#§ = _loc3_;
            this.§=!b§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§<>§ - this.§,!l§) / (this.§1!Q§ - this.§,!l§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§<>§ = Math.min(Math.max(param1,0),1) * (this.§1!Q§ - this.§,!l§) + this.§,!l§;
      }
      
      public function §+"$§() : void
      {
         this.§2"#§ = Math.max(this.§2"#§ - 0.5,0.5);
      }
      
      public function §+§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§2"#§;
         _loc1_ += " mXcenterB2: " + this.§1!H§;
         _loc1_ += " mYcenterB2: " + this.§3">§;
         _loc1_ += " mXcenterB2target: " + this.§2"#§;
         _loc1_ += "\n mYcenterB2target: " + this.§2"#§;
         _loc1_ += " mXcenterB2previous: " + this.§2"#§;
         _loc1_ += " mYcenterB2previous: " + this.§2"#§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§2"#§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§2"#§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§2"#§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§2"#§;
         _loc1_ += " mTargetScale: " + this.§2"#§;
         _loc1_ += " mTargetScalePrevious: " + this.§2"#§;
         _loc1_ += " mCastleCameraX: " + this.§2"#§;
         _loc1_ += "\n mCastleCameraY: " + this.§2"#§;
         _loc1_ += " mCastleCameraScale: " + this.§2"#§;
         _loc1_ += " mBirdCameraX: " + this.§2"#§;
         _loc1_ += " mBirdCameraY: " + this.§2"#§;
         _loc1_ += " mBirdCameraScale: " + this.§2"#§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§2"#§;
         _loc1_ += " mScreenTopScroll: " + this.§2"#§;
         _loc1_ += " mDragging: " + this.§2"#§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§2"#§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§2"#§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§2"#§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§2"#§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§2"#§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§2"#§;
         _loc1_ += " mDraggingTimer: " + this.§2"#§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§2"#§;
         _loc1_ += " mCameraBorderRight: " + this.§2"#§;
         _loc1_ += " mCameraBorderSky: " + this.§2"#§;
         _loc1_ += " mCameraBorderGround: " + this.§2"#§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§2"#§ + "\n ");
      }
   }
}
