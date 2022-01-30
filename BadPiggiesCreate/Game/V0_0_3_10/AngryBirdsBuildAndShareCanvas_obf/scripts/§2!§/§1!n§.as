package §2!§
{
   import §1U§.§"!V§;
   import §4!s§.§%I§;
   import §4!s§.§'i§;
   import §7M§.§+R§;
   import §7M§.§?!p§;
   import §9!G§.§]!e§;
   import §="§.§`T§;
   
   public class §1!n§
   {
      
      public static const §'!I§:Number = 1.25;
      
      public static const §>!+§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §"!V§.§<!8§ * §%I§.§9"4§;
      
      public static const SCREEN_HEIGHT_B2:Number = §"!V§.§[V§ * §%I§.§9"4§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §0!G§:int = 1500;
      
      public static const §%m§:int = 10;
      
      public static const §!!d§:int = 15;
      
      public static const §+"1§:int = 300;
      
      public static const § !Q§:int = 1000;
      
      public static const §!"0§:int = 10000;
      
      public static const §`Z§:int = §!"0§ / 50;
      
      public static const §!!X§:int = 0;
      
      public static const §-"'§:int = 1;
      
      public static const §8!j§:int = 2;
      
      public static const §8b§:int = 3;
      
      public static const §]=§:int = 4;
      
      public static const §5!j§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var § !X§:Number;
      
      public static var §#C§:Number;
      
      public static var §@"7§:Number;
      
      public static const §[! §:Number = 2000;
       
      
      private var §0l§:Number = 1.0;
      
      private var §3!]§:Number = 0.2;
      
      protected var §#!s§:Number;
      
      protected var §6! §:Number;
      
      protected var §^N§:Number;
      
      public var §,!T§:§%I§;
      
      public var §<!>§:Number;
      
      public var §8!Z§:Number;
      
      private var §;_§:§^n§;
      
      private var §<!E§:§^n§;
      
      public var §!"&§:Number;
      
      public var §?!9§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §break§:Number;
      
      public var §?!v§:Number;
      
      public var §-!t§:Number;
      
      public var §-!p§:Number;
      
      private var §[!0§:Number;
      
      private var §9!h§:§!!V§;
      
      private var §+B§:§!!V§;
      
      protected var §6O§:Number = 0;
      
      protected var §2"4§:Number = 0;
      
      protected var §#!o§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § !n§:Number = 0;
      
      public var §?5§:Boolean = true;
      
      public var §7k§:Number = 0;
      
      public var §8!V§:Number = 0;
      
      public var §="%§:Number = 0;
      
      public var §?"0§:Number = 0;
      
      public var §-L§:Number = 0;
      
      public var §@!a§:Number = 0;
      
      public var §`6§:Number = 0;
      
      public var §6![§:Number = 0;
      
      public var §@]§:Number = 0;
      
      private var §@!R§:§!!V§;
      
      public var §#7§:Number = 0;
      
      private var §?!6§:Number = 0;
      
      private var §+!H§:Number = 0;
      
      private var §5""§:§?!p§ = null;
      
      private var §9!p§:§?!p§ = null;
      
      public function §1!n§(param1:§%I§, param2:§+R§, param3:Number = 1.0)
      {
         this.§@!R§ = new §!!V§(0,0,1,false);
         super();
         this.§6! § = 0;
         this.§^N§ = 0;
         this.§,!T§ = param1;
         §1!n§.§ !X§ = 1;
         this.§0l§ = Math.max(1,Math.min(2,param3));
         this.§#!s§ = this.§0l§;
         this.§-1§(param2);
         if(this.§;_§ && this.§<!E§)
         {
            this.loadCameraBorders();
            this.§6O§ = this.§;_§.x - this.§<!E§.x;
            this.§2"4§ = this.§;_§.y - this.§<!E§.y;
            this.§#!o§ = this.§;_§.scale - this.§<!E§.scale;
            this.§6! § = this.§;_§.x;
            this.§^N§ = this.§;_§.y;
            § !X§ = this.§;_§.scale * this.§#!s§;
         }
         this.mCurrentCameraSliderLocation = §!"0§;
         this.§?5§ = true;
         this.§ !n§ = §!"0§ / 500;
      }
      
      private static function §5v§() : Number
      {
         var _loc1_:Number = §"!V§.§4-§ / §"!V§.§8!e§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §#!%§() : Number
      {
         return § !X§ * §5v§();
      }
      
      public function get § !y§() : Number
      {
         return this.§#!s§;
      }
      
      public function set § !y§(param1:Number) : void
      {
         this.§#!s§ = param1;
      }
      
      public function get §3!-§() : Number
      {
         return this.§[!0§;
      }
      
      public function § !L§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§?!v§ - this.§break§);
      }
      
      public function get §"!y§() : Number
      {
         return this.§0l§;
      }
      
      public function get § !=§() : Number
      {
         return this.§3!]§;
      }
      
      public function §%v§(param1:Number) : void
      {
         this.§#!s§ = param1;
         this.§1P§();
         this.§>!#§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §5!j§)
         {
            return;
         }
         this.goToCastleView();
         this.§7k§ = 2000;
         this.§]!§();
         this.§5"§();
         this.§9!V§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§6! § = this.§<!E§.x;
         this.§^N§ = this.§<!E§.y;
         this.§?5§ = false;
         this.§ !n§ = §!"0§ / 160000 * param1;
         this.§9!r§(§5!j§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§break§ = this.§<!E§.x - SCREEN_WIDTH_B2 / this.§<!E§.scale / 2;
         this.§?!v§ = this.§;_§.x + SCREEN_WIDTH_B2 / this.§;_§.scale / 2;
         this.§-!t§ = this.§,!T§.borders.mBorderGround_B2 - 20 * §%I§.§5"1§ * §%I§.§9"4§;
         this.§-!p§ = this.§,!T§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§?!v§ - this.§break§);
         this.§[!0§ = this.§-!p§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§,!T§ = null;
      }
      
      public function §-1§(param1:§+R§) : void
      {
         var _loc3_:§?!p§ = null;
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
         while(_loc2_ < param1.§^"%§)
         {
            _loc3_ = param1.§+!V§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§>!9§(_loc3_);
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
               this.§<!E§ = new §^n§(_loc9_,_loc10_,_loc13_,true);
               this.§+B§ = new §!!V§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§;_§ = new §^n§(_loc9_,_loc10_,_loc13_,false);
               this.§9!h§ = new §!!V§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §]!e§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§+R§) : void
      {
         var _loc2_:§?!p§ = new §?!p§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§<!E§.x;
         _loc2_.y = this.§<!E§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§<!E§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§<!E§.scale / 2;
         _loc2_.left = this.§<!E§.x - _loc3_;
         _loc2_.right = this.§<!E§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§?!p§;
         (_loc5_ = new §?!p§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§;_§.x;
         _loc5_.y = this.§;_§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§;_§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§;_§.scale / 2;
         _loc5_.left = this.§;_§.x - _loc6_;
         _loc5_.right = this.§;_§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§0"5§();
         param1.§;"#§(_loc2_);
         param1.§;"#§(_loc5_);
      }
      
      public function §>!9§(param1:§?!p§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §"!V§.§<!8§ * 0.5 / _loc2_ * §%I§.§9"4§;
         var _loc4_:Number = param1.y - §"!V§.§[V§ * 0.5 / _loc2_ * §%I§.§9"4§;
         var _loc5_:Number = _loc3_ + §"!V§.§<!8§ / _loc2_ * §%I§.§9"4§;
         var _loc6_:Number = _loc4_ + §"!V§.§[V§ / _loc2_ * §%I§.§9"4§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §9G§(param1:§^n§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§ !n§;
         if(_loc3_ >= §!"0§)
         {
            _loc3_ = §!"0§;
            this.§9!r§(§!!X§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§9!r§(§!!X§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §8!g§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§ !n§;
         var _loc4_:Number = -§!"0§ * 0.7;
         if(_loc2_ >= §!"0§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §!"0§;
            }
            this.§ !n§ = -this.§ !n§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §8"2§(param1:Number) : void
      {
         if(this.mCurrentAction == §5!j§)
         {
            this.§8!g§(param1);
         }
         else if(this.mCurrentAction == §-"'§)
         {
            this.§9G§(this.§;_§,param1);
         }
         else if(this.mCurrentAction == §8!j§)
         {
            this.§9G§(this.§<!E§,-param1);
         }
         else if(this.mCurrentAction == §8b§)
         {
            this.§?5§ = true;
         }
         else if(this.mCurrentAction == §]=§)
         {
            this.§^B§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§5""§)
         {
            this.§6! § = this.§5""§.x;
            this.§^N§ = this.§5""§.y;
            § !X§ = SCREEN_WIDTH_B2 / (this.§5""§.right - this.§5""§.left);
         }
         else
         {
            this.§1P§();
            this.§8"2§(param1);
            this.§,o§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§]!§();
         this.§5"§();
         this.§9!V§();
      }
      
      private function §7!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+B§.scale + (this.§9!h§.scale - this.§+B§.scale) * param1;
         var _loc4_:Number = this.§+B§.x + (this.§9!h§.x - this.§+B§.x) * param1;
         var _loc5_:Number = this.§+B§.y + (this.§9!h§.y - this.§+B§.y) * param1;
         this.§@!R§.x -= (this.§@!R§.x - _loc4_) * param2;
         this.§@!R§.y -= (this.§@!R§.y - _loc5_) * param2;
         this.§@!R§.scale -= (this.§@!R§.scale - _loc3_) * param2;
      }
      
      protected function §>!#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§6O§ != 0)
         {
            if(!this.§?5§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §!"0§;
            this.§7!Q§(_loc3_,param2);
            this.§6! § = this.§@!R§.x;
            this.§^N§ = this.§@!R§.y;
            § !X§ = this.§@!R§.scale;
         }
      }
      
      public function §,o§(param1:Number, param2:Number) : void
      {
         var _loc5_:§`T§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §!"0§)
         {
            this.§?5§ = true;
         }
         if(this.mCurrentAction == §8b§)
         {
            if(!this.§,!T§.activeObject)
            {
               this.§9!r§(§-"'§);
               this.§@]§ = § !Q§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§,!T§.activeObject).getBody().GetPosition().x + (!!_loc5_.§7S§ ? _loc5_.§7S§ * §%I§.§9"4§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§2d§ ? _loc5_.§2d§ * §%I§.§9"4§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§6O§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§6O§ * §!"0§;
               }
               if(param1 >= §!"0§)
               {
                  param1 = §!"0§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §!"0§;
               this.§7!Q§(_loc9_,_loc4_);
               _loc10_ = this.§@!R§.x - SCREEN_WIDTH_B2 * 0.5 / this.§@!R§.scale;
               _loc11_ = this.§@!R§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§@!R§.scale;
               _loc12_ = this.§@!R§.x + SCREEN_WIDTH_B2 * 0.5 / this.§@!R§.scale;
               _loc13_ = this.§@!R§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§@!R§.scale;
               _loc14_ = 150 * §%I§.§9"4§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§break§,_loc15_);
               _loc17_ = Math.min(this.§?!v§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§@!R§.scale)
               {
                  _loc21_ = this.§@!R§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§?!v§)
               {
                  _loc15_ = (_loc17_ = this.§?!v§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§break§)
                  {
                     _loc15_ = this.§break§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§break§)
               {
                  _loc17_ = (_loc15_ = this.§break§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§?!v§)
                  {
                     _loc17_ = this.§?!v§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§-!t§)
               {
                  _loc23_ = this.§-!t§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§6! § -= (this.§6! § - _loc22_) * _loc4_;
               this.§#7§ -= (this.§#7§ - _loc21_) * _loc4_;
               § !X§ = this.§#7§;
               this.§^N§ -= (this.§^N§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§?!v§ || _loc6_ <= this.§break§)
               {
                  this.§@!R§.scale = § !X§;
                  this.§@!R§.x = this.§6! §;
                  this.§@!R§.y = this.§^N§;
               }
            }
         }
         else
         {
            this.§>!#§(param1,_loc4_);
         }
      }
      
      public function §[o§(param1:Number, param2:Number) : void
      {
         this.§?!6§ = param1;
         this.§+!H§ = param2;
      }
      
      private function §+!>§(param1:§!!V§, param2:§^n§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §>!+§ + (param2.scale - §>!+§) * this.§#!s§ * §1!n§.§5v§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§?!v§ - this.§break§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§?!v§ - this.§break§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §3!d§(param1:§!!V§, param2:§^n§) : Boolean
      {
         var _loc3_:Boolean = this.§+!>§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§break§ && param1.§]!p§)
         {
            param1.x += this.§break§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§?!v§ && !param1.§]!p§)
         {
            param1.x += this.§?!v§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §0"7§(param1:§!!V§, param2:§^n§) : Number
      {
         return (param1.scale - §>!+§) / (§1!n§.§5v§() * (param2.scale - §>!+§));
      }
      
      protected function §1P§() : void
      {
         this.§3!d§(this.§+B§,this.§<!E§);
         var _loc1_:Number = this.§0"7§(this.§+B§,this.§<!E§);
         this.§3!d§(this.§9!h§,this.§;_§);
         var _loc2_:Number = this.§0"7§(this.§9!h§,this.§;_§);
         this.§#!s§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §]!§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§,!T§.sprite)
         {
            _loc1_ = §"!V§.§@!w§() / §"!V§.§4-§ - §"!V§.§[V§ >> 1;
            §#C§ = this.§,!T§.sprite.x = §%I§.§ v§ * ((1 - §1!n§.§#!%§) / 2);
            §@"7§ = this.§,!T§.sprite.y = _loc1_ + §%I§.§5"1§ * (1 - §1!n§.§#!%§) * §'i§.§;q§;
         }
      }
      
      public function §9!V§() : void
      {
         if(this.§,!T§.sprite)
         {
            this.§,!T§.sprite.scaleX = §#!%§;
            this.§,!T§.sprite.scaleY = §#!%§;
         }
      }
      
      public function §5"§() : void
      {
         var _loc1_:Number = this.§6! § / §%I§.§9"4§ + this.§?!6§;
         var _loc2_:Number = this.§^N§ / §%I§.§9"4§ + this.§+!H§;
         this.§!"&§ = _loc1_ - §%I§.§ v§ / 2 * §"!V§.§4-§ / §"!V§.§,!w§;
         this.§?!9§ = _loc2_ - §%I§.§5"1§ / 2 + §'i§.§;1§;
         if(this.§,!T§.background)
         {
            this.§,!T§.background.§54§(this.§!"&§,this.§?!9§);
         }
         if(this.§,!T§.objects)
         {
            this.§,!T§.objects.§54§(this.§!"&§,this.§?!9§);
         }
         if(this.§,!T§.§6P§)
         {
            this.§,!T§.§6P§.§54§(this.§!"&§,this.§?!9§,§#!%§);
         }
         if(this.§,!T§.slingshot)
         {
            this.§,!T§.slingshot.§54§(this.§!"&§,this.§?!9§);
         }
         if(this.§,!T§.particles)
         {
            this.§,!T§.particles.§54§(this.§!"&§,this.§?!9§);
         }
      }
      
      protected function §"$§() : void
      {
         this.§9!r§(§]=§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§@]§ = -1;
         this.§"$§();
         this.§-L§ = this.§`6§ = this.§="%§ = param1;
         this.§@!a§ = this.§6![§ = this.§?"0§ = param2;
         this.§8!V§ = 0;
         this.§@!R§.x = this.§6! §;
         this.§@!R§.y = this.§^N§;
         this.§@!R§.scale = § !X§;
         this.§#7§ = § !X§;
         if(Math.abs(this.§9!h§.x - this.§+B§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§6! § - this.§+B§.x) / (this.§9!h§.x - this.§+B§.x) * §!"0§;
         }
         this.mDragging = true;
      }
      
      public function §^B§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§8!V§ += param1;
         var _loc3_:Number = this.§-L§ - this.§`6§;
         if(this.§6O§ > 0)
         {
            _loc2_ -= _loc3_ * §%I§.§9"4§ / §#!%§ / this.§6O§ * §!"0§;
            this.§?5§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§?5§ = true;
            }
            if(_loc2_ > §!"0§)
            {
               _loc2_ += (§!"0§ - _loc2_) * 0.3;
               this.§?5§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§`6§ = this.§-L§;
      }
      
      protected function §?m§() : Boolean
      {
         return this.mCurrentAction == §]=§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§-L§ = param1;
            this.§@!a§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §]=§)
         {
            this.§9!r§(§!!X§);
            if(param1 > 0)
            {
               this.§-L§ = param1;
            }
            _loc3_ = Math.abs(this.§-L§ - this.§="%§);
            if(this.§8!V§ < §0!G§ && _loc3_ >= §%m§ && _loc3_ >= §!!d§ * this.§8!V§ / 1000)
            {
               if(this.§-L§ < this.§="%§)
               {
                  this.§9!r§(§-"'§);
               }
               else
               {
                  this.§9!r§(§8!j§);
               }
               this.§ !n§ = _loc3_ / this.§8!V§ * 10;
               this.§?5§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§?5§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §!"0§)
               {
                  this.§?5§ = true;
               }
            }
            else if(this.§8!V§ < §+"1§)
            {
               this.§;v§();
               this.§ !n§ = §!"0§ / (§!"0§ / 500);
               this.§?5§ = true;
            }
            else
            {
               this.§^B§(0);
               this.§!!a§(0);
               this.§ !n§ = §!"0§ / (§!"0§ / 500);
               this.§?5§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §;v§() : void
      {
         if(this.mCurrentAction == §-"'§)
         {
            this.§9!r§(§8!j§);
         }
         else if(this.mCurrentAction == §8!j§)
         {
            this.§9!r§(§-"'§);
         }
         else if(this.mCurrentCameraSliderLocation >= §!"0§ / 2)
         {
            this.§9!r§(§8!j§);
         }
         else if(this.mCurrentCameraSliderLocation <= §!"0§ / 2)
         {
            this.§9!r§(§-"'§);
         }
      }
      
      public function §!!a§(param1:int) : void
      {
         this.§@]§ = param1;
         if(this.mCurrentCameraSliderLocation < §!"0§ / 2)
         {
            this.§9!r§(§8!j§);
         }
         else
         {
            this.§9!r§(§-"'§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§9!r§(§8!j§);
      }
      
      public function goToCastleView() : void
      {
         this.§9!r§(§-"'§);
      }
      
      public function §9!r§(param1:int) : void
      {
         this.§@!R§.x = this.§6! §;
         this.§@!R§.y = this.§^N§;
         this.§@!R§.scale = § !X§;
         this.§#7§ = § !X§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §!"0§)
         {
            return true;
         }
         if(this.mCurrentAction == §-"'§)
         {
            return true;
         }
         return false;
      }
      
      public function §7!I§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §8!j§)
         {
            return true;
         }
         return false;
      }
      
      public function §3!>§(param1:§?!p§) : void
      {
         this.§5""§ = param1;
         if(this.§5""§ != null)
         {
            this.§9!p§ = new §?!p§();
            this.§9!p§.x = this.§6! §;
            this.§9!p§.y = this.§^N§;
            this.§9!p§.scale = § !X§;
         }
         else
         {
            this.§6! § = this.§9!p§.x;
            this.§^N§ = this.§9!p§.y;
            § !X§ = this.§9!p§.scale;
            this.§9!p§ = null;
         }
      }
      
      protected function §2!r§() : void
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
         var _loc3_:Number = this.§#!s§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§ !=§,Math.min(this.§"!y§,_loc3_));
         if(_loc3_ != this.§#!s§)
         {
            this.§#!s§ = _loc3_;
            this.§2!r§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§ !y§ - this.§ !=§) / (this.§"!y§ - this.§ !=§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§ !y§ = Math.min(Math.max(param1,0),1) * (this.§"!y§ - this.§ !=§) + this.§ !=§;
      }
      
      public function §3!b§() : void
      {
         this.§#!s§ = Math.max(this.§#!s§ - 0.5,0.5);
      }
      
      public function §3d§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§#!s§;
         _loc1_ += " mXcenterB2: " + this.§6! §;
         _loc1_ += " mYcenterB2: " + this.§^N§;
         _loc1_ += " mXcenterB2target: " + this.§#!s§;
         _loc1_ += "\n mYcenterB2target: " + this.§#!s§;
         _loc1_ += " mXcenterB2previous: " + this.§#!s§;
         _loc1_ += " mYcenterB2previous: " + this.§#!s§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§#!s§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§#!s§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§#!s§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§#!s§;
         _loc1_ += " mTargetScale: " + this.§#!s§;
         _loc1_ += " mTargetScalePrevious: " + this.§#!s§;
         _loc1_ += " mCastleCameraX: " + this.§#!s§;
         _loc1_ += "\n mCastleCameraY: " + this.§#!s§;
         _loc1_ += " mCastleCameraScale: " + this.§#!s§;
         _loc1_ += " mBirdCameraX: " + this.§#!s§;
         _loc1_ += " mBirdCameraY: " + this.§#!s§;
         _loc1_ += " mBirdCameraScale: " + this.§#!s§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§#!s§;
         _loc1_ += " mScreenTopScroll: " + this.§#!s§;
         _loc1_ += " mDragging: " + this.§#!s§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§#!s§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§#!s§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§#!s§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§#!s§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§#!s§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§#!s§;
         _loc1_ += " mDraggingTimer: " + this.§#!s§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§#!s§;
         _loc1_ += " mCameraBorderRight: " + this.§#!s§;
         _loc1_ += " mCameraBorderSky: " + this.§#!s§;
         _loc1_ += " mCameraBorderGround: " + this.§#!s§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§#!s§ + "\n ");
      }
   }
}
