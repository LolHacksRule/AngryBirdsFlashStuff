package §`$=§
{
   import §#"3§.§4!h§;
   import §+!n§.§+!p§;
   import §?$#§.§<d§;
   import §?o§.§ ^§;
   import §?o§.§"!6§;
   import §^0§.§=Q§;
   
   public class §5$E§
   {
      
      public static const §<Z§:Number = 1.25;
      
      public static const §1!%§:Number = 0.15;
      
      public static const §1"p§:Number = 0.1;
      
      public static const §7"M§:int = 1500;
      
      public static const §-"G§:int = 10;
      
      public static const §;",§:int = 15;
      
      public static const §>c§:int = 300;
      
      public static const §9"#§:int = 1000;
      
      public static const §-"1§:int = 10000;
      
      public static const §9"R§:int = §-"1§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §[!I§:int = 1;
      
      public static const §5L§:int = 2;
      
      public static const §<!V§:int = 3;
      
      public static const §]#4§:int = 4;
      
      public static const §0"5§:int = 5;
      
      public static const §""y§:String = §"!6§.CASTLE;
      
      public static const §>$E§:String = §"!6§.SLINGSHOT;
      
      protected static var §+!D§:Number;
      
      public static const §0I§:Number = 2000;
       
      
      protected var §![§:Number = 1.0;
      
      protected var §,!y§:Number = 0.2;
      
      protected var § #d§:Number;
      
      protected var §7f§:Number;
      
      protected var §!H§:Number;
      
      public var § 6§:§<d§;
      
      public var §`l§:Number;
      
      public var §]"p§:Number;
      
      protected var §0#8§:§]"U§;
      
      protected var §'!_§:§]"U§;
      
      protected var §-3§:Number;
      
      protected var §1"V§:Number;
      
      protected var §6#g§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §-!a§:Number;
      
      protected var §3!V§:Number;
      
      protected var §=G§:Number;
      
      protected var §9!"§:Number;
      
      protected var §8#?§:Number;
      
      protected var §'"#§:Number;
      
      protected var §]§:§?u§;
      
      protected var §'!a§:§?u§;
      
      protected var §#"t§:Number = 0;
      
      protected var §<$E§:Number = 0;
      
      protected var §5S§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §=d§:Number = 0;
      
      public var §'! §:Boolean = true;
      
      public var §"#R§:Number = 0;
      
      public var § #§:Number = 0;
      
      public var §>!k§:Number = 0;
      
      public var §!#L§:Number = 0;
      
      public var §]O§:Number = 0;
      
      public var §3!Z§:Number = 0;
      
      public var §@$9§:Number = 0;
      
      public var §;#x§:Number = 0;
      
      public var §%"z§:Number = 0;
      
      private var §6L§:§?u§;
      
      public var §""x§:Number = 0;
      
      private var §#V§:Number = 0;
      
      private var §,#r§:Number = 0;
      
      private var §1"?§:§"!6§ = null;
      
      private var §!$<§:§"!6§ = null;
      
      public function §5$E§(param1:§<d§, param2:§ ^§, param3:Number = 1.0)
      {
         this.§6L§ = new §?u§(0,0,1,false);
         super();
         this.§7f§ = 0;
         this.§!H§ = 0;
         this.§ 6§ = param1;
         §5$E§.§+!D§ = 1;
         this.§![§ = Math.max(1,Math.min(2,param3));
         this.§ #d§ = this.§'#K§;
         this.§'$+§(param2);
         if(this.§0#8§ && this.§'!_§)
         {
            this.loadCameraBorders();
            this.§#"t§ = this.§0#8§.x - this.§'!_§.x;
            this.§<$E§ = this.§0#8§.y - this.§'!_§.y;
            this.§5S§ = this.§0#8§.scale - this.§'!_§.scale;
            this.§7f§ = this.§0#8§.x;
            this.§!H§ = this.§0#8§.y;
            §+!D§ = this.§0#8§.scale * this.§ #d§;
         }
         this.mCurrentCameraSliderLocation = §-"1§;
         this.§'! § = true;
         this.§=d§ = §-"1§ / 500;
      }
      
      public static function get §'!F§() : Number
      {
         return §+!p§.§2"?§ * §<d§.§6@§;
      }
      
      public static function get §4$B§() : Number
      {
         return §+!p§.§%!"§ * §<d§.§6@§;
      }
      
      public static function get §4W§() : Number
      {
         var _loc1_:Number = §+!p§.§<#,§ / §+!p§.§"#m§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §+!D§ * _loc1_ * _loc1_;
      }
      
      public function get §9"o§() : Number
      {
         return this.§ #d§;
      }
      
      public function set §9"o§(param1:Number) : void
      {
         this.§ #d§ = param1;
      }
      
      public function §5#+§() : Number
      {
         return §'!F§ / (this.§9!"§ - this.§=G§);
      }
      
      public function get §'#K§() : Number
      {
         var _loc1_:Number = §+!p§.§<#,§ / §+!p§.§"#m§;
         return this.§![§ / _loc1_;
      }
      
      public function get §[#g§() : Number
      {
         return this.§,!y§;
      }
      
      public function get §2!G§() : Number
      {
         return this.§-3§;
      }
      
      public function get §4!@§() : Number
      {
         return this.§1"V§;
      }
      
      public function get borderLeft() : Number
      {
         return this.§=G§;
      }
      
      public function get borderRight() : Number
      {
         return this.§9!"§;
      }
      
      public function get centerX() : Number
      {
         return this.§-!a§;
      }
      
      public function get §5"t§() : Number
      {
         return this.§3!V§;
      }
      
      public function get §2#K§() : Number
      {
         return this.§9!"§ - this.§=G§;
      }
      
      public function get §?!e§() : §]"U§
      {
         return this.§0#8§;
      }
      
      public function §%h§(param1:Number) : void
      {
         this.§ #d§ = param1;
         this.§%`§();
         this.§#u§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §0"5§)
         {
            return;
         }
         this.goToCastleView();
         this.§"#R§ = 2000;
         this.§>#O§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7f§ = this.§'!_§.x;
         this.§!H§ = this.§'!_§.y;
         this.§'! § = false;
         this.§=d§ = §-"1§ / 160000 * param1;
         this.setAction(§0"5§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§0#8§.x - this.§'!_§.x) / 1.6;
         if(_loc1_ < §'!F§ * 1.2)
         {
            _loc1_ = §'!F§ * 1.2;
         }
         this.§=G§ = this.§'!_§.x - _loc1_;
         this.§9!"§ = this.§0#8§.x + _loc1_;
         this.§8#?§ = Math.min(this.§0#8§.y,this.§'!_§.y) - §4$B§;
         this.§'"#§ = Math.max(this.§0#8§.y,this.§'!_§.y) + §4$B§;
         this.§-!a§ = (this.§0#8§.x + this.§'!_§.x) / 2;
         this.§3!V§ = (this.§0#8§.y + this.§'!_§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§ 6§ = null;
      }
      
      public function §'$+§(param1:§ ^§) : void
      {
         var _loc3_:§"!6§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§0#7§)
         {
            _loc3_ = param1.§]"S§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§"!M§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§[#Y§(_loc3_);
            if(_loc4_ == §>$E§)
            {
               this.§'!_§ = new §]"U§(_loc5_,_loc6_,_loc7_,true);
               this.§'!a§ = new §?u§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §""y§)
            {
               this.§0#8§ = new §]"U§(_loc5_,_loc6_,_loc7_,false);
               this.§]§ = new §?u§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §4!h§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §[#Y§(param1:§"!6§) : Number
      {
         var _loc2_:Number = §4$B§ / (param1.bottom - param1.top);
         var _loc3_:Number = §'!F§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §'#§(param1:§ ^§) : void
      {
         var _loc2_:§"!6§ = new §"!6§();
         _loc2_.id = §>$E§;
         _loc2_.x = this.§'!_§.x;
         _loc2_.y = this.§'!_§.y;
         var _loc3_:Number = §'!F§ / this.§'!_§.scale / 2;
         var _loc4_:Number = §4$B§ / this.§'!_§.scale / 2;
         _loc2_.left = this.§'!_§.x - _loc3_;
         _loc2_.right = this.§'!_§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§'!_§.scale;
         var _loc5_:§"!6§;
         (_loc5_ = new §"!6§()).id = §""y§;
         _loc5_.x = this.§0#8§.x;
         _loc5_.y = this.§0#8§.y;
         var _loc6_:Number = §'!F§ / this.§0#8§.scale / 2;
         var _loc7_:Number = §4$B§ / this.§0#8§.scale / 2;
         _loc5_.left = this.§0#8§.x - _loc6_;
         _loc5_.right = this.§0#8§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§0#8§.scale;
         param1.§==§();
         param1.§<L§(_loc2_);
         param1.§<L§(_loc5_);
      }
      
      public function §"!M§(param1:§"!6§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §+!p§.§2"?§ * 0.5 / _loc2_ * §<d§.§6@§;
         var _loc4_:Number = param1.y - §+!p§.§%!"§ * 0.5 / _loc2_ * §<d§.§6@§;
         var _loc5_:Number = _loc3_ + §+!p§.§2"?§ / _loc2_ * §<d§.§6@§;
         var _loc6_:Number = _loc4_ + §+!p§.§%!"§ / _loc2_ * §<d§.§6@§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §#$@§(param1:§]"U§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§=d§;
         if(_loc3_ >= §-"1§)
         {
            _loc3_ = §-"1§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §8#q§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§=d§;
         var _loc4_:Number = -§-"1§ * 0.7;
         if(_loc2_ >= §-"1§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §-"1§;
            }
            this.§=d§ = -this.§=d§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §"#j§(param1:Number) : void
      {
         if(this.mCurrentAction == §0"5§)
         {
            this.§8#q§(param1);
         }
         else if(this.mCurrentAction == §[!I§)
         {
            this.§#$@§(this.§0#8§,param1);
         }
         else if(this.mCurrentAction == §5L§)
         {
            this.§#$@§(this.§'!_§,-param1);
         }
         else if(this.mCurrentAction == §<!V§)
         {
            this.§'! § = true;
         }
         else if(this.mCurrentAction == §]#4§)
         {
            this.§4!v§(param1);
         }
      }
      
      public function §>!r§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§1"?§)
         {
            this.§7f§ = this.§1"?§.x;
            this.§!H§ = this.§1"?§.y;
            §+!D§ = §'!F§ / (this.§1"?§.right - this.§1"?§.left);
         }
         else
         {
            this.§%`§();
            this.§"#j§(param1);
            if(Math.abs(this.§6#g§ - §+!p§.§<#,§ / §+!p§.§"#m§) > 0.01)
            {
               param1 = 1000;
            }
            this.§5$7§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§>#O§();
         this.§6#g§ = §+!p§.§<#,§ / §+!p§.§"#m§;
      }
      
      private function §+`§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Number = param1;
         if(Math.abs(this.§]§.x - this.§'!a§.x) < 0.2)
         {
            _loc3_ = 0.5;
         }
         if(Math.abs(this.§]§.y - this.§'!a§.y) < 0.2)
         {
            _loc4_ = 0.5;
         }
         var _loc5_:Number = this.§'!a§.scale + (this.§]§.scale - this.§'!a§.scale) * _loc3_;
         var _loc6_:Number = this.§'!a§.x + (this.§]§.x - this.§'!a§.x) * _loc3_;
         var _loc7_:Number = this.§'!a§.y + (this.§]§.y - this.§'!a§.y) * _loc4_;
         this.§6L§.x -= (this.§6L§.x - _loc6_) * param2;
         this.§6L§.y -= (this.§6L§.y - _loc7_) * param2;
         this.§6L§.scale -= (this.§6L§.scale - _loc5_) * param2;
         this.§%$?§(this.§6L§);
      }
      
      protected function §#u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#"t§ != 0)
         {
            if(!this.§'! §)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §-"1§;
            this.§+`§(_loc3_,param2);
            this.§7f§ = this.§6L§.x;
            this.§!H§ = this.§6L§.y;
            §+!D§ = this.§6L§.scale;
         }
      }
      
      private function §,#c§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§=Q§;
         var _loc5_:Number = (_loc4_ = this.§ 6§.levelObjects.activeObject).§<"Z§();
         var _loc6_:Number = _loc4_.§+"T§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§#"t§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§#"t§ * §-"1§;
         }
         if(param1 >= §-"1§)
         {
            param1 = §-"1§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §-"1§;
         this.§+`§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §+!p§.§<#,§ / §+!p§.§"#m§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§6L§.x - §'!F§ / _loc9_ * 0.5 / this.§6L§.scale;
         var _loc11_:Number = this.§6L§.y - §4$B§ * 0.5 / this.§6L§.scale;
         var _loc12_:Number = this.§6L§.x + §'!F§ / _loc9_ * 0.5 / this.§6L§.scale;
         var _loc13_:Number = this.§6L§.y + §4$B§ * 0.5 / this.§6L§.scale;
         var _loc14_:Number = 150 * §<d§.§6@§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§=G§,_loc15_);
         _loc17_ = Math.min(this.§9!"§,_loc17_);
         var _loc19_:Number = Math.abs(§'!F§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§4$B§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§6L§.scale)
         {
            _loc21_ = this.§6L§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §'!F§ / _loc9_ * 0.5 / _loc21_ > this.§9!"§)
         {
            _loc15_ = (_loc17_ = this.§9!"§) - §'!F§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§=G§)
            {
               _loc15_ = this.§=G§;
            }
         }
         if(_loc22_ - §'!F§ / _loc9_ * 0.5 / _loc21_ < this.§=G§)
         {
            _loc17_ = (_loc15_ = this.§=G§) + §'!F§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§9!"§)
            {
               _loc17_ = this.§9!"§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§'!F§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §4$B§ * 0.5 < this.§8#?§)
         {
            _loc23_ = this.§8#?§ + §4$B§ * 0.5;
         }
         if(_loc23_ + §4$B§ * 0.5 > this.§'"#§)
         {
            _loc23_ = this.§'"#§ - §4$B§ * 0.5;
         }
         this.§7f§ -= (this.§7f§ - _loc22_) * param3;
         this.§""x§ -= (this.§""x§ - _loc21_) * param3;
         §+!D§ = this.§""x§;
         this.§!H§ -= (this.§!H§ - _loc23_) * param3;
         if(_loc5_ >= this.§9!"§ || _loc5_ <= this.§=G§)
         {
            this.§6L§.scale = §+!D§;
            this.§6L§.x = this.§7f§;
            this.§6L§.y = this.§!H§;
         }
      }
      
      protected function §5$7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §-"1§)
         {
            this.§'! § = true;
         }
         if(this.mCurrentAction == §<!V§)
         {
            if(!this.§ 6§.levelObjects.activeObject)
            {
               this.setAction(§[!I§);
               this.§%"z§ = §9"#§;
            }
            else
            {
               this.§,#c§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§#u§(param1,_loc4_);
         }
      }
      
      public function § !§(param1:Number, param2:Number) : void
      {
         this.§#V§ = param1;
         this.§,#r§ = param2;
      }
      
      protected function §?V§(param1:§?u§, param2:§]"U§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §+!p§.§<#,§ / §+!p§.§"#m§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §1!%§ + (param2.scale - §1!%§) * this.§9"o§;
         if(§'!F§ / param1.scale > (this.§9!"§ - this.§=G§) * _loc3_)
         {
            _loc4_ = §'!F§ / ((this.§9!"§ - this.§=G§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §@<§(param1:§?u§, param2:§]"U§) : Boolean
      {
         var _loc3_:Boolean = this.§?V§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§%$?§(param1);
         return _loc3_;
      }
      
      private function §%$?§(param1:§?u§) : void
      {
         var _loc2_:Number = §+!p§.§<#,§ / §+!p§.§"#m§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §'!F§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§=G§)
         {
            param1.x += this.§=G§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §'!F§ / _loc2_ * 0.5 / param1.scale) > this.§9!"§)
         {
            param1.x += this.§9!"§ - _loc4_;
         }
      }
      
      private function §!!5§(param1:§?u§, param2:§]"U§) : Number
      {
         return (param1.scale - §1!%§) / (param2.scale - §1!%§);
      }
      
      protected function §%`§() : void
      {
         this.§@<§(this.§'!a§,this.§'!_§);
         var _loc1_:Number = this.§!!5§(this.§'!a§,this.§'!_§);
         this.§@<§(this.§]§,this.§0#8§);
         var _loc2_:Number = this.§!!5§(this.§]§,this.§0#8§);
         this.§ #d§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §>#O§() : void
      {
         var _loc1_:Number = this.§7f§ / §<d§.§6@§ + this.§#V§;
         var _loc2_:Number = this.§!H§ / §<d§.§6@§ + this.§,#r§;
         var _loc3_:Number = §+!p§.§<#,§;
         var _loc4_:Number = §+!p§.§"#m§;
         var _loc5_:Number = §<d§.§=2§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §<d§.§6"'§;
         this.§-3§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§1"V§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§-3§ += _loc5_ / 2 - _loc5_ / 2 / §4W§;
         this.§1"V§ += (_loc6_ / 2 - _loc6_ / 2 / §4W§) / (_loc3_ / _loc4_);
         this.§ 6§.setScreenOffset(this.§-3§,this.§1"V§,§4W§);
      }
      
      protected function §="Z§() : void
      {
         this.setAction(§]#4§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§%"z§ = -1;
         this.§="Z§();
         this.§]O§ = this.§@$9§ = this.§>!k§ = param1;
         this.§3!Z§ = this.§;#x§ = this.§!#L§ = param2;
         this.§ #§ = 0;
         this.§6L§.x = this.§7f§;
         this.§6L§.y = this.§!H§;
         this.§6L§.scale = §+!D§;
         this.§""x§ = §+!D§;
         if(Math.abs(this.§]§.x - this.§'!a§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7f§ - this.§'!a§.x) / (this.§]§.x - this.§'!a§.x) * §-"1§;
         }
         this.mDragging = true;
      }
      
      public function §4!v§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§ #§ += param1;
         var _loc3_:Number = this.§]O§ - this.§@$9§;
         if(this.§#"t§ > 0)
         {
            _loc2_ -= _loc3_ * §<d§.§6@§ / §4W§ / this.§#"t§ * §-"1§;
            this.§'! § = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§'! § = true;
            }
            if(_loc2_ > §-"1§)
            {
               _loc2_ += (§-"1§ - _loc2_) * 0.3;
               this.§'! § = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§@$9§ = this.§]O§;
      }
      
      protected function §@"i§() : Boolean
      {
         return this.mCurrentAction == §]#4§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§]O§ = param1;
            this.§3!Z§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §]#4§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§]O§ = param1;
            }
            _loc3_ = Math.abs(this.§]O§ - this.§>!k§);
            if(this.§ #§ < §7"M§ && _loc3_ >= §-"G§ && _loc3_ >= §;",§ * this.§ #§ / 1000)
            {
               if(this.§]O§ < this.§>!k§)
               {
                  this.setAction(§[!I§);
               }
               else
               {
                  this.setAction(§5L§);
               }
               this.§=d§ = _loc3_ / this.§ #§ * 10;
               this.§'! § = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§'! § = true;
               }
               if(this.mCurrentCameraSliderLocation > §-"1§)
               {
                  this.§'! § = true;
               }
            }
            else if(this.§ #§ < §>c§)
            {
               this.§ i§();
               this.§=d§ = §-"1§ / (§-"1§ / 500);
               this.§'! § = true;
            }
            else
            {
               this.§4!v§(0);
               this.§6$"§(0);
               this.§=d§ = §-"1§ / (§-"1§ / 500);
               this.§'! § = true;
            }
         }
         this.mDragging = false;
      }
      
      public function § i§() : void
      {
         if(this.mCurrentAction == §[!I§)
         {
            this.setAction(§5L§);
         }
         else if(this.mCurrentAction == §5L§)
         {
            this.setAction(§[!I§);
         }
         else if(this.mCurrentCameraSliderLocation >= §-"1§ / 2)
         {
            this.setAction(§5L§);
         }
         else if(this.mCurrentCameraSliderLocation <= §-"1§ / 2)
         {
            this.setAction(§[!I§);
         }
      }
      
      public function §6$"§(param1:int) : void
      {
         this.§%"z§ = param1;
         if(this.mCurrentCameraSliderLocation < §-"1§ / 2)
         {
            this.setAction(§5L§);
         }
         else
         {
            this.setAction(§[!I§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§5L§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§[!I§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§6L§.x = this.§7f§;
         this.§6L§.y = this.§!H§;
         this.§6L§.scale = §+!D§;
         this.§""x§ = §+!D§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §-"1§)
         {
            return true;
         }
         if(this.mCurrentAction == §[!I§)
         {
            return true;
         }
         return false;
      }
      
      public function §3!O§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §5L§)
         {
            return true;
         }
         return false;
      }
      
      public function §5"%§(param1:§"!6§) : void
      {
         this.§1"?§ = param1;
         if(this.§1"?§ != null)
         {
            this.§!$<§ = new §"!6§();
            this.§!$<§.x = this.§7f§;
            this.§!$<§.y = this.§!H§;
            this.§!$<§.scale = §+!D§;
         }
         else
         {
            this.§7f§ = this.§!$<§.x;
            this.§!H§ = this.§!$<§.y;
            §+!D§ = this.§!$<§.scale;
            this.§!$<§ = null;
         }
      }
      
      protected function §@#I§() : void
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
         var _loc3_:Number = this.§ #d§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§[#g§,Math.min(this.§'#K§,_loc3_));
         if(_loc3_ != this.§ #d§)
         {
            this.§ #d§ = _loc3_;
         }
      }
      
      public function §6#'§() : Number
      {
         return (this.§9"o§ - this.§[#g§) / (this.§'#K§ - this.§[#g§);
      }
      
      public function §"i§(param1:Number) : void
      {
         this.§9"o§ = Math.min(Math.max(param1,0),1) * (this.§'#K§ - this.§[#g§) + this.§[#g§;
      }
      
      public function §[P§() : void
      {
         this.§ #d§ = Math.max(this.§ #d§ - 0.5,0.5);
      }
      
      public function §-!V§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§9"o§;
         _loc1_ += " mXcenterB2: " + this.§7f§;
         _loc1_ += " mYcenterB2: " + this.§!H§;
         _loc1_ += " mXcenterB2target: " + this.§9"o§;
         _loc1_ += "\n mYcenterB2target: " + this.§9"o§;
         _loc1_ += " mXcenterB2previous: " + this.§9"o§;
         _loc1_ += " mYcenterB2previous: " + this.§9"o§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§9"o§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§9"o§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§9"o§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§9"o§;
         _loc1_ += " mTargetScale: " + this.§9"o§;
         _loc1_ += " mTargetScalePrevious: " + this.§9"o§;
         _loc1_ += " mCastleCameraX: " + this.§9"o§;
         _loc1_ += "\n mCastleCameraY: " + this.§9"o§;
         _loc1_ += " mCastleCameraScale: " + this.§9"o§;
         _loc1_ += " mBirdCameraX: " + this.§9"o§;
         _loc1_ += " mBirdCameraY: " + this.§9"o§;
         _loc1_ += " mBirdCameraScale: " + this.§9"o§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§9"o§;
         _loc1_ += "mScreenOffsetYl: " + this.§9"o§;
         _loc1_ += " mDragging: " + this.§9"o§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§9"o§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§9"o§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§9"o§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§9"o§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§9"o§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§9"o§;
         _loc1_ += " mDraggingTimer: " + this.§9"o§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§9"o§;
         _loc1_ += " mCameraBorderRight: " + this.§9"o§;
         _loc1_ += "mCameraBorderTop: " + this.§9"o§;
         _loc1_ += "mCameraBorderBottom: " + this.§9"o§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§9"o§ + "\n ");
      }
      
      public function §!!l§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
