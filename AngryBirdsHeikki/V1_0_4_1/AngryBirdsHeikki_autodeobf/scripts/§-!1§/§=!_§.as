package §-!1§
{
   import §%!$§.§[Z§;
   import §,J§.§74§;
   import §,J§.§]6§;
   import §?!P§.§@@§;
   import §^!7§.§[!9§;
   import §^!7§.§^A§;
   import §`!X§.§5&§;
   
   public class §=!_§
   {
      
      public static const §&6§:Number = 1.25;
      
      public static const §3i§:Number = 0.15;
      
      public static const §2! §:Number = §@@§.§!!P§ * §^A§.§<U§;
      
      public static const §8!P§:Number = §@@§.§9!8§ * §^A§.§<U§;
      
      public static const §9V§:Number = 0.1;
      
      public static const §=!`§:int = 1500;
      
      public static const §8! §:int = 10;
      
      public static const §+[§:int = 15;
      
      public static const §=1§:int = 300;
      
      public static const §;[§:int = 1000;
      
      public static const §?8§:int = 10000;
      
      public static const §6!c§:int = §?8§ / 50;
      
      public static const §,!b§:int = 0;
      
      public static const §>%§:int = 1;
      
      public static const §^9§:int = 2;
      
      public static const § !6§:int = 3;
      
      public static const §>§:int = 4;
      
      public static const §;'§:int = 5;
      
      public static const §]&§:String = "CASTLE";
      
      public static const §>Q§:String = "SLINGSHOT";
      
      protected static var §%#§:Number;
      
      public static var §0!5§:Number;
      
      public static var §0Q§:Number;
      
      public static const §^!>§:Number = 2000;
       
      
      private var §2!@§:Number = 1.0;
      
      private var §&!c§:Number = 0.2;
      
      protected var §<!I§:Number;
      
      protected var §>!R§:Number;
      
      protected var §,!4§:Number;
      
      public var §<&§:§^A§;
      
      public var §!^§:Number;
      
      public var §"V§:Number;
      
      private var §,!S§:§`!U§;
      
      private var § "§:§`!U§;
      
      public var §'!;§:Number;
      
      public var §!!&§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §=$§:Number;
      
      public var §,u§:Number;
      
      public var §>b§:Number;
      
      public var §&L§:Number;
      
      private var §6!7§:Number;
      
      private var §@g§:§1o§;
      
      private var §2@§:§1o§;
      
      protected var §%!2§:Number = 0;
      
      protected var §>X§:Number = 0;
      
      protected var §&!=§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&!#§:Number = 0;
      
      public var §7!$§:Boolean = true;
      
      public var §;C§:Number = 0;
      
      public var §4e§:Number = 0;
      
      public var §^R§:Number = 0;
      
      public var §9!?§:Number = 0;
      
      public var §<_§:Number = 0;
      
      public var §,<§:Number = 0;
      
      public var §;L§:Number = 0;
      
      public var §`!A§:Number = 0;
      
      public var §;Y§:Number = 0;
      
      private var §7G§:§1o§;
      
      public var §9-§:Number = 0;
      
      private var §!'§:Number = 0;
      
      private var §-;§:Number = 0;
      
      private var §;!b§:§]6§ = null;
      
      private var §#C§:§]6§ = null;
      
      public function §=!_§(param1:§^A§, param2:§74§, param3:Number = 1.0)
      {
         this.§7G§ = new §1o§(0,0,1,false);
         super();
         this.§>!R§ = 0;
         this.§,!4§ = 0;
         this.§<&§ = param1;
         §=!_§.§%#§ = 1;
         this.§2!@§ = Math.max(1,Math.min(2,param3));
         this.§<!I§ = this.§2!@§;
         this.§ v§(param2);
         if(this.§,!S§ && this.§ "§)
         {
            this.§ do§();
            this.§%!2§ = this.§,!S§.x - this.§ "§.x;
            this.§>X§ = this.§,!S§.y - this.§ "§.y;
            this.§&!=§ = this.§,!S§.scale - this.§ "§.scale;
            this.§>!R§ = this.§,!S§.x;
            this.§,!4§ = this.§,!S§.y;
            §%#§ = this.§,!S§.scale * this.§<!I§;
         }
         this.mCurrentCameraSliderLocation = §?8§;
         this.§7!$§ = true;
         this.§&!#§ = §?8§ / 500;
      }
      
      private static function §%b§() : Number
      {
         var _loc1_:Number = §@@§.§0!D§ / §@@§.§@H§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §"b§() : Number
      {
         return §%#§ * §%b§();
      }
      
      public function get manualScale() : Number
      {
         return this.§<!I§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§<!I§ = param1;
      }
      
      public function get §<a§() : Number
      {
         return this.§6!7§;
      }
      
      public function §`j§() : Number
      {
         return §2! § / (this.§,u§ - this.§=$§);
      }
      
      public function get § if§() : Number
      {
         return this.§2!@§;
      }
      
      public function get §>B§() : Number
      {
         return this.§&!c§;
      }
      
      public function §!g§(param1:Number) : void
      {
         this.§<!I§ = param1;
         this.§]!V§();
         this.§>!L§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §;'§)
         {
            return;
         }
         this.goToCastleView();
         this.§;C§ = 2000;
         this.§67§();
         this.§2m§();
         this.§=2§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§>!R§ = this.§ "§.x;
         this.§,!4§ = this.§ "§.y;
         this.§7!$§ = false;
         this.§&!#§ = §?8§ / 160000 * param1;
         this.§8!T§(§;'§);
      }
      
      public function § do§() : void
      {
         this.§=$§ = this.§ "§.x - §2! § / this.§ "§.scale / 2;
         this.§,u§ = this.§,!S§.x + §2! § / this.§,!S§.scale / 2;
         this.§>b§ = this.§<&§.§9§.§72§ - 20 * §^A§.§!T§ * §^A§.§<U§;
         this.§&L§ = this.§<&§.§9§.§72§ + 4;
         var _loc1_:Number = §2! § / (this.§,u§ - this.§=$§);
         this.§6!7§ = this.§&L§ - §8!P§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§<&§ = null;
      }
      
      public function § v§(param1:§74§) : void
      {
         var _loc3_:§]6§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§60§)
         {
            _loc3_ = param1.§9d§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§>!+§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §8!P§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §2! § / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §>Q§)
            {
               this.§ "§ = new §`!U§(_loc9_,_loc10_,_loc13_,true);
               this.§2@§ = new §1o§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §]&§)
            {
               this.§,!S§ = new §`!U§(_loc9_,_loc10_,_loc13_,false);
               this.§@g§ = new §1o§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §[Z§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §5!]§(param1:§74§) : void
      {
         var _loc2_:§]6§ = new §]6§();
         _loc2_.id = §>Q§;
         _loc2_.x = this.§ "§.x;
         _loc2_.y = this.§ "§.y;
         var _loc3_:Number = §2! § / this.§ "§.scale / 2;
         var _loc4_:Number = §8!P§ / this.§ "§.scale / 2;
         _loc2_.left = this.§ "§.x - _loc3_;
         _loc2_.right = this.§ "§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§]6§;
         (_loc5_ = new §]6§()).id = §]&§;
         _loc5_.x = this.§,!S§.x;
         _loc5_.y = this.§,!S§.y;
         var _loc6_:Number = §2! § / this.§,!S§.scale / 2;
         var _loc7_:Number = §8!P§ / this.§,!S§.scale / 2;
         _loc5_.left = this.§,!S§.x - _loc6_;
         _loc5_.right = this.§,!S§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§ !,§();
         param1.§3!V§(_loc2_);
         param1.§3!V§(_loc5_);
      }
      
      public function §>!+§(param1:§]6§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §@@§.§!!P§ * 0.5 / _loc2_ * §^A§.§<U§;
         var _loc4_:Number = param1.y - §@@§.§9!8§ * 0.5 / _loc2_ * §^A§.§<U§;
         var _loc5_:Number = _loc3_ + §@@§.§!!P§ / _loc2_ * §^A§.§<U§;
         var _loc6_:Number = _loc4_ + §@@§.§9!8§ / _loc2_ * §^A§.§<U§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §'Z§(param1:§`!U§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&!#§;
         if(_loc3_ >= §?8§)
         {
            _loc3_ = §?8§;
            this.§8!T§(§,!b§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§8!T§(§,!b§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §8B§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&!#§;
         var _loc4_:Number = -§?8§ * 0.7;
         if(_loc2_ >= §?8§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §?8§;
            }
            this.§&!#§ = -this.§&!#§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §9!G§(param1:Number) : void
      {
         if(this.mCurrentAction == §;'§)
         {
            this.§8B§(param1);
         }
         else if(this.mCurrentAction == §>%§)
         {
            this.§'Z§(this.§,!S§,param1);
         }
         else if(this.mCurrentAction == §^9§)
         {
            this.§'Z§(this.§ "§,-param1);
         }
         else if(this.mCurrentAction == § !6§)
         {
            this.§7!$§ = true;
         }
         else if(this.mCurrentAction == §>§)
         {
            this.§29§(param1);
         }
      }
      
      public function §,y§(param1:Number) : void
      {
         if(this.§;!b§)
         {
            this.§>!R§ = this.§;!b§.x;
            this.§,!4§ = this.§;!b§.y;
            §%#§ = §2! § / (this.§;!b§.right - this.§;!b§.left);
         }
         else
         {
            this.§]!V§();
            this.§9!G§(param1);
            this.§]!&§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§67§();
         this.§2m§();
         this.§=2§();
      }
      
      private function § !c§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§2@§.scale + (this.§@g§.scale - this.§2@§.scale) * param1;
         var _loc4_:Number = this.§2@§.x + (this.§@g§.x - this.§2@§.x) * param1;
         var _loc5_:Number = this.§2@§.y + (this.§@g§.y - this.§2@§.y) * param1;
         this.§7G§.x -= (this.§7G§.x - _loc4_) * param2;
         this.§7G§.y -= (this.§7G§.y - _loc5_) * param2;
         this.§7G§.scale -= (this.§7G§.scale - _loc3_) * param2;
      }
      
      protected function §>!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%!2§ != 0)
         {
            if(!this.§7!$§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §?8§;
            this.§ !c§(_loc3_,param2);
            this.§>!R§ = this.§7G§.x;
            this.§,!4§ = this.§7G§.y;
            §%#§ = this.§7G§.scale;
         }
      }
      
      public function §]!&§(param1:Number, param2:Number) : void
      {
         var _loc5_:§5&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Boolean = false;
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §?8§)
         {
            this.§7!$§ = true;
         }
         if(this.mCurrentAction == § !6§)
         {
            if(!this.§<&§.activeObject)
            {
               this.§8!T§(§>%§);
               this.§;Y§ = §;[§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§<&§.activeObject).§1!E§().GetPosition().x + (!!_loc5_.§-!B§ ? _loc5_.§-!B§ * §^A§.§<U§ : 0);
               _loc7_ = _loc5_.§1!E§().GetPosition().y + (!!_loc5_.§`!c§ ? _loc5_.§`!c§ * §^A§.§<U§ : 0);
               if((_loc8_ = _loc5_.§1!E§().GetLinearVelocity().x) > 0 && this.§%!2§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§%!2§ * §?8§;
               }
               if(param1 >= §?8§)
               {
                  param1 = §?8§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §?8§;
               this.§ !c§(_loc9_,_loc4_);
               _loc10_ = this.§7G§.x - §2! § * 0.5 / this.§7G§.scale;
               _loc11_ = this.§7G§.y - §8!P§ * 0.5 / this.§7G§.scale;
               _loc12_ = this.§7G§.x + §2! § * 0.5 / this.§7G§.scale;
               _loc13_ = this.§7G§.y + §8!P§ * 0.5 / this.§7G§.scale;
               _loc14_ = 150 * §^A§.§<U§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§=$§,_loc15_);
               _loc17_ = Math.min(this.§,u§,_loc17_);
               _loc19_ = Math.abs(§2! § / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§8!P§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§7G§.scale)
               {
                  _loc21_ = this.§7G§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §2! § * 0.5 / _loc21_ > this.§,u§)
               {
                  _loc15_ = (_loc17_ = this.§,u§) - §2! § / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§=$§)
                  {
                     _loc15_ = this.§=$§;
                  }
               }
               if(_loc22_ - §2! § * 0.5 / _loc21_ < this.§=$§)
               {
                  _loc17_ = (_loc15_ = this.§=$§) + §2! § / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§,u§)
                  {
                     _loc17_ = this.§,u§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§2! § / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §2! § * 0.5 / _loc21_ < this.§>b§)
               {
                  _loc23_ = this.§>b§ + §2! § * 0.5 / _loc21_;
               }
               this.§>!R§ -= (this.§>!R§ - _loc22_) * _loc4_;
               this.§9-§ -= (this.§9-§ - _loc21_) * _loc4_;
               §%#§ = this.§9-§;
               this.§,!4§ -= (this.§,!4§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§,u§ || _loc6_ <= this.§=$§)
               {
                  this.§7G§.scale = §%#§;
                  this.§7G§.x = this.§>!R§;
                  this.§7G§.y = this.§,!4§;
               }
            }
         }
         else
         {
            this.§>!L§(param1,_loc4_);
         }
      }
      
      public function §&!_§(param1:Number, param2:Number) : void
      {
         this.§!'§ = param1;
         this.§-;§ = param2;
      }
      
      private function §8!Q§(param1:§1o§, param2:§`!U§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §3i§ + (param2.scale - §3i§) * this.§<!I§ * §=!_§.§%b§();
         if(§2! § / param1.scale > this.§,u§ - this.§=$§)
         {
            _loc3_ = §2! § / (this.§,u§ - this.§=$§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §+!X§(param1:§1o§, param2:§`!U§) : Boolean
      {
         var _loc3_:Boolean = this.§8!Q§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §8!P§ * 0.5 / param1.scale;
         var _loc5_:Number = §8!P§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §2! § * 0.5 / param1.scale) < this.§=$§ && param1.§3T§)
         {
            param1.x += this.§=$§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §2! § * 0.5 / param1.scale) > this.§,u§ && !param1.§3T§)
         {
            param1.x += this.§,u§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §,,§(param1:§1o§, param2:§`!U§) : Number
      {
         return (param1.scale - §3i§) / (§=!_§.§%b§() * (param2.scale - §3i§));
      }
      
      protected function §]!V§() : void
      {
         this.§+!X§(this.§2@§,this.§ "§);
         var _loc1_:Number = this.§,,§(this.§2@§,this.§ "§);
         this.§+!X§(this.§@g§,this.§,!S§);
         var _loc2_:Number = this.§,,§(this.§@g§,this.§,!S§);
         this.§<!I§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §67§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§<&§.sprite)
         {
            _loc1_ = §@@§.§-t§() / §@@§.§0!D§ - §@@§.§9!8§ >> 1;
            §0!5§ = this.§<&§.sprite.x = §^A§.§+2§ * ((1 - §=!_§.§"b§) / 2);
            §0Q§ = this.§<&§.sprite.y = _loc1_ + §^A§.§!T§ * (1 - §=!_§.§"b§) * §[!9§.§-w§;
         }
      }
      
      public function §=2§() : void
      {
         if(this.§<&§.sprite)
         {
            this.§<&§.sprite.scaleX = §"b§;
            this.§<&§.sprite.scaleY = §"b§;
         }
      }
      
      public function §2m§() : void
      {
         var _loc1_:Number = this.§>!R§ / §^A§.§<U§ + this.§!'§;
         var _loc2_:Number = this.§,!4§ / §^A§.§<U§ + this.§-;§;
         this.§'!;§ = _loc1_ - §^A§.§+2§ / 2 * §@@§.§0!D§ / §@@§.§4!#§;
         this.§!!&§ = _loc2_ - §^A§.§!T§ / 2 + §[!9§.§'!B§;
         if(this.§<&§.background)
         {
            this.§<&§.background.§6!<§(this.§'!;§,this.§!!&§);
         }
         if(this.§<&§.objects)
         {
            this.§<&§.objects.§6!<§(this.§'!;§,this.§!!&§);
         }
         if(this.§<&§.mLevelEngine)
         {
            this.§<&§.mLevelEngine.§6!<§(this.§'!;§,this.§!!&§,§"b§);
         }
         if(this.§<&§.slingshot)
         {
            this.§<&§.slingshot.§6!<§(this.§'!;§,this.§!!&§);
         }
         if(this.§<&§.particles)
         {
            this.§<&§.particles.§6!<§(this.§'!;§,this.§!!&§);
         }
      }
      
      protected function §+X§() : void
      {
         this.§8!T§(§>§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§;Y§ = -1;
         this.§+X§();
         this.§<_§ = this.§;L§ = this.§^R§ = param1;
         this.§,<§ = this.§`!A§ = this.§9!?§ = param2;
         this.§4e§ = 0;
         this.§7G§.x = this.§>!R§;
         this.§7G§.y = this.§,!4§;
         this.§7G§.scale = §%#§;
         this.§9-§ = §%#§;
         if(Math.abs(this.§@g§.x - this.§2@§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§>!R§ - this.§2@§.x) / (this.§@g§.x - this.§2@§.x) * §?8§;
         }
         this.mDragging = true;
      }
      
      public function §29§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§4e§ += param1;
         var _loc3_:Number = this.§<_§ - this.§;L§;
         if(this.§%!2§ > 0)
         {
            _loc2_ -= _loc3_ * §^A§.§<U§ / §"b§ / this.§%!2§ * §?8§;
            this.§7!$§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§7!$§ = true;
            }
            if(_loc2_ > §?8§)
            {
               _loc2_ += (§?8§ - _loc2_) * 0.3;
               this.§7!$§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§;L§ = this.§<_§;
      }
      
      protected function §[f§() : Boolean
      {
         return this.mCurrentAction == §>§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§<_§ = param1;
            this.§,<§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §>§)
         {
            this.§8!T§(§,!b§);
            if(param1 > 0)
            {
               this.§<_§ = param1;
            }
            _loc3_ = Math.abs(this.§<_§ - this.§^R§);
            if(this.§4e§ < §=!`§ && _loc3_ >= §8! § && _loc3_ >= §+[§ * this.§4e§ / 1000)
            {
               if(this.§<_§ < this.§^R§)
               {
                  this.§8!T§(§>%§);
               }
               else
               {
                  this.§8!T§(§^9§);
               }
               this.§&!#§ = _loc3_ / this.§4e§ * 10;
               this.§7!$§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§7!$§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §?8§)
               {
                  this.§7!$§ = true;
               }
            }
            else if(this.§4e§ < §=1§)
            {
               this.§,!&§();
               this.§&!#§ = §?8§ / (§?8§ / 500);
               this.§7!$§ = true;
            }
            else
            {
               this.§29§(0);
               this.§"S§(0);
               this.§&!#§ = §?8§ / (§?8§ / 500);
               this.§7!$§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §,!&§() : void
      {
         if(this.mCurrentAction == §>%§)
         {
            this.§8!T§(§^9§);
         }
         else if(this.mCurrentAction == §^9§)
         {
            this.§8!T§(§>%§);
         }
         else if(this.mCurrentCameraSliderLocation >= §?8§ / 2)
         {
            this.§8!T§(§^9§);
         }
         else if(this.mCurrentCameraSliderLocation <= §?8§ / 2)
         {
            this.§8!T§(§>%§);
         }
      }
      
      public function §"S§(param1:int) : void
      {
         this.§;Y§ = param1;
         if(this.mCurrentCameraSliderLocation < §?8§ / 2)
         {
            this.§8!T§(§^9§);
         }
         else
         {
            this.§8!T§(§>%§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§8!T§(§^9§);
      }
      
      public function goToCastleView() : void
      {
         this.§8!T§(§>%§);
      }
      
      public function §8!T§(param1:int) : void
      {
         this.§7G§.x = this.§>!R§;
         this.§7G§.y = this.§,!4§;
         this.§7G§.scale = §%#§;
         this.§9-§ = §%#§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §?8§)
         {
            return true;
         }
         if(this.mCurrentAction == §>%§)
         {
            return true;
         }
         return false;
      }
      
      public function §4-§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §^9§)
         {
            return true;
         }
         return false;
      }
      
      public function §[p§(param1:§]6§) : void
      {
         this.§;!b§ = param1;
         if(this.§;!b§ != null)
         {
            this.§#C§ = new §]6§();
            this.§#C§.x = this.§>!R§;
            this.§#C§.y = this.§,!4§;
            this.§#C§.scale = §%#§;
         }
         else
         {
            this.§>!R§ = this.§#C§.x;
            this.§,!4§ = this.§#C§.y;
            §%#§ = this.§#C§.scale;
            this.§#C§ = null;
         }
      }
      
      protected function §[F§() : void
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
         var _loc3_:Number = this.§<!I§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§>B§,Math.min(this.§ if§,_loc3_));
         if(_loc3_ != this.§<!I§)
         {
            this.§<!I§ = _loc3_;
            this.§[F§();
         }
      }
      
      public function §`f§() : Number
      {
         return (this.manualScale - this.§>B§) / (this.§ if§ - this.§>B§);
      }
      
      public function §+u§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§ if§ - this.§>B§) + this.§>B§;
      }
      
      public function §!y§() : void
      {
         this.§<!I§ = Math.max(this.§<!I§ - 0.5,0.5);
      }
      
      public function §"!=§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§<!I§;
         _loc1_ += " mXcenterB2: " + this.§>!R§;
         _loc1_ += " mYcenterB2: " + this.§,!4§;
         _loc1_ += " mXcenterB2target: " + this.§<!I§;
         _loc1_ += "\n mYcenterB2target: " + this.§<!I§;
         _loc1_ += " mXcenterB2previous: " + this.§<!I§;
         _loc1_ += " mYcenterB2previous: " + this.§<!I§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§<!I§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§<!I§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§<!I§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§<!I§;
         _loc1_ += " mTargetScale: " + this.§<!I§;
         _loc1_ += " mTargetScalePrevious: " + this.§<!I§;
         _loc1_ += " mCastleCameraX: " + this.§<!I§;
         _loc1_ += "\n mCastleCameraY: " + this.§<!I§;
         _loc1_ += " mCastleCameraScale: " + this.§<!I§;
         _loc1_ += " mBirdCameraX: " + this.§<!I§;
         _loc1_ += " mBirdCameraY: " + this.§<!I§;
         _loc1_ += " mBirdCameraScale: " + this.§<!I§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§<!I§;
         _loc1_ += " mScreenTopScroll: " + this.§<!I§;
         _loc1_ += " mDragging: " + this.§<!I§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§<!I§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§<!I§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§<!I§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§<!I§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§<!I§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§<!I§;
         _loc1_ += " mDraggingTimer: " + this.§<!I§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§<!I§;
         _loc1_ += " mCameraBorderRight: " + this.§<!I§;
         _loc1_ += " mCameraBorderSky: " + this.§<!I§;
         _loc1_ += " mCameraBorderGround: " + this.§<!I§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§<!I§ + "\n ");
      }
   }
}
