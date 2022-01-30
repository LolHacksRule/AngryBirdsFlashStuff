package §>j§
{
   import §"I§.§=!U§;
   import §'<§.§;r§;
   import §'<§.§@!R§;
   import §0I§.§!!p§;
   import §]!q§.§,[§;
   import com.angrybirds.§6U§;
   
   public class §`y§
   {
      
      public static const §?"%§:Number = 1.25;
      
      public static const §;,§:Number = 0.15;
      
      public static const §&n§:Number = §6U§.§[6§ * §!!p§.§6L§;
      
      public static const §%"&§:Number = §6U§.§1a§ * §!!p§.§6L§;
      
      public static const §@!§:Number = 0.1;
      
      public static const §>"3§:int = 1500;
      
      public static const §6J§:int = 10;
      
      public static const § "%§:int = 15;
      
      public static const §8"-§:int = 300;
      
      public static const §4!'§:int = 1000;
      
      public static const §@!a§:int = 10000;
      
      public static const §0!R§:int = §@!a§ / 50;
      
      public static const §-!0§:int = 0;
      
      public static const §#" §:int = 1;
      
      public static const §-!"§:int = 2;
      
      public static const §#!h§:int = 3;
      
      public static const §7^§:int = 4;
      
      public static const §#!v§:int = 5;
      
      public static const §^n§:String = §@!R§.CASTLE;
      
      public static const §26§:String = §@!R§.SLINGSHOT;
      
      protected static var §&! §:Number;
      
      public static const §3h§:Number = 2000;
       
      
      private var §-!8§:Number = 1.0;
      
      private var §#!]§:Number = 0.2;
      
      protected var §`!N§:Number;
      
      protected var §8L§:Number;
      
      protected var §5C§:Number;
      
      public var §-!r§:§!!p§;
      
      public var §!k§:Number;
      
      public var §@!d§:Number;
      
      private var §-!u§:§`!,§;
      
      private var §>7§:§`!,§;
      
      protected var §<!h§:Number;
      
      protected var §%!g§:Number;
      
      protected var §>H§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §1=§:Number;
      
      protected var §9m§:Number;
      
      protected var §,!X§:Number;
      
      protected var §1!,§:Number;
      
      protected var §=F§:Number;
      
      protected var §+X§:Number;
      
      private var §9u§:§[b§;
      
      private var §!Q§:§[b§;
      
      protected var §"!`§:Number = 0;
      
      protected var §6!J§:Number = 0;
      
      protected var §,Y§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §%V§:Number = 0;
      
      public var §7k§:Boolean = true;
      
      public var §^!<§:Number = 0;
      
      public var §[W§:Number = 0;
      
      public var §7!?§:Number = 0;
      
      public var §,G§:Number = 0;
      
      public var §"&§:Number = 0;
      
      public var §2!e§:Number = 0;
      
      public var §0!G§:Number = 0;
      
      public var §'!b§:Number = 0;
      
      public var §9!<§:Number = 0;
      
      private var §[!G§:§[b§;
      
      public var §9!A§:Number = 0;
      
      private var §]!<§:Number = 0;
      
      private var §#T§:Number = 0;
      
      private var §#K§:§@!R§ = null;
      
      private var §8!L§:§@!R§ = null;
      
      public function §`y§(param1:§!!p§, param2:§;r§, param3:Number = 1.0)
      {
         this.§[!G§ = new §[b§(0,0,1,false);
         super();
         this.§8L§ = 0;
         this.§5C§ = 0;
         this.§-!r§ = param1;
         §`y§.§&! § = 1;
         this.§-!8§ = Math.max(1,Math.min(2,param3));
         this.§`!N§ = this.§-V§;
         this.§7!E§(param2);
         if(this.§-!u§ && this.§>7§)
         {
            this.§+G§();
            this.§"!`§ = this.§-!u§.x - this.§>7§.x;
            this.§6!J§ = this.§-!u§.y - this.§>7§.y;
            this.§,Y§ = this.§-!u§.scale - this.§>7§.scale;
            this.§8L§ = this.§-!u§.x;
            this.§5C§ = this.§-!u§.y;
            §&! § = this.§-!u§.scale * this.§`!N§;
         }
         this.mCurrentCameraSliderLocation = §@!a§;
         this.§7k§ = true;
         this.§%V§ = §@!a§ / 500;
      }
      
      public static function get §-n§() : Number
      {
         var _loc1_:Number = §6U§.§7!K§ / §6U§.§7Z§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §&! § * _loc1_ * _loc1_;
      }
      
      public function get §9!X§() : Number
      {
         return this.§`!N§;
      }
      
      public function set §9!X§(param1:Number) : void
      {
         this.§`!N§ = param1;
      }
      
      public function §9!b§() : Number
      {
         return §&n§ / (this.§1!,§ - this.§,!X§);
      }
      
      public function get §-V§() : Number
      {
         var _loc1_:Number = §6U§.§7!K§ / §6U§.§7Z§;
         return this.§-!8§ / _loc1_;
      }
      
      public function get §0E§() : Number
      {
         return this.§#!]§;
      }
      
      public function get §!"5§() : Number
      {
         return this.§<!h§;
      }
      
      public function get §,?§() : Number
      {
         return this.§%!g§;
      }
      
      public function get §,I§() : Number
      {
         return this.§,!X§;
      }
      
      public function get §]!G§() : Number
      {
         return this.§1!,§;
      }
      
      public function get §5!S§() : Number
      {
         return this.§1=§;
      }
      
      public function get §`j§() : Number
      {
         return this.§9m§;
      }
      
      public function get §!!J§() : Number
      {
         return this.§1!,§ - this.§,!X§;
      }
      
      protected function get §8!0§() : §`!,§
      {
         return this.§-!u§;
      }
      
      public function §7!d§(param1:Number) : void
      {
         this.§`!N§ = param1;
         this.§>!T§();
         this.§ !+§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §#!v§)
         {
            return;
         }
         this.goToCastleView();
         this.§^!<§ = 2000;
         this.§#!>§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§8L§ = this.§>7§.x;
         this.§5C§ = this.§>7§.y;
         this.§7k§ = false;
         this.§%V§ = §@!a§ / 160000 * param1;
         this.§,!&§(§#!v§);
      }
      
      public function §+G§() : void
      {
         var _loc1_:Number = (this.§-!u§.x - this.§>7§.x) / 1.6;
         if(_loc1_ < §&n§ * 1.2)
         {
            _loc1_ = §&n§ * 1.2;
         }
         this.§,!X§ = this.§>7§.x - _loc1_;
         this.§1!,§ = this.§-!u§.x + _loc1_;
         this.§=F§ = Math.min(this.§-!u§.y,this.§>7§.y) - §%"&§;
         this.§+X§ = Math.max(this.§-!u§.y,this.§>7§.y) + §%"&§;
         this.§1=§ = (this.§-!u§.x + this.§>7§.x) / 2;
         this.§9m§ = (this.§-!u§.y + this.§>7§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§-!r§ = null;
      }
      
      public function §7!E§(param1:§;r§) : void
      {
         var _loc3_:§@!R§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§?h§)
         {
            _loc3_ = param1.§0g§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§&_§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §26§)
            {
               this.§>7§ = new §`!,§(_loc5_,_loc6_,_loc7_,true);
               this.§!Q§ = new §[b§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §^n§)
            {
               this.§-!u§ = new §`!,§(_loc5_,_loc6_,_loc7_,false);
               this.§9u§ = new §[b§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §=!U§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§@!R§) : Number
      {
         var _loc2_:Number = §%"&§ / (param1.bottom - param1.top);
         var _loc3_:Number = §&n§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §^!%§(param1:§;r§) : void
      {
         var _loc2_:§@!R§ = new §@!R§();
         _loc2_.id = §26§;
         _loc2_.x = this.§>7§.x;
         _loc2_.y = this.§>7§.y;
         var _loc3_:Number = §&n§ / this.§>7§.scale / 2;
         var _loc4_:Number = §%"&§ / this.§>7§.scale / 2;
         _loc2_.left = this.§>7§.x - _loc3_;
         _loc2_.right = this.§>7§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §%"&§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §&n§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§@!R§;
         (_loc7_ = new §@!R§()).id = §^n§;
         _loc7_.x = this.§-!u§.x;
         _loc7_.y = this.§-!u§.y;
         var _loc8_:Number = §&n§ / this.§-!u§.scale / 2;
         var _loc9_:Number = §%"&§ / this.§-!u§.scale / 2;
         _loc7_.left = this.§-!u§.x - _loc8_;
         _loc7_.right = this.§-!u§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §%"&§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §&n§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§@"0§();
         param1.§%![§(_loc2_);
         param1.§%![§(_loc7_);
      }
      
      public function §&_§(param1:§@!R§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §6U§.§[6§ * 0.5 / _loc2_ * §!!p§.§6L§;
         var _loc4_:Number = param1.y - §6U§.§1a§ * 0.5 / _loc2_ * §!!p§.§6L§;
         var _loc5_:Number = _loc3_ + §6U§.§[6§ / _loc2_ * §!!p§.§6L§;
         var _loc6_:Number = _loc4_ + §6U§.§1a§ / _loc2_ * §!!p§.§6L§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §60§(param1:§`!,§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§%V§;
         if(_loc3_ >= §@!a§)
         {
            _loc3_ = §@!a§;
            this.§,!&§(§-!0§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§,!&§(§-!0§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §=!c§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§%V§;
         var _loc4_:Number = -§@!a§ * 0.7;
         if(_loc2_ >= §@!a§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §@!a§;
            }
            this.§%V§ = -this.§%V§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §"!p§(param1:Number) : void
      {
         if(this.mCurrentAction == §#!v§)
         {
            this.§=!c§(param1);
         }
         else if(this.mCurrentAction == §#" §)
         {
            this.§60§(this.§-!u§,param1);
         }
         else if(this.mCurrentAction == §-!"§)
         {
            this.§60§(this.§>7§,-param1);
         }
         else if(this.mCurrentAction == §#!h§)
         {
            this.§7k§ = true;
         }
         else if(this.mCurrentAction == §7^§)
         {
            this.§null§(param1);
         }
      }
      
      public function §+g§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§#K§)
         {
            this.§8L§ = this.§#K§.x;
            this.§5C§ = this.§#K§.y;
            §&! § = §&n§ / (this.§#K§.right - this.§#K§.left);
         }
         else
         {
            this.§>!T§();
            this.§"!p§(param1);
            if(Math.abs(this.§>H§ - §6U§.§7!K§ / §6U§.§7Z§) > 0.01)
            {
               param1 = 1000;
            }
            this.§>!%§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§#!>§();
         this.§>H§ = §6U§.§7!K§ / §6U§.§7Z§;
      }
      
      private function §9"4§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§9u§.x - this.§!Q§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§!Q§.scale + (this.§9u§.scale - this.§!Q§.scale) * param1;
         var _loc4_:Number = this.§!Q§.x + (this.§9u§.x - this.§!Q§.x) * param1;
         var _loc5_:Number = this.§!Q§.y + (this.§9u§.y - this.§!Q§.y) * param1;
         this.§[!G§.x -= (this.§[!G§.x - _loc4_) * param2;
         this.§[!G§.y -= (this.§[!G§.y - _loc5_) * param2;
         this.§[!G§.scale -= (this.§[!G§.scale - _loc3_) * param2;
      }
      
      protected function § !+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"!`§ != 0)
         {
            if(!this.§7k§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §@!a§;
            this.§9"4§(_loc3_,param2);
            this.§8L§ = this.§[!G§.x;
            this.§5C§ = this.§[!G§.y;
            §&! § = this.§[!G§.scale;
         }
      }
      
      private function §!"2§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§,[§;
         var _loc5_:Number = (_loc4_ = this.§-!r§.levelObjects.activeObject).§^!G§();
         var _loc6_:Number = _loc4_.§2"5§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§4!7§().GetLinearVelocity().x) > 0 && this.§"!`§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§"!`§ * §@!a§;
         }
         if(param1 >= §@!a§)
         {
            param1 = §@!a§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §@!a§;
         this.§9"4§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §6U§.§7!K§ / §6U§.§7Z§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§[!G§.x - §&n§ / _loc9_ * 0.5 / this.§[!G§.scale;
         var _loc11_:Number = this.§[!G§.y - §%"&§ * 0.5 / this.§[!G§.scale;
         var _loc12_:Number = this.§[!G§.x + §&n§ / _loc9_ * 0.5 / this.§[!G§.scale;
         var _loc13_:Number = this.§[!G§.y + §%"&§ * 0.5 / this.§[!G§.scale;
         var _loc14_:Number = 150 * §!!p§.§6L§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§,!X§,_loc15_);
         _loc17_ = Math.min(this.§1!,§,_loc17_);
         var _loc19_:Number = Math.abs(§&n§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§%"&§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§[!G§.scale)
         {
            _loc21_ = this.§[!G§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §&n§ / _loc9_ * 0.5 / _loc21_ > this.§1!,§)
         {
            _loc15_ = (_loc17_ = this.§1!,§) - §&n§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§,!X§)
            {
               _loc15_ = this.§,!X§;
            }
         }
         if(_loc22_ - §&n§ / _loc9_ * 0.5 / _loc21_ < this.§,!X§)
         {
            _loc17_ = (_loc15_ = this.§,!X§) + §&n§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§1!,§)
            {
               _loc17_ = this.§1!,§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§&n§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §%"&§ * 0.5 < this.§=F§)
         {
            _loc23_ = this.§=F§ + §%"&§ * 0.5;
         }
         if(_loc23_ + §%"&§ * 0.5 > this.§+X§)
         {
            _loc23_ = this.§+X§ - §%"&§ * 0.5;
         }
         this.§8L§ -= (this.§8L§ - _loc22_) * param3;
         this.§9!A§ -= (this.§9!A§ - _loc21_) * param3;
         §&! § = this.§9!A§;
         this.§5C§ -= (this.§5C§ - _loc23_) * param3;
         if(_loc5_ >= this.§1!,§ || _loc5_ <= this.§,!X§)
         {
            this.§[!G§.scale = §&! §;
            this.§[!G§.x = this.§8L§;
            this.§[!G§.y = this.§5C§;
         }
      }
      
      public function §>!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §@!a§)
         {
            this.§7k§ = true;
         }
         if(this.mCurrentAction == §#!h§)
         {
            if(!this.§-!r§.levelObjects.activeObject)
            {
               this.§,!&§(§#" §);
               this.§9!<§ = §4!'§;
            }
            else
            {
               this.§!"2§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§ !+§(param1,_loc4_);
         }
      }
      
      public function §7!a§(param1:Number, param2:Number) : void
      {
         this.§]!<§ = param1;
         this.§#T§ = param2;
      }
      
      private function §,!y§(param1:§[b§, param2:§`!,§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §6U§.§7!K§ / §6U§.§7Z§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §;,§ + (param2.scale - §;,§) * this.§9!X§;
         if(§&n§ / param1.scale > (this.§1!,§ - this.§,!X§) * _loc3_)
         {
            _loc4_ = §&n§ / ((this.§1!,§ - this.§,!X§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §>!n§(param1:§[b§, param2:§`!,§) : Boolean
      {
         var _loc3_:Boolean = this.§,!y§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §6U§.§7!K§ / §6U§.§7Z§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §&n§ / _loc4_ * 0.5 / param1.scale) < this.§,!X§ && param1.§^0§)
         {
            param1.x += this.§,!X§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §&n§ / _loc4_ * 0.5 / param1.scale) > this.§1!,§ && !param1.§^0§)
         {
            param1.x += this.§1!,§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §]+§(param1:§[b§, param2:§`!,§) : Number
      {
         return (param1.scale - §;,§) / (param2.scale - §;,§);
      }
      
      protected function §>!T§() : void
      {
         this.§>!n§(this.§!Q§,this.§>7§);
         var _loc1_:Number = this.§]+§(this.§!Q§,this.§>7§);
         this.§>!n§(this.§9u§,this.§-!u§);
         var _loc2_:Number = this.§]+§(this.§9u§,this.§-!u§);
         this.§`!N§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §#!>§() : void
      {
         var _loc1_:Number = this.§8L§ / §!!p§.§6L§ + this.§]!<§;
         var _loc2_:Number = this.§5C§ / §!!p§.§6L§ + this.§#T§;
         var _loc3_:Number = §6U§.§7!K§;
         var _loc4_:Number = §6U§.§7Z§;
         var _loc5_:Number = §!!p§.§+'§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §!!p§.§!X§;
         this.§<!h§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§%!g§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§<!h§ += _loc5_ / 2 - _loc5_ / 2 / §-n§;
         this.§%!g§ += (_loc6_ / 2 - _loc6_ / 2 / §-n§) / (_loc3_ / _loc4_);
         this.§-!r§.setScreenOffset(this.§<!h§,this.§%!g§,§-n§);
      }
      
      protected function §1!D§() : void
      {
         this.§,!&§(§7^§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§9!<§ = -1;
         this.§1!D§();
         this.§"&§ = this.§0!G§ = this.§7!?§ = param1;
         this.§2!e§ = this.§'!b§ = this.§,G§ = param2;
         this.§[W§ = 0;
         this.§[!G§.x = this.§8L§;
         this.§[!G§.y = this.§5C§;
         this.§[!G§.scale = §&! §;
         this.§9!A§ = §&! §;
         if(Math.abs(this.§9u§.x - this.§!Q§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§8L§ - this.§!Q§.x) / (this.§9u§.x - this.§!Q§.x) * §@!a§;
         }
         this.mDragging = true;
      }
      
      public function §null§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[W§ += param1;
         var _loc3_:Number = this.§"&§ - this.§0!G§;
         if(this.§"!`§ > 0)
         {
            _loc2_ -= _loc3_ * §!!p§.§6L§ / §-n§ / this.§"!`§ * §@!a§;
            this.§7k§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§7k§ = true;
            }
            if(_loc2_ > §@!a§)
            {
               _loc2_ += (§@!a§ - _loc2_) * 0.3;
               this.§7k§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§0!G§ = this.§"&§;
      }
      
      protected function §1",§() : Boolean
      {
         return this.mCurrentAction == §7^§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§"&§ = param1;
            this.§2!e§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7^§)
         {
            this.§,!&§(§-!0§);
            if(param1 > 0)
            {
               this.§"&§ = param1;
            }
            _loc3_ = Math.abs(this.§"&§ - this.§7!?§);
            if(this.§[W§ < §>"3§ && _loc3_ >= §6J§ && _loc3_ >= § "%§ * this.§[W§ / 1000)
            {
               if(this.§"&§ < this.§7!?§)
               {
                  this.§,!&§(§#" §);
               }
               else
               {
                  this.§,!&§(§-!"§);
               }
               this.§%V§ = _loc3_ / this.§[W§ * 10;
               this.§7k§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§7k§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §@!a§)
               {
                  this.§7k§ = true;
               }
            }
            else if(this.§[W§ < §8"-§)
            {
               this.§1J§();
               this.§%V§ = §@!a§ / (§@!a§ / 500);
               this.§7k§ = true;
            }
            else
            {
               this.§null§(0);
               this.§2X§(0);
               this.§%V§ = §@!a§ / (§@!a§ / 500);
               this.§7k§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §1J§() : void
      {
         if(this.mCurrentAction == §#" §)
         {
            this.§,!&§(§-!"§);
         }
         else if(this.mCurrentAction == §-!"§)
         {
            this.§,!&§(§#" §);
         }
         else if(this.mCurrentCameraSliderLocation >= §@!a§ / 2)
         {
            this.§,!&§(§-!"§);
         }
         else if(this.mCurrentCameraSliderLocation <= §@!a§ / 2)
         {
            this.§,!&§(§#" §);
         }
      }
      
      public function §2X§(param1:int) : void
      {
         this.§9!<§ = param1;
         if(this.mCurrentCameraSliderLocation < §@!a§ / 2)
         {
            this.§,!&§(§-!"§);
         }
         else
         {
            this.§,!&§(§#" §);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§,!&§(§-!"§);
      }
      
      public function goToCastleView() : void
      {
         this.§,!&§(§#" §);
      }
      
      public function §,!&§(param1:int) : void
      {
         this.§[!G§.x = this.§8L§;
         this.§[!G§.y = this.§5C§;
         this.§[!G§.scale = §&! §;
         this.§9!A§ = §&! §;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §@!a§)
         {
            return true;
         }
         if(this.mCurrentAction == §#" §)
         {
            return true;
         }
         return false;
      }
      
      public function §6@§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §-!"§)
         {
            return true;
         }
         return false;
      }
      
      public function § !_§(param1:§@!R§) : void
      {
         this.§#K§ = param1;
         if(this.§#K§ != null)
         {
            this.§8!L§ = new §@!R§();
            this.§8!L§.x = this.§8L§;
            this.§8!L§.y = this.§5C§;
            this.§8!L§.scale = §&! §;
         }
         else
         {
            this.§8L§ = this.§8!L§.x;
            this.§5C§ = this.§8!L§.y;
            §&! § = this.§8!L§.scale;
            this.§8!L§ = null;
         }
      }
      
      protected function §0!7§() : void
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
         var _loc3_:Number = this.§`!N§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§0E§,Math.min(this.§-V§,_loc3_));
         if(_loc3_ != this.§`!N§)
         {
            this.§`!N§ = _loc3_;
         }
      }
      
      public function §5!^§() : Number
      {
         return (this.§9!X§ - this.§0E§) / (this.§-V§ - this.§0E§);
      }
      
      public function §7!f§(param1:Number) : void
      {
         this.§9!X§ = Math.min(Math.max(param1,0),1) * (this.§-V§ - this.§0E§) + this.§0E§;
      }
      
      public function §"1§() : void
      {
         this.§`!N§ = Math.max(this.§`!N§ - 0.5,0.5);
      }
      
      public function §"!m§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§9!X§;
         _loc1_ += " mXcenterB2: " + this.§8L§;
         _loc1_ += " mYcenterB2: " + this.§5C§;
         _loc1_ += " mXcenterB2target: " + this.§9!X§;
         _loc1_ += "\n mYcenterB2target: " + this.§9!X§;
         _loc1_ += " mXcenterB2previous: " + this.§9!X§;
         _loc1_ += " mYcenterB2previous: " + this.§9!X§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§9!X§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§9!X§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§9!X§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§9!X§;
         _loc1_ += " mTargetScale: " + this.§9!X§;
         _loc1_ += " mTargetScalePrevious: " + this.§9!X§;
         _loc1_ += " mCastleCameraX: " + this.§9!X§;
         _loc1_ += "\n mCastleCameraY: " + this.§9!X§;
         _loc1_ += " mCastleCameraScale: " + this.§9!X§;
         _loc1_ += " mBirdCameraX: " + this.§9!X§;
         _loc1_ += " mBirdCameraY: " + this.§9!X§;
         _loc1_ += " mBirdCameraScale: " + this.§9!X§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§9!X§;
         _loc1_ += "mScreenOffsetYl: " + this.§9!X§;
         _loc1_ += " mDragging: " + this.§9!X§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§9!X§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§9!X§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§9!X§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§9!X§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§9!X§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§9!X§;
         _loc1_ += " mDraggingTimer: " + this.§9!X§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§9!X§;
         _loc1_ += " mCameraBorderRight: " + this.§9!X§;
         _loc1_ += "mCameraBorderTop: " + this.§9!X§;
         _loc1_ += "mCameraBorderBottom: " + this.§9!X§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§9!X§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
