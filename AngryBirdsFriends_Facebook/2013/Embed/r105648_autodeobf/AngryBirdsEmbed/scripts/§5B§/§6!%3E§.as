package §5B§
{
   import §#]§.§'5§;
   import §4n§.§@!4§;
   import §;'§.§+U§;
   import §;'§.§?!D§;
   import §<!M§.§#"§;
   import §<!M§.§1!&§;
   import §?!8§.§2>§;
   
   public class §6!>§
   {
      
      public static const §=!2§:Number = 1.25;
      
      public static const §<"§:Number = 0.15;
      
      public static const §72§:Number = §'5§.§@!0§ * §?!D§.§@!I§;
      
      public static const §8D§:Number = §'5§.§2!M§ * §?!D§.§@!I§;
      
      public static const §>V§:Number = 0.1;
      
      public static const §^U§:int = 1500;
      
      public static const § !,§:int = 10;
      
      public static const §5+§:int = 15;
      
      public static const §]0§:int = 300;
      
      public static const §"!I§:int = 1000;
      
      public static const §>7§:int = 10000;
      
      public static const §!-§:int = §>7§ / 50;
      
      public static const §4!1§:int = 0;
      
      public static const §^l§:int = 1;
      
      public static const §]1§:int = 2;
      
      public static const §[!1§:int = 3;
      
      public static const §#!@§:int = 4;
      
      public static const §@'§:int = 5;
      
      public static const §<!>§:String = "CASTLE";
      
      public static const §;! §:String = "SLINGSHOT";
      
      protected static var §+!%§:Number;
      
      public static var §`o§:Number;
      
      public static var §`-§:Number;
      
      public static const §'!J§:Number = 2000;
       
      
      private var §9a§:Number = 1.0;
      
      private var §7!4§:Number = 0.2;
      
      protected var §4!7§:Number;
      
      protected var §?N§:Number;
      
      protected var §;!6§:Number;
      
      public var §2I§:§?!D§;
      
      public var §<!5§:Number;
      
      public var §3t§:Number;
      
      protected var §=!I§:§5?§;
      
      protected var §3!K§:§5?§;
      
      public var §[G§:Number;
      
      public var §,%§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §4]§:Number;
      
      public var §,<§:Number;
      
      public var §5!G§:Number;
      
      public var §,z§:Number;
      
      private var §![§:Number;
      
      private var §3!@§:§6!6§;
      
      private var §%V§:§6!6§;
      
      protected var §4m§:Number = 0;
      
      protected var §4%§:Number = 0;
      
      protected var §5]§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §?w§:Number = 0;
      
      public var §[a§:Boolean = true;
      
      public var §2!?§:Number = 0;
      
      public var §6!A§:Number = 0;
      
      public var §5!=§:Number = 0;
      
      public var §-!6§:Number = 0;
      
      public var §]!F§:Number = 0;
      
      public var §?&§:Number = 0;
      
      public var §`?§:Number = 0;
      
      public var §`!0§:Number = 0;
      
      public var §7!D§:Number = 0;
      
      private var §+"§:§6!6§;
      
      public var §&r§:Number = 0;
      
      private var §2z§:Number = 0;
      
      private var §,Y§:Number = 0;
      
      private var §3U§:§#"§ = null;
      
      private var §`!"§:§#"§ = null;
      
      public function §6!>§(param1:§?!D§, param2:§1!&§, param3:Number = 1.0)
      {
         this.§+"§ = new §6!6§(0,0,1,false);
         super();
         this.§?N§ = 0;
         this.§;!6§ = 0;
         this.§2I§ = param1;
         §6!>§.§+!%§ = 1;
         this.§9a§ = Math.max(1,Math.min(2,param3));
         this.§4!7§ = this.§9a§;
         this.§!i§(param2);
         if(this.§=!I§ && this.§3!K§)
         {
            this.§,!L§();
            this.§4m§ = this.§=!I§.x - this.§3!K§.x;
            this.§4%§ = this.§=!I§.y - this.§3!K§.y;
            this.§5]§ = this.§=!I§.scale - this.§3!K§.scale;
            this.§?N§ = this.§=!I§.x;
            this.§;!6§ = this.§=!I§.y;
            §+!%§ = this.§=!I§.scale * this.§4!7§;
         }
         this.mCurrentCameraSliderLocation = §>7§;
         this.§[a§ = true;
         this.§?w§ = §>7§ / 500;
      }
      
      private static function §!%§() : Number
      {
         var _loc1_:Number = §'5§.§@!=§ / §'5§.§1G§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §&h§() : Number
      {
         return §+!%§ * §!%§();
      }
      
      public function get §]!G§() : Number
      {
         return this.§4!7§;
      }
      
      public function set §]!G§(param1:Number) : void
      {
         this.§4!7§ = param1;
      }
      
      public function get §<!0§() : Number
      {
         return this.§![§;
      }
      
      public function §+l§() : Number
      {
         return §72§ / (this.§,<§ - this.§4]§);
      }
      
      public function get §[!M§() : Number
      {
         return this.§9a§;
      }
      
      public function get §'v§() : Number
      {
         return this.§7!4§;
      }
      
      public function §use§(param1:Number) : void
      {
         this.§4!7§ = param1;
         this.§0!8§();
         this.§?!&§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@'§)
         {
            return;
         }
         this.goToCastleView();
         this.§2!?§ = 2000;
         this.§]<§();
         this.§"Y§();
         this.§"!B§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§?N§ = this.§3!K§.x;
         this.§;!6§ = this.§3!K§.y;
         this.§[a§ = false;
         this.§?w§ = §>7§ / 160000 * param1;
         this.§`6§(§@'§);
      }
      
      public function §,!L§() : void
      {
         this.§4]§ = this.§3!K§.x - §72§ / this.§3!K§.scale / 2;
         this.§,<§ = this.§=!I§.x + §72§ / this.§=!I§.scale / 2;
         this.§5!G§ = this.§2I§.§-!>§.§-1§ - 20 * §?!D§.§8!D§ * §?!D§.§@!I§;
         this.§,z§ = this.§2I§.§-!>§.§-1§ + 4;
         var _loc1_:Number = §72§ / (this.§,<§ - this.§4]§);
         this.§![§ = this.§,z§ - §8D§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§2I§ = null;
      }
      
      public function §!i§(param1:§1!&§) : void
      {
         var _loc3_:§#"§ = null;
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
         while(_loc2_ < param1.§<!8§)
         {
            _loc3_ = param1.§>M§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§%?§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §8D§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §72§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §;! §)
            {
               this.§3!K§ = new §5?§(_loc9_,_loc10_,_loc13_,true);
               this.§%V§ = new §6!6§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §<!>§)
            {
               this.§=!I§ = new §5?§(_loc9_,_loc10_,_loc13_,false);
               this.§3!@§ = new §6!6§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §2>§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §8!A§(param1:§1!&§) : void
      {
         var _loc2_:§#"§ = new §#"§();
         _loc2_.id = §;! §;
         _loc2_.x = this.§3!K§.x;
         _loc2_.y = this.§3!K§.y;
         var _loc3_:Number = §72§ / this.§3!K§.scale / 2;
         var _loc4_:Number = §8D§ / this.§3!K§.scale / 2;
         _loc2_.left = this.§3!K§.x - _loc3_;
         _loc2_.right = this.§3!K§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §8D§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §72§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§#"§;
         (_loc7_ = new §#"§()).id = §<!>§;
         _loc7_.x = this.§=!I§.x;
         _loc7_.y = this.§=!I§.y;
         var _loc8_:Number = §72§ / this.§=!I§.scale / 2;
         var _loc9_:Number = §8D§ / this.§=!I§.scale / 2;
         _loc7_.left = this.§=!I§.x - _loc8_;
         _loc7_.right = this.§=!I§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §8D§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §72§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§&E§();
         param1.§]%§(_loc2_);
         param1.§]%§(_loc7_);
      }
      
      public function §%?§(param1:§#"§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §'5§.§@!0§ * 0.5 / _loc2_ * §?!D§.§@!I§;
         var _loc4_:Number = param1.y - §'5§.§2!M§ * 0.5 / _loc2_ * §?!D§.§@!I§;
         var _loc5_:Number = _loc3_ + §'5§.§@!0§ / _loc2_ * §?!D§.§@!I§;
         var _loc6_:Number = _loc4_ + §'5§.§2!M§ / _loc2_ * §?!D§.§@!I§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §7p§(param1:§5?§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§?w§;
         if(_loc3_ >= §>7§)
         {
            _loc3_ = §>7§;
            this.§`6§(§4!1§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§`6§(§4!1§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §+k§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§?w§;
         var _loc4_:Number = -§>7§ * 0.7;
         if(_loc2_ >= §>7§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §>7§;
            }
            this.§?w§ = -this.§?w§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §?!=§(param1:Number) : void
      {
         if(this.mCurrentAction == §@'§)
         {
            this.§+k§(param1);
         }
         else if(this.mCurrentAction == §^l§)
         {
            this.§7p§(this.§=!I§,param1);
         }
         else if(this.mCurrentAction == §]1§)
         {
            this.§7p§(this.§3!K§,-param1);
         }
         else if(this.mCurrentAction == §[!1§)
         {
            this.§[a§ = true;
         }
         else if(this.mCurrentAction == §#!@§)
         {
            this.§4q§(param1);
         }
      }
      
      public function §;p§(param1:Number) : void
      {
         if(this.§3U§)
         {
            this.§?N§ = this.§3U§.x;
            this.§;!6§ = this.§3U§.y;
            §+!%§ = §72§ / (this.§3U§.right - this.§3U§.left);
         }
         else
         {
            this.§0!8§();
            this.§?!=§(param1);
            this.§=H§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§]<§();
         this.§"Y§();
         this.§"!B§();
      }
      
      private function §'f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%V§.scale + (this.§3!@§.scale - this.§%V§.scale) * param1;
         var _loc4_:Number = this.§%V§.x + (this.§3!@§.x - this.§%V§.x) * param1;
         var _loc5_:Number = this.§%V§.y + (this.§3!@§.y - this.§%V§.y) * param1;
         this.§+"§.x -= (this.§+"§.x - _loc4_) * param2;
         this.§+"§.y -= (this.§+"§.y - _loc5_) * param2;
         this.§+"§.scale -= (this.§+"§.scale - _loc3_) * param2;
      }
      
      protected function §?!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4m§ != 0)
         {
            if(!this.§[a§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §>7§;
            this.§'f§(_loc3_,param2);
            this.§?N§ = this.§+"§.x;
            this.§;!6§ = this.§+"§.y;
            §+!%§ = this.§+"§.scale;
         }
      }
      
      public function §=H§(param1:Number, param2:Number) : void
      {
         var _loc5_:§@!4§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §>7§)
         {
            this.§[a§ = true;
         }
         if(this.mCurrentAction == §[!1§)
         {
            if(!this.§2I§.activeObject)
            {
               this.§`6§(§^l§);
               this.§7!D§ = §"!I§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§2I§.activeObject).§^C§().GetPosition().x + (!!_loc5_.§[!F§ ? _loc5_.§[!F§ * §?!D§.§@!I§ : 0);
               _loc7_ = _loc5_.§^C§().GetPosition().y + (!!_loc5_.§-!B§ ? _loc5_.§-!B§ * §?!D§.§@!I§ : 0);
               if((_loc8_ = _loc5_.§^C§().GetLinearVelocity().x) > 0 && this.§4m§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§4m§ * §>7§;
               }
               if(param1 >= §>7§)
               {
                  param1 = §>7§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §>7§;
               this.§'f§(_loc9_,_loc4_);
               _loc10_ = this.§+"§.x - §72§ * 0.5 / this.§+"§.scale;
               _loc11_ = this.§+"§.y - §8D§ * 0.5 / this.§+"§.scale;
               _loc12_ = this.§+"§.x + §72§ * 0.5 / this.§+"§.scale;
               _loc13_ = this.§+"§.y + §8D§ * 0.5 / this.§+"§.scale;
               _loc14_ = 150 * §?!D§.§@!I§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§4]§,_loc15_);
               _loc17_ = Math.min(this.§,<§,_loc17_);
               _loc19_ = Math.abs(§72§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§8D§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§+"§.scale)
               {
                  _loc21_ = this.§+"§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §72§ * 0.5 / _loc21_ > this.§,<§)
               {
                  _loc15_ = (_loc17_ = this.§,<§) - §72§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§4]§)
                  {
                     _loc15_ = this.§4]§;
                  }
               }
               if(_loc22_ - §72§ * 0.5 / _loc21_ < this.§4]§)
               {
                  _loc17_ = (_loc15_ = this.§4]§) + §72§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§,<§)
                  {
                     _loc17_ = this.§,<§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§72§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §72§ * 0.5 / _loc21_ < this.§5!G§)
               {
                  _loc23_ = this.§5!G§ + §72§ * 0.5 / _loc21_;
               }
               this.§?N§ -= (this.§?N§ - _loc22_) * _loc4_;
               this.§&r§ -= (this.§&r§ - _loc21_) * _loc4_;
               §+!%§ = this.§&r§;
               this.§;!6§ -= (this.§;!6§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§,<§ || _loc6_ <= this.§4]§)
               {
                  this.§+"§.scale = §+!%§;
                  this.§+"§.x = this.§?N§;
                  this.§+"§.y = this.§;!6§;
               }
            }
         }
         else
         {
            this.§?!&§(param1,_loc4_);
         }
      }
      
      public function §^!-§(param1:Number, param2:Number) : void
      {
         this.§2z§ = param1;
         this.§,Y§ = param2;
      }
      
      private function §#!!§(param1:§6!6§, param2:§5?§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §<"§ + (param2.scale - §<"§) * this.§4!7§ * §6!>§.§!%§();
         if(§72§ / param1.scale > this.§,<§ - this.§4]§)
         {
            _loc3_ = §72§ / (this.§,<§ - this.§4]§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@y§(param1:§6!6§, param2:§5?§) : Boolean
      {
         var _loc3_:Boolean = this.§#!!§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §8D§ * 0.5 / param1.scale;
         var _loc5_:Number = §8D§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §72§ * 0.5 / param1.scale) < this.§4]§ && param1.§@]§)
         {
            param1.x += this.§4]§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §72§ * 0.5 / param1.scale) > this.§,<§ && !param1.§@]§)
         {
            param1.x += this.§,<§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §[!8§(param1:§6!6§, param2:§5?§) : Number
      {
         return (param1.scale - §<"§) / (§6!>§.§!%§() * (param2.scale - §<"§));
      }
      
      protected function §0!8§() : void
      {
         this.§@y§(this.§%V§,this.§3!K§);
         var _loc1_:Number = this.§[!8§(this.§%V§,this.§3!K§);
         this.§@y§(this.§3!@§,this.§=!I§);
         var _loc2_:Number = this.§[!8§(this.§3!@§,this.§=!I§);
         this.§4!7§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §]<§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§2I§.sprite)
         {
            _loc1_ = §'5§.§[b§() / §'5§.§@!=§ - §'5§.§2!M§ >> 1;
            §`o§ = this.§2I§.sprite.x = §?!D§.§?i§ * ((1 - §6!>§.§&h§) / 2);
            §`-§ = this.§2I§.sprite.y = _loc1_ + §?!D§.§8!D§ * (1 - §6!>§.§&h§) * §+U§.§[Q§;
         }
      }
      
      public function §"!B§() : void
      {
         if(this.§2I§.sprite)
         {
            this.§2I§.sprite.scaleX = §&h§;
            this.§2I§.sprite.scaleY = §&h§;
         }
      }
      
      public function §"Y§() : void
      {
         var _loc1_:Number = this.§?N§ / §?!D§.§@!I§ + this.§2z§;
         var _loc2_:Number = this.§;!6§ / §?!D§.§@!I§ + this.§,Y§;
         this.§[G§ = _loc1_ - §?!D§.§?i§ / 2 * §'5§.§@!=§ / §'5§.§"D§;
         this.§,%§ = _loc2_ - §?!D§.§8!D§ / 2 + §+U§.§0! §;
         if(this.§2I§.background)
         {
            this.§2I§.background.§+!>§(this.§[G§,this.§,%§);
         }
         if(this.§2I§.objects)
         {
            this.§2I§.objects.§+!>§(this.§[G§,this.§,%§);
         }
         if(this.§2I§.§#S§)
         {
            this.§%_§();
         }
         if(this.§2I§.slingshot)
         {
            this.§2I§.slingshot.§+!>§(this.§[G§,this.§,%§);
         }
         if(this.§2I§.particles)
         {
            this.§2I§.particles.§+!>§(this.§[G§,this.§,%§);
         }
      }
      
      protected function §%_§() : void
      {
         this.§2I§.§#S§.§+!>§(this.§[G§,this.§,%§,§+!%§);
      }
      
      protected function §extends§() : void
      {
         this.§`6§(§#!@§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7!D§ = -1;
         this.§extends§();
         this.§]!F§ = this.§`?§ = this.§5!=§ = param1;
         this.§?&§ = this.§`!0§ = this.§-!6§ = param2;
         this.§6!A§ = 0;
         this.§+"§.x = this.§?N§;
         this.§+"§.y = this.§;!6§;
         this.§+"§.scale = §+!%§;
         this.§&r§ = §+!%§;
         if(Math.abs(this.§3!@§.x - this.§%V§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§?N§ - this.§%V§.x) / (this.§3!@§.x - this.§%V§.x) * §>7§;
         }
         this.mDragging = true;
      }
      
      public function §4q§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§6!A§ += param1;
         var _loc3_:Number = this.§]!F§ - this.§`?§;
         if(this.§4m§ > 0)
         {
            _loc2_ -= _loc3_ * §?!D§.§@!I§ / §&h§ / this.§4m§ * §>7§;
            this.§[a§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§[a§ = true;
            }
            if(_loc2_ > §>7§)
            {
               _loc2_ += (§>7§ - _loc2_) * 0.3;
               this.§[a§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§`?§ = this.§]!F§;
      }
      
      protected function §&i§() : Boolean
      {
         return this.mCurrentAction == §#!@§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§]!F§ = param1;
            this.§?&§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §#!@§)
         {
            this.§`6§(§4!1§);
            if(param1 > 0)
            {
               this.§]!F§ = param1;
            }
            _loc3_ = Math.abs(this.§]!F§ - this.§5!=§);
            if(this.§6!A§ < §^U§ && _loc3_ >= § !,§ && _loc3_ >= §5+§ * this.§6!A§ / 1000)
            {
               if(this.§]!F§ < this.§5!=§)
               {
                  this.§`6§(§^l§);
               }
               else
               {
                  this.§`6§(§]1§);
               }
               this.§?w§ = _loc3_ / this.§6!A§ * 10;
               this.§[a§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§[a§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §>7§)
               {
                  this.§[a§ = true;
               }
            }
            else if(this.§6!A§ < §]0§)
            {
               this.§!A§();
               this.§?w§ = §>7§ / (§>7§ / 500);
               this.§[a§ = true;
            }
            else
            {
               this.§4q§(0);
               this.§%$§(0);
               this.§?w§ = §>7§ / (§>7§ / 500);
               this.§[a§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §!A§() : void
      {
         if(this.mCurrentAction == §^l§)
         {
            this.§`6§(§]1§);
         }
         else if(this.mCurrentAction == §]1§)
         {
            this.§`6§(§^l§);
         }
         else if(this.mCurrentCameraSliderLocation >= §>7§ / 2)
         {
            this.§`6§(§]1§);
         }
         else if(this.mCurrentCameraSliderLocation <= §>7§ / 2)
         {
            this.§`6§(§^l§);
         }
      }
      
      public function §%$§(param1:int) : void
      {
         this.§7!D§ = param1;
         if(this.mCurrentCameraSliderLocation < §>7§ / 2)
         {
            this.§`6§(§]1§);
         }
         else
         {
            this.§`6§(§^l§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§`6§(§]1§);
      }
      
      public function goToCastleView() : void
      {
         this.§`6§(§^l§);
      }
      
      public function §`6§(param1:int) : void
      {
         this.§+"§.x = this.§?N§;
         this.§+"§.y = this.§;!6§;
         this.§+"§.scale = §+!%§;
         this.§&r§ = §+!%§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §>7§)
         {
            return true;
         }
         if(this.mCurrentAction == §^l§)
         {
            return true;
         }
         return false;
      }
      
      public function § O§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §]1§)
         {
            return true;
         }
         return false;
      }
      
      public function §=!A§(param1:§#"§) : void
      {
         this.§3U§ = param1;
         if(this.§3U§ != null)
         {
            this.§`!"§ = new §#"§();
            this.§`!"§.x = this.§?N§;
            this.§`!"§.y = this.§;!6§;
            this.§`!"§.scale = §+!%§;
         }
         else
         {
            this.§?N§ = this.§`!"§.x;
            this.§;!6§ = this.§`!"§.y;
            §+!%§ = this.§`!"§.scale;
            this.§`!"§ = null;
         }
      }
      
      protected function §"q§() : void
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
         var _loc3_:Number = this.§4!7§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§'v§,Math.min(this.§[!M§,_loc3_));
         if(_loc3_ != this.§4!7§)
         {
            this.§4!7§ = _loc3_;
            this.§"q§();
         }
      }
      
      public function §;!+§() : Number
      {
         return (this.§]!G§ - this.§'v§) / (this.§[!M§ - this.§'v§);
      }
      
      public function §`4§(param1:Number) : void
      {
         this.§]!G§ = Math.min(Math.max(param1,0),1) * (this.§[!M§ - this.§'v§) + this.§'v§;
      }
      
      public function §&!=§() : void
      {
         this.§4!7§ = Math.max(this.§4!7§ - 0.5,0.5);
      }
      
      public function §0t§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§4!7§;
         _loc1_ += " mXcenterB2: " + this.§?N§;
         _loc1_ += " mYcenterB2: " + this.§;!6§;
         _loc1_ += " mXcenterB2target: " + this.§4!7§;
         _loc1_ += "\n mYcenterB2target: " + this.§4!7§;
         _loc1_ += " mXcenterB2previous: " + this.§4!7§;
         _loc1_ += " mYcenterB2previous: " + this.§4!7§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§4!7§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§4!7§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§4!7§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§4!7§;
         _loc1_ += " mTargetScale: " + this.§4!7§;
         _loc1_ += " mTargetScalePrevious: " + this.§4!7§;
         _loc1_ += " mCastleCameraX: " + this.§4!7§;
         _loc1_ += "\n mCastleCameraY: " + this.§4!7§;
         _loc1_ += " mCastleCameraScale: " + this.§4!7§;
         _loc1_ += " mBirdCameraX: " + this.§4!7§;
         _loc1_ += " mBirdCameraY: " + this.§4!7§;
         _loc1_ += " mBirdCameraScale: " + this.§4!7§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§4!7§;
         _loc1_ += " mScreenTopScroll: " + this.§4!7§;
         _loc1_ += " mDragging: " + this.§4!7§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§4!7§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§4!7§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§4!7§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§4!7§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§4!7§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§4!7§;
         _loc1_ += " mDraggingTimer: " + this.§4!7§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§4!7§;
         _loc1_ += " mCameraBorderRight: " + this.§4!7§;
         _loc1_ += " mCameraBorderSky: " + this.§4!7§;
         _loc1_ += " mCameraBorderGround: " + this.§4!7§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§4!7§ + "\n ");
      }
      
      public function §`e§() : Number
      {
         return this.§?N§;
      }
      
      public function §5u§() : Number
      {
         return this.§;!6§;
      }
   }
}
