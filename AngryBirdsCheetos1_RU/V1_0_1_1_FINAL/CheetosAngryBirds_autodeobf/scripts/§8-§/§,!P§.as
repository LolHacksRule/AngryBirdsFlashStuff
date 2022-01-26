package §8-§
{
   import § N§.§]M§;
   import §0V§.§?0§;
   import §0V§.§`!O§;
   import §39§.§2e§;
   import §39§.§=R§;
   import §3d§.§20§;
   import §^Q§.§,^§;
   
   public class §,!P§
   {
      
      public static const §%!$§:Number = 1.25;
      
      public static const §%;§:Number = 0.15;
      
      public static const §&U§:Number = §,^§.§=!#§ * §`!O§.§?!O§;
      
      public static const §^h§:Number = §,^§.§,n§ * §`!O§.§?!O§;
      
      public static const §5!H§:Number = 0.1;
      
      public static const §8!&§:int = 1500;
      
      public static const §!!'§:int = 10;
      
      public static const §4!J§:int = 15;
      
      public static const §[!?§:int = 300;
      
      public static const §7g§:int = 1000;
      
      public static const §<`§:int = 10000;
      
      public static const §0!0§:int = §<`§ / 50;
      
      public static const §<!§:int = 0;
      
      public static const §2p§:int = 1;
      
      public static const §,7§:int = 2;
      
      public static const §-!0§:int = 3;
      
      public static const §"!>§:int = 4;
      
      public static const §`!F§:int = 5;
      
      public static const §93§:String = "CASTLE";
      
      public static const §`!?§:String = "SLINGSHOT";
      
      protected static var §2z§:Number;
      
      public static var §+!5§:Number;
      
      public static var §^!B§:Number;
      
      public static const §?2§:Number = 2000;
       
      
      private var §;!9§:Number = 1.0;
      
      private var §=!"§:Number = 0.2;
      
      protected var §^!_§:Number;
      
      protected var §;!2§:Number;
      
      protected var §+!§:Number;
      
      public var §!q§:§`!O§;
      
      public var §=M§:Number;
      
      public var §3!3§:Number;
      
      private var §+!C§:§'!$§;
      
      private var §1!1§:§'!$§;
      
      public var §>k§:Number;
      
      public var §<O§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §&&§:Number;
      
      public var §8!$§:Number;
      
      public var §%D§:Number;
      
      public var §5!I§:Number;
      
      private var §!!>§:Number;
      
      private var § u§:§3!A§;
      
      private var §["§:§3!A§;
      
      protected var §=!'§:Number = 0;
      
      protected var §-![§:Number = 0;
      
      protected var §@8§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §5A§:Number = 0;
      
      public var §5!K§:Boolean = true;
      
      public var §^@§:Number = 0;
      
      public var § w§:Number = 0;
      
      public var § !'§:Number = 0;
      
      public var §%W§:Number = 0;
      
      public var §]!5§:Number = 0;
      
      public var §;d§:Number = 0;
      
      public var §'a§:Number = 0;
      
      public var §6v§:Number = 0;
      
      public var §>!N§:Number = 0;
      
      private var §=!I§:§3!A§;
      
      public var §]!>§:Number = 0;
      
      private var §%&§:Number = 0;
      
      private var §2[§:Number = 0;
      
      private var §9,§:§2e§ = null;
      
      private var §@J§:§2e§ = null;
      
      public function §,!P§(param1:§`!O§, param2:§=R§, param3:Number = 1.0)
      {
         this.§=!I§ = new §3!A§(0,0,1,false);
         super();
         this.§;!2§ = 0;
         this.§+!§ = 0;
         this.§!q§ = param1;
         §,!P§.§2z§ = 1;
         this.§;!9§ = Math.max(1,Math.min(2,param3));
         this.§^!_§ = this.§;!9§;
         this.§"s§(param2);
         if(this.§+!C§ && this.§1!1§)
         {
            this.§5k§();
            this.§=!'§ = this.§+!C§.x - this.§1!1§.x;
            this.§-![§ = this.§+!C§.y - this.§1!1§.y;
            this.§@8§ = this.§+!C§.scale - this.§1!1§.scale;
            this.§;!2§ = this.§+!C§.x;
            this.§+!§ = this.§+!C§.y;
            §2z§ = this.§+!C§.scale * this.§^!_§;
         }
         this.mCurrentCameraSliderLocation = §<`§;
         this.§5!K§ = true;
         this.§5A§ = §<`§ / 500;
      }
      
      private static function §6r§() : Number
      {
         var _loc1_:Number = §,^§.§^!a§ / §,^§.§=%§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §#!"§() : Number
      {
         return §2z§ * §6r§();
      }
      
      public function get manualScale() : Number
      {
         return this.§^!_§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§^!_§ = param1;
      }
      
      public function get §1,§() : Number
      {
         return this.§!!>§;
      }
      
      public function §?,§() : Number
      {
         return §&U§ / (this.§8!$§ - this.§&&§);
      }
      
      public function get §extends§() : Number
      {
         return this.§;!9§;
      }
      
      public function get §?! §() : Number
      {
         return this.§=!"§;
      }
      
      public function §0@§(param1:Number) : void
      {
         this.§^!_§ = param1;
         this.§-!3§();
         this.§"!D§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §`!F§)
         {
            return;
         }
         this.goToCastleView();
         this.§^@§ = 2000;
         this.§8d§();
         this.§3p§();
         this.§-!+§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§;!2§ = this.§1!1§.x;
         this.§+!§ = this.§1!1§.y;
         this.§5!K§ = false;
         this.§5A§ = §<`§ / 160000 * param1;
         this.§>U§(§`!F§);
      }
      
      public function §5k§() : void
      {
         this.§&&§ = this.§1!1§.x - §&U§ / this.§1!1§.scale / 2;
         this.§8!$§ = this.§+!C§.x + §&U§ / this.§+!C§.scale / 2;
         this.§%D§ = this.§!q§.§-6§.§+!Z§ - 20 * §`!O§.§80§ * §`!O§.§?!O§;
         this.§5!I§ = this.§!q§.§-6§.§+!Z§ + 4;
         var _loc1_:Number = §&U§ / (this.§8!$§ - this.§&&§);
         this.§!!>§ = this.§5!I§ - §^h§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§!q§ = null;
      }
      
      public function §"s§(param1:§=R§) : void
      {
         var _loc3_:§2e§ = null;
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
         while(_loc2_ < param1.§ V§)
         {
            _loc3_ = param1.§3!_§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§@!N§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §^h§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §&U§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §`!?§)
            {
               this.§1!1§ = new §'!$§(_loc9_,_loc10_,_loc13_,true);
               this.§["§ = new §3!A§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §93§)
            {
               this.§+!C§ = new §'!$§(_loc9_,_loc10_,_loc13_,false);
               this.§ u§ = new §3!A§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §]M§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §3!L§(param1:§=R§) : void
      {
         var _loc2_:§2e§ = new §2e§();
         _loc2_.id = §`!?§;
         _loc2_.x = this.§1!1§.x;
         _loc2_.y = this.§1!1§.y;
         var _loc3_:Number = §&U§ / this.§1!1§.scale / 2;
         var _loc4_:Number = §^h§ / this.§1!1§.scale / 2;
         _loc2_.left = this.§1!1§.x - _loc3_;
         _loc2_.right = this.§1!1§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§2e§;
         (_loc5_ = new §2e§()).id = §93§;
         _loc5_.x = this.§+!C§.x;
         _loc5_.y = this.§+!C§.y;
         var _loc6_:Number = §&U§ / this.§+!C§.scale / 2;
         var _loc7_:Number = §^h§ / this.§+!C§.scale / 2;
         _loc5_.left = this.§+!C§.x - _loc6_;
         _loc5_.right = this.§+!C§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§>![§();
         param1.§^7§(_loc2_);
         param1.§^7§(_loc5_);
      }
      
      public function §@!N§(param1:§2e§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §,^§.§=!#§ * 0.5 / _loc2_ * §`!O§.§?!O§;
         var _loc4_:Number = param1.y - §,^§.§,n§ * 0.5 / _loc2_ * §`!O§.§?!O§;
         var _loc5_:Number = _loc3_ + §,^§.§=!#§ / _loc2_ * §`!O§.§?!O§;
         var _loc6_:Number = _loc4_ + §,^§.§,n§ / _loc2_ * §`!O§.§?!O§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §0!W§(param1:§'!$§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§5A§;
         if(_loc3_ >= §<`§)
         {
            _loc3_ = §<`§;
            this.§>U§(§<!§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§>U§(§<!§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §9d§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§5A§;
         var _loc4_:Number = -§<`§ * 0.7;
         if(_loc2_ >= §<`§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §<`§;
            }
            this.§5A§ = -this.§5A§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §'!]§(param1:Number) : void
      {
         if(this.mCurrentAction == §`!F§)
         {
            this.§9d§(param1);
         }
         else if(this.mCurrentAction == §2p§)
         {
            this.§0!W§(this.§+!C§,param1);
         }
         else if(this.mCurrentAction == §,7§)
         {
            this.§0!W§(this.§1!1§,-param1);
         }
         else if(this.mCurrentAction == §-!0§)
         {
            this.§5!K§ = true;
         }
         else if(this.mCurrentAction == §"!>§)
         {
            this.§7!R§(param1);
         }
      }
      
      public function §%2§(param1:Number) : void
      {
         if(this.§9,§)
         {
            this.§;!2§ = this.§9,§.x;
            this.§+!§ = this.§9,§.y;
            §2z§ = §&U§ / (this.§9,§.right - this.§9,§.left);
         }
         else
         {
            this.§-!3§();
            this.§'!]§(param1);
            this.§2!8§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§8d§();
         this.§3p§();
         this.§-!+§();
      }
      
      private function §1[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§["§.scale + (this.§ u§.scale - this.§["§.scale) * param1;
         var _loc4_:Number = this.§["§.x + (this.§ u§.x - this.§["§.x) * param1;
         var _loc5_:Number = this.§["§.y + (this.§ u§.y - this.§["§.y) * param1;
         this.§=!I§.x -= (this.§=!I§.x - _loc4_) * param2;
         this.§=!I§.y -= (this.§=!I§.y - _loc5_) * param2;
         this.§=!I§.scale -= (this.§=!I§.scale - _loc3_) * param2;
      }
      
      protected function §"!D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§=!'§ != 0)
         {
            if(!this.§5!K§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §<`§;
            this.§1[§(_loc3_,param2);
            this.§;!2§ = this.§=!I§.x;
            this.§+!§ = this.§=!I§.y;
            §2z§ = this.§=!I§.scale;
         }
      }
      
      public function §2!8§(param1:Number, param2:Number) : void
      {
         var _loc5_:§20§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §<`§)
         {
            this.§5!K§ = true;
         }
         if(this.mCurrentAction == §-!0§)
         {
            if(!this.§!q§.activeObject)
            {
               this.§>U§(§2p§);
               this.§>!N§ = §7g§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§!q§.activeObject).§=!,§().GetPosition().x + (!!_loc5_.§",§ ? _loc5_.§",§ * §`!O§.§?!O§ : 0);
               _loc7_ = _loc5_.§=!,§().GetPosition().y + (!!_loc5_.§!!P§ ? _loc5_.§!!P§ * §`!O§.§?!O§ : 0);
               if((_loc8_ = _loc5_.§=!,§().GetLinearVelocity().x) > 0 && this.§=!'§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§=!'§ * §<`§;
               }
               if(param1 >= §<`§)
               {
                  param1 = §<`§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §<`§;
               this.§1[§(_loc9_,_loc4_);
               _loc10_ = this.§=!I§.x - §&U§ * 0.5 / this.§=!I§.scale;
               _loc11_ = this.§=!I§.y - §^h§ * 0.5 / this.§=!I§.scale;
               _loc12_ = this.§=!I§.x + §&U§ * 0.5 / this.§=!I§.scale;
               _loc13_ = this.§=!I§.y + §^h§ * 0.5 / this.§=!I§.scale;
               _loc14_ = 150 * §`!O§.§?!O§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§&&§,_loc15_);
               _loc17_ = Math.min(this.§8!$§,_loc17_);
               _loc19_ = Math.abs(§&U§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§^h§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§=!I§.scale)
               {
                  _loc21_ = this.§=!I§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §&U§ * 0.5 / _loc21_ > this.§8!$§)
               {
                  _loc15_ = (_loc17_ = this.§8!$§) - §&U§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§&&§)
                  {
                     _loc15_ = this.§&&§;
                  }
               }
               if(_loc22_ - §&U§ * 0.5 / _loc21_ < this.§&&§)
               {
                  _loc17_ = (_loc15_ = this.§&&§) + §&U§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§8!$§)
                  {
                     _loc17_ = this.§8!$§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§&U§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §&U§ * 0.5 / _loc21_ < this.§%D§)
               {
                  _loc23_ = this.§%D§ + §&U§ * 0.5 / _loc21_;
               }
               this.§;!2§ -= (this.§;!2§ - _loc22_) * _loc4_;
               this.§]!>§ -= (this.§]!>§ - _loc21_) * _loc4_;
               §2z§ = this.§]!>§;
               this.§+!§ -= (this.§+!§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§8!$§ || _loc6_ <= this.§&&§)
               {
                  this.§=!I§.scale = §2z§;
                  this.§=!I§.x = this.§;!2§;
                  this.§=!I§.y = this.§+!§;
               }
            }
         }
         else
         {
            this.§"!D§(param1,_loc4_);
         }
      }
      
      public function §%!"§(param1:Number, param2:Number) : void
      {
         this.§%&§ = param1;
         this.§2[§ = param2;
      }
      
      private function §7b§(param1:§3!A§, param2:§'!$§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §%;§ + (param2.scale - §%;§) * this.§^!_§ * §,!P§.§6r§();
         if(§&U§ / param1.scale > this.§8!$§ - this.§&&§)
         {
            _loc3_ = §&U§ / (this.§8!$§ - this.§&&§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §,!X§(param1:§3!A§, param2:§'!$§) : Boolean
      {
         var _loc3_:Boolean = this.§7b§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §^h§ * 0.5 / param1.scale;
         var _loc5_:Number = §^h§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §&U§ * 0.5 / param1.scale) < this.§&&§ && param1.§>!0§)
         {
            param1.x += this.§&&§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §&U§ * 0.5 / param1.scale) > this.§8!$§ && !param1.§>!0§)
         {
            param1.x += this.§8!$§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §]!§(param1:§3!A§, param2:§'!$§) : Number
      {
         return (param1.scale - §%;§) / (§,!P§.§6r§() * (param2.scale - §%;§));
      }
      
      protected function §-!3§() : void
      {
         this.§,!X§(this.§["§,this.§1!1§);
         var _loc1_:Number = this.§]!§(this.§["§,this.§1!1§);
         this.§,!X§(this.§ u§,this.§+!C§);
         var _loc2_:Number = this.§]!§(this.§ u§,this.§+!C§);
         this.§^!_§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §8d§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§!q§.sprite)
         {
            _loc1_ = §,^§.§72§() / §,^§.§^!a§ - §,^§.§,n§ >> 1;
            §+!5§ = this.§!q§.sprite.x = §`!O§.§<M§ * ((1 - §,!P§.§#!"§) / 2);
            §^!B§ = this.§!q§.sprite.y = _loc1_ + §`!O§.§80§ * (1 - §,!P§.§#!"§) * §?0§.§[w§;
         }
      }
      
      public function §-!+§() : void
      {
         if(this.§!q§.sprite)
         {
            this.§!q§.sprite.scaleX = §#!"§;
            this.§!q§.sprite.scaleY = §#!"§;
         }
      }
      
      public function §3p§() : void
      {
         var _loc1_:Number = this.§;!2§ / §`!O§.§?!O§ + this.§%&§;
         var _loc2_:Number = this.§+!§ / §`!O§.§?!O§ + this.§2[§;
         this.§>k§ = _loc1_ - §`!O§.§<M§ / 2 * §,^§.§^!a§ / §,^§.§&2§;
         this.§<O§ = _loc2_ - §`!O§.§80§ / 2 + §?0§.§0!]§;
         if(this.§!q§.background)
         {
            this.§!q§.background.§0F§(this.§>k§,this.§<O§);
         }
         if(this.§!q§.objects)
         {
            this.§!q§.objects.§0F§(this.§>k§,this.§<O§);
         }
         if(this.§!q§.mLevelEngine)
         {
            this.§!q§.mLevelEngine.§0F§(this.§>k§,this.§<O§,§#!"§);
         }
         if(this.§!q§.slingshot)
         {
            this.§!q§.slingshot.§0F§(this.§>k§,this.§<O§);
         }
         if(this.§!q§.particles)
         {
            this.§!q§.particles.§0F§(this.§>k§,this.§<O§);
         }
      }
      
      protected function §try §() : void
      {
         this.§>U§(§"!>§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§>!N§ = -1;
         this.§try §();
         this.§]!5§ = this.§'a§ = this.§ !'§ = param1;
         this.§;d§ = this.§6v§ = this.§%W§ = param2;
         this.§ w§ = 0;
         this.§=!I§.x = this.§;!2§;
         this.§=!I§.y = this.§+!§;
         this.§=!I§.scale = §2z§;
         this.§]!>§ = §2z§;
         if(Math.abs(this.§ u§.x - this.§["§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§;!2§ - this.§["§.x) / (this.§ u§.x - this.§["§.x) * §<`§;
         }
         this.mDragging = true;
      }
      
      public function §7!R§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§ w§ += param1;
         var _loc3_:Number = this.§]!5§ - this.§'a§;
         if(this.§=!'§ > 0)
         {
            _loc2_ -= _loc3_ * §`!O§.§?!O§ / §#!"§ / this.§=!'§ * §<`§;
            this.§5!K§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§5!K§ = true;
            }
            if(_loc2_ > §<`§)
            {
               _loc2_ += (§<`§ - _loc2_) * 0.3;
               this.§5!K§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§'a§ = this.§]!5§;
      }
      
      protected function §4!0§() : Boolean
      {
         return this.mCurrentAction == §"!>§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§]!5§ = param1;
            this.§;d§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §"!>§)
         {
            this.§>U§(§<!§);
            if(param1 > 0)
            {
               this.§]!5§ = param1;
            }
            _loc3_ = Math.abs(this.§]!5§ - this.§ !'§);
            if(this.§ w§ < §8!&§ && _loc3_ >= §!!'§ && _loc3_ >= §4!J§ * this.§ w§ / 1000)
            {
               if(this.§]!5§ < this.§ !'§)
               {
                  this.§>U§(§2p§);
               }
               else
               {
                  this.§>U§(§,7§);
               }
               this.§5A§ = _loc3_ / this.§ w§ * 10;
               this.§5!K§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§5!K§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §<`§)
               {
                  this.§5!K§ = true;
               }
            }
            else if(this.§ w§ < §[!?§)
            {
               this.§]!B§();
               this.§5A§ = §<`§ / (§<`§ / 500);
               this.§5!K§ = true;
            }
            else
            {
               this.§7!R§(0);
               this.§8Q§(0);
               this.§5A§ = §<`§ / (§<`§ / 500);
               this.§5!K§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §]!B§() : void
      {
         if(this.mCurrentAction == §2p§)
         {
            this.§>U§(§,7§);
         }
         else if(this.mCurrentAction == §,7§)
         {
            this.§>U§(§2p§);
         }
         else if(this.mCurrentCameraSliderLocation >= §<`§ / 2)
         {
            this.§>U§(§,7§);
         }
         else if(this.mCurrentCameraSliderLocation <= §<`§ / 2)
         {
            this.§>U§(§2p§);
         }
      }
      
      public function §8Q§(param1:int) : void
      {
         this.§>!N§ = param1;
         if(this.mCurrentCameraSliderLocation < §<`§ / 2)
         {
            this.§>U§(§,7§);
         }
         else
         {
            this.§>U§(§2p§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§>U§(§,7§);
      }
      
      public function goToCastleView() : void
      {
         this.§>U§(§2p§);
      }
      
      public function §>U§(param1:int) : void
      {
         this.§=!I§.x = this.§;!2§;
         this.§=!I§.y = this.§+!§;
         this.§=!I§.scale = §2z§;
         this.§]!>§ = §2z§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §<`§)
         {
            return true;
         }
         if(this.mCurrentAction == §2p§)
         {
            return true;
         }
         return false;
      }
      
      public function §[!L§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §,7§)
         {
            return true;
         }
         return false;
      }
      
      public function §@!%§(param1:§2e§) : void
      {
         this.§9,§ = param1;
         if(this.§9,§ != null)
         {
            this.§@J§ = new §2e§();
            this.§@J§.x = this.§;!2§;
            this.§@J§.y = this.§+!§;
            this.§@J§.scale = §2z§;
         }
         else
         {
            this.§;!2§ = this.§@J§.x;
            this.§+!§ = this.§@J§.y;
            §2z§ = this.§@J§.scale;
            this.§@J§ = null;
         }
      }
      
      protected function §7!"§() : void
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
         var _loc3_:Number = this.§^!_§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§?! §,Math.min(this.§extends§,_loc3_));
         if(_loc3_ != this.§^!_§)
         {
            this.§^!_§ = _loc3_;
            this.§7!"§();
         }
      }
      
      public function §0E§() : Number
      {
         return (this.manualScale - this.§?! §) / (this.§extends§ - this.§?! §);
      }
      
      public function §,u§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§extends§ - this.§?! §) + this.§?! §;
      }
      
      public function §&g§() : void
      {
         this.§^!_§ = Math.max(this.§^!_§ - 0.5,0.5);
      }
      
      public function §3A§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§^!_§;
         _loc1_ += " mXcenterB2: " + this.§;!2§;
         _loc1_ += " mYcenterB2: " + this.§+!§;
         _loc1_ += " mXcenterB2target: " + this.§^!_§;
         _loc1_ += "\n mYcenterB2target: " + this.§^!_§;
         _loc1_ += " mXcenterB2previous: " + this.§^!_§;
         _loc1_ += " mYcenterB2previous: " + this.§^!_§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§^!_§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§^!_§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§^!_§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§^!_§;
         _loc1_ += " mTargetScale: " + this.§^!_§;
         _loc1_ += " mTargetScalePrevious: " + this.§^!_§;
         _loc1_ += " mCastleCameraX: " + this.§^!_§;
         _loc1_ += "\n mCastleCameraY: " + this.§^!_§;
         _loc1_ += " mCastleCameraScale: " + this.§^!_§;
         _loc1_ += " mBirdCameraX: " + this.§^!_§;
         _loc1_ += " mBirdCameraY: " + this.§^!_§;
         _loc1_ += " mBirdCameraScale: " + this.§^!_§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§^!_§;
         _loc1_ += " mScreenTopScroll: " + this.§^!_§;
         _loc1_ += " mDragging: " + this.§^!_§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§^!_§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§^!_§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§^!_§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§^!_§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§^!_§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§^!_§;
         _loc1_ += " mDraggingTimer: " + this.§^!_§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§^!_§;
         _loc1_ += " mCameraBorderRight: " + this.§^!_§;
         _loc1_ += " mCameraBorderSky: " + this.§^!_§;
         _loc1_ += " mCameraBorderGround: " + this.§^!_§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§^!_§ + "\n ");
      }
   }
}
