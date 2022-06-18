package § `§
{
   import §+!%§.§'!"§;
   import §+!%§.§'p§;
   import §-l§.§?'§;
   import §2x§.§'!@§;
   import §<!@§.§+!-§;
   import §<!@§.§@T§;
   import §<[§.§>!4§;
   
   public class §3F§
   {
      
      public static const §%X§:Number = 1.25;
      
      public static const §1!B§:Number = 0.15;
      
      public static const §6d§:Number = §?'§.§?t§ * §'!"§.§%!8§;
      
      public static const §]@§:Number = §?'§.§,!,§ * §'!"§.§%!8§;
      
      public static const §=6§:Number = 0.1;
      
      public static const §?F§:int = 1500;
      
      public static const §@>§:int = 10;
      
      public static const §?e§:int = 15;
      
      public static const §+_§:int = 300;
      
      public static const §%$§:int = 1000;
      
      public static const §-O§:int = 10000;
      
      public static const §<?§:int = §-O§ / 50;
      
      public static const §&k§:int = 0;
      
      public static const §[!"§:int = 1;
      
      public static const §,'§:int = 2;
      
      public static const §8`§:int = 3;
      
      public static const §5j§:int = 4;
      
      public static const § else§:int = 5;
      
      public static const §]z§:String = "CASTLE";
      
      public static const §-k§:String = "SLINGSHOT";
      
      protected static var §"!H§:Number;
      
      public static var §[E§:Number;
      
      public static var §`F§:Number;
      
      public static const §4s§:Number = 2000;
       
      
      private var §5!&§:Number = 1.0;
      
      private var §7!3§:Number = 0.2;
      
      protected var §;Z§:Number;
      
      protected var §%l§:Number;
      
      protected var §^k§:Number;
      
      public var §]U§:§'!"§;
      
      public var §#J§:Number;
      
      public var § !-§:Number;
      
      private var §5=§:§`s§;
      
      private var §!!B§:§`s§;
      
      public var §3A§:Number;
      
      public var §&X§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §3!'§:Number;
      
      public var §<v§:Number;
      
      public var §,d§:Number;
      
      public var § v§:Number;
      
      private var §1!;§:Number;
      
      private var §]i§:§,! §;
      
      private var §5O§:§,! §;
      
      protected var §9r§:Number = 0;
      
      protected var §=!3§:Number = 0;
      
      protected var § !B§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §<!>§:Number = 0;
      
      public var §]c§:Boolean = true;
      
      public var §'A§:Number = 0;
      
      public var §,X§:Number = 0;
      
      public var §@&§:Number = 0;
      
      public var §';§:Number = 0;
      
      public var §@^§:Number = 0;
      
      public var §8d§:Number = 0;
      
      public var §+W§:Number = 0;
      
      public var §#`§:Number = 0;
      
      public var §^`§:Number = 0;
      
      private var §8e§:§,! §;
      
      public var §#!F§:Number = 0;
      
      private var §7f§:Number = 0;
      
      private var §7J§:Number = 0;
      
      private var §;!6§:§@T§ = null;
      
      private var §-#§:§@T§ = null;
      
      public function §3F§(param1:§'!"§, param2:§+!-§, param3:Number = 1.0)
      {
         this.§8e§ = new §,! §(0,0,1,false);
         super();
         this.§%l§ = 0;
         this.§^k§ = 0;
         this.§]U§ = param1;
         §3F§.§"!H§ = 1;
         this.§5!&§ = Math.max(1,Math.min(2,param3));
         this.§;Z§ = this.§5!&§;
         this.§4W§(param2);
         if(this.§5=§ && this.§!!B§)
         {
            this.§9!B§();
            this.§9r§ = this.§5=§.x - this.§!!B§.x;
            this.§=!3§ = this.§5=§.y - this.§!!B§.y;
            this.§ !B§ = this.§5=§.scale - this.§!!B§.scale;
            this.§%l§ = this.§5=§.x;
            this.§^k§ = this.§5=§.y;
            §"!H§ = this.§5=§.scale * this.§;Z§;
         }
         this.mCurrentCameraSliderLocation = §-O§;
         this.§]c§ = true;
         this.§<!>§ = §-O§ / 500;
      }
      
      private static function §!!5§() : Number
      {
         var _loc1_:Number = §?'§.§]!§ / §?'§.§&!0§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §'f§() : Number
      {
         return §"!H§ * §!!5§();
      }
      
      public function get §;u§() : Number
      {
         return this.§;Z§;
      }
      
      public function set §;u§(param1:Number) : void
      {
         this.§;Z§ = param1;
      }
      
      public function get §,r§() : Number
      {
         return this.§1!;§;
      }
      
      public function §4Y§() : Number
      {
         return §6d§ / (this.§<v§ - this.§3!'§);
      }
      
      public function get §8y§() : Number
      {
         return this.§5!&§;
      }
      
      public function get §6L§() : Number
      {
         return this.§7!3§;
      }
      
      public function §%N§(param1:Number) : void
      {
         this.§;Z§ = param1;
         this.§99§();
         this.§?!&§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == § else§)
         {
            return;
         }
         this.goToCastleView();
         this.§'A§ = 2000;
         this.§4^§();
         this.§!G§();
         this.§0J§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§%l§ = this.§!!B§.x;
         this.§^k§ = this.§!!B§.y;
         this.§]c§ = false;
         this.§<!>§ = §-O§ / 160000 * param1;
         this.§!!$§(§ else§);
      }
      
      public function §9!B§() : void
      {
         this.§3!'§ = this.§!!B§.x - §6d§ / this.§!!B§.scale / 2;
         this.§<v§ = this.§5=§.x + §6d§ / this.§5=§.scale / 2;
         this.§,d§ = this.§]U§.§6s§.§'>§ - 20 * §'!"§.§ !0§ * §'!"§.§%!8§;
         this.§ v§ = this.§]U§.§6s§.§'>§ + 4;
         var _loc1_:Number = §6d§ / (this.§<v§ - this.§3!'§);
         this.§1!;§ = this.§ v§ - §]@§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]U§ = null;
      }
      
      public function §4W§(param1:§+!-§) : void
      {
         var _loc3_:§@T§ = null;
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
         while(_loc2_ < param1.§8M§)
         {
            _loc3_ = param1.§]5§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§<!E§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §]@§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §6d§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §-k§)
            {
               this.§!!B§ = new §`s§(_loc9_,_loc10_,_loc13_,true);
               this.§5O§ = new §,! §(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §]z§)
            {
               this.§5=§ = new §`s§(_loc9_,_loc10_,_loc13_,false);
               this.§]i§ = new §,! §(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §'!@§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §'E§(param1:§+!-§) : void
      {
         var _loc2_:§@T§ = new §@T§();
         _loc2_.id = §-k§;
         _loc2_.x = this.§!!B§.x;
         _loc2_.y = this.§!!B§.y;
         var _loc3_:Number = §6d§ / this.§!!B§.scale / 2;
         var _loc4_:Number = §]@§ / this.§!!B§.scale / 2;
         _loc2_.left = this.§!!B§.x - _loc3_;
         _loc2_.right = this.§!!B§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§@T§;
         (_loc5_ = new §@T§()).id = §]z§;
         _loc5_.x = this.§5=§.x;
         _loc5_.y = this.§5=§.y;
         var _loc6_:Number = §6d§ / this.§5=§.scale / 2;
         var _loc7_:Number = §]@§ / this.§5=§.scale / 2;
         _loc5_.left = this.§5=§.x - _loc6_;
         _loc5_.right = this.§5=§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§"j§();
         param1.§7$§(_loc2_);
         param1.§7$§(_loc5_);
      }
      
      public function §<!E§(param1:§@T§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §?'§.§?t§ * 0.5 / _loc2_ * §'!"§.§%!8§;
         var _loc4_:Number = param1.y - §?'§.§,!,§ * 0.5 / _loc2_ * §'!"§.§%!8§;
         var _loc5_:Number = _loc3_ + §?'§.§?t§ / _loc2_ * §'!"§.§%!8§;
         var _loc6_:Number = _loc4_ + §?'§.§,!,§ / _loc2_ * §'!"§.§%!8§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §9!8§(param1:§`s§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§<!>§;
         if(_loc3_ >= §-O§)
         {
            _loc3_ = §-O§;
            this.§!!$§(§&k§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§!!$§(§&k§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §5m§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§<!>§;
         var _loc4_:Number = -§-O§ * 0.7;
         if(_loc2_ >= §-O§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §-O§;
            }
            this.§<!>§ = -this.§<!>§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]s§(param1:Number) : void
      {
         if(this.mCurrentAction == § else§)
         {
            this.§5m§(param1);
         }
         else if(this.mCurrentAction == §[!"§)
         {
            this.§9!8§(this.§5=§,param1);
         }
         else if(this.mCurrentAction == §,'§)
         {
            this.§9!8§(this.§!!B§,-param1);
         }
         else if(this.mCurrentAction == §8`§)
         {
            this.§]c§ = true;
         }
         else if(this.mCurrentAction == §5j§)
         {
            this.§[X§(param1);
         }
      }
      
      public function §6J§(param1:Number) : void
      {
         if(this.§;!6§)
         {
            this.§%l§ = this.§;!6§.x;
            this.§^k§ = this.§;!6§.y;
            §"!H§ = §6d§ / (this.§;!6§.right - this.§;!6§.left);
         }
         else
         {
            this.§99§();
            this.§]s§(param1);
            this.§6!,§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§4^§();
         this.§!G§();
         this.§0J§();
      }
      
      private function §`t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5O§.scale + (this.§]i§.scale - this.§5O§.scale) * param1;
         var _loc4_:Number = this.§5O§.x + (this.§]i§.x - this.§5O§.x) * param1;
         var _loc5_:Number = this.§5O§.y + (this.§]i§.y - this.§5O§.y) * param1;
         this.§8e§.x -= (this.§8e§.x - _loc4_) * param2;
         this.§8e§.y -= (this.§8e§.y - _loc5_) * param2;
         this.§8e§.scale -= (this.§8e§.scale - _loc3_) * param2;
      }
      
      protected function §?!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§9r§ != 0)
         {
            if(!this.§]c§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §-O§;
            this.§`t§(_loc3_,param2);
            this.§%l§ = this.§8e§.x;
            this.§^k§ = this.§8e§.y;
            §"!H§ = this.§8e§.scale;
         }
      }
      
      public function §6!,§(param1:Number, param2:Number) : void
      {
         var _loc5_:§>!4§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §-O§)
         {
            this.§]c§ = true;
         }
         if(this.mCurrentAction == §8`§)
         {
            if(!this.§]U§.activeObject)
            {
               this.§!!$§(§[!"§);
               this.§^`§ = §%$§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]U§.activeObject).§27§().GetPosition().x + (!!_loc5_.§0!2§ ? _loc5_.§0!2§ * §'!"§.§%!8§ : 0);
               _loc7_ = _loc5_.§27§().GetPosition().y + (!!_loc5_.§&E§ ? _loc5_.§&E§ * §'!"§.§%!8§ : 0);
               if((_loc8_ = _loc5_.§27§().GetLinearVelocity().x) > 0 && this.§9r§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§9r§ * §-O§;
               }
               if(param1 >= §-O§)
               {
                  param1 = §-O§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §-O§;
               this.§`t§(_loc9_,_loc4_);
               _loc10_ = this.§8e§.x - §6d§ * 0.5 / this.§8e§.scale;
               _loc11_ = this.§8e§.y - §]@§ * 0.5 / this.§8e§.scale;
               _loc12_ = this.§8e§.x + §6d§ * 0.5 / this.§8e§.scale;
               _loc13_ = this.§8e§.y + §]@§ * 0.5 / this.§8e§.scale;
               _loc14_ = 150 * §'!"§.§%!8§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§3!'§,_loc15_);
               _loc17_ = Math.min(this.§<v§,_loc17_);
               _loc19_ = Math.abs(§6d§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§]@§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§8e§.scale)
               {
                  _loc21_ = this.§8e§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §6d§ * 0.5 / _loc21_ > this.§<v§)
               {
                  _loc15_ = (_loc17_ = this.§<v§) - §6d§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§3!'§)
                  {
                     _loc15_ = this.§3!'§;
                  }
               }
               if(_loc22_ - §6d§ * 0.5 / _loc21_ < this.§3!'§)
               {
                  _loc17_ = (_loc15_ = this.§3!'§) + §6d§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§<v§)
                  {
                     _loc17_ = this.§<v§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§6d§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §6d§ * 0.5 / _loc21_ < this.§,d§)
               {
                  _loc23_ = this.§,d§ + §6d§ * 0.5 / _loc21_;
               }
               this.§%l§ -= (this.§%l§ - _loc22_) * _loc4_;
               this.§#!F§ -= (this.§#!F§ - _loc21_) * _loc4_;
               §"!H§ = this.§#!F§;
               this.§^k§ -= (this.§^k§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§<v§ || _loc6_ <= this.§3!'§)
               {
                  this.§8e§.scale = §"!H§;
                  this.§8e§.x = this.§%l§;
                  this.§8e§.y = this.§^k§;
               }
            }
         }
         else
         {
            this.§?!&§(param1,_loc4_);
         }
      }
      
      public function §0!G§(param1:Number, param2:Number) : void
      {
         this.§7f§ = param1;
         this.§7J§ = param2;
      }
      
      private function §!!-§(param1:§,! §, param2:§`s§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §1!B§ + (param2.scale - §1!B§) * this.§;Z§ * §3F§.§!!5§();
         if(§6d§ / param1.scale > this.§<v§ - this.§3!'§)
         {
            _loc3_ = §6d§ / (this.§<v§ - this.§3!'§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §[7§(param1:§,! §, param2:§`s§) : Boolean
      {
         var _loc3_:Boolean = this.§!!-§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §]@§ * 0.5 / param1.scale;
         var _loc5_:Number = §]@§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §6d§ * 0.5 / param1.scale) < this.§3!'§ && param1.§%!,§)
         {
            param1.x += this.§3!'§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §6d§ * 0.5 / param1.scale) > this.§<v§ && !param1.§%!,§)
         {
            param1.x += this.§<v§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §]a§(param1:§,! §, param2:§`s§) : Number
      {
         return (param1.scale - §1!B§) / (§3F§.§!!5§() * (param2.scale - §1!B§));
      }
      
      protected function §99§() : void
      {
         this.§[7§(this.§5O§,this.§!!B§);
         var _loc1_:Number = this.§]a§(this.§5O§,this.§!!B§);
         this.§[7§(this.§]i§,this.§5=§);
         var _loc2_:Number = this.§]a§(this.§]i§,this.§5=§);
         this.§;Z§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §4^§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]U§.sprite)
         {
            _loc1_ = §?'§.§3h§() / §?'§.§]!§ - §?'§.§,!,§ >> 1;
            §[E§ = this.§]U§.sprite.x = §'!"§.§5a§ * ((1 - §3F§.§'f§) / 2);
            §`F§ = this.§]U§.sprite.y = _loc1_ + §'!"§.§ !0§ * (1 - §3F§.§'f§) * §'p§.§^"§;
         }
      }
      
      public function §0J§() : void
      {
         if(this.§]U§.sprite)
         {
            this.§]U§.sprite.scaleX = §'f§;
            this.§]U§.sprite.scaleY = §'f§;
         }
      }
      
      public function §!G§() : void
      {
         var _loc1_:Number = this.§%l§ / §'!"§.§%!8§ + this.§7f§;
         var _loc2_:Number = this.§^k§ / §'!"§.§%!8§ + this.§7J§;
         this.§3A§ = _loc1_ - §'!"§.§5a§ / 2 * §?'§.§]!§ / §?'§.§+^§;
         this.§&X§ = _loc2_ - §'!"§.§ !0§ / 2 + §'p§.§[F§;
         if(this.§]U§.background)
         {
            this.§]U§.background.§<+§(this.§3A§,this.§&X§);
         }
         if(this.§]U§.objects)
         {
            this.§]U§.objects.§<+§(this.§3A§,this.§&X§);
         }
         if(this.§]U§.§&5§)
         {
            this.§]U§.§&5§.§<+§(this.§3A§,this.§&X§);
         }
         if(this.§]U§.slingshot)
         {
            this.§]U§.slingshot.§<+§(this.§3A§,this.§&X§);
         }
         if(this.§]U§.particles)
         {
            this.§]U§.particles.§<+§(this.§3A§,this.§&X§);
         }
      }
      
      protected function §;!§() : void
      {
         this.§!!$§(§5j§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§^`§ = -1;
         this.§;!§();
         this.§@^§ = this.§+W§ = this.§@&§ = param1;
         this.§8d§ = this.§#`§ = this.§';§ = param2;
         this.§,X§ = 0;
         this.§8e§.x = this.§%l§;
         this.§8e§.y = this.§^k§;
         this.§8e§.scale = §"!H§;
         this.§#!F§ = §"!H§;
         if(Math.abs(this.§]i§.x - this.§5O§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§%l§ - this.§5O§.x) / (this.§]i§.x - this.§5O§.x) * §-O§;
         }
         this.mDragging = true;
      }
      
      public function §[X§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§,X§ += param1;
         var _loc3_:Number = this.§@^§ - this.§+W§;
         if(this.§9r§ > 0)
         {
            _loc2_ -= _loc3_ * §'!"§.§%!8§ / §'f§ / this.§9r§ * §-O§;
            this.§]c§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§]c§ = true;
            }
            if(_loc2_ > §-O§)
            {
               _loc2_ += (§-O§ - _loc2_) * 0.3;
               this.§]c§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§+W§ = this.§@^§;
      }
      
      protected function §%T§() : Boolean
      {
         return this.mCurrentAction == §5j§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§@^§ = param1;
            this.§8d§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §5j§)
         {
            this.§!!$§(§&k§);
            if(param1 > 0)
            {
               this.§@^§ = param1;
            }
            _loc3_ = Math.abs(this.§@^§ - this.§@&§);
            if(this.§,X§ < §?F§ && _loc3_ >= §@>§ && _loc3_ >= §?e§ * this.§,X§ / 1000)
            {
               if(this.§@^§ < this.§@&§)
               {
                  this.§!!$§(§[!"§);
               }
               else
               {
                  this.§!!$§(§,'§);
               }
               this.§<!>§ = _loc3_ / this.§,X§ * 10;
               this.§]c§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§]c§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §-O§)
               {
                  this.§]c§ = true;
               }
            }
            else if(this.§,X§ < §+_§)
            {
               this.§4z§();
               this.§<!>§ = §-O§ / (§-O§ / 500);
               this.§]c§ = true;
            }
            else
            {
               this.§[X§(0);
               this.§^g§(0);
               this.§<!>§ = §-O§ / (§-O§ / 500);
               this.§]c§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §4z§() : void
      {
         if(this.mCurrentAction == §[!"§)
         {
            this.§!!$§(§,'§);
         }
         else if(this.mCurrentAction == §,'§)
         {
            this.§!!$§(§[!"§);
         }
         else if(this.mCurrentCameraSliderLocation >= §-O§ / 2)
         {
            this.§!!$§(§,'§);
         }
         else if(this.mCurrentCameraSliderLocation <= §-O§ / 2)
         {
            this.§!!$§(§[!"§);
         }
      }
      
      public function §^g§(param1:int) : void
      {
         this.§^`§ = param1;
         if(this.mCurrentCameraSliderLocation < §-O§ / 2)
         {
            this.§!!$§(§,'§);
         }
         else
         {
            this.§!!$§(§[!"§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§!!$§(§,'§);
      }
      
      public function goToCastleView() : void
      {
         this.§!!$§(§[!"§);
      }
      
      public function §!!$§(param1:int) : void
      {
         this.§8e§.x = this.§%l§;
         this.§8e§.y = this.§^k§;
         this.§8e§.scale = §"!H§;
         this.§#!F§ = §"!H§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §-O§)
         {
            return true;
         }
         if(this.mCurrentAction == §[!"§)
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
         if(this.mCurrentAction == §,'§)
         {
            return true;
         }
         return false;
      }
      
      public function §-y§(param1:§@T§) : void
      {
         this.§;!6§ = param1;
         if(this.§;!6§ != null)
         {
            this.§-#§ = new §@T§();
            this.§-#§.x = this.§%l§;
            this.§-#§.y = this.§^k§;
            this.§-#§.scale = §"!H§;
         }
         else
         {
            this.§%l§ = this.§-#§.x;
            this.§^k§ = this.§-#§.y;
            §"!H§ = this.§-#§.scale;
            this.§-#§ = null;
         }
      }
      
      protected function §2Y§() : void
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
         var _loc3_:Number = this.§;Z§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§6L§,Math.min(this.§8y§,_loc3_));
         if(_loc3_ != this.§;Z§)
         {
            this.§;Z§ = _loc3_;
            this.§2Y§();
         }
      }
      
      public function §5Q§() : Number
      {
         return (this.§;u§ - this.§6L§) / (this.§8y§ - this.§6L§);
      }
      
      public function § n§(param1:Number) : void
      {
         this.§;u§ = Math.min(Math.max(param1,0),1) * (this.§8y§ - this.§6L§) + this.§6L§;
      }
      
      public function §%A§() : void
      {
         this.§;Z§ = Math.max(this.§;Z§ - 0.5,0.5);
      }
      
      public function §;!C§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§;Z§;
         _loc1_ += " mXcenterB2: " + this.§%l§;
         _loc1_ += " mYcenterB2: " + this.§^k§;
         _loc1_ += " mXcenterB2target: " + this.§;Z§;
         _loc1_ += "\n mYcenterB2target: " + this.§;Z§;
         _loc1_ += " mXcenterB2previous: " + this.§;Z§;
         _loc1_ += " mYcenterB2previous: " + this.§;Z§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§;Z§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§;Z§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§;Z§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§;Z§;
         _loc1_ += " mTargetScale: " + this.§;Z§;
         _loc1_ += " mTargetScalePrevious: " + this.§;Z§;
         _loc1_ += " mCastleCameraX: " + this.§;Z§;
         _loc1_ += "\n mCastleCameraY: " + this.§;Z§;
         _loc1_ += " mCastleCameraScale: " + this.§;Z§;
         _loc1_ += " mBirdCameraX: " + this.§;Z§;
         _loc1_ += " mBirdCameraY: " + this.§;Z§;
         _loc1_ += " mBirdCameraScale: " + this.§;Z§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§;Z§;
         _loc1_ += " mScreenTopScroll: " + this.§;Z§;
         _loc1_ += " mDragging: " + this.§;Z§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§;Z§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§;Z§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§;Z§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§;Z§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§;Z§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§;Z§;
         _loc1_ += " mDraggingTimer: " + this.§;Z§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§;Z§;
         _loc1_ += " mCameraBorderRight: " + this.§;Z§;
         _loc1_ += " mCameraBorderSky: " + this.§;Z§;
         _loc1_ += " mCameraBorderGround: " + this.§;Z§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§;Z§ + "\n ");
      }
   }
}
