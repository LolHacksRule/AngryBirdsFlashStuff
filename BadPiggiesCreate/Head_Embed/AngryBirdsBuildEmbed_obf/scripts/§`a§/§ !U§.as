package §`a§
{
   import § !r§.§`![§;
   import §-!0§.§!!s§;
   import §-!0§.§2! §;
   import §<!<§.§7E§;
   import §<!<§.§8!t§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   
   public class § !U§
   {
      
      public static const §0u§:Number = 1.25;
      
      public static const §-`§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §'!V§.§&d§ * §7E§.§8!'§;
      
      public static const SCREEN_HEIGHT_B2:Number = §'!V§.§6k§ * §7E§.§8!'§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §>3§:int = 1500;
      
      public static const §+k§:int = 10;
      
      public static const §!^§:int = 15;
      
      public static const §;!E§:int = 300;
      
      public static const §^,§:int = 1000;
      
      public static const §&n§:int = 10000;
      
      public static const § !g§:int = §&n§ / 50;
      
      public static const §`!F§:int = 0;
      
      public static const §+!<§:int = 1;
      
      public static const §#![§:int = 2;
      
      public static const §?!d§:int = 3;
      
      public static const set:int = 4;
      
      public static const §'!b§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §?C§:Number;
      
      public static var §@B§:Number;
      
      public static var §'G§:Number;
      
      public static const §4?§:Number = 2000;
       
      
      private var §&!i§:Number = 1.0;
      
      private var §;!`§:Number = 0.2;
      
      protected var §"Y§:Number;
      
      protected var §^T§:Number;
      
      protected var §<9§:Number;
      
      public var §-n§:§7E§;
      
      public var §3!p§:Number;
      
      public var §4!d§:Number;
      
      private var §+!R§:§9!2§;
      
      private var §0!!§:§9!2§;
      
      public var §-!=§:Number;
      
      public var §-!j§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §%S§:Number;
      
      public var §7O§:Number;
      
      public var §1%§:Number;
      
      public var §;![§:Number;
      
      private var §6!3§:Number;
      
      private var §=!7§:§&W§;
      
      private var §-9§:§&W§;
      
      protected var §2!d§:Number = 0;
      
      protected var §+!a§:Number = 0;
      
      protected var §#!3§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1l§:Number = 0;
      
      public var §5u§:Boolean = true;
      
      public var §'!W§:Number = 0;
      
      public var §?3§:Number = 0;
      
      public var §2!c§:Number = 0;
      
      public var §5c§:Number = 0;
      
      public var §0!G§:Number = 0;
      
      public var §2!,§:Number = 0;
      
      public var §[!r§:Number = 0;
      
      public var §%#§:Number = 0;
      
      public var §[!0§:Number = 0;
      
      private var §&!g§:§&W§;
      
      public var §`!P§:Number = 0;
      
      private var §,!A§:Number = 0;
      
      private var §<!;§:Number = 0;
      
      private var §,M§:§!!s§ = null;
      
      private var §1!,§:§!!s§ = null;
      
      public function § !U§(param1:§7E§, param2:§2! §, param3:Number = 1.0)
      {
         this.§&!g§ = new §&W§(0,0,1,false);
         super();
         this.§^T§ = 0;
         this.§<9§ = 0;
         this.§-n§ = param1;
         § !U§.§?C§ = 1;
         this.§&!i§ = Math.max(1,Math.min(2,param3));
         this.§"Y§ = this.§&!i§;
         this.§!!+§(param2);
         if(this.§+!R§ && this.§0!!§)
         {
            this.loadCameraBorders();
            this.§2!d§ = this.§+!R§.x - this.§0!!§.x;
            this.§+!a§ = this.§+!R§.y - this.§0!!§.y;
            this.§#!3§ = this.§+!R§.scale - this.§0!!§.scale;
            this.§^T§ = this.§+!R§.x;
            this.§<9§ = this.§+!R§.y;
            §?C§ = this.§+!R§.scale * this.§"Y§;
         }
         this.mCurrentCameraSliderLocation = §&n§;
         this.§5u§ = true;
         this.§1l§ = §&n§ / 500;
      }
      
      private static function §;!"§() : Number
      {
         var _loc1_:Number = §'!V§.§9r§ / §'!V§.§'A§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §#!-§() : Number
      {
         return §?C§ * §;!"§();
      }
      
      public function get §[!+§() : Number
      {
         return this.§"Y§;
      }
      
      public function set §[!+§(param1:Number) : void
      {
         this.§"Y§ = param1;
      }
      
      public function get §>!M§() : Number
      {
         return this.§6!3§;
      }
      
      public function §@&§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§7O§ - this.§%S§);
      }
      
      public function get §9! §() : Number
      {
         return this.§&!i§;
      }
      
      public function get §<_§() : Number
      {
         return this.§;!`§;
      }
      
      public function §<l§(param1:Number) : void
      {
         this.§"Y§ = param1;
         this.updateCameraLocations();
         this.updateCameraSliderNoBird(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §'!b§)
         {
            return;
         }
         this.goToCastleView();
         this.§'!W§ = 2000;
         this.§0!=§();
         this.§7!d§();
         this.§!J§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§^T§ = this.§0!!§.x;
         this.§<9§ = this.§0!!§.y;
         this.§5u§ = false;
         this.§1l§ = §&n§ / 160000 * param1;
         this.§'!6§(§'!b§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§%S§ = this.§0!!§.x - SCREEN_WIDTH_B2 / this.§0!!§.scale / 2;
         this.§7O§ = this.§+!R§.x + SCREEN_WIDTH_B2 / this.§+!R§.scale / 2;
         this.§1%§ = this.§-n§.borders.mBorderGround_B2 - 20 * §7E§.§5H§ * §7E§.§8!'§;
         this.§;![§ = this.§-n§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§7O§ - this.§%S§);
         this.§6!3§ = this.§;![§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§-n§ = null;
      }
      
      public function §!!+§(param1:§2! §) : void
      {
         var _loc3_:§!!s§ = null;
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
         while(_loc2_ < param1.§"T§)
         {
            _loc3_ = param1.getCamera(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§8p§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = SCREEN_HEIGHT_B2 / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(SCREEN_WIDTH_B2 / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == CAMERA_ID_SLINGSHOT)
            {
               this.§0!!§ = new §9!2§(_loc9_,_loc10_,_loc13_,true);
               this.§-9§ = new §&W§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§+!R§ = new §9!2§(_loc9_,_loc10_,_loc13_,false);
               this.§=!7§ = new §&W§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §`![§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§2! §) : void
      {
         var _loc2_:§!!s§ = new §!!s§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§0!!§.x;
         _loc2_.y = this.§0!!§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§0!!§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§0!!§.scale / 2;
         _loc2_.left = this.§0!!§.x - _loc3_;
         _loc2_.right = this.§0!!§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§!!s§;
         (_loc5_ = new §!!s§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§+!R§.x;
         _loc5_.y = this.§+!R§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§+!R§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§+!R§.scale / 2;
         _loc5_.left = this.§+!R§.x - _loc6_;
         _loc5_.right = this.§+!R§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§7!q§();
         param1.§,!j§(_loc2_);
         param1.§,!j§(_loc5_);
      }
      
      public function §8p§(param1:§!!s§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §'!V§.§&d§ * 0.5 / _loc2_ * §7E§.§8!'§;
         var _loc4_:Number = param1.y - §'!V§.§6k§ * 0.5 / _loc2_ * §7E§.§8!'§;
         var _loc5_:Number = _loc3_ + §'!V§.§&d§ / _loc2_ * §7E§.§8!'§;
         var _loc6_:Number = _loc4_ + §'!V§.§6k§ / _loc2_ * §7E§.§8!'§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function moveCameraTowardsTarget(param1:§9!2§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1l§;
         if(_loc3_ >= §&n§)
         {
            _loc3_ = §&n§;
            this.§'!6§(§`!F§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§'!6§(§`!F§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §0O§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1l§;
         var _loc4_:Number = -§&n§ * 0.7;
         if(_loc2_ >= §&n§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §&n§;
            }
            this.§1l§ = -this.§1l§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function updateCameraActions(param1:Number) : void
      {
         if(this.mCurrentAction == §'!b§)
         {
            this.§0O§(param1);
         }
         else if(this.mCurrentAction == §+!<§)
         {
            this.moveCameraTowardsTarget(this.§+!R§,param1);
         }
         else if(this.mCurrentAction == §#![§)
         {
            this.moveCameraTowardsTarget(this.§0!!§,-param1);
         }
         else if(this.mCurrentAction == §?!d§)
         {
            this.§5u§ = true;
         }
         else if(this.mCurrentAction == set)
         {
            this.§ §(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§,M§)
         {
            this.§^T§ = this.§,M§.x;
            this.§<9§ = this.§,M§.y;
            §?C§ = SCREEN_WIDTH_B2 / (this.§,M§.right - this.§,M§.left);
         }
         else
         {
            this.updateCameraLocations();
            this.updateCameraActions(param1);
            this.§>!m§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§0!=§();
         this.§7!d§();
         this.§!J§();
      }
      
      private function §^!r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§-9§.scale + (this.§=!7§.scale - this.§-9§.scale) * param1;
         var _loc4_:Number = this.§-9§.x + (this.§=!7§.x - this.§-9§.x) * param1;
         var _loc5_:Number = this.§-9§.y + (this.§=!7§.y - this.§-9§.y) * param1;
         this.§&!g§.x -= (this.§&!g§.x - _loc4_) * param2;
         this.§&!g§.y -= (this.§&!g§.y - _loc5_) * param2;
         this.§&!g§.scale -= (this.§&!g§.scale - _loc3_) * param2;
      }
      
      protected function updateCameraSliderNoBird(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§2!d§ != 0)
         {
            if(!this.§5u§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §&n§;
            this.§^!r§(_loc3_,param2);
            this.§^T§ = this.§&!g§.x;
            this.§<9§ = this.§&!g§.y;
            §?C§ = this.§&!g§.scale;
         }
      }
      
      public function §>!m§(param1:Number, param2:Number) : void
      {
         var _loc5_:§<!3§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §&n§)
         {
            this.§5u§ = true;
         }
         if(this.mCurrentAction == §?!d§)
         {
            if(!this.§-n§.activeObject)
            {
               this.§'!6§(§+!<§);
               this.§[!0§ = §^,§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§-n§.activeObject).getBody().GetPosition().x + (!!_loc5_.§,!R§ ? _loc5_.§,!R§ * §7E§.§8!'§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§'!f§ ? _loc5_.§'!f§ * §7E§.§8!'§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§2!d§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§2!d§ * §&n§;
               }
               if(param1 >= §&n§)
               {
                  param1 = §&n§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §&n§;
               this.§^!r§(_loc9_,_loc4_);
               _loc10_ = this.§&!g§.x - SCREEN_WIDTH_B2 * 0.5 / this.§&!g§.scale;
               _loc11_ = this.§&!g§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§&!g§.scale;
               _loc12_ = this.§&!g§.x + SCREEN_WIDTH_B2 * 0.5 / this.§&!g§.scale;
               _loc13_ = this.§&!g§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§&!g§.scale;
               _loc14_ = 150 * §7E§.§8!'§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§%S§,_loc15_);
               _loc17_ = Math.min(this.§7O§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§&!g§.scale)
               {
                  _loc21_ = this.§&!g§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§7O§)
               {
                  _loc15_ = (_loc17_ = this.§7O§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§%S§)
                  {
                     _loc15_ = this.§%S§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§%S§)
               {
                  _loc17_ = (_loc15_ = this.§%S§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§7O§)
                  {
                     _loc17_ = this.§7O§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§1%§)
               {
                  _loc23_ = this.§1%§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§^T§ -= (this.§^T§ - _loc22_) * _loc4_;
               this.§`!P§ -= (this.§`!P§ - _loc21_) * _loc4_;
               §?C§ = this.§`!P§;
               this.§<9§ -= (this.§<9§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§7O§ || _loc6_ <= this.§%S§)
               {
                  this.§&!g§.scale = §?C§;
                  this.§&!g§.x = this.§^T§;
                  this.§&!g§.y = this.§<9§;
               }
            }
         }
         else
         {
            this.updateCameraSliderNoBird(param1,_loc4_);
         }
      }
      
      public function §%![§(param1:Number, param2:Number) : void
      {
         this.§,!A§ = param1;
         this.§<!;§ = param2;
      }
      
      private function §7z§(param1:§&W§, param2:§9!2§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §-`§ + (param2.scale - §-`§) * this.§"Y§ * § !U§.§;!"§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§7O§ - this.§%S§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§7O§ - this.§%S§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §=j§(param1:§&W§, param2:§9!2§) : Boolean
      {
         var _loc3_:Boolean = this.§7z§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§%S§ && param1.§3!a§)
         {
            param1.x += this.§%S§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§7O§ && !param1.§3!a§)
         {
            param1.x += this.§7O§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §>Z§(param1:§&W§, param2:§9!2§) : Number
      {
         return (param1.scale - §-`§) / (§ !U§.§;!"§() * (param2.scale - §-`§));
      }
      
      protected function updateCameraLocations() : void
      {
         this.§=j§(this.§-9§,this.§0!!§);
         var _loc1_:Number = this.§>Z§(this.§-9§,this.§0!!§);
         this.§=j§(this.§=!7§,this.§+!R§);
         var _loc2_:Number = this.§>Z§(this.§=!7§,this.§+!R§);
         this.§"Y§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §0!=§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§-n§.sprite)
         {
            _loc1_ = §'!V§.§<x§() / §'!V§.§9r§ - §'!V§.§6k§ >> 1;
            §@B§ = this.§-n§.sprite.x = §7E§.§#!U§ * ((1 - § !U§.§#!-§) / 2);
            §'G§ = this.§-n§.sprite.y = _loc1_ + §7E§.§5H§ * (1 - § !U§.§#!-§) * §8!t§.§ S§;
         }
      }
      
      public function §!J§() : void
      {
         if(this.§-n§.sprite)
         {
            this.§-n§.sprite.scaleX = §#!-§;
            this.§-n§.sprite.scaleY = §#!-§;
         }
      }
      
      public function §7!d§() : void
      {
         var _loc1_:Number = this.§^T§ / §7E§.§8!'§ + this.§,!A§;
         var _loc2_:Number = this.§<9§ / §7E§.§8!'§ + this.§<!;§;
         this.§-!=§ = _loc1_ - §7E§.§#!U§ / 2 * §'!V§.§9r§ / §'!V§.§25§;
         this.§-!j§ = _loc2_ - §7E§.§5H§ / 2 + §8!t§.§5-§;
         if(this.§-n§.background)
         {
            this.§-n§.background.§[t§(this.§-!=§,this.§-!j§);
         }
         if(this.§-n§.objects)
         {
            this.§-n§.objects.§[t§(this.§-!=§,this.§-!j§);
         }
         if(this.§-n§.§[!U§)
         {
            this.§-n§.§[!U§.§[t§(this.§-!=§,this.§-!j§);
         }
         if(this.§-n§.slingshot)
         {
            this.§-n§.slingshot.§[t§(this.§-!=§,this.§-!j§);
         }
         if(this.§-n§.particles)
         {
            this.§-n§.particles.§[t§(this.§-!=§,this.§-!j§);
         }
      }
      
      protected function setDraggingAction() : void
      {
         this.§'!6§(set);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§[!0§ = -1;
         this.setDraggingAction();
         this.§0!G§ = this.§[!r§ = this.§2!c§ = param1;
         this.§2!,§ = this.§%#§ = this.§5c§ = param2;
         this.§?3§ = 0;
         this.§&!g§.x = this.§^T§;
         this.§&!g§.y = this.§<9§;
         this.§&!g§.scale = §?C§;
         this.§`!P§ = §?C§;
         if(Math.abs(this.§=!7§.x - this.§-9§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§^T§ - this.§-9§.x) / (this.§=!7§.x - this.§-9§.x) * §&n§;
         }
         this.mDragging = true;
      }
      
      public function § §(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§?3§ += param1;
         var _loc3_:Number = this.§0!G§ - this.§[!r§;
         if(this.§2!d§ > 0)
         {
            _loc2_ -= _loc3_ * §7E§.§8!'§ / §#!-§ / this.§2!d§ * §&n§;
            this.§5u§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§5u§ = true;
            }
            if(_loc2_ > §&n§)
            {
               _loc2_ += (§&n§ - _loc2_) * 0.3;
               this.§5u§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§[!r§ = this.§0!G§;
      }
      
      protected function isDragging() : Boolean
      {
         return this.mCurrentAction == set;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§0!G§ = param1;
            this.§2!,§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == set)
         {
            this.§'!6§(§`!F§);
            if(param1 > 0)
            {
               this.§0!G§ = param1;
            }
            _loc3_ = Math.abs(this.§0!G§ - this.§2!c§);
            if(this.§?3§ < §>3§ && _loc3_ >= §+k§ && _loc3_ >= §!^§ * this.§?3§ / 1000)
            {
               if(this.§0!G§ < this.§2!c§)
               {
                  this.§'!6§(§+!<§);
               }
               else
               {
                  this.§'!6§(§#![§);
               }
               this.§1l§ = _loc3_ / this.§?3§ * 10;
               this.§5u§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§5u§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §&n§)
               {
                  this.§5u§ = true;
               }
            }
            else if(this.§?3§ < §;!E§)
            {
               this.§3a§();
               this.§1l§ = §&n§ / (§&n§ / 500);
               this.§5u§ = true;
            }
            else
            {
               this.§ §(0);
               this.§=R§(0);
               this.§1l§ = §&n§ / (§&n§ / 500);
               this.§5u§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §3a§() : void
      {
         if(this.mCurrentAction == §+!<§)
         {
            this.§'!6§(§#![§);
         }
         else if(this.mCurrentAction == §#![§)
         {
            this.§'!6§(§+!<§);
         }
         else if(this.mCurrentCameraSliderLocation >= §&n§ / 2)
         {
            this.§'!6§(§#![§);
         }
         else if(this.mCurrentCameraSliderLocation <= §&n§ / 2)
         {
            this.§'!6§(§+!<§);
         }
      }
      
      public function §=R§(param1:int) : void
      {
         this.§[!0§ = param1;
         if(this.mCurrentCameraSliderLocation < §&n§ / 2)
         {
            this.§'!6§(§#![§);
         }
         else
         {
            this.§'!6§(§+!<§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§'!6§(§#![§);
      }
      
      public function goToCastleView() : void
      {
         this.§'!6§(§+!<§);
      }
      
      public function §'!6§(param1:int) : void
      {
         this.§&!g§.x = this.§^T§;
         this.§&!g§.y = this.§<9§;
         this.§&!g§.scale = §?C§;
         this.§`!P§ = §?C§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §&n§)
         {
            return true;
         }
         if(this.mCurrentAction == §+!<§)
         {
            return true;
         }
         return false;
      }
      
      public function §'d§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §#![§)
         {
            return true;
         }
         return false;
      }
      
      public function §,!&§(param1:§!!s§) : void
      {
         this.§,M§ = param1;
         if(this.§,M§ != null)
         {
            this.§1!,§ = new §!!s§();
            this.§1!,§.x = this.§^T§;
            this.§1!,§.y = this.§<9§;
            this.§1!,§.scale = §?C§;
         }
         else
         {
            this.§^T§ = this.§1!,§.x;
            this.§<9§ = this.§1!,§.y;
            §?C§ = this.§1!,§.scale;
            this.§1!,§ = null;
         }
      }
      
      protected function manualScaleChanged() : void
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
         var _loc3_:Number = this.§"Y§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§<_§,Math.min(this.§9! §,_loc3_));
         if(_loc3_ != this.§"Y§)
         {
            this.§"Y§ = _loc3_;
            this.manualScaleChanged();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§[!+§ - this.§<_§) / (this.§9! § - this.§<_§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§[!+§ = Math.min(Math.max(param1,0),1) * (this.§9! § - this.§<_§) + this.§<_§;
      }
      
      public function §#m§() : void
      {
         this.§"Y§ = Math.max(this.§"Y§ - 0.5,0.5);
      }
      
      public function §'S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§"Y§;
         _loc1_ += " mXcenterB2: " + this.§^T§;
         _loc1_ += " mYcenterB2: " + this.§<9§;
         _loc1_ += " mXcenterB2target: " + this.§"Y§;
         _loc1_ += "\n mYcenterB2target: " + this.§"Y§;
         _loc1_ += " mXcenterB2previous: " + this.§"Y§;
         _loc1_ += " mYcenterB2previous: " + this.§"Y§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§"Y§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§"Y§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§"Y§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§"Y§;
         _loc1_ += " mTargetScale: " + this.§"Y§;
         _loc1_ += " mTargetScalePrevious: " + this.§"Y§;
         _loc1_ += " mCastleCameraX: " + this.§"Y§;
         _loc1_ += "\n mCastleCameraY: " + this.§"Y§;
         _loc1_ += " mCastleCameraScale: " + this.§"Y§;
         _loc1_ += " mBirdCameraX: " + this.§"Y§;
         _loc1_ += " mBirdCameraY: " + this.§"Y§;
         _loc1_ += " mBirdCameraScale: " + this.§"Y§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§"Y§;
         _loc1_ += " mScreenTopScroll: " + this.§"Y§;
         _loc1_ += " mDragging: " + this.§"Y§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§"Y§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§"Y§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§"Y§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§"Y§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§"Y§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§"Y§;
         _loc1_ += " mDraggingTimer: " + this.§"Y§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§"Y§;
         _loc1_ += " mCameraBorderRight: " + this.§"Y§;
         _loc1_ += " mCameraBorderSky: " + this.§"Y§;
         _loc1_ += " mCameraBorderGround: " + this.§"Y§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§"Y§ + "\n ");
      }
   }
}
