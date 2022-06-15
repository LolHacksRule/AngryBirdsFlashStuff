package §4§#7
{
   import §#g§.§8§;
   import §6"p§.§^"t§;
   import §7#$§.§5#-§;
   import §7#$§.§?# §;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   
   public class §`3§
   {
      
      public static const §+!Q§:Number = 1.25;
      
      public static const §`#"§:Number = 0.15;
      
      public static const §`"K§:Number = 0.1;
      
      public static const §!#M§:int = 1500;
      
      public static const §6#r§:int = 10;
      
      public static const §&s§:int = 15;
      
      public static const §]!X§:int = 300;
      
      public static const §"%§:int = 1000;
      
      public static const §;!;§:int = 10000;
      
      public static const §8"p§:int = §;!;§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §`#[§:int = 1;
      
      public static const §@>§:int = 2;
      
      public static const §<3§:int = 3;
      
      public static const §;!x§:int = 4;
      
      public static const §-"A§:int = 5;
      
      public static const §8?§:String = §5#-§.CASTLE;
      
      public static const §-$;§:String = §5#-§.SLINGSHOT;
      
      protected static var §2!G§:Number;
      
      public static const §7!z§:Number = 2000;
       
      
      protected var § use§:Number = 1.0;
      
      protected var §"#2§:Number = 0.2;
      
      protected var §5g§:Number;
      
      protected var §7$C§:Number;
      
      protected var §1"X§:Number;
      
      public var §9!E§:§8#3§;
      
      public var §&!,§:Number;
      
      public var §#j§:Number;
      
      protected var §^>§:§1#$§;
      
      protected var §1#l§:§1#$§;
      
      protected var §;0§:Number;
      
      protected var §5"a§:Number;
      
      protected var §2"b§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §#"G§:Number;
      
      protected var §<#'§:Number;
      
      protected var §-!9§:Number;
      
      protected var §6!x§:Number;
      
      protected var §8$<§:Number;
      
      protected var §&#z§:Number;
      
      protected var §1m§:§+B§;
      
      protected var §9C§:§+B§;
      
      protected var §7#a§:Number = 0;
      
      protected var §7!U§:Number = 0;
      
      protected var §0i§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §+"f§:Number = 0;
      
      public var §@!0§:Boolean = true;
      
      public var §<"q§:Number = 0;
      
      public var §9!O§:Number = 0;
      
      public var §"j§:Number = 0;
      
      public var §0F§:Number = 0;
      
      public var §=>§:Number = 0;
      
      public var §2#m§:Number = 0;
      
      public var §;B§:Number = 0;
      
      public var §'#y§:Number = 0;
      
      public var §0!E§:Number = 0;
      
      private var §9M§:§+B§;
      
      public var §?#&§:Number = 0;
      
      private var §&!l§:Number = 0;
      
      private var §?"=§:Number = 0;
      
      private var §=z§:§5#-§ = null;
      
      private var §1"%§:§5#-§ = null;
      
      public function §`3§(param1:§8#3§, param2:§?# §, param3:Number = 1.0)
      {
         this.§9M§ = new §+B§(0,0,1,false);
         super();
         this.§7$C§ = 0;
         this.§1"X§ = 0;
         this.§9!E§ = param1;
         §`3§.§2!G§ = 1;
         this.§ use§ = Math.max(1,Math.min(2,param3));
         this.§5g§ = this.§ #w§;
         this.§6$A§(param2);
         if(this.§^>§ && this.§1#l§)
         {
            this.loadCameraBorders();
            this.§7#a§ = this.§^>§.x - this.§1#l§.x;
            this.§7!U§ = this.§^>§.y - this.§1#l§.y;
            this.§0i§ = this.§^>§.scale - this.§1#l§.scale;
            this.§7$C§ = this.§^>§.x;
            this.§1"X§ = this.§^>§.y;
            §2!G§ = this.§^>§.scale * this.§5g§;
         }
         this.mCurrentCameraSliderLocation = §;!;§;
         this.§@!0§ = true;
         this.§+"f§ = §;!;§ / 500;
      }
      
      public static function get §#$7§() : Number
      {
         return §]$?§.§!!x§ * §8#3§.§2K§;
      }
      
      public static function get § 3§() : Number
      {
         return §]$?§.§@!=§ * §8#3§.§2K§;
      }
      
      public static function get §-"C§() : Number
      {
         var _loc1_:Number = §]$?§.§6p§ / §]$?§.§[#U§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §2!G§ * _loc1_ * _loc1_;
      }
      
      public function get §6"&§() : Number
      {
         return this.§5g§;
      }
      
      public function set §6"&§(param1:Number) : void
      {
         this.§5g§ = param1;
      }
      
      public function §^=§() : Number
      {
         return §#$7§ / (this.§6!x§ - this.§-!9§);
      }
      
      public function get § #w§() : Number
      {
         var _loc1_:Number = §]$?§.§6p§ / §]$?§.§[#U§;
         return this.§ use§ / _loc1_;
      }
      
      public function get §?!f§() : Number
      {
         return this.§"#2§;
      }
      
      public function get §2#<§() : Number
      {
         return this.§;0§;
      }
      
      public function get §6#3§() : Number
      {
         return this.§5"a§;
      }
      
      public function get borderLeft() : Number
      {
         return this.§-!9§;
      }
      
      public function get borderRight() : Number
      {
         return this.§6!x§;
      }
      
      public function get centerX() : Number
      {
         return this.§#"G§;
      }
      
      public function get §4#t§() : Number
      {
         return this.§<#'§;
      }
      
      public function get §0"k§() : Number
      {
         return this.§6!x§ - this.§-!9§;
      }
      
      public function get §'#"§() : §1#$§
      {
         return this.§^>§;
      }
      
      public function §[#§(param1:Number) : void
      {
         this.§5g§ = param1;
         this.§1#R§();
         this.§4>§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §-"A§)
         {
            return;
         }
         this.goToCastleView();
         this.§<"q§ = 2000;
         this.§61§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7$C§ = this.§1#l§.x;
         this.§1"X§ = this.§1#l§.y;
         this.§@!0§ = false;
         this.§+"f§ = §;!;§ / 160000 * param1;
         this.setAction(§-"A§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§^>§.x - this.§1#l§.x) / 1.6;
         if(_loc1_ < §#$7§ * 1.2)
         {
            _loc1_ = §#$7§ * 1.2;
         }
         this.§-!9§ = this.§1#l§.x - _loc1_;
         this.§6!x§ = this.§^>§.x + _loc1_;
         this.§8$<§ = Math.min(this.§^>§.y,this.§1#l§.y) - § 3§;
         this.§&#z§ = Math.max(this.§^>§.y,this.§1#l§.y) + § 3§;
         this.§#"G§ = (this.§^>§.x + this.§1#l§.x) / 2;
         this.§<#'§ = (this.§^>§.y + this.§1#l§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§9!E§ = null;
      }
      
      public function §6$A§(param1:§?# §) : void
      {
         var _loc3_:§5#-§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§##f§)
         {
            _loc3_ = param1.§,#v§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§&!m§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§>!C§(_loc3_);
            if(_loc4_ == §-$;§)
            {
               this.§1#l§ = new §1#$§(_loc5_,_loc6_,_loc7_,true);
               this.§9C§ = new §+B§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §8?§)
            {
               this.§^>§ = new §1#$§(_loc5_,_loc6_,_loc7_,false);
               this.§1m§ = new §+B§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §^"t§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §>!C§(param1:§5#-§) : Number
      {
         var _loc2_:Number = § 3§ / (param1.bottom - param1.top);
         var _loc3_:Number = §#$7§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §8!?§(param1:§?# §) : void
      {
         var _loc2_:§5#-§ = new §5#-§();
         _loc2_.id = §-$;§;
         _loc2_.x = this.§1#l§.x;
         _loc2_.y = this.§1#l§.y;
         var _loc3_:Number = §#$7§ / this.§1#l§.scale / 2;
         var _loc4_:Number = § 3§ / this.§1#l§.scale / 2;
         _loc2_.left = this.§1#l§.x - _loc3_;
         _loc2_.right = this.§1#l§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§1#l§.scale;
         var _loc5_:§5#-§;
         (_loc5_ = new §5#-§()).id = §8?§;
         _loc5_.x = this.§^>§.x;
         _loc5_.y = this.§^>§.y;
         var _loc6_:Number = §#$7§ / this.§^>§.scale / 2;
         var _loc7_:Number = § 3§ / this.§^>§.scale / 2;
         _loc5_.left = this.§^>§.x - _loc6_;
         _loc5_.right = this.§^>§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§^>§.scale;
         param1.§+!R§();
         param1.§%"%§(_loc2_);
         param1.§%"%§(_loc5_);
      }
      
      public function §&!m§(param1:§5#-§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §]$?§.§!!x§ * 0.5 / _loc2_ * §8#3§.§2K§;
         var _loc4_:Number = param1.y - §]$?§.§@!=§ * 0.5 / _loc2_ * §8#3§.§2K§;
         var _loc5_:Number = _loc3_ + §]$?§.§!!x§ / _loc2_ * §8#3§.§2K§;
         var _loc6_:Number = _loc4_ + §]$?§.§@!=§ / _loc2_ * §8#3§.§2K§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §^#D§(param1:§1#$§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§+"f§;
         if(_loc3_ >= §;!;§)
         {
            _loc3_ = §;!;§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §@!6§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§+"f§;
         var _loc4_:Number = -§;!;§ * 0.7;
         if(_loc2_ >= §;!;§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §;!;§;
            }
            this.§+"f§ = -this.§+"f§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §0!<§(param1:Number) : void
      {
         if(this.mCurrentAction == §-"A§)
         {
            this.§@!6§(param1);
         }
         else if(this.mCurrentAction == §`#[§)
         {
            this.§^#D§(this.§^>§,param1);
         }
         else if(this.mCurrentAction == §@>§)
         {
            this.§^#D§(this.§1#l§,-param1);
         }
         else if(this.mCurrentAction == §<3§)
         {
            this.§@!0§ = true;
         }
         else if(this.mCurrentAction == §;!x§)
         {
            this.§^"S§(param1);
         }
      }
      
      public function §2o§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§=z§)
         {
            this.§7$C§ = this.§=z§.x;
            this.§1"X§ = this.§=z§.y;
            §2!G§ = §#$7§ / (this.§=z§.right - this.§=z§.left);
         }
         else
         {
            this.§1#R§();
            this.§0!<§(param1);
            if(Math.abs(this.§2"b§ - §]$?§.§6p§ / §]$?§.§[#U§) > 0.01)
            {
               param1 = 1000;
            }
            this.§>V§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§61§();
         this.§2"b§ = §]$?§.§6p§ / §]$?§.§[#U§;
      }
      
      private function §&$$§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Number = param1;
         if(Math.abs(this.§1m§.x - this.§9C§.x) < 0.2)
         {
            _loc3_ = 0.5;
         }
         if(Math.abs(this.§1m§.y - this.§9C§.y) < 0.2)
         {
            _loc4_ = 0.5;
         }
         var _loc5_:Number = this.§9C§.scale + (this.§1m§.scale - this.§9C§.scale) * _loc3_;
         var _loc6_:Number = this.§9C§.x + (this.§1m§.x - this.§9C§.x) * _loc3_;
         var _loc7_:Number = this.§9C§.y + (this.§1m§.y - this.§9C§.y) * _loc4_;
         this.§9M§.x -= (this.§9M§.x - _loc6_) * param2;
         this.§9M§.y -= (this.§9M§.y - _loc7_) * param2;
         this.§9M§.scale -= (this.§9M§.scale - _loc5_) * param2;
         this.§=!N§(this.§9M§);
      }
      
      protected function §4>§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§7#a§ != 0)
         {
            if(!this.§@!0§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §;!;§;
            this.§&$$§(_loc3_,param2);
            this.§7$C§ = this.§9M§.x;
            this.§1"X§ = this.§9M§.y;
            §2!G§ = this.§9M§.scale;
         }
      }
      
      private function §]!u§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§>"G§;
         var _loc5_:Number = (_loc4_ = this.§9!E§.levelObjects.activeObject).§;!$§();
         var _loc6_:Number = _loc4_.§?#>§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§7#a§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§7#a§ * §;!;§;
         }
         if(param1 >= §;!;§)
         {
            param1 = §;!;§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §;!;§;
         this.§&$$§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §]$?§.§6p§ / §]$?§.§[#U§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§9M§.x - §#$7§ / _loc9_ * 0.5 / this.§9M§.scale;
         var _loc11_:Number = this.§9M§.y - § 3§ * 0.5 / this.§9M§.scale;
         var _loc12_:Number = this.§9M§.x + §#$7§ / _loc9_ * 0.5 / this.§9M§.scale;
         var _loc13_:Number = this.§9M§.y + § 3§ * 0.5 / this.§9M§.scale;
         var _loc14_:Number = 150 * §8#3§.§2K§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§-!9§,_loc15_);
         _loc17_ = Math.min(this.§6!x§,_loc17_);
         var _loc19_:Number = Math.abs(§#$7§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§ 3§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§9M§.scale)
         {
            _loc21_ = this.§9M§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §#$7§ / _loc9_ * 0.5 / _loc21_ > this.§6!x§)
         {
            _loc15_ = (_loc17_ = this.§6!x§) - §#$7§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§-!9§)
            {
               _loc15_ = this.§-!9§;
            }
         }
         if(_loc22_ - §#$7§ / _loc9_ * 0.5 / _loc21_ < this.§-!9§)
         {
            _loc17_ = (_loc15_ = this.§-!9§) + §#$7§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§6!x§)
            {
               _loc17_ = this.§6!x§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§#$7§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - § 3§ * 0.5 < this.§8$<§)
         {
            _loc23_ = this.§8$<§ + § 3§ * 0.5;
         }
         if(_loc23_ + § 3§ * 0.5 > this.§&#z§)
         {
            _loc23_ = this.§&#z§ - § 3§ * 0.5;
         }
         this.§7$C§ -= (this.§7$C§ - _loc22_) * param3;
         this.§?#&§ -= (this.§?#&§ - _loc21_) * param3;
         §2!G§ = this.§?#&§;
         this.§1"X§ -= (this.§1"X§ - _loc23_) * param3;
         if(_loc5_ >= this.§6!x§ || _loc5_ <= this.§-!9§)
         {
            this.§9M§.scale = §2!G§;
            this.§9M§.x = this.§7$C§;
            this.§9M§.y = this.§1"X§;
         }
      }
      
      protected function §>V§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §;!;§)
         {
            this.§@!0§ = true;
         }
         if(this.mCurrentAction == §<3§)
         {
            if(!this.§9!E§.levelObjects.activeObject)
            {
               this.setAction(§`#[§);
               this.§0!E§ = §"%§;
            }
            else
            {
               this.§]!u§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§4>§(param1,_loc4_);
         }
      }
      
      public function §<!?§(param1:Number, param2:Number) : void
      {
         this.§&!l§ = param1;
         this.§?"=§ = param2;
      }
      
      protected function §`"z§(param1:§+B§, param2:§1#$§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §]$?§.§6p§ / §]$?§.§[#U§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §`#"§ + (param2.scale - §`#"§) * this.§6"&§;
         if(§#$7§ / param1.scale > (this.§6!x§ - this.§-!9§) * _loc3_)
         {
            _loc4_ = §#$7§ / ((this.§6!x§ - this.§-!9§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §3"B§(param1:§+B§, param2:§1#$§) : Boolean
      {
         var _loc3_:Boolean = this.§`"z§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§=!N§(param1);
         return _loc3_;
      }
      
      private function §=!N§(param1:§+B§) : void
      {
         var _loc2_:Number = §]$?§.§6p§ / §]$?§.§[#U§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §#$7§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§-!9§)
         {
            param1.x += this.§-!9§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §#$7§ / _loc2_ * 0.5 / param1.scale) > this.§6!x§)
         {
            param1.x += this.§6!x§ - _loc4_;
         }
      }
      
      private function §<]§(param1:§+B§, param2:§1#$§) : Number
      {
         return (param1.scale - §`#"§) / (param2.scale - §`#"§);
      }
      
      protected function §1#R§() : void
      {
         this.§3"B§(this.§9C§,this.§1#l§);
         var _loc1_:Number = this.§<]§(this.§9C§,this.§1#l§);
         this.§3"B§(this.§1m§,this.§^>§);
         var _loc2_:Number = this.§<]§(this.§1m§,this.§^>§);
         this.§5g§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §61§() : void
      {
         var _loc1_:Number = this.§7$C§ / §8#3§.§2K§ + this.§&!l§;
         var _loc2_:Number = this.§1"X§ / §8#3§.§2K§ + this.§?"=§;
         var _loc3_:Number = §]$?§.§6p§;
         var _loc4_:Number = §]$?§.§[#U§;
         var _loc5_:Number = §8#3§.§"#I§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §8#3§.§<" §;
         this.§;0§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§5"a§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§;0§ += _loc5_ / 2 - _loc5_ / 2 / §-"C§;
         this.§5"a§ += (_loc6_ / 2 - _loc6_ / 2 / §-"C§) / (_loc3_ / _loc4_);
         this.§9!E§.setScreenOffset(this.§;0§,this.§5"a§,§-"C§);
      }
      
      protected function §-!o§() : void
      {
         this.setAction(§;!x§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§0!E§ = -1;
         this.§-!o§();
         this.§=>§ = this.§;B§ = this.§"j§ = param1;
         this.§2#m§ = this.§'#y§ = this.§0F§ = param2;
         this.§9!O§ = 0;
         this.§9M§.x = this.§7$C§;
         this.§9M§.y = this.§1"X§;
         this.§9M§.scale = §2!G§;
         this.§?#&§ = §2!G§;
         if(Math.abs(this.§1m§.x - this.§9C§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7$C§ - this.§9C§.x) / (this.§1m§.x - this.§9C§.x) * §;!;§;
         }
         this.mDragging = true;
      }
      
      public function §^"S§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§9!O§ += param1;
         var _loc3_:Number = this.§=>§ - this.§;B§;
         if(this.§7#a§ > 0)
         {
            _loc2_ -= _loc3_ * §8#3§.§2K§ / §-"C§ / this.§7#a§ * §;!;§;
            this.§@!0§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§@!0§ = true;
            }
            if(_loc2_ > §;!;§)
            {
               _loc2_ += (§;!;§ - _loc2_) * 0.3;
               this.§@!0§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§;B§ = this.§=>§;
      }
      
      protected function §,z§() : Boolean
      {
         return this.mCurrentAction == §;!x§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§=>§ = param1;
            this.§2#m§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;!x§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§=>§ = param1;
            }
            _loc3_ = Math.abs(this.§=>§ - this.§"j§);
            if(this.§9!O§ < §!#M§ && _loc3_ >= §6#r§ && _loc3_ >= §&s§ * this.§9!O§ / 1000)
            {
               if(this.§=>§ < this.§"j§)
               {
                  this.setAction(§`#[§);
               }
               else
               {
                  this.setAction(§@>§);
               }
               this.§+"f§ = _loc3_ / this.§9!O§ * 10;
               this.§@!0§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§@!0§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §;!;§)
               {
                  this.§@!0§ = true;
               }
            }
            else if(this.§9!O§ < §]!X§)
            {
               this.§+k§();
               this.§+"f§ = §;!;§ / (§;!;§ / 500);
               this.§@!0§ = true;
            }
            else
            {
               this.§^"S§(0);
               this.§58§(0);
               this.§+"f§ = §;!;§ / (§;!;§ / 500);
               this.§@!0§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §+k§() : void
      {
         if(this.mCurrentAction == §`#[§)
         {
            this.setAction(§@>§);
         }
         else if(this.mCurrentAction == §@>§)
         {
            this.setAction(§`#[§);
         }
         else if(this.mCurrentCameraSliderLocation >= §;!;§ / 2)
         {
            this.setAction(§@>§);
         }
         else if(this.mCurrentCameraSliderLocation <= §;!;§ / 2)
         {
            this.setAction(§`#[§);
         }
      }
      
      public function §58§(param1:int) : void
      {
         this.§0!E§ = param1;
         if(this.mCurrentCameraSliderLocation < §;!;§ / 2)
         {
            this.setAction(§@>§);
         }
         else
         {
            this.setAction(§`#[§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§@>§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§`#[§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§9M§.x = this.§7$C§;
         this.§9M§.y = this.§1"X§;
         this.§9M§.scale = §2!G§;
         this.§?#&§ = §2!G§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §;!;§)
         {
            return true;
         }
         if(this.mCurrentAction == §`#[§)
         {
            return true;
         }
         return false;
      }
      
      public function §%$2§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §@>§)
         {
            return true;
         }
         return false;
      }
      
      public function §-F§(param1:§5#-§) : void
      {
         this.§=z§ = param1;
         if(this.§=z§ != null)
         {
            this.§1"%§ = new §5#-§();
            this.§1"%§.x = this.§7$C§;
            this.§1"%§.y = this.§1"X§;
            this.§1"%§.scale = §2!G§;
         }
         else
         {
            this.§7$C§ = this.§1"%§.x;
            this.§1"X§ = this.§1"%§.y;
            §2!G§ = this.§1"%§.scale;
            this.§1"%§ = null;
         }
      }
      
      protected function §5!A§() : void
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
         var _loc3_:Number = this.§5g§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§?!f§,Math.min(this.§ #w§,_loc3_));
         if(_loc3_ != this.§5g§)
         {
            this.§5g§ = _loc3_;
         }
      }
      
      public function §<!o§() : Number
      {
         return (this.§6"&§ - this.§?!f§) / (this.§ #w§ - this.§?!f§);
      }
      
      public function §6"0§(param1:Number) : void
      {
         this.§6"&§ = Math.min(Math.max(param1,0),1) * (this.§ #w§ - this.§?!f§) + this.§?!f§;
      }
      
      public function § "-§() : void
      {
         this.§5g§ = Math.max(this.§5g§ - 0.5,0.5);
      }
      
      public function §6#[§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§6"&§;
         _loc1_ += " mXcenterB2: " + this.§7$C§;
         _loc1_ += " mYcenterB2: " + this.§1"X§;
         _loc1_ += " mXcenterB2target: " + this.§6"&§;
         _loc1_ += "\n mYcenterB2target: " + this.§6"&§;
         _loc1_ += " mXcenterB2previous: " + this.§6"&§;
         _loc1_ += " mYcenterB2previous: " + this.§6"&§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§6"&§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§6"&§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§6"&§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§6"&§;
         _loc1_ += " mTargetScale: " + this.§6"&§;
         _loc1_ += " mTargetScalePrevious: " + this.§6"&§;
         _loc1_ += " mCastleCameraX: " + this.§6"&§;
         _loc1_ += "\n mCastleCameraY: " + this.§6"&§;
         _loc1_ += " mCastleCameraScale: " + this.§6"&§;
         _loc1_ += " mBirdCameraX: " + this.§6"&§;
         _loc1_ += " mBirdCameraY: " + this.§6"&§;
         _loc1_ += " mBirdCameraScale: " + this.§6"&§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§6"&§;
         _loc1_ += "mScreenOffsetYl: " + this.§6"&§;
         _loc1_ += " mDragging: " + this.§6"&§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§6"&§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§6"&§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§6"&§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§6"&§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§6"&§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§6"&§;
         _loc1_ += " mDraggingTimer: " + this.§6"&§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§6"&§;
         _loc1_ += " mCameraBorderRight: " + this.§6"&§;
         _loc1_ += "mCameraBorderTop: " + this.§6"&§;
         _loc1_ += "mCameraBorderBottom: " + this.§6"&§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§6"&§ + "\n ");
      }
      
      public function §"v§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
