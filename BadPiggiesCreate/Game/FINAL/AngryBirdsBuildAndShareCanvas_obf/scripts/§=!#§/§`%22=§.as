package §=!#§
{
   import §"v§.§4^§;
   import §"v§.§9"§;
   import §%c§.§=!X§;
   import §+!o§.§]"5§;
   import §5!V§.§!w§;
   import §5!V§.§?!b§;
   import §=!M§.§9!P§;
   
   public class §`"=§
   {
      
      public static const §`!C§:Number = 1.25;
      
      public static const §@a§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §=!X§.§^!N§ * §!w§.§4!-§;
      
      public static const SCREEN_HEIGHT_B2:Number = §=!X§.§5!P§ * §!w§.§4!-§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §<!&§:int = 1500;
      
      public static const § s§:int = 10;
      
      public static const §4!@§:int = 15;
      
      public static const §]!6§:int = 300;
      
      public static const §@!H§:int = 1000;
      
      public static const §4!O§:int = 10000;
      
      public static const § !9§:int = §4!O§ / 50;
      
      public static const §"L§:int = 0;
      
      public static const §9j§:int = 1;
      
      public static const §7!O§:int = 2;
      
      public static const §=%§:int = 3;
      
      public static const §1@§:int = 4;
      
      public static const §0!I§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §&"9§:Number;
      
      public static var §9!e§:Number;
      
      public static var §^Z§:Number;
      
      public static const §;!D§:Number = 2000;
       
      
      private var §>4§:Number = 1.0;
      
      private var §2!x§:Number = 0.2;
      
      protected var §0!X§:Number;
      
      protected var §#!a§:Number;
      
      protected var §8!F§:Number;
      
      public var §9q§:§!w§;
      
      public var §6!w§:Number;
      
      public var §-!§:Number;
      
      private var §2!j§:§-!X§;
      
      private var §-w§:§-!X§;
      
      public var §74§:Number;
      
      public var §1!o§:Number;
      
      public var mDragging:Boolean = false;
      
      public var § var§:Number;
      
      public var §[!x§:Number;
      
      public var §="5§:Number;
      
      public var §4s§:Number;
      
      private var §7!v§:Number;
      
      private var §%G§:§%!>§;
      
      private var §>"6§:§%!>§;
      
      protected var §"!M§:Number = 0;
      
      protected var §1D§:Number = 0;
      
      protected var §8Y§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §]A§:Number = 0;
      
      public var §%!r§:Boolean = true;
      
      public var §!!s§:Number = 0;
      
      public var §%!J§:Number = 0;
      
      public var §&a§:Number = 0;
      
      public var §@?§:Number = 0;
      
      public var §1!l§:Number = 0;
      
      public var §!!@§:Number = 0;
      
      public var §09§:Number = 0;
      
      public var §`h§:Number = 0;
      
      public var §<!z§:Number = 0;
      
      private var §2W§:§%!>§;
      
      public var §'"0§:Number = 0;
      
      private var §3!+§:Number = 0;
      
      private var §!!z§:Number = 0;
      
      private var §&d§:§4^§ = null;
      
      private var §>P§:§4^§ = null;
      
      public function §`"=§(param1:§!w§, param2:§9"§, param3:Number = 1.0)
      {
         this.§2W§ = new §%!>§(0,0,1,false);
         super();
         this.§#!a§ = 0;
         this.§8!F§ = 0;
         this.§9q§ = param1;
         §`"=§.§&"9§ = 1;
         this.§>4§ = Math.max(1,Math.min(2,param3));
         this.§0!X§ = this.§>4§;
         this.§do §(param2);
         if(this.§2!j§ && this.§-w§)
         {
            this.loadCameraBorders();
            this.§"!M§ = this.§2!j§.x - this.§-w§.x;
            this.§1D§ = this.§2!j§.y - this.§-w§.y;
            this.§8Y§ = this.§2!j§.scale - this.§-w§.scale;
            this.§#!a§ = this.§2!j§.x;
            this.§8!F§ = this.§2!j§.y;
            §&"9§ = this.§2!j§.scale * this.§0!X§;
         }
         this.mCurrentCameraSliderLocation = §4!O§;
         this.§%!r§ = true;
         this.§]A§ = §4!O§ / 500;
      }
      
      private static function §2!#§() : Number
      {
         var _loc1_:Number = §=!X§.§@"6§ / §=!X§.§ !4§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §;!0§() : Number
      {
         return §&"9§ * §2!#§();
      }
      
      public function get §0"'§() : Number
      {
         return this.§0!X§;
      }
      
      public function set §0"'§(param1:Number) : void
      {
         this.§0!X§ = param1;
      }
      
      public function get §6!T§() : Number
      {
         return this.§7!v§;
      }
      
      public function §[!f§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§[!x§ - this.§ var§);
      }
      
      public function get §5!s§() : Number
      {
         return this.§>4§;
      }
      
      public function get §<O§() : Number
      {
         return this.§2!x§;
      }
      
      public function §="'§(param1:Number) : void
      {
         this.§0!X§ = param1;
         this.§"!j§();
         this.§!B§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §0!I§)
         {
            return;
         }
         this.goToCastleView();
         this.§!!s§ = 2000;
         this.§^!j§();
         this.§;!+§();
         this.§2!8§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§#!a§ = this.§-w§.x;
         this.§8!F§ = this.§-w§.y;
         this.§%!r§ = false;
         this.§]A§ = §4!O§ / 160000 * param1;
         this.§<a§(§0!I§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§ var§ = this.§-w§.x - SCREEN_WIDTH_B2 / this.§-w§.scale / 2;
         this.§[!x§ = this.§2!j§.x + SCREEN_WIDTH_B2 / this.§2!j§.scale / 2;
         this.§="5§ = this.§9q§.borders.mBorderGround_B2 - 20 * §!w§.§]!U§ * §!w§.§4!-§;
         this.§4s§ = this.§9q§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§[!x§ - this.§ var§);
         this.§7!v§ = this.§4s§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§9q§ = null;
      }
      
      public function §do §(param1:§9"§) : void
      {
         var _loc3_:§4^§ = null;
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
         while(_loc2_ < param1.§[l§)
         {
            _loc3_ = param1.§5!0§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§@!+§(_loc3_);
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
               this.§-w§ = new §-!X§(_loc9_,_loc10_,_loc13_,true);
               this.§>"6§ = new §%!>§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§2!j§ = new §-!X§(_loc9_,_loc10_,_loc13_,false);
               this.§%G§ = new §%!>§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §9!P§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§9"§) : void
      {
         var _loc2_:§4^§ = new §4^§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§-w§.x;
         _loc2_.y = this.§-w§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§-w§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§-w§.scale / 2;
         _loc2_.left = this.§-w§.x - _loc3_;
         _loc2_.right = this.§-w§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§4^§;
         (_loc5_ = new §4^§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§2!j§.x;
         _loc5_.y = this.§2!j§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§2!j§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§2!j§.scale / 2;
         _loc5_.left = this.§2!j§.x - _loc6_;
         _loc5_.right = this.§2!j§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§7!k§();
         param1.§="8§(_loc2_);
         param1.§="8§(_loc5_);
      }
      
      public function §@!+§(param1:§4^§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §=!X§.§^!N§ * 0.5 / _loc2_ * §!w§.§4!-§;
         var _loc4_:Number = param1.y - §=!X§.§5!P§ * 0.5 / _loc2_ * §!w§.§4!-§;
         var _loc5_:Number = _loc3_ + §=!X§.§^!N§ / _loc2_ * §!w§.§4!-§;
         var _loc6_:Number = _loc4_ + §=!X§.§5!P§ / _loc2_ * §!w§.§4!-§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function § N§(param1:§-!X§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§]A§;
         if(_loc3_ >= §4!O§)
         {
            _loc3_ = §4!O§;
            this.§<a§(§"L§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§<a§(§"L§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §7]§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§]A§;
         var _loc4_:Number = -§4!O§ * 0.7;
         if(_loc2_ >= §4!O§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §4!O§;
            }
            this.§]A§ = -this.§]A§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §3Q§(param1:Number) : void
      {
         if(this.mCurrentAction == §0!I§)
         {
            this.§7]§(param1);
         }
         else if(this.mCurrentAction == §9j§)
         {
            this.§ N§(this.§2!j§,param1);
         }
         else if(this.mCurrentAction == §7!O§)
         {
            this.§ N§(this.§-w§,-param1);
         }
         else if(this.mCurrentAction == §=%§)
         {
            this.§%!r§ = true;
         }
         else if(this.mCurrentAction == §1@§)
         {
            this.§5!@§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§&d§)
         {
            this.§#!a§ = this.§&d§.x;
            this.§8!F§ = this.§&d§.y;
            §&"9§ = SCREEN_WIDTH_B2 / (this.§&d§.right - this.§&d§.left);
         }
         else
         {
            this.§"!j§();
            this.§3Q§(param1);
            this.§5#§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§^!j§();
         this.§;!+§();
         this.§2!8§();
      }
      
      private function §![§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>"6§.scale + (this.§%G§.scale - this.§>"6§.scale) * param1;
         var _loc4_:Number = this.§>"6§.x + (this.§%G§.x - this.§>"6§.x) * param1;
         var _loc5_:Number = this.§>"6§.y + (this.§%G§.y - this.§>"6§.y) * param1;
         this.§2W§.x -= (this.§2W§.x - _loc4_) * param2;
         this.§2W§.y -= (this.§2W§.y - _loc5_) * param2;
         this.§2W§.scale -= (this.§2W§.scale - _loc3_) * param2;
      }
      
      protected function §!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"!M§ != 0)
         {
            if(!this.§%!r§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §4!O§;
            this.§![§(_loc3_,param2);
            this.§#!a§ = this.§2W§.x;
            this.§8!F§ = this.§2W§.y;
            §&"9§ = this.§2W§.scale;
         }
      }
      
      public function §5#§(param1:Number, param2:Number) : void
      {
         var _loc5_:§]"5§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §4!O§)
         {
            this.§%!r§ = true;
         }
         if(this.mCurrentAction == §=%§)
         {
            if(!this.§9q§.activeObject)
            {
               this.§<a§(§9j§);
               this.§<!z§ = §@!H§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§9q§.activeObject).getBody().GetPosition().x + (!!_loc5_.§<"1§ ? _loc5_.§<"1§ * §!w§.§4!-§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§7"9§ ? _loc5_.§7"9§ * §!w§.§4!-§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§"!M§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§"!M§ * §4!O§;
               }
               if(param1 >= §4!O§)
               {
                  param1 = §4!O§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §4!O§;
               this.§![§(_loc9_,_loc4_);
               _loc10_ = this.§2W§.x - SCREEN_WIDTH_B2 * 0.5 / this.§2W§.scale;
               _loc11_ = this.§2W§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§2W§.scale;
               _loc12_ = this.§2W§.x + SCREEN_WIDTH_B2 * 0.5 / this.§2W§.scale;
               _loc13_ = this.§2W§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§2W§.scale;
               _loc14_ = 150 * §!w§.§4!-§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§ var§,_loc15_);
               _loc17_ = Math.min(this.§[!x§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§2W§.scale)
               {
                  _loc21_ = this.§2W§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§[!x§)
               {
                  _loc15_ = (_loc17_ = this.§[!x§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§ var§)
                  {
                     _loc15_ = this.§ var§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§ var§)
               {
                  _loc17_ = (_loc15_ = this.§ var§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§[!x§)
                  {
                     _loc17_ = this.§[!x§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§="5§)
               {
                  _loc23_ = this.§="5§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§#!a§ -= (this.§#!a§ - _loc22_) * _loc4_;
               this.§'"0§ -= (this.§'"0§ - _loc21_) * _loc4_;
               §&"9§ = this.§'"0§;
               this.§8!F§ -= (this.§8!F§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§[!x§ || _loc6_ <= this.§ var§)
               {
                  this.§2W§.scale = §&"9§;
                  this.§2W§.x = this.§#!a§;
                  this.§2W§.y = this.§8!F§;
               }
            }
         }
         else
         {
            this.§!B§(param1,_loc4_);
         }
      }
      
      public function §<!i§(param1:Number, param2:Number) : void
      {
         this.§3!+§ = param1;
         this.§!!z§ = param2;
      }
      
      private function §1!`§(param1:§%!>§, param2:§-!X§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §@a§ + (param2.scale - §@a§) * this.§0!X§ * §`"=§.§2!#§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§[!x§ - this.§ var§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§[!x§ - this.§ var§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function § !+§(param1:§%!>§, param2:§-!X§) : Boolean
      {
         var _loc3_:Boolean = this.§1!`§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§ var§ && param1.§7l§)
         {
            param1.x += this.§ var§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§[!x§ && !param1.§7l§)
         {
            param1.x += this.§[!x§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §4!w§(param1:§%!>§, param2:§-!X§) : Number
      {
         return (param1.scale - §@a§) / (§`"=§.§2!#§() * (param2.scale - §@a§));
      }
      
      protected function §"!j§() : void
      {
         this.§ !+§(this.§>"6§,this.§-w§);
         var _loc1_:Number = this.§4!w§(this.§>"6§,this.§-w§);
         this.§ !+§(this.§%G§,this.§2!j§);
         var _loc2_:Number = this.§4!w§(this.§%G§,this.§2!j§);
         this.§0!X§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §^!j§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§9q§.sprite)
         {
            _loc1_ = §=!X§.§3?§() / §=!X§.§@"6§ - §=!X§.§5!P§ >> 1;
            §9!e§ = this.§9q§.sprite.x = §!w§.§[!c§ * ((1 - §`"=§.§;!0§) / 2);
            §^Z§ = this.§9q§.sprite.y = _loc1_ + §!w§.§]!U§ * (1 - §`"=§.§;!0§) * §?!b§.§<m§;
         }
      }
      
      public function §2!8§() : void
      {
         if(this.§9q§.sprite)
         {
            this.§9q§.sprite.scaleX = §;!0§;
            this.§9q§.sprite.scaleY = §;!0§;
         }
      }
      
      public function §;!+§() : void
      {
         var _loc1_:Number = this.§#!a§ / §!w§.§4!-§ + this.§3!+§;
         var _loc2_:Number = this.§8!F§ / §!w§.§4!-§ + this.§!!z§;
         this.§74§ = _loc1_ - §!w§.§[!c§ / 2 * §=!X§.§@"6§ / §=!X§.§?!8§;
         this.§1!o§ = _loc2_ - §!w§.§]!U§ / 2 + §?!b§.§-_§;
         if(this.§9q§.background)
         {
            this.§9q§.background.§%]§(this.§74§,this.§1!o§);
         }
         if(this.§9q§.objects)
         {
            this.§9q§.objects.§%]§(this.§74§,this.§1!o§);
         }
         if(this.§9q§.§[g§)
         {
            this.§9q§.§[g§.§%]§(this.§74§,this.§1!o§,§;!0§);
         }
         if(this.§9q§.slingshot)
         {
            this.§9q§.slingshot.§%]§(this.§74§,this.§1!o§);
         }
         if(this.§9q§.particles)
         {
            this.§9q§.particles.§%]§(this.§74§,this.§1!o§);
         }
      }
      
      protected function §!!D§() : void
      {
         this.§<a§(§1@§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§<!z§ = -1;
         this.§!!D§();
         this.§1!l§ = this.§09§ = this.§&a§ = param1;
         this.§!!@§ = this.§`h§ = this.§@?§ = param2;
         this.§%!J§ = 0;
         this.§2W§.x = this.§#!a§;
         this.§2W§.y = this.§8!F§;
         this.§2W§.scale = §&"9§;
         this.§'"0§ = §&"9§;
         if(Math.abs(this.§%G§.x - this.§>"6§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§#!a§ - this.§>"6§.x) / (this.§%G§.x - this.§>"6§.x) * §4!O§;
         }
         this.mDragging = true;
      }
      
      public function §5!@§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§%!J§ += param1;
         var _loc3_:Number = this.§1!l§ - this.§09§;
         if(this.§"!M§ > 0)
         {
            _loc2_ -= _loc3_ * §!w§.§4!-§ / §;!0§ / this.§"!M§ * §4!O§;
            this.§%!r§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§%!r§ = true;
            }
            if(_loc2_ > §4!O§)
            {
               _loc2_ += (§4!O§ - _loc2_) * 0.3;
               this.§%!r§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§09§ = this.§1!l§;
      }
      
      protected function §#%§() : Boolean
      {
         return this.mCurrentAction == §1@§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§1!l§ = param1;
            this.§!!@§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §1@§)
         {
            this.§<a§(§"L§);
            if(param1 > 0)
            {
               this.§1!l§ = param1;
            }
            _loc3_ = Math.abs(this.§1!l§ - this.§&a§);
            if(this.§%!J§ < §<!&§ && _loc3_ >= § s§ && _loc3_ >= §4!@§ * this.§%!J§ / 1000)
            {
               if(this.§1!l§ < this.§&a§)
               {
                  this.§<a§(§9j§);
               }
               else
               {
                  this.§<a§(§7!O§);
               }
               this.§]A§ = _loc3_ / this.§%!J§ * 10;
               this.§%!r§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§%!r§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §4!O§)
               {
                  this.§%!r§ = true;
               }
            }
            else if(this.§%!J§ < §]!6§)
            {
               this.§6"4§();
               this.§]A§ = §4!O§ / (§4!O§ / 500);
               this.§%!r§ = true;
            }
            else
            {
               this.§5!@§(0);
               this.§0t§(0);
               this.§]A§ = §4!O§ / (§4!O§ / 500);
               this.§%!r§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §6"4§() : void
      {
         if(this.mCurrentAction == §9j§)
         {
            this.§<a§(§7!O§);
         }
         else if(this.mCurrentAction == §7!O§)
         {
            this.§<a§(§9j§);
         }
         else if(this.mCurrentCameraSliderLocation >= §4!O§ / 2)
         {
            this.§<a§(§7!O§);
         }
         else if(this.mCurrentCameraSliderLocation <= §4!O§ / 2)
         {
            this.§<a§(§9j§);
         }
      }
      
      public function §0t§(param1:int) : void
      {
         this.§<!z§ = param1;
         if(this.mCurrentCameraSliderLocation < §4!O§ / 2)
         {
            this.§<a§(§7!O§);
         }
         else
         {
            this.§<a§(§9j§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§<a§(§7!O§);
      }
      
      public function goToCastleView() : void
      {
         this.§<a§(§9j§);
      }
      
      public function §<a§(param1:int) : void
      {
         this.§2W§.x = this.§#!a§;
         this.§2W§.y = this.§8!F§;
         this.§2W§.scale = §&"9§;
         this.§'"0§ = §&"9§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §4!O§)
         {
            return true;
         }
         if(this.mCurrentAction == §9j§)
         {
            return true;
         }
         return false;
      }
      
      public function §;!w§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §7!O§)
         {
            return true;
         }
         return false;
      }
      
      public function § c§(param1:§4^§) : void
      {
         this.§&d§ = param1;
         if(this.§&d§ != null)
         {
            this.§>P§ = new §4^§();
            this.§>P§.x = this.§#!a§;
            this.§>P§.y = this.§8!F§;
            this.§>P§.scale = §&"9§;
         }
         else
         {
            this.§#!a§ = this.§>P§.x;
            this.§8!F§ = this.§>P§.y;
            §&"9§ = this.§>P§.scale;
            this.§>P§ = null;
         }
      }
      
      protected function §<!N§() : void
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
         var _loc3_:Number = this.§0!X§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§<O§,Math.min(this.§5!s§,_loc3_));
         if(_loc3_ != this.§0!X§)
         {
            this.§0!X§ = _loc3_;
            this.§<!N§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§0"'§ - this.§<O§) / (this.§5!s§ - this.§<O§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§0"'§ = Math.min(Math.max(param1,0),1) * (this.§5!s§ - this.§<O§) + this.§<O§;
      }
      
      public function §"N§() : void
      {
         this.§0!X§ = Math.max(this.§0!X§ - 0.5,0.5);
      }
      
      public function §1!9§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§0!X§;
         _loc1_ += " mXcenterB2: " + this.§#!a§;
         _loc1_ += " mYcenterB2: " + this.§8!F§;
         _loc1_ += " mXcenterB2target: " + this.§0!X§;
         _loc1_ += "\n mYcenterB2target: " + this.§0!X§;
         _loc1_ += " mXcenterB2previous: " + this.§0!X§;
         _loc1_ += " mYcenterB2previous: " + this.§0!X§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§0!X§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§0!X§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§0!X§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§0!X§;
         _loc1_ += " mTargetScale: " + this.§0!X§;
         _loc1_ += " mTargetScalePrevious: " + this.§0!X§;
         _loc1_ += " mCastleCameraX: " + this.§0!X§;
         _loc1_ += "\n mCastleCameraY: " + this.§0!X§;
         _loc1_ += " mCastleCameraScale: " + this.§0!X§;
         _loc1_ += " mBirdCameraX: " + this.§0!X§;
         _loc1_ += " mBirdCameraY: " + this.§0!X§;
         _loc1_ += " mBirdCameraScale: " + this.§0!X§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§0!X§;
         _loc1_ += " mScreenTopScroll: " + this.§0!X§;
         _loc1_ += " mDragging: " + this.§0!X§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§0!X§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§0!X§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§0!X§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§0!X§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§0!X§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§0!X§;
         _loc1_ += " mDraggingTimer: " + this.§0!X§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§0!X§;
         _loc1_ += " mCameraBorderRight: " + this.§0!X§;
         _loc1_ += " mCameraBorderSky: " + this.§0!X§;
         _loc1_ += " mCameraBorderGround: " + this.§0!X§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§0!X§ + "\n ");
      }
   }
}
