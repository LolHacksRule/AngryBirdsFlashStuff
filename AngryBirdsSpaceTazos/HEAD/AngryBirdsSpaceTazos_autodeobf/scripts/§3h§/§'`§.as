package §3h§
{
   import §1z§.§2#§;
   import §1z§.§5!R§;
   import §3"#§.§`"8§;
   import §9"!§.§^"3§;
   import §>"2§.§8k§;
   import §`!w§.§^!$§;
   
   public class §'`§
   {
      
      public static const §"b§:Number = 1.25;
      
      public static const §+2§:Number = 0.15;
      
      public static const §-§:Number = §8k§.§<A§ * §`"8§.§3!=§;
      
      public static const §return§:Number = §8k§.§[s§ * §`"8§.§3!=§;
      
      public static const §8?§:Number = 0.1;
      
      public static const § !P§:int = 1500;
      
      public static const §5b§:int = 10;
      
      public static const §7s§:int = 15;
      
      public static const §@;§:int = 300;
      
      public static const §[=§:int = 1000;
      
      public static const §4!n§:int = 10000;
      
      public static const §]!S§:int = §4!n§ / 50;
      
      public static const §[!K§:int = 0;
      
      public static const §7!G§:int = 1;
      
      public static const §"9§:int = 2;
      
      public static const §6k§:int = 3;
      
      public static const §%!t§:int = 4;
      
      public static const §@!W§:int = 5;
      
      public static const §5!<§:String = §5!R§.CASTLE;
      
      public static const §9!>§:String = §5!R§.SLINGSHOT;
      
      protected static var §'2§:Number;
      
      public static const §2!k§:Number = 2000;
       
      
      private var §"L§:Number = 1.0;
      
      private var §4f§:Number = 0.2;
      
      protected var §+!$§:Number;
      
      protected var § "0§:Number;
      
      protected var §6!k§:Number;
      
      public var §'"9§:§`"8§;
      
      public var §,"'§:Number;
      
      public var §,!"§:Number;
      
      private var §3!<§:§"c§;
      
      private var § 3§:§"c§;
      
      protected var §!L§:Number;
      
      protected var §2!8§:Number;
      
      protected var §,d§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §@X§:Number;
      
      protected var §?!4§:Number;
      
      protected var § u§:Number;
      
      protected var §`!,§:Number;
      
      protected var §7"G§:Number;
      
      protected var §4!O§:Number;
      
      private var §?;§:§?!A§;
      
      private var §1!l§:§?!A§;
      
      protected var §2!X§:Number = 0;
      
      protected var §5!E§:Number = 0;
      
      protected var §2p§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §0!;§:Number = 0;
      
      public var §""@§:Boolean = true;
      
      public var §5"<§:Number = 0;
      
      public var §8Q§:Number = 0;
      
      public var §<!t§:Number = 0;
      
      public var §=!&§:Number = 0;
      
      public var §"d§:Number = 0;
      
      public var §@!>§:Number = 0;
      
      public var §3#§:Number = 0;
      
      public var §1f§:Number = 0;
      
      public var §]=§:Number = 0;
      
      private var §<!e§:§?!A§;
      
      public var §^!E§:Number = 0;
      
      private var §0!3§:Number = 0;
      
      private var §"T§:Number = 0;
      
      private var §]!"§:§5!R§ = null;
      
      private var §"!w§:§5!R§ = null;
      
      public function §'`§(param1:§`"8§, param2:§2#§, param3:Number = 1.0)
      {
         this.§<!e§ = new §?!A§(0,0,1,false);
         super();
         this.§ "0§ = 0;
         this.§6!k§ = 0;
         this.§'"9§ = param1;
         §'`§.§'2§ = 1;
         this.§"L§ = Math.max(1,Math.min(2,param3));
         this.§+!$§ = this.§!"=§;
         this.§>"&§(param2);
         if(this.§3!<§ && this.§ 3§)
         {
            this.§,3§();
            this.§2!X§ = this.§3!<§.x - this.§ 3§.x;
            this.§5!E§ = this.§3!<§.y - this.§ 3§.y;
            this.§2p§ = this.§3!<§.scale - this.§ 3§.scale;
            this.§ "0§ = this.§3!<§.x;
            this.§6!k§ = this.§3!<§.y;
            §'2§ = this.§3!<§.scale * this.§+!$§;
         }
         this.mCurrentCameraSliderLocation = §4!n§;
         this.§""@§ = true;
         this.§0!;§ = §4!n§ / 500;
      }
      
      public static function get §=6§() : Number
      {
         var _loc1_:Number = §8k§.§`"5§ / §8k§.§&i§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §'2§ * _loc1_ * _loc1_;
      }
      
      public function get §^o§() : Number
      {
         return this.§+!$§;
      }
      
      public function set §^o§(param1:Number) : void
      {
         this.§+!$§ = param1;
      }
      
      public function §&w§() : Number
      {
         return §-§ / (this.§`!,§ - this.§ u§);
      }
      
      public function get §!"=§() : Number
      {
         var _loc1_:Number = §8k§.§`"5§ / §8k§.§&i§;
         return this.§"L§ / _loc1_;
      }
      
      public function get §?r§() : Number
      {
         return this.§4f§;
      }
      
      public function get §6#§() : Number
      {
         return this.§!L§;
      }
      
      public function get §`[§() : Number
      {
         return this.§2!8§;
      }
      
      public function get §<!n§() : Number
      {
         return this.§ u§;
      }
      
      public function get §4!^§() : Number
      {
         return this.§`!,§;
      }
      
      public function get §!6§() : Number
      {
         return this.§@X§;
      }
      
      public function get §'! §() : Number
      {
         return this.§?!4§;
      }
      
      public function get §<9§() : Number
      {
         return this.§`!,§ - this.§ u§;
      }
      
      public function §4d§(param1:Number) : void
      {
         this.§+!$§ = param1;
         this.§%""§();
         this.§8!k§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@!W§)
         {
            return;
         }
         this.goToCastleView();
         this.§5"<§ = 2000;
         this.§[!q§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§ "0§ = this.§ 3§.x;
         this.§6!k§ = this.§ 3§.y;
         this.§""@§ = false;
         this.§0!;§ = §4!n§ / 160000 * param1;
         this.§[!n§(§@!W§);
      }
      
      public function §,3§() : void
      {
         var _loc1_:Number = (this.§3!<§.x - this.§ 3§.x) / 1.6;
         if(_loc1_ < §-§ * 1.2)
         {
            _loc1_ = §-§ * 1.2;
         }
         this.§ u§ = this.§ 3§.x - _loc1_;
         this.§`!,§ = this.§3!<§.x + _loc1_;
         this.§7"G§ = Math.min(this.§3!<§.y,this.§ 3§.y) - §return§;
         this.§4!O§ = Math.max(this.§3!<§.y,this.§ 3§.y) + §return§;
         this.§@X§ = (this.§3!<§.x + this.§ 3§.x) / 2;
         this.§?!4§ = (this.§3!<§.y + this.§ 3§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§'"9§ = null;
      }
      
      public function §>"&§(param1:§2#§) : void
      {
         var _loc3_:§5!R§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§%e§)
         {
            _loc3_ = param1.§ !Z§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§5"G§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §9!>§)
            {
               this.§ 3§ = new §"c§(_loc5_,_loc6_,_loc7_,true);
               this.§1!l§ = new §?!A§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §5!<§)
            {
               this.§3!<§ = new §"c§(_loc5_,_loc6_,_loc7_,false);
               this.§?;§ = new §?!A§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §^!$§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§5!R§) : Number
      {
         var _loc2_:Number = §return§ / (param1.bottom - param1.top);
         var _loc3_:Number = §-§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function writeCameraInformation(param1:§2#§) : void
      {
         var _loc2_:§5!R§ = new §5!R§();
         _loc2_.id = §9!>§;
         _loc2_.x = this.§ 3§.x;
         _loc2_.y = this.§ 3§.y;
         var _loc3_:Number = §-§ / this.§ 3§.scale / 2;
         var _loc4_:Number = §return§ / this.§ 3§.scale / 2;
         _loc2_.left = this.§ 3§.x - _loc3_;
         _loc2_.right = this.§ 3§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§5!R§;
         (_loc5_ = new §5!R§()).id = §5!<§;
         _loc5_.x = this.§3!<§.x;
         _loc5_.y = this.§3!<§.y;
         var _loc6_:Number = §-§ / this.§3!<§.scale / 2;
         var _loc7_:Number = §return§ / this.§3!<§.scale / 2;
         _loc5_.left = this.§3!<§.x - _loc6_;
         _loc5_.right = this.§3!<§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§>"4§();
         param1.§case§(_loc2_);
         param1.§case§(_loc5_);
      }
      
      public function §5"G§(param1:§5!R§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §8k§.§<A§ * 0.5 / _loc2_ * §`"8§.§3!=§;
         var _loc4_:Number = param1.y - §8k§.§[s§ * 0.5 / _loc2_ * §`"8§.§3!=§;
         var _loc5_:Number = _loc3_ + §8k§.§<A§ / _loc2_ * §`"8§.§3!=§;
         var _loc6_:Number = _loc4_ + §8k§.§[s§ / _loc2_ * §`"8§.§3!=§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §1#§(param1:§"c§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§0!;§;
         if(_loc3_ >= §4!n§)
         {
            _loc3_ = §4!n§;
            this.§[!n§(§[!K§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§[!n§(§[!K§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §0C§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§0!;§;
         var _loc4_:Number = -§4!n§ * 0.7;
         if(_loc2_ >= §4!n§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §4!n§;
            }
            this.§0!;§ = -this.§0!;§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]!1§(param1:Number) : void
      {
         if(this.mCurrentAction == §@!W§)
         {
            this.§0C§(param1);
         }
         else if(this.mCurrentAction == §7!G§)
         {
            this.§1#§(this.§3!<§,param1);
         }
         else if(this.mCurrentAction == §"9§)
         {
            this.§1#§(this.§ 3§,-param1);
         }
         else if(this.mCurrentAction == §6k§)
         {
            this.§""@§ = true;
         }
         else if(this.mCurrentAction == §%!t§)
         {
            this.§0r§(param1);
         }
      }
      
      public function §%O§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§]!"§)
         {
            this.§ "0§ = this.§]!"§.x;
            this.§6!k§ = this.§]!"§.y;
            §'2§ = §-§ / (this.§]!"§.right - this.§]!"§.left);
         }
         else
         {
            this.§%""§();
            this.§]!1§(param1);
            if(Math.abs(this.§,d§ - §8k§.§`"5§ / §8k§.§&i§) > 0.01)
            {
               param1 = 1000;
            }
            this.§4!"§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§[!q§();
         this.§,d§ = §8k§.§`"5§ / §8k§.§&i§;
      }
      
      private function §1"6§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§?;§.x - this.§1!l§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§1!l§.scale + (this.§?;§.scale - this.§1!l§.scale) * param1;
         var _loc4_:Number = this.§1!l§.x + (this.§?;§.x - this.§1!l§.x) * param1;
         var _loc5_:Number = this.§1!l§.y + (this.§?;§.y - this.§1!l§.y) * param1;
         this.§<!e§.x -= (this.§<!e§.x - _loc4_) * param2;
         this.§<!e§.y -= (this.§<!e§.y - _loc5_) * param2;
         this.§<!e§.scale -= (this.§<!e§.scale - _loc3_) * param2;
      }
      
      protected function §8!k§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§2!X§ != 0)
         {
            if(!this.§""@§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §4!n§;
            this.§1"6§(_loc3_,param2);
            this.§ "0§ = this.§<!e§.x;
            this.§6!k§ = this.§<!e§.y;
            §'2§ = this.§<!e§.scale;
         }
      }
      
      private function §!!0§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§^"3§;
         var _loc5_:Number = (_loc4_ = this.§'"9§.levelObjects.activeObject).§5[§();
         var _loc6_:Number = _loc4_.§'">§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§`I§().GetLinearVelocity().x) > 0 && this.§2!X§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§2!X§ * §4!n§;
         }
         if(param1 >= §4!n§)
         {
            param1 = §4!n§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §4!n§;
         this.§1"6§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §8k§.§`"5§ / §8k§.§&i§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§<!e§.x - §-§ / _loc9_ * 0.5 / this.§<!e§.scale;
         var _loc11_:Number = this.§<!e§.y - §return§ * 0.5 / this.§<!e§.scale;
         var _loc12_:Number = this.§<!e§.x + §-§ / _loc9_ * 0.5 / this.§<!e§.scale;
         var _loc13_:Number = this.§<!e§.y + §return§ * 0.5 / this.§<!e§.scale;
         var _loc14_:Number = 150 * §`"8§.§3!=§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§ u§,_loc15_);
         _loc17_ = Math.min(this.§`!,§,_loc17_);
         var _loc19_:Number = Math.abs(§-§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§return§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§<!e§.scale)
         {
            _loc21_ = this.§<!e§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §-§ / _loc9_ * 0.5 / _loc21_ > this.§`!,§)
         {
            _loc15_ = (_loc17_ = this.§`!,§) - §-§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§ u§)
            {
               _loc15_ = this.§ u§;
            }
         }
         if(_loc22_ - §-§ / _loc9_ * 0.5 / _loc21_ < this.§ u§)
         {
            _loc17_ = (_loc15_ = this.§ u§) + §-§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§`!,§)
            {
               _loc17_ = this.§`!,§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§-§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §return§ * 0.5 < this.§7"G§)
         {
            _loc23_ = this.§7"G§ + §return§ * 0.5;
         }
         if(_loc23_ + §return§ * 0.5 > this.§4!O§)
         {
            _loc23_ = this.§4!O§ - §return§ * 0.5;
         }
         this.§ "0§ -= (this.§ "0§ - _loc22_) * param3;
         this.§^!E§ -= (this.§^!E§ - _loc21_) * param3;
         §'2§ = this.§^!E§;
         this.§6!k§ -= (this.§6!k§ - _loc23_) * param3;
         if(_loc5_ >= this.§`!,§ || _loc5_ <= this.§ u§)
         {
            this.§<!e§.scale = §'2§;
            this.§<!e§.x = this.§ "0§;
            this.§<!e§.y = this.§6!k§;
         }
      }
      
      public function §4!"§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §4!n§)
         {
            this.§""@§ = true;
         }
         if(this.mCurrentAction == §6k§)
         {
            if(!this.§'"9§.levelObjects.activeObject)
            {
               this.§[!n§(§7!G§);
               this.§]=§ = §[=§;
            }
            else
            {
               this.§!!0§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§8!k§(param1,_loc4_);
         }
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         this.§0!3§ = param1;
         this.§"T§ = param2;
      }
      
      private function §^!M§(param1:§?!A§, param2:§"c§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §8k§.§`"5§ / §8k§.§&i§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §+2§ + (param2.scale - §+2§) * this.§^o§;
         if(§-§ / param1.scale > (this.§`!,§ - this.§ u§) * _loc3_)
         {
            _loc4_ = §-§ / ((this.§`!,§ - this.§ u§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §&h§(param1:§?!A§, param2:§"c§) : Boolean
      {
         var _loc3_:Boolean = this.§^!M§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §8k§.§`"5§ / §8k§.§&i§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §-§ / _loc4_ * 0.5 / param1.scale) < this.§ u§ && param1.§^!8§)
         {
            param1.x += this.§ u§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §-§ / _loc4_ * 0.5 / param1.scale) > this.§`!,§ && !param1.§^!8§)
         {
            param1.x += this.§`!,§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §^N§(param1:§?!A§, param2:§"c§) : Number
      {
         return (param1.scale - §+2§) / (param2.scale - §+2§);
      }
      
      protected function §%""§() : void
      {
         this.§&h§(this.§1!l§,this.§ 3§);
         var _loc1_:Number = this.§^N§(this.§1!l§,this.§ 3§);
         this.§&h§(this.§?;§,this.§3!<§);
         var _loc2_:Number = this.§^N§(this.§?;§,this.§3!<§);
         this.§+!$§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §[!q§() : void
      {
         var _loc1_:Number = this.§ "0§ / §`"8§.§3!=§ + this.§0!3§;
         var _loc2_:Number = this.§6!k§ / §`"8§.§3!=§ + this.§"T§;
         var _loc3_:Number = §8k§.§`"5§;
         var _loc4_:Number = §8k§.§&i§;
         var _loc5_:Number = §`"8§.§3q§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §`"8§.§@h§;
         this.§!L§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§2!8§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§!L§ += _loc5_ / 2 - _loc5_ / 2 / §=6§;
         this.§2!8§ += (_loc6_ / 2 - _loc6_ / 2 / §=6§) / (_loc3_ / _loc4_);
         this.§'"9§.setScreenOffset(this.§!L§,this.§2!8§,§=6§);
      }
      
      protected function §>"E§() : void
      {
         this.§[!n§(§%!t§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§]=§ = -1;
         this.§>"E§();
         this.§"d§ = this.§3#§ = this.§<!t§ = param1;
         this.§@!>§ = this.§1f§ = this.§=!&§ = param2;
         this.§8Q§ = 0;
         this.§<!e§.x = this.§ "0§;
         this.§<!e§.y = this.§6!k§;
         this.§<!e§.scale = §'2§;
         this.§^!E§ = §'2§;
         if(Math.abs(this.§?;§.x - this.§1!l§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§ "0§ - this.§1!l§.x) / (this.§?;§.x - this.§1!l§.x) * §4!n§;
         }
         this.mDragging = true;
      }
      
      public function §0r§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§8Q§ += param1;
         var _loc3_:Number = this.§"d§ - this.§3#§;
         if(this.§2!X§ > 0)
         {
            _loc2_ -= _loc3_ * §`"8§.§3!=§ / §=6§ / this.§2!X§ * §4!n§;
            this.§""@§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§""@§ = true;
            }
            if(_loc2_ > §4!n§)
            {
               _loc2_ += (§4!n§ - _loc2_) * 0.3;
               this.§""@§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§3#§ = this.§"d§;
      }
      
      protected function § !N§() : Boolean
      {
         return this.mCurrentAction == §%!t§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§"d§ = param1;
            this.§@!>§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §%!t§)
         {
            this.§[!n§(§[!K§);
            if(param1 > 0)
            {
               this.§"d§ = param1;
            }
            _loc3_ = Math.abs(this.§"d§ - this.§<!t§);
            if(this.§8Q§ < § !P§ && _loc3_ >= §5b§ && _loc3_ >= §7s§ * this.§8Q§ / 1000)
            {
               if(this.§"d§ < this.§<!t§)
               {
                  this.§[!n§(§7!G§);
               }
               else
               {
                  this.§[!n§(§"9§);
               }
               this.§0!;§ = _loc3_ / this.§8Q§ * 10;
               this.§""@§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§""@§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §4!n§)
               {
                  this.§""@§ = true;
               }
            }
            else if(this.§8Q§ < §@;§)
            {
               this.§"_§();
               this.§0!;§ = §4!n§ / (§4!n§ / 500);
               this.§""@§ = true;
            }
            else
            {
               this.§0r§(0);
               this.§ !p§(0);
               this.§0!;§ = §4!n§ / (§4!n§ / 500);
               this.§""@§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"_§() : void
      {
         if(this.mCurrentAction == §7!G§)
         {
            this.§[!n§(§"9§);
         }
         else if(this.mCurrentAction == §"9§)
         {
            this.§[!n§(§7!G§);
         }
         else if(this.mCurrentCameraSliderLocation >= §4!n§ / 2)
         {
            this.§[!n§(§"9§);
         }
         else if(this.mCurrentCameraSliderLocation <= §4!n§ / 2)
         {
            this.§[!n§(§7!G§);
         }
      }
      
      public function § !p§(param1:int) : void
      {
         this.§]=§ = param1;
         if(this.mCurrentCameraSliderLocation < §4!n§ / 2)
         {
            this.§[!n§(§"9§);
         }
         else
         {
            this.§[!n§(§7!G§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§[!n§(§"9§);
      }
      
      public function goToCastleView() : void
      {
         this.§[!n§(§7!G§);
      }
      
      public function §[!n§(param1:int) : void
      {
         this.§<!e§.x = this.§ "0§;
         this.§<!e§.y = this.§6!k§;
         this.§<!e§.scale = §'2§;
         this.§^!E§ = §'2§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §4!n§)
         {
            return true;
         }
         if(this.mCurrentAction == §7!G§)
         {
            return true;
         }
         return false;
      }
      
      public function §-[§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"9§)
         {
            return true;
         }
         return false;
      }
      
      public function §+!>§(param1:§5!R§) : void
      {
         this.§]!"§ = param1;
         if(this.§]!"§ != null)
         {
            this.§"!w§ = new §5!R§();
            this.§"!w§.x = this.§ "0§;
            this.§"!w§.y = this.§6!k§;
            this.§"!w§.scale = §'2§;
         }
         else
         {
            this.§ "0§ = this.§"!w§.x;
            this.§6!k§ = this.§"!w§.y;
            §'2§ = this.§"!w§.scale;
            this.§"!w§ = null;
         }
      }
      
      protected function §`""§() : void
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
         var _loc3_:Number = this.§+!$§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§?r§,Math.min(this.§!"=§,_loc3_));
         if(_loc3_ != this.§+!$§)
         {
            this.§+!$§ = _loc3_;
         }
      }
      
      public function §&"3§() : Number
      {
         return (this.§^o§ - this.§?r§) / (this.§!"=§ - this.§?r§);
      }
      
      public function §^8§(param1:Number) : void
      {
         this.§^o§ = Math.min(Math.max(param1,0),1) * (this.§!"=§ - this.§?r§) + this.§?r§;
      }
      
      public function §@#§() : void
      {
         this.§+!$§ = Math.max(this.§+!$§ - 0.5,0.5);
      }
      
      public function §-!G§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§^o§;
         _loc1_ += " mXcenterB2: " + this.§ "0§;
         _loc1_ += " mYcenterB2: " + this.§6!k§;
         _loc1_ += " mXcenterB2target: " + this.§^o§;
         _loc1_ += "\n mYcenterB2target: " + this.§^o§;
         _loc1_ += " mXcenterB2previous: " + this.§^o§;
         _loc1_ += " mYcenterB2previous: " + this.§^o§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§^o§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§^o§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§^o§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§^o§;
         _loc1_ += " mTargetScale: " + this.§^o§;
         _loc1_ += " mTargetScalePrevious: " + this.§^o§;
         _loc1_ += " mCastleCameraX: " + this.§^o§;
         _loc1_ += "\n mCastleCameraY: " + this.§^o§;
         _loc1_ += " mCastleCameraScale: " + this.§^o§;
         _loc1_ += " mBirdCameraX: " + this.§^o§;
         _loc1_ += " mBirdCameraY: " + this.§^o§;
         _loc1_ += " mBirdCameraScale: " + this.§^o§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§^o§;
         _loc1_ += "mScreenOffsetYl: " + this.§^o§;
         _loc1_ += " mDragging: " + this.§^o§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§^o§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§^o§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§^o§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§^o§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§^o§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§^o§;
         _loc1_ += " mDraggingTimer: " + this.§^o§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§^o§;
         _loc1_ += " mCameraBorderRight: " + this.§^o§;
         _loc1_ += "mCameraBorderTop: " + this.§^o§;
         _loc1_ += "mCameraBorderBottom: " + this.§^o§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§^o§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
