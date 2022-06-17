package §%_§
{
   import § !D§.§'"u§;
   import §"$=§.§5#v§;
   import §"$=§.§=$&§;
   import §-!!§.§8"J§;
   import §9#K§.§=#f§;
   import §=!2§.§%"T§;
   
   public class §;l§
   {
      
      public static const §3G§:Number = 1.25;
      
      public static const §8$@§:Number = 0.15;
      
      public static const §3"b§:Number = 0.1;
      
      public static const §;!a§:int = 1500;
      
      public static const §#!p§:int = 10;
      
      public static const §&#d§:int = 15;
      
      public static const §+Y§:int = 300;
      
      public static const §<">§:int = 1000;
      
      public static const §+2§:int = 10000;
      
      public static const §?"L§:int = §+2§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §&y§:int = 1;
      
      public static const §1$C§:int = 2;
      
      public static const §9!§:int = 3;
      
      public static const §02§:int = 4;
      
      public static const §,"o§:int = 5;
      
      public static const §[#n§:String = §5#v§.CASTLE;
      
      public static const §]#w§:String = §5#v§.SLINGSHOT;
      
      protected static var §`#[§:Number;
      
      public static const §4!v§:Number = 2000;
       
      
      protected var §,!o§:Number = 1.0;
      
      protected var §3f§:Number = 0.2;
      
      protected var §7"b§:Number;
      
      protected var §-!L§:Number;
      
      protected var §1!n§:Number;
      
      public var §&!g§:§'"u§;
      
      public var §=!m§:Number;
      
      public var §1]§:Number;
      
      protected var §#s§:§+#l§;
      
      protected var §8!q§:§+#l§;
      
      protected var §>"6§:Number;
      
      protected var §&!&§:Number;
      
      protected var §+#P§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §0H§:Number;
      
      protected var §4#2§:Number;
      
      protected var §`#f§:Number;
      
      protected var §'"r§:Number;
      
      protected var §&#k§:Number;
      
      protected var §"O§:Number;
      
      protected var §>#[§:§=!_§;
      
      protected var §9O§:§=!_§;
      
      protected var §`">§:Number = 0;
      
      protected var §^j§:Number = 0;
      
      protected var §-!7§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §]!C§:Number = 0;
      
      public var §=#-§:Boolean = true;
      
      public var §4$+§:Number = 0;
      
      public var §1!Q§:Number = 0;
      
      public var §`#C§:Number = 0;
      
      public var §7!Y§:Number = 0;
      
      public var §41§:Number = 0;
      
      public var §-;§:Number = 0;
      
      public var §;"n§:Number = 0;
      
      public var §6i§:Number = 0;
      
      public var §,$@§:Number = 0;
      
      private var §<"v§:§=!_§;
      
      public var §#!Y§:Number = 0;
      
      private var §if §:Number = 0;
      
      private var §1!g§:Number = 0;
      
      private var §true §:§5#v§ = null;
      
      private var §5#p§:§5#v§ = null;
      
      public function §;l§(param1:§'"u§, param2:§=$&§, param3:Number = 1.0)
      {
         this.§<"v§ = new §=!_§(0,0,1,false);
         super();
         this.§-!L§ = 0;
         this.§1!n§ = 0;
         this.§&!g§ = param1;
         §;l§.§`#[§ = 1;
         this.§,!o§ = Math.max(1,Math.min(2,param3));
         this.§7"b§ = this.§2$B§;
         this.§,"a§(param2);
         if(this.§#s§ && this.§8!q§)
         {
            this.loadCameraBorders();
            this.§`">§ = this.§#s§.x - this.§8!q§.x;
            this.§^j§ = this.§#s§.y - this.§8!q§.y;
            this.§-!7§ = this.§#s§.scale - this.§8!q§.scale;
            this.§-!L§ = this.§#s§.x;
            this.§1!n§ = this.§#s§.y;
            §`#[§ = this.§#s§.scale * this.§7"b§;
         }
         this.mCurrentCameraSliderLocation = §+2§;
         this.§=#-§ = true;
         this.§]!C§ = §+2§ / 500;
      }
      
      public static function get §@#5§() : Number
      {
         return §%"T§.§["?§ * §'"u§.§'#e§;
      }
      
      public static function get §;#2§() : Number
      {
         return §%"T§.§01§ * §'"u§.§'#e§;
      }
      
      public static function get §%#3§() : Number
      {
         var _loc1_:Number = §%"T§.§7#W§ / §%"T§.§"x§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §`#[§ * _loc1_ * _loc1_;
      }
      
      public function get §7#-§() : Number
      {
         return this.§7"b§;
      }
      
      public function set §7#-§(param1:Number) : void
      {
         this.§7"b§ = param1;
      }
      
      public function §`!W§() : Number
      {
         return §@#5§ / (this.§'"r§ - this.§`#f§);
      }
      
      public function get §2$B§() : Number
      {
         var _loc1_:Number = §%"T§.§7#W§ / §%"T§.§"x§;
         return this.§,!o§ / _loc1_;
      }
      
      public function get §%"t§() : Number
      {
         return this.§3f§;
      }
      
      public function get § y§() : Number
      {
         return this.§>"6§;
      }
      
      public function get §?"e§() : Number
      {
         return this.§&!&§;
      }
      
      public function get borderLeft() : Number
      {
         return this.§`#f§;
      }
      
      public function get borderRight() : Number
      {
         return this.§'"r§;
      }
      
      public function get centerX() : Number
      {
         return this.§0H§;
      }
      
      public function get § D§() : Number
      {
         return this.§4#2§;
      }
      
      public function get §0!=§() : Number
      {
         return this.§'"r§ - this.§`#f§;
      }
      
      public function get §%!r§() : §+#l§
      {
         return this.§#s§;
      }
      
      public function §6$8§(param1:Number) : void
      {
         this.§7"b§ = param1;
         this.§ s§();
         this.§+#?§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §,"o§)
         {
            return;
         }
         this.goToCastleView();
         this.§4$+§ = 2000;
         this.§!#%§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§-!L§ = this.§8!q§.x;
         this.§1!n§ = this.§8!q§.y;
         this.§=#-§ = false;
         this.§]!C§ = §+2§ / 160000 * param1;
         this.setAction(§,"o§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§#s§.x - this.§8!q§.x) / 1.6;
         if(_loc1_ < §@#5§ * 1.2)
         {
            _loc1_ = §@#5§ * 1.2;
         }
         this.§`#f§ = this.§8!q§.x - _loc1_;
         this.§'"r§ = this.§#s§.x + _loc1_;
         this.§&#k§ = Math.min(this.§#s§.y,this.§8!q§.y) - §;#2§;
         this.§"O§ = Math.max(this.§#s§.y,this.§8!q§.y) + §;#2§;
         this.§0H§ = (this.§#s§.x + this.§8!q§.x) / 2;
         this.§4#2§ = (this.§#s§.y + this.§8!q§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§&!g§ = null;
      }
      
      public function §,"a§(param1:§=$&§) : void
      {
         var _loc3_:§5#v§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§^l§)
         {
            _loc3_ = param1.§3#@§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§6#K§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§;"x§(_loc3_);
            if(_loc4_ == §]#w§)
            {
               this.§8!q§ = new §+#l§(_loc5_,_loc6_,_loc7_,true);
               this.§9O§ = new §=!_§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §[#n§)
            {
               this.§#s§ = new §+#l§(_loc5_,_loc6_,_loc7_,false);
               this.§>#[§ = new §=!_§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §=#f§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §;"x§(param1:§5#v§) : Number
      {
         var _loc2_:Number = §;#2§ / (param1.bottom - param1.top);
         var _loc3_:Number = §@#5§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §9"y§(param1:§=$&§) : void
      {
         var _loc2_:§5#v§ = new §5#v§();
         _loc2_.id = §]#w§;
         _loc2_.x = this.§8!q§.x;
         _loc2_.y = this.§8!q§.y;
         var _loc3_:Number = §@#5§ / this.§8!q§.scale / 2;
         var _loc4_:Number = §;#2§ / this.§8!q§.scale / 2;
         _loc2_.left = this.§8!q§.x - _loc3_;
         _loc2_.right = this.§8!q§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§8!q§.scale;
         var _loc5_:§5#v§;
         (_loc5_ = new §5#v§()).id = §[#n§;
         _loc5_.x = this.§#s§.x;
         _loc5_.y = this.§#s§.y;
         var _loc6_:Number = §@#5§ / this.§#s§.scale / 2;
         var _loc7_:Number = §;#2§ / this.§#s§.scale / 2;
         _loc5_.left = this.§#s§.x - _loc6_;
         _loc5_.right = this.§#s§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§#s§.scale;
         param1.§@"s§();
         param1.§'§(_loc2_);
         param1.§'§(_loc5_);
      }
      
      public function §6#K§(param1:§5#v§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §%"T§.§["?§ * 0.5 / _loc2_ * §'"u§.§'#e§;
         var _loc4_:Number = param1.y - §%"T§.§01§ * 0.5 / _loc2_ * §'"u§.§'#e§;
         var _loc5_:Number = _loc3_ + §%"T§.§["?§ / _loc2_ * §'"u§.§'#e§;
         var _loc6_:Number = _loc4_ + §%"T§.§01§ / _loc2_ * §'"u§.§'#e§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §8$!§(param1:§+#l§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§]!C§;
         if(_loc3_ >= §+2§)
         {
            _loc3_ = §+2§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §5$"§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§]!C§;
         var _loc4_:Number = -§+2§ * 0.7;
         if(_loc2_ >= §+2§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §+2§;
            }
            this.§]!C§ = -this.§]!C§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §#"H§(param1:Number) : void
      {
         if(this.mCurrentAction == §,"o§)
         {
            this.§5$"§(param1);
         }
         else if(this.mCurrentAction == §&y§)
         {
            this.§8$!§(this.§#s§,param1);
         }
         else if(this.mCurrentAction == §1$C§)
         {
            this.§8$!§(this.§8!q§,-param1);
         }
         else if(this.mCurrentAction == §9!§)
         {
            this.§=#-§ = true;
         }
         else if(this.mCurrentAction == §02§)
         {
            this.§'!c§(param1);
         }
      }
      
      public function §%!6§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§true §)
         {
            this.§-!L§ = this.§true §.x;
            this.§1!n§ = this.§true §.y;
            §`#[§ = §@#5§ / (this.§true §.right - this.§true §.left);
         }
         else
         {
            this.§ s§();
            this.§#"H§(param1);
            if(Math.abs(this.§+#P§ - §%"T§.§7#W§ / §%"T§.§"x§) > 0.01)
            {
               param1 = 1000;
            }
            this.§]!^§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§!#%§();
         this.§+#P§ = §%"T§.§7#W§ / §%"T§.§"x§;
      }
      
      private function §?#g§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Number = param1;
         if(Math.abs(this.§>#[§.x - this.§9O§.x) < 0.2)
         {
            _loc3_ = 0.5;
         }
         if(Math.abs(this.§>#[§.y - this.§9O§.y) < 0.2)
         {
            _loc4_ = 0.5;
         }
         var _loc5_:Number = this.§9O§.scale + (this.§>#[§.scale - this.§9O§.scale) * _loc3_;
         var _loc6_:Number = this.§9O§.x + (this.§>#[§.x - this.§9O§.x) * _loc3_;
         var _loc7_:Number = this.§9O§.y + (this.§>#[§.y - this.§9O§.y) * _loc4_;
         this.§<"v§.x -= (this.§<"v§.x - _loc6_) * param2;
         this.§<"v§.y -= (this.§<"v§.y - _loc7_) * param2;
         this.§<"v§.scale -= (this.§<"v§.scale - _loc5_) * param2;
         this.§`"C§(this.§<"v§);
      }
      
      protected function §+#?§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`">§ != 0)
         {
            if(!this.§=#-§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §+2§;
            this.§?#g§(_loc3_,param2);
            this.§-!L§ = this.§<"v§.x;
            this.§1!n§ = this.§<"v§.y;
            §`#[§ = this.§<"v§.scale;
         }
      }
      
      private function §@s§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§8"J§;
         var _loc5_:Number = (_loc4_ = this.§&!g§.levelObjects.activeObject).§"s§();
         var _loc6_:Number = _loc4_.§7"7§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§`">§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§`">§ * §+2§;
         }
         if(param1 >= §+2§)
         {
            param1 = §+2§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §+2§;
         this.§?#g§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §%"T§.§7#W§ / §%"T§.§"x§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§<"v§.x - §@#5§ / _loc9_ * 0.5 / this.§<"v§.scale;
         var _loc11_:Number = this.§<"v§.y - §;#2§ * 0.5 / this.§<"v§.scale;
         var _loc12_:Number = this.§<"v§.x + §@#5§ / _loc9_ * 0.5 / this.§<"v§.scale;
         var _loc13_:Number = this.§<"v§.y + §;#2§ * 0.5 / this.§<"v§.scale;
         var _loc14_:Number = 150 * §'"u§.§'#e§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§`#f§,_loc15_);
         _loc17_ = Math.min(this.§'"r§,_loc17_);
         var _loc19_:Number = Math.abs(§@#5§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§;#2§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§<"v§.scale)
         {
            _loc21_ = this.§<"v§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §@#5§ / _loc9_ * 0.5 / _loc21_ > this.§'"r§)
         {
            _loc15_ = (_loc17_ = this.§'"r§) - §@#5§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§`#f§)
            {
               _loc15_ = this.§`#f§;
            }
         }
         if(_loc22_ - §@#5§ / _loc9_ * 0.5 / _loc21_ < this.§`#f§)
         {
            _loc17_ = (_loc15_ = this.§`#f§) + §@#5§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§'"r§)
            {
               _loc17_ = this.§'"r§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§@#5§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §;#2§ * 0.5 < this.§&#k§)
         {
            _loc23_ = this.§&#k§ + §;#2§ * 0.5;
         }
         if(_loc23_ + §;#2§ * 0.5 > this.§"O§)
         {
            _loc23_ = this.§"O§ - §;#2§ * 0.5;
         }
         this.§-!L§ -= (this.§-!L§ - _loc22_) * param3;
         this.§#!Y§ -= (this.§#!Y§ - _loc21_) * param3;
         §`#[§ = this.§#!Y§;
         this.§1!n§ -= (this.§1!n§ - _loc23_) * param3;
         if(_loc5_ >= this.§'"r§ || _loc5_ <= this.§`#f§)
         {
            this.§<"v§.scale = §`#[§;
            this.§<"v§.x = this.§-!L§;
            this.§<"v§.y = this.§1!n§;
         }
      }
      
      protected function §]!^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §+2§)
         {
            this.§=#-§ = true;
         }
         if(this.mCurrentAction == §9!§)
         {
            if(!this.§&!g§.levelObjects.activeObject)
            {
               this.setAction(§&y§);
               this.§,$@§ = §<">§;
            }
            else
            {
               this.§@s§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§+#?§(param1,_loc4_);
         }
      }
      
      public function §4#&§(param1:Number, param2:Number) : void
      {
         this.§if § = param1;
         this.§1!g§ = param2;
      }
      
      protected function §9!9§(param1:§=!_§, param2:§+#l§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §%"T§.§7#W§ / §%"T§.§"x§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §8$@§ + (param2.scale - §8$@§) * this.§7#-§;
         if(§@#5§ / param1.scale > (this.§'"r§ - this.§`#f§) * _loc3_)
         {
            _loc4_ = §@#5§ / ((this.§'"r§ - this.§`#f§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §]$3§(param1:§=!_§, param2:§+#l§) : Boolean
      {
         var _loc3_:Boolean = this.§9!9§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§`"C§(param1);
         return _loc3_;
      }
      
      private function §`"C§(param1:§=!_§) : void
      {
         var _loc2_:Number = §%"T§.§7#W§ / §%"T§.§"x§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §@#5§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§`#f§)
         {
            param1.x += this.§`#f§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §@#5§ / _loc2_ * 0.5 / param1.scale) > this.§'"r§)
         {
            param1.x += this.§'"r§ - _loc4_;
         }
      }
      
      private function §;m§(param1:§=!_§, param2:§+#l§) : Number
      {
         return (param1.scale - §8$@§) / (param2.scale - §8$@§);
      }
      
      protected function § s§() : void
      {
         this.§]$3§(this.§9O§,this.§8!q§);
         var _loc1_:Number = this.§;m§(this.§9O§,this.§8!q§);
         this.§]$3§(this.§>#[§,this.§#s§);
         var _loc2_:Number = this.§;m§(this.§>#[§,this.§#s§);
         this.§7"b§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §!#%§() : void
      {
         var _loc1_:Number = this.§-!L§ / §'"u§.§'#e§ + this.§if §;
         var _loc2_:Number = this.§1!n§ / §'"u§.§'#e§ + this.§1!g§;
         var _loc3_:Number = §%"T§.§7#W§;
         var _loc4_:Number = §%"T§.§"x§;
         var _loc5_:Number = §'"u§.§]!F§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §'"u§.§3"r§;
         this.§>"6§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§&!&§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§>"6§ += _loc5_ / 2 - _loc5_ / 2 / §%#3§;
         this.§&!&§ += (_loc6_ / 2 - _loc6_ / 2 / §%#3§) / (_loc3_ / _loc4_);
         this.§&!g§.setScreenOffset(this.§>"6§,this.§&!&§,§%#3§);
      }
      
      protected function §!v§() : void
      {
         this.setAction(§02§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§,$@§ = -1;
         this.§!v§();
         this.§41§ = this.§;"n§ = this.§`#C§ = param1;
         this.§-;§ = this.§6i§ = this.§7!Y§ = param2;
         this.§1!Q§ = 0;
         this.§<"v§.x = this.§-!L§;
         this.§<"v§.y = this.§1!n§;
         this.§<"v§.scale = §`#[§;
         this.§#!Y§ = §`#[§;
         if(Math.abs(this.§>#[§.x - this.§9O§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§-!L§ - this.§9O§.x) / (this.§>#[§.x - this.§9O§.x) * §+2§;
         }
         this.mDragging = true;
      }
      
      public function §'!c§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§1!Q§ += param1;
         var _loc3_:Number = this.§41§ - this.§;"n§;
         if(this.§`">§ > 0)
         {
            _loc2_ -= _loc3_ * §'"u§.§'#e§ / §%#3§ / this.§`">§ * §+2§;
            this.§=#-§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§=#-§ = true;
            }
            if(_loc2_ > §+2§)
            {
               _loc2_ += (§+2§ - _loc2_) * 0.3;
               this.§=#-§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§;"n§ = this.§41§;
      }
      
      protected function § $§() : Boolean
      {
         return this.mCurrentAction == §02§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§41§ = param1;
            this.§-;§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §02§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§41§ = param1;
            }
            _loc3_ = Math.abs(this.§41§ - this.§`#C§);
            if(this.§1!Q§ < §;!a§ && _loc3_ >= §#!p§ && _loc3_ >= §&#d§ * this.§1!Q§ / 1000)
            {
               if(this.§41§ < this.§`#C§)
               {
                  this.setAction(§&y§);
               }
               else
               {
                  this.setAction(§1$C§);
               }
               this.§]!C§ = _loc3_ / this.§1!Q§ * 10;
               this.§=#-§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§=#-§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §+2§)
               {
                  this.§=#-§ = true;
               }
            }
            else if(this.§1!Q§ < §+Y§)
            {
               this.§&=§();
               this.§]!C§ = §+2§ / (§+2§ / 500);
               this.§=#-§ = true;
            }
            else
            {
               this.§'!c§(0);
               this.§["B§(0);
               this.§]!C§ = §+2§ / (§+2§ / 500);
               this.§=#-§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §&=§() : void
      {
         if(this.mCurrentAction == §&y§)
         {
            this.setAction(§1$C§);
         }
         else if(this.mCurrentAction == §1$C§)
         {
            this.setAction(§&y§);
         }
         else if(this.mCurrentCameraSliderLocation >= §+2§ / 2)
         {
            this.setAction(§1$C§);
         }
         else if(this.mCurrentCameraSliderLocation <= §+2§ / 2)
         {
            this.setAction(§&y§);
         }
      }
      
      public function §["B§(param1:int) : void
      {
         this.§,$@§ = param1;
         if(this.mCurrentCameraSliderLocation < §+2§ / 2)
         {
            this.setAction(§1$C§);
         }
         else
         {
            this.setAction(§&y§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§1$C§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§&y§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§<"v§.x = this.§-!L§;
         this.§<"v§.y = this.§1!n§;
         this.§<"v§.scale = §`#[§;
         this.§#!Y§ = §`#[§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §+2§)
         {
            return true;
         }
         if(this.mCurrentAction == §&y§)
         {
            return true;
         }
         return false;
      }
      
      public function §%2§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §1$C§)
         {
            return true;
         }
         return false;
      }
      
      public function §0#5§(param1:§5#v§) : void
      {
         this.§true § = param1;
         if(this.§true § != null)
         {
            this.§5#p§ = new §5#v§();
            this.§5#p§.x = this.§-!L§;
            this.§5#p§.y = this.§1!n§;
            this.§5#p§.scale = §`#[§;
         }
         else
         {
            this.§-!L§ = this.§5#p§.x;
            this.§1!n§ = this.§5#p§.y;
            §`#[§ = this.§5#p§.scale;
            this.§5#p§ = null;
         }
      }
      
      protected function §2w§() : void
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
         var _loc3_:Number = this.§7"b§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§%"t§,Math.min(this.§2$B§,_loc3_));
         if(_loc3_ != this.§7"b§)
         {
            this.§7"b§ = _loc3_;
         }
      }
      
      public function §1'§() : Number
      {
         return (this.§7#-§ - this.§%"t§) / (this.§2$B§ - this.§%"t§);
      }
      
      public function §9!D§(param1:Number) : void
      {
         this.§7#-§ = Math.min(Math.max(param1,0),1) * (this.§2$B§ - this.§%"t§) + this.§%"t§;
      }
      
      public function §=!l§() : void
      {
         this.§7"b§ = Math.max(this.§7"b§ - 0.5,0.5);
      }
      
      public function §&"b§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7#-§;
         _loc1_ += " mXcenterB2: " + this.§-!L§;
         _loc1_ += " mYcenterB2: " + this.§1!n§;
         _loc1_ += " mXcenterB2target: " + this.§7#-§;
         _loc1_ += "\n mYcenterB2target: " + this.§7#-§;
         _loc1_ += " mXcenterB2previous: " + this.§7#-§;
         _loc1_ += " mYcenterB2previous: " + this.§7#-§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7#-§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7#-§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7#-§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7#-§;
         _loc1_ += " mTargetScale: " + this.§7#-§;
         _loc1_ += " mTargetScalePrevious: " + this.§7#-§;
         _loc1_ += " mCastleCameraX: " + this.§7#-§;
         _loc1_ += "\n mCastleCameraY: " + this.§7#-§;
         _loc1_ += " mCastleCameraScale: " + this.§7#-§;
         _loc1_ += " mBirdCameraX: " + this.§7#-§;
         _loc1_ += " mBirdCameraY: " + this.§7#-§;
         _loc1_ += " mBirdCameraScale: " + this.§7#-§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7#-§;
         _loc1_ += "mScreenOffsetYl: " + this.§7#-§;
         _loc1_ += " mDragging: " + this.§7#-§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7#-§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7#-§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7#-§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7#-§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7#-§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7#-§;
         _loc1_ += " mDraggingTimer: " + this.§7#-§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7#-§;
         _loc1_ += " mCameraBorderRight: " + this.§7#-§;
         _loc1_ += "mCameraBorderTop: " + this.§7#-§;
         _loc1_ += "mCameraBorderBottom: " + this.§7#-§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7#-§ + "\n ");
      }
      
      public function §]!]§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
