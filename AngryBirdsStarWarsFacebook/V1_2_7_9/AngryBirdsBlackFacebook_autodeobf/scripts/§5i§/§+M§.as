package §5i§
{
   import §,#+§.§6G§;
   import §,#+§.§<U§;
   import §0"I§.§5!s§;
   import §5!q§.§3"X§;
   import §6"R§.§4!w§;
   import com.angrybirds.§;!e§;
   
   public class §+M§
   {
      
      public static const §`$§:Number = 1.25;
      
      public static const §3"f§:Number = 0.15;
      
      public static const § ";§:Number = §;!e§.§]";§ * §3"X§.§;"l§;
      
      public static const §9"6§:Number = §;!e§.§8"?§ * §3"X§.§;"l§;
      
      public static const §2;§:Number = 0.1;
      
      public static const §`#'§:int = 1500;
      
      public static const §#E§:int = 10;
      
      public static const §'"`§:int = 15;
      
      public static const §4u§:int = 300;
      
      public static const §-`§:int = 1000;
      
      public static const §;!+§:int = 10000;
      
      public static const §?z§:int = §;!+§ / 50;
      
      public static const §;" §:int = 0;
      
      public static const §1Z§:int = 1;
      
      public static const §1h§:int = 2;
      
      public static const §&R§:int = 3;
      
      public static const §@!_§:int = 4;
      
      public static const §9"o§:int = 5;
      
      public static const §'!O§:String = §6G§.CASTLE;
      
      public static const §^G§:String = §6G§.SLINGSHOT;
      
      protected static var §3!$§:Number;
      
      public static const §@#6§:Number = 2000;
       
      
      protected var §7!i§:Number = 1.0;
      
      protected var §??§:Number = 0.2;
      
      protected var §;"k§:Number;
      
      protected var §;!l§:Number;
      
      protected var §01§:Number;
      
      public var §]""§:§3"X§;
      
      public var §<W§:Number;
      
      public var §^S§:Number;
      
      protected var §>"l§:§>!`§;
      
      protected var §;"0§:§>!`§;
      
      protected var §="E§:Number;
      
      protected var §&!M§:Number;
      
      protected var §%"P§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §>!y§:Number;
      
      protected var §+o§:Number;
      
      protected var §^"-§:Number;
      
      protected var §""^§:Number;
      
      protected var §>9§:Number;
      
      protected var §3"u§:Number;
      
      protected var §class§:§2!n§;
      
      protected var §9"n§:§2!n§;
      
      protected var § #5§:Number = 0;
      
      protected var §7#$§:Number = 0;
      
      protected var §8K§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §>J§:Number = 0;
      
      public var §>!S§:Boolean = true;
      
      public var §-#$§:Number = 0;
      
      public var §["t§:Number = 0;
      
      public var §'7§:Number = 0;
      
      public var §]!l§:Number = 0;
      
      public var §@4§:Number = 0;
      
      public var § n§:Number = 0;
      
      public var §'!d§:Number = 0;
      
      public var §9z§:Number = 0;
      
      public var §5"Q§:Number = 0;
      
      private var §#!7§:§2!n§;
      
      public var §"##§:Number = 0;
      
      private var §5!5§:Number = 0;
      
      private var §,"j§:Number = 0;
      
      private var §3" §:§6G§ = null;
      
      private var §6#$§:§6G§ = null;
      
      public function §+M§(param1:§3"X§, param2:§<U§, param3:Number = 1.0)
      {
         this.§#!7§ = new §2!n§(0,0,1,false);
         super();
         this.§;!l§ = 0;
         this.§01§ = 0;
         this.§]""§ = param1;
         §+M§.§3!$§ = 1;
         this.§7!i§ = Math.max(1,Math.min(2,param3));
         this.§;"k§ = this.§&"p§;
         this.§8!z§(param2);
         if(this.§>"l§ && this.§;"0§)
         {
            this.§2"E§();
            this.§ #5§ = this.§>"l§.x - this.§;"0§.x;
            this.§7#$§ = this.§>"l§.y - this.§;"0§.y;
            this.§8K§ = this.§>"l§.scale - this.§;"0§.scale;
            this.§;!l§ = this.§>"l§.x;
            this.§01§ = this.§>"l§.y;
            §3!$§ = this.§>"l§.scale * this.§;"k§;
         }
         this.mCurrentCameraSliderLocation = §;!+§;
         this.§>!S§ = true;
         this.§>J§ = §;!+§ / 500;
      }
      
      public static function get §&!u§() : Number
      {
         var _loc1_:Number = §;!e§.§7"4§ / §;!e§.§1"6§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §3!$§ * _loc1_ * _loc1_;
      }
      
      public function get § #2§() : Number
      {
         return this.§;"k§;
      }
      
      public function set § #2§(param1:Number) : void
      {
         this.§;"k§ = param1;
      }
      
      public function §>#!§() : Number
      {
         return § ";§ / (this.§""^§ - this.§^"-§);
      }
      
      public function get §&"p§() : Number
      {
         var _loc1_:Number = §;!e§.§7"4§ / §;!e§.§1"6§;
         return this.§7!i§ / _loc1_;
      }
      
      public function get §9!O§() : Number
      {
         return this.§??§;
      }
      
      public function get §&!@§() : Number
      {
         return this.§="E§;
      }
      
      public function get §["R§() : Number
      {
         return this.§&!M§;
      }
      
      public function get §3#3§() : Number
      {
         return this.§^"-§;
      }
      
      public function get §^"V§() : Number
      {
         return this.§""^§;
      }
      
      public function get §!!7§() : Number
      {
         return this.§>!y§;
      }
      
      public function get §2!<§() : Number
      {
         return this.§+o§;
      }
      
      public function get §?P§() : Number
      {
         return this.§""^§ - this.§^"-§;
      }
      
      protected function get §@"!§() : §>!`§
      {
         return this.§>"l§;
      }
      
      public function §+"L§(param1:Number) : void
      {
         this.§;"k§ = param1;
         this.§9#,§();
         this.§4!<§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §9"o§)
         {
            return;
         }
         this.goToCastleView();
         this.§-#$§ = 2000;
         this.§switch§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§;!l§ = this.§;"0§.x;
         this.§01§ = this.§;"0§.y;
         this.§>!S§ = false;
         this.§>J§ = §;!+§ / 160000 * param1;
         this.setAction(§9"o§);
      }
      
      public function §2"E§() : void
      {
         var _loc1_:Number = (this.§>"l§.x - this.§;"0§.x) / 1.6;
         if(_loc1_ < § ";§ * 1.2)
         {
            _loc1_ = § ";§ * 1.2;
         }
         this.§^"-§ = this.§;"0§.x - _loc1_;
         this.§""^§ = this.§>"l§.x + _loc1_;
         this.§>9§ = Math.min(this.§>"l§.y,this.§;"0§.y) - §9"6§;
         this.§3"u§ = Math.max(this.§>"l§.y,this.§;"0§.y) + §9"6§;
         this.§>!y§ = (this.§>"l§.x + this.§;"0§.x) / 2;
         this.§+o§ = (this.§>"l§.y + this.§;"0§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§]""§ = null;
      }
      
      public function §8!z§(param1:§<U§) : void
      {
         var _loc3_:§6G§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§`!>§)
         {
            _loc3_ = param1.§8! §(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§;!-§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§'6§(_loc3_);
            if(_loc4_ == §^G§)
            {
               this.§;"0§ = new §>!`§(_loc5_,_loc6_,_loc7_,true);
               this.§9"n§ = new §2!n§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §'!O§)
            {
               this.§>"l§ = new §>!`§(_loc5_,_loc6_,_loc7_,false);
               this.§class§ = new §2!n§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §5!s§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §'6§(param1:§6G§) : Number
      {
         var _loc2_:Number = §9"6§ / (param1.bottom - param1.top);
         var _loc3_:Number = § ";§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §0"'§(param1:§<U§) : void
      {
         var _loc2_:§6G§ = new §6G§();
         _loc2_.id = §^G§;
         _loc2_.x = this.§;"0§.x;
         _loc2_.y = this.§;"0§.y;
         var _loc3_:Number = § ";§ / this.§;"0§.scale / 2;
         var _loc4_:Number = §9"6§ / this.§;"0§.scale / 2;
         _loc2_.left = this.§;"0§.x - _loc3_;
         _loc2_.right = this.§;"0§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§;"0§.scale;
         var _loc5_:§6G§;
         (_loc5_ = new §6G§()).id = §'!O§;
         _loc5_.x = this.§>"l§.x;
         _loc5_.y = this.§>"l§.y;
         var _loc6_:Number = § ";§ / this.§>"l§.scale / 2;
         var _loc7_:Number = §9"6§ / this.§>"l§.scale / 2;
         _loc5_.left = this.§>"l§.x - _loc6_;
         _loc5_.right = this.§>"l§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§>"l§.scale;
         param1.§2!]§();
         param1.§5Q§(_loc2_);
         param1.§5Q§(_loc5_);
      }
      
      public function §;!-§(param1:§6G§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §;!e§.§]";§ * 0.5 / _loc2_ * §3"X§.§;"l§;
         var _loc4_:Number = param1.y - §;!e§.§8"?§ * 0.5 / _loc2_ * §3"X§.§;"l§;
         var _loc5_:Number = _loc3_ + §;!e§.§]";§ / _loc2_ * §3"X§.§;"l§;
         var _loc6_:Number = _loc4_ + §;!e§.§8"?§ / _loc2_ * §3"X§.§;"l§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §`;§(param1:§>!`§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§>J§;
         if(_loc3_ >= §;!+§)
         {
            _loc3_ = §;!+§;
            this.setAction(§;" §);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§;" §);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §@g§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§>J§;
         var _loc4_:Number = -§;!+§ * 0.7;
         if(_loc2_ >= §;!+§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §;!+§;
            }
            this.§>J§ = -this.§>J§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]I§(param1:Number) : void
      {
         if(this.mCurrentAction == §9"o§)
         {
            this.§@g§(param1);
         }
         else if(this.mCurrentAction == §1Z§)
         {
            this.§`;§(this.§>"l§,param1);
         }
         else if(this.mCurrentAction == §1h§)
         {
            this.§`;§(this.§;"0§,-param1);
         }
         else if(this.mCurrentAction == §&R§)
         {
            this.§>!S§ = true;
         }
         else if(this.mCurrentAction == §@!_§)
         {
            this.§!!y§(param1);
         }
      }
      
      public function §5"5§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§3" §)
         {
            this.§;!l§ = this.§3" §.x;
            this.§01§ = this.§3" §.y;
            §3!$§ = § ";§ / (this.§3" §.right - this.§3" §.left);
         }
         else
         {
            this.§9#,§();
            this.§]I§(param1);
            if(Math.abs(this.§%"P§ - §;!e§.§7"4§ / §;!e§.§1"6§) > 0.01)
            {
               param1 = 1000;
            }
            this.§^c§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§switch§();
         this.§%"P§ = §;!e§.§7"4§ / §;!e§.§1"6§;
      }
      
      private function §=v§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§class§.x - this.§9"n§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§9"n§.scale + (this.§class§.scale - this.§9"n§.scale) * param1;
         var _loc4_:Number = this.§9"n§.x + (this.§class§.x - this.§9"n§.x) * param1;
         var _loc5_:Number = this.§9"n§.y + (this.§class§.y - this.§9"n§.y) * param1;
         this.§#!7§.x -= (this.§#!7§.x - _loc4_) * param2;
         this.§#!7§.y -= (this.§#!7§.y - _loc5_) * param2;
         this.§#!7§.scale -= (this.§#!7§.scale - _loc3_) * param2;
         this.§?"E§(this.§#!7§);
      }
      
      protected function §4!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ #5§ != 0)
         {
            if(!this.§>!S§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §;!+§;
            this.§=v§(_loc3_,param2);
            this.§;!l§ = this.§#!7§.x;
            this.§01§ = this.§#!7§.y;
            §3!$§ = this.§#!7§.scale;
         }
      }
      
      private function §;U§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§4!w§;
         var _loc5_:Number = (_loc4_ = this.§]""§.levelObjects.activeObject).§#"v§();
         var _loc6_:Number = _loc4_.§2!;§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§?"Z§().GetLinearVelocity().x) > 0 && this.§ #5§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§ #5§ * §;!+§;
         }
         if(param1 >= §;!+§)
         {
            param1 = §;!+§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §;!+§;
         this.§=v§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §;!e§.§7"4§ / §;!e§.§1"6§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§#!7§.x - § ";§ / _loc9_ * 0.5 / this.§#!7§.scale;
         var _loc11_:Number = this.§#!7§.y - §9"6§ * 0.5 / this.§#!7§.scale;
         var _loc12_:Number = this.§#!7§.x + § ";§ / _loc9_ * 0.5 / this.§#!7§.scale;
         var _loc13_:Number = this.§#!7§.y + §9"6§ * 0.5 / this.§#!7§.scale;
         var _loc14_:Number = 150 * §3"X§.§;"l§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§^"-§,_loc15_);
         _loc17_ = Math.min(this.§""^§,_loc17_);
         var _loc19_:Number = Math.abs(§ ";§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§9"6§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§#!7§.scale)
         {
            _loc21_ = this.§#!7§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + § ";§ / _loc9_ * 0.5 / _loc21_ > this.§""^§)
         {
            _loc15_ = (_loc17_ = this.§""^§) - § ";§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§^"-§)
            {
               _loc15_ = this.§^"-§;
            }
         }
         if(_loc22_ - § ";§ / _loc9_ * 0.5 / _loc21_ < this.§^"-§)
         {
            _loc17_ = (_loc15_ = this.§^"-§) + § ";§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§""^§)
            {
               _loc17_ = this.§""^§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§ ";§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §9"6§ * 0.5 < this.§>9§)
         {
            _loc23_ = this.§>9§ + §9"6§ * 0.5;
         }
         if(_loc23_ + §9"6§ * 0.5 > this.§3"u§)
         {
            _loc23_ = this.§3"u§ - §9"6§ * 0.5;
         }
         this.§;!l§ -= (this.§;!l§ - _loc22_) * param3;
         this.§"##§ -= (this.§"##§ - _loc21_) * param3;
         §3!$§ = this.§"##§;
         this.§01§ -= (this.§01§ - _loc23_) * param3;
         if(_loc5_ >= this.§""^§ || _loc5_ <= this.§^"-§)
         {
            this.§#!7§.scale = §3!$§;
            this.§#!7§.x = this.§;!l§;
            this.§#!7§.y = this.§01§;
         }
      }
      
      protected function §^c§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §;!+§)
         {
            this.§>!S§ = true;
         }
         if(this.mCurrentAction == §&R§)
         {
            if(!this.§]""§.levelObjects.activeObject)
            {
               this.setAction(§1Z§);
               this.§5"Q§ = §-`§;
            }
            else
            {
               this.§;U§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§4!<§(param1,_loc4_);
         }
      }
      
      public function §,#&§(param1:Number, param2:Number) : void
      {
         this.§5!5§ = param1;
         this.§,"j§ = param2;
      }
      
      protected function §8!,§(param1:§2!n§, param2:§>!`§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §;!e§.§7"4§ / §;!e§.§1"6§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §3"f§ + (param2.scale - §3"f§) * this.§ #2§;
         if(§ ";§ / param1.scale > (this.§""^§ - this.§^"-§) * _loc3_)
         {
            _loc4_ = § ";§ / ((this.§""^§ - this.§^"-§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §>E§(param1:§2!n§, param2:§>!`§) : Boolean
      {
         var _loc3_:Boolean = this.§8!,§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§?"E§(param1);
         return _loc3_;
      }
      
      private function §?"E§(param1:§2!n§) : void
      {
         var _loc2_:Number = §;!e§.§7"4§ / §;!e§.§1"6§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - § ";§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§^"-§)
         {
            param1.x += this.§^"-§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + § ";§ / _loc2_ * 0.5 / param1.scale) > this.§""^§)
         {
            param1.x += this.§""^§ - _loc4_;
         }
      }
      
      private function §?!M§(param1:§2!n§, param2:§>!`§) : Number
      {
         return (param1.scale - §3"f§) / (param2.scale - §3"f§);
      }
      
      protected function §9#,§() : void
      {
         this.§>E§(this.§9"n§,this.§;"0§);
         var _loc1_:Number = this.§?!M§(this.§9"n§,this.§;"0§);
         this.§>E§(this.§class§,this.§>"l§);
         var _loc2_:Number = this.§?!M§(this.§class§,this.§>"l§);
         this.§;"k§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §switch§() : void
      {
         var _loc1_:Number = this.§;!l§ / §3"X§.§;"l§ + this.§5!5§;
         var _loc2_:Number = this.§01§ / §3"X§.§;"l§ + this.§,"j§;
         var _loc3_:Number = §;!e§.§7"4§;
         var _loc4_:Number = §;!e§.§1"6§;
         var _loc5_:Number = §3"X§.§6"t§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §3"X§.§="h§;
         this.§="E§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§&!M§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§="E§ += _loc5_ / 2 - _loc5_ / 2 / §&!u§;
         this.§&!M§ += (_loc6_ / 2 - _loc6_ / 2 / §&!u§) / (_loc3_ / _loc4_);
         this.§]""§.setScreenOffset(this.§="E§,this.§&!M§,§&!u§);
      }
      
      protected function §7!t§() : void
      {
         this.setAction(§@!_§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§5"Q§ = -1;
         this.§7!t§();
         this.§@4§ = this.§'!d§ = this.§'7§ = param1;
         this.§ n§ = this.§9z§ = this.§]!l§ = param2;
         this.§["t§ = 0;
         this.§#!7§.x = this.§;!l§;
         this.§#!7§.y = this.§01§;
         this.§#!7§.scale = §3!$§;
         this.§"##§ = §3!$§;
         if(Math.abs(this.§class§.x - this.§9"n§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§;!l§ - this.§9"n§.x) / (this.§class§.x - this.§9"n§.x) * §;!+§;
         }
         this.mDragging = true;
      }
      
      public function §!!y§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§["t§ += param1;
         var _loc3_:Number = this.§@4§ - this.§'!d§;
         if(this.§ #5§ > 0)
         {
            _loc2_ -= _loc3_ * §3"X§.§;"l§ / §&!u§ / this.§ #5§ * §;!+§;
            this.§>!S§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§>!S§ = true;
            }
            if(_loc2_ > §;!+§)
            {
               _loc2_ += (§;!+§ - _loc2_) * 0.3;
               this.§>!S§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§'!d§ = this.§@4§;
      }
      
      protected function §+#&§() : Boolean
      {
         return this.mCurrentAction == §@!_§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§@4§ = param1;
            this.§ n§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §@!_§)
         {
            this.setAction(§;" §);
            if(param1 > 0)
            {
               this.§@4§ = param1;
            }
            _loc3_ = Math.abs(this.§@4§ - this.§'7§);
            if(this.§["t§ < §`#'§ && _loc3_ >= §#E§ && _loc3_ >= §'"`§ * this.§["t§ / 1000)
            {
               if(this.§@4§ < this.§'7§)
               {
                  this.setAction(§1Z§);
               }
               else
               {
                  this.setAction(§1h§);
               }
               this.§>J§ = _loc3_ / this.§["t§ * 10;
               this.§>!S§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§>!S§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §;!+§)
               {
                  this.§>!S§ = true;
               }
            }
            else if(this.§["t§ < §4u§)
            {
               this.§`!M§();
               this.§>J§ = §;!+§ / (§;!+§ / 500);
               this.§>!S§ = true;
            }
            else
            {
               this.§!!y§(0);
               this.§#"^§(0);
               this.§>J§ = §;!+§ / (§;!+§ / 500);
               this.§>!S§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §`!M§() : void
      {
         if(this.mCurrentAction == §1Z§)
         {
            this.setAction(§1h§);
         }
         else if(this.mCurrentAction == §1h§)
         {
            this.setAction(§1Z§);
         }
         else if(this.mCurrentCameraSliderLocation >= §;!+§ / 2)
         {
            this.setAction(§1h§);
         }
         else if(this.mCurrentCameraSliderLocation <= §;!+§ / 2)
         {
            this.setAction(§1Z§);
         }
      }
      
      public function §#"^§(param1:int) : void
      {
         this.§5"Q§ = param1;
         if(this.mCurrentCameraSliderLocation < §;!+§ / 2)
         {
            this.setAction(§1h§);
         }
         else
         {
            this.setAction(§1Z§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§1h§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§1Z§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§#!7§.x = this.§;!l§;
         this.§#!7§.y = this.§01§;
         this.§#!7§.scale = §3!$§;
         this.§"##§ = §3!$§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §;!+§)
         {
            return true;
         }
         if(this.mCurrentAction == §1Z§)
         {
            return true;
         }
         return false;
      }
      
      public function §5m§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §1h§)
         {
            return true;
         }
         return false;
      }
      
      public function §`"U§(param1:§6G§) : void
      {
         this.§3" § = param1;
         if(this.§3" § != null)
         {
            this.§6#$§ = new §6G§();
            this.§6#$§.x = this.§;!l§;
            this.§6#$§.y = this.§01§;
            this.§6#$§.scale = §3!$§;
         }
         else
         {
            this.§;!l§ = this.§6#$§.x;
            this.§01§ = this.§6#$§.y;
            §3!$§ = this.§6#$§.scale;
            this.§6#$§ = null;
         }
      }
      
      protected function § !w§() : void
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
         var _loc3_:Number = this.§;"k§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§9!O§,Math.min(this.§&"p§,_loc3_));
         if(_loc3_ != this.§;"k§)
         {
            this.§;"k§ = _loc3_;
         }
      }
      
      public function §4!;§() : Number
      {
         return (this.§ #2§ - this.§9!O§) / (this.§&"p§ - this.§9!O§);
      }
      
      public function §]!^§(param1:Number) : void
      {
         this.§ #2§ = Math.min(Math.max(param1,0),1) * (this.§&"p§ - this.§9!O§) + this.§9!O§;
      }
      
      public function §'H§() : void
      {
         this.§;"k§ = Math.max(this.§;"k§ - 0.5,0.5);
      }
      
      public function §&f§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§ #2§;
         _loc1_ += " mXcenterB2: " + this.§;!l§;
         _loc1_ += " mYcenterB2: " + this.§01§;
         _loc1_ += " mXcenterB2target: " + this.§ #2§;
         _loc1_ += "\n mYcenterB2target: " + this.§ #2§;
         _loc1_ += " mXcenterB2previous: " + this.§ #2§;
         _loc1_ += " mYcenterB2previous: " + this.§ #2§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§ #2§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§ #2§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§ #2§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§ #2§;
         _loc1_ += " mTargetScale: " + this.§ #2§;
         _loc1_ += " mTargetScalePrevious: " + this.§ #2§;
         _loc1_ += " mCastleCameraX: " + this.§ #2§;
         _loc1_ += "\n mCastleCameraY: " + this.§ #2§;
         _loc1_ += " mCastleCameraScale: " + this.§ #2§;
         _loc1_ += " mBirdCameraX: " + this.§ #2§;
         _loc1_ += " mBirdCameraY: " + this.§ #2§;
         _loc1_ += " mBirdCameraScale: " + this.§ #2§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§ #2§;
         _loc1_ += "mScreenOffsetYl: " + this.§ #2§;
         _loc1_ += " mDragging: " + this.§ #2§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§ #2§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§ #2§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§ #2§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§ #2§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§ #2§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§ #2§;
         _loc1_ += " mDraggingTimer: " + this.§ #2§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§ #2§;
         _loc1_ += " mCameraBorderRight: " + this.§ #2§;
         _loc1_ += "mCameraBorderTop: " + this.§ #2§;
         _loc1_ += "mCameraBorderBottom: " + this.§ #2§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§ #2§ + "\n ");
      }
      
      public function §>X§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
