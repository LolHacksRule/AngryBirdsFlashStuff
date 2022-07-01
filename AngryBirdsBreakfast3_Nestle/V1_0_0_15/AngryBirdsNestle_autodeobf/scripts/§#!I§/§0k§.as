package §#!I§
{
   import §%!B§.§5L§;
   import §%!B§.§9"2§;
   import §0!m§.§@!S§;
   import §24§.;
   import §@!"§.§@_§;
   import §@V§.§#=§;
   
   public class §0k§
   {
      
      public static const §#!g§:Number = 1.25;
      
      public static const §;y§:Number = 0.15;
      
      public static const §6!%§:Number = §@!S§.§3z§ * §#=§.§^!2§;
      
      public static const §,s§:Number = §@!S§.§`!,§ * §#=§.§^!2§;
      
      public static const §<"2§:Number = 0.1;
      
      public static const §<R§:int = 1500;
      
      public static const §%!E§:int = 10;
      
      public static const §5!M§:int = 15;
      
      public static const §`!N§:int = 300;
      
      public static const § ![§:int = 1000;
      
      public static const §-!m§:int = 10000;
      
      public static const §7!=§:int = §-!m§ / 50;
      
      public static const §9!T§:int = 0;
      
      public static const §&=§:int = 1;
      
      public static const §;!$§:int = 2;
      
      public static const §=!I§:int = 3;
      
      public static const §^!z§:int = 4;
      
      public static const §9!]§:int = 5;
      
      public static const § "%§:String = §9"2§.CASTLE;
      
      public static const §41§:String = §9"2§.SLINGSHOT;
      
      protected static var §7!N§:Number;
      
      public static const §%!e§:Number = 2000;
       
      
      protected var §="6§:Number = 1.0;
      
      protected var §9M§:Number = 0.2;
      
      protected var §9!-§:Number;
      
      protected var §"E§:Number;
      
      protected var §?!c§:Number;
      
      public var §!`§:§#=§;
      
      public var §9!h§:Number;
      
      public var §?&§:Number;
      
      protected var §'!B§:§7n§;
      
      protected var §%W§:§7n§;
      
      protected var §5"7§:Number;
      
      protected var §5!-§:Number;
      
      protected var §7L§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §8G§:Number;
      
      protected var §8v§:Number;
      
      protected var §%7§:Number;
      
      protected var §-!E§:Number;
      
      protected var §-!y§:Number;
      
      protected var §@a§:Number;
      
      protected var §[Y§:§3!=§;
      
      protected var §6!J§:§3!=§;
      
      protected var §<w§:Number = 0;
      
      protected var § get§:Number = 0;
      
      protected var §@!V§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1"'§:Number = 0;
      
      public var §`t§:Boolean = true;
      
      public var §[V§:Number = 0;
      
      public var §'y§:Number = 0;
      
      public var §;!C§:Number = 0;
      
      public var §7!@§:Number = 0;
      
      public var §32§:Number = 0;
      
      public var §-!2§:Number = 0;
      
      public var §"!@§:Number = 0;
      
      public var §2]§:Number = 0;
      
      public var §&!V§:Number = 0;
      
      private var §-s§:§3!=§;
      
      public var §@!>§:Number = 0;
      
      private var §0!F§:Number = 0;
      
      private var §1!!§:Number = 0;
      
      private var §<!4§:§9"2§ = null;
      
      private var §7K§:§9"2§ = null;
      
      public function §0k§(param1:§#=§, param2:§5L§, param3:Number = 1.0)
      {
         this.§-s§ = new §3!=§(0,0,1,false);
         super();
         this.§"E§ = 0;
         this.§?!c§ = 0;
         this.§!`§ = param1;
         §0k§.§7!N§ = 1;
         this.§="6§ = Math.max(1,Math.min(2,param3));
         this.§9!-§ = this.§!"5§;
         this.§[s§(param2);
         if(this.§'!B§ && this.§%W§)
         {
            this.§@9§();
            this.§<w§ = this.§'!B§.x - this.§%W§.x;
            this.§ get§ = this.§'!B§.y - this.§%W§.y;
            this.§@!V§ = this.§'!B§.scale - this.§%W§.scale;
            this.§"E§ = this.§'!B§.x;
            this.§?!c§ = this.§'!B§.y;
            §7!N§ = this.§'!B§.scale * this.§9!-§;
         }
         this.mCurrentCameraSliderLocation = §-!m§;
         this.§`t§ = true;
         this.§1"'§ = §-!m§ / 500;
      }
      
      public static function get §0!1§() : Number
      {
         var _loc1_:Number = §@!S§.§5!e§ / §@!S§.§+!q§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §7!N§ * _loc1_ * _loc1_;
      }
      
      public function get §=Q§() : Number
      {
         return this.§9!-§;
      }
      
      public function set §=Q§(param1:Number) : void
      {
         this.§9!-§ = param1;
      }
      
      public function §8u§() : Number
      {
         return §6!%§ / (this.§-!E§ - this.§%7§);
      }
      
      public function get §!"5§() : Number
      {
         var _loc1_:Number = §@!S§.§5!e§ / §@!S§.§+!q§;
         return this.§="6§ / _loc1_;
      }
      
      public function get §6X§() : Number
      {
         return this.§9M§;
      }
      
      public function get §9y§() : Number
      {
         return this.§5"7§;
      }
      
      public function get §-![§() : Number
      {
         return this.§5!-§;
      }
      
      public function get §%h§() : Number
      {
         return this.§%7§;
      }
      
      public function get §!v§() : Number
      {
         return this.§-!E§;
      }
      
      public function get §[!s§() : Number
      {
         return this.§8G§;
      }
      
      public function get §3!Y§() : Number
      {
         return this.§8v§;
      }
      
      public function get §>!<§() : Number
      {
         return this.§-!E§ - this.§%7§;
      }
      
      protected function get §#!u§() : §7n§
      {
         return this.§'!B§;
      }
      
      public function §#V§(param1:Number) : void
      {
         this.§9!-§ = param1;
         this.§]!w§();
         this.§<y§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §9!]§)
         {
            return;
         }
         this.goToCastleView();
         this.§[V§ = 2000;
         this.§?"0§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§"E§ = this.§%W§.x;
         this.§?!c§ = this.§%W§.y;
         this.§`t§ = false;
         this.§1"'§ = §-!m§ / 160000 * param1;
         this.§-!M§(§9!]§);
      }
      
      public function §@9§() : void
      {
         var _loc1_:Number = (this.§'!B§.x - this.§%W§.x) / 1.6;
         if(_loc1_ < §6!%§ * 1.2)
         {
            _loc1_ = §6!%§ * 1.2;
         }
         this.§%7§ = this.§%W§.x - _loc1_;
         this.§-!E§ = this.§'!B§.x + _loc1_;
         this.§-!y§ = Math.min(this.§'!B§.y,this.§%W§.y) - §,s§;
         this.§@a§ = Math.max(this.§'!B§.y,this.§%W§.y) + §,s§;
         this.§8G§ = (this.§'!B§.x + this.§%W§.x) / 2;
         this.§8v§ = (this.§'!B§.y + this.§%W§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§!`§ = null;
      }
      
      public function §[s§(param1:§5L§) : void
      {
         var _loc3_:§9"2§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§5!i§)
         {
            _loc3_ = param1.§@"!§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§<!e§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §41§)
            {
               this.§%W§ = new §7n§(_loc5_,_loc6_,_loc7_,true);
               this.§6!J§ = new §3!=§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == § "%§)
            {
               this.§'!B§ = new §7n§(_loc5_,_loc6_,_loc7_,false);
               this.§[Y§ = new §3!=§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §#7§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§9"2§) : Number
      {
         var _loc2_:Number = §,s§ / (param1.bottom - param1.top);
         var _loc3_:Number = §6!%§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §1-§(param1:§5L§) : void
      {
         var _loc2_:§9"2§ = new §9"2§();
         _loc2_.id = §41§;
         _loc2_.x = this.§%W§.x;
         _loc2_.y = this.§%W§.y;
         var _loc3_:Number = §6!%§ / this.§%W§.scale / 2;
         var _loc4_:Number = §,s§ / this.§%W§.scale / 2;
         _loc2_.left = this.§%W§.x - _loc3_;
         _loc2_.right = this.§%W§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§%W§.scale;
         var _loc5_:§9"2§;
         (_loc5_ = new §9"2§()).id = § "%§;
         _loc5_.x = this.§'!B§.x;
         _loc5_.y = this.§'!B§.y;
         var _loc6_:Number = §6!%§ / this.§'!B§.scale / 2;
         var _loc7_:Number = §,s§ / this.§'!B§.scale / 2;
         _loc5_.left = this.§'!B§.x - _loc6_;
         _loc5_.right = this.§'!B§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§'!B§.scale;
         param1.§;!x§();
         param1.§ !O§(_loc2_);
         param1.§ !O§(_loc5_);
      }
      
      public function §<!e§(param1:§9"2§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §@!S§.§3z§ * 0.5 / _loc2_ * §#=§.§^!2§;
         var _loc4_:Number = param1.y - §@!S§.§`!,§ * 0.5 / _loc2_ * §#=§.§^!2§;
         var _loc5_:Number = _loc3_ + §@!S§.§3z§ / _loc2_ * §#=§.§^!2§;
         var _loc6_:Number = _loc4_ + §@!S§.§`!,§ / _loc2_ * §#=§.§^!2§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §-!s§(param1:§7n§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1"'§;
         if(_loc3_ >= §-!m§)
         {
            _loc3_ = §-!m§;
            this.§-!M§(§9!T§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§-!M§(§9!T§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §,!j§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1"'§;
         var _loc4_:Number = -§-!m§ * 0.7;
         if(_loc2_ >= §-!m§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §-!m§;
            }
            this.§1"'§ = -this.§1"'§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §'$§(param1:Number) : void
      {
         if(this.mCurrentAction == §9!]§)
         {
            this.§,!j§(param1);
         }
         else if(this.mCurrentAction == §&=§)
         {
            this.§-!s§(this.§'!B§,param1);
         }
         else if(this.mCurrentAction == §;!$§)
         {
            this.§-!s§(this.§%W§,-param1);
         }
         else if(this.mCurrentAction == §=!I§)
         {
            this.§`t§ = true;
         }
         else if(this.mCurrentAction == §^!z§)
         {
            this.§4!C§(param1);
         }
      }
      
      public function §#P§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§<!4§)
         {
            this.§"E§ = this.§<!4§.x;
            this.§?!c§ = this.§<!4§.y;
            §7!N§ = §6!%§ / (this.§<!4§.right - this.§<!4§.left);
         }
         else
         {
            this.§]!w§();
            this.§'$§(param1);
            if(Math.abs(this.§7L§ - §@!S§.§5!e§ / §@!S§.§+!q§) > 0.01)
            {
               param1 = 1000;
            }
            this.§%f§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?"0§();
         this.§7L§ = §@!S§.§5!e§ / §@!S§.§+!q§;
      }
      
      private function §'^§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§[Y§.x - this.§6!J§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§6!J§.scale + (this.§[Y§.scale - this.§6!J§.scale) * param1;
         var _loc4_:Number = this.§6!J§.x + (this.§[Y§.x - this.§6!J§.x) * param1;
         var _loc5_:Number = this.§6!J§.y + (this.§[Y§.y - this.§6!J§.y) * param1;
         this.§-s§.x -= (this.§-s§.x - _loc4_) * param2;
         this.§-s§.y -= (this.§-s§.y - _loc5_) * param2;
         this.§-s§.scale -= (this.§-s§.scale - _loc3_) * param2;
         this.§!#§(this.§-s§);
      }
      
      protected function §<y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§<w§ != 0)
         {
            if(!this.§`t§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §-!m§;
            this.§'^§(_loc3_,param2);
            this.§"E§ = this.§-s§.x;
            this.§?!c§ = this.§-s§.y;
            §7!N§ = this.§-s§.scale;
         }
      }
      
      private function §'!r§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§@_§;
         var _loc5_:Number = (_loc4_ = this.§!`§.levelObjects.activeObject).§!=§();
         var _loc6_:Number = _loc4_.§?!?§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§!!I§().GetLinearVelocity().x) > 0 && this.§<w§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§<w§ * §-!m§;
         }
         if(param1 >= §-!m§)
         {
            param1 = §-!m§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §-!m§;
         this.§'^§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §@!S§.§5!e§ / §@!S§.§+!q§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§-s§.x - §6!%§ / _loc9_ * 0.5 / this.§-s§.scale;
         var _loc11_:Number = this.§-s§.y - §,s§ * 0.5 / this.§-s§.scale;
         var _loc12_:Number = this.§-s§.x + §6!%§ / _loc9_ * 0.5 / this.§-s§.scale;
         var _loc13_:Number = this.§-s§.y + §,s§ * 0.5 / this.§-s§.scale;
         var _loc14_:Number = 150 * §#=§.§^!2§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§%7§,_loc15_);
         _loc17_ = Math.min(this.§-!E§,_loc17_);
         var _loc19_:Number = Math.abs(§6!%§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§,s§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§-s§.scale)
         {
            _loc21_ = this.§-s§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §6!%§ / _loc9_ * 0.5 / _loc21_ > this.§-!E§)
         {
            _loc15_ = (_loc17_ = this.§-!E§) - §6!%§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§%7§)
            {
               _loc15_ = this.§%7§;
            }
         }
         if(_loc22_ - §6!%§ / _loc9_ * 0.5 / _loc21_ < this.§%7§)
         {
            _loc17_ = (_loc15_ = this.§%7§) + §6!%§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§-!E§)
            {
               _loc17_ = this.§-!E§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§6!%§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §,s§ * 0.5 < this.§-!y§)
         {
            _loc23_ = this.§-!y§ + §,s§ * 0.5;
         }
         if(_loc23_ + §,s§ * 0.5 > this.§@a§)
         {
            _loc23_ = this.§@a§ - §,s§ * 0.5;
         }
         this.§"E§ -= (this.§"E§ - _loc22_) * param3;
         this.§@!>§ -= (this.§@!>§ - _loc21_) * param3;
         §7!N§ = this.§@!>§;
         this.§?!c§ -= (this.§?!c§ - _loc23_) * param3;
         if(_loc5_ >= this.§-!E§ || _loc5_ <= this.§%7§)
         {
            this.§-s§.scale = §7!N§;
            this.§-s§.x = this.§"E§;
            this.§-s§.y = this.§?!c§;
         }
      }
      
      protected function §%f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §-!m§)
         {
            this.§`t§ = true;
         }
         if(this.mCurrentAction == §=!I§)
         {
            if(!this.§!`§.levelObjects.activeObject)
            {
               this.§-!M§(§&=§);
               this.§&!V§ = § ![§;
            }
            else
            {
               this.§'!r§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§<y§(param1,_loc4_);
         }
      }
      
      public function §9;§(param1:Number, param2:Number) : void
      {
         this.§0!F§ = param1;
         this.§1!!§ = param2;
      }
      
      protected function §;R§(param1:§3!=§, param2:§7n§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §@!S§.§5!e§ / §@!S§.§+!q§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §;y§ + (param2.scale - §;y§) * this.§=Q§;
         if(§6!%§ / param1.scale > (this.§-!E§ - this.§%7§) * _loc3_)
         {
            _loc4_ = §6!%§ / ((this.§-!E§ - this.§%7§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §<$§(param1:§3!=§, param2:§7n§) : Boolean
      {
         var _loc3_:Boolean = this.§;R§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§!#§(param1);
         return _loc3_;
      }
      
      private function §!#§(param1:§3!=§) : void
      {
         var _loc2_:Number = §@!S§.§5!e§ / §@!S§.§+!q§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §6!%§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§%7§)
         {
            param1.x += this.§%7§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §6!%§ / _loc2_ * 0.5 / param1.scale) > this.§-!E§)
         {
            param1.x += this.§-!E§ - _loc4_;
         }
      }
      
      private function §^l§(param1:§3!=§, param2:§7n§) : Number
      {
         return (param1.scale - §;y§) / (param2.scale - §;y§);
      }
      
      protected function §]!w§() : void
      {
         this.§<$§(this.§6!J§,this.§%W§);
         var _loc1_:Number = this.§^l§(this.§6!J§,this.§%W§);
         this.§<$§(this.§[Y§,this.§'!B§);
         var _loc2_:Number = this.§^l§(this.§[Y§,this.§'!B§);
         this.§9!-§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §?"0§() : void
      {
         var _loc1_:Number = this.§"E§ / §#=§.§^!2§ + this.§0!F§;
         var _loc2_:Number = this.§?!c§ / §#=§.§^!2§ + this.§1!!§;
         var _loc3_:Number = §@!S§.§5!e§;
         var _loc4_:Number = §@!S§.§+!q§;
         var _loc5_:Number = §#=§.§5B§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §#=§.§1!J§;
         this.§5"7§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§5!-§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§5"7§ += _loc5_ / 2 - _loc5_ / 2 / §0!1§;
         this.§5!-§ += (_loc6_ / 2 - _loc6_ / 2 / §0!1§) / (_loc3_ / _loc4_);
         this.§!`§.setScreenOffset(this.§5"7§,this.§5!-§,§0!1§);
      }
      
      protected function §1"4§() : void
      {
         this.§-!M§(§^!z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§&!V§ = -1;
         this.§1"4§();
         this.§32§ = this.§"!@§ = this.§;!C§ = param1;
         this.§-!2§ = this.§2]§ = this.§7!@§ = param2;
         this.§'y§ = 0;
         this.§-s§.x = this.§"E§;
         this.§-s§.y = this.§?!c§;
         this.§-s§.scale = §7!N§;
         this.§@!>§ = §7!N§;
         if(Math.abs(this.§[Y§.x - this.§6!J§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§"E§ - this.§6!J§.x) / (this.§[Y§.x - this.§6!J§.x) * §-!m§;
         }
         this.mDragging = true;
      }
      
      public function §4!C§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§'y§ += param1;
         var _loc3_:Number = this.§32§ - this.§"!@§;
         if(this.§<w§ > 0)
         {
            _loc2_ -= _loc3_ * §#=§.§^!2§ / §0!1§ / this.§<w§ * §-!m§;
            this.§`t§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§`t§ = true;
            }
            if(_loc2_ > §-!m§)
            {
               _loc2_ += (§-!m§ - _loc2_) * 0.3;
               this.§`t§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"!@§ = this.§32§;
      }
      
      protected function §?Y§() : Boolean
      {
         return this.mCurrentAction == §^!z§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§32§ = param1;
            this.§-!2§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §^!z§)
         {
            this.§-!M§(§9!T§);
            if(param1 > 0)
            {
               this.§32§ = param1;
            }
            _loc3_ = Math.abs(this.§32§ - this.§;!C§);
            if(this.§'y§ < §<R§ && _loc3_ >= §%!E§ && _loc3_ >= §5!M§ * this.§'y§ / 1000)
            {
               if(this.§32§ < this.§;!C§)
               {
                  this.§-!M§(§&=§);
               }
               else
               {
                  this.§-!M§(§;!$§);
               }
               this.§1"'§ = _loc3_ / this.§'y§ * 10;
               this.§`t§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§`t§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §-!m§)
               {
                  this.§`t§ = true;
               }
            }
            else if(this.§'y§ < §`!N§)
            {
               this.§9C§();
               this.§1"'§ = §-!m§ / (§-!m§ / 500);
               this.§`t§ = true;
            }
            else
            {
               this.§4!C§(0);
               this.§,"6§(0);
               this.§1"'§ = §-!m§ / (§-!m§ / 500);
               this.§`t§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §9C§() : void
      {
         if(this.mCurrentAction == §&=§)
         {
            this.§-!M§(§;!$§);
         }
         else if(this.mCurrentAction == §;!$§)
         {
            this.§-!M§(§&=§);
         }
         else if(this.mCurrentCameraSliderLocation >= §-!m§ / 2)
         {
            this.§-!M§(§;!$§);
         }
         else if(this.mCurrentCameraSliderLocation <= §-!m§ / 2)
         {
            this.§-!M§(§&=§);
         }
      }
      
      public function §,"6§(param1:int) : void
      {
         this.§&!V§ = param1;
         if(this.mCurrentCameraSliderLocation < §-!m§ / 2)
         {
            this.§-!M§(§;!$§);
         }
         else
         {
            this.§-!M§(§&=§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§-!M§(§;!$§);
      }
      
      public function goToCastleView() : void
      {
         this.§-!M§(§&=§);
      }
      
      public function §-!M§(param1:int) : void
      {
         this.§-s§.x = this.§"E§;
         this.§-s§.y = this.§?!c§;
         this.§-s§.scale = §7!N§;
         this.§@!>§ = §7!N§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §-!m§)
         {
            return true;
         }
         if(this.mCurrentAction == §&=§)
         {
            return true;
         }
         return false;
      }
      
      public function §&!r§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §;!$§)
         {
            return true;
         }
         return false;
      }
      
      public function §-^§(param1:§9"2§) : void
      {
         this.§<!4§ = param1;
         if(this.§<!4§ != null)
         {
            this.§7K§ = new §9"2§();
            this.§7K§.x = this.§"E§;
            this.§7K§.y = this.§?!c§;
            this.§7K§.scale = §7!N§;
         }
         else
         {
            this.§"E§ = this.§7K§.x;
            this.§?!c§ = this.§7K§.y;
            §7!N§ = this.§7K§.scale;
            this.§7K§ = null;
         }
      }
      
      protected function §5g§() : void
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
         var _loc3_:Number = this.§9!-§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§6X§,Math.min(this.§!"5§,_loc3_));
         if(_loc3_ != this.§9!-§)
         {
            this.§9!-§ = _loc3_;
         }
      }
      
      public function §8>§() : Number
      {
         return (this.§=Q§ - this.§6X§) / (this.§!"5§ - this.§6X§);
      }
      
      public function §[!f§(param1:Number) : void
      {
         this.§=Q§ = Math.min(Math.max(param1,0),1) * (this.§!"5§ - this.§6X§) + this.§6X§;
      }
      
      public function §0!,§() : void
      {
         this.§9!-§ = Math.max(this.§9!-§ - 0.5,0.5);
      }
      
      public function §'!8§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§=Q§;
         _loc1_ += " mXcenterB2: " + this.§"E§;
         _loc1_ += " mYcenterB2: " + this.§?!c§;
         _loc1_ += " mXcenterB2target: " + this.§=Q§;
         _loc1_ += "\n mYcenterB2target: " + this.§=Q§;
         _loc1_ += " mXcenterB2previous: " + this.§=Q§;
         _loc1_ += " mYcenterB2previous: " + this.§=Q§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§=Q§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§=Q§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§=Q§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§=Q§;
         _loc1_ += " mTargetScale: " + this.§=Q§;
         _loc1_ += " mTargetScalePrevious: " + this.§=Q§;
         _loc1_ += " mCastleCameraX: " + this.§=Q§;
         _loc1_ += "\n mCastleCameraY: " + this.§=Q§;
         _loc1_ += " mCastleCameraScale: " + this.§=Q§;
         _loc1_ += " mBirdCameraX: " + this.§=Q§;
         _loc1_ += " mBirdCameraY: " + this.§=Q§;
         _loc1_ += " mBirdCameraScale: " + this.§=Q§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§=Q§;
         _loc1_ += "mScreenOffsetYl: " + this.§=Q§;
         _loc1_ += " mDragging: " + this.§=Q§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§=Q§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§=Q§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§=Q§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§=Q§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§=Q§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§=Q§;
         _loc1_ += " mDraggingTimer: " + this.§=Q§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§=Q§;
         _loc1_ += " mCameraBorderRight: " + this.§=Q§;
         _loc1_ += "mCameraBorderTop: " + this.§=Q§;
         _loc1_ += "mCameraBorderBottom: " + this.§=Q§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§=Q§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
