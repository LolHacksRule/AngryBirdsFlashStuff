package §+!!§
{
   import §,z§.§"_§;
   import §8!K§.§1!R§;
   import §8!K§.§5!0§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   
   public class §5"+§
   {
      
      public static const §8!%§:Number = 1.25;
      
      public static const §[h§:Number = 0.15;
      
      public static const §8"#§:Number = §&!"§.§8#§ * §?!'§.§'!i§;
      
      public static const §<!V§:Number = §&!"§.§'+§ * §?!'§.§'!i§;
      
      public static const §8!c§:Number = 0.1;
      
      public static const §@!I§:int = 1500;
      
      public static const §<_§:int = 10;
      
      public static const §5^§:int = 15;
      
      public static const §+!2§:int = 300;
      
      public static const §-L§:int = 1000;
      
      public static const §<!6§:int = 10000;
      
      public static const §%!<§:int = §<!6§ / 50;
      
      public static const §<!Y§:int = 0;
      
      public static const §-!+§:int = 1;
      
      public static const §"!W§:int = 2;
      
      public static const §&!$§:int = 3;
      
      public static const §8%§:int = 4;
      
      public static const §<2§:int = 5;
      
      public static const §4!Y§:String = §1!R§.CASTLE;
      
      public static const §,!G§:String = §1!R§.SLINGSHOT;
      
      protected static var §0!%§:Number;
      
      public static const §]C§:Number = 2000;
       
      
      protected var §;m§:Number = 1.0;
      
      protected var §&@§:Number = 0.2;
      
      protected var §<!-§:Number;
      
      protected var §?=§:Number;
      
      protected var §]!Y§:Number;
      
      public var §<Y§:§?!'§;
      
      public var §`!Q§:Number;
      
      public var §3G§:Number;
      
      protected var §%"-§:§@!K§;
      
      protected var §7!O§:§@!K§;
      
      protected var §[!B§:Number;
      
      protected var §0e§:Number;
      
      protected var §&!0§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §<""§:Number;
      
      protected var §6]§:Number;
      
      protected var §<!#§:Number;
      
      protected var §%v§:Number;
      
      protected var §>!'§:Number;
      
      protected var §?;§:Number;
      
      protected var §5n§:§,!?§;
      
      protected var §&!d§:§,!?§;
      
      protected var §;!w§:Number = 0;
      
      protected var §%!7§:Number = 0;
      
      protected var §2"&§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §3"-§:Number = 0;
      
      public var §=?§:Boolean = true;
      
      public var §9!j§:Number = 0;
      
      public var §-"+§:Number = 0;
      
      public var §%4§:Number = 0;
      
      public var §-u§:Number = 0;
      
      public var §9!<§:Number = 0;
      
      public var § !'§:Number = 0;
      
      public var §!"§:Number = 0;
      
      public var §%!t§:Number = 0;
      
      public var §++§:Number = 0;
      
      private var §%!c§:§,!?§;
      
      public var §'z§:Number = 0;
      
      private var §7c§:Number = 0;
      
      private var §#!=§:Number = 0;
      
      private var §>§:§1!R§ = null;
      
      private var §0!v§:§1!R§ = null;
      
      public function §5"+§(param1:§?!'§, param2:§5!0§, param3:Number = 1.0)
      {
         this.§%!c§ = new §,!?§(0,0,1,false);
         super();
         this.§?=§ = 0;
         this.§]!Y§ = 0;
         this.§<Y§ = param1;
         §5"+§.§0!%§ = 1;
         this.§;m§ = Math.max(1,Math.min(2,param3));
         this.§<!-§ = this.§0[§;
         this.§@!f§(param2);
         if(this.§%"-§ && this.§7!O§)
         {
            this.§97§();
            this.§;!w§ = this.§%"-§.x - this.§7!O§.x;
            this.§%!7§ = this.§%"-§.y - this.§7!O§.y;
            this.§2"&§ = this.§%"-§.scale - this.§7!O§.scale;
            this.§?=§ = this.§%"-§.x;
            this.§]!Y§ = this.§%"-§.y;
            §0!%§ = this.§%"-§.scale * this.§<!-§;
         }
         this.mCurrentCameraSliderLocation = §<!6§;
         this.§=?§ = true;
         this.§3"-§ = §<!6§ / 500;
      }
      
      public static function get §,H§() : Number
      {
         var _loc1_:Number = §&!"§.§,!C§ / §&!"§.§3H§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §0!%§ * _loc1_ * _loc1_;
      }
      
      public function get §7!g§() : Number
      {
         return this.§<!-§;
      }
      
      public function set §7!g§(param1:Number) : void
      {
         this.§<!-§ = param1;
      }
      
      public function §]>§() : Number
      {
         return §8"#§ / (this.§%v§ - this.§<!#§);
      }
      
      public function get §0[§() : Number
      {
         var _loc1_:Number = §&!"§.§,!C§ / §&!"§.§3H§;
         return this.§;m§ / _loc1_;
      }
      
      public function get §80§() : Number
      {
         return this.§&@§;
      }
      
      public function get §=f§() : Number
      {
         return this.§[!B§;
      }
      
      public function get §98§() : Number
      {
         return this.§0e§;
      }
      
      public function get §&!;§() : Number
      {
         return this.§<!#§;
      }
      
      public function get § !3§() : Number
      {
         return this.§%v§;
      }
      
      public function get §^!>§() : Number
      {
         return this.§<""§;
      }
      
      public function get §#[§() : Number
      {
         return this.§6]§;
      }
      
      public function get § a§() : Number
      {
         return this.§%v§ - this.§<!#§;
      }
      
      protected function get §+!I§() : §@!K§
      {
         return this.§%"-§;
      }
      
      public function §6!v§(param1:Number) : void
      {
         this.§<!-§ = param1;
         this.§`D§();
         this.§-<§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<2§)
         {
            return;
         }
         this.goToCastleView();
         this.§9!j§ = 2000;
         this.§?!F§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§?=§ = this.§7!O§.x;
         this.§]!Y§ = this.§7!O§.y;
         this.§=?§ = false;
         this.§3"-§ = §<!6§ / 160000 * param1;
         this.§`"$§(§<2§);
      }
      
      public function §97§() : void
      {
         var _loc1_:Number = (this.§%"-§.x - this.§7!O§.x) / 1.6;
         if(_loc1_ < §8"#§ * 1.2)
         {
            _loc1_ = §8"#§ * 1.2;
         }
         this.§<!#§ = this.§7!O§.x - _loc1_;
         this.§%v§ = this.§%"-§.x + _loc1_;
         this.§>!'§ = Math.min(this.§%"-§.y,this.§7!O§.y) - §<!V§;
         this.§?;§ = Math.max(this.§%"-§.y,this.§7!O§.y) + §<!V§;
         this.§<""§ = (this.§%"-§.x + this.§7!O§.x) / 2;
         this.§6]§ = (this.§%"-§.y + this.§7!O§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§<Y§ = null;
      }
      
      public function §@!f§(param1:§5!0§) : void
      {
         var _loc3_:§1!R§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§^!U§)
         {
            _loc3_ = param1.§8!W§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§@p§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §,!G§)
            {
               this.§7!O§ = new §@!K§(_loc5_,_loc6_,_loc7_,true);
               this.§&!d§ = new §,!?§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §4!Y§)
            {
               this.§%"-§ = new §@!K§(_loc5_,_loc6_,_loc7_,false);
               this.§5n§ = new §,!?§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §!!'§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§1!R§) : Number
      {
         var _loc2_:Number = §<!V§ / (param1.bottom - param1.top);
         var _loc3_:Number = §8"#§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §4T§(param1:§5!0§) : void
      {
         var _loc2_:§1!R§ = new §1!R§();
         _loc2_.id = §,!G§;
         _loc2_.x = this.§7!O§.x;
         _loc2_.y = this.§7!O§.y;
         var _loc3_:Number = §8"#§ / this.§7!O§.scale / 2;
         var _loc4_:Number = §<!V§ / this.§7!O§.scale / 2;
         _loc2_.left = this.§7!O§.x - _loc3_;
         _loc2_.right = this.§7!O§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§1!R§;
         (_loc5_ = new §1!R§()).id = §4!Y§;
         _loc5_.x = this.§%"-§.x;
         _loc5_.y = this.§%"-§.y;
         var _loc6_:Number = §8"#§ / this.§%"-§.scale / 2;
         var _loc7_:Number = §<!V§ / this.§%"-§.scale / 2;
         _loc5_.left = this.§%"-§.x - _loc6_;
         _loc5_.right = this.§%"-§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§'!1§();
         param1.§7!x§(_loc2_);
         param1.§7!x§(_loc5_);
      }
      
      public function §@p§(param1:§1!R§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §&!"§.§8#§ * 0.5 / _loc2_ * §?!'§.§'!i§;
         var _loc4_:Number = param1.y - §&!"§.§'+§ * 0.5 / _loc2_ * §?!'§.§'!i§;
         var _loc5_:Number = _loc3_ + §&!"§.§8#§ / _loc2_ * §?!'§.§'!i§;
         var _loc6_:Number = _loc4_ + §&!"§.§'+§ / _loc2_ * §?!'§.§'!i§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §6!%§(param1:§@!K§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§3"-§;
         if(_loc3_ >= §<!6§)
         {
            _loc3_ = §<!6§;
            this.§`"$§(§<!Y§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§`"$§(§<!Y§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §=",§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§3"-§;
         var _loc4_:Number = -§<!6§ * 0.7;
         if(_loc2_ >= §<!6§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §<!6§;
            }
            this.§3"-§ = -this.§3"-§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §7!I§(param1:Number) : void
      {
         if(this.mCurrentAction == §<2§)
         {
            this.§=",§(param1);
         }
         else if(this.mCurrentAction == §-!+§)
         {
            this.§6!%§(this.§%"-§,param1);
         }
         else if(this.mCurrentAction == §"!W§)
         {
            this.§6!%§(this.§7!O§,-param1);
         }
         else if(this.mCurrentAction == §&!$§)
         {
            this.§=?§ = true;
         }
         else if(this.mCurrentAction == §8%§)
         {
            this.§]!=§(param1);
         }
      }
      
      public function §>"%§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§>§)
         {
            this.§?=§ = this.§>§.x;
            this.§]!Y§ = this.§>§.y;
            §0!%§ = §8"#§ / (this.§>§.right - this.§>§.left);
         }
         else
         {
            this.§`D§();
            this.§7!I§(param1);
            if(Math.abs(this.§&!0§ - §&!"§.§,!C§ / §&!"§.§3H§) > 0.01)
            {
               param1 = 1000;
            }
            this.§?^§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?!F§();
         this.§&!0§ = §&!"§.§,!C§ / §&!"§.§3H§;
      }
      
      private function §#!z§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§5n§.x - this.§&!d§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§&!d§.scale + (this.§5n§.scale - this.§&!d§.scale) * param1;
         var _loc4_:Number = this.§&!d§.x + (this.§5n§.x - this.§&!d§.x) * param1;
         var _loc5_:Number = this.§&!d§.y + (this.§5n§.y - this.§&!d§.y) * param1;
         this.§%!c§.x -= (this.§%!c§.x - _loc4_) * param2;
         this.§%!c§.y -= (this.§%!c§.y - _loc5_) * param2;
         this.§%!c§.scale -= (this.§%!c§.scale - _loc3_) * param2;
         this.§^!2§(this.§%!c§);
      }
      
      protected function §-<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;!w§ != 0)
         {
            if(!this.§=?§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §<!6§;
            this.§#!z§(_loc3_,param2);
            this.§?=§ = this.§%!c§.x;
            this.§]!Y§ = this.§%!c§.y;
            §0!%§ = this.§%!c§.scale;
         }
      }
      
      private function §+w§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§"_§;
         var _loc5_:Number = (_loc4_ = this.§<Y§.levelObjects.activeObject).§2F§();
         var _loc6_:Number = _loc4_.§&!s§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§^`§().GetLinearVelocity().x) > 0 && this.§;!w§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§;!w§ * §<!6§;
         }
         if(param1 >= §<!6§)
         {
            param1 = §<!6§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §<!6§;
         this.§#!z§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §&!"§.§,!C§ / §&!"§.§3H§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§%!c§.x - §8"#§ / _loc9_ * 0.5 / this.§%!c§.scale;
         var _loc11_:Number = this.§%!c§.y - §<!V§ * 0.5 / this.§%!c§.scale;
         var _loc12_:Number = this.§%!c§.x + §8"#§ / _loc9_ * 0.5 / this.§%!c§.scale;
         var _loc13_:Number = this.§%!c§.y + §<!V§ * 0.5 / this.§%!c§.scale;
         var _loc14_:Number = 150 * §?!'§.§'!i§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§<!#§,_loc15_);
         _loc17_ = Math.min(this.§%v§,_loc17_);
         var _loc19_:Number = Math.abs(§8"#§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§<!V§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§%!c§.scale)
         {
            _loc21_ = this.§%!c§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §8"#§ / _loc9_ * 0.5 / _loc21_ > this.§%v§)
         {
            _loc15_ = (_loc17_ = this.§%v§) - §8"#§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§<!#§)
            {
               _loc15_ = this.§<!#§;
            }
         }
         if(_loc22_ - §8"#§ / _loc9_ * 0.5 / _loc21_ < this.§<!#§)
         {
            _loc17_ = (_loc15_ = this.§<!#§) + §8"#§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§%v§)
            {
               _loc17_ = this.§%v§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§8"#§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §<!V§ * 0.5 < this.§>!'§)
         {
            _loc23_ = this.§>!'§ + §<!V§ * 0.5;
         }
         if(_loc23_ + §<!V§ * 0.5 > this.§?;§)
         {
            _loc23_ = this.§?;§ - §<!V§ * 0.5;
         }
         this.§?=§ -= (this.§?=§ - _loc22_) * param3;
         this.§'z§ -= (this.§'z§ - _loc21_) * param3;
         §0!%§ = this.§'z§;
         this.§]!Y§ -= (this.§]!Y§ - _loc23_) * param3;
         if(_loc5_ >= this.§%v§ || _loc5_ <= this.§<!#§)
         {
            this.§%!c§.scale = §0!%§;
            this.§%!c§.x = this.§?=§;
            this.§%!c§.y = this.§]!Y§;
         }
      }
      
      protected function §?^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §<!6§)
         {
            this.§=?§ = true;
         }
         if(this.mCurrentAction == §&!$§)
         {
            if(!this.§<Y§.levelObjects.activeObject)
            {
               this.§`"$§(§-!+§);
               this.§++§ = §-L§;
            }
            else
            {
               this.§+w§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§-<§(param1,_loc4_);
         }
      }
      
      public function §9!!§(param1:Number, param2:Number) : void
      {
         this.§7c§ = param1;
         this.§#!=§ = param2;
      }
      
      protected function §=!=§(param1:§,!?§, param2:§@!K§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §&!"§.§,!C§ / §&!"§.§3H§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §[h§ + (param2.scale - §[h§) * this.§7!g§;
         if(§8"#§ / param1.scale > (this.§%v§ - this.§<!#§) * _loc3_)
         {
            _loc4_ = §8"#§ / ((this.§%v§ - this.§<!#§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §?1§(param1:§,!?§, param2:§@!K§) : Boolean
      {
         var _loc3_:Boolean = this.§=!=§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§^!2§(param1);
         return _loc3_;
      }
      
      private function §^!2§(param1:§,!?§) : void
      {
         var _loc2_:Number = §&!"§.§,!C§ / §&!"§.§3H§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §8"#§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§<!#§)
         {
            param1.x += this.§<!#§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §8"#§ / _loc2_ * 0.5 / param1.scale) > this.§%v§)
         {
            param1.x += this.§%v§ - _loc4_;
         }
      }
      
      private function §=!o§(param1:§,!?§, param2:§@!K§) : Number
      {
         return (param1.scale - §[h§) / (param2.scale - §[h§);
      }
      
      protected function §`D§() : void
      {
         this.§?1§(this.§&!d§,this.§7!O§);
         var _loc1_:Number = this.§=!o§(this.§&!d§,this.§7!O§);
         this.§?1§(this.§5n§,this.§%"-§);
         var _loc2_:Number = this.§=!o§(this.§5n§,this.§%"-§);
         this.§<!-§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §?!F§() : void
      {
         var _loc1_:Number = this.§?=§ / §?!'§.§'!i§ + this.§7c§;
         var _loc2_:Number = this.§]!Y§ / §?!'§.§'!i§ + this.§#!=§;
         var _loc3_:Number = §&!"§.§,!C§;
         var _loc4_:Number = §&!"§.§3H§;
         var _loc5_:Number = §?!'§.§]2§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §?!'§.§4?§;
         this.§[!B§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§0e§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§[!B§ += _loc5_ / 2 - _loc5_ / 2 / §,H§;
         this.§0e§ += (_loc6_ / 2 - _loc6_ / 2 / §,H§) / (_loc3_ / _loc4_);
         this.§<Y§.setScreenOffset(this.§[!B§,this.§0e§,§,H§);
      }
      
      protected function §0!l§() : void
      {
         this.§`"$§(§8%§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§++§ = -1;
         this.§0!l§();
         this.§9!<§ = this.§!"§ = this.§%4§ = param1;
         this.§ !'§ = this.§%!t§ = this.§-u§ = param2;
         this.§-"+§ = 0;
         this.§%!c§.x = this.§?=§;
         this.§%!c§.y = this.§]!Y§;
         this.§%!c§.scale = §0!%§;
         this.§'z§ = §0!%§;
         if(Math.abs(this.§5n§.x - this.§&!d§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§?=§ - this.§&!d§.x) / (this.§5n§.x - this.§&!d§.x) * §<!6§;
         }
         this.mDragging = true;
      }
      
      public function §]!=§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§-"+§ += param1;
         var _loc3_:Number = this.§9!<§ - this.§!"§;
         if(this.§;!w§ > 0)
         {
            _loc2_ -= _loc3_ * §?!'§.§'!i§ / §,H§ / this.§;!w§ * §<!6§;
            this.§=?§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§=?§ = true;
            }
            if(_loc2_ > §<!6§)
            {
               _loc2_ += (§<!6§ - _loc2_) * 0.3;
               this.§=?§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§!"§ = this.§9!<§;
      }
      
      protected function §4!4§() : Boolean
      {
         return this.mCurrentAction == §8%§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§9!<§ = param1;
            this.§ !'§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §8%§)
         {
            this.§`"$§(§<!Y§);
            if(param1 > 0)
            {
               this.§9!<§ = param1;
            }
            _loc3_ = Math.abs(this.§9!<§ - this.§%4§);
            if(this.§-"+§ < §@!I§ && _loc3_ >= §<_§ && _loc3_ >= §5^§ * this.§-"+§ / 1000)
            {
               if(this.§9!<§ < this.§%4§)
               {
                  this.§`"$§(§-!+§);
               }
               else
               {
                  this.§`"$§(§"!W§);
               }
               this.§3"-§ = _loc3_ / this.§-"+§ * 10;
               this.§=?§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§=?§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §<!6§)
               {
                  this.§=?§ = true;
               }
            }
            else if(this.§-"+§ < §+!2§)
            {
               this.§=e§();
               this.§3"-§ = §<!6§ / (§<!6§ / 500);
               this.§=?§ = true;
            }
            else
            {
               this.§]!=§(0);
               this.§&i§(0);
               this.§3"-§ = §<!6§ / (§<!6§ / 500);
               this.§=?§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §=e§() : void
      {
         if(this.mCurrentAction == §-!+§)
         {
            this.§`"$§(§"!W§);
         }
         else if(this.mCurrentAction == §"!W§)
         {
            this.§`"$§(§-!+§);
         }
         else if(this.mCurrentCameraSliderLocation >= §<!6§ / 2)
         {
            this.§`"$§(§"!W§);
         }
         else if(this.mCurrentCameraSliderLocation <= §<!6§ / 2)
         {
            this.§`"$§(§-!+§);
         }
      }
      
      public function §&i§(param1:int) : void
      {
         this.§++§ = param1;
         if(this.mCurrentCameraSliderLocation < §<!6§ / 2)
         {
            this.§`"$§(§"!W§);
         }
         else
         {
            this.§`"$§(§-!+§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§`"$§(§"!W§);
      }
      
      public function goToCastleView() : void
      {
         this.§`"$§(§-!+§);
      }
      
      public function §`"$§(param1:int) : void
      {
         this.§%!c§.x = this.§?=§;
         this.§%!c§.y = this.§]!Y§;
         this.§%!c§.scale = §0!%§;
         this.§'z§ = §0!%§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §<!6§)
         {
            return true;
         }
         if(this.mCurrentAction == §-!+§)
         {
            return true;
         }
         return false;
      }
      
      public function §-!8§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"!W§)
         {
            return true;
         }
         return false;
      }
      
      public function §&I§(param1:§1!R§) : void
      {
         this.§>§ = param1;
         if(this.§>§ != null)
         {
            this.§0!v§ = new §1!R§();
            this.§0!v§.x = this.§?=§;
            this.§0!v§.y = this.§]!Y§;
            this.§0!v§.scale = §0!%§;
         }
         else
         {
            this.§?=§ = this.§0!v§.x;
            this.§]!Y§ = this.§0!v§.y;
            §0!%§ = this.§0!v§.scale;
            this.§0!v§ = null;
         }
      }
      
      protected function §7!?§() : void
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
         var _loc3_:Number = this.§<!-§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§80§,Math.min(this.§0[§,_loc3_));
         if(_loc3_ != this.§<!-§)
         {
            this.§<!-§ = _loc3_;
         }
      }
      
      public function §!!<§() : Number
      {
         return (this.§7!g§ - this.§80§) / (this.§0[§ - this.§80§);
      }
      
      public function §0! §(param1:Number) : void
      {
         this.§7!g§ = Math.min(Math.max(param1,0),1) * (this.§0[§ - this.§80§) + this.§80§;
      }
      
      public function § 4§() : void
      {
         this.§<!-§ = Math.max(this.§<!-§ - 0.5,0.5);
      }
      
      public function §6!0§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7!g§;
         _loc1_ += " mXcenterB2: " + this.§?=§;
         _loc1_ += " mYcenterB2: " + this.§]!Y§;
         _loc1_ += " mXcenterB2target: " + this.§7!g§;
         _loc1_ += "\n mYcenterB2target: " + this.§7!g§;
         _loc1_ += " mXcenterB2previous: " + this.§7!g§;
         _loc1_ += " mYcenterB2previous: " + this.§7!g§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7!g§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7!g§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7!g§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7!g§;
         _loc1_ += " mTargetScale: " + this.§7!g§;
         _loc1_ += " mTargetScalePrevious: " + this.§7!g§;
         _loc1_ += " mCastleCameraX: " + this.§7!g§;
         _loc1_ += "\n mCastleCameraY: " + this.§7!g§;
         _loc1_ += " mCastleCameraScale: " + this.§7!g§;
         _loc1_ += " mBirdCameraX: " + this.§7!g§;
         _loc1_ += " mBirdCameraY: " + this.§7!g§;
         _loc1_ += " mBirdCameraScale: " + this.§7!g§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7!g§;
         _loc1_ += "mScreenOffsetYl: " + this.§7!g§;
         _loc1_ += " mDragging: " + this.§7!g§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7!g§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7!g§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7!g§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7!g§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7!g§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7!g§;
         _loc1_ += " mDraggingTimer: " + this.§7!g§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7!g§;
         _loc1_ += " mCameraBorderRight: " + this.§7!g§;
         _loc1_ += "mCameraBorderTop: " + this.§7!g§;
         _loc1_ += "mCameraBorderBottom: " + this.§7!g§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7!g§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
