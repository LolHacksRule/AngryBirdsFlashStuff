package §,!K§
{
   import §&!8§.§[g§;
   import §,§.§ p§;
   import §,§.§?s§;
   import §>^§.§!6§;
   import §`![§.§!!K§;
   import §`![§.§5!b§;
   import §`h§.§@!Z§;
   
   public class §[V§
   {
      
      public static const §7x§:Number = 1.25;
      
      public static const §-!F§:Number = 0.15;
      
      public static const §`"§:Number = §@!Z§.§?!L§ * § p§.§]!E§;
      
      public static const §7!T§:Number = §@!Z§.§"r§ * § p§.§]!E§;
      
      public static const §=<§:Number = 0.1;
      
      public static const § var§:int = 1500;
      
      public static const §5B§:int = 10;
      
      public static const §#!!§:int = 15;
      
      public static const §?c§:int = 300;
      
      public static const §-!R§:int = 1000;
      
      public static const §7b§:int = 10000;
      
      public static const §+!'§:int = §7b§ / 50;
      
      public static const §`!C§:int = 0;
      
      public static const §?!]§:int = 1;
      
      public static const §return§:int = 2;
      
      public static const §"!-§:int = 3;
      
      public static const §=!D§:int = 4;
      
      public static const §8!<§:int = 5;
      
      public static const §6!B§:String = "CASTLE";
      
      public static const §&J§:String = "SLINGSHOT";
      
      protected static var §while§:Number;
      
      public static var §]!^§:Number;
      
      public static var §!!g§:Number;
      
      public static const § !6§:Number = 2000;
       
      
      private var §"7§:Number = 1.0;
      
      private var §4!P§:Number = 0.2;
      
      protected var §7!D§:Number;
      
      protected var §!!0§:Number;
      
      protected var §!#§:Number;
      
      public var §^!I§:§ p§;
      
      public var §]!!§:Number;
      
      public var §`!g§:Number;
      
      protected var §^+§:§9Q§;
      
      protected var §>T§:§9Q§;
      
      public var §44§:Number;
      
      public var §#8§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §`!%§:Number;
      
      public var §4F§:Number;
      
      public var §3x§:Number;
      
      public var §]M§:Number;
      
      private var §@r§:Number;
      
      private var §2!K§:§8!]§;
      
      private var §&!4§:§8!]§;
      
      protected var §,!9§:Number = 0;
      
      protected var §%!1§:Number = 0;
      
      protected var §-K§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §"V§:Number = 0;
      
      public var §[!9§:Boolean = true;
      
      public var §>!F§:Number = 0;
      
      public var §&A§:Number = 0;
      
      public var §<Z§:Number = 0;
      
      public var §4b§:Number = 0;
      
      public var §4!>§:Number = 0;
      
      public var §[M§:Number = 0;
      
      public var §6!Z§:Number = 0;
      
      public var §#T§:Number = 0;
      
      public var §!!H§:Number = 0;
      
      private var §4!g§:§8!]§;
      
      public var §>!"§:Number = 0;
      
      private var §#!%§:Number = 0;
      
      private var § !C§:Number = 0;
      
      private var §`!E§:§5!b§ = null;
      
      private var §8!@§:§5!b§ = null;
      
      public function §[V§(param1:§ p§, param2:§!!K§, param3:Number = 1.0)
      {
         this.§4!g§ = new §8!]§(0,0,1,false);
         super();
         this.§!!0§ = 0;
         this.§!#§ = 0;
         this.§^!I§ = param1;
         §[V§.§while§ = 1;
         this.§"7§ = Math.max(1,Math.min(2,param3));
         this.§7!D§ = this.§"7§;
         this.§0W§(param2);
         if(this.§^+§ && this.§>T§)
         {
            this.§false§();
            this.§,!9§ = this.§^+§.x - this.§>T§.x;
            this.§%!1§ = this.§^+§.y - this.§>T§.y;
            this.§-K§ = this.§^+§.scale - this.§>T§.scale;
            this.§!!0§ = this.§^+§.x;
            this.§!#§ = this.§^+§.y;
            §while§ = this.§^+§.scale * this.§7!D§;
         }
         this.mCurrentCameraSliderLocation = §7b§;
         this.§[!9§ = true;
         this.§"V§ = §7b§ / 500;
      }
      
      private static function §8!"§() : Number
      {
         var _loc1_:Number = §@!Z§.§<X§ / §@!Z§.§5I§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §+!>§() : Number
      {
         return §while§ * §8!"§();
      }
      
      public function get manualScale() : Number
      {
         return this.§7!D§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§7!D§ = param1;
      }
      
      public function get §5!P§() : Number
      {
         return this.§@r§;
      }
      
      public function §%;§() : Number
      {
         return §`"§ / (this.§4F§ - this.§`!%§);
      }
      
      public function get §"!E§() : Number
      {
         return this.§"7§;
      }
      
      public function get §^!7§() : Number
      {
         return this.§4!P§;
      }
      
      public function §#!=§(param1:Number) : void
      {
         this.§7!D§ = param1;
         this.§-l§();
         this.§,!%§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §8!<§)
         {
            return;
         }
         this.goToCastleView();
         this.§>!F§ = 2000;
         this.§,^§();
         this.§%!S§();
         this.§%#§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§!!0§ = this.§>T§.x;
         this.§!#§ = this.§>T§.y;
         this.§[!9§ = false;
         this.§"V§ = §7b§ / 160000 * param1;
         this.§%!E§(§8!<§);
      }
      
      public function §false§() : void
      {
         this.§`!%§ = this.§>T§.x - §`"§ / this.§>T§.scale / 2;
         this.§4F§ = this.§^+§.x + §`"§ / this.§^+§.scale / 2;
         this.§3x§ = this.§^!I§.§@2§.§-S§ - 20 * § p§.§3!G§ * § p§.§]!E§;
         this.§]M§ = this.§^!I§.§@2§.§-S§ + 4;
         var _loc1_:Number = §`"§ / (this.§4F§ - this.§`!%§);
         this.§@r§ = this.§]M§ - §7!T§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§^!I§ = null;
      }
      
      public function §0W§(param1:§!!K§) : void
      {
         var _loc3_:§5!b§ = null;
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
         while(_loc2_ < param1.§+![§)
         {
            _loc3_ = param1.§-3§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§4!'§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §7!T§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §`"§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §&J§)
            {
               this.§>T§ = new §9Q§(_loc9_,_loc10_,_loc13_,true);
               this.§&!4§ = new §8!]§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §6!B§)
            {
               this.§^+§ = new §9Q§(_loc9_,_loc10_,_loc13_,false);
               this.§2!K§ = new §8!]§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §!6§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §5!T§(param1:§!!K§) : void
      {
         var _loc2_:§5!b§ = new §5!b§();
         _loc2_.id = §&J§;
         _loc2_.x = this.§>T§.x;
         _loc2_.y = this.§>T§.y;
         var _loc3_:Number = §`"§ / this.§>T§.scale / 2;
         var _loc4_:Number = §7!T§ / this.§>T§.scale / 2;
         _loc2_.left = this.§>T§.x - _loc3_;
         _loc2_.right = this.§>T§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §7!T§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §`"§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§5!b§;
         (_loc7_ = new §5!b§()).id = §6!B§;
         _loc7_.x = this.§^+§.x;
         _loc7_.y = this.§^+§.y;
         var _loc8_:Number = §`"§ / this.§^+§.scale / 2;
         var _loc9_:Number = §7!T§ / this.§^+§.scale / 2;
         _loc7_.left = this.§^+§.x - _loc8_;
         _loc7_.right = this.§^+§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §7!T§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §`"§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§^?§();
         param1.§1s§(_loc2_);
         param1.§1s§(_loc7_);
      }
      
      public function §4!'§(param1:§5!b§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §@!Z§.§?!L§ * 0.5 / _loc2_ * § p§.§]!E§;
         var _loc4_:Number = param1.y - §@!Z§.§"r§ * 0.5 / _loc2_ * § p§.§]!E§;
         var _loc5_:Number = _loc3_ + §@!Z§.§?!L§ / _loc2_ * § p§.§]!E§;
         var _loc6_:Number = _loc4_ + §@!Z§.§"r§ / _loc2_ * § p§.§]!E§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §1k§(param1:§9Q§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§"V§;
         if(_loc3_ >= §7b§)
         {
            _loc3_ = §7b§;
            this.§%!E§(§`!C§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§%!E§(§`!C§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §?!>§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§"V§;
         var _loc4_:Number = -§7b§ * 0.7;
         if(_loc2_ >= §7b§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §7b§;
            }
            this.§"V§ = -this.§"V§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §,!F§(param1:Number) : void
      {
         if(this.mCurrentAction == §8!<§)
         {
            this.§?!>§(param1);
         }
         else if(this.mCurrentAction == §?!]§)
         {
            this.§1k§(this.§^+§,param1);
         }
         else if(this.mCurrentAction == §return§)
         {
            this.§1k§(this.§>T§,-param1);
         }
         else if(this.mCurrentAction == §"!-§)
         {
            this.§[!9§ = true;
         }
         else if(this.mCurrentAction == §=!D§)
         {
            this.§#!W§(param1);
         }
      }
      
      public function §'!'§(param1:Number) : void
      {
         if(this.§`!E§)
         {
            this.§!!0§ = this.§`!E§.x;
            this.§!#§ = this.§`!E§.y;
            §while§ = §`"§ / (this.§`!E§.right - this.§`!E§.left);
         }
         else
         {
            this.§-l§();
            this.§,!F§(param1);
            this.§?d§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§,^§();
         this.§%!S§();
         this.§%#§();
      }
      
      private function §`B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§&!4§.scale + (this.§2!K§.scale - this.§&!4§.scale) * param1;
         var _loc4_:Number = this.§&!4§.x + (this.§2!K§.x - this.§&!4§.x) * param1;
         var _loc5_:Number = this.§&!4§.y + (this.§2!K§.y - this.§&!4§.y) * param1;
         this.§4!g§.x -= (this.§4!g§.x - _loc4_) * param2;
         this.§4!g§.y -= (this.§4!g§.y - _loc5_) * param2;
         this.§4!g§.scale -= (this.§4!g§.scale - _loc3_) * param2;
      }
      
      protected function §,!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,!9§ != 0)
         {
            if(!this.§[!9§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §7b§;
            this.§`B§(_loc3_,param2);
            this.§!!0§ = this.§4!g§.x;
            this.§!#§ = this.§4!g§.y;
            §while§ = this.§4!g§.scale;
         }
      }
      
      public function §?d§(param1:Number, param2:Number) : void
      {
         var _loc5_:§[g§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §7b§)
         {
            this.§[!9§ = true;
         }
         if(this.mCurrentAction == §"!-§)
         {
            if(!this.§^!I§.activeObject)
            {
               this.§%!E§(§?!]§);
               this.§!!H§ = §-!R§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§^!I§.activeObject).§`e§().GetPosition().x + (!!_loc5_.§>!$§ ? _loc5_.§>!$§ * § p§.§]!E§ : 0);
               _loc7_ = _loc5_.§`e§().GetPosition().y + (!!_loc5_.§^!G§ ? _loc5_.§^!G§ * § p§.§]!E§ : 0);
               if((_loc8_ = _loc5_.§`e§().GetLinearVelocity().x) > 0 && this.§,!9§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§,!9§ * §7b§;
               }
               if(param1 >= §7b§)
               {
                  param1 = §7b§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §7b§;
               this.§`B§(_loc9_,_loc4_);
               _loc10_ = this.§4!g§.x - §`"§ * 0.5 / this.§4!g§.scale;
               _loc11_ = this.§4!g§.y - §7!T§ * 0.5 / this.§4!g§.scale;
               _loc12_ = this.§4!g§.x + §`"§ * 0.5 / this.§4!g§.scale;
               _loc13_ = this.§4!g§.y + §7!T§ * 0.5 / this.§4!g§.scale;
               _loc14_ = 150 * § p§.§]!E§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§`!%§,_loc15_);
               _loc17_ = Math.min(this.§4F§,_loc17_);
               _loc19_ = Math.abs(§`"§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§7!T§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§4!g§.scale)
               {
                  _loc21_ = this.§4!g§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §`"§ * 0.5 / _loc21_ > this.§4F§)
               {
                  _loc15_ = (_loc17_ = this.§4F§) - §`"§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§`!%§)
                  {
                     _loc15_ = this.§`!%§;
                  }
               }
               if(_loc22_ - §`"§ * 0.5 / _loc21_ < this.§`!%§)
               {
                  _loc17_ = (_loc15_ = this.§`!%§) + §`"§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§4F§)
                  {
                     _loc17_ = this.§4F§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§`"§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §`"§ * 0.5 / _loc21_ < this.§3x§)
               {
                  _loc23_ = this.§3x§ + §`"§ * 0.5 / _loc21_;
               }
               this.§!!0§ -= (this.§!!0§ - _loc22_) * _loc4_;
               this.§>!"§ -= (this.§>!"§ - _loc21_) * _loc4_;
               §while§ = this.§>!"§;
               this.§!#§ -= (this.§!#§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§4F§ || _loc6_ <= this.§`!%§)
               {
                  this.§4!g§.scale = §while§;
                  this.§4!g§.x = this.§!!0§;
                  this.§4!g§.y = this.§!#§;
               }
            }
         }
         else
         {
            this.§,!%§(param1,_loc4_);
         }
      }
      
      public function §9c§(param1:Number, param2:Number) : void
      {
         this.§#!%§ = param1;
         this.§ !C§ = param2;
      }
      
      private function §#;§(param1:§8!]§, param2:§9Q§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §-!F§ + (param2.scale - §-!F§) * this.§7!D§ * §[V§.§8!"§();
         if(§`"§ / param1.scale > this.§4F§ - this.§`!%§)
         {
            _loc3_ = §`"§ / (this.§4F§ - this.§`!%§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §2h§(param1:§8!]§, param2:§9Q§) : Boolean
      {
         var _loc3_:Boolean = this.§#;§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §7!T§ * 0.5 / param1.scale;
         var _loc5_:Number = §7!T§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §`"§ * 0.5 / param1.scale) < this.§`!%§ && param1.§%!X§)
         {
            param1.x += this.§`!%§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §`"§ * 0.5 / param1.scale) > this.§4F§ && !param1.§%!X§)
         {
            param1.x += this.§4F§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §`!Q§(param1:§8!]§, param2:§9Q§) : Number
      {
         return (param1.scale - §-!F§) / (§[V§.§8!"§() * (param2.scale - §-!F§));
      }
      
      protected function §-l§() : void
      {
         this.§2h§(this.§&!4§,this.§>T§);
         var _loc1_:Number = this.§`!Q§(this.§&!4§,this.§>T§);
         this.§2h§(this.§2!K§,this.§^+§);
         var _loc2_:Number = this.§`!Q§(this.§2!K§,this.§^+§);
         this.§7!D§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §,^§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§^!I§.sprite)
         {
            _loc1_ = §@!Z§.§11§() / §@!Z§.§<X§ - §@!Z§.§"r§ >> 1;
            §]!^§ = this.§^!I§.sprite.x = § p§.§=j§ * ((1 - §[V§.§+!>§) / 2);
            §!!g§ = this.§^!I§.sprite.y = _loc1_ + § p§.§3!G§ * (1 - §[V§.§+!>§) * §?s§.§<!+§;
         }
      }
      
      public function §%#§() : void
      {
         if(this.§^!I§.sprite)
         {
            this.§^!I§.sprite.scaleX = §+!>§;
            this.§^!I§.sprite.scaleY = §+!>§;
         }
      }
      
      public function §%!S§() : void
      {
         var _loc1_:Number = this.§!!0§ / § p§.§]!E§ + this.§#!%§;
         var _loc2_:Number = this.§!#§ / § p§.§]!E§ + this.§ !C§;
         this.§44§ = _loc1_ - § p§.§=j§ / 2 * §@!Z§.§<X§ / §@!Z§.§7!%§;
         this.§#8§ = _loc2_ - § p§.§3!G§ / 2 + §?s§.§!!V§;
         if(this.§^!I§.background)
         {
            this.§^!I§.background.§1q§(this.§44§,this.§#8§);
         }
         if(this.§^!I§.objects)
         {
            this.§^!I§.objects.§1q§(this.§44§,this.§#8§);
         }
         if(this.§^!I§.mLevelEngine)
         {
            this.§3d§();
         }
         if(this.§^!I§.slingshot)
         {
            this.§^!I§.slingshot.§1q§(this.§44§,this.§#8§);
         }
         if(this.§^!I§.particles)
         {
            this.§^!I§.particles.§1q§(this.§44§,this.§#8§);
         }
      }
      
      protected function §3d§() : void
      {
         this.§^!I§.mLevelEngine.§1q§(this.§44§,this.§#8§,§while§);
      }
      
      protected function §=N§() : void
      {
         this.§%!E§(§=!D§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§!!H§ = -1;
         this.§=N§();
         this.§4!>§ = this.§6!Z§ = this.§<Z§ = param1;
         this.§[M§ = this.§#T§ = this.§4b§ = param2;
         this.§&A§ = 0;
         this.§4!g§.x = this.§!!0§;
         this.§4!g§.y = this.§!#§;
         this.§4!g§.scale = §while§;
         this.§>!"§ = §while§;
         if(Math.abs(this.§2!K§.x - this.§&!4§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§!!0§ - this.§&!4§.x) / (this.§2!K§.x - this.§&!4§.x) * §7b§;
         }
         this.mDragging = true;
      }
      
      public function §#!W§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§&A§ += param1;
         var _loc3_:Number = this.§4!>§ - this.§6!Z§;
         if(this.§,!9§ > 0)
         {
            _loc2_ -= _loc3_ * § p§.§]!E§ / §+!>§ / this.§,!9§ * §7b§;
            this.§[!9§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§[!9§ = true;
            }
            if(_loc2_ > §7b§)
            {
               _loc2_ += (§7b§ - _loc2_) * 0.3;
               this.§[!9§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§6!Z§ = this.§4!>§;
      }
      
      protected function §`T§() : Boolean
      {
         return this.mCurrentAction == §=!D§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§4!>§ = param1;
            this.§[M§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §=!D§)
         {
            this.§%!E§(§`!C§);
            if(param1 > 0)
            {
               this.§4!>§ = param1;
            }
            _loc3_ = Math.abs(this.§4!>§ - this.§<Z§);
            if(this.§&A§ < § var§ && _loc3_ >= §5B§ && _loc3_ >= §#!!§ * this.§&A§ / 1000)
            {
               if(this.§4!>§ < this.§<Z§)
               {
                  this.§%!E§(§?!]§);
               }
               else
               {
                  this.§%!E§(§return§);
               }
               this.§"V§ = _loc3_ / this.§&A§ * 10;
               this.§[!9§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§[!9§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §7b§)
               {
                  this.§[!9§ = true;
               }
            }
            else if(this.§&A§ < §?c§)
            {
               this.§0!W§();
               this.§"V§ = §7b§ / (§7b§ / 500);
               this.§[!9§ = true;
            }
            else
            {
               this.§#!W§(0);
               this.§<v§(0);
               this.§"V§ = §7b§ / (§7b§ / 500);
               this.§[!9§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §0!W§() : void
      {
         if(this.mCurrentAction == §?!]§)
         {
            this.§%!E§(§return§);
         }
         else if(this.mCurrentAction == §return§)
         {
            this.§%!E§(§?!]§);
         }
         else if(this.mCurrentCameraSliderLocation >= §7b§ / 2)
         {
            this.§%!E§(§return§);
         }
         else if(this.mCurrentCameraSliderLocation <= §7b§ / 2)
         {
            this.§%!E§(§?!]§);
         }
      }
      
      public function §<v§(param1:int) : void
      {
         this.§!!H§ = param1;
         if(this.mCurrentCameraSliderLocation < §7b§ / 2)
         {
            this.§%!E§(§return§);
         }
         else
         {
            this.§%!E§(§?!]§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§%!E§(§return§);
      }
      
      public function goToCastleView() : void
      {
         this.§%!E§(§?!]§);
      }
      
      public function §%!E§(param1:int) : void
      {
         this.§4!g§.x = this.§!!0§;
         this.§4!g§.y = this.§!#§;
         this.§4!g§.scale = §while§;
         this.§>!"§ = §while§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §7b§)
         {
            return true;
         }
         if(this.mCurrentAction == §?!]§)
         {
            return true;
         }
         return false;
      }
      
      public function §0!N§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §return§)
         {
            return true;
         }
         return false;
      }
      
      public function §7!J§(param1:§5!b§) : void
      {
         this.§`!E§ = param1;
         if(this.§`!E§ != null)
         {
            this.§8!@§ = new §5!b§();
            this.§8!@§.x = this.§!!0§;
            this.§8!@§.y = this.§!#§;
            this.§8!@§.scale = §while§;
         }
         else
         {
            this.§!!0§ = this.§8!@§.x;
            this.§!#§ = this.§8!@§.y;
            §while§ = this.§8!@§.scale;
            this.§8!@§ = null;
         }
      }
      
      protected function §?_§() : void
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
         var _loc3_:Number = this.§7!D§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§^!7§,Math.min(this.§"!E§,_loc3_));
         if(_loc3_ != this.§7!D§)
         {
            this.§7!D§ = _loc3_;
            this.§?_§();
         }
      }
      
      public function §]%§() : Number
      {
         return (this.manualScale - this.§^!7§) / (this.§"!E§ - this.§^!7§);
      }
      
      public function §,!H§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§"!E§ - this.§^!7§) + this.§^!7§;
      }
      
      public function §%_§() : void
      {
         this.§7!D§ = Math.max(this.§7!D§ - 0.5,0.5);
      }
      
      public function §]!e§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7!D§;
         _loc1_ += " mXcenterB2: " + this.§!!0§;
         _loc1_ += " mYcenterB2: " + this.§!#§;
         _loc1_ += " mXcenterB2target: " + this.§7!D§;
         _loc1_ += "\n mYcenterB2target: " + this.§7!D§;
         _loc1_ += " mXcenterB2previous: " + this.§7!D§;
         _loc1_ += " mYcenterB2previous: " + this.§7!D§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7!D§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7!D§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7!D§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7!D§;
         _loc1_ += " mTargetScale: " + this.§7!D§;
         _loc1_ += " mTargetScalePrevious: " + this.§7!D§;
         _loc1_ += " mCastleCameraX: " + this.§7!D§;
         _loc1_ += "\n mCastleCameraY: " + this.§7!D§;
         _loc1_ += " mCastleCameraScale: " + this.§7!D§;
         _loc1_ += " mBirdCameraX: " + this.§7!D§;
         _loc1_ += " mBirdCameraY: " + this.§7!D§;
         _loc1_ += " mBirdCameraScale: " + this.§7!D§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7!D§;
         _loc1_ += " mScreenTopScroll: " + this.§7!D§;
         _loc1_ += " mDragging: " + this.§7!D§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7!D§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7!D§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7!D§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7!D§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7!D§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7!D§;
         _loc1_ += " mDraggingTimer: " + this.§7!D§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7!D§;
         _loc1_ += " mCameraBorderRight: " + this.§7!D§;
         _loc1_ += " mCameraBorderSky: " + this.§7!D§;
         _loc1_ += " mCameraBorderGround: " + this.§7!D§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7!D§ + "\n ");
      }
      
      public function §;J§() : Number
      {
         return this.§!!0§;
      }
      
      public function §%!b§() : Number
      {
         return this.§!#§;
      }
   }
}
