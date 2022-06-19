package §^6§
{
   import §'_§.§9V§;
   import §+I§.§9!%§;
   import §0!?§.§'!$§;
   import §3,§.§+" §;
   import §3,§.§[!;§;
   import §[!z§.§!"=§;
   import §[!z§.§7;§;
   
   public class §0!w§
   {
      
      public static const §4u§:Number = 1.25;
      
      public static const §0C§:Number = 0.15;
      
      public static const §@6§:Number = §9!%§.§^3§ * §[!;§.§4!O§;
      
      public static const §"!B§:Number = §9!%§.§&"$§ * §[!;§.§4!O§;
      
      public static const §6!_§:Number = 0.1;
      
      public static const §&%§:int = 1500;
      
      public static const §true§:int = 10;
      
      public static const §8!h§:int = 15;
      
      public static const §5`§:int = 300;
      
      public static const §#!V§:int = 1000;
      
      public static const §8!w§:int = 10000;
      
      public static const §[i§:int = §8!w§ / 50;
      
      public static const §=j§:int = 0;
      
      public static const §6^§:int = 1;
      
      public static const §@w§:int = 2;
      
      public static const §3!f§:int = 3;
      
      public static const §,";§:int = 4;
      
      public static const §@]§:int = 5;
      
      public static const §1!h§:String = "CASTLE";
      
      public static const §6"6§:String = "SLINGSHOT";
      
      protected static var §5@§:Number;
      
      public static var §4!b§:Number;
      
      public static var §2!b§:Number;
      
      public static const §0!P§:Number = 2000;
       
      
      private var §1!w§:Number = 1.0;
      
      private var §+!A§:Number = 0.2;
      
      protected var §>!h§:Number;
      
      protected var §"!l§:Number;
      
      protected var §6y§:Number;
      
      public var §0!J§:§[!;§;
      
      public var §?!d§:Number;
      
      public var §2l§:Number;
      
      private var §4!x§:§]!y§;
      
      private var §[!2§:§]!y§;
      
      public var §=l§:Number;
      
      public var §'w§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §'k§:Number;
      
      public var §]"0§:Number;
      
      public var §0m§:Number;
      
      public var §[w§:Number;
      
      private var §5!G§:Number;
      
      private var §]"?§:§1!X§;
      
      private var §%e§:§1!X§;
      
      protected var §07§:Number = 0;
      
      protected var §"!F§:Number = 0;
      
      protected var §2U§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §@P§:Number = 0;
      
      public var §>c§:Boolean = true;
      
      public var §4!K§:Number = 0;
      
      public var §-"6§:Number = 0;
      
      public var §-"@§:Number = 0;
      
      public var §="&§:Number = 0;
      
      public var §^>§:Number = 0;
      
      public var §`!j§:Number = 0;
      
      public var §3!M§:Number = 0;
      
      public var §#5§:Number = 0;
      
      public var §-4§:Number = 0;
      
      private var §,!W§:§1!X§;
      
      public var § H§:Number = 0;
      
      private var §4! §:Number = 0;
      
      private var §]"#§:Number = 0;
      
      private var §`!#§:§7;§ = null;
      
      private var §8!r§:§7;§ = null;
      
      public function §0!w§(param1:§[!;§, param2:§!"=§, param3:Number = 1.0)
      {
         this.§,!W§ = new §1!X§(0,0,1,false);
         super();
         this.§"!l§ = 0;
         this.§6y§ = 0;
         this.§0!J§ = param1;
         §0!w§.§5@§ = 1;
         this.§1!w§ = Math.max(1,Math.min(2,param3));
         this.§>!h§ = this.§1!w§;
         this.§-a§(param2);
         if(this.§4!x§ && this.§[!2§)
         {
            this.§;!P§();
            this.§07§ = this.§4!x§.x - this.§[!2§.x;
            this.§"!F§ = this.§4!x§.y - this.§[!2§.y;
            this.§2U§ = this.§4!x§.scale - this.§[!2§.scale;
            this.§"!l§ = this.§4!x§.x;
            this.§6y§ = this.§4!x§.y;
            §5@§ = this.§4!x§.scale * this.§>!h§;
         }
         this.mCurrentCameraSliderLocation = §8!w§;
         this.§>c§ = true;
         this.§@P§ = §8!w§ / 500;
      }
      
      private static function §&O§() : Number
      {
         var _loc1_:Number = §9!%§.§=!f§ / §9!%§.§,9§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §7![§() : Number
      {
         return §5@§ * §&O§();
      }
      
      public function get §<f§() : Number
      {
         return this.§>!h§;
      }
      
      public function set §<f§(param1:Number) : void
      {
         this.§>!h§ = param1;
      }
      
      public function get §'v§() : Number
      {
         return this.§5!G§;
      }
      
      public function §!";§() : Number
      {
         return §@6§ / (this.§]"0§ - this.§'k§);
      }
      
      public function get §0>§() : Number
      {
         return this.§1!w§;
      }
      
      public function get §-^§() : Number
      {
         return this.§+!A§;
      }
      
      public function §7!N§(param1:Number) : void
      {
         this.§>!h§ = param1;
         this.§@m§();
         this.§^<§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@]§)
         {
            return;
         }
         this.goToCastleView();
         this.§4!K§ = 2000;
         this.§#!#§();
         this.§^!-§();
         this.§ !G§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§"!l§ = this.§[!2§.x;
         this.§6y§ = this.§[!2§.y;
         this.§>c§ = false;
         this.§@P§ = §8!w§ / 160000 * param1;
         this.§0!z§(§@]§);
      }
      
      public function §;!P§() : void
      {
         this.§'k§ = this.§[!2§.x - §@6§ / this.§[!2§.scale / 2;
         this.§]"0§ = this.§4!x§.x + §@6§ / this.§4!x§.scale / 2;
         this.§0m§ = this.§0!J§.§1!>§.§[_§ - 20 * §[!;§.§%F§ * §[!;§.§4!O§;
         this.§[w§ = this.§0!J§.§1!>§.§[_§ + 4;
         var _loc1_:Number = §@6§ / (this.§]"0§ - this.§'k§);
         this.§5!G§ = this.§[w§ - §"!B§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§0!J§ = null;
      }
      
      public function §-a§(param1:§!"=§) : void
      {
         var _loc3_:§7;§ = null;
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
         while(_loc2_ < param1.§#"'§)
         {
            _loc3_ = param1.§,!'§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§[!D§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §"!B§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §@6§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §6"6§)
            {
               this.§[!2§ = new §]!y§(_loc9_,_loc10_,_loc13_,true);
               this.§%e§ = new §1!X§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §1!h§)
            {
               this.§4!x§ = new §]!y§(_loc9_,_loc10_,_loc13_,false);
               this.§]"?§ = new §1!X§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §'!$§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §<3§(param1:§!"=§) : void
      {
         var _loc2_:§7;§ = new §7;§();
         _loc2_.id = §6"6§;
         _loc2_.x = this.§[!2§.x;
         _loc2_.y = this.§[!2§.y;
         var _loc3_:Number = §@6§ / this.§[!2§.scale / 2;
         var _loc4_:Number = §"!B§ / this.§[!2§.scale / 2;
         _loc2_.left = this.§[!2§.x - _loc3_;
         _loc2_.right = this.§[!2§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§7;§;
         (_loc5_ = new §7;§()).id = §1!h§;
         _loc5_.x = this.§4!x§.x;
         _loc5_.y = this.§4!x§.y;
         var _loc6_:Number = §@6§ / this.§4!x§.scale / 2;
         var _loc7_:Number = §"!B§ / this.§4!x§.scale / 2;
         _loc5_.left = this.§4!x§.x - _loc6_;
         _loc5_.right = this.§4!x§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§&!+§();
         param1.§@!G§(_loc2_);
         param1.§@!G§(_loc5_);
      }
      
      public function §[!D§(param1:§7;§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §9!%§.§^3§ * 0.5 / _loc2_ * §[!;§.§4!O§;
         var _loc4_:Number = param1.y - §9!%§.§&"$§ * 0.5 / _loc2_ * §[!;§.§4!O§;
         var _loc5_:Number = _loc3_ + §9!%§.§^3§ / _loc2_ * §[!;§.§4!O§;
         var _loc6_:Number = _loc4_ + §9!%§.§&"$§ / _loc2_ * §[!;§.§4!O§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §;"B§(param1:§]!y§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§@P§;
         if(_loc3_ >= §8!w§)
         {
            _loc3_ = §8!w§;
            this.§0!z§(§=j§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§0!z§(§=j§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §8"§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§@P§;
         var _loc4_:Number = -§8!w§ * 0.7;
         if(_loc2_ >= §8!w§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §8!w§;
            }
            this.§@P§ = -this.§@P§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §-!n§(param1:Number) : void
      {
         if(this.mCurrentAction == §@]§)
         {
            this.§8"§(param1);
         }
         else if(this.mCurrentAction == §6^§)
         {
            this.§;"B§(this.§4!x§,param1);
         }
         else if(this.mCurrentAction == §@w§)
         {
            this.§;"B§(this.§[!2§,-param1);
         }
         else if(this.mCurrentAction == §3!f§)
         {
            this.§>c§ = true;
         }
         else if(this.mCurrentAction == §,";§)
         {
            this.§[S§(param1);
         }
      }
      
      public function §2"5§(param1:Number) : void
      {
         if(this.§`!#§)
         {
            this.§"!l§ = this.§`!#§.x;
            this.§6y§ = this.§`!#§.y;
            §5@§ = §@6§ / (this.§`!#§.right - this.§`!#§.left);
         }
         else
         {
            this.§@m§();
            this.§-!n§(param1);
            this.§^`§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§#!#§();
         this.§^!-§();
         this.§ !G§();
      }
      
      private function §9'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%e§.scale + (this.§]"?§.scale - this.§%e§.scale) * param1;
         var _loc4_:Number = this.§%e§.x + (this.§]"?§.x - this.§%e§.x) * param1;
         var _loc5_:Number = this.§%e§.y + (this.§]"?§.y - this.§%e§.y) * param1;
         this.§,!W§.x -= (this.§,!W§.x - _loc4_) * param2;
         this.§,!W§.y -= (this.§,!W§.y - _loc5_) * param2;
         this.§,!W§.scale -= (this.§,!W§.scale - _loc3_) * param2;
      }
      
      protected function §^<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§07§ != 0)
         {
            if(!this.§>c§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §8!w§;
            this.§9'§(_loc3_,param2);
            this.§"!l§ = this.§,!W§.x;
            this.§6y§ = this.§,!W§.y;
            §5@§ = this.§,!W§.scale;
         }
      }
      
      public function §^`§(param1:Number, param2:Number) : void
      {
         var _loc5_:§9V§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §8!w§)
         {
            this.§>c§ = true;
         }
         if(this.mCurrentAction == §3!f§)
         {
            if(!this.§0!J§.activeObject)
            {
               this.§0!z§(§6^§);
               this.§-4§ = §#!V§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§0!J§.activeObject).§2"7§().GetPosition().x + (!!_loc5_.§ "1§ ? _loc5_.§ "1§ * §[!;§.§4!O§ : 0);
               _loc7_ = _loc5_.§2"7§().GetPosition().y + (!!_loc5_.§1%§ ? _loc5_.§1%§ * §[!;§.§4!O§ : 0);
               if((_loc8_ = _loc5_.§2"7§().GetLinearVelocity().x) > 0 && this.§07§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§07§ * §8!w§;
               }
               if(param1 >= §8!w§)
               {
                  param1 = §8!w§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §8!w§;
               this.§9'§(_loc9_,_loc4_);
               _loc10_ = this.§,!W§.x - §@6§ * 0.5 / this.§,!W§.scale;
               _loc11_ = this.§,!W§.y - §"!B§ * 0.5 / this.§,!W§.scale;
               _loc12_ = this.§,!W§.x + §@6§ * 0.5 / this.§,!W§.scale;
               _loc13_ = this.§,!W§.y + §"!B§ * 0.5 / this.§,!W§.scale;
               _loc14_ = 150 * §[!;§.§4!O§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§'k§,_loc15_);
               _loc17_ = Math.min(this.§]"0§,_loc17_);
               _loc19_ = Math.abs(§@6§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§"!B§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§,!W§.scale)
               {
                  _loc21_ = this.§,!W§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §@6§ * 0.5 / _loc21_ > this.§]"0§)
               {
                  _loc15_ = (_loc17_ = this.§]"0§) - §@6§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§'k§)
                  {
                     _loc15_ = this.§'k§;
                  }
               }
               if(_loc22_ - §@6§ * 0.5 / _loc21_ < this.§'k§)
               {
                  _loc17_ = (_loc15_ = this.§'k§) + §@6§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§]"0§)
                  {
                     _loc17_ = this.§]"0§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§@6§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §@6§ * 0.5 / _loc21_ < this.§0m§)
               {
                  _loc23_ = this.§0m§ + §@6§ * 0.5 / _loc21_;
               }
               this.§"!l§ -= (this.§"!l§ - _loc22_) * _loc4_;
               this.§ H§ -= (this.§ H§ - _loc21_) * _loc4_;
               §5@§ = this.§ H§;
               this.§6y§ -= (this.§6y§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§]"0§ || _loc6_ <= this.§'k§)
               {
                  this.§,!W§.scale = §5@§;
                  this.§,!W§.x = this.§"!l§;
                  this.§,!W§.y = this.§6y§;
               }
            }
         }
         else
         {
            this.§^<§(param1,_loc4_);
         }
      }
      
      public function §4!Q§(param1:Number, param2:Number) : void
      {
         this.§4! § = param1;
         this.§]"#§ = param2;
      }
      
      private function §+!7§(param1:§1!X§, param2:§]!y§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §0C§ + (param2.scale - §0C§) * this.§>!h§ * §0!w§.§&O§();
         if(§@6§ / param1.scale > this.§]"0§ - this.§'k§)
         {
            _loc3_ = §@6§ / (this.§]"0§ - this.§'k§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §9!_§(param1:§1!X§, param2:§]!y§) : Boolean
      {
         var _loc3_:Boolean = this.§+!7§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §"!B§ * 0.5 / param1.scale;
         var _loc5_:Number = §"!B§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §@6§ * 0.5 / param1.scale) < this.§'k§ && param1.§9!y§)
         {
            param1.x += this.§'k§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §@6§ * 0.5 / param1.scale) > this.§]"0§ && !param1.§9!y§)
         {
            param1.x += this.§]"0§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §3"=§(param1:§1!X§, param2:§]!y§) : Number
      {
         return (param1.scale - §0C§) / (§0!w§.§&O§() * (param2.scale - §0C§));
      }
      
      protected function §@m§() : void
      {
         this.§9!_§(this.§%e§,this.§[!2§);
         var _loc1_:Number = this.§3"=§(this.§%e§,this.§[!2§);
         this.§9!_§(this.§]"?§,this.§4!x§);
         var _loc2_:Number = this.§3"=§(this.§]"?§,this.§4!x§);
         this.§>!h§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §#!#§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§0!J§.sprite)
         {
            _loc1_ = §9!%§.§4"6§() / §9!%§.§=!f§ - §9!%§.§&"$§ >> 1;
            §4!b§ = this.§0!J§.sprite.x = §[!;§.§=!n§ * ((1 - §0!w§.§7![§) / 2);
            §2!b§ = this.§0!J§.sprite.y = _loc1_ + §[!;§.§%F§ * (1 - §0!w§.§7![§) * §+" §.§2O§;
         }
      }
      
      public function § !G§() : void
      {
         if(this.§0!J§.sprite)
         {
            this.§0!J§.sprite.scaleX = §7![§;
            this.§0!J§.sprite.scaleY = §7![§;
         }
      }
      
      public function §^!-§() : void
      {
         var _loc1_:Number = this.§"!l§ / §[!;§.§4!O§ + this.§4! §;
         var _loc2_:Number = this.§6y§ / §[!;§.§4!O§ + this.§]"#§;
         this.§=l§ = _loc1_ - §[!;§.§=!n§ / 2 * §9!%§.§=!f§ / §9!%§.§8X§;
         this.§'w§ = _loc2_ - §[!;§.§%F§ / 2 + §+" §.§4j§;
         if(this.§0!J§.background)
         {
            this.§0!J§.background.§6!>§(this.§=l§,this.§'w§);
         }
         if(this.§0!J§.objects)
         {
            this.§0!J§.objects.§6!>§(this.§=l§,this.§'w§);
         }
         if(this.§0!J§.mLevelEngine)
         {
            this.§0!J§.mLevelEngine.§6!>§(this.§=l§,this.§'w§,§7![§);
         }
         if(this.§0!J§.slingshot)
         {
            this.§0!J§.slingshot.§6!>§(this.§=l§,this.§'w§);
         }
         if(this.§0!J§.particles)
         {
            this.§0!J§.particles.§6!>§(this.§=l§,this.§'w§);
         }
      }
      
      protected function §1!9§() : void
      {
         this.§0!z§(§,";§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§-4§ = -1;
         this.§1!9§();
         this.§^>§ = this.§3!M§ = this.§-"@§ = param1;
         this.§`!j§ = this.§#5§ = this.§="&§ = param2;
         this.§-"6§ = 0;
         this.§,!W§.x = this.§"!l§;
         this.§,!W§.y = this.§6y§;
         this.§,!W§.scale = §5@§;
         this.§ H§ = §5@§;
         if(Math.abs(this.§]"?§.x - this.§%e§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§"!l§ - this.§%e§.x) / (this.§]"?§.x - this.§%e§.x) * §8!w§;
         }
         this.mDragging = true;
      }
      
      public function §[S§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§-"6§ += param1;
         var _loc3_:Number = this.§^>§ - this.§3!M§;
         if(this.§07§ > 0)
         {
            _loc2_ -= _loc3_ * §[!;§.§4!O§ / §7![§ / this.§07§ * §8!w§;
            this.§>c§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§>c§ = true;
            }
            if(_loc2_ > §8!w§)
            {
               _loc2_ += (§8!w§ - _loc2_) * 0.3;
               this.§>c§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§3!M§ = this.§^>§;
      }
      
      protected function §5'§() : Boolean
      {
         return this.mCurrentAction == §,";§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§^>§ = param1;
            this.§`!j§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §,";§)
         {
            this.§0!z§(§=j§);
            if(param1 > 0)
            {
               this.§^>§ = param1;
            }
            _loc3_ = Math.abs(this.§^>§ - this.§-"@§);
            if(this.§-"6§ < §&%§ && _loc3_ >= §true§ && _loc3_ >= §8!h§ * this.§-"6§ / 1000)
            {
               if(this.§^>§ < this.§-"@§)
               {
                  this.§0!z§(§6^§);
               }
               else
               {
                  this.§0!z§(§@w§);
               }
               this.§@P§ = _loc3_ / this.§-"6§ * 10;
               this.§>c§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§>c§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §8!w§)
               {
                  this.§>c§ = true;
               }
            }
            else if(this.§-"6§ < §5`§)
            {
               this.§0"$§();
               this.§@P§ = §8!w§ / (§8!w§ / 500);
               this.§>c§ = true;
            }
            else
            {
               this.§[S§(0);
               this.§-!r§(0);
               this.§@P§ = §8!w§ / (§8!w§ / 500);
               this.§>c§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §0"$§() : void
      {
         if(this.mCurrentAction == §6^§)
         {
            this.§0!z§(§@w§);
         }
         else if(this.mCurrentAction == §@w§)
         {
            this.§0!z§(§6^§);
         }
         else if(this.mCurrentCameraSliderLocation >= §8!w§ / 2)
         {
            this.§0!z§(§@w§);
         }
         else if(this.mCurrentCameraSliderLocation <= §8!w§ / 2)
         {
            this.§0!z§(§6^§);
         }
      }
      
      public function §-!r§(param1:int) : void
      {
         this.§-4§ = param1;
         if(this.mCurrentCameraSliderLocation < §8!w§ / 2)
         {
            this.§0!z§(§@w§);
         }
         else
         {
            this.§0!z§(§6^§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§0!z§(§@w§);
      }
      
      public function goToCastleView() : void
      {
         this.§0!z§(§6^§);
      }
      
      public function §0!z§(param1:int) : void
      {
         this.§,!W§.x = this.§"!l§;
         this.§,!W§.y = this.§6y§;
         this.§,!W§.scale = §5@§;
         this.§ H§ = §5@§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §8!w§)
         {
            return true;
         }
         if(this.mCurrentAction == §6^§)
         {
            return true;
         }
         return false;
      }
      
      public function §1!G§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §@w§)
         {
            return true;
         }
         return false;
      }
      
      public function §8![§(param1:§7;§) : void
      {
         this.§`!#§ = param1;
         if(this.§`!#§ != null)
         {
            this.§8!r§ = new §7;§();
            this.§8!r§.x = this.§"!l§;
            this.§8!r§.y = this.§6y§;
            this.§8!r§.scale = §5@§;
         }
         else
         {
            this.§"!l§ = this.§8!r§.x;
            this.§6y§ = this.§8!r§.y;
            §5@§ = this.§8!r§.scale;
            this.§8!r§ = null;
         }
      }
      
      protected function §`j§() : void
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
         var _loc3_:Number = this.§>!h§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§-^§,Math.min(this.§0>§,_loc3_));
         if(_loc3_ != this.§>!h§)
         {
            this.§>!h§ = _loc3_;
            this.§`j§();
         }
      }
      
      public function §8H§() : Number
      {
         return (this.§<f§ - this.§-^§) / (this.§0>§ - this.§-^§);
      }
      
      public function §=!y§(param1:Number) : void
      {
         this.§<f§ = Math.min(Math.max(param1,0),1) * (this.§0>§ - this.§-^§) + this.§-^§;
      }
      
      public function §7!H§() : void
      {
         this.§>!h§ = Math.max(this.§>!h§ - 0.5,0.5);
      }
      
      public function §=!?§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§>!h§;
         _loc1_ += " mXcenterB2: " + this.§"!l§;
         _loc1_ += " mYcenterB2: " + this.§6y§;
         _loc1_ += " mXcenterB2target: " + this.§>!h§;
         _loc1_ += "\n mYcenterB2target: " + this.§>!h§;
         _loc1_ += " mXcenterB2previous: " + this.§>!h§;
         _loc1_ += " mYcenterB2previous: " + this.§>!h§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§>!h§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§>!h§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§>!h§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§>!h§;
         _loc1_ += " mTargetScale: " + this.§>!h§;
         _loc1_ += " mTargetScalePrevious: " + this.§>!h§;
         _loc1_ += " mCastleCameraX: " + this.§>!h§;
         _loc1_ += "\n mCastleCameraY: " + this.§>!h§;
         _loc1_ += " mCastleCameraScale: " + this.§>!h§;
         _loc1_ += " mBirdCameraX: " + this.§>!h§;
         _loc1_ += " mBirdCameraY: " + this.§>!h§;
         _loc1_ += " mBirdCameraScale: " + this.§>!h§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§>!h§;
         _loc1_ += " mScreenTopScroll: " + this.§>!h§;
         _loc1_ += " mDragging: " + this.§>!h§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§>!h§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§>!h§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§>!h§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§>!h§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§>!h§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§>!h§;
         _loc1_ += " mDraggingTimer: " + this.§>!h§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§>!h§;
         _loc1_ += " mCameraBorderRight: " + this.§>!h§;
         _loc1_ += " mCameraBorderSky: " + this.§>!h§;
         _loc1_ += " mCameraBorderGround: " + this.§>!h§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§>!h§ + "\n ");
      }
   }
}
