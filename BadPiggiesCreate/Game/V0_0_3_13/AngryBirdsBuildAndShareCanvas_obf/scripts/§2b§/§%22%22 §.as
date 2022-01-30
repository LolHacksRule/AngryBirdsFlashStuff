package §2b§
{
   import §&W§.§7L§;
   import §0s§.§8!e§;
   import §0s§.§];§;
   import §8!E§.§?!X§;
   import §8!E§.§[I§;
   import §=!<§.§5!U§;
   import §?"&§.§"!q§;
   
   public class §"" §
   {
      
      public static const §7![§:Number = 1.25;
      
      public static const §%j§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §5!U§.§`!_§ * §?!X§.§57§;
      
      public static const SCREEN_HEIGHT_B2:Number = §5!U§.§?_§ * §?!X§.§57§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §8C§:int = 1500;
      
      public static const §?q§:int = 10;
      
      public static const §5!i§:int = 15;
      
      public static const §-";§:int = 300;
      
      public static const §>P§:int = 1000;
      
      public static const §?!F§:int = 10000;
      
      public static const §3t§:int = §?!F§ / 50;
      
      public static const §;!U§:int = 0;
      
      public static const §3S§:int = 1;
      
      public static const §6!'§:int = 2;
      
      public static const §0!I§:int = 3;
      
      public static const §'!8§:int = 4;
      
      public static const §+!U§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §""0§:Number;
      
      public static var §?!n§:Number;
      
      public static var §3!?§:Number;
      
      public static const § y§:Number = 2000;
       
      
      private var § !g§:Number = 1.0;
      
      private var §>G§:Number = 0.2;
      
      protected var §3]§:Number;
      
      protected var §^!U§:Number;
      
      protected var §17§:Number;
      
      public var §7!;§:§?!X§;
      
      public var §!!+§:Number;
      
      public var §0"§:Number;
      
      private var §['§:§=!,§;
      
      private var §<W§:§=!,§;
      
      public var §^!"§:Number;
      
      public var §5!=§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §8x§:Number;
      
      public var §0!_§:Number;
      
      public var §[4§:Number;
      
      public var §2!d§:Number;
      
      private var §^"8§:Number;
      
      private var §[!T§:§7h§;
      
      private var §!d§:§7h§;
      
      protected var §;w§:Number = 0;
      
      protected var §]"0§:Number = 0;
      
      protected var §`!q§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §2!y§:Number = 0;
      
      public var §>4§:Boolean = true;
      
      public var §]!a§:Number = 0;
      
      public var §[!%§:Number = 0;
      
      public var §#@§:Number = 0;
      
      public var §'!'§:Number = 0;
      
      public var §6!J§:Number = 0;
      
      public var §2!K§:Number = 0;
      
      public var §%!]§:Number = 0;
      
      public var §`!I§:Number = 0;
      
      public var §+!'§:Number = 0;
      
      private var §8!W§:§7h§;
      
      public var §7D§:Number = 0;
      
      private var §2!Q§:Number = 0;
      
      private var §#!G§:Number = 0;
      
      private var §;f§:§8!e§ = null;
      
      private var §@"'§:§8!e§ = null;
      
      public function §"" §(param1:§?!X§, param2:§];§, param3:Number = 1.0)
      {
         this.§8!W§ = new §7h§(0,0,1,false);
         super();
         this.§^!U§ = 0;
         this.§17§ = 0;
         this.§7!;§ = param1;
         §"" §.§""0§ = 1;
         this.§ !g§ = Math.max(1,Math.min(2,param3));
         this.§3]§ = this.§ !g§;
         this.§7`§(param2);
         if(this.§['§ && this.§<W§)
         {
            this.loadCameraBorders();
            this.§;w§ = this.§['§.x - this.§<W§.x;
            this.§]"0§ = this.§['§.y - this.§<W§.y;
            this.§`!q§ = this.§['§.scale - this.§<W§.scale;
            this.§^!U§ = this.§['§.x;
            this.§17§ = this.§['§.y;
            §""0§ = this.§['§.scale * this.§3]§;
         }
         this.mCurrentCameraSliderLocation = §?!F§;
         this.§>4§ = true;
         this.§2!y§ = §?!F§ / 500;
      }
      
      private static function §>"-§() : Number
      {
         var _loc1_:Number = §5!U§.§=k§ / §5!U§.§#"1§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §>!-§() : Number
      {
         return §""0§ * §>"-§();
      }
      
      public function get §`!5§() : Number
      {
         return this.§3]§;
      }
      
      public function set §`!5§(param1:Number) : void
      {
         this.§3]§ = param1;
      }
      
      public function get §[6§() : Number
      {
         return this.§^"8§;
      }
      
      public function § b§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§0!_§ - this.§8x§);
      }
      
      public function get §try §() : Number
      {
         return this.§ !g§;
      }
      
      public function get §@!x§() : Number
      {
         return this.§>G§;
      }
      
      public function §@'§(param1:Number) : void
      {
         this.§3]§ = param1;
         this.§ in§();
         this.§?"!§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §+!U§)
         {
            return;
         }
         this.goToCastleView();
         this.§]!a§ = 2000;
         this.§4[§();
         this.§8v§();
         this.§7!c§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§^!U§ = this.§<W§.x;
         this.§17§ = this.§<W§.y;
         this.§>4§ = false;
         this.§2!y§ = §?!F§ / 160000 * param1;
         this.§ A§(§+!U§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§8x§ = this.§<W§.x - SCREEN_WIDTH_B2 / this.§<W§.scale / 2;
         this.§0!_§ = this.§['§.x + SCREEN_WIDTH_B2 / this.§['§.scale / 2;
         this.§[4§ = this.§7!;§.borders.mBorderGround_B2 - 20 * §?!X§.§6e§ * §?!X§.§57§;
         this.§2!d§ = this.§7!;§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§0!_§ - this.§8x§);
         this.§^"8§ = this.§2!d§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§7!;§ = null;
      }
      
      public function §7`§(param1:§];§) : void
      {
         var _loc3_:§8!e§ = null;
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
         while(_loc2_ < param1.§0!x§)
         {
            _loc3_ = param1.§1!B§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§]N§(_loc3_);
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
               this.§<W§ = new §=!,§(_loc9_,_loc10_,_loc13_,true);
               this.§!d§ = new §7h§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§['§ = new §=!,§(_loc9_,_loc10_,_loc13_,false);
               this.§[!T§ = new §7h§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §7L§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§];§) : void
      {
         var _loc2_:§8!e§ = new §8!e§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§<W§.x;
         _loc2_.y = this.§<W§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§<W§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§<W§.scale / 2;
         _loc2_.left = this.§<W§.x - _loc3_;
         _loc2_.right = this.§<W§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§8!e§;
         (_loc5_ = new §8!e§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§['§.x;
         _loc5_.y = this.§['§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§['§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§['§.scale / 2;
         _loc5_.left = this.§['§.x - _loc6_;
         _loc5_.right = this.§['§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§5!&§();
         param1.§&e§(_loc2_);
         param1.§&e§(_loc5_);
      }
      
      public function §]N§(param1:§8!e§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §5!U§.§`!_§ * 0.5 / _loc2_ * §?!X§.§57§;
         var _loc4_:Number = param1.y - §5!U§.§?_§ * 0.5 / _loc2_ * §?!X§.§57§;
         var _loc5_:Number = _loc3_ + §5!U§.§`!_§ / _loc2_ * §?!X§.§57§;
         var _loc6_:Number = _loc4_ + §5!U§.§?_§ / _loc2_ * §?!X§.§57§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §>! §(param1:§=!,§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§2!y§;
         if(_loc3_ >= §?!F§)
         {
            _loc3_ = §?!F§;
            this.§ A§(§;!U§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§ A§(§;!U§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §7!>§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§2!y§;
         var _loc4_:Number = -§?!F§ * 0.7;
         if(_loc2_ >= §?!F§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §?!F§;
            }
            this.§2!y§ = -this.§2!y§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §-!8§(param1:Number) : void
      {
         if(this.mCurrentAction == §+!U§)
         {
            this.§7!>§(param1);
         }
         else if(this.mCurrentAction == §3S§)
         {
            this.§>! §(this.§['§,param1);
         }
         else if(this.mCurrentAction == §6!'§)
         {
            this.§>! §(this.§<W§,-param1);
         }
         else if(this.mCurrentAction == §0!I§)
         {
            this.§>4§ = true;
         }
         else if(this.mCurrentAction == §'!8§)
         {
            this.§`!^§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§;f§)
         {
            this.§^!U§ = this.§;f§.x;
            this.§17§ = this.§;f§.y;
            §""0§ = SCREEN_WIDTH_B2 / (this.§;f§.right - this.§;f§.left);
         }
         else
         {
            this.§ in§();
            this.§-!8§(param1);
            this.§0$§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§4[§();
         this.§8v§();
         this.§7!c§();
      }
      
      private function §7"'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!d§.scale + (this.§[!T§.scale - this.§!d§.scale) * param1;
         var _loc4_:Number = this.§!d§.x + (this.§[!T§.x - this.§!d§.x) * param1;
         var _loc5_:Number = this.§!d§.y + (this.§[!T§.y - this.§!d§.y) * param1;
         this.§8!W§.x -= (this.§8!W§.x - _loc4_) * param2;
         this.§8!W§.y -= (this.§8!W§.y - _loc5_) * param2;
         this.§8!W§.scale -= (this.§8!W§.scale - _loc3_) * param2;
      }
      
      protected function §?"!§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;w§ != 0)
         {
            if(!this.§>4§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §?!F§;
            this.§7"'§(_loc3_,param2);
            this.§^!U§ = this.§8!W§.x;
            this.§17§ = this.§8!W§.y;
            §""0§ = this.§8!W§.scale;
         }
      }
      
      public function §0$§(param1:Number, param2:Number) : void
      {
         var _loc5_:§"!q§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §?!F§)
         {
            this.§>4§ = true;
         }
         if(this.mCurrentAction == §0!I§)
         {
            if(!this.§7!;§.activeObject)
            {
               this.§ A§(§3S§);
               this.§+!'§ = §>P§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§7!;§.activeObject).getBody().GetPosition().x + (!!_loc5_.§?!0§ ? _loc5_.§?!0§ * §?!X§.§57§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§&!x§ ? _loc5_.§&!x§ * §?!X§.§57§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§;w§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§;w§ * §?!F§;
               }
               if(param1 >= §?!F§)
               {
                  param1 = §?!F§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §?!F§;
               this.§7"'§(_loc9_,_loc4_);
               _loc10_ = this.§8!W§.x - SCREEN_WIDTH_B2 * 0.5 / this.§8!W§.scale;
               _loc11_ = this.§8!W§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§8!W§.scale;
               _loc12_ = this.§8!W§.x + SCREEN_WIDTH_B2 * 0.5 / this.§8!W§.scale;
               _loc13_ = this.§8!W§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§8!W§.scale;
               _loc14_ = 150 * §?!X§.§57§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§8x§,_loc15_);
               _loc17_ = Math.min(this.§0!_§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§8!W§.scale)
               {
                  _loc21_ = this.§8!W§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§0!_§)
               {
                  _loc15_ = (_loc17_ = this.§0!_§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§8x§)
                  {
                     _loc15_ = this.§8x§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§8x§)
               {
                  _loc17_ = (_loc15_ = this.§8x§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§0!_§)
                  {
                     _loc17_ = this.§0!_§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§[4§)
               {
                  _loc23_ = this.§[4§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§^!U§ -= (this.§^!U§ - _loc22_) * _loc4_;
               this.§7D§ -= (this.§7D§ - _loc21_) * _loc4_;
               §""0§ = this.§7D§;
               this.§17§ -= (this.§17§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§0!_§ || _loc6_ <= this.§8x§)
               {
                  this.§8!W§.scale = §""0§;
                  this.§8!W§.x = this.§^!U§;
                  this.§8!W§.y = this.§17§;
               }
            }
         }
         else
         {
            this.§?"!§(param1,_loc4_);
         }
      }
      
      public function §4@§(param1:Number, param2:Number) : void
      {
         this.§2!Q§ = param1;
         this.§#!G§ = param2;
      }
      
      private function §7K§(param1:§7h§, param2:§=!,§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §%j§ + (param2.scale - §%j§) * this.§3]§ * §"" §.§>"-§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§0!_§ - this.§8x§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§0!_§ - this.§8x§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §+!a§(param1:§7h§, param2:§=!,§) : Boolean
      {
         var _loc3_:Boolean = this.§7K§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§8x§ && param1.§2&§)
         {
            param1.x += this.§8x§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§0!_§ && !param1.§2&§)
         {
            param1.x += this.§0!_§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §-!D§(param1:§7h§, param2:§=!,§) : Number
      {
         return (param1.scale - §%j§) / (§"" §.§>"-§() * (param2.scale - §%j§));
      }
      
      protected function § in§() : void
      {
         this.§+!a§(this.§!d§,this.§<W§);
         var _loc1_:Number = this.§-!D§(this.§!d§,this.§<W§);
         this.§+!a§(this.§[!T§,this.§['§);
         var _loc2_:Number = this.§-!D§(this.§[!T§,this.§['§);
         this.§3]§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §4[§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§7!;§.sprite)
         {
            _loc1_ = §5!U§.§%" §() / §5!U§.§=k§ - §5!U§.§?_§ >> 1;
            §?!n§ = this.§7!;§.sprite.x = §?!X§.§4J§ * ((1 - §"" §.§>!-§) / 2);
            §3!?§ = this.§7!;§.sprite.y = _loc1_ + §?!X§.§6e§ * (1 - §"" §.§>!-§) * §[I§.§<8§;
         }
      }
      
      public function §7!c§() : void
      {
         if(this.§7!;§.sprite)
         {
            this.§7!;§.sprite.scaleX = §>!-§;
            this.§7!;§.sprite.scaleY = §>!-§;
         }
      }
      
      public function §8v§() : void
      {
         var _loc1_:Number = this.§^!U§ / §?!X§.§57§ + this.§2!Q§;
         var _loc2_:Number = this.§17§ / §?!X§.§57§ + this.§#!G§;
         this.§^!"§ = _loc1_ - §?!X§.§4J§ / 2 * §5!U§.§=k§ / §5!U§.§&!%§;
         this.§5!=§ = _loc2_ - §?!X§.§6e§ / 2 + §[I§.§6l§;
         if(this.§7!;§.background)
         {
            this.§7!;§.background.§=!0§(this.§^!"§,this.§5!=§);
         }
         if(this.§7!;§.objects)
         {
            this.§7!;§.objects.§=!0§(this.§^!"§,this.§5!=§);
         }
         if(this.§7!;§.§1!-§)
         {
            this.§7!;§.§1!-§.§=!0§(this.§^!"§,this.§5!=§,§>!-§);
         }
         if(this.§7!;§.slingshot)
         {
            this.§7!;§.slingshot.§=!0§(this.§^!"§,this.§5!=§);
         }
         if(this.§7!;§.particles)
         {
            this.§7!;§.particles.§=!0§(this.§^!"§,this.§5!=§);
         }
      }
      
      protected function §>l§() : void
      {
         this.§ A§(§'!8§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§+!'§ = -1;
         this.§>l§();
         this.§6!J§ = this.§%!]§ = this.§#@§ = param1;
         this.§2!K§ = this.§`!I§ = this.§'!'§ = param2;
         this.§[!%§ = 0;
         this.§8!W§.x = this.§^!U§;
         this.§8!W§.y = this.§17§;
         this.§8!W§.scale = §""0§;
         this.§7D§ = §""0§;
         if(Math.abs(this.§[!T§.x - this.§!d§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§^!U§ - this.§!d§.x) / (this.§[!T§.x - this.§!d§.x) * §?!F§;
         }
         this.mDragging = true;
      }
      
      public function §`!^§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[!%§ += param1;
         var _loc3_:Number = this.§6!J§ - this.§%!]§;
         if(this.§;w§ > 0)
         {
            _loc2_ -= _loc3_ * §?!X§.§57§ / §>!-§ / this.§;w§ * §?!F§;
            this.§>4§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§>4§ = true;
            }
            if(_loc2_ > §?!F§)
            {
               _loc2_ += (§?!F§ - _loc2_) * 0.3;
               this.§>4§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§%!]§ = this.§6!J§;
      }
      
      protected function §5,§() : Boolean
      {
         return this.mCurrentAction == §'!8§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§6!J§ = param1;
            this.§2!K§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §'!8§)
         {
            this.§ A§(§;!U§);
            if(param1 > 0)
            {
               this.§6!J§ = param1;
            }
            _loc3_ = Math.abs(this.§6!J§ - this.§#@§);
            if(this.§[!%§ < §8C§ && _loc3_ >= §?q§ && _loc3_ >= §5!i§ * this.§[!%§ / 1000)
            {
               if(this.§6!J§ < this.§#@§)
               {
                  this.§ A§(§3S§);
               }
               else
               {
                  this.§ A§(§6!'§);
               }
               this.§2!y§ = _loc3_ / this.§[!%§ * 10;
               this.§>4§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§>4§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §?!F§)
               {
                  this.§>4§ = true;
               }
            }
            else if(this.§[!%§ < §-";§)
            {
               this.§8"0§();
               this.§2!y§ = §?!F§ / (§?!F§ / 500);
               this.§>4§ = true;
            }
            else
            {
               this.§`!^§(0);
               this.§&!]§(0);
               this.§2!y§ = §?!F§ / (§?!F§ / 500);
               this.§>4§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §8"0§() : void
      {
         if(this.mCurrentAction == §3S§)
         {
            this.§ A§(§6!'§);
         }
         else if(this.mCurrentAction == §6!'§)
         {
            this.§ A§(§3S§);
         }
         else if(this.mCurrentCameraSliderLocation >= §?!F§ / 2)
         {
            this.§ A§(§6!'§);
         }
         else if(this.mCurrentCameraSliderLocation <= §?!F§ / 2)
         {
            this.§ A§(§3S§);
         }
      }
      
      public function §&!]§(param1:int) : void
      {
         this.§+!'§ = param1;
         if(this.mCurrentCameraSliderLocation < §?!F§ / 2)
         {
            this.§ A§(§6!'§);
         }
         else
         {
            this.§ A§(§3S§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§ A§(§6!'§);
      }
      
      public function goToCastleView() : void
      {
         this.§ A§(§3S§);
      }
      
      public function § A§(param1:int) : void
      {
         this.§8!W§.x = this.§^!U§;
         this.§8!W§.y = this.§17§;
         this.§8!W§.scale = §""0§;
         this.§7D§ = §""0§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §?!F§)
         {
            return true;
         }
         if(this.mCurrentAction == §3S§)
         {
            return true;
         }
         return false;
      }
      
      public function §@O§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §6!'§)
         {
            return true;
         }
         return false;
      }
      
      public function §,"#§(param1:§8!e§) : void
      {
         this.§;f§ = param1;
         if(this.§;f§ != null)
         {
            this.§@"'§ = new §8!e§();
            this.§@"'§.x = this.§^!U§;
            this.§@"'§.y = this.§17§;
            this.§@"'§.scale = §""0§;
         }
         else
         {
            this.§^!U§ = this.§@"'§.x;
            this.§17§ = this.§@"'§.y;
            §""0§ = this.§@"'§.scale;
            this.§@"'§ = null;
         }
      }
      
      protected function §`"4§() : void
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
         var _loc3_:Number = this.§3]§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§@!x§,Math.min(this.§try §,_loc3_));
         if(_loc3_ != this.§3]§)
         {
            this.§3]§ = _loc3_;
            this.§`"4§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§`!5§ - this.§@!x§) / (this.§try § - this.§@!x§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§`!5§ = Math.min(Math.max(param1,0),1) * (this.§try § - this.§@!x§) + this.§@!x§;
      }
      
      public function §1!y§() : void
      {
         this.§3]§ = Math.max(this.§3]§ - 0.5,0.5);
      }
      
      public function §#!B§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§3]§;
         _loc1_ += " mXcenterB2: " + this.§^!U§;
         _loc1_ += " mYcenterB2: " + this.§17§;
         _loc1_ += " mXcenterB2target: " + this.§3]§;
         _loc1_ += "\n mYcenterB2target: " + this.§3]§;
         _loc1_ += " mXcenterB2previous: " + this.§3]§;
         _loc1_ += " mYcenterB2previous: " + this.§3]§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§3]§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§3]§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§3]§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§3]§;
         _loc1_ += " mTargetScale: " + this.§3]§;
         _loc1_ += " mTargetScalePrevious: " + this.§3]§;
         _loc1_ += " mCastleCameraX: " + this.§3]§;
         _loc1_ += "\n mCastleCameraY: " + this.§3]§;
         _loc1_ += " mCastleCameraScale: " + this.§3]§;
         _loc1_ += " mBirdCameraX: " + this.§3]§;
         _loc1_ += " mBirdCameraY: " + this.§3]§;
         _loc1_ += " mBirdCameraScale: " + this.§3]§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§3]§;
         _loc1_ += " mScreenTopScroll: " + this.§3]§;
         _loc1_ += " mDragging: " + this.§3]§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§3]§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§3]§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§3]§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§3]§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§3]§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§3]§;
         _loc1_ += " mDraggingTimer: " + this.§3]§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§3]§;
         _loc1_ += " mCameraBorderRight: " + this.§3]§;
         _loc1_ += " mCameraBorderSky: " + this.§3]§;
         _loc1_ += " mCameraBorderGround: " + this.§3]§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§3]§ + "\n ");
      }
   }
}
