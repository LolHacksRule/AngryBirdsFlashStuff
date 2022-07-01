package §1"3§
{
   import § ""§.§%,§;
   import §'x§.§?z§;
   import §+%§.§+D§;
   import §+%§.§5!F§;
   import §1!v§.§1V§;
   import §1!v§.§@%§;
   import §;X§.§ do§;
   
   public class §`"0§
   {
      
      public static const §[!Z§:Number = 1.25;
      
      public static const §#e§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §?z§.§ !q§ * §@%§.§?k§;
      
      public static const SCREEN_HEIGHT_B2:Number = §?z§.§%"2§ * §@%§.§?k§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §@!O§:int = 1500;
      
      public static const §3"!§:int = 10;
      
      public static const §]9§:int = 15;
      
      public static const §<y§:int = 300;
      
      public static const §1s§:int = 1000;
      
      public static const §%"3§:int = 10000;
      
      public static const §&"0§:int = §%"3§ / 50;
      
      public static const §8!c§:int = 0;
      
      public static const §>!5§:int = 1;
      
      public static const §5X§:int = 2;
      
      public static const §`""§:int = 3;
      
      public static const §1a§:int = 4;
      
      public static const §<j§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §,!Q§:Number;
      
      public static var §+!N§:Number;
      
      public static var §,#§:Number;
      
      public static const §5!d§:Number = 2000;
       
      
      private var §^W§:Number = 1.0;
      
      private var §5!7§:Number = 0.2;
      
      protected var §7G§:Number;
      
      protected var §2!,§:Number;
      
      protected var §"""§:Number;
      
      public var §]Z§:§@%§;
      
      public var §^!C§:Number;
      
      public var §'"2§:Number;
      
      private var §[!P§:§!L§;
      
      private var §;!E§:§!L§;
      
      public var §9!A§:Number;
      
      public var §4!m§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §?!'§:Number;
      
      public var §6!n§:Number;
      
      public var §[!]§:Number;
      
      public var §<M§:Number;
      
      private var §+!&§:Number;
      
      private var §-a§:§^!%§;
      
      private var §]!Y§:§^!%§;
      
      protected var §%P§:Number = 0;
      
      protected var §[!W§:Number = 0;
      
      protected var §7!P§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1G§:Number = 0;
      
      public var §?"2§:Boolean = true;
      
      public var §=a§:Number = 0;
      
      public var §;!6§:Number = 0;
      
      public var §<k§:Number = 0;
      
      public var §-=§:Number = 0;
      
      public var §-!j§:Number = 0;
      
      public var §6!k§:Number = 0;
      
      public var §;F§:Number = 0;
      
      public var §"!'§:Number = 0;
      
      public var §9!e§:Number = 0;
      
      private var §^!g§:§^!%§;
      
      public var §<!6§:Number = 0;
      
      private var §use§:Number = 0;
      
      private var §?!V§:Number = 0;
      
      private var §]!0§:§+D§ = null;
      
      private var §[F§:§+D§ = null;
      
      public function §`"0§(param1:§@%§, param2:§5!F§, param3:Number = 1.0)
      {
         this.§^!g§ = new §^!%§(0,0,1,false);
         super();
         this.§2!,§ = 0;
         this.§"""§ = 0;
         this.§]Z§ = param1;
         §`"0§.§,!Q§ = 1;
         this.§^W§ = Math.max(1,Math.min(2,param3));
         this.§7G§ = this.§^W§;
         this.§4w§(param2);
         if(this.§[!P§ && this.§;!E§)
         {
            this.loadCameraBorders();
            this.§%P§ = this.§[!P§.x - this.§;!E§.x;
            this.§[!W§ = this.§[!P§.y - this.§;!E§.y;
            this.§7!P§ = this.§[!P§.scale - this.§;!E§.scale;
            this.§2!,§ = this.§[!P§.x;
            this.§"""§ = this.§[!P§.y;
            §,!Q§ = this.§[!P§.scale * this.§7G§;
         }
         this.mCurrentCameraSliderLocation = §%"3§;
         this.§?"2§ = true;
         this.§1G§ = §%"3§ / 500;
      }
      
      private static function §>z§() : Number
      {
         var _loc1_:Number = §?z§.§'!<§ / §?z§.§%!K§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §;!G§() : Number
      {
         return §,!Q§ * §>z§();
      }
      
      public function get §&!Z§() : Number
      {
         return this.§7G§;
      }
      
      public function set §&!Z§(param1:Number) : void
      {
         this.§7G§ = param1;
      }
      
      public function get §[!q§() : Number
      {
         return this.§+!&§;
      }
      
      public function §7!d§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§6!n§ - this.§?!'§);
      }
      
      public function get §2!s§() : Number
      {
         return this.§^W§;
      }
      
      public function get §<!3§() : Number
      {
         return this.§5!7§;
      }
      
      public function §;"2§(param1:Number) : void
      {
         this.§7G§ = param1;
         this.§^!W§();
         this.§8!@§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<j§)
         {
            return;
         }
         this.goToCastleView();
         this.§=a§ = 2000;
         this.§,"3§();
         this.§--§();
         this.§4"2§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§2!,§ = this.§;!E§.x;
         this.§"""§ = this.§;!E§.y;
         this.§?"2§ = false;
         this.§1G§ = §%"3§ / 160000 * param1;
         this.§[!H§(§<j§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§?!'§ = this.§;!E§.x - SCREEN_WIDTH_B2 / this.§;!E§.scale / 2;
         this.§6!n§ = this.§[!P§.x + SCREEN_WIDTH_B2 / this.§[!P§.scale / 2;
         this.§[!]§ = this.§]Z§.borders.mBorderGround_B2 - 20 * §@%§.§7>§ * §@%§.§?k§;
         this.§<M§ = this.§]Z§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§6!n§ - this.§?!'§);
         this.§+!&§ = this.§<M§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]Z§ = null;
      }
      
      public function §4w§(param1:§5!F§) : void
      {
         var _loc3_:§+D§ = null;
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
         while(_loc2_ < param1.§#!n§)
         {
            _loc3_ = param1.§>!n§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§<'§(_loc3_);
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
               this.§;!E§ = new §!L§(_loc9_,_loc10_,_loc13_,true);
               this.§]!Y§ = new §^!%§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§[!P§ = new §!L§(_loc9_,_loc10_,_loc13_,false);
               this.§-a§ = new §^!%§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               § do§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§5!F§) : void
      {
         var _loc2_:§+D§ = new §+D§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§;!E§.x;
         _loc2_.y = this.§;!E§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§;!E§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§;!E§.scale / 2;
         _loc2_.left = this.§;!E§.x - _loc3_;
         _loc2_.right = this.§;!E§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§+D§;
         (_loc5_ = new §+D§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§[!P§.x;
         _loc5_.y = this.§[!P§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§[!P§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§[!P§.scale / 2;
         _loc5_.left = this.§[!P§.x - _loc6_;
         _loc5_.right = this.§[!P§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§"!t§();
         param1.§?!P§(_loc2_);
         param1.§?!P§(_loc5_);
      }
      
      public function §<'§(param1:§+D§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §?z§.§ !q§ * 0.5 / _loc2_ * §@%§.§?k§;
         var _loc4_:Number = param1.y - §?z§.§%"2§ * 0.5 / _loc2_ * §@%§.§?k§;
         var _loc5_:Number = _loc3_ + §?z§.§ !q§ / _loc2_ * §@%§.§?k§;
         var _loc6_:Number = _loc4_ + §?z§.§%"2§ / _loc2_ * §@%§.§?k§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §1!x§(param1:§!L§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1G§;
         if(_loc3_ >= §%"3§)
         {
            _loc3_ = §%"3§;
            this.§[!H§(§8!c§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§[!H§(§8!c§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §[d§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1G§;
         var _loc4_:Number = -§%"3§ * 0.7;
         if(_loc2_ >= §%"3§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §%"3§;
            }
            this.§1G§ = -this.§1G§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §?!X§(param1:Number) : void
      {
         if(this.mCurrentAction == §<j§)
         {
            this.§[d§(param1);
         }
         else if(this.mCurrentAction == §>!5§)
         {
            this.§1!x§(this.§[!P§,param1);
         }
         else if(this.mCurrentAction == §5X§)
         {
            this.§1!x§(this.§;!E§,-param1);
         }
         else if(this.mCurrentAction == §`""§)
         {
            this.§?"2§ = true;
         }
         else if(this.mCurrentAction == §1a§)
         {
            this.§=!Q§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§]!0§)
         {
            this.§2!,§ = this.§]!0§.x;
            this.§"""§ = this.§]!0§.y;
            §,!Q§ = SCREEN_WIDTH_B2 / (this.§]!0§.right - this.§]!0§.left);
         }
         else
         {
            this.§^!W§();
            this.§?!X§(param1);
            this.§2,§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§,"3§();
         this.§--§();
         this.§4"2§();
      }
      
      private function §8"&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]!Y§.scale + (this.§-a§.scale - this.§]!Y§.scale) * param1;
         var _loc4_:Number = this.§]!Y§.x + (this.§-a§.x - this.§]!Y§.x) * param1;
         var _loc5_:Number = this.§]!Y§.y + (this.§-a§.y - this.§]!Y§.y) * param1;
         this.§^!g§.x -= (this.§^!g§.x - _loc4_) * param2;
         this.§^!g§.y -= (this.§^!g§.y - _loc5_) * param2;
         this.§^!g§.scale -= (this.§^!g§.scale - _loc3_) * param2;
      }
      
      protected function §8!@§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%P§ != 0)
         {
            if(!this.§?"2§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §%"3§;
            this.§8"&§(_loc3_,param2);
            this.§2!,§ = this.§^!g§.x;
            this.§"""§ = this.§^!g§.y;
            §,!Q§ = this.§^!g§.scale;
         }
      }
      
      public function §2,§(param1:Number, param2:Number) : void
      {
         var _loc5_:§%,§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §%"3§)
         {
            this.§?"2§ = true;
         }
         if(this.mCurrentAction == §`""§)
         {
            if(!this.§]Z§.activeObject)
            {
               this.§[!H§(§>!5§);
               this.§9!e§ = §1s§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]Z§.activeObject).getBody().GetPosition().x + (!!_loc5_.§[!o§ ? _loc5_.§[!o§ * §@%§.§?k§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§]O§ ? _loc5_.§]O§ * §@%§.§?k§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§%P§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§%P§ * §%"3§;
               }
               if(param1 >= §%"3§)
               {
                  param1 = §%"3§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §%"3§;
               this.§8"&§(_loc9_,_loc4_);
               _loc10_ = this.§^!g§.x - SCREEN_WIDTH_B2 * 0.5 / this.§^!g§.scale;
               _loc11_ = this.§^!g§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§^!g§.scale;
               _loc12_ = this.§^!g§.x + SCREEN_WIDTH_B2 * 0.5 / this.§^!g§.scale;
               _loc13_ = this.§^!g§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§^!g§.scale;
               _loc14_ = 150 * §@%§.§?k§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§?!'§,_loc15_);
               _loc17_ = Math.min(this.§6!n§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§^!g§.scale)
               {
                  _loc21_ = this.§^!g§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§6!n§)
               {
                  _loc15_ = (_loc17_ = this.§6!n§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§?!'§)
                  {
                     _loc15_ = this.§?!'§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§?!'§)
               {
                  _loc17_ = (_loc15_ = this.§?!'§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§6!n§)
                  {
                     _loc17_ = this.§6!n§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§[!]§)
               {
                  _loc23_ = this.§[!]§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§2!,§ -= (this.§2!,§ - _loc22_) * _loc4_;
               this.§<!6§ -= (this.§<!6§ - _loc21_) * _loc4_;
               §,!Q§ = this.§<!6§;
               this.§"""§ -= (this.§"""§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§6!n§ || _loc6_ <= this.§?!'§)
               {
                  this.§^!g§.scale = §,!Q§;
                  this.§^!g§.x = this.§2!,§;
                  this.§^!g§.y = this.§"""§;
               }
            }
         }
         else
         {
            this.§8!@§(param1,_loc4_);
         }
      }
      
      public function §"!Q§(param1:Number, param2:Number) : void
      {
         this.§use§ = param1;
         this.§?!V§ = param2;
      }
      
      private function §1!w§(param1:§^!%§, param2:§!L§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §#e§ + (param2.scale - §#e§) * this.§7G§ * §`"0§.§>z§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§6!n§ - this.§?!'§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§6!n§ - this.§?!'§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §'!c§(param1:§^!%§, param2:§!L§) : Boolean
      {
         var _loc3_:Boolean = this.§1!w§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§?!'§ && param1.§4"%§)
         {
            param1.x += this.§?!'§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§6!n§ && !param1.§4"%§)
         {
            param1.x += this.§6!n§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §'!#§(param1:§^!%§, param2:§!L§) : Number
      {
         return (param1.scale - §#e§) / (§`"0§.§>z§() * (param2.scale - §#e§));
      }
      
      protected function §^!W§() : void
      {
         this.§'!c§(this.§]!Y§,this.§;!E§);
         var _loc1_:Number = this.§'!#§(this.§]!Y§,this.§;!E§);
         this.§'!c§(this.§-a§,this.§[!P§);
         var _loc2_:Number = this.§'!#§(this.§-a§,this.§[!P§);
         this.§7G§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §,"3§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]Z§.sprite)
         {
            _loc1_ = §?z§.§68§() / §?z§.§'!<§ - §?z§.§%"2§ >> 1;
            §+!N§ = this.§]Z§.sprite.x = §@%§.§]H§ * ((1 - §`"0§.§;!G§) / 2);
            §,#§ = this.§]Z§.sprite.y = _loc1_ + §@%§.§7>§ * (1 - §`"0§.§;!G§) * §1V§.§[c§;
         }
      }
      
      public function §4"2§() : void
      {
         if(this.§]Z§.sprite)
         {
            this.§]Z§.sprite.scaleX = §;!G§;
            this.§]Z§.sprite.scaleY = §;!G§;
         }
      }
      
      public function §--§() : void
      {
         var _loc1_:Number = this.§2!,§ / §@%§.§?k§ + this.§use§;
         var _loc2_:Number = this.§"""§ / §@%§.§?k§ + this.§?!V§;
         this.§9!A§ = _loc1_ - §@%§.§]H§ / 2 * §?z§.§'!<§ / §?z§.§<"4§;
         this.§4!m§ = _loc2_ - §@%§.§7>§ / 2 + §1V§.§?!e§;
         if(this.§]Z§.background)
         {
            this.§]Z§.background.§@G§(this.§9!A§,this.§4!m§);
         }
         if(this.§]Z§.objects)
         {
            this.§]Z§.objects.§@G§(this.§9!A§,this.§4!m§);
         }
         if(this.§]Z§.§'A§)
         {
            this.§]Z§.§'A§.§@G§(this.§9!A§,this.§4!m§,§;!G§);
         }
         if(this.§]Z§.slingshot)
         {
            this.§]Z§.slingshot.§@G§(this.§9!A§,this.§4!m§);
         }
         if(this.§]Z§.particles)
         {
            this.§]Z§.particles.§@G§(this.§9!A§,this.§4!m§);
         }
      }
      
      protected function §]!J§() : void
      {
         this.§[!H§(§1a§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§9!e§ = -1;
         this.§]!J§();
         this.§-!j§ = this.§;F§ = this.§<k§ = param1;
         this.§6!k§ = this.§"!'§ = this.§-=§ = param2;
         this.§;!6§ = 0;
         this.§^!g§.x = this.§2!,§;
         this.§^!g§.y = this.§"""§;
         this.§^!g§.scale = §,!Q§;
         this.§<!6§ = §,!Q§;
         if(Math.abs(this.§-a§.x - this.§]!Y§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§2!,§ - this.§]!Y§.x) / (this.§-a§.x - this.§]!Y§.x) * §%"3§;
         }
         this.mDragging = true;
      }
      
      public function §=!Q§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§;!6§ += param1;
         var _loc3_:Number = this.§-!j§ - this.§;F§;
         if(this.§%P§ > 0)
         {
            _loc2_ -= _loc3_ * §@%§.§?k§ / §;!G§ / this.§%P§ * §%"3§;
            this.§?"2§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§?"2§ = true;
            }
            if(_loc2_ > §%"3§)
            {
               _loc2_ += (§%"3§ - _loc2_) * 0.3;
               this.§?"2§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§;F§ = this.§-!j§;
      }
      
      protected function §6!z§() : Boolean
      {
         return this.mCurrentAction == §1a§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§-!j§ = param1;
            this.§6!k§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §1a§)
         {
            this.§[!H§(§8!c§);
            if(param1 > 0)
            {
               this.§-!j§ = param1;
            }
            _loc3_ = Math.abs(this.§-!j§ - this.§<k§);
            if(this.§;!6§ < §@!O§ && _loc3_ >= §3"!§ && _loc3_ >= §]9§ * this.§;!6§ / 1000)
            {
               if(this.§-!j§ < this.§<k§)
               {
                  this.§[!H§(§>!5§);
               }
               else
               {
                  this.§[!H§(§5X§);
               }
               this.§1G§ = _loc3_ / this.§;!6§ * 10;
               this.§?"2§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§?"2§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §%"3§)
               {
                  this.§?"2§ = true;
               }
            }
            else if(this.§;!6§ < §<y§)
            {
               this.§@!s§();
               this.§1G§ = §%"3§ / (§%"3§ / 500);
               this.§?"2§ = true;
            }
            else
            {
               this.§=!Q§(0);
               this.§'!G§(0);
               this.§1G§ = §%"3§ / (§%"3§ / 500);
               this.§?"2§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §@!s§() : void
      {
         if(this.mCurrentAction == §>!5§)
         {
            this.§[!H§(§5X§);
         }
         else if(this.mCurrentAction == §5X§)
         {
            this.§[!H§(§>!5§);
         }
         else if(this.mCurrentCameraSliderLocation >= §%"3§ / 2)
         {
            this.§[!H§(§5X§);
         }
         else if(this.mCurrentCameraSliderLocation <= §%"3§ / 2)
         {
            this.§[!H§(§>!5§);
         }
      }
      
      public function §'!G§(param1:int) : void
      {
         this.§9!e§ = param1;
         if(this.mCurrentCameraSliderLocation < §%"3§ / 2)
         {
            this.§[!H§(§5X§);
         }
         else
         {
            this.§[!H§(§>!5§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§[!H§(§5X§);
      }
      
      public function goToCastleView() : void
      {
         this.§[!H§(§>!5§);
      }
      
      public function §[!H§(param1:int) : void
      {
         this.§^!g§.x = this.§2!,§;
         this.§^!g§.y = this.§"""§;
         this.§^!g§.scale = §,!Q§;
         this.§<!6§ = §,!Q§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §%"3§)
         {
            return true;
         }
         if(this.mCurrentAction == §>!5§)
         {
            return true;
         }
         return false;
      }
      
      public function §>"%§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §5X§)
         {
            return true;
         }
         return false;
      }
      
      public function §&u§(param1:§+D§) : void
      {
         this.§]!0§ = param1;
         if(this.§]!0§ != null)
         {
            this.§[F§ = new §+D§();
            this.§[F§.x = this.§2!,§;
            this.§[F§.y = this.§"""§;
            this.§[F§.scale = §,!Q§;
         }
         else
         {
            this.§2!,§ = this.§[F§.x;
            this.§"""§ = this.§[F§.y;
            §,!Q§ = this.§[F§.scale;
            this.§[F§ = null;
         }
      }
      
      protected function §,g§() : void
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
         var _loc3_:Number = this.§7G§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§<!3§,Math.min(this.§2!s§,_loc3_));
         if(_loc3_ != this.§7G§)
         {
            this.§7G§ = _loc3_;
            this.§,g§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§&!Z§ - this.§<!3§) / (this.§2!s§ - this.§<!3§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§&!Z§ = Math.min(Math.max(param1,0),1) * (this.§2!s§ - this.§<!3§) + this.§<!3§;
      }
      
      public function §,6§() : void
      {
         this.§7G§ = Math.max(this.§7G§ - 0.5,0.5);
      }
      
      public function §8!A§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7G§;
         _loc1_ += " mXcenterB2: " + this.§2!,§;
         _loc1_ += " mYcenterB2: " + this.§"""§;
         _loc1_ += " mXcenterB2target: " + this.§7G§;
         _loc1_ += "\n mYcenterB2target: " + this.§7G§;
         _loc1_ += " mXcenterB2previous: " + this.§7G§;
         _loc1_ += " mYcenterB2previous: " + this.§7G§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7G§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7G§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7G§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7G§;
         _loc1_ += " mTargetScale: " + this.§7G§;
         _loc1_ += " mTargetScalePrevious: " + this.§7G§;
         _loc1_ += " mCastleCameraX: " + this.§7G§;
         _loc1_ += "\n mCastleCameraY: " + this.§7G§;
         _loc1_ += " mCastleCameraScale: " + this.§7G§;
         _loc1_ += " mBirdCameraX: " + this.§7G§;
         _loc1_ += " mBirdCameraY: " + this.§7G§;
         _loc1_ += " mBirdCameraScale: " + this.§7G§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7G§;
         _loc1_ += " mScreenTopScroll: " + this.§7G§;
         _loc1_ += " mDragging: " + this.§7G§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7G§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7G§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7G§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7G§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7G§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7G§;
         _loc1_ += " mDraggingTimer: " + this.§7G§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7G§;
         _loc1_ += " mCameraBorderRight: " + this.§7G§;
         _loc1_ += " mCameraBorderSky: " + this.§7G§;
         _loc1_ += " mCameraBorderGround: " + this.§7G§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7G§ + "\n ");
      }
   }
}
