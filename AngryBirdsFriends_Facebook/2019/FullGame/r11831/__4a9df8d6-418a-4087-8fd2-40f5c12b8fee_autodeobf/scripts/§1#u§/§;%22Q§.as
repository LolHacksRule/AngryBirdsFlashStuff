package §1#u§
{
   import §,"v§.§7!J§;
   import §,"v§.§<x§;
   import §1#v§.§;!Y§;
   import §6!3§.§;!U§;
   import §>2§.§!6§;
   import §`#@§.§7n§;
   
   public class §;"Q§
   {
      
      public static const §-$9§:Number = 1.25;
      
      public static const §[^§:Number = 0.15;
      
      public static const §=_§:Number = 0.1;
      
      public static const §<#P§:int = 1500;
      
      public static const §2!R§:int = 10;
      
      public static const §5Z§:int = 15;
      
      public static const §5#H§:int = 300;
      
      public static const §8"U§:int = 1000;
      
      public static const §""9§:int = 10000;
      
      public static const § k§:int = §""9§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §4s§:int = 1;
      
      public static const §"8§:int = 2;
      
      public static const §!! §:int = 3;
      
      public static const §;k§:int = 4;
      
      public static const §+O§:int = 5;
      
      public static const §&!b§:String = §<x§.CASTLE;
      
      public static const §-!S§:String = §<x§.SLINGSHOT;
      
      protected static var §3"V§:Number;
      
      public static const §##2§:Number = 2000;
       
      
      protected var §2#D§:Number = 1.0;
      
      protected var §,!'§:Number = 0.2;
      
      protected var §&"1§:Number;
      
      protected var §@G§:Number;
      
      protected var §3"v§:Number;
      
      public var §5#0§:§!6§;
      
      public var §^#a§:Number;
      
      public var §`"R§:Number;
      
      protected var §3"_§:§+X§;
      
      protected var §,!§:§+X§;
      
      protected var §-!]§:Number;
      
      protected var §2"v§:Number;
      
      protected var §!!D§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §!#V§:Number;
      
      protected var §&"S§:Number;
      
      protected var §03§:Number;
      
      protected var §+!U§:Number;
      
      protected var §0!D§:Number;
      
      protected var §0!i§:Number;
      
      protected var §8"y§:§#"s§;
      
      protected var §8"N§:§#"s§;
      
      protected var §5"3§:Number = 0;
      
      protected var §^C§:Number = 0;
      
      protected var §1!;§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §7$E§:Number = 0;
      
      public var §0"7§:Boolean = true;
      
      public var § #[§:Number = 0;
      
      public var §3!h§:Number = 0;
      
      public var §&!k§:Number = 0;
      
      public var §@">§:Number = 0;
      
      public var §]!I§:Number = 0;
      
      public var §6$9§:Number = 0;
      
      public var §4!l§:Number = 0;
      
      public var §<!Q§:Number = 0;
      
      public var §?#$§:Number = 0;
      
      private var §;#D§:§#"s§;
      
      public var §1l§:Number = 0;
      
      private var §<#C§:Number = 0;
      
      private var §""a§:Number = 0;
      
      private var §6"-§:§<x§ = null;
      
      private var §&#T§:§<x§ = null;
      
      public function §;"Q§(param1:§!6§, param2:§7!J§, param3:Number = 1.0)
      {
         this.§;#D§ = new §#"s§(0,0,1,false);
         super();
         this.§@G§ = 0;
         this.§3"v§ = 0;
         this.§5#0§ = param1;
         §;"Q§.§3"V§ = 1;
         this.§2#D§ = Math.max(1,Math.min(2,param3));
         this.§&"1§ = this.§,#X§;
         this.§1#§(param2);
         if(this.§3"_§ && this.§,!§)
         {
            this.loadCameraBorders();
            this.§5"3§ = this.§3"_§.x - this.§,!§.x;
            this.§^C§ = this.§3"_§.y - this.§,!§.y;
            this.§1!;§ = this.§3"_§.scale - this.§,!§.scale;
            this.§@G§ = this.§3"_§.x;
            this.§3"v§ = this.§3"_§.y;
            §3"V§ = this.§3"_§.scale * this.§&"1§;
         }
         this.mCurrentCameraSliderLocation = §""9§;
         this.§0"7§ = true;
         this.§7$E§ = §""9§ / 500;
      }
      
      public static function get §[$8§() : Number
      {
         return §7n§.§1!Q§ * §!6§.§[#v§;
      }
      
      public static function get §`"N§() : Number
      {
         return §7n§.§##3§ * §!6§.§[#v§;
      }
      
      public static function get §>m§() : Number
      {
         var _loc1_:Number = §7n§.§9#o§ / §7n§.§'#M§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §3"V§ * _loc1_ * _loc1_;
      }
      
      public function get §?"G§() : Number
      {
         return this.§&"1§;
      }
      
      public function set §?"G§(param1:Number) : void
      {
         this.§&"1§ = param1;
      }
      
      public function § "c§() : Number
      {
         return §[$8§ / (this.§+!U§ - this.§03§);
      }
      
      public function get §,#X§() : Number
      {
         var _loc1_:Number = §7n§.§9#o§ / §7n§.§'#M§;
         return this.§2#D§ / _loc1_;
      }
      
      public function get §@#%§() : Number
      {
         return this.§,!'§;
      }
      
      public function get §%!t§() : Number
      {
         return this.§-!]§;
      }
      
      public function get §<#U§() : Number
      {
         return this.§2"v§;
      }
      
      public function get borderLeft() : Number
      {
         return this.§03§;
      }
      
      public function get borderRight() : Number
      {
         return this.§+!U§;
      }
      
      public function get centerX() : Number
      {
         return this.§!#V§;
      }
      
      public function get §]"7§() : Number
      {
         return this.§&"S§;
      }
      
      public function get §"§() : Number
      {
         return this.§+!U§ - this.§03§;
      }
      
      public function get §%!X§() : §+X§
      {
         return this.§3"_§;
      }
      
      public function §8#8§(param1:Number) : void
      {
         this.§&"1§ = param1;
         this.§&!C§();
         this.§,§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §+O§)
         {
            return;
         }
         this.goToCastleView();
         this.§ #[§ = 2000;
         this.§ !D§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§@G§ = this.§,!§.x;
         this.§3"v§ = this.§,!§.y;
         this.§0"7§ = false;
         this.§7$E§ = §""9§ / 160000 * param1;
         this.setAction(§+O§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§3"_§.x - this.§,!§.x) / 1.6;
         if(_loc1_ < §[$8§ * 1.2)
         {
            _loc1_ = §[$8§ * 1.2;
         }
         this.§03§ = this.§,!§.x - _loc1_;
         this.§+!U§ = this.§3"_§.x + _loc1_;
         this.§0!D§ = Math.min(this.§3"_§.y,this.§,!§.y) - §`"N§;
         this.§0!i§ = Math.max(this.§3"_§.y,this.§,!§.y) + §`"N§;
         this.§!#V§ = (this.§3"_§.x + this.§,!§.x) / 2;
         this.§&"S§ = (this.§3"_§.y + this.§,!§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§5#0§ = null;
      }
      
      public function §1#§(param1:§7!J§) : void
      {
         var _loc3_:§<x§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§"$D§)
         {
            _loc3_ = param1.§1d§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§&"p§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§!o§(_loc3_);
            if(_loc4_ == §-!S§)
            {
               this.§,!§ = new §+X§(_loc5_,_loc6_,_loc7_,true);
               this.§8"N§ = new §#"s§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §&!b§)
            {
               this.§3"_§ = new §+X§(_loc5_,_loc6_,_loc7_,false);
               this.§8"y§ = new §#"s§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §;!Y§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §!o§(param1:§<x§) : Number
      {
         var _loc2_:Number = §`"N§ / (param1.bottom - param1.top);
         var _loc3_:Number = §[$8§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §`"C§(param1:§7!J§) : void
      {
         var _loc2_:§<x§ = new §<x§();
         _loc2_.id = §-!S§;
         _loc2_.x = this.§,!§.x;
         _loc2_.y = this.§,!§.y;
         var _loc3_:Number = §[$8§ / this.§,!§.scale / 2;
         var _loc4_:Number = §`"N§ / this.§,!§.scale / 2;
         _loc2_.left = this.§,!§.x - _loc3_;
         _loc2_.right = this.§,!§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§,!§.scale;
         var _loc5_:§<x§;
         (_loc5_ = new §<x§()).id = §&!b§;
         _loc5_.x = this.§3"_§.x;
         _loc5_.y = this.§3"_§.y;
         var _loc6_:Number = §[$8§ / this.§3"_§.scale / 2;
         var _loc7_:Number = §`"N§ / this.§3"_§.scale / 2;
         _loc5_.left = this.§3"_§.x - _loc6_;
         _loc5_.right = this.§3"_§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§3"_§.scale;
         param1.§'1§();
         param1.§="%§(_loc2_);
         param1.§="%§(_loc5_);
      }
      
      public function §&"p§(param1:§<x§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §7n§.§1!Q§ * 0.5 / _loc2_ * §!6§.§[#v§;
         var _loc4_:Number = param1.y - §7n§.§##3§ * 0.5 / _loc2_ * §!6§.§[#v§;
         var _loc5_:Number = _loc3_ + §7n§.§1!Q§ / _loc2_ * §!6§.§[#v§;
         var _loc6_:Number = _loc4_ + §7n§.§##3§ / _loc2_ * §!6§.§[#v§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §-2§(param1:§+X§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§7$E§;
         if(_loc3_ >= §""9§)
         {
            _loc3_ = §""9§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §8#x§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§7$E§;
         var _loc4_:Number = -§""9§ * 0.7;
         if(_loc2_ >= §""9§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §""9§;
            }
            this.§7$E§ = -this.§7$E§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §3#0§(param1:Number) : void
      {
         if(this.mCurrentAction == §+O§)
         {
            this.§8#x§(param1);
         }
         else if(this.mCurrentAction == §4s§)
         {
            this.§-2§(this.§3"_§,param1);
         }
         else if(this.mCurrentAction == §"8§)
         {
            this.§-2§(this.§,!§,-param1);
         }
         else if(this.mCurrentAction == §!! §)
         {
            this.§0"7§ = true;
         }
         else if(this.mCurrentAction == §;k§)
         {
            this.§&9§(param1);
         }
      }
      
      public function §2!_§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§6"-§)
         {
            this.§@G§ = this.§6"-§.x;
            this.§3"v§ = this.§6"-§.y;
            §3"V§ = §[$8§ / (this.§6"-§.right - this.§6"-§.left);
         }
         else
         {
            this.§&!C§();
            this.§3#0§(param1);
            if(Math.abs(this.§!!D§ - §7n§.§9#o§ / §7n§.§'#M§) > 0.01)
            {
               param1 = 1000;
            }
            this.§4Q§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§ !D§();
         this.§!!D§ = §7n§.§9#o§ / §7n§.§'#M§;
      }
      
      private function §%"M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Number = param1;
         if(Math.abs(this.§8"y§.x - this.§8"N§.x) < 0.2)
         {
            _loc3_ = 0.5;
         }
         if(Math.abs(this.§8"y§.y - this.§8"N§.y) < 0.2)
         {
            _loc4_ = 0.5;
         }
         var _loc5_:Number = this.§8"N§.scale + (this.§8"y§.scale - this.§8"N§.scale) * _loc3_;
         var _loc6_:Number = this.§8"N§.x + (this.§8"y§.x - this.§8"N§.x) * _loc3_;
         var _loc7_:Number = this.§8"N§.y + (this.§8"y§.y - this.§8"N§.y) * _loc4_;
         this.§;#D§.x -= (this.§;#D§.x - _loc6_) * param2;
         this.§;#D§.y -= (this.§;#D§.y - _loc7_) * param2;
         this.§;#D§.scale -= (this.§;#D§.scale - _loc5_) * param2;
         this.§>"Z§(this.§;#D§);
      }
      
      protected function §,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§5"3§ != 0)
         {
            if(!this.§0"7§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §""9§;
            this.§%"M§(_loc3_,param2);
            this.§@G§ = this.§;#D§.x;
            this.§3"v§ = this.§;#D§.y;
            §3"V§ = this.§;#D§.scale;
         }
      }
      
      private function §8B§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§;!U§;
         var _loc5_:Number = (_loc4_ = this.§5#0§.levelObjects.activeObject).§["]§();
         var _loc6_:Number = _loc4_.§;"y§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§5"3§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§5"3§ * §""9§;
         }
         if(param1 >= §""9§)
         {
            param1 = §""9§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §""9§;
         this.§%"M§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §7n§.§9#o§ / §7n§.§'#M§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§;#D§.x - §[$8§ / _loc9_ * 0.5 / this.§;#D§.scale;
         var _loc11_:Number = this.§;#D§.y - §`"N§ * 0.5 / this.§;#D§.scale;
         var _loc12_:Number = this.§;#D§.x + §[$8§ / _loc9_ * 0.5 / this.§;#D§.scale;
         var _loc13_:Number = this.§;#D§.y + §`"N§ * 0.5 / this.§;#D§.scale;
         var _loc14_:Number = 150 * §!6§.§[#v§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§03§,_loc15_);
         _loc17_ = Math.min(this.§+!U§,_loc17_);
         var _loc19_:Number = Math.abs(§[$8§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§`"N§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§;#D§.scale)
         {
            _loc21_ = this.§;#D§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §[$8§ / _loc9_ * 0.5 / _loc21_ > this.§+!U§)
         {
            _loc15_ = (_loc17_ = this.§+!U§) - §[$8§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§03§)
            {
               _loc15_ = this.§03§;
            }
         }
         if(_loc22_ - §[$8§ / _loc9_ * 0.5 / _loc21_ < this.§03§)
         {
            _loc17_ = (_loc15_ = this.§03§) + §[$8§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§+!U§)
            {
               _loc17_ = this.§+!U§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§[$8§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §`"N§ * 0.5 < this.§0!D§)
         {
            _loc23_ = this.§0!D§ + §`"N§ * 0.5;
         }
         if(_loc23_ + §`"N§ * 0.5 > this.§0!i§)
         {
            _loc23_ = this.§0!i§ - §`"N§ * 0.5;
         }
         this.§@G§ -= (this.§@G§ - _loc22_) * param3;
         this.§1l§ -= (this.§1l§ - _loc21_) * param3;
         §3"V§ = this.§1l§;
         this.§3"v§ -= (this.§3"v§ - _loc23_) * param3;
         if(_loc5_ >= this.§+!U§ || _loc5_ <= this.§03§)
         {
            this.§;#D§.scale = §3"V§;
            this.§;#D§.x = this.§@G§;
            this.§;#D§.y = this.§3"v§;
         }
      }
      
      protected function §4Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §""9§)
         {
            this.§0"7§ = true;
         }
         if(this.mCurrentAction == §!! §)
         {
            if(!this.§5#0§.levelObjects.activeObject)
            {
               this.setAction(§4s§);
               this.§?#$§ = §8"U§;
            }
            else
            {
               this.§8B§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§,§(param1,_loc4_);
         }
      }
      
      public function §;$%§(param1:Number, param2:Number) : void
      {
         this.§<#C§ = param1;
         this.§""a§ = param2;
      }
      
      protected function §9H§(param1:§#"s§, param2:§+X§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §7n§.§9#o§ / §7n§.§'#M§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §[^§ + (param2.scale - §[^§) * this.§?"G§;
         if(§[$8§ / param1.scale > (this.§+!U§ - this.§03§) * _loc3_)
         {
            _loc4_ = §[$8§ / ((this.§+!U§ - this.§03§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §9!=§(param1:§#"s§, param2:§+X§) : Boolean
      {
         var _loc3_:Boolean = this.§9H§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§>"Z§(param1);
         return _loc3_;
      }
      
      private function §>"Z§(param1:§#"s§) : void
      {
         var _loc2_:Number = §7n§.§9#o§ / §7n§.§'#M§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §[$8§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§03§)
         {
            param1.x += this.§03§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §[$8§ / _loc2_ * 0.5 / param1.scale) > this.§+!U§)
         {
            param1.x += this.§+!U§ - _loc4_;
         }
      }
      
      private function §&!q§(param1:§#"s§, param2:§+X§) : Number
      {
         return (param1.scale - §[^§) / (param2.scale - §[^§);
      }
      
      protected function §&!C§() : void
      {
         this.§9!=§(this.§8"N§,this.§,!§);
         var _loc1_:Number = this.§&!q§(this.§8"N§,this.§,!§);
         this.§9!=§(this.§8"y§,this.§3"_§);
         var _loc2_:Number = this.§&!q§(this.§8"y§,this.§3"_§);
         this.§&"1§ = Math.min(_loc1_,_loc2_);
      }
      
      public function § !D§() : void
      {
         var _loc1_:Number = this.§@G§ / §!6§.§[#v§ + this.§<#C§;
         var _loc2_:Number = this.§3"v§ / §!6§.§[#v§ + this.§""a§;
         var _loc3_:Number = §7n§.§9#o§;
         var _loc4_:Number = §7n§.§'#M§;
         var _loc5_:Number = §!6§.§+#P§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §!6§.§5"f§;
         this.§-!]§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§2"v§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§-!]§ += _loc5_ / 2 - _loc5_ / 2 / §>m§;
         this.§2"v§ += (_loc6_ / 2 - _loc6_ / 2 / §>m§) / (_loc3_ / _loc4_);
         this.§5#0§.setScreenOffset(this.§-!]§,this.§2"v§,§>m§);
      }
      
      protected function §`$<§() : void
      {
         this.setAction(§;k§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§?#$§ = -1;
         this.§`$<§();
         this.§]!I§ = this.§4!l§ = this.§&!k§ = param1;
         this.§6$9§ = this.§<!Q§ = this.§@">§ = param2;
         this.§3!h§ = 0;
         this.§;#D§.x = this.§@G§;
         this.§;#D§.y = this.§3"v§;
         this.§;#D§.scale = §3"V§;
         this.§1l§ = §3"V§;
         if(Math.abs(this.§8"y§.x - this.§8"N§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§@G§ - this.§8"N§.x) / (this.§8"y§.x - this.§8"N§.x) * §""9§;
         }
         this.mDragging = true;
      }
      
      public function §&9§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§3!h§ += param1;
         var _loc3_:Number = this.§]!I§ - this.§4!l§;
         if(this.§5"3§ > 0)
         {
            _loc2_ -= _loc3_ * §!6§.§[#v§ / §>m§ / this.§5"3§ * §""9§;
            this.§0"7§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§0"7§ = true;
            }
            if(_loc2_ > §""9§)
            {
               _loc2_ += (§""9§ - _loc2_) * 0.3;
               this.§0"7§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§4!l§ = this.§]!I§;
      }
      
      protected function §+p§() : Boolean
      {
         return this.mCurrentAction == §;k§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§]!I§ = param1;
            this.§6$9§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;k§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§]!I§ = param1;
            }
            _loc3_ = Math.abs(this.§]!I§ - this.§&!k§);
            if(this.§3!h§ < §<#P§ && _loc3_ >= §2!R§ && _loc3_ >= §5Z§ * this.§3!h§ / 1000)
            {
               if(this.§]!I§ < this.§&!k§)
               {
                  this.setAction(§4s§);
               }
               else
               {
                  this.setAction(§"8§);
               }
               this.§7$E§ = _loc3_ / this.§3!h§ * 10;
               this.§0"7§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§0"7§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §""9§)
               {
                  this.§0"7§ = true;
               }
            }
            else if(this.§3!h§ < §5#H§)
            {
               this.§""5§();
               this.§7$E§ = §""9§ / (§""9§ / 500);
               this.§0"7§ = true;
            }
            else
            {
               this.§&9§(0);
               this.§=o§(0);
               this.§7$E§ = §""9§ / (§""9§ / 500);
               this.§0"7§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §""5§() : void
      {
         if(this.mCurrentAction == §4s§)
         {
            this.setAction(§"8§);
         }
         else if(this.mCurrentAction == §"8§)
         {
            this.setAction(§4s§);
         }
         else if(this.mCurrentCameraSliderLocation >= §""9§ / 2)
         {
            this.setAction(§"8§);
         }
         else if(this.mCurrentCameraSliderLocation <= §""9§ / 2)
         {
            this.setAction(§4s§);
         }
      }
      
      public function §=o§(param1:int) : void
      {
         this.§?#$§ = param1;
         if(this.mCurrentCameraSliderLocation < §""9§ / 2)
         {
            this.setAction(§"8§);
         }
         else
         {
            this.setAction(§4s§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§"8§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§4s§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§;#D§.x = this.§@G§;
         this.§;#D§.y = this.§3"v§;
         this.§;#D§.scale = §3"V§;
         this.§1l§ = §3"V§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §""9§)
         {
            return true;
         }
         if(this.mCurrentAction == §4s§)
         {
            return true;
         }
         return false;
      }
      
      public function §3"y§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"8§)
         {
            return true;
         }
         return false;
      }
      
      public function §["0§(param1:§<x§) : void
      {
         this.§6"-§ = param1;
         if(this.§6"-§ != null)
         {
            this.§&#T§ = new §<x§();
            this.§&#T§.x = this.§@G§;
            this.§&#T§.y = this.§3"v§;
            this.§&#T§.scale = §3"V§;
         }
         else
         {
            this.§@G§ = this.§&#T§.x;
            this.§3"v§ = this.§&#T§.y;
            §3"V§ = this.§&#T§.scale;
            this.§&#T§ = null;
         }
      }
      
      protected function §3b§() : void
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
         var _loc3_:Number = this.§&"1§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§@#%§,Math.min(this.§,#X§,_loc3_));
         if(_loc3_ != this.§&"1§)
         {
            this.§&"1§ = _loc3_;
         }
      }
      
      public function §]6§() : Number
      {
         return (this.§?"G§ - this.§@#%§) / (this.§,#X§ - this.§@#%§);
      }
      
      public function § K§(param1:Number) : void
      {
         this.§?"G§ = Math.min(Math.max(param1,0),1) * (this.§,#X§ - this.§@#%§) + this.§@#%§;
      }
      
      public function §%$"§() : void
      {
         this.§&"1§ = Math.max(this.§&"1§ - 0.5,0.5);
      }
      
      public function §7"l§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§?"G§;
         _loc1_ += " mXcenterB2: " + this.§@G§;
         _loc1_ += " mYcenterB2: " + this.§3"v§;
         _loc1_ += " mXcenterB2target: " + this.§?"G§;
         _loc1_ += "\n mYcenterB2target: " + this.§?"G§;
         _loc1_ += " mXcenterB2previous: " + this.§?"G§;
         _loc1_ += " mYcenterB2previous: " + this.§?"G§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§?"G§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§?"G§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§?"G§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§?"G§;
         _loc1_ += " mTargetScale: " + this.§?"G§;
         _loc1_ += " mTargetScalePrevious: " + this.§?"G§;
         _loc1_ += " mCastleCameraX: " + this.§?"G§;
         _loc1_ += "\n mCastleCameraY: " + this.§?"G§;
         _loc1_ += " mCastleCameraScale: " + this.§?"G§;
         _loc1_ += " mBirdCameraX: " + this.§?"G§;
         _loc1_ += " mBirdCameraY: " + this.§?"G§;
         _loc1_ += " mBirdCameraScale: " + this.§?"G§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§?"G§;
         _loc1_ += "mScreenOffsetYl: " + this.§?"G§;
         _loc1_ += " mDragging: " + this.§?"G§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§?"G§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§?"G§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§?"G§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§?"G§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§?"G§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§?"G§;
         _loc1_ += " mDraggingTimer: " + this.§?"G§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§?"G§;
         _loc1_ += " mCameraBorderRight: " + this.§?"G§;
         _loc1_ += "mCameraBorderTop: " + this.§?"G§;
         _loc1_ += "mCameraBorderBottom: " + this.§?"G§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§?"G§ + "\n ");
      }
      
      public function §3#R§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
