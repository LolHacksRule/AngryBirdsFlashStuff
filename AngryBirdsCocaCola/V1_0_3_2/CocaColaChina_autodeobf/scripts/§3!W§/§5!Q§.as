package §3!W§
{
   import §!!a§.§8=§;
   import §!!a§.§]>§;
   import §4!O§.§&+§;
   import §5!?§.§2!K§;
   import §5!?§.§>"§;
   import §6!Q§.§7!7§;
   import §=F§.§"n§;
   
   public class §5!Q§
   {
      
      public static const §set §:Number = 1.25;
      
      public static const §&!_§:Number = 0.15;
      
      public static const §+!X§:Number = §"n§.§,T§ * §>"§.§'!S§;
      
      public static const §5S§:Number = §"n§.§8-§ * §>"§.§'!S§;
      
      public static const §+h§:Number = 0.1;
      
      public static const §1q§:int = 1500;
      
      public static const §[!A§:int = 10;
      
      public static const §]<§:int = 15;
      
      public static const §%S§:int = 300;
      
      public static const § =§:int = 1000;
      
      public static const §-x§:int = 10000;
      
      public static const §[H§:int = §-x§ / 50;
      
      public static const §40§:int = 0;
      
      public static const §`o§:int = 1;
      
      public static const set:int = 2;
      
      public static const §?4§:int = 3;
      
      public static const §9!1§:int = 4;
      
      public static const §?e§:int = 5;
      
      public static const §4Y§:String = "CASTLE";
      
      public static const §%s§:String = "SLINGSHOT";
      
      protected static var §6g§:Number;
      
      public static var §"!U§:Number;
      
      public static var §[!"§:Number;
      
      public static const §'e§:Number = 2000;
       
      
      private var §0!7§:Number = 1.0;
      
      private var §8s§:Number = 0.2;
      
      protected var §03§:Number;
      
      protected var §7$§:Number;
      
      protected var §7!%§:Number;
      
      public var mLevelMain:§>"§;
      
      public var §&a§:Number;
      
      public var §,i§:Number;
      
      private var §^!^§:§7%§;
      
      private var §0x§:§7%§;
      
      public var §7!1§:Number;
      
      public var §"P§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §;#§:Number;
      
      public var §=!D§:Number;
      
      public var §"§:Number;
      
      public var §@p§:Number;
      
      private var § set§:Number;
      
      private var §@&§:§ S§;
      
      private var §7X§:§ S§;
      
      protected var §!!8§:Number = 0;
      
      protected var §8c§:Number = 0;
      
      protected var §^!T§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1C§:Number = 0;
      
      public var §]n§:Boolean = true;
      
      public var §=l§:Number = 0;
      
      public var §<h§:Number = 0;
      
      public var §%m§:Number = 0;
      
      public var §;!8§:Number = 0;
      
      public var §#8§:Number = 0;
      
      public var §9O§:Number = 0;
      
      public var §,!&§:Number = 0;
      
      public var §]!Q§:Number = 0;
      
      public var §4o§:Number = 0;
      
      private var §5U§:§ S§;
      
      public var §]!J§:Number = 0;
      
      private var §@!I§:Number = 0;
      
      private var §^w§:Number = 0;
      
      private var §'F§:§]>§ = null;
      
      private var §>J§:§]>§ = null;
      
      public function §5!Q§(param1:§>"§, param2:§8=§, param3:Number = 1.0)
      {
         this.§5U§ = new § S§(0,0,1,false);
         super();
         this.§7$§ = 0;
         this.§7!%§ = 0;
         this.mLevelMain = param1;
         §5!Q§.§6g§ = 1;
         this.§0!7§ = Math.max(1,Math.min(2,param3));
         this.§03§ = this.§0!7§;
         this.§1!>§(param2);
         if(this.§^!^§ && this.§0x§)
         {
            this.§6!`§();
            this.§!!8§ = this.§^!^§.x - this.§0x§.x;
            this.§8c§ = this.§^!^§.y - this.§0x§.y;
            this.§^!T§ = this.§^!^§.scale - this.§0x§.scale;
            this.§7$§ = this.§^!^§.x;
            this.§7!%§ = this.§^!^§.y;
            §6g§ = this.§^!^§.scale * this.§03§;
         }
         this.mCurrentCameraSliderLocation = §-x§;
         this.§]n§ = true;
         this.§1C§ = §-x§ / 500;
      }
      
      private static function §7!§() : Number
      {
         var _loc1_:Number = §"n§.§#"§ / §"n§.§+l§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §8!>§() : Number
      {
         return §6g§ * §7!§();
      }
      
      public function get manualScale() : Number
      {
         return this.§03§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§03§ = param1;
      }
      
      public function get §?;§() : Number
      {
         return this.§ set§;
      }
      
      public function §^1§() : Number
      {
         return §+!X§ / (this.§=!D§ - this.§;#§);
      }
      
      public function get §;L§() : Number
      {
         return this.§0!7§;
      }
      
      public function get §+`§() : Number
      {
         return this.§8s§;
      }
      
      public function §90§(param1:Number) : void
      {
         this.§03§ = param1;
         this.§-![§();
         this.§#!K§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §?e§)
         {
            return;
         }
         this.goToCastleView();
         this.§=l§ = 2000;
         this.§6!@§();
         this.§1!L§();
         this.§'T§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7$§ = this.§0x§.x;
         this.§7!%§ = this.§0x§.y;
         this.§]n§ = false;
         this.§1C§ = §-x§ / 160000 * param1;
         this.§3!Q§(§?e§);
      }
      
      public function §6!`§() : void
      {
         this.§;#§ = this.§0x§.x - §+!X§ / this.§0x§.scale / 2;
         this.§=!D§ = this.§^!^§.x + §+!X§ / this.§^!^§.scale / 2;
         this.§"§ = this.mLevelMain.§>!J§.§09§ - 20 * §>"§.§+!9§ * §>"§.§'!S§;
         this.§@p§ = this.mLevelMain.§>!J§.§09§ + 4;
         var _loc1_:Number = §+!X§ / (this.§=!D§ - this.§;#§);
         this.§ set§ = this.§@p§ - §5S§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §1!>§(param1:§8=§) : void
      {
         var _loc3_:§]>§ = null;
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
         while(_loc2_ < param1.§=j§)
         {
            _loc3_ = param1.§=![§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§^!3§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §5S§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §+!X§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §%s§)
            {
               this.§0x§ = new §7%§(_loc9_,_loc10_,_loc13_,true);
               this.§7X§ = new § S§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §4Y§)
            {
               this.§^!^§ = new §7%§(_loc9_,_loc10_,_loc13_,false);
               this.§@&§ = new § S§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §7!7§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §2z§(param1:§8=§) : void
      {
         var _loc2_:§]>§ = new §]>§();
         _loc2_.id = §%s§;
         _loc2_.x = this.§0x§.x;
         _loc2_.y = this.§0x§.y;
         var _loc3_:Number = §+!X§ / this.§0x§.scale / 2;
         var _loc4_:Number = §5S§ / this.§0x§.scale / 2;
         _loc2_.left = this.§0x§.x - _loc3_;
         _loc2_.right = this.§0x§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§]>§;
         (_loc5_ = new §]>§()).id = §4Y§;
         _loc5_.x = this.§^!^§.x;
         _loc5_.y = this.§^!^§.y;
         var _loc6_:Number = §+!X§ / this.§^!^§.scale / 2;
         var _loc7_:Number = §5S§ / this.§^!^§.scale / 2;
         _loc5_.left = this.§^!^§.x - _loc6_;
         _loc5_.right = this.§^!^§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§!8§();
         param1.§;!D§(_loc2_);
         param1.§;!D§(_loc5_);
      }
      
      public function §^!3§(param1:§]>§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §"n§.§,T§ * 0.5 / _loc2_ * §>"§.§'!S§;
         var _loc4_:Number = param1.y - §"n§.§8-§ * 0.5 / _loc2_ * §>"§.§'!S§;
         var _loc5_:Number = _loc3_ + §"n§.§,T§ / _loc2_ * §>"§.§'!S§;
         var _loc6_:Number = _loc4_ + §"n§.§8-§ / _loc2_ * §>"§.§'!S§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §2I§(param1:§7%§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1C§;
         if(_loc3_ >= §-x§)
         {
            _loc3_ = §-x§;
            this.§3!Q§(§40§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§3!Q§(§40§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §2'§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1C§;
         var _loc4_:Number = -§-x§ * 0.7;
         if(_loc2_ >= §-x§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §-x§;
            }
            this.§1C§ = -this.§1C§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §`!>§(param1:Number) : void
      {
         if(this.mCurrentAction == §?e§)
         {
            this.§2'§(param1);
         }
         else if(this.mCurrentAction == §`o§)
         {
            this.§2I§(this.§^!^§,param1);
         }
         else if(this.mCurrentAction == set)
         {
            this.§2I§(this.§0x§,-param1);
         }
         else if(this.mCurrentAction == §?4§)
         {
            this.§]n§ = true;
         }
         else if(this.mCurrentAction == §9!1§)
         {
            this.§>r§(param1);
         }
      }
      
      public function §`w§(param1:Number) : void
      {
         if(this.§'F§)
         {
            this.§7$§ = this.§'F§.x;
            this.§7!%§ = this.§'F§.y;
            §6g§ = §+!X§ / (this.§'F§.right - this.§'F§.left);
         }
         else
         {
            this.§-![§();
            this.§`!>§(param1);
            this.§+!C§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§6!@§();
         this.§1!L§();
         this.§'T§();
      }
      
      private function §&!,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7X§.scale + (this.§@&§.scale - this.§7X§.scale) * param1;
         var _loc4_:Number = this.§7X§.x + (this.§@&§.x - this.§7X§.x) * param1;
         var _loc5_:Number = this.§7X§.y + (this.§@&§.y - this.§7X§.y) * param1;
         this.§5U§.x -= (this.§5U§.x - _loc4_) * param2;
         this.§5U§.y -= (this.§5U§.y - _loc5_) * param2;
         this.§5U§.scale -= (this.§5U§.scale - _loc3_) * param2;
      }
      
      protected function §#!K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!!8§ != 0)
         {
            if(!this.§]n§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §-x§;
            this.§&!,§(_loc3_,param2);
            this.§7$§ = this.§5U§.x;
            this.§7!%§ = this.§5U§.y;
            §6g§ = this.§5U§.scale;
         }
      }
      
      public function §+!C§(param1:Number, param2:Number) : void
      {
         var _loc5_:§&+§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §-x§)
         {
            this.§]n§ = true;
         }
         if(this.mCurrentAction == §?4§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.§3!Q§(§`o§);
               this.§4o§ = § =§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§?!7§().GetPosition().x + (!!_loc5_.§#!9§ ? _loc5_.§#!9§ * §>"§.§'!S§ : 0);
               _loc7_ = _loc5_.§?!7§().GetPosition().y + (!!_loc5_.§%u§ ? _loc5_.§%u§ * §>"§.§'!S§ : 0);
               if((_loc8_ = _loc5_.§?!7§().GetLinearVelocity().x) > 0 && this.§!!8§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§!!8§ * §-x§;
               }
               if(param1 >= §-x§)
               {
                  param1 = §-x§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §-x§;
               this.§&!,§(_loc9_,_loc4_);
               _loc10_ = this.§5U§.x - §+!X§ * 0.5 / this.§5U§.scale;
               _loc11_ = this.§5U§.y - §5S§ * 0.5 / this.§5U§.scale;
               _loc12_ = this.§5U§.x + §+!X§ * 0.5 / this.§5U§.scale;
               _loc13_ = this.§5U§.y + §5S§ * 0.5 / this.§5U§.scale;
               _loc14_ = 150 * §>"§.§'!S§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§;#§,_loc15_);
               _loc17_ = Math.min(this.§=!D§,_loc17_);
               _loc19_ = Math.abs(§+!X§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§5S§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§5U§.scale)
               {
                  _loc21_ = this.§5U§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §+!X§ * 0.5 / _loc21_ > this.§=!D§)
               {
                  _loc15_ = (_loc17_ = this.§=!D§) - §+!X§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§;#§)
                  {
                     _loc15_ = this.§;#§;
                  }
               }
               if(_loc22_ - §+!X§ * 0.5 / _loc21_ < this.§;#§)
               {
                  _loc17_ = (_loc15_ = this.§;#§) + §+!X§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§=!D§)
                  {
                     _loc17_ = this.§=!D§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§+!X§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §+!X§ * 0.5 / _loc21_ < this.§"§)
               {
                  _loc23_ = this.§"§ + §+!X§ * 0.5 / _loc21_;
               }
               this.§7$§ -= (this.§7$§ - _loc22_) * _loc4_;
               this.§]!J§ -= (this.§]!J§ - _loc21_) * _loc4_;
               §6g§ = this.§]!J§;
               this.§7!%§ -= (this.§7!%§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§=!D§ || _loc6_ <= this.§;#§)
               {
                  this.§5U§.scale = §6g§;
                  this.§5U§.x = this.§7$§;
                  this.§5U§.y = this.§7!%§;
               }
            }
         }
         else
         {
            this.§#!K§(param1,_loc4_);
         }
      }
      
      public function §%_§(param1:Number, param2:Number) : void
      {
         this.§@!I§ = param1;
         this.§^w§ = param2;
      }
      
      private function §'w§(param1:§ S§, param2:§7%§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §&!_§ + (param2.scale - §&!_§) * this.§03§ * §5!Q§.§7!§();
         if(§+!X§ / param1.scale > this.§=!D§ - this.§;#§)
         {
            _loc3_ = §+!X§ / (this.§=!D§ - this.§;#§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §`!O§(param1:§ S§, param2:§7%§) : Boolean
      {
         var _loc3_:Boolean = this.§'w§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §5S§ * 0.5 / param1.scale;
         var _loc5_:Number = §5S§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §+!X§ * 0.5 / param1.scale) < this.§;#§ && param1.§3-§)
         {
            param1.x += this.§;#§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §+!X§ * 0.5 / param1.scale) > this.§=!D§ && !param1.§3-§)
         {
            param1.x += this.§=!D§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §&y§(param1:§ S§, param2:§7%§) : Number
      {
         return (param1.scale - §&!_§) / (§5!Q§.§7!§() * (param2.scale - §&!_§));
      }
      
      protected function §-![§() : void
      {
         this.§`!O§(this.§7X§,this.§0x§);
         var _loc1_:Number = this.§&y§(this.§7X§,this.§0x§);
         this.§`!O§(this.§@&§,this.§^!^§);
         var _loc2_:Number = this.§&y§(this.§@&§,this.§^!^§);
         this.§03§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §6!@§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §"n§.§7-§() / §"n§.§#"§ - §"n§.§8-§ >> 1;
            §"!U§ = this.mLevelMain.sprite.x = §>"§.§8!H§ * ((1 - §5!Q§.§8!>§) / 2);
            §[!"§ = this.mLevelMain.sprite.y = _loc1_ + §>"§.§+!9§ * (1 - §5!Q§.§8!>§) * §2!K§.§-K§;
         }
      }
      
      public function §'T§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §8!>§;
            this.mLevelMain.sprite.scaleY = §8!>§;
         }
      }
      
      public function §1!L§() : void
      {
         var _loc1_:Number = this.§7$§ / §>"§.§'!S§ + this.§@!I§;
         var _loc2_:Number = this.§7!%§ / §>"§.§'!S§ + this.§^w§;
         this.§7!1§ = _loc1_ - §>"§.§8!H§ / 2 * §"n§.§#"§ / §"n§.§9d§;
         this.§"P§ = _loc2_ - §>"§.§+!9§ / 2 + §2!K§.§1!Y§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§%!T§(this.§7!1§,this.§"P§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§%!T§(this.§7!1§,this.§"P§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§%!T§(this.§7!1§,this.§"P§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§%!T§(this.§7!1§,this.§"P§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§%!T§(this.§7!1§,this.§"P§);
         }
      }
      
      protected function §7!V§() : void
      {
         this.§3!Q§(§9!1§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§4o§ = -1;
         this.§7!V§();
         this.§#8§ = this.§,!&§ = this.§%m§ = param1;
         this.§9O§ = this.§]!Q§ = this.§;!8§ = param2;
         this.§<h§ = 0;
         this.§5U§.x = this.§7$§;
         this.§5U§.y = this.§7!%§;
         this.§5U§.scale = §6g§;
         this.§]!J§ = §6g§;
         if(Math.abs(this.§@&§.x - this.§7X§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7$§ - this.§7X§.x) / (this.§@&§.x - this.§7X§.x) * §-x§;
         }
         this.mDragging = true;
      }
      
      public function §>r§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§<h§ += param1;
         var _loc3_:Number = this.§#8§ - this.§,!&§;
         if(this.§!!8§ > 0)
         {
            _loc2_ -= _loc3_ * §>"§.§'!S§ / §8!>§ / this.§!!8§ * §-x§;
            this.§]n§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§]n§ = true;
            }
            if(_loc2_ > §-x§)
            {
               _loc2_ += (§-x§ - _loc2_) * 0.3;
               this.§]n§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§,!&§ = this.§#8§;
      }
      
      protected function §-!6§() : Boolean
      {
         return this.mCurrentAction == §9!1§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§#8§ = param1;
            this.§9O§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §9!1§)
         {
            this.§3!Q§(§40§);
            if(param1 > 0)
            {
               this.§#8§ = param1;
            }
            _loc3_ = Math.abs(this.§#8§ - this.§%m§);
            if(this.§<h§ < §1q§ && _loc3_ >= §[!A§ && _loc3_ >= §]<§ * this.§<h§ / 1000)
            {
               if(this.§#8§ < this.§%m§)
               {
                  this.§3!Q§(§`o§);
               }
               else
               {
                  this.§3!Q§(set);
               }
               this.§1C§ = _loc3_ / this.§<h§ * 10;
               this.§]n§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§]n§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §-x§)
               {
                  this.§]n§ = true;
               }
            }
            else if(this.§<h§ < §%S§)
            {
               this.§^`§();
               this.§1C§ = §-x§ / (§-x§ / 500);
               this.§]n§ = true;
            }
            else
            {
               this.§>r§(0);
               this.§9!Z§(0);
               this.§1C§ = §-x§ / (§-x§ / 500);
               this.§]n§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §^`§() : void
      {
         if(this.mCurrentAction == §`o§)
         {
            this.§3!Q§(set);
         }
         else if(this.mCurrentAction == set)
         {
            this.§3!Q§(§`o§);
         }
         else if(this.mCurrentCameraSliderLocation >= §-x§ / 2)
         {
            this.§3!Q§(set);
         }
         else if(this.mCurrentCameraSliderLocation <= §-x§ / 2)
         {
            this.§3!Q§(§`o§);
         }
      }
      
      public function §9!Z§(param1:int) : void
      {
         this.§4o§ = param1;
         if(this.mCurrentCameraSliderLocation < §-x§ / 2)
         {
            this.§3!Q§(set);
         }
         else
         {
            this.§3!Q§(§`o§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§3!Q§(set);
      }
      
      public function goToCastleView() : void
      {
         this.§3!Q§(§`o§);
      }
      
      public function §3!Q§(param1:int) : void
      {
         this.§5U§.x = this.§7$§;
         this.§5U§.y = this.§7!%§;
         this.§5U§.scale = §6g§;
         this.§]!J§ = §6g§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §-x§)
         {
            return true;
         }
         if(this.mCurrentAction == §`o§)
         {
            return true;
         }
         return false;
      }
      
      public function §[S§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == set)
         {
            return true;
         }
         return false;
      }
      
      public function § else§(param1:§]>§) : void
      {
         this.§'F§ = param1;
         if(this.§'F§ != null)
         {
            this.§>J§ = new §]>§();
            this.§>J§.x = this.§7$§;
            this.§>J§.y = this.§7!%§;
            this.§>J§.scale = §6g§;
         }
         else
         {
            this.§7$§ = this.§>J§.x;
            this.§7!%§ = this.§>J§.y;
            §6g§ = this.§>J§.scale;
            this.§>J§ = null;
         }
      }
      
      protected function §>!=§() : void
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
         var _loc3_:Number = this.§03§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§+`§,Math.min(this.§;L§,_loc3_));
         if(_loc3_ != this.§03§)
         {
            this.§03§ = _loc3_;
            this.§>!=§();
         }
      }
      
      public function §&K§() : Number
      {
         return (this.manualScale - this.§+`§) / (this.§;L§ - this.§+`§);
      }
      
      public function §8!X§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§;L§ - this.§+`§) + this.§+`§;
      }
      
      public function §,8§() : void
      {
         this.§03§ = Math.max(this.§03§ - 0.5,0.5);
      }
      
      public function §1!T§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§03§;
         _loc1_ += " mXcenterB2: " + this.§7$§;
         _loc1_ += " mYcenterB2: " + this.§7!%§;
         _loc1_ += " mXcenterB2target: " + this.§03§;
         _loc1_ += "\n mYcenterB2target: " + this.§03§;
         _loc1_ += " mXcenterB2previous: " + this.§03§;
         _loc1_ += " mYcenterB2previous: " + this.§03§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§03§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§03§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§03§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§03§;
         _loc1_ += " mTargetScale: " + this.§03§;
         _loc1_ += " mTargetScalePrevious: " + this.§03§;
         _loc1_ += " mCastleCameraX: " + this.§03§;
         _loc1_ += "\n mCastleCameraY: " + this.§03§;
         _loc1_ += " mCastleCameraScale: " + this.§03§;
         _loc1_ += " mBirdCameraX: " + this.§03§;
         _loc1_ += " mBirdCameraY: " + this.§03§;
         _loc1_ += " mBirdCameraScale: " + this.§03§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§03§;
         _loc1_ += " mScreenTopScroll: " + this.§03§;
         _loc1_ += " mDragging: " + this.§03§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§03§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§03§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§03§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§03§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§03§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§03§;
         _loc1_ += " mDraggingTimer: " + this.§03§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§03§;
         _loc1_ += " mCameraBorderRight: " + this.§03§;
         _loc1_ += " mCameraBorderSky: " + this.§03§;
         _loc1_ += " mCameraBorderGround: " + this.§03§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§03§ + "\n ");
      }
   }
}
