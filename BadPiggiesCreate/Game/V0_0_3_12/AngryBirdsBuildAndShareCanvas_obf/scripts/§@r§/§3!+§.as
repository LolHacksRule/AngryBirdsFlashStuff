package §@r§
{
   import §"p§.§@8§;
   import §0E§.§#O§;
   import §0E§.§9!Y§;
   import §4!#§.§60§;
   import §7"1§.§%W§;
   import §[B§.§"d§;
   import §[B§.§,!B§;
   
   public class §3!+§
   {
      
      public static const §>!>§:Number = 1.25;
      
      public static const §#!^§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §%W§.§0<§ * §"d§.§2!]§;
      
      public static const SCREEN_HEIGHT_B2:Number = §%W§.§-!'§ * §"d§.§2!]§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §#V§:int = 1500;
      
      public static const §@!Y§:int = 10;
      
      public static const §1!w§:int = 15;
      
      public static const §-s§:int = 300;
      
      public static const §-2§:int = 1000;
      
      public static const §2o§:int = 10000;
      
      public static const §2!J§:int = §2o§ / 50;
      
      public static const §1"4§:int = 0;
      
      public static const §1!,§:int = 1;
      
      public static const §>!A§:int = 2;
      
      public static const §6!U§:int = 3;
      
      public static const §`y§:int = 4;
      
      public static const §]!K§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §>!X§:Number;
      
      public static var §%!h§:Number;
      
      public static var §]!@§:Number;
      
      public static const §,N§:Number = 2000;
       
      
      private var §&!u§:Number = 1.0;
      
      private var §#!O§:Number = 0.2;
      
      protected var §<x§:Number;
      
      protected var §3r§:Number;
      
      protected var §^!<§:Number;
      
      public var §]!3§:§"d§;
      
      public var §<!W§:Number;
      
      public var §<!T§:Number;
      
      private var §4L§:§!!e§;
      
      private var §9!E§:§!!e§;
      
      public var §#!A§:Number;
      
      public var §?9§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §&",§:Number;
      
      public var §=!U§:Number;
      
      public var §9!m§:Number;
      
      public var §<!H§:Number;
      
      private var §'!g§:Number;
      
      private var §6Q§:§=!k§;
      
      private var §#v§:§=!k§;
      
      protected var §3!E§:Number = 0;
      
      protected var §?!s§:Number = 0;
      
      protected var § "6§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §>$§:Number = 0;
      
      public var §^"=§:Boolean = true;
      
      public var §4!v§:Number = 0;
      
      public var §+g§:Number = 0;
      
      public var §`"-§:Number = 0;
      
      public var §5,§:Number = 0;
      
      public var §!_§:Number = 0;
      
      public var §6H§:Number = 0;
      
      public var §&"-§:Number = 0;
      
      public var §,!=§:Number = 0;
      
      public var §2!&§:Number = 0;
      
      private var §!!9§:§=!k§;
      
      public var §-!0§:Number = 0;
      
      private var §]!P§:Number = 0;
      
      private var §02§:Number = 0;
      
      private var §4!!§:§9!Y§ = null;
      
      private var §&!h§:§9!Y§ = null;
      
      public function §3!+§(param1:§"d§, param2:§#O§, param3:Number = 1.0)
      {
         this.§!!9§ = new §=!k§(0,0,1,false);
         super();
         this.§3r§ = 0;
         this.§^!<§ = 0;
         this.§]!3§ = param1;
         §3!+§.§>!X§ = 1;
         this.§&!u§ = Math.max(1,Math.min(2,param3));
         this.§<x§ = this.§&!u§;
         this.§[">§(param2);
         if(this.§4L§ && this.§9!E§)
         {
            this.loadCameraBorders();
            this.§3!E§ = this.§4L§.x - this.§9!E§.x;
            this.§?!s§ = this.§4L§.y - this.§9!E§.y;
            this.§ "6§ = this.§4L§.scale - this.§9!E§.scale;
            this.§3r§ = this.§4L§.x;
            this.§^!<§ = this.§4L§.y;
            §>!X§ = this.§4L§.scale * this.§<x§;
         }
         this.mCurrentCameraSliderLocation = §2o§;
         this.§^"=§ = true;
         this.§>$§ = §2o§ / 500;
      }
      
      private static function §`!L§() : Number
      {
         var _loc1_:Number = §%W§.§@!N§ / §%W§.§`N§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §2"8§() : Number
      {
         return §>!X§ * §`!L§();
      }
      
      public function get §?h§() : Number
      {
         return this.§<x§;
      }
      
      public function set §?h§(param1:Number) : void
      {
         this.§<x§ = param1;
      }
      
      public function get §9!>§() : Number
      {
         return this.§'!g§;
      }
      
      public function §>d§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§=!U§ - this.§&",§);
      }
      
      public function get §=!3§() : Number
      {
         return this.§&!u§;
      }
      
      public function get §`!I§() : Number
      {
         return this.§#!O§;
      }
      
      public function §1!x§(param1:Number) : void
      {
         this.§<x§ = param1;
         this.§4#§();
         this.§&!?§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §]!K§)
         {
            return;
         }
         this.goToCastleView();
         this.§4!v§ = 2000;
         this.§ !I§();
         this.§-!n§();
         this.§<h§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§3r§ = this.§9!E§.x;
         this.§^!<§ = this.§9!E§.y;
         this.§^"=§ = false;
         this.§>$§ = §2o§ / 160000 * param1;
         this.§3!s§(§]!K§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§&",§ = this.§9!E§.x - SCREEN_WIDTH_B2 / this.§9!E§.scale / 2;
         this.§=!U§ = this.§4L§.x + SCREEN_WIDTH_B2 / this.§4L§.scale / 2;
         this.§9!m§ = this.§]!3§.borders.mBorderGround_B2 - 20 * §"d§.§catch§ * §"d§.§2!]§;
         this.§<!H§ = this.§]!3§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§=!U§ - this.§&",§);
         this.§'!g§ = this.§<!H§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]!3§ = null;
      }
      
      public function §[">§(param1:§#O§) : void
      {
         var _loc3_:§9!Y§ = null;
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
         while(_loc2_ < param1.§8G§)
         {
            _loc3_ = param1.§="2§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§]!W§(_loc3_);
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
               this.§9!E§ = new §!!e§(_loc9_,_loc10_,_loc13_,true);
               this.§#v§ = new §=!k§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§4L§ = new §!!e§(_loc9_,_loc10_,_loc13_,false);
               this.§6Q§ = new §=!k§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §@8§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§#O§) : void
      {
         var _loc2_:§9!Y§ = new §9!Y§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§9!E§.x;
         _loc2_.y = this.§9!E§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§9!E§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§9!E§.scale / 2;
         _loc2_.left = this.§9!E§.x - _loc3_;
         _loc2_.right = this.§9!E§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§9!Y§;
         (_loc5_ = new §9!Y§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§4L§.x;
         _loc5_.y = this.§4L§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§4L§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§4L§.scale / 2;
         _loc5_.left = this.§4L§.x - _loc6_;
         _loc5_.right = this.§4L§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§8!e§();
         param1.§0!7§(_loc2_);
         param1.§0!7§(_loc5_);
      }
      
      public function §]!W§(param1:§9!Y§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §%W§.§0<§ * 0.5 / _loc2_ * §"d§.§2!]§;
         var _loc4_:Number = param1.y - §%W§.§-!'§ * 0.5 / _loc2_ * §"d§.§2!]§;
         var _loc5_:Number = _loc3_ + §%W§.§0<§ / _loc2_ * §"d§.§2!]§;
         var _loc6_:Number = _loc4_ + §%W§.§-!'§ / _loc2_ * §"d§.§2!]§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §!"%§(param1:§!!e§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§>$§;
         if(_loc3_ >= §2o§)
         {
            _loc3_ = §2o§;
            this.§3!s§(§1"4§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§3!s§(§1"4§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §6C§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§>$§;
         var _loc4_:Number = -§2o§ * 0.7;
         if(_loc2_ >= §2o§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §2o§;
            }
            this.§>$§ = -this.§>$§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §1!%§(param1:Number) : void
      {
         if(this.mCurrentAction == §]!K§)
         {
            this.§6C§(param1);
         }
         else if(this.mCurrentAction == §1!,§)
         {
            this.§!"%§(this.§4L§,param1);
         }
         else if(this.mCurrentAction == §>!A§)
         {
            this.§!"%§(this.§9!E§,-param1);
         }
         else if(this.mCurrentAction == §6!U§)
         {
            this.§^"=§ = true;
         }
         else if(this.mCurrentAction == §`y§)
         {
            this.§>-§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§4!!§)
         {
            this.§3r§ = this.§4!!§.x;
            this.§^!<§ = this.§4!!§.y;
            §>!X§ = SCREEN_WIDTH_B2 / (this.§4!!§.right - this.§4!!§.left);
         }
         else
         {
            this.§4#§();
            this.§1!%§(param1);
            this.§<!8§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§ !I§();
         this.§-!n§();
         this.§<h§();
      }
      
      private function §28§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#v§.scale + (this.§6Q§.scale - this.§#v§.scale) * param1;
         var _loc4_:Number = this.§#v§.x + (this.§6Q§.x - this.§#v§.x) * param1;
         var _loc5_:Number = this.§#v§.y + (this.§6Q§.y - this.§#v§.y) * param1;
         this.§!!9§.x -= (this.§!!9§.x - _loc4_) * param2;
         this.§!!9§.y -= (this.§!!9§.y - _loc5_) * param2;
         this.§!!9§.scale -= (this.§!!9§.scale - _loc3_) * param2;
      }
      
      protected function §&!?§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§3!E§ != 0)
         {
            if(!this.§^"=§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §2o§;
            this.§28§(_loc3_,param2);
            this.§3r§ = this.§!!9§.x;
            this.§^!<§ = this.§!!9§.y;
            §>!X§ = this.§!!9§.scale;
         }
      }
      
      public function §<!8§(param1:Number, param2:Number) : void
      {
         var _loc5_:§60§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §2o§)
         {
            this.§^"=§ = true;
         }
         if(this.mCurrentAction == §6!U§)
         {
            if(!this.§]!3§.activeObject)
            {
               this.§3!s§(§1!,§);
               this.§2!&§ = §-2§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]!3§.activeObject).getBody().GetPosition().x + (!!_loc5_.§=7§ ? _loc5_.§=7§ * §"d§.§2!]§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§<!X§ ? _loc5_.§<!X§ * §"d§.§2!]§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§3!E§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§3!E§ * §2o§;
               }
               if(param1 >= §2o§)
               {
                  param1 = §2o§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §2o§;
               this.§28§(_loc9_,_loc4_);
               _loc10_ = this.§!!9§.x - SCREEN_WIDTH_B2 * 0.5 / this.§!!9§.scale;
               _loc11_ = this.§!!9§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§!!9§.scale;
               _loc12_ = this.§!!9§.x + SCREEN_WIDTH_B2 * 0.5 / this.§!!9§.scale;
               _loc13_ = this.§!!9§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§!!9§.scale;
               _loc14_ = 150 * §"d§.§2!]§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§&",§,_loc15_);
               _loc17_ = Math.min(this.§=!U§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§!!9§.scale)
               {
                  _loc21_ = this.§!!9§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§=!U§)
               {
                  _loc15_ = (_loc17_ = this.§=!U§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§&",§)
                  {
                     _loc15_ = this.§&",§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§&",§)
               {
                  _loc17_ = (_loc15_ = this.§&",§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§=!U§)
                  {
                     _loc17_ = this.§=!U§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§9!m§)
               {
                  _loc23_ = this.§9!m§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§3r§ -= (this.§3r§ - _loc22_) * _loc4_;
               this.§-!0§ -= (this.§-!0§ - _loc21_) * _loc4_;
               §>!X§ = this.§-!0§;
               this.§^!<§ -= (this.§^!<§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§=!U§ || _loc6_ <= this.§&",§)
               {
                  this.§!!9§.scale = §>!X§;
                  this.§!!9§.x = this.§3r§;
                  this.§!!9§.y = this.§^!<§;
               }
            }
         }
         else
         {
            this.§&!?§(param1,_loc4_);
         }
      }
      
      public function §04§(param1:Number, param2:Number) : void
      {
         this.§]!P§ = param1;
         this.§02§ = param2;
      }
      
      private function §'!<§(param1:§=!k§, param2:§!!e§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §#!^§ + (param2.scale - §#!^§) * this.§<x§ * §3!+§.§`!L§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§=!U§ - this.§&",§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§=!U§ - this.§&",§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §-E§(param1:§=!k§, param2:§!!e§) : Boolean
      {
         var _loc3_:Boolean = this.§'!<§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§&",§ && param1.§]""§)
         {
            param1.x += this.§&",§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§=!U§ && !param1.§]""§)
         {
            param1.x += this.§=!U§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §&!v§(param1:§=!k§, param2:§!!e§) : Number
      {
         return (param1.scale - §#!^§) / (§3!+§.§`!L§() * (param2.scale - §#!^§));
      }
      
      protected function §4#§() : void
      {
         this.§-E§(this.§#v§,this.§9!E§);
         var _loc1_:Number = this.§&!v§(this.§#v§,this.§9!E§);
         this.§-E§(this.§6Q§,this.§4L§);
         var _loc2_:Number = this.§&!v§(this.§6Q§,this.§4L§);
         this.§<x§ = Math.min(_loc1_,_loc2_);
      }
      
      public function § !I§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]!3§.sprite)
         {
            _loc1_ = §%W§.§>^§() / §%W§.§@!N§ - §%W§.§-!'§ >> 1;
            §%!h§ = this.§]!3§.sprite.x = §"d§.§]k§ * ((1 - §3!+§.§2"8§) / 2);
            §]!@§ = this.§]!3§.sprite.y = _loc1_ + §"d§.§catch§ * (1 - §3!+§.§2"8§) * §,!B§.§3!k§;
         }
      }
      
      public function §<h§() : void
      {
         if(this.§]!3§.sprite)
         {
            this.§]!3§.sprite.scaleX = §2"8§;
            this.§]!3§.sprite.scaleY = §2"8§;
         }
      }
      
      public function §-!n§() : void
      {
         var _loc1_:Number = this.§3r§ / §"d§.§2!]§ + this.§]!P§;
         var _loc2_:Number = this.§^!<§ / §"d§.§2!]§ + this.§02§;
         this.§#!A§ = _loc1_ - §"d§.§]k§ / 2 * §%W§.§@!N§ / §%W§.§+!u§;
         this.§?9§ = _loc2_ - §"d§.§catch§ / 2 + §,!B§.§,!i§;
         if(this.§]!3§.background)
         {
            this.§]!3§.background.§4K§(this.§#!A§,this.§?9§);
         }
         if(this.§]!3§.objects)
         {
            this.§]!3§.objects.§4K§(this.§#!A§,this.§?9§);
         }
         if(this.§]!3§.§5L§)
         {
            this.§]!3§.§5L§.§4K§(this.§#!A§,this.§?9§,§2"8§);
         }
         if(this.§]!3§.slingshot)
         {
            this.§]!3§.slingshot.§4K§(this.§#!A§,this.§?9§);
         }
         if(this.§]!3§.particles)
         {
            this.§]!3§.particles.§4K§(this.§#!A§,this.§?9§);
         }
      }
      
      protected function §+l§() : void
      {
         this.§3!s§(§`y§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§2!&§ = -1;
         this.§+l§();
         this.§!_§ = this.§&"-§ = this.§`"-§ = param1;
         this.§6H§ = this.§,!=§ = this.§5,§ = param2;
         this.§+g§ = 0;
         this.§!!9§.x = this.§3r§;
         this.§!!9§.y = this.§^!<§;
         this.§!!9§.scale = §>!X§;
         this.§-!0§ = §>!X§;
         if(Math.abs(this.§6Q§.x - this.§#v§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§3r§ - this.§#v§.x) / (this.§6Q§.x - this.§#v§.x) * §2o§;
         }
         this.mDragging = true;
      }
      
      public function §>-§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§+g§ += param1;
         var _loc3_:Number = this.§!_§ - this.§&"-§;
         if(this.§3!E§ > 0)
         {
            _loc2_ -= _loc3_ * §"d§.§2!]§ / §2"8§ / this.§3!E§ * §2o§;
            this.§^"=§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§^"=§ = true;
            }
            if(_loc2_ > §2o§)
            {
               _loc2_ += (§2o§ - _loc2_) * 0.3;
               this.§^"=§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§&"-§ = this.§!_§;
      }
      
      protected function §^!J§() : Boolean
      {
         return this.mCurrentAction == §`y§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§!_§ = param1;
            this.§6H§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §`y§)
         {
            this.§3!s§(§1"4§);
            if(param1 > 0)
            {
               this.§!_§ = param1;
            }
            _loc3_ = Math.abs(this.§!_§ - this.§`"-§);
            if(this.§+g§ < §#V§ && _loc3_ >= §@!Y§ && _loc3_ >= §1!w§ * this.§+g§ / 1000)
            {
               if(this.§!_§ < this.§`"-§)
               {
                  this.§3!s§(§1!,§);
               }
               else
               {
                  this.§3!s§(§>!A§);
               }
               this.§>$§ = _loc3_ / this.§+g§ * 10;
               this.§^"=§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§^"=§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §2o§)
               {
                  this.§^"=§ = true;
               }
            }
            else if(this.§+g§ < §-s§)
            {
               this.§'h§();
               this.§>$§ = §2o§ / (§2o§ / 500);
               this.§^"=§ = true;
            }
            else
            {
               this.§>-§(0);
               this.§"F§(0);
               this.§>$§ = §2o§ / (§2o§ / 500);
               this.§^"=§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'h§() : void
      {
         if(this.mCurrentAction == §1!,§)
         {
            this.§3!s§(§>!A§);
         }
         else if(this.mCurrentAction == §>!A§)
         {
            this.§3!s§(§1!,§);
         }
         else if(this.mCurrentCameraSliderLocation >= §2o§ / 2)
         {
            this.§3!s§(§>!A§);
         }
         else if(this.mCurrentCameraSliderLocation <= §2o§ / 2)
         {
            this.§3!s§(§1!,§);
         }
      }
      
      public function §"F§(param1:int) : void
      {
         this.§2!&§ = param1;
         if(this.mCurrentCameraSliderLocation < §2o§ / 2)
         {
            this.§3!s§(§>!A§);
         }
         else
         {
            this.§3!s§(§1!,§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§3!s§(§>!A§);
      }
      
      public function goToCastleView() : void
      {
         this.§3!s§(§1!,§);
      }
      
      public function §3!s§(param1:int) : void
      {
         this.§!!9§.x = this.§3r§;
         this.§!!9§.y = this.§^!<§;
         this.§!!9§.scale = §>!X§;
         this.§-!0§ = §>!X§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §2o§)
         {
            return true;
         }
         if(this.mCurrentAction == §1!,§)
         {
            return true;
         }
         return false;
      }
      
      public function §[!k§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §>!A§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!0§(param1:§9!Y§) : void
      {
         this.§4!!§ = param1;
         if(this.§4!!§ != null)
         {
            this.§&!h§ = new §9!Y§();
            this.§&!h§.x = this.§3r§;
            this.§&!h§.y = this.§^!<§;
            this.§&!h§.scale = §>!X§;
         }
         else
         {
            this.§3r§ = this.§&!h§.x;
            this.§^!<§ = this.§&!h§.y;
            §>!X§ = this.§&!h§.scale;
            this.§&!h§ = null;
         }
      }
      
      protected function §=H§() : void
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
         var _loc3_:Number = this.§<x§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§`!I§,Math.min(this.§=!3§,_loc3_));
         if(_loc3_ != this.§<x§)
         {
            this.§<x§ = _loc3_;
            this.§=H§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§?h§ - this.§`!I§) / (this.§=!3§ - this.§`!I§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§?h§ = Math.min(Math.max(param1,0),1) * (this.§=!3§ - this.§`!I§) + this.§`!I§;
      }
      
      public function §0!A§() : void
      {
         this.§<x§ = Math.max(this.§<x§ - 0.5,0.5);
      }
      
      public function §;!'§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§<x§;
         _loc1_ += " mXcenterB2: " + this.§3r§;
         _loc1_ += " mYcenterB2: " + this.§^!<§;
         _loc1_ += " mXcenterB2target: " + this.§<x§;
         _loc1_ += "\n mYcenterB2target: " + this.§<x§;
         _loc1_ += " mXcenterB2previous: " + this.§<x§;
         _loc1_ += " mYcenterB2previous: " + this.§<x§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§<x§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§<x§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§<x§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§<x§;
         _loc1_ += " mTargetScale: " + this.§<x§;
         _loc1_ += " mTargetScalePrevious: " + this.§<x§;
         _loc1_ += " mCastleCameraX: " + this.§<x§;
         _loc1_ += "\n mCastleCameraY: " + this.§<x§;
         _loc1_ += " mCastleCameraScale: " + this.§<x§;
         _loc1_ += " mBirdCameraX: " + this.§<x§;
         _loc1_ += " mBirdCameraY: " + this.§<x§;
         _loc1_ += " mBirdCameraScale: " + this.§<x§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§<x§;
         _loc1_ += " mScreenTopScroll: " + this.§<x§;
         _loc1_ += " mDragging: " + this.§<x§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§<x§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§<x§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§<x§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§<x§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§<x§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§<x§;
         _loc1_ += " mDraggingTimer: " + this.§<x§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§<x§;
         _loc1_ += " mCameraBorderRight: " + this.§<x§;
         _loc1_ += " mCameraBorderSky: " + this.§<x§;
         _loc1_ += " mCameraBorderGround: " + this.§<x§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§<x§ + "\n ");
      }
   }
}
