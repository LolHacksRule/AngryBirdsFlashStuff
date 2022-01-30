package §>0§
{
   import §%!&§.§;!x§;
   import §%h§.§"l§;
   import §%h§.§5X§;
   import §'!O§.§+!V§;
   import §'!O§.§@!l§;
   import §4u§.§<!L§;
   import §`%§.§8!0§;
   
   public class §'L§
   {
      
      public static const §[!+§:Number = 1.25;
      
      public static const § H§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §8!0§.§;"#§ * §5X§.§,!m§;
      
      public static const SCREEN_HEIGHT_B2:Number = §8!0§.§3g§ * §5X§.§,!m§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §,8§:int = 1500;
      
      public static const §+0§:int = 10;
      
      public static const §54§:int = 15;
      
      public static const §<Y§:int = 300;
      
      public static const §&r§:int = 1000;
      
      public static const §]!u§:int = 10000;
      
      public static const §'?§:int = §]!u§ / 50;
      
      public static const §7!z§:int = 0;
      
      public static const §"!x§:int = 1;
      
      public static const §,P§:int = 2;
      
      public static const §-",§:int = 3;
      
      public static const §extends§:int = 4;
      
      public static const §8G§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §,!C§:Number;
      
      public static var §42§:Number;
      
      public static var §'1§:Number;
      
      public static const §"!&§:Number = 2000;
       
      
      private var §-9§:Number = 1.0;
      
      private var §#J§:Number = 0.2;
      
      protected var §7[§:Number;
      
      protected var §>!A§:Number;
      
      protected var §7!Z§:Number;
      
      public var §>"2§:§5X§;
      
      public var §,!V§:Number;
      
      public var §!"2§:Number;
      
      private var §9!5§:§6c§;
      
      private var §9"2§:§6c§;
      
      public var §&!k§:Number;
      
      public var §>!E§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@2§:Number;
      
      public var §#X§:Number;
      
      public var §1! §:Number;
      
      public var §7!r§:Number;
      
      private var §,!c§:Number;
      
      private var §!"4§:§-!X§;
      
      private var §-!=§:§-!X§;
      
      protected var §7!N§:Number = 0;
      
      protected var §>N§:Number = 0;
      
      protected var §+o§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §=N§:Number = 0;
      
      public var §3X§:Boolean = true;
      
      public var §^!R§:Number = 0;
      
      public var §[!!§:Number = 0;
      
      public var §0m§:Number = 0;
      
      public var §6" §:Number = 0;
      
      public var §4!j§:Number = 0;
      
      public var §?!§:Number = 0;
      
      public var §2!X§:Number = 0;
      
      public var § get§:Number = 0;
      
      public var §[!Y§:Number = 0;
      
      private var §30§:§-!X§;
      
      public var §>!§:Number = 0;
      
      private var §6!+§:Number = 0;
      
      private var §#!!§:Number = 0;
      
      private var §3!w§:§+!V§ = null;
      
      private var §0[§:§+!V§ = null;
      
      public function §'L§(param1:§5X§, param2:§@!l§, param3:Number = 1.0)
      {
         this.§30§ = new §-!X§(0,0,1,false);
         super();
         this.§>!A§ = 0;
         this.§7!Z§ = 0;
         this.§>"2§ = param1;
         §'L§.§,!C§ = 1;
         this.§-9§ = Math.max(1,Math.min(2,param3));
         this.§7[§ = this.§-9§;
         this.§-!K§(param2);
         if(this.§9!5§ && this.§9"2§)
         {
            this.loadCameraBorders();
            this.§7!N§ = this.§9!5§.x - this.§9"2§.x;
            this.§>N§ = this.§9!5§.y - this.§9"2§.y;
            this.§+o§ = this.§9!5§.scale - this.§9"2§.scale;
            this.§>!A§ = this.§9!5§.x;
            this.§7!Z§ = this.§9!5§.y;
            §,!C§ = this.§9!5§.scale * this.§7[§;
         }
         this.mCurrentCameraSliderLocation = §]!u§;
         this.§3X§ = true;
         this.§=N§ = §]!u§ / 500;
      }
      
      private static function §=T§() : Number
      {
         var _loc1_:Number = §8!0§.§&!_§ / §8!0§.§6S§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §9K§() : Number
      {
         return §,!C§ * §=T§();
      }
      
      public function get §1!B§() : Number
      {
         return this.§7[§;
      }
      
      public function set §1!B§(param1:Number) : void
      {
         this.§7[§ = param1;
      }
      
      public function get §#D§() : Number
      {
         return this.§,!c§;
      }
      
      public function §4c§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§#X§ - this.§@2§);
      }
      
      public function get §'#§() : Number
      {
         return this.§-9§;
      }
      
      public function get §3S§() : Number
      {
         return this.§#J§;
      }
      
      public function §,4§(param1:Number) : void
      {
         this.§7[§ = param1;
         this.§6]§();
         this.§2?§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §8G§)
         {
            return;
         }
         this.goToCastleView();
         this.§^!R§ = 2000;
         this.§<!H§();
         this.§&!L§();
         this.§6"$§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§>!A§ = this.§9"2§.x;
         this.§7!Z§ = this.§9"2§.y;
         this.§3X§ = false;
         this.§=N§ = §]!u§ / 160000 * param1;
         this.§@"+§(§8G§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§@2§ = this.§9"2§.x - SCREEN_WIDTH_B2 / this.§9"2§.scale / 2;
         this.§#X§ = this.§9!5§.x + SCREEN_WIDTH_B2 / this.§9!5§.scale / 2;
         this.§1! § = this.§>"2§.borders.mBorderGround_B2 - 20 * §5X§.§+T§ * §5X§.§,!m§;
         this.§7!r§ = this.§>"2§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§#X§ - this.§@2§);
         this.§,!c§ = this.§7!r§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§>"2§ = null;
      }
      
      public function §-!K§(param1:§@!l§) : void
      {
         var _loc3_:§+!V§ = null;
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
         while(_loc2_ < param1.§#""§)
         {
            _loc3_ = param1.§2l§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§7!8§(_loc3_);
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
               this.§9"2§ = new §6c§(_loc9_,_loc10_,_loc13_,true);
               this.§-!=§ = new §-!X§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§9!5§ = new §6c§(_loc9_,_loc10_,_loc13_,false);
               this.§!"4§ = new §-!X§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §<!L§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§@!l§) : void
      {
         var _loc2_:§+!V§ = new §+!V§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§9"2§.x;
         _loc2_.y = this.§9"2§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§9"2§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§9"2§.scale / 2;
         _loc2_.left = this.§9"2§.x - _loc3_;
         _loc2_.right = this.§9"2§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§+!V§;
         (_loc5_ = new §+!V§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§9!5§.x;
         _loc5_.y = this.§9!5§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§9!5§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§9!5§.scale / 2;
         _loc5_.left = this.§9!5§.x - _loc6_;
         _loc5_.right = this.§9!5§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§7f§();
         param1.§3$§(_loc2_);
         param1.§3$§(_loc5_);
      }
      
      public function §7!8§(param1:§+!V§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §8!0§.§;"#§ * 0.5 / _loc2_ * §5X§.§,!m§;
         var _loc4_:Number = param1.y - §8!0§.§3g§ * 0.5 / _loc2_ * §5X§.§,!m§;
         var _loc5_:Number = _loc3_ + §8!0§.§;"#§ / _loc2_ * §5X§.§,!m§;
         var _loc6_:Number = _loc4_ + §8!0§.§3g§ / _loc2_ * §5X§.§,!m§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §;!t§(param1:§6c§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§=N§;
         if(_loc3_ >= §]!u§)
         {
            _loc3_ = §]!u§;
            this.§@"+§(§7!z§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§@"+§(§7!z§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §^"3§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§=N§;
         var _loc4_:Number = -§]!u§ * 0.7;
         if(_loc2_ >= §]!u§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]!u§;
            }
            this.§=N§ = -this.§=N§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §>W§(param1:Number) : void
      {
         if(this.mCurrentAction == §8G§)
         {
            this.§^"3§(param1);
         }
         else if(this.mCurrentAction == §"!x§)
         {
            this.§;!t§(this.§9!5§,param1);
         }
         else if(this.mCurrentAction == §,P§)
         {
            this.§;!t§(this.§9"2§,-param1);
         }
         else if(this.mCurrentAction == §-",§)
         {
            this.§3X§ = true;
         }
         else if(this.mCurrentAction == §extends§)
         {
            this.§<!f§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§3!w§)
         {
            this.§>!A§ = this.§3!w§.x;
            this.§7!Z§ = this.§3!w§.y;
            §,!C§ = SCREEN_WIDTH_B2 / (this.§3!w§.right - this.§3!w§.left);
         }
         else
         {
            this.§6]§();
            this.§>W§(param1);
            this.§?#§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§<!H§();
         this.§&!L§();
         this.§6"$§();
      }
      
      private function §%!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§-!=§.scale + (this.§!"4§.scale - this.§-!=§.scale) * param1;
         var _loc4_:Number = this.§-!=§.x + (this.§!"4§.x - this.§-!=§.x) * param1;
         var _loc5_:Number = this.§-!=§.y + (this.§!"4§.y - this.§-!=§.y) * param1;
         this.§30§.x -= (this.§30§.x - _loc4_) * param2;
         this.§30§.y -= (this.§30§.y - _loc5_) * param2;
         this.§30§.scale -= (this.§30§.scale - _loc3_) * param2;
      }
      
      protected function §2?§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§7!N§ != 0)
         {
            if(!this.§3X§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]!u§;
            this.§%!Q§(_loc3_,param2);
            this.§>!A§ = this.§30§.x;
            this.§7!Z§ = this.§30§.y;
            §,!C§ = this.§30§.scale;
         }
      }
      
      public function §?#§(param1:Number, param2:Number) : void
      {
         var _loc5_:§;!x§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]!u§)
         {
            this.§3X§ = true;
         }
         if(this.mCurrentAction == §-",§)
         {
            if(!this.§>"2§.activeObject)
            {
               this.§@"+§(§"!x§);
               this.§[!Y§ = §&r§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§>"2§.activeObject).getBody().GetPosition().x + (!!_loc5_.§else § ? _loc5_.§else § * §5X§.§,!m§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§`e§ ? _loc5_.§`e§ * §5X§.§,!m§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§7!N§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§7!N§ * §]!u§;
               }
               if(param1 >= §]!u§)
               {
                  param1 = §]!u§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]!u§;
               this.§%!Q§(_loc9_,_loc4_);
               _loc10_ = this.§30§.x - SCREEN_WIDTH_B2 * 0.5 / this.§30§.scale;
               _loc11_ = this.§30§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§30§.scale;
               _loc12_ = this.§30§.x + SCREEN_WIDTH_B2 * 0.5 / this.§30§.scale;
               _loc13_ = this.§30§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§30§.scale;
               _loc14_ = 150 * §5X§.§,!m§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§@2§,_loc15_);
               _loc17_ = Math.min(this.§#X§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§30§.scale)
               {
                  _loc21_ = this.§30§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§#X§)
               {
                  _loc15_ = (_loc17_ = this.§#X§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§@2§)
                  {
                     _loc15_ = this.§@2§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§@2§)
               {
                  _loc17_ = (_loc15_ = this.§@2§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§#X§)
                  {
                     _loc17_ = this.§#X§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§1! §)
               {
                  _loc23_ = this.§1! § + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§>!A§ -= (this.§>!A§ - _loc22_) * _loc4_;
               this.§>!§ -= (this.§>!§ - _loc21_) * _loc4_;
               §,!C§ = this.§>!§;
               this.§7!Z§ -= (this.§7!Z§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§#X§ || _loc6_ <= this.§@2§)
               {
                  this.§30§.scale = §,!C§;
                  this.§30§.x = this.§>!A§;
                  this.§30§.y = this.§7!Z§;
               }
            }
         }
         else
         {
            this.§2?§(param1,_loc4_);
         }
      }
      
      public function §#!#§(param1:Number, param2:Number) : void
      {
         this.§6!+§ = param1;
         this.§#!!§ = param2;
      }
      
      private function §8!K§(param1:§-!X§, param2:§6c§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = § H§ + (param2.scale - § H§) * this.§7[§ * §'L§.§=T§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§#X§ - this.§@2§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§#X§ - this.§@2§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §%q§(param1:§-!X§, param2:§6c§) : Boolean
      {
         var _loc3_:Boolean = this.§8!K§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§@2§ && param1.§>!k§)
         {
            param1.x += this.§@2§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§#X§ && !param1.§>!k§)
         {
            param1.x += this.§#X§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §%4§(param1:§-!X§, param2:§6c§) : Number
      {
         return (param1.scale - § H§) / (§'L§.§=T§() * (param2.scale - § H§));
      }
      
      protected function §6]§() : void
      {
         this.§%q§(this.§-!=§,this.§9"2§);
         var _loc1_:Number = this.§%4§(this.§-!=§,this.§9"2§);
         this.§%q§(this.§!"4§,this.§9!5§);
         var _loc2_:Number = this.§%4§(this.§!"4§,this.§9!5§);
         this.§7[§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §<!H§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§>"2§.sprite)
         {
            _loc1_ = §8!0§.§4!;§() / §8!0§.§&!_§ - §8!0§.§3g§ >> 1;
            §42§ = this.§>"2§.sprite.x = §5X§.§5"'§ * ((1 - §'L§.§9K§) / 2);
            §'1§ = this.§>"2§.sprite.y = _loc1_ + §5X§.§+T§ * (1 - §'L§.§9K§) * §"l§.§;!3§;
         }
      }
      
      public function §6"$§() : void
      {
         if(this.§>"2§.sprite)
         {
            this.§>"2§.sprite.scaleX = §9K§;
            this.§>"2§.sprite.scaleY = §9K§;
         }
      }
      
      public function §&!L§() : void
      {
         var _loc1_:Number = this.§>!A§ / §5X§.§,!m§ + this.§6!+§;
         var _loc2_:Number = this.§7!Z§ / §5X§.§,!m§ + this.§#!!§;
         this.§&!k§ = _loc1_ - §5X§.§5"'§ / 2 * §8!0§.§&!_§ / §8!0§.§`!f§;
         this.§>!E§ = _loc2_ - §5X§.§+T§ / 2 + §"l§.§^!!§;
         if(this.§>"2§.background)
         {
            this.§>"2§.background.§08§(this.§&!k§,this.§>!E§);
         }
         if(this.§>"2§.objects)
         {
            this.§>"2§.objects.§08§(this.§&!k§,this.§>!E§);
         }
         if(this.§>"2§.§[![§)
         {
            this.§>"2§.§[![§.§08§(this.§&!k§,this.§>!E§,§9K§);
         }
         if(this.§>"2§.slingshot)
         {
            this.§>"2§.slingshot.§08§(this.§&!k§,this.§>!E§);
         }
         if(this.§>"2§.particles)
         {
            this.§>"2§.particles.§08§(this.§&!k§,this.§>!E§);
         }
      }
      
      protected function §1!W§() : void
      {
         this.§@"+§(§extends§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§[!Y§ = -1;
         this.§1!W§();
         this.§4!j§ = this.§2!X§ = this.§0m§ = param1;
         this.§?!§ = this.§ get§ = this.§6" § = param2;
         this.§[!!§ = 0;
         this.§30§.x = this.§>!A§;
         this.§30§.y = this.§7!Z§;
         this.§30§.scale = §,!C§;
         this.§>!§ = §,!C§;
         if(Math.abs(this.§!"4§.x - this.§-!=§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§>!A§ - this.§-!=§.x) / (this.§!"4§.x - this.§-!=§.x) * §]!u§;
         }
         this.mDragging = true;
      }
      
      public function §<!f§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[!!§ += param1;
         var _loc3_:Number = this.§4!j§ - this.§2!X§;
         if(this.§7!N§ > 0)
         {
            _loc2_ -= _loc3_ * §5X§.§,!m§ / §9K§ / this.§7!N§ * §]!u§;
            this.§3X§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§3X§ = true;
            }
            if(_loc2_ > §]!u§)
            {
               _loc2_ += (§]!u§ - _loc2_) * 0.3;
               this.§3X§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§2!X§ = this.§4!j§;
      }
      
      protected function § i§() : Boolean
      {
         return this.mCurrentAction == §extends§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§4!j§ = param1;
            this.§?!§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §extends§)
         {
            this.§@"+§(§7!z§);
            if(param1 > 0)
            {
               this.§4!j§ = param1;
            }
            _loc3_ = Math.abs(this.§4!j§ - this.§0m§);
            if(this.§[!!§ < §,8§ && _loc3_ >= §+0§ && _loc3_ >= §54§ * this.§[!!§ / 1000)
            {
               if(this.§4!j§ < this.§0m§)
               {
                  this.§@"+§(§"!x§);
               }
               else
               {
                  this.§@"+§(§,P§);
               }
               this.§=N§ = _loc3_ / this.§[!!§ * 10;
               this.§3X§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§3X§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]!u§)
               {
                  this.§3X§ = true;
               }
            }
            else if(this.§[!!§ < §<Y§)
            {
               this.§>" §();
               this.§=N§ = §]!u§ / (§]!u§ / 500);
               this.§3X§ = true;
            }
            else
            {
               this.§<!f§(0);
               this.§5i§(0);
               this.§=N§ = §]!u§ / (§]!u§ / 500);
               this.§3X§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>" §() : void
      {
         if(this.mCurrentAction == §"!x§)
         {
            this.§@"+§(§,P§);
         }
         else if(this.mCurrentAction == §,P§)
         {
            this.§@"+§(§"!x§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]!u§ / 2)
         {
            this.§@"+§(§,P§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]!u§ / 2)
         {
            this.§@"+§(§"!x§);
         }
      }
      
      public function §5i§(param1:int) : void
      {
         this.§[!Y§ = param1;
         if(this.mCurrentCameraSliderLocation < §]!u§ / 2)
         {
            this.§@"+§(§,P§);
         }
         else
         {
            this.§@"+§(§"!x§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§@"+§(§,P§);
      }
      
      public function goToCastleView() : void
      {
         this.§@"+§(§"!x§);
      }
      
      public function §@"+§(param1:int) : void
      {
         this.§30§.x = this.§>!A§;
         this.§30§.y = this.§7!Z§;
         this.§30§.scale = §,!C§;
         this.§>!§ = §,!C§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]!u§)
         {
            return true;
         }
         if(this.mCurrentAction == §"!x§)
         {
            return true;
         }
         return false;
      }
      
      public function §!!6§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §,P§)
         {
            return true;
         }
         return false;
      }
      
      public function §7"&§(param1:§+!V§) : void
      {
         this.§3!w§ = param1;
         if(this.§3!w§ != null)
         {
            this.§0[§ = new §+!V§();
            this.§0[§.x = this.§>!A§;
            this.§0[§.y = this.§7!Z§;
            this.§0[§.scale = §,!C§;
         }
         else
         {
            this.§>!A§ = this.§0[§.x;
            this.§7!Z§ = this.§0[§.y;
            §,!C§ = this.§0[§.scale;
            this.§0[§ = null;
         }
      }
      
      protected function §7"-§() : void
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
         var _loc3_:Number = this.§7[§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§3S§,Math.min(this.§'#§,_loc3_));
         if(_loc3_ != this.§7[§)
         {
            this.§7[§ = _loc3_;
            this.§7"-§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§1!B§ - this.§3S§) / (this.§'#§ - this.§3S§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§1!B§ = Math.min(Math.max(param1,0),1) * (this.§'#§ - this.§3S§) + this.§3S§;
      }
      
      public function §6!m§() : void
      {
         this.§7[§ = Math.max(this.§7[§ - 0.5,0.5);
      }
      
      public function §&"%§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7[§;
         _loc1_ += " mXcenterB2: " + this.§>!A§;
         _loc1_ += " mYcenterB2: " + this.§7!Z§;
         _loc1_ += " mXcenterB2target: " + this.§7[§;
         _loc1_ += "\n mYcenterB2target: " + this.§7[§;
         _loc1_ += " mXcenterB2previous: " + this.§7[§;
         _loc1_ += " mYcenterB2previous: " + this.§7[§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7[§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7[§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7[§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7[§;
         _loc1_ += " mTargetScale: " + this.§7[§;
         _loc1_ += " mTargetScalePrevious: " + this.§7[§;
         _loc1_ += " mCastleCameraX: " + this.§7[§;
         _loc1_ += "\n mCastleCameraY: " + this.§7[§;
         _loc1_ += " mCastleCameraScale: " + this.§7[§;
         _loc1_ += " mBirdCameraX: " + this.§7[§;
         _loc1_ += " mBirdCameraY: " + this.§7[§;
         _loc1_ += " mBirdCameraScale: " + this.§7[§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7[§;
         _loc1_ += " mScreenTopScroll: " + this.§7[§;
         _loc1_ += " mDragging: " + this.§7[§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7[§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7[§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7[§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7[§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7[§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7[§;
         _loc1_ += " mDraggingTimer: " + this.§7[§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7[§;
         _loc1_ += " mCameraBorderRight: " + this.§7[§;
         _loc1_ += " mCameraBorderSky: " + this.§7[§;
         _loc1_ += " mCameraBorderGround: " + this.§7[§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7[§ + "\n ");
      }
   }
}
