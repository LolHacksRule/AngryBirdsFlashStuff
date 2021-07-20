package § ![§
{
   import § !$§.§>C§;
   import §&!b§.§ c§;
   import §7e§.§8!P§;
   import §7e§.§;!8§;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   import §9!'§.§[v§;
   
   public class §#!B§
   {
      
      public static const §?F§:Number = 1.25;
      
      public static const §;T§:Number = 0.15;
      
      public static const §6q§:Number = §&#§.§4!3§ * §0!%§.§"m§;
      
      public static const §`!G§:Number = §&#§.§1l§ * §0!%§.§"m§;
      
      public static const §]K§:Number = 0.1;
      
      public static const §!!F§:int = 1500;
      
      public static const §'!X§:int = 10;
      
      public static const §=!@§:int = 15;
      
      public static const §`!=§:int = 300;
      
      public static const §+!c§:int = 1000;
      
      public static const §1!f§:int = 10000;
      
      public static const §>!T§:int = §1!f§ / 50;
      
      public static const §"!!§:int = 0;
      
      public static const §8^§:int = 1;
      
      public static const § !Y§:int = 2;
      
      public static const §>y§:int = 3;
      
      public static const §<e§:int = 4;
      
      public static const §`]§:int = 5;
      
      public static const §5!<§:String = "CASTLE";
      
      public static const §^F§:String = "SLINGSHOT";
      
      protected static var §;!C§:Number;
      
      public static var §"!`§:Number;
      
      public static var §0!0§:Number;
      
      public static const §9!`§:Number = 2000;
       
      
      private var §!R§:Number = 1.0;
      
      private var §4!;§:Number = 0.2;
      
      protected var §`!W§:Number;
      
      protected var §@r§:Number;
      
      protected var §[4§:Number;
      
      public var §]B§:§0!%§;
      
      public var §!!a§:Number;
      
      public var §5y§:Number;
      
      protected var §6D§:§<!$§;
      
      protected var §?z§:§<!$§;
      
      public var §7!I§:Number;
      
      public var §?!Y§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §'+§:Number;
      
      public var §'[§:Number;
      
      public var §6!&§:Number;
      
      public var §3!_§:Number;
      
      private var §2!"§:Number;
      
      private var §8H§:§!?§;
      
      private var §<!L§:§!?§;
      
      protected var §%!§:Number = 0;
      
      protected var §1!5§:Number = 0;
      
      protected var §,!L§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §[!Z§:Number = 0;
      
      public var §@#§:Boolean = true;
      
      public var §<!R§:Number = 0;
      
      public var §@v§:Number = 0;
      
      public var §?!Q§:Number = 0;
      
      public var § d§:Number = 0;
      
      public var §#!§:Number = 0;
      
      public var §<!>§:Number = 0;
      
      public var §"H§:Number = 0;
      
      public var §<=§:Number = 0;
      
      public var §;t§:Number = 0;
      
      private var §'!4§:§!?§;
      
      public var § !R§:Number = 0;
      
      private var §8n§:Number = 0;
      
      private var §'!%§:Number = 0;
      
      private var §6=§:§;!8§ = null;
      
      private var §8!1§:§;!8§ = null;
      
      public function §#!B§(param1:§0!%§, param2:§8!P§, param3:Number = 1.0)
      {
         this.§'!4§ = new §!?§(0,0,1,false);
         super();
         this.§@r§ = 0;
         this.§[4§ = 0;
         this.§]B§ = param1;
         §#!B§.§;!C§ = 1;
         this.§!R§ = Math.max(1,Math.min(2,param3));
         this.§`!W§ = this.§!R§;
         this.§!K§(param2);
         if(this.§6D§ && this.§?z§)
         {
            this.§`!_§();
            this.§%!§ = this.§6D§.x - this.§?z§.x;
            this.§1!5§ = this.§6D§.y - this.§?z§.y;
            this.§,!L§ = this.§6D§.scale - this.§?z§.scale;
            this.§@r§ = this.§6D§.x;
            this.§[4§ = this.§6D§.y;
            §;!C§ = this.§6D§.scale * this.§`!W§;
         }
         this.mCurrentCameraSliderLocation = §1!f§;
         this.§@#§ = true;
         this.§[!Z§ = §1!f§ / 500;
      }
      
      private static function §!7§() : Number
      {
         var _loc1_:Number = §&#§.§>!L§ / §&#§.§>!§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §2!Y§() : Number
      {
         return §;!C§ * §!7§();
      }
      
      public function get manualScale() : Number
      {
         return this.§`!W§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§`!W§ = param1;
      }
      
      public function get §+L§() : Number
      {
         return this.§2!"§;
      }
      
      public function §]H§() : Number
      {
         return §6q§ / (this.§'[§ - this.§'+§);
      }
      
      public function get §+8§() : Number
      {
         return this.§!R§;
      }
      
      public function get §8!W§() : Number
      {
         return this.§4!;§;
      }
      
      public function §`!M§(param1:Number) : void
      {
         this.§`!W§ = param1;
         this.§'V§();
         this.§6!O§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §`]§)
         {
            return;
         }
         this.goToCastleView();
         this.§<!R§ = 2000;
         this.§^!+§();
         this.§`!0§();
         this.§"!^§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§@r§ = this.§?z§.x;
         this.§[4§ = this.§?z§.y;
         this.§@#§ = false;
         this.§[!Z§ = §1!f§ / 160000 * param1;
         this.§^$§(§`]§);
      }
      
      public function §`!_§() : void
      {
         this.§'+§ = this.§?z§.x - §6q§ / this.§?z§.scale / 2;
         this.§'[§ = this.§6D§.x + §6q§ / this.§6D§.scale / 2;
         this.§6!&§ = this.§]B§.§%!E§.§3m§ - 20 * §0!%§.§[j§ * §0!%§.§"m§;
         this.§3!_§ = this.§]B§.§%!E§.§3m§ + 4;
         var _loc1_:Number = §6q§ / (this.§'[§ - this.§'+§);
         this.§2!"§ = this.§3!_§ - §`!G§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]B§ = null;
      }
      
      public function §!K§(param1:§8!P§) : void
      {
         var _loc3_:§;!8§ = null;
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
         while(_loc2_ < param1.§^!>§)
         {
            _loc3_ = param1.§-h§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§"!a§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §`!G§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(§6q§ / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §^F§)
            {
               this.§?z§ = new §<!$§(_loc9_,_loc10_,_loc13_,true);
               this.§<!L§ = new §!?§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §5!<§)
            {
               this.§6D§ = new §<!$§(_loc9_,_loc10_,_loc13_,false);
               this.§8H§ = new §!?§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               § c§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §<!]§(param1:§8!P§) : void
      {
         var _loc2_:§;!8§ = new §;!8§();
         _loc2_.id = §^F§;
         _loc2_.x = this.§?z§.x;
         _loc2_.y = this.§?z§.y;
         var _loc3_:Number = §6q§ / this.§?z§.scale / 2;
         var _loc4_:Number = §`!G§ / this.§?z§.scale / 2;
         _loc2_.left = this.§?z§.x - _loc3_;
         _loc2_.right = this.§?z§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§;!8§;
         (_loc5_ = new §;!8§()).id = §5!<§;
         _loc5_.x = this.§6D§.x;
         _loc5_.y = this.§6D§.y;
         var _loc6_:Number = §6q§ / this.§6D§.scale / 2;
         var _loc7_:Number = §`!G§ / this.§6D§.scale / 2;
         _loc5_.left = this.§6D§.x - _loc6_;
         _loc5_.right = this.§6D§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§"]§();
         param1.§0G§(_loc2_);
         param1.§0G§(_loc5_);
      }
      
      public function §"!a§(param1:§;!8§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §&#§.§4!3§ * 0.5 / _loc2_ * §0!%§.§"m§;
         var _loc4_:Number = param1.y - §&#§.§1l§ * 0.5 / _loc2_ * §0!%§.§"m§;
         var _loc5_:Number = _loc3_ + §&#§.§4!3§ / _loc2_ * §0!%§.§"m§;
         var _loc6_:Number = _loc4_ + §&#§.§1l§ / _loc2_ * §0!%§.§"m§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §#=§(param1:§<!$§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§[!Z§;
         if(_loc3_ >= §1!f§)
         {
            _loc3_ = §1!f§;
            this.§^$§(§"!!§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§^$§(§"!!§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §4!L§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§[!Z§;
         var _loc4_:Number = -§1!f§ * 0.7;
         if(_loc2_ >= §1!f§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §1!f§;
            }
            this.§[!Z§ = -this.§[!Z§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §4c§(param1:Number) : void
      {
         if(this.mCurrentAction == §`]§)
         {
            this.§4!L§(param1);
         }
         else if(this.mCurrentAction == §8^§)
         {
            this.§#=§(this.§6D§,param1);
         }
         else if(this.mCurrentAction == § !Y§)
         {
            this.§#=§(this.§?z§,-param1);
         }
         else if(this.mCurrentAction == §>y§)
         {
            this.§@#§ = true;
         }
         else if(this.mCurrentAction == §<e§)
         {
            this.§8!<§(param1);
         }
      }
      
      public function §7A§(param1:Number) : void
      {
         if(this.§6=§)
         {
            this.§@r§ = this.§6=§.x;
            this.§[4§ = this.§6=§.y;
            §;!C§ = §6q§ / (this.§6=§.right - this.§6=§.left);
         }
         else
         {
            this.§'V§();
            this.§4c§(param1);
            this.§,!X§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§^!+§();
         this.§`!0§();
         this.§"!^§();
      }
      
      private function §,!-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<!L§.scale + (this.§8H§.scale - this.§<!L§.scale) * param1;
         var _loc4_:Number = this.§<!L§.x + (this.§8H§.x - this.§<!L§.x) * param1;
         var _loc5_:Number = this.§<!L§.y + (this.§8H§.y - this.§<!L§.y) * param1;
         this.§'!4§.x -= (this.§'!4§.x - _loc4_) * param2;
         this.§'!4§.y -= (this.§'!4§.y - _loc5_) * param2;
         this.§'!4§.scale -= (this.§'!4§.scale - _loc3_) * param2;
      }
      
      protected function §6!O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%!§ != 0)
         {
            if(!this.§@#§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §1!f§;
            this.§,!-§(_loc3_,param2);
            this.§@r§ = this.§'!4§.x;
            this.§[4§ = this.§'!4§.y;
            §;!C§ = this.§'!4§.scale;
         }
      }
      
      public function §,!X§(param1:Number, param2:Number) : void
      {
         var _loc5_:§>C§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §1!f§)
         {
            this.§@#§ = true;
         }
         if(this.mCurrentAction == §>y§)
         {
            if(!this.§]B§.activeObject)
            {
               this.§^$§(§8^§);
               this.§;t§ = §+!c§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]B§.activeObject).§]!2§().GetPosition().x + (!!_loc5_.§^!T§ ? _loc5_.§^!T§ * §0!%§.§"m§ : 0);
               _loc7_ = _loc5_.§]!2§().GetPosition().y + (!!_loc5_.§,d§ ? _loc5_.§,d§ * §0!%§.§"m§ : 0);
               if((_loc8_ = _loc5_.§]!2§().GetLinearVelocity().x) > 0 && this.§%!§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§%!§ * §1!f§;
               }
               if(param1 >= §1!f§)
               {
                  param1 = §1!f§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §1!f§;
               this.§,!-§(_loc9_,_loc4_);
               _loc10_ = this.§'!4§.x - §6q§ * 0.5 / this.§'!4§.scale;
               _loc11_ = this.§'!4§.y - §`!G§ * 0.5 / this.§'!4§.scale;
               _loc12_ = this.§'!4§.x + §6q§ * 0.5 / this.§'!4§.scale;
               _loc13_ = this.§'!4§.y + §`!G§ * 0.5 / this.§'!4§.scale;
               _loc14_ = 150 * §0!%§.§"m§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§'+§,_loc15_);
               _loc17_ = Math.min(this.§'[§,_loc17_);
               _loc19_ = Math.abs(§6q§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§`!G§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§'!4§.scale)
               {
                  _loc21_ = this.§'!4§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §6q§ * 0.5 / _loc21_ > this.§'[§)
               {
                  _loc15_ = (_loc17_ = this.§'[§) - §6q§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§'+§)
                  {
                     _loc15_ = this.§'+§;
                  }
               }
               if(_loc22_ - §6q§ * 0.5 / _loc21_ < this.§'+§)
               {
                  _loc17_ = (_loc15_ = this.§'+§) + §6q§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§'[§)
                  {
                     _loc17_ = this.§'[§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§6q§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §6q§ * 0.5 / _loc21_ < this.§6!&§)
               {
                  _loc23_ = this.§6!&§ + §6q§ * 0.5 / _loc21_;
               }
               this.§@r§ -= (this.§@r§ - _loc22_) * _loc4_;
               this.§ !R§ -= (this.§ !R§ - _loc21_) * _loc4_;
               §;!C§ = this.§ !R§;
               this.§[4§ -= (this.§[4§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§'[§ || _loc6_ <= this.§'+§)
               {
                  this.§'!4§.scale = §;!C§;
                  this.§'!4§.x = this.§@r§;
                  this.§'!4§.y = this.§[4§;
               }
            }
         }
         else
         {
            this.§6!O§(param1,_loc4_);
         }
      }
      
      public function §[!a§(param1:Number, param2:Number) : void
      {
         this.§8n§ = param1;
         this.§'!%§ = param2;
      }
      
      private function §6!`§(param1:§!?§, param2:§<!$§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §;T§ + (param2.scale - §;T§) * this.§`!W§ * §#!B§.§!7§();
         if(§6q§ / param1.scale > this.§'[§ - this.§'+§)
         {
            _loc3_ = §6q§ / (this.§'[§ - this.§'+§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@o§(param1:§!?§, param2:§<!$§) : Boolean
      {
         var _loc3_:Boolean = this.§6!`§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §`!G§ * 0.5 / param1.scale;
         var _loc5_:Number = §`!G§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §6q§ * 0.5 / param1.scale) < this.§'+§ && param1.§3w§)
         {
            param1.x += this.§'+§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §6q§ * 0.5 / param1.scale) > this.§'[§ && !param1.§3w§)
         {
            param1.x += this.§'[§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §-[§(param1:§!?§, param2:§<!$§) : Number
      {
         return (param1.scale - §;T§) / (§#!B§.§!7§() * (param2.scale - §;T§));
      }
      
      protected function §'V§() : void
      {
         this.§@o§(this.§<!L§,this.§?z§);
         var _loc1_:Number = this.§-[§(this.§<!L§,this.§?z§);
         this.§@o§(this.§8H§,this.§6D§);
         var _loc2_:Number = this.§-[§(this.§8H§,this.§6D§);
         this.§`!W§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §^!+§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]B§.sprite)
         {
            _loc1_ = §&#§.§3H§() / §&#§.§>!L§ - §&#§.§1l§ >> 1;
            §"!`§ = this.§]B§.sprite.x = §0!%§.§5C§ * ((1 - §#!B§.§2!Y§) / 2);
            §0!0§ = this.§]B§.sprite.y = _loc1_ + §0!%§.§[j§ * (1 - §#!B§.§2!Y§) * §[v§.§9!V§;
         }
      }
      
      public function §"!^§() : void
      {
         if(this.§]B§.sprite)
         {
            this.§]B§.sprite.scaleX = §2!Y§;
            this.§]B§.sprite.scaleY = §2!Y§;
         }
      }
      
      public function §`!0§() : void
      {
         var _loc1_:Number = this.§@r§ / §0!%§.§"m§ + this.§8n§;
         var _loc2_:Number = this.§[4§ / §0!%§.§"m§ + this.§'!%§;
         this.§7!I§ = _loc1_ - §0!%§.§5C§ / 2 * §&#§.§>!L§ / §&#§.§&!J§;
         this.§?!Y§ = _loc2_ - §0!%§.§[j§ / 2 + §[v§.§?!]§;
         if(this.§]B§.background)
         {
            this.§]B§.background.§`s§(this.§7!I§,this.§?!Y§);
         }
         if(this.§]B§.objects)
         {
            this.§]B§.objects.§`s§(this.§7!I§,this.§?!Y§);
         }
         if(this.§]B§.mLevelEngine)
         {
            this.§0! §();
         }
         if(this.§]B§.slingshot)
         {
            this.§]B§.slingshot.§`s§(this.§7!I§,this.§?!Y§);
         }
         if(this.§]B§.particles)
         {
            this.§]B§.particles.§`s§(this.§7!I§,this.§?!Y§);
         }
      }
      
      protected function §0! §() : void
      {
         this.§]B§.mLevelEngine.§`s§(this.§7!I§,this.§?!Y§,§;!C§);
      }
      
      protected function §2!9§() : void
      {
         this.§^$§(§<e§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§;t§ = -1;
         this.§2!9§();
         this.§#!§ = this.§"H§ = this.§?!Q§ = param1;
         this.§<!>§ = this.§<=§ = this.§ d§ = param2;
         this.§@v§ = 0;
         this.§'!4§.x = this.§@r§;
         this.§'!4§.y = this.§[4§;
         this.§'!4§.scale = §;!C§;
         this.§ !R§ = §;!C§;
         if(Math.abs(this.§8H§.x - this.§<!L§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§@r§ - this.§<!L§.x) / (this.§8H§.x - this.§<!L§.x) * §1!f§;
         }
         this.mDragging = true;
      }
      
      public function §8!<§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§@v§ += param1;
         var _loc3_:Number = this.§#!§ - this.§"H§;
         if(this.§%!§ > 0)
         {
            _loc2_ -= _loc3_ * §0!%§.§"m§ / §2!Y§ / this.§%!§ * §1!f§;
            this.§@#§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§@#§ = true;
            }
            if(_loc2_ > §1!f§)
            {
               _loc2_ += (§1!f§ - _loc2_) * 0.3;
               this.§@#§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"H§ = this.§#!§;
      }
      
      protected function §1#§() : Boolean
      {
         return this.mCurrentAction == §<e§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§#!§ = param1;
            this.§<!>§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §<e§)
         {
            this.§^$§(§"!!§);
            if(param1 > 0)
            {
               this.§#!§ = param1;
            }
            _loc3_ = Math.abs(this.§#!§ - this.§?!Q§);
            if(this.§@v§ < §!!F§ && _loc3_ >= §'!X§ && _loc3_ >= §=!@§ * this.§@v§ / 1000)
            {
               if(this.§#!§ < this.§?!Q§)
               {
                  this.§^$§(§8^§);
               }
               else
               {
                  this.§^$§(§ !Y§);
               }
               this.§[!Z§ = _loc3_ / this.§@v§ * 10;
               this.§@#§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§@#§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §1!f§)
               {
                  this.§@#§ = true;
               }
            }
            else if(this.§@v§ < §`!=§)
            {
               this.§]n§();
               this.§[!Z§ = §1!f§ / (§1!f§ / 500);
               this.§@#§ = true;
            }
            else
            {
               this.§8!<§(0);
               this.§#!$§(0);
               this.§[!Z§ = §1!f§ / (§1!f§ / 500);
               this.§@#§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §]n§() : void
      {
         if(this.mCurrentAction == §8^§)
         {
            this.§^$§(§ !Y§);
         }
         else if(this.mCurrentAction == § !Y§)
         {
            this.§^$§(§8^§);
         }
         else if(this.mCurrentCameraSliderLocation >= §1!f§ / 2)
         {
            this.§^$§(§ !Y§);
         }
         else if(this.mCurrentCameraSliderLocation <= §1!f§ / 2)
         {
            this.§^$§(§8^§);
         }
      }
      
      public function §#!$§(param1:int) : void
      {
         this.§;t§ = param1;
         if(this.mCurrentCameraSliderLocation < §1!f§ / 2)
         {
            this.§^$§(§ !Y§);
         }
         else
         {
            this.§^$§(§8^§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§^$§(§ !Y§);
      }
      
      public function goToCastleView() : void
      {
         this.§^$§(§8^§);
      }
      
      public function §^$§(param1:int) : void
      {
         this.§'!4§.x = this.§@r§;
         this.§'!4§.y = this.§[4§;
         this.§'!4§.scale = §;!C§;
         this.§ !R§ = §;!C§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §1!f§)
         {
            return true;
         }
         if(this.mCurrentAction == §8^§)
         {
            return true;
         }
         return false;
      }
      
      public function §^%§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == § !Y§)
         {
            return true;
         }
         return false;
      }
      
      public function §1c§(param1:§;!8§) : void
      {
         this.§6=§ = param1;
         if(this.§6=§ != null)
         {
            this.§8!1§ = new §;!8§();
            this.§8!1§.x = this.§@r§;
            this.§8!1§.y = this.§[4§;
            this.§8!1§.scale = §;!C§;
         }
         else
         {
            this.§@r§ = this.§8!1§.x;
            this.§[4§ = this.§8!1§.y;
            §;!C§ = this.§8!1§.scale;
            this.§8!1§ = null;
         }
      }
      
      protected function §8G§() : void
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
         var _loc3_:Number = this.§`!W§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§8!W§,Math.min(this.§+8§,_loc3_));
         if(_loc3_ != this.§`!W§)
         {
            this.§`!W§ = _loc3_;
            this.§8G§();
         }
      }
      
      public function §@!8§() : Number
      {
         return (this.manualScale - this.§8!W§) / (this.§+8§ - this.§8!W§);
      }
      
      public function § !b§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§+8§ - this.§8!W§) + this.§8!W§;
      }
      
      public function §3U§() : void
      {
         this.§`!W§ = Math.max(this.§`!W§ - 0.5,0.5);
      }
      
      public function §%!W§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§`!W§;
         _loc1_ += " mXcenterB2: " + this.§@r§;
         _loc1_ += " mYcenterB2: " + this.§[4§;
         _loc1_ += " mXcenterB2target: " + this.§`!W§;
         _loc1_ += "\n mYcenterB2target: " + this.§`!W§;
         _loc1_ += " mXcenterB2previous: " + this.§`!W§;
         _loc1_ += " mYcenterB2previous: " + this.§`!W§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§`!W§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§`!W§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§`!W§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§`!W§;
         _loc1_ += " mTargetScale: " + this.§`!W§;
         _loc1_ += " mTargetScalePrevious: " + this.§`!W§;
         _loc1_ += " mCastleCameraX: " + this.§`!W§;
         _loc1_ += "\n mCastleCameraY: " + this.§`!W§;
         _loc1_ += " mCastleCameraScale: " + this.§`!W§;
         _loc1_ += " mBirdCameraX: " + this.§`!W§;
         _loc1_ += " mBirdCameraY: " + this.§`!W§;
         _loc1_ += " mBirdCameraScale: " + this.§`!W§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§`!W§;
         _loc1_ += " mScreenTopScroll: " + this.§`!W§;
         _loc1_ += " mDragging: " + this.§`!W§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§`!W§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§`!W§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§`!W§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§`!W§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§`!W§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§`!W§;
         _loc1_ += " mDraggingTimer: " + this.§`!W§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§`!W§;
         _loc1_ += " mCameraBorderRight: " + this.§`!W§;
         _loc1_ += " mCameraBorderSky: " + this.§`!W§;
         _loc1_ += " mCameraBorderGround: " + this.§`!W§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§`!W§ + "\n ");
      }
      
      public function §&!R§() : Number
      {
         return this.§@r§;
      }
      
      public function §6<§() : Number
      {
         return this.§[4§;
      }
   }
}
