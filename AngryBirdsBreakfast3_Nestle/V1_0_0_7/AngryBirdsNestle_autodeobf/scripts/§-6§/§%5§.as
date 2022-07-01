package §-6§
{
   import § !Q§.§"D§;
   import §!P§.§2"4§;
   import §!P§.§?O§;
   import §2!k§.§;;§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   
   public class §%5§
   {
      
      public static const §2T§:Number = 1.25;
      
      public static const §1!f§:Number = 0.15;
      
      public static const §5!N§:Number = §#Z§.§ c§ * §[d§.§]!U§;
      
      public static const §[4§:Number = §#Z§.§1<§ * §[d§.§]!U§;
      
      public static const §;!w§:Number = 0.1;
      
      public static const §'!"§:int = 1500;
      
      public static const §4!D§:int = 10;
      
      public static const §@"%§:int = 15;
      
      public static const §>!V§:int = 300;
      
      public static const §<!`§:int = 1000;
      
      public static const §>+§:int = 10000;
      
      public static const §%!z§:int = §>+§ / 50;
      
      public static const §2!U§:int = 0;
      
      public static const §9=§:int = 1;
      
      public static const §67§:int = 2;
      
      public static const §3!n§:int = 3;
      
      public static const §!?§:int = 4;
      
      public static const §3!M§:int = 5;
      
      public static const §9"#§:String = §?O§.CASTLE;
      
      public static const § ,§:String = §?O§.SLINGSHOT;
      
      protected static var §0N§:Number;
      
      public static const §`I§:Number = 2000;
       
      
      private var §9!U§:Number = 1.0;
      
      private var §7i§:Number = 0.2;
      
      protected var § [§:Number;
      
      protected var §%,§:Number;
      
      protected var §#"2§:Number;
      
      public var §+"1§:§[d§;
      
      public var §%"1§:Number;
      
      public var §+"3§:Number;
      
      private var §-!t§:§#r§;
      
      private var §>9§:§#r§;
      
      protected var §="§:Number;
      
      protected var §,w§:Number;
      
      protected var § !6§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §=!`§:Number;
      
      protected var §1",§:Number;
      
      protected var §^!3§:Number;
      
      protected var §>"$§:Number;
      
      protected var §]K§:Number;
      
      protected var §%!?§:Number;
      
      private var §[!w§:§1!0§;
      
      private var §`k§:§1!0§;
      
      protected var §7S§:Number = 0;
      
      protected var §-!c§:Number = 0;
      
      protected var §`!b§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §0S§:Number = 0;
      
      public var §=!J§:Boolean = true;
      
      public var §0'§:Number = 0;
      
      public var §%@§:Number = 0;
      
      public var §?!&§:Number = 0;
      
      public var §<&§:Number = 0;
      
      public var §`!Y§:Number = 0;
      
      public var §]!L§:Number = 0;
      
      public var §8o§:Number = 0;
      
      public var get:Number = 0;
      
      public var §;!4§:Number = 0;
      
      private var §<'§:§1!0§;
      
      public var § O§:Number = 0;
      
      private var §`e§:Number = 0;
      
      private var §%S§:Number = 0;
      
      private var §+"5§:§?O§ = null;
      
      private var §'D§:§?O§ = null;
      
      public function §%5§(param1:§[d§, param2:§2"4§, param3:Number = 1.0)
      {
         this.§<'§ = new §1!0§(0,0,1,false);
         super();
         this.§%,§ = 0;
         this.§#"2§ = 0;
         this.§+"1§ = param1;
         §%5§.§0N§ = 1;
         this.§9!U§ = Math.max(1,Math.min(2,param3));
         this.§ [§ = this.§!i§;
         this.§@S§(param2);
         if(this.§-!t§ && this.§>9§)
         {
            this.§'!A§();
            this.§7S§ = this.§-!t§.x - this.§>9§.x;
            this.§-!c§ = this.§-!t§.y - this.§>9§.y;
            this.§`!b§ = this.§-!t§.scale - this.§>9§.scale;
            this.§%,§ = this.§-!t§.x;
            this.§#"2§ = this.§-!t§.y;
            §0N§ = this.§-!t§.scale * this.§ [§;
         }
         this.mCurrentCameraSliderLocation = §>+§;
         this.§=!J§ = true;
         this.§0S§ = §>+§ / 500;
      }
      
      public static function get §%!f§() : Number
      {
         var _loc1_:Number = §#Z§.§&"3§ / §#Z§.§]w§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §0N§ * _loc1_ * _loc1_;
      }
      
      public function get §!a§() : Number
      {
         return this.§ [§;
      }
      
      public function set §!a§(param1:Number) : void
      {
         this.§ [§ = param1;
      }
      
      public function §9l§() : Number
      {
         return §5!N§ / (this.§>"$§ - this.§^!3§);
      }
      
      public function get §!i§() : Number
      {
         var _loc1_:Number = §#Z§.§&"3§ / §#Z§.§]w§;
         return this.§9!U§ / _loc1_;
      }
      
      public function get §'!$§() : Number
      {
         return this.§7i§;
      }
      
      public function get §^w§() : Number
      {
         return this.§="§;
      }
      
      public function get §[&§() : Number
      {
         return this.§,w§;
      }
      
      public function get §%+§() : Number
      {
         return this.§^!3§;
      }
      
      public function get §=c§() : Number
      {
         return this.§>"$§;
      }
      
      public function get §6!E§() : Number
      {
         return this.§=!`§;
      }
      
      public function get §&!k§() : Number
      {
         return this.§1",§;
      }
      
      public function get §3y§() : Number
      {
         return this.§>"$§ - this.§^!3§;
      }
      
      protected function get §&C§() : §#r§
      {
         return this.§-!t§;
      }
      
      public function §@!;§(param1:Number) : void
      {
         this.§ [§ = param1;
         this.§`Q§();
         this.§"!Q§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §3!M§)
         {
            return;
         }
         this.goToCastleView();
         this.§0'§ = 2000;
         this.§#!K§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§%,§ = this.§>9§.x;
         this.§#"2§ = this.§>9§.y;
         this.§=!J§ = false;
         this.§0S§ = §>+§ / 160000 * param1;
         this.§?[§(§3!M§);
      }
      
      public function §'!A§() : void
      {
         var _loc1_:Number = (this.§-!t§.x - this.§>9§.x) / 1.6;
         if(_loc1_ < §5!N§ * 1.2)
         {
            _loc1_ = §5!N§ * 1.2;
         }
         this.§^!3§ = this.§>9§.x - _loc1_;
         this.§>"$§ = this.§-!t§.x + _loc1_;
         this.§]K§ = Math.min(this.§-!t§.y,this.§>9§.y) - §[4§;
         this.§%!?§ = Math.max(this.§-!t§.y,this.§>9§.y) + §[4§;
         this.§=!`§ = (this.§-!t§.x + this.§>9§.x) / 2;
         this.§1",§ = (this.§-!t§.y + this.§>9§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§+"1§ = null;
      }
      
      public function §@S§(param1:§2"4§) : void
      {
         var _loc3_:§?O§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§?!+§)
         {
            _loc3_ = param1.§#!>§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§2!3§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == § ,§)
            {
               this.§>9§ = new §#r§(_loc5_,_loc6_,_loc7_,true);
               this.§`k§ = new §1!0§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §9"#§)
            {
               this.§-!t§ = new §#r§(_loc5_,_loc6_,_loc7_,false);
               this.§[!w§ = new §1!0§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §"D§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§?O§) : Number
      {
         var _loc2_:Number = §[4§ / (param1.bottom - param1.top);
         var _loc3_:Number = §5!N§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §var§(param1:§2"4§) : void
      {
         var _loc2_:§?O§ = new §?O§();
         _loc2_.id = § ,§;
         _loc2_.x = this.§>9§.x;
         _loc2_.y = this.§>9§.y;
         var _loc3_:Number = §5!N§ / this.§>9§.scale / 2;
         var _loc4_:Number = §[4§ / this.§>9§.scale / 2;
         _loc2_.left = this.§>9§.x - _loc3_;
         _loc2_.right = this.§>9§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §[4§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §5!N§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§?O§;
         (_loc7_ = new §?O§()).id = §9"#§;
         _loc7_.x = this.§-!t§.x;
         _loc7_.y = this.§-!t§.y;
         var _loc8_:Number = §5!N§ / this.§-!t§.scale / 2;
         var _loc9_:Number = §[4§ / this.§-!t§.scale / 2;
         _loc7_.left = this.§-!t§.x - _loc8_;
         _loc7_.right = this.§-!t§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §[4§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §5!N§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§1"5§();
         param1.§1!S§(_loc2_);
         param1.§1!S§(_loc7_);
      }
      
      public function §2!3§(param1:§?O§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §#Z§.§ c§ * 0.5 / _loc2_ * §[d§.§]!U§;
         var _loc4_:Number = param1.y - §#Z§.§1<§ * 0.5 / _loc2_ * §[d§.§]!U§;
         var _loc5_:Number = _loc3_ + §#Z§.§ c§ / _loc2_ * §[d§.§]!U§;
         var _loc6_:Number = _loc4_ + §#Z§.§1<§ / _loc2_ * §[d§.§]!U§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §'§(param1:§#r§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§0S§;
         if(_loc3_ >= §>+§)
         {
            _loc3_ = §>+§;
            this.§?[§(§2!U§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§?[§(§2!U§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §;x§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§0S§;
         var _loc4_:Number = -§>+§ * 0.7;
         if(_loc2_ >= §>+§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §>+§;
            }
            this.§0S§ = -this.§0S§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §=!k§(param1:Number) : void
      {
         if(this.mCurrentAction == §3!M§)
         {
            this.§;x§(param1);
         }
         else if(this.mCurrentAction == §9=§)
         {
            this.§'§(this.§-!t§,param1);
         }
         else if(this.mCurrentAction == §67§)
         {
            this.§'§(this.§>9§,-param1);
         }
         else if(this.mCurrentAction == §3!n§)
         {
            this.§=!J§ = true;
         }
         else if(this.mCurrentAction == §!?§)
         {
            this.§0!H§(param1);
         }
      }
      
      public function §<W§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§+"5§)
         {
            this.§%,§ = this.§+"5§.x;
            this.§#"2§ = this.§+"5§.y;
            §0N§ = §5!N§ / (this.§+"5§.right - this.§+"5§.left);
         }
         else
         {
            this.§`Q§();
            this.§=!k§(param1);
            if(Math.abs(this.§ !6§ - §#Z§.§&"3§ / §#Z§.§]w§) > 0.01)
            {
               param1 = 1000;
            }
            this.§?"%§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§#!K§();
         this.§ !6§ = §#Z§.§&"3§ / §#Z§.§]w§;
      }
      
      private function §5!l§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§[!w§.x - this.§`k§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§`k§.scale + (this.§[!w§.scale - this.§`k§.scale) * param1;
         var _loc4_:Number = this.§`k§.x + (this.§[!w§.x - this.§`k§.x) * param1;
         var _loc5_:Number = this.§`k§.y + (this.§[!w§.y - this.§`k§.y) * param1;
         this.§<'§.x -= (this.§<'§.x - _loc4_) * param2;
         this.§<'§.y -= (this.§<'§.y - _loc5_) * param2;
         this.§<'§.scale -= (this.§<'§.scale - _loc3_) * param2;
      }
      
      protected function §"!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§7S§ != 0)
         {
            if(!this.§=!J§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §>+§;
            this.§5!l§(_loc3_,param2);
            this.§%,§ = this.§<'§.x;
            this.§#"2§ = this.§<'§.y;
            §0N§ = this.§<'§.scale;
         }
      }
      
      private function §;!,§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§;;§;
         var _loc5_:Number = (_loc4_ = this.§+"1§.levelObjects.activeObject).§8Z§();
         var _loc6_:Number = _loc4_.§3k§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§ 2§().GetLinearVelocity().x) > 0 && this.§7S§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§7S§ * §>+§;
         }
         if(param1 >= §>+§)
         {
            param1 = §>+§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §>+§;
         this.§5!l§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §#Z§.§&"3§ / §#Z§.§]w§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§<'§.x - §5!N§ / _loc9_ * 0.5 / this.§<'§.scale;
         var _loc11_:Number = this.§<'§.y - §[4§ * 0.5 / this.§<'§.scale;
         var _loc12_:Number = this.§<'§.x + §5!N§ / _loc9_ * 0.5 / this.§<'§.scale;
         var _loc13_:Number = this.§<'§.y + §[4§ * 0.5 / this.§<'§.scale;
         var _loc14_:Number = 150 * §[d§.§]!U§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§^!3§,_loc15_);
         _loc17_ = Math.min(this.§>"$§,_loc17_);
         var _loc19_:Number = Math.abs(§5!N§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§[4§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§<'§.scale)
         {
            _loc21_ = this.§<'§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §5!N§ / _loc9_ * 0.5 / _loc21_ > this.§>"$§)
         {
            _loc15_ = (_loc17_ = this.§>"$§) - §5!N§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§^!3§)
            {
               _loc15_ = this.§^!3§;
            }
         }
         if(_loc22_ - §5!N§ / _loc9_ * 0.5 / _loc21_ < this.§^!3§)
         {
            _loc17_ = (_loc15_ = this.§^!3§) + §5!N§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§>"$§)
            {
               _loc17_ = this.§>"$§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§5!N§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §[4§ * 0.5 < this.§]K§)
         {
            _loc23_ = this.§]K§ + §[4§ * 0.5;
         }
         if(_loc23_ + §[4§ * 0.5 > this.§%!?§)
         {
            _loc23_ = this.§%!?§ - §[4§ * 0.5;
         }
         this.§%,§ -= (this.§%,§ - _loc22_) * param3;
         this.§ O§ -= (this.§ O§ - _loc21_) * param3;
         §0N§ = this.§ O§;
         this.§#"2§ -= (this.§#"2§ - _loc23_) * param3;
         if(_loc5_ >= this.§>"$§ || _loc5_ <= this.§^!3§)
         {
            this.§<'§.scale = §0N§;
            this.§<'§.x = this.§%,§;
            this.§<'§.y = this.§#"2§;
         }
      }
      
      public function §?"%§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §>+§)
         {
            this.§=!J§ = true;
         }
         if(this.mCurrentAction == §3!n§)
         {
            if(!this.§+"1§.levelObjects.activeObject)
            {
               this.§?[§(§9=§);
               this.§;!4§ = §<!`§;
            }
            else
            {
               this.§;!,§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§"!Q§(param1,_loc4_);
         }
      }
      
      public function §5p§(param1:Number, param2:Number) : void
      {
         this.§`e§ = param1;
         this.§%S§ = param2;
      }
      
      private function §3"1§(param1:§1!0§, param2:§#r§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §#Z§.§&"3§ / §#Z§.§]w§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §1!f§ + (param2.scale - §1!f§) * this.§!a§;
         if(§5!N§ / param1.scale > (this.§>"$§ - this.§^!3§) * _loc3_)
         {
            _loc4_ = §5!N§ / ((this.§>"$§ - this.§^!3§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §?!8§(param1:§1!0§, param2:§#r§) : Boolean
      {
         var _loc3_:Boolean = this.§3"1§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §#Z§.§&"3§ / §#Z§.§]w§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §5!N§ / _loc4_ * 0.5 / param1.scale) < this.§^!3§ && param1.§-!F§)
         {
            param1.x += this.§^!3§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §5!N§ / _loc4_ * 0.5 / param1.scale) > this.§>"$§ && !param1.§-!F§)
         {
            param1.x += this.§>"$§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §]!R§(param1:§1!0§, param2:§#r§) : Number
      {
         return (param1.scale - §1!f§) / (param2.scale - §1!f§);
      }
      
      protected function §`Q§() : void
      {
         this.§?!8§(this.§`k§,this.§>9§);
         var _loc1_:Number = this.§]!R§(this.§`k§,this.§>9§);
         this.§?!8§(this.§[!w§,this.§-!t§);
         var _loc2_:Number = this.§]!R§(this.§[!w§,this.§-!t§);
         this.§ [§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §#!K§() : void
      {
         var _loc1_:Number = this.§%,§ / §[d§.§]!U§ + this.§`e§;
         var _loc2_:Number = this.§#"2§ / §[d§.§]!U§ + this.§%S§;
         var _loc3_:Number = §#Z§.§&"3§;
         var _loc4_:Number = §#Z§.§]w§;
         var _loc5_:Number = §[d§.§1!B§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §[d§.§,!n§;
         this.§="§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§,w§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§="§ += _loc5_ / 2 - _loc5_ / 2 / §%!f§;
         this.§,w§ += (_loc6_ / 2 - _loc6_ / 2 / §%!f§) / (_loc3_ / _loc4_);
         this.§+"1§.setScreenOffset(this.§="§,this.§,w§,§%!f§);
      }
      
      protected function §%!K§() : void
      {
         this.§?[§(§!?§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§;!4§ = -1;
         this.§%!K§();
         this.§`!Y§ = this.§8o§ = this.§?!&§ = param1;
         this.§]!L§ = this.get = this.§<&§ = param2;
         this.§%@§ = 0;
         this.§<'§.x = this.§%,§;
         this.§<'§.y = this.§#"2§;
         this.§<'§.scale = §0N§;
         this.§ O§ = §0N§;
         if(Math.abs(this.§[!w§.x - this.§`k§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§%,§ - this.§`k§.x) / (this.§[!w§.x - this.§`k§.x) * §>+§;
         }
         this.mDragging = true;
      }
      
      public function §0!H§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§%@§ += param1;
         var _loc3_:Number = this.§`!Y§ - this.§8o§;
         if(this.§7S§ > 0)
         {
            _loc2_ -= _loc3_ * §[d§.§]!U§ / §%!f§ / this.§7S§ * §>+§;
            this.§=!J§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§=!J§ = true;
            }
            if(_loc2_ > §>+§)
            {
               _loc2_ += (§>+§ - _loc2_) * 0.3;
               this.§=!J§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§8o§ = this.§`!Y§;
      }
      
      protected function §0!$§() : Boolean
      {
         return this.mCurrentAction == §!?§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§`!Y§ = param1;
            this.§]!L§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §!?§)
         {
            this.§?[§(§2!U§);
            if(param1 > 0)
            {
               this.§`!Y§ = param1;
            }
            _loc3_ = Math.abs(this.§`!Y§ - this.§?!&§);
            if(this.§%@§ < §'!"§ && _loc3_ >= §4!D§ && _loc3_ >= §@"%§ * this.§%@§ / 1000)
            {
               if(this.§`!Y§ < this.§?!&§)
               {
                  this.§?[§(§9=§);
               }
               else
               {
                  this.§?[§(§67§);
               }
               this.§0S§ = _loc3_ / this.§%@§ * 10;
               this.§=!J§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§=!J§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §>+§)
               {
                  this.§=!J§ = true;
               }
            }
            else if(this.§%@§ < §>!V§)
            {
               this.§'+§();
               this.§0S§ = §>+§ / (§>+§ / 500);
               this.§=!J§ = true;
            }
            else
            {
               this.§0!H§(0);
               this.§9H§(0);
               this.§0S§ = §>+§ / (§>+§ / 500);
               this.§=!J§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'+§() : void
      {
         if(this.mCurrentAction == §9=§)
         {
            this.§?[§(§67§);
         }
         else if(this.mCurrentAction == §67§)
         {
            this.§?[§(§9=§);
         }
         else if(this.mCurrentCameraSliderLocation >= §>+§ / 2)
         {
            this.§?[§(§67§);
         }
         else if(this.mCurrentCameraSliderLocation <= §>+§ / 2)
         {
            this.§?[§(§9=§);
         }
      }
      
      public function §9H§(param1:int) : void
      {
         this.§;!4§ = param1;
         if(this.mCurrentCameraSliderLocation < §>+§ / 2)
         {
            this.§?[§(§67§);
         }
         else
         {
            this.§?[§(§9=§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§?[§(§67§);
      }
      
      public function goToCastleView() : void
      {
         this.§?[§(§9=§);
      }
      
      public function §?[§(param1:int) : void
      {
         this.§<'§.x = this.§%,§;
         this.§<'§.y = this.§#"2§;
         this.§<'§.scale = §0N§;
         this.§ O§ = §0N§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §>+§)
         {
            return true;
         }
         if(this.mCurrentAction == §9=§)
         {
            return true;
         }
         return false;
      }
      
      public function §=;§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §67§)
         {
            return true;
         }
         return false;
      }
      
      public function §use§(param1:§?O§) : void
      {
         this.§+"5§ = param1;
         if(this.§+"5§ != null)
         {
            this.§'D§ = new §?O§();
            this.§'D§.x = this.§%,§;
            this.§'D§.y = this.§#"2§;
            this.§'D§.scale = §0N§;
         }
         else
         {
            this.§%,§ = this.§'D§.x;
            this.§#"2§ = this.§'D§.y;
            §0N§ = this.§'D§.scale;
            this.§'D§ = null;
         }
      }
      
      protected function §5S§() : void
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
         var _loc3_:Number = this.§ [§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§'!$§,Math.min(this.§!i§,_loc3_));
         if(_loc3_ != this.§ [§)
         {
            this.§ [§ = _loc3_;
         }
      }
      
      public function §7!K§() : Number
      {
         return (this.§!a§ - this.§'!$§) / (this.§!i§ - this.§'!$§);
      }
      
      public function §+G§(param1:Number) : void
      {
         this.§!a§ = Math.min(Math.max(param1,0),1) * (this.§!i§ - this.§'!$§) + this.§'!$§;
      }
      
      public function §!l§() : void
      {
         this.§ [§ = Math.max(this.§ [§ - 0.5,0.5);
      }
      
      public function §6!=§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§!a§;
         _loc1_ += " mXcenterB2: " + this.§%,§;
         _loc1_ += " mYcenterB2: " + this.§#"2§;
         _loc1_ += " mXcenterB2target: " + this.§!a§;
         _loc1_ += "\n mYcenterB2target: " + this.§!a§;
         _loc1_ += " mXcenterB2previous: " + this.§!a§;
         _loc1_ += " mYcenterB2previous: " + this.§!a§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§!a§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§!a§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§!a§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§!a§;
         _loc1_ += " mTargetScale: " + this.§!a§;
         _loc1_ += " mTargetScalePrevious: " + this.§!a§;
         _loc1_ += " mCastleCameraX: " + this.§!a§;
         _loc1_ += "\n mCastleCameraY: " + this.§!a§;
         _loc1_ += " mCastleCameraScale: " + this.§!a§;
         _loc1_ += " mBirdCameraX: " + this.§!a§;
         _loc1_ += " mBirdCameraY: " + this.§!a§;
         _loc1_ += " mBirdCameraScale: " + this.§!a§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§!a§;
         _loc1_ += "mScreenOffsetYl: " + this.§!a§;
         _loc1_ += " mDragging: " + this.§!a§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§!a§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§!a§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§!a§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§!a§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§!a§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§!a§;
         _loc1_ += " mDraggingTimer: " + this.§!a§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§!a§;
         _loc1_ += " mCameraBorderRight: " + this.§!a§;
         _loc1_ += "mCameraBorderTop: " + this.§!a§;
         _loc1_ += "mCameraBorderBottom: " + this.§!a§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§!a§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
