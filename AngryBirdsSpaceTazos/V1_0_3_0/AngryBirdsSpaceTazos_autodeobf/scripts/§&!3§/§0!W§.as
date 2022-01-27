package §&!3§
{
   import §3R§.§1!R§;
   import §4",§.§3v§;
   import §4",§.§8"6§;
   import §5"D§.§6!!§;
   import §6!C§.§6E§;
   import §7!C§.§8!w§;
   
   public class §0!W§
   {
      
      public static const §^!e§:Number = 1.25;
      
      public static const §9!r§:Number = 0.15;
      
      public static const §8<§:Number = §8!w§.§6c§ * §1!R§.§00§;
      
      public static const §,M§:Number = §8!w§.§9"-§ * §1!R§.§00§;
      
      public static const §9!x§:Number = 0.1;
      
      public static const §9!e§:int = 1500;
      
      public static const §&K§:int = 10;
      
      public static const §'Y§:int = 15;
      
      public static const §'!I§:int = 300;
      
      public static const §8!p§:int = 1000;
      
      public static const §3"@§:int = 10000;
      
      public static const §,!=§:int = §3"@§ / 50;
      
      public static const §]>§:int = 0;
      
      public static const §0#§:int = 1;
      
      public static const §>!u§:int = 2;
      
      public static const §["+§:int = 3;
      
      public static const §-!9§:int = 4;
      
      public static const §`e§:int = 5;
      
      public static const §&!U§:String = §8"6§.CASTLE;
      
      public static const §0!I§:String = §8"6§.SLINGSHOT;
      
      protected static var §,!G§:Number;
      
      public static const §6!n§:Number = 2000;
       
      
      private var §!!j§:Number = 1.0;
      
      private var §1E§:Number = 0.2;
      
      protected var §1b§:Number;
      
      protected var §`o§:Number;
      
      protected var §>!a§:Number;
      
      public var §;H§:§1!R§;
      
      public var §]P§:Number;
      
      public var §;O§:Number;
      
      private var §#!a§:§+$§;
      
      private var §%_§:§+$§;
      
      protected var §5!X§:Number;
      
      protected var §`V§:Number;
      
      protected var §'!B§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §0Q§:Number;
      
      protected var §<w§:Number;
      
      protected var §2!I§:Number;
      
      protected var §["0§:Number;
      
      protected var §`7§:Number;
      
      protected var §'"!§:Number;
      
      private var §2Y§:§^d§;
      
      private var §""#§:§^d§;
      
      protected var §?"'§:Number = 0;
      
      protected var §8o§:Number = 0;
      
      protected var §%b§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §<a§:Number = 0;
      
      public var §3!?§:Boolean = true;
      
      public var § !m§:Number = 0;
      
      public var §6$§:Number = 0;
      
      public var §""B§:Number = 0;
      
      public var §4!s§:Number = 0;
      
      public var §1D§:Number = 0;
      
      public var §2"<§:Number = 0;
      
      public var §"-§:Number = 0;
      
      public var §=1§:Number = 0;
      
      public var §&N§:Number = 0;
      
      private var §#@§:§^d§;
      
      public var §7!=§:Number = 0;
      
      private var §8I§:Number = 0;
      
      private var §,D§:Number = 0;
      
      private var § !C§:§8"6§ = null;
      
      private var §]r§:§8"6§ = null;
      
      public function §0!W§(param1:§1!R§, param2:§3v§, param3:Number = 1.0)
      {
         this.§#@§ = new §^d§(0,0,1,false);
         super();
         this.§`o§ = 0;
         this.§>!a§ = 0;
         this.§;H§ = param1;
         §0!W§.§,!G§ = 1;
         this.§!!j§ = Math.max(1,Math.min(2,param3));
         this.§1b§ = this.§-q§;
         this.§[C§(param2);
         if(this.§#!a§ && this.§%_§)
         {
            this.§ !-§();
            this.§?"'§ = this.§#!a§.x - this.§%_§.x;
            this.§8o§ = this.§#!a§.y - this.§%_§.y;
            this.§%b§ = this.§#!a§.scale - this.§%_§.scale;
            this.§`o§ = this.§#!a§.x;
            this.§>!a§ = this.§#!a§.y;
            §,!G§ = this.§#!a§.scale * this.§1b§;
         }
         this.mCurrentCameraSliderLocation = §3"@§;
         this.§3!?§ = true;
         this.§<a§ = §3"@§ / 500;
      }
      
      public static function get §,f§() : Number
      {
         var _loc1_:Number = §8!w§.§70§ / §8!w§.§<"B§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §,!G§ * _loc1_ * _loc1_;
      }
      
      public function get §;"7§() : Number
      {
         return this.§1b§;
      }
      
      public function set §;"7§(param1:Number) : void
      {
         this.§1b§ = param1;
      }
      
      public function §2b§() : Number
      {
         return §8<§ / (this.§["0§ - this.§2!I§);
      }
      
      public function get §-q§() : Number
      {
         var _loc1_:Number = §8!w§.§70§ / §8!w§.§<"B§;
         return this.§!!j§ / _loc1_;
      }
      
      public function get § B§() : Number
      {
         return this.§1E§;
      }
      
      public function get §?!q§() : Number
      {
         return this.§5!X§;
      }
      
      public function get § c§() : Number
      {
         return this.§`V§;
      }
      
      public function get §1!-§() : Number
      {
         return this.§2!I§;
      }
      
      public function get §9?§() : Number
      {
         return this.§["0§;
      }
      
      public function get §`!#§() : Number
      {
         return this.§0Q§;
      }
      
      public function get §'"%§() : Number
      {
         return this.§<w§;
      }
      
      public function get §<"<§() : Number
      {
         return this.§["0§ - this.§2!I§;
      }
      
      public function §!A§(param1:Number) : void
      {
         this.§1b§ = param1;
         this.§3y§();
         this.§!"2§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §`e§)
         {
            return;
         }
         this.goToCastleView();
         this.§ !m§ = 2000;
         this.§-!x§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§`o§ = this.§%_§.x;
         this.§>!a§ = this.§%_§.y;
         this.§3!?§ = false;
         this.§<a§ = §3"@§ / 160000 * param1;
         this.§-l§(§`e§);
      }
      
      public function § !-§() : void
      {
         var _loc1_:Number = (this.§#!a§.x - this.§%_§.x) / 1.6;
         if(_loc1_ < §8<§ * 1.2)
         {
            _loc1_ = §8<§ * 1.2;
         }
         this.§2!I§ = this.§%_§.x - _loc1_;
         this.§["0§ = this.§#!a§.x + _loc1_;
         this.§`7§ = Math.min(this.§#!a§.y,this.§%_§.y) - §,M§;
         this.§'"!§ = Math.max(this.§#!a§.y,this.§%_§.y) + §,M§;
         this.§0Q§ = (this.§#!a§.x + this.§%_§.x) / 2;
         this.§<w§ = (this.§#!a§.y + this.§%_§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§;H§ = null;
      }
      
      public function §[C§(param1:§3v§) : void
      {
         var _loc3_:§8"6§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§#!I§)
         {
            _loc3_ = param1.§&$§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§!!+§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §0!I§)
            {
               this.§%_§ = new §+$§(_loc5_,_loc6_,_loc7_,true);
               this.§""#§ = new §^d§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §&!U§)
            {
               this.§#!a§ = new §+$§(_loc5_,_loc6_,_loc7_,false);
               this.§2Y§ = new §^d§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §6E§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§8"6§) : Number
      {
         var _loc2_:Number = §,M§ / (param1.bottom - param1.top);
         var _loc3_:Number = §8<§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function writeCameraInformation(param1:§3v§) : void
      {
         var _loc2_:§8"6§ = new §8"6§();
         _loc2_.id = §0!I§;
         _loc2_.x = this.§%_§.x;
         _loc2_.y = this.§%_§.y;
         var _loc3_:Number = §8<§ / this.§%_§.scale / 2;
         var _loc4_:Number = §,M§ / this.§%_§.scale / 2;
         _loc2_.left = this.§%_§.x - _loc3_;
         _loc2_.right = this.§%_§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§8"6§;
         (_loc5_ = new §8"6§()).id = §&!U§;
         _loc5_.x = this.§#!a§.x;
         _loc5_.y = this.§#!a§.y;
         var _loc6_:Number = §8<§ / this.§#!a§.scale / 2;
         var _loc7_:Number = §,M§ / this.§#!a§.scale / 2;
         _loc5_.left = this.§#!a§.x - _loc6_;
         _loc5_.right = this.§#!a§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§<"1§();
         param1.§#!f§(_loc2_);
         param1.§#!f§(_loc5_);
      }
      
      public function §!!+§(param1:§8"6§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §8!w§.§6c§ * 0.5 / _loc2_ * §1!R§.§00§;
         var _loc4_:Number = param1.y - §8!w§.§9"-§ * 0.5 / _loc2_ * §1!R§.§00§;
         var _loc5_:Number = _loc3_ + §8!w§.§6c§ / _loc2_ * §1!R§.§00§;
         var _loc6_:Number = _loc4_ + §8!w§.§9"-§ / _loc2_ * §1!R§.§00§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §^!j§(param1:§+$§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§<a§;
         if(_loc3_ >= §3"@§)
         {
            _loc3_ = §3"@§;
            this.§-l§(§]>§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§-l§(§]>§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §[v§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§<a§;
         var _loc4_:Number = -§3"@§ * 0.7;
         if(_loc2_ >= §3"@§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §3"@§;
            }
            this.§<a§ = -this.§<a§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §2",§(param1:Number) : void
      {
         if(this.mCurrentAction == §`e§)
         {
            this.§[v§(param1);
         }
         else if(this.mCurrentAction == §0#§)
         {
            this.§^!j§(this.§#!a§,param1);
         }
         else if(this.mCurrentAction == §>!u§)
         {
            this.§^!j§(this.§%_§,-param1);
         }
         else if(this.mCurrentAction == §["+§)
         {
            this.§3!?§ = true;
         }
         else if(this.mCurrentAction == §-!9§)
         {
            this.§;<§(param1);
         }
      }
      
      public function §+1§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§ !C§)
         {
            this.§`o§ = this.§ !C§.x;
            this.§>!a§ = this.§ !C§.y;
            §,!G§ = §8<§ / (this.§ !C§.right - this.§ !C§.left);
         }
         else
         {
            this.§3y§();
            this.§2",§(param1);
            if(Math.abs(this.§'!B§ - §8!w§.§70§ / §8!w§.§<"B§) > 0.01)
            {
               param1 = 1000;
            }
            this.§ L§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§-!x§();
         this.§'!B§ = §8!w§.§70§ / §8!w§.§<"B§;
      }
      
      private function §9!C§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§2Y§.x - this.§""#§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§""#§.scale + (this.§2Y§.scale - this.§""#§.scale) * param1;
         var _loc4_:Number = this.§""#§.x + (this.§2Y§.x - this.§""#§.x) * param1;
         var _loc5_:Number = this.§""#§.y + (this.§2Y§.y - this.§""#§.y) * param1;
         this.§#@§.x -= (this.§#@§.x - _loc4_) * param2;
         this.§#@§.y -= (this.§#@§.y - _loc5_) * param2;
         this.§#@§.scale -= (this.§#@§.scale - _loc3_) * param2;
      }
      
      protected function §!"2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§?"'§ != 0)
         {
            if(!this.§3!?§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §3"@§;
            this.§9!C§(_loc3_,param2);
            this.§`o§ = this.§#@§.x;
            this.§>!a§ = this.§#@§.y;
            §,!G§ = this.§#@§.scale;
         }
      }
      
      private function §%u§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§6!!§;
         var _loc5_:Number = (_loc4_ = this.§;H§.levelObjects.activeObject).§!U§();
         var _loc6_:Number = _loc4_.§%""§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§9B§().GetLinearVelocity().x) > 0 && this.§?"'§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§?"'§ * §3"@§;
         }
         if(param1 >= §3"@§)
         {
            param1 = §3"@§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §3"@§;
         this.§9!C§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §8!w§.§70§ / §8!w§.§<"B§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§#@§.x - §8<§ / _loc9_ * 0.5 / this.§#@§.scale;
         var _loc11_:Number = this.§#@§.y - §,M§ * 0.5 / this.§#@§.scale;
         var _loc12_:Number = this.§#@§.x + §8<§ / _loc9_ * 0.5 / this.§#@§.scale;
         var _loc13_:Number = this.§#@§.y + §,M§ * 0.5 / this.§#@§.scale;
         var _loc14_:Number = 150 * §1!R§.§00§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§2!I§,_loc15_);
         _loc17_ = Math.min(this.§["0§,_loc17_);
         var _loc19_:Number = Math.abs(§8<§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§,M§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§#@§.scale)
         {
            _loc21_ = this.§#@§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §8<§ / _loc9_ * 0.5 / _loc21_ > this.§["0§)
         {
            _loc15_ = (_loc17_ = this.§["0§) - §8<§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§2!I§)
            {
               _loc15_ = this.§2!I§;
            }
         }
         if(_loc22_ - §8<§ / _loc9_ * 0.5 / _loc21_ < this.§2!I§)
         {
            _loc17_ = (_loc15_ = this.§2!I§) + §8<§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§["0§)
            {
               _loc17_ = this.§["0§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§8<§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §,M§ * 0.5 < this.§`7§)
         {
            _loc23_ = this.§`7§ + §,M§ * 0.5;
         }
         if(_loc23_ + §,M§ * 0.5 > this.§'"!§)
         {
            _loc23_ = this.§'"!§ - §,M§ * 0.5;
         }
         this.§`o§ -= (this.§`o§ - _loc22_) * param3;
         this.§7!=§ -= (this.§7!=§ - _loc21_) * param3;
         §,!G§ = this.§7!=§;
         this.§>!a§ -= (this.§>!a§ - _loc23_) * param3;
         if(_loc5_ >= this.§["0§ || _loc5_ <= this.§2!I§)
         {
            this.§#@§.scale = §,!G§;
            this.§#@§.x = this.§`o§;
            this.§#@§.y = this.§>!a§;
         }
      }
      
      public function § L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §3"@§)
         {
            this.§3!?§ = true;
         }
         if(this.mCurrentAction == §["+§)
         {
            if(!this.§;H§.levelObjects.activeObject)
            {
               this.§-l§(§0#§);
               this.§&N§ = §8!p§;
            }
            else
            {
               this.§%u§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§!"2§(param1,_loc4_);
         }
      }
      
      public function §#!w§(param1:Number, param2:Number) : void
      {
         this.§8I§ = param1;
         this.§,D§ = param2;
      }
      
      private function §@!?§(param1:§^d§, param2:§+$§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §8!w§.§70§ / §8!w§.§<"B§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §9!r§ + (param2.scale - §9!r§) * this.§;"7§;
         if(§8<§ / param1.scale > (this.§["0§ - this.§2!I§) * _loc3_)
         {
            _loc4_ = §8<§ / ((this.§["0§ - this.§2!I§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §#L§(param1:§^d§, param2:§+$§) : Boolean
      {
         var _loc3_:Boolean = this.§@!?§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §8!w§.§70§ / §8!w§.§<"B§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §8<§ / _loc4_ * 0.5 / param1.scale) < this.§2!I§ && param1.§>!d§)
         {
            param1.x += this.§2!I§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §8<§ / _loc4_ * 0.5 / param1.scale) > this.§["0§ && !param1.§>!d§)
         {
            param1.x += this.§["0§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §^!a§(param1:§^d§, param2:§+$§) : Number
      {
         return (param1.scale - §9!r§) / (param2.scale - §9!r§);
      }
      
      protected function §3y§() : void
      {
         this.§#L§(this.§""#§,this.§%_§);
         var _loc1_:Number = this.§^!a§(this.§""#§,this.§%_§);
         this.§#L§(this.§2Y§,this.§#!a§);
         var _loc2_:Number = this.§^!a§(this.§2Y§,this.§#!a§);
         this.§1b§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §-!x§() : void
      {
         var _loc1_:Number = this.§`o§ / §1!R§.§00§ + this.§8I§;
         var _loc2_:Number = this.§>!a§ / §1!R§.§00§ + this.§,D§;
         var _loc3_:Number = §8!w§.§70§;
         var _loc4_:Number = §8!w§.§<"B§;
         var _loc5_:Number = §1!R§.§'!v§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §1!R§.§!"8§;
         this.§5!X§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§`V§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§5!X§ += _loc5_ / 2 - _loc5_ / 2 / §,f§;
         this.§`V§ += (_loc6_ / 2 - _loc6_ / 2 / §,f§) / (_loc3_ / _loc4_);
         this.§;H§.setScreenOffset(this.§5!X§,this.§`V§,§,f§);
      }
      
      protected function §1"&§() : void
      {
         this.§-l§(§-!9§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§&N§ = -1;
         this.§1"&§();
         this.§1D§ = this.§"-§ = this.§""B§ = param1;
         this.§2"<§ = this.§=1§ = this.§4!s§ = param2;
         this.§6$§ = 0;
         this.§#@§.x = this.§`o§;
         this.§#@§.y = this.§>!a§;
         this.§#@§.scale = §,!G§;
         this.§7!=§ = §,!G§;
         if(Math.abs(this.§2Y§.x - this.§""#§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§`o§ - this.§""#§.x) / (this.§2Y§.x - this.§""#§.x) * §3"@§;
         }
         this.mDragging = true;
      }
      
      public function §;<§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§6$§ += param1;
         var _loc3_:Number = this.§1D§ - this.§"-§;
         if(this.§?"'§ > 0)
         {
            _loc2_ -= _loc3_ * §1!R§.§00§ / §,f§ / this.§?"'§ * §3"@§;
            this.§3!?§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§3!?§ = true;
            }
            if(_loc2_ > §3"@§)
            {
               _loc2_ += (§3"@§ - _loc2_) * 0.3;
               this.§3!?§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"-§ = this.§1D§;
      }
      
      protected function §@!+§() : Boolean
      {
         return this.mCurrentAction == §-!9§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§1D§ = param1;
            this.§2"<§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §-!9§)
         {
            this.§-l§(§]>§);
            if(param1 > 0)
            {
               this.§1D§ = param1;
            }
            _loc3_ = Math.abs(this.§1D§ - this.§""B§);
            if(this.§6$§ < §9!e§ && _loc3_ >= §&K§ && _loc3_ >= §'Y§ * this.§6$§ / 1000)
            {
               if(this.§1D§ < this.§""B§)
               {
                  this.§-l§(§0#§);
               }
               else
               {
                  this.§-l§(§>!u§);
               }
               this.§<a§ = _loc3_ / this.§6$§ * 10;
               this.§3!?§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§3!?§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §3"@§)
               {
                  this.§3!?§ = true;
               }
            }
            else if(this.§6$§ < §'!I§)
            {
               this.§]!+§();
               this.§<a§ = §3"@§ / (§3"@§ / 500);
               this.§3!?§ = true;
            }
            else
            {
               this.§;<§(0);
               this.§=!w§(0);
               this.§<a§ = §3"@§ / (§3"@§ / 500);
               this.§3!?§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §]!+§() : void
      {
         if(this.mCurrentAction == §0#§)
         {
            this.§-l§(§>!u§);
         }
         else if(this.mCurrentAction == §>!u§)
         {
            this.§-l§(§0#§);
         }
         else if(this.mCurrentCameraSliderLocation >= §3"@§ / 2)
         {
            this.§-l§(§>!u§);
         }
         else if(this.mCurrentCameraSliderLocation <= §3"@§ / 2)
         {
            this.§-l§(§0#§);
         }
      }
      
      public function §=!w§(param1:int) : void
      {
         this.§&N§ = param1;
         if(this.mCurrentCameraSliderLocation < §3"@§ / 2)
         {
            this.§-l§(§>!u§);
         }
         else
         {
            this.§-l§(§0#§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§-l§(§>!u§);
      }
      
      public function goToCastleView() : void
      {
         this.§-l§(§0#§);
      }
      
      public function §-l§(param1:int) : void
      {
         this.§#@§.x = this.§`o§;
         this.§#@§.y = this.§>!a§;
         this.§#@§.scale = §,!G§;
         this.§7!=§ = §,!G§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §3"@§)
         {
            return true;
         }
         if(this.mCurrentAction == §0#§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!E§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §>!u§)
         {
            return true;
         }
         return false;
      }
      
      public function §+Y§(param1:§8"6§) : void
      {
         this.§ !C§ = param1;
         if(this.§ !C§ != null)
         {
            this.§]r§ = new §8"6§();
            this.§]r§.x = this.§`o§;
            this.§]r§.y = this.§>!a§;
            this.§]r§.scale = §,!G§;
         }
         else
         {
            this.§`o§ = this.§]r§.x;
            this.§>!a§ = this.§]r§.y;
            §,!G§ = this.§]r§.scale;
            this.§]r§ = null;
         }
      }
      
      protected function §#Z§() : void
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
         var _loc3_:Number = this.§1b§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§ B§,Math.min(this.§-q§,_loc3_));
         if(_loc3_ != this.§1b§)
         {
            this.§1b§ = _loc3_;
         }
      }
      
      public function §>t§() : Number
      {
         return (this.§;"7§ - this.§ B§) / (this.§-q§ - this.§ B§);
      }
      
      public function §]`§(param1:Number) : void
      {
         this.§;"7§ = Math.min(Math.max(param1,0),1) * (this.§-q§ - this.§ B§) + this.§ B§;
      }
      
      public function §""'§() : void
      {
         this.§1b§ = Math.max(this.§1b§ - 0.5,0.5);
      }
      
      public function §,L§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§;"7§;
         _loc1_ += " mXcenterB2: " + this.§`o§;
         _loc1_ += " mYcenterB2: " + this.§>!a§;
         _loc1_ += " mXcenterB2target: " + this.§;"7§;
         _loc1_ += "\n mYcenterB2target: " + this.§;"7§;
         _loc1_ += " mXcenterB2previous: " + this.§;"7§;
         _loc1_ += " mYcenterB2previous: " + this.§;"7§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§;"7§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§;"7§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§;"7§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§;"7§;
         _loc1_ += " mTargetScale: " + this.§;"7§;
         _loc1_ += " mTargetScalePrevious: " + this.§;"7§;
         _loc1_ += " mCastleCameraX: " + this.§;"7§;
         _loc1_ += "\n mCastleCameraY: " + this.§;"7§;
         _loc1_ += " mCastleCameraScale: " + this.§;"7§;
         _loc1_ += " mBirdCameraX: " + this.§;"7§;
         _loc1_ += " mBirdCameraY: " + this.§;"7§;
         _loc1_ += " mBirdCameraScale: " + this.§;"7§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§;"7§;
         _loc1_ += "mScreenOffsetYl: " + this.§;"7§;
         _loc1_ += " mDragging: " + this.§;"7§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§;"7§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§;"7§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§;"7§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§;"7§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§;"7§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§;"7§;
         _loc1_ += " mDraggingTimer: " + this.§;"7§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§;"7§;
         _loc1_ += " mCameraBorderRight: " + this.§;"7§;
         _loc1_ += "mCameraBorderTop: " + this.§;"7§;
         _loc1_ += "mCameraBorderBottom: " + this.§;"7§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§;"7§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
