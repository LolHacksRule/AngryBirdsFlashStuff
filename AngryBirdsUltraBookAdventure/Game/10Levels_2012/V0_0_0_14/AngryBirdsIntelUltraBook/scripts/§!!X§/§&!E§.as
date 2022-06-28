package §!!X§
{
   import §!!§.§->§;
   import §!!§.§>4§;
   import §+&§.§-!7§;
   import §+&§.§<T§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §]![§.§4!H§;
   
   public class §&!E§
   {
      
      public static const §%!Q§:Number = 1.25;
      
      public static const §,!1§:Number = 0.15;
      
      public static const §]F§:Number = §4!]§.§]m§ * §-!7§.§8!r§;
      
      public static const §#!b§:Number = §4!]§.§0N§ * §-!7§.§8!r§;
      
      public static const §case §:Number = 0.1;
      
      public static const § !S§:int = 1500;
      
      public static const §9!8§:int = 10;
      
      public static const §1N§:int = 15;
      
      public static const §3!W§:int = 300;
      
      public static const § !?§:int = 1000;
      
      public static const §!%§:int = 10000;
      
      public static const §^!1§:int = §!%§ / 50;
      
      public static const §6!K§:int = 0;
      
      public static const §!2§:int = 1;
      
      public static const §"!<§:int = 2;
      
      public static const §^+§:int = 3;
      
      public static const § f§:int = 4;
      
      public static const §<!n§:int = 5;
      
      public static const §"e§:String = "CASTLE";
      
      public static const §-!D§:String = "SLINGSHOT";
      
      protected static var §"z§:Number;
      
      public static var §1!t§:Number;
      
      public static var §>!m§:Number;
      
      public static const §]p§:Number = 2000;
       
      
      private var §9X§:Number = 1.0;
      
      private var §#W§:Number = 0.2;
      
      protected var §^w§:Number;
      
      protected var §^!<§:Number;
      
      protected var §]!n§:Number;
      
      public var §+!X§:§-!7§;
      
      public var §,!O§:Number;
      
      public var §@!E§:Number;
      
      private var §#F§:§4!x§;
      
      private var §[!L§:§4!x§;
      
      public var §9!S§:Number;
      
      public var §@!j§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@T§:Number;
      
      public var §&7§:Number;
      
      public var static:Number;
      
      public var §@I§:Number;
      
      private var §0!R§:Number;
      
      private var §1j§:§1!J§;
      
      private var §6!C§:§1!J§;
      
      protected var §<!%§:Number = 0;
      
      protected var §!!P§:Number = 0;
      
      protected var §3b§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § !H§:Number = 0;
      
      public var §]2§:Boolean = true;
      
      public var §?!j§:Number = 0;
      
      public var §;-§:Number = 0;
      
      public var §&M§:Number = 0;
      
      public var §@[§:Number = 0;
      
      public var §!!"§:Number = 0;
      
      public var §^z§:Number = 0;
      
      public var §+6§:Number = 0;
      
      public var §#!@§:Number = 0;
      
      public var §4k§:Number = 0;
      
      private var §"!O§:§1!J§;
      
      public var §;!l§:Number = 0;
      
      private var §<L§:Number = 0;
      
      private var §5E§:Number = 0;
      
      private var §`x§:§->§ = null;
      
      private var §0!g§:§->§ = null;
      
      public function §&!E§(param1:§-!7§, param2:§>4§, param3:Number = 1.0)
      {
         this.§"!O§ = new §1!J§(0,0,1,false);
         super();
         this.§^!<§ = 0;
         this.§]!n§ = 0;
         this.§+!X§ = param1;
         §&!E§.§"z§ = 1;
         this.§9X§ = Math.max(1,Math.min(2,param3));
         this.§^w§ = this.§9X§;
         this.§1Z§(param2);
         if(this.§#F§ && this.§[!L§)
         {
            this.§0!u§();
            this.§<!%§ = this.§#F§.x - this.§[!L§.x;
            this.§!!P§ = this.§#F§.y - this.§[!L§.y;
            this.§3b§ = this.§#F§.scale - this.§[!L§.scale;
            this.§^!<§ = this.§#F§.x;
            this.§]!n§ = this.§#F§.y;
            §"z§ = this.§#F§.scale * this.§^w§;
         }
         this.mCurrentCameraSliderLocation = §!%§;
         this.§]2§ = true;
         this.§ !H§ = §!%§ / 500;
      }
      
      private static function §&!L§() : Number
      {
         var _loc1_:Number = §4!]§.§4?§ / §4!]§.§%!'§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §+!a§() : Number
      {
         return §"z§ * §&!L§();
      }
      
      public function get §=!m§() : Number
      {
         return this.§^w§;
      }
      
      public function set §=!m§(param1:Number) : void
      {
         this.§^w§ = param1;
      }
      
      public function get §9!a§() : Number
      {
         return this.§0!R§;
      }
      
      public function §%!y§() : Number
      {
         return §]F§ / (this.§&7§ - this.§@T§);
      }
      
      public function get §3!O§() : Number
      {
         return this.§9X§;
      }
      
      public function get §!t§() : Number
      {
         return this.§#W§;
      }
      
      public function §9!Y§(param1:Number) : void
      {
         this.§^w§ = param1;
         this.§'!t§();
         this.§=B§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<!n§)
         {
            return;
         }
         this.goToCastleView();
         this.§?!j§ = 2000;
         this.§&b§();
         this.§>!n§();
         this.§9!i§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§^!<§ = this.§[!L§.x;
         this.§]!n§ = this.§[!L§.y;
         this.§]2§ = false;
         this.§ !H§ = §!%§ / 160000 * param1;
         this.§#e§(§<!n§);
      }
      
      public function §0!u§() : void
      {
         this.§@T§ = this.§[!L§.x - §]F§ / this.§[!L§.scale / 2;
         this.§&7§ = this.§#F§.x + §]F§ / this.§#F§.scale / 2;
         this.static = this.§+!X§.§<!x§.§;2§ - 20 * §-!7§.§[!V§ * §-!7§.§8!r§;
         this.§@I§ = this.§+!X§.§<!x§.§;2§ + 4;
         var _loc1_:Number = §]F§ / (this.§&7§ - this.§@T§);
         this.§0!R§ = this.§@I§ - §#!b§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§+!X§ = null;
      }
      
      public function §1Z§(param1:§>4§) : void
      {
         var _loc3_:§->§ = null;
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
         while(_loc2_ < param1.§5d§)
         {
            _loc3_ = param1.§?!H§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§^![§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §#!b§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §]F§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §-!D§)
            {
               this.§[!L§ = new §4!x§(_loc9_,_loc10_,_loc13_,true);
               this.§6!C§ = new §1!J§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §"e§)
            {
               this.§#F§ = new §4!x§(_loc9_,_loc10_,_loc13_,false);
               this.§1j§ = new §1!J§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §[g§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §]!N§(param1:§>4§) : void
      {
         var _loc2_:§->§ = new §->§();
         _loc2_.id = §-!D§;
         _loc2_.x = this.§[!L§.x;
         _loc2_.y = this.§[!L§.y;
         var _loc3_:Number = §]F§ / this.§[!L§.scale / 2;
         var _loc4_:Number = §#!b§ / this.§[!L§.scale / 2;
         _loc2_.left = this.§[!L§.x - _loc3_;
         _loc2_.right = this.§[!L§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§->§;
         (_loc5_ = new §->§()).id = §"e§;
         _loc5_.x = this.§#F§.x;
         _loc5_.y = this.§#F§.y;
         var _loc6_:Number = §]F§ / this.§#F§.scale / 2;
         var _loc7_:Number = §#!b§ / this.§#F§.scale / 2;
         _loc5_.left = this.§#F§.x - _loc6_;
         _loc5_.right = this.§#F§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§!I§();
         param1.§0h§(_loc2_);
         param1.§0h§(_loc5_);
      }
      
      public function §^![§(param1:§->§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §4!]§.§]m§ * 0.5 / _loc2_ * §-!7§.§8!r§;
         var _loc4_:Number = param1.y - §4!]§.§0N§ * 0.5 / _loc2_ * §-!7§.§8!r§;
         var _loc5_:Number = _loc3_ + §4!]§.§]m§ / _loc2_ * §-!7§.§8!r§;
         var _loc6_:Number = _loc4_ + §4!]§.§0N§ / _loc2_ * §-!7§.§8!r§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §=5§(param1:§4!x§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§ !H§;
         if(_loc3_ >= §!%§)
         {
            _loc3_ = §!%§;
            this.§#e§(§6!K§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§#e§(§6!K§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §1!L§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§ !H§;
         var _loc4_:Number = -§!%§ * 0.7;
         if(_loc2_ >= §!%§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §!%§;
            }
            this.§ !H§ = -this.§ !H§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §2v§(param1:Number) : void
      {
         if(this.mCurrentAction == §<!n§)
         {
            this.§1!L§(param1);
         }
         else if(this.mCurrentAction == §!2§)
         {
            this.§=5§(this.§#F§,param1);
         }
         else if(this.mCurrentAction == §"!<§)
         {
            this.§=5§(this.§[!L§,-param1);
         }
         else if(this.mCurrentAction == §^+§)
         {
            this.§]2§ = true;
         }
         else if(this.mCurrentAction == § f§)
         {
            this.§2!>§(param1);
         }
      }
      
      public function §,!K§(param1:Number) : void
      {
         if(this.§`x§)
         {
            this.§^!<§ = this.§`x§.x;
            this.§]!n§ = this.§`x§.y;
            §"z§ = §]F§ / (this.§`x§.right - this.§`x§.left);
         }
         else
         {
            this.§'!t§();
            this.§2v§(param1);
            this.§-!%§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§&b§();
         this.§>!n§();
         this.§9!i§();
      }
      
      private function §`S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6!C§.scale + (this.§1j§.scale - this.§6!C§.scale) * param1;
         var _loc4_:Number = this.§6!C§.x + (this.§1j§.x - this.§6!C§.x) * param1;
         var _loc5_:Number = this.§6!C§.y + (this.§1j§.y - this.§6!C§.y) * param1;
         this.§"!O§.x -= (this.§"!O§.x - _loc4_) * param2;
         this.§"!O§.y -= (this.§"!O§.y - _loc5_) * param2;
         this.§"!O§.scale -= (this.§"!O§.scale - _loc3_) * param2;
      }
      
      protected function §=B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§<!%§ != 0)
         {
            if(!this.§]2§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §!%§;
            this.§`S§(_loc3_,param2);
            this.§^!<§ = this.§"!O§.x;
            this.§]!n§ = this.§"!O§.y;
            §"z§ = this.§"!O§.scale;
         }
      }
      
      public function §-!%§(param1:Number, param2:Number) : void
      {
         var _loc5_:§4!H§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §!%§)
         {
            this.§]2§ = true;
         }
         if(this.mCurrentAction == §^+§)
         {
            if(!this.§+!X§.activeObject)
            {
               this.§#e§(§!2§);
               this.§4k§ = § !?§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§+!X§.activeObject).§+$§().GetPosition().x + (!!_loc5_.§"!s§ ? _loc5_.§"!s§ * §-!7§.§8!r§ : 0);
               _loc7_ = _loc5_.§+$§().GetPosition().y + (!!_loc5_.§5!2§ ? _loc5_.§5!2§ * §-!7§.§8!r§ : 0);
               if((_loc8_ = _loc5_.§+$§().GetLinearVelocity().x) > 0 && this.§<!%§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§<!%§ * §!%§;
               }
               if(param1 >= §!%§)
               {
                  param1 = §!%§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §!%§;
               this.§`S§(_loc9_,_loc4_);
               _loc10_ = this.§"!O§.x - §]F§ * 0.5 / this.§"!O§.scale;
               _loc11_ = this.§"!O§.y - §#!b§ * 0.5 / this.§"!O§.scale;
               _loc12_ = this.§"!O§.x + §]F§ * 0.5 / this.§"!O§.scale;
               _loc13_ = this.§"!O§.y + §#!b§ * 0.5 / this.§"!O§.scale;
               _loc14_ = 150 * §-!7§.§8!r§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§@T§,_loc15_);
               _loc17_ = Math.min(this.§&7§,_loc17_);
               _loc19_ = Math.abs(§]F§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§#!b§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§"!O§.scale)
               {
                  _loc21_ = this.§"!O§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §]F§ * 0.5 / _loc21_ > this.§&7§)
               {
                  _loc15_ = (_loc17_ = this.§&7§) - §]F§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§@T§)
                  {
                     _loc15_ = this.§@T§;
                  }
               }
               if(_loc22_ - §]F§ * 0.5 / _loc21_ < this.§@T§)
               {
                  _loc17_ = (_loc15_ = this.§@T§) + §]F§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§&7§)
                  {
                     _loc17_ = this.§&7§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§]F§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §]F§ * 0.5 / _loc21_ < this.static)
               {
                  _loc23_ = this.static + §]F§ * 0.5 / _loc21_;
               }
               this.§^!<§ -= (this.§^!<§ - _loc22_) * _loc4_;
               this.§;!l§ -= (this.§;!l§ - _loc21_) * _loc4_;
               §"z§ = this.§;!l§;
               this.§]!n§ -= (this.§]!n§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§&7§ || _loc6_ <= this.§@T§)
               {
                  this.§"!O§.scale = §"z§;
                  this.§"!O§.x = this.§^!<§;
                  this.§"!O§.y = this.§]!n§;
               }
            }
         }
         else
         {
            this.§=B§(param1,_loc4_);
         }
      }
      
      public function §7G§(param1:Number, param2:Number) : void
      {
         this.§<L§ = param1;
         this.§5E§ = param2;
      }
      
      private function §`k§(param1:§1!J§, param2:§4!x§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §,!1§ + (param2.scale - §,!1§) * this.§^w§ * §&!E§.§&!L§();
         if(§]F§ / param1.scale > this.§&7§ - this.§@T§)
         {
            _loc3_ = §]F§ / (this.§&7§ - this.§@T§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §7!=§(param1:§1!J§, param2:§4!x§) : Boolean
      {
         var _loc3_:Boolean = this.§`k§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §#!b§ * 0.5 / param1.scale;
         var _loc5_:Number = §#!b§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §]F§ * 0.5 / param1.scale) < this.§@T§ && param1.§=c§)
         {
            param1.x += this.§@T§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §]F§ * 0.5 / param1.scale) > this.§&7§ && !param1.§=c§)
         {
            param1.x += this.§&7§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §!@§(param1:§1!J§, param2:§4!x§) : Number
      {
         return (param1.scale - §,!1§) / (§&!E§.§&!L§() * (param2.scale - §,!1§));
      }
      
      protected function §'!t§() : void
      {
         this.§7!=§(this.§6!C§,this.§[!L§);
         var _loc1_:Number = this.§!@§(this.§6!C§,this.§[!L§);
         this.§7!=§(this.§1j§,this.§#F§);
         var _loc2_:Number = this.§!@§(this.§1j§,this.§#F§);
         this.§^w§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §&b§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§+!X§.sprite)
         {
            _loc1_ = §4!]§.§@!6§() / §4!]§.§4?§ - §4!]§.§0N§ >> 1;
            §1!t§ = this.§+!X§.sprite.x = §-!7§.§!l§ * ((1 - §&!E§.§+!a§) / 2);
            §>!m§ = this.§+!X§.sprite.y = _loc1_ + §-!7§.§[!V§ * (1 - §&!E§.§+!a§) * §<T§.§^!§;
         }
      }
      
      public function §9!i§() : void
      {
         if(this.§+!X§.sprite)
         {
            this.§+!X§.sprite.scaleX = §+!a§;
            this.§+!X§.sprite.scaleY = §+!a§;
         }
      }
      
      public function §>!n§() : void
      {
         var _loc1_:Number = this.§^!<§ / §-!7§.§8!r§ + this.§<L§;
         var _loc2_:Number = this.§]!n§ / §-!7§.§8!r§ + this.§5E§;
         this.§9!S§ = _loc1_ - §-!7§.§!l§ / 2 * §4!]§.§4?§ / §4!]§.final;
         this.§@!j§ = _loc2_ - §-!7§.§[!V§ / 2 + §<T§.§+b§;
         if(this.§+!X§.background)
         {
            this.§+!X§.background.§@o§(this.§9!S§,this.§@!j§);
         }
         if(this.§+!X§.objects)
         {
            this.§+!X§.objects.§@o§(this.§9!S§,this.§@!j§);
         }
         if(this.§+!X§.mLevelEngine)
         {
            this.§+!X§.mLevelEngine.§@o§(this.§9!S§,this.§@!j§,§+!a§);
         }
         if(this.§+!X§.slingshot)
         {
            this.§+!X§.slingshot.§@o§(this.§9!S§,this.§@!j§);
         }
         if(this.§+!X§.particles)
         {
            this.§+!X§.particles.§@o§(this.§9!S§,this.§@!j§);
         }
      }
      
      protected function §^!T§() : void
      {
         this.§#e§(§ f§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§4k§ = -1;
         this.§^!T§();
         this.§!!"§ = this.§+6§ = this.§&M§ = param1;
         this.§^z§ = this.§#!@§ = this.§@[§ = param2;
         this.§;-§ = 0;
         this.§"!O§.x = this.§^!<§;
         this.§"!O§.y = this.§]!n§;
         this.§"!O§.scale = §"z§;
         this.§;!l§ = §"z§;
         if(Math.abs(this.§1j§.x - this.§6!C§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§^!<§ - this.§6!C§.x) / (this.§1j§.x - this.§6!C§.x) * §!%§;
         }
         this.mDragging = true;
      }
      
      public function §2!>§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§;-§ += param1;
         var _loc3_:Number = this.§!!"§ - this.§+6§;
         if(this.§<!%§ > 0)
         {
            _loc2_ -= _loc3_ * §-!7§.§8!r§ / §+!a§ / this.§<!%§ * §!%§;
            this.§]2§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§]2§ = true;
            }
            if(_loc2_ > §!%§)
            {
               _loc2_ += (§!%§ - _loc2_) * 0.3;
               this.§]2§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§+6§ = this.§!!"§;
      }
      
      protected function §&%§() : Boolean
      {
         return this.mCurrentAction == § f§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§!!"§ = param1;
            this.§^z§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == § f§)
         {
            this.§#e§(§6!K§);
            if(param1 > 0)
            {
               this.§!!"§ = param1;
            }
            _loc3_ = Math.abs(this.§!!"§ - this.§&M§);
            if(this.§;-§ < § !S§ && _loc3_ >= §9!8§ && _loc3_ >= §1N§ * this.§;-§ / 1000)
            {
               if(this.§!!"§ < this.§&M§)
               {
                  this.§#e§(§!2§);
               }
               else
               {
                  this.§#e§(§"!<§);
               }
               this.§ !H§ = _loc3_ / this.§;-§ * 10;
               this.§]2§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§]2§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §!%§)
               {
                  this.§]2§ = true;
               }
            }
            else if(this.§;-§ < §3!W§)
            {
               this.§;l§();
               this.§ !H§ = §!%§ / (§!%§ / 500);
               this.§]2§ = true;
            }
            else
            {
               this.§2!>§(0);
               this.§2V§(0);
               this.§ !H§ = §!%§ / (§!%§ / 500);
               this.§]2§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §;l§() : void
      {
         if(this.mCurrentAction == §!2§)
         {
            this.§#e§(§"!<§);
         }
         else if(this.mCurrentAction == §"!<§)
         {
            this.§#e§(§!2§);
         }
         else if(this.mCurrentCameraSliderLocation >= §!%§ / 2)
         {
            this.§#e§(§"!<§);
         }
         else if(this.mCurrentCameraSliderLocation <= §!%§ / 2)
         {
            this.§#e§(§!2§);
         }
      }
      
      public function §2V§(param1:int) : void
      {
         this.§4k§ = param1;
         if(this.mCurrentCameraSliderLocation < §!%§ / 2)
         {
            this.§#e§(§"!<§);
         }
         else
         {
            this.§#e§(§!2§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§#e§(§"!<§);
      }
      
      public function goToCastleView() : void
      {
         this.§#e§(§!2§);
      }
      
      public function §#e§(param1:int) : void
      {
         this.§"!O§.x = this.§^!<§;
         this.§"!O§.y = this.§]!n§;
         this.§"!O§.scale = §"z§;
         this.§;!l§ = §"z§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §!%§)
         {
            return true;
         }
         if(this.mCurrentAction == §!2§)
         {
            return true;
         }
         return false;
      }
      
      public function §`,§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"!<§)
         {
            return true;
         }
         return false;
      }
      
      public function §4!9§(param1:§->§) : void
      {
         this.§`x§ = param1;
         if(this.§`x§ != null)
         {
            this.§0!g§ = new §->§();
            this.§0!g§.x = this.§^!<§;
            this.§0!g§.y = this.§]!n§;
            this.§0!g§.scale = §"z§;
         }
         else
         {
            this.§^!<§ = this.§0!g§.x;
            this.§]!n§ = this.§0!g§.y;
            §"z§ = this.§0!g§.scale;
            this.§0!g§ = null;
         }
      }
      
      protected function §try §() : void
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
         var _loc3_:Number = this.§^w§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§!t§,Math.min(this.§3!O§,_loc3_));
         if(_loc3_ != this.§^w§)
         {
            this.§^w§ = _loc3_;
            this.§try §();
         }
      }
      
      public function §'T§() : Number
      {
         return (this.§=!m§ - this.§!t§) / (this.§3!O§ - this.§!t§);
      }
      
      public function §9&§(param1:Number) : void
      {
         this.§=!m§ = Math.min(Math.max(param1,0),1) * (this.§3!O§ - this.§!t§) + this.§!t§;
      }
      
      public function §2!V§() : void
      {
         this.§^w§ = Math.max(this.§^w§ - 0.5,0.5);
      }
      
      public function §%!>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§^w§;
         _loc1_ += " mXcenterB2: " + this.§^!<§;
         _loc1_ += " mYcenterB2: " + this.§]!n§;
         _loc1_ += " mXcenterB2target: " + this.§^w§;
         _loc1_ += "\n mYcenterB2target: " + this.§^w§;
         _loc1_ += " mXcenterB2previous: " + this.§^w§;
         _loc1_ += " mYcenterB2previous: " + this.§^w§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§^w§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§^w§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§^w§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§^w§;
         _loc1_ += " mTargetScale: " + this.§^w§;
         _loc1_ += " mTargetScalePrevious: " + this.§^w§;
         _loc1_ += " mCastleCameraX: " + this.§^w§;
         _loc1_ += "\n mCastleCameraY: " + this.§^w§;
         _loc1_ += " mCastleCameraScale: " + this.§^w§;
         _loc1_ += " mBirdCameraX: " + this.§^w§;
         _loc1_ += " mBirdCameraY: " + this.§^w§;
         _loc1_ += " mBirdCameraScale: " + this.§^w§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§^w§;
         _loc1_ += " mScreenTopScroll: " + this.§^w§;
         _loc1_ += " mDragging: " + this.§^w§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§^w§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§^w§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§^w§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§^w§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§^w§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§^w§;
         _loc1_ += " mDraggingTimer: " + this.§^w§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§^w§;
         _loc1_ += " mCameraBorderRight: " + this.§^w§;
         _loc1_ += " mCameraBorderSky: " + this.§^w§;
         _loc1_ += " mCameraBorderGround: " + this.§^w§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§^w§ + "\n ");
      }
   }
}
