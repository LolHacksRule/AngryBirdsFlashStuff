package §9!4§
{
   import §"!I§.§^!2§;
   import §"!I§.§`@§;
   import §+!8§.§,_§;
   import §9b§.§"!S§;
   import §@R§.§4,§;
   import §^!5§.§&!E§;
   import §^!5§.§&m§;
   
   public class §95§
   {
      
      public static const §-Y§:Number = 1.25;
      
      public static const §2_§:Number = 0.15;
      
      public static const §@,§:Number = §"!S§.§3i§ * §^!2§.§3!S§;
      
      public static const §=r§:Number = §"!S§.§!!d§ * §^!2§.§3!S§;
      
      public static const §>l§:Number = 0.1;
      
      public static const §;§:int = 1500;
      
      public static const §^N§:int = 10;
      
      public static const §]h§:int = 15;
      
      public static const §!!?§:int = 300;
      
      public static const §%!!§:int = 1000;
      
      public static const §6b§:int = 10000;
      
      public static const §-!A§:int = §6b§ / 50;
      
      public static const §3Z§:int = 0;
      
      public static const §7!1§:int = 1;
      
      public static const §+]§:int = 2;
      
      public static const §7B§:int = 3;
      
      public static const §9Q§:int = 4;
      
      public static const §!!G§:int = 5;
      
      public static const §!!V§:String = "CASTLE";
      
      public static const §>!5§:String = "SLINGSHOT";
      
      protected static var §7X§:Number;
      
      public static var §02§:Number;
      
      public static var §"M§:Number;
      
      public static const §'C§:Number = 2000;
       
      
      private var §@>§:Number = 1.0;
      
      private var §=v§:Number = 0.2;
      
      protected var §4Z§:Number;
      
      protected var § =§:Number;
      
      protected var §]!?§:Number;
      
      public var §=!V§:§^!2§;
      
      public var §35§:Number;
      
      public var §1#§:Number;
      
      private var §&!Z§:§8!A§;
      
      private var §1!Y§:§8!A§;
      
      public var §7r§:Number;
      
      public var §4k§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §#!J§:Number;
      
      public var §06§:Number;
      
      public var §-8§:Number;
      
      public var §<e§:Number;
      
      private var §0d§:Number;
      
      private var §6§:§6f§;
      
      private var §8I§:§6f§;
      
      protected var §`z§:Number = 0;
      
      protected var §!!I§:Number = 0;
      
      protected var §4!M§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §+'§:Number = 0;
      
      public var §[!e§:Boolean = true;
      
      public var §6!%§:Number = 0;
      
      public var §6O§:Number = 0;
      
      public var §,!B§:Number = 0;
      
      public var §'!1§:Number = 0;
      
      public var §9!G§:Number = 0;
      
      public var §@M§:Number = 0;
      
      public var §"+§:Number = 0;
      
      public var §%G§:Number = 0;
      
      public var §]z§:Number = 0;
      
      private var §!y§:§6f§;
      
      public var §8!P§:Number = 0;
      
      private var §6!2§:Number = 0;
      
      private var §4]§:Number = 0;
      
      private var §8!,§:§&m§ = null;
      
      private var § !f§:§&m§ = null;
      
      public function §95§(param1:§^!2§, param2:§&!E§, param3:Number = 1.0)
      {
         this.§!y§ = new §6f§(0,0,1,false);
         super();
         this.§ =§ = 0;
         this.§]!?§ = 0;
         this.§=!V§ = param1;
         §95§.§7X§ = 1;
         this.§@>§ = Math.max(1,Math.min(2,param3));
         this.§4Z§ = this.§@>§;
         this.§"!M§(param2);
         if(this.§&!Z§ && this.§1!Y§)
         {
            this.§%!E§();
            this.§`z§ = this.§&!Z§.x - this.§1!Y§.x;
            this.§!!I§ = this.§&!Z§.y - this.§1!Y§.y;
            this.§4!M§ = this.§&!Z§.scale - this.§1!Y§.scale;
            this.§ =§ = this.§&!Z§.x;
            this.§]!?§ = this.§&!Z§.y;
            §7X§ = this.§&!Z§.scale * this.§4Z§;
         }
         this.mCurrentCameraSliderLocation = §6b§;
         this.§[!e§ = true;
         this.§+'§ = §6b§ / 500;
      }
      
      private static function §7`§() : Number
      {
         var _loc1_:Number = §"!S§.§<!4§ / §"!S§.§[=§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §3d§() : Number
      {
         return §7X§ * §7`§();
      }
      
      public function get manualScale() : Number
      {
         return this.§4Z§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§4Z§ = param1;
      }
      
      public function get §<P§() : Number
      {
         return this.§0d§;
      }
      
      public function §8!#§() : Number
      {
         return §@,§ / (this.§06§ - this.§#!J§);
      }
      
      public function get §'`§() : Number
      {
         return this.§@>§;
      }
      
      public function get §82§() : Number
      {
         return this.§=v§;
      }
      
      public function §5s§(param1:Number) : void
      {
         this.§4Z§ = param1;
         this.§@'§();
         this.§<!M§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §!!G§)
         {
            return;
         }
         this.goToCastleView();
         this.§6!%§ = 2000;
         this.§'?§();
         this.§1I§();
         this.§,u§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§ =§ = this.§1!Y§.x;
         this.§]!?§ = this.§1!Y§.y;
         this.§[!e§ = false;
         this.§+'§ = §6b§ / 160000 * param1;
         this.§#M§(§!!G§);
      }
      
      public function §%!E§() : void
      {
         this.§#!J§ = this.§1!Y§.x - §@,§ / this.§1!Y§.scale / 2;
         this.§06§ = this.§&!Z§.x + §@,§ / this.§&!Z§.scale / 2;
         this.§-8§ = this.§=!V§.§8z§.§"N§ - 20 * §^!2§.§"!E§ * §^!2§.§3!S§;
         this.§<e§ = this.§=!V§.§8z§.§"N§ + 4;
         var _loc1_:Number = §@,§ / (this.§06§ - this.§#!J§);
         this.§0d§ = this.§<e§ - §=r§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§=!V§ = null;
      }
      
      public function §"!M§(param1:§&!E§) : void
      {
         var _loc3_:§&m§ = null;
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
         while(_loc2_ < param1.§7D§)
         {
            _loc3_ = param1.§`b§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§ u§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §=r§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(§@,§ / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §>!5§)
            {
               this.§1!Y§ = new §8!A§(_loc9_,_loc10_,_loc13_,true);
               this.§8I§ = new §6f§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §!!V§)
            {
               this.§&!Z§ = new §8!A§(_loc9_,_loc10_,_loc13_,false);
               this.§6§ = new §6f§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §4,§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §"E§(param1:§&!E§) : void
      {
         var _loc2_:§&m§ = new §&m§();
         _loc2_.id = §>!5§;
         _loc2_.x = this.§1!Y§.x;
         _loc2_.y = this.§1!Y§.y;
         var _loc3_:Number = §@,§ / this.§1!Y§.scale / 2;
         var _loc4_:Number = §=r§ / this.§1!Y§.scale / 2;
         _loc2_.left = this.§1!Y§.x - _loc3_;
         _loc2_.right = this.§1!Y§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§&m§;
         (_loc5_ = new §&m§()).id = §!!V§;
         _loc5_.x = this.§&!Z§.x;
         _loc5_.y = this.§&!Z§.y;
         var _loc6_:Number = §@,§ / this.§&!Z§.scale / 2;
         var _loc7_:Number = §=r§ / this.§&!Z§.scale / 2;
         _loc5_.left = this.§&!Z§.x - _loc6_;
         _loc5_.right = this.§&!Z§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§;!J§();
         param1.§1!L§(_loc2_);
         param1.§1!L§(_loc5_);
      }
      
      public function § u§(param1:§&m§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §"!S§.§3i§ * 0.5 / _loc2_ * §^!2§.§3!S§;
         var _loc4_:Number = param1.y - §"!S§.§!!d§ * 0.5 / _loc2_ * §^!2§.§3!S§;
         var _loc5_:Number = _loc3_ + §"!S§.§3i§ / _loc2_ * §^!2§.§3!S§;
         var _loc6_:Number = _loc4_ + §"!S§.§!!d§ / _loc2_ * §^!2§.§3!S§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §6I§(param1:§8!A§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§+'§;
         if(_loc3_ >= §6b§)
         {
            _loc3_ = §6b§;
            this.§#M§(§3Z§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§#M§(§3Z§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §4!V§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§+'§;
         var _loc4_:Number = -§6b§ * 0.7;
         if(_loc2_ >= §6b§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §6b§;
            }
            this.§+'§ = -this.§+'§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §"Q§(param1:Number) : void
      {
         if(this.mCurrentAction == §!!G§)
         {
            this.§4!V§(param1);
         }
         else if(this.mCurrentAction == §7!1§)
         {
            this.§6I§(this.§&!Z§,param1);
         }
         else if(this.mCurrentAction == §+]§)
         {
            this.§6I§(this.§1!Y§,-param1);
         }
         else if(this.mCurrentAction == §7B§)
         {
            this.§[!e§ = true;
         }
         else if(this.mCurrentAction == §9Q§)
         {
            this.§]!I§(param1);
         }
      }
      
      public function §4"§(param1:Number) : void
      {
         if(this.§8!,§)
         {
            this.§ =§ = this.§8!,§.x;
            this.§]!?§ = this.§8!,§.y;
            §7X§ = §@,§ / (this.§8!,§.right - this.§8!,§.left);
         }
         else
         {
            this.§@'§();
            this.§"Q§(param1);
            this.§3!N§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§'?§();
         this.§1I§();
         this.§,u§();
      }
      
      private function §'5§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§8I§.scale + (this.§6§.scale - this.§8I§.scale) * param1;
         var _loc4_:Number = this.§8I§.x + (this.§6§.x - this.§8I§.x) * param1;
         var _loc5_:Number = this.§8I§.y + (this.§6§.y - this.§8I§.y) * param1;
         this.§!y§.x -= (this.§!y§.x - _loc4_) * param2;
         this.§!y§.y -= (this.§!y§.y - _loc5_) * param2;
         this.§!y§.scale -= (this.§!y§.scale - _loc3_) * param2;
      }
      
      protected function §<!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`z§ != 0)
         {
            if(!this.§[!e§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §6b§;
            this.§'5§(_loc3_,param2);
            this.§ =§ = this.§!y§.x;
            this.§]!?§ = this.§!y§.y;
            §7X§ = this.§!y§.scale;
         }
      }
      
      public function §3!N§(param1:Number, param2:Number) : void
      {
         var _loc5_:§,_§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §6b§)
         {
            this.§[!e§ = true;
         }
         if(this.mCurrentAction == §7B§)
         {
            if(!this.§=!V§.activeObject)
            {
               this.§#M§(§7!1§);
               this.§]z§ = §%!!§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§=!V§.activeObject).§0c§().GetPosition().x + (!!_loc5_.§=H§ ? _loc5_.§=H§ * §^!2§.§3!S§ : 0);
               _loc7_ = _loc5_.§0c§().GetPosition().y + (!!_loc5_.§]g§ ? _loc5_.§]g§ * §^!2§.§3!S§ : 0);
               if((_loc8_ = _loc5_.§0c§().GetLinearVelocity().x) > 0 && this.§`z§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§`z§ * §6b§;
               }
               if(param1 >= §6b§)
               {
                  param1 = §6b§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §6b§;
               this.§'5§(_loc9_,_loc4_);
               _loc10_ = this.§!y§.x - §@,§ * 0.5 / this.§!y§.scale;
               _loc11_ = this.§!y§.y - §=r§ * 0.5 / this.§!y§.scale;
               _loc12_ = this.§!y§.x + §@,§ * 0.5 / this.§!y§.scale;
               _loc13_ = this.§!y§.y + §=r§ * 0.5 / this.§!y§.scale;
               _loc14_ = 150 * §^!2§.§3!S§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§#!J§,_loc15_);
               _loc17_ = Math.min(this.§06§,_loc17_);
               _loc19_ = Math.abs(§@,§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§=r§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§!y§.scale)
               {
                  _loc21_ = this.§!y§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §@,§ * 0.5 / _loc21_ > this.§06§)
               {
                  _loc15_ = (_loc17_ = this.§06§) - §@,§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§#!J§)
                  {
                     _loc15_ = this.§#!J§;
                  }
               }
               if(_loc22_ - §@,§ * 0.5 / _loc21_ < this.§#!J§)
               {
                  _loc17_ = (_loc15_ = this.§#!J§) + §@,§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§06§)
                  {
                     _loc17_ = this.§06§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§@,§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §@,§ * 0.5 / _loc21_ < this.§-8§)
               {
                  _loc23_ = this.§-8§ + §@,§ * 0.5 / _loc21_;
               }
               this.§ =§ -= (this.§ =§ - _loc22_) * _loc4_;
               this.§8!P§ -= (this.§8!P§ - _loc21_) * _loc4_;
               §7X§ = this.§8!P§;
               this.§]!?§ -= (this.§]!?§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§06§ || _loc6_ <= this.§#!J§)
               {
                  this.§!y§.scale = §7X§;
                  this.§!y§.x = this.§ =§;
                  this.§!y§.y = this.§]!?§;
               }
            }
         }
         else
         {
            this.§<!M§(param1,_loc4_);
         }
      }
      
      public function §^!9§(param1:Number, param2:Number) : void
      {
         this.§6!2§ = param1;
         this.§4]§ = param2;
      }
      
      private function §catch§(param1:§6f§, param2:§8!A§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §2_§ + (param2.scale - §2_§) * this.§4Z§ * §95§.§7`§();
         if(§@,§ / param1.scale > this.§06§ - this.§#!J§)
         {
            _loc3_ = §@,§ / (this.§06§ - this.§#!J§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §?y§(param1:§6f§, param2:§8!A§) : Boolean
      {
         var _loc3_:Boolean = this.§catch§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §=r§ * 0.5 / param1.scale;
         var _loc5_:Number = §=r§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §@,§ * 0.5 / param1.scale) < this.§#!J§ && param1.§5!6§)
         {
            param1.x += this.§#!J§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §@,§ * 0.5 / param1.scale) > this.§06§ && !param1.§5!6§)
         {
            param1.x += this.§06§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §5!U§(param1:§6f§, param2:§8!A§) : Number
      {
         return (param1.scale - §2_§) / (§95§.§7`§() * (param2.scale - §2_§));
      }
      
      protected function §@'§() : void
      {
         this.§?y§(this.§8I§,this.§1!Y§);
         var _loc1_:Number = this.§5!U§(this.§8I§,this.§1!Y§);
         this.§?y§(this.§6§,this.§&!Z§);
         var _loc2_:Number = this.§5!U§(this.§6§,this.§&!Z§);
         this.§4Z§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §'?§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§=!V§.sprite)
         {
            _loc1_ = §"!S§.§4w§() / §"!S§.§<!4§ - §"!S§.§!!d§ >> 1;
            §02§ = this.§=!V§.sprite.x = §^!2§.§@!@§ * ((1 - §95§.§3d§) / 2);
            §"M§ = this.§=!V§.sprite.y = _loc1_ + §^!2§.§"!E§ * (1 - §95§.§3d§) * §`@§.§-u§;
         }
      }
      
      public function §,u§() : void
      {
         if(this.§=!V§.sprite)
         {
            this.§=!V§.sprite.scaleX = §3d§;
            this.§=!V§.sprite.scaleY = §3d§;
         }
      }
      
      public function §1I§() : void
      {
         var _loc1_:Number = this.§ =§ / §^!2§.§3!S§ + this.§6!2§;
         var _loc2_:Number = this.§]!?§ / §^!2§.§3!S§ + this.§4]§;
         this.§7r§ = _loc1_ - §^!2§.§@!@§ / 2 * §"!S§.§<!4§ / §"!S§.§^!c§;
         this.§4k§ = _loc2_ - §^!2§.§"!E§ / 2 + §`@§.§0Q§;
         if(this.§=!V§.background)
         {
            this.§=!V§.background.§+!+§(this.§7r§,this.§4k§);
         }
         if(this.§=!V§.objects)
         {
            this.§=!V§.objects.§+!+§(this.§7r§,this.§4k§);
         }
         if(this.§=!V§.mLevelEngine)
         {
            this.§=!V§.mLevelEngine.§+!+§(this.§7r§,this.§4k§,§3d§);
         }
         if(this.§=!V§.slingshot)
         {
            this.§=!V§.slingshot.§+!+§(this.§7r§,this.§4k§);
         }
         if(this.§=!V§.particles)
         {
            this.§=!V§.particles.§+!+§(this.§7r§,this.§4k§);
         }
      }
      
      protected function §4D§() : void
      {
         this.§#M§(§9Q§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§]z§ = -1;
         this.§4D§();
         this.§9!G§ = this.§"+§ = this.§,!B§ = param1;
         this.§@M§ = this.§%G§ = this.§'!1§ = param2;
         this.§6O§ = 0;
         this.§!y§.x = this.§ =§;
         this.§!y§.y = this.§]!?§;
         this.§!y§.scale = §7X§;
         this.§8!P§ = §7X§;
         if(Math.abs(this.§6§.x - this.§8I§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§ =§ - this.§8I§.x) / (this.§6§.x - this.§8I§.x) * §6b§;
         }
         this.mDragging = true;
      }
      
      public function §]!I§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§6O§ += param1;
         var _loc3_:Number = this.§9!G§ - this.§"+§;
         if(this.§`z§ > 0)
         {
            _loc2_ -= _loc3_ * §^!2§.§3!S§ / §3d§ / this.§`z§ * §6b§;
            this.§[!e§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§[!e§ = true;
            }
            if(_loc2_ > §6b§)
            {
               _loc2_ += (§6b§ - _loc2_) * 0.3;
               this.§[!e§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"+§ = this.§9!G§;
      }
      
      protected function § !F§() : Boolean
      {
         return this.mCurrentAction == §9Q§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§9!G§ = param1;
            this.§@M§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §9Q§)
         {
            this.§#M§(§3Z§);
            if(param1 > 0)
            {
               this.§9!G§ = param1;
            }
            _loc3_ = Math.abs(this.§9!G§ - this.§,!B§);
            if(this.§6O§ < §;§ && _loc3_ >= §^N§ && _loc3_ >= §]h§ * this.§6O§ / 1000)
            {
               if(this.§9!G§ < this.§,!B§)
               {
                  this.§#M§(§7!1§);
               }
               else
               {
                  this.§#M§(§+]§);
               }
               this.§+'§ = _loc3_ / this.§6O§ * 10;
               this.§[!e§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§[!e§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §6b§)
               {
                  this.§[!e§ = true;
               }
            }
            else if(this.§6O§ < §!!?§)
            {
               this.§6!@§();
               this.§+'§ = §6b§ / (§6b§ / 500);
               this.§[!e§ = true;
            }
            else
            {
               this.§]!I§(0);
               this.§4!C§(0);
               this.§+'§ = §6b§ / (§6b§ / 500);
               this.§[!e§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §6!@§() : void
      {
         if(this.mCurrentAction == §7!1§)
         {
            this.§#M§(§+]§);
         }
         else if(this.mCurrentAction == §+]§)
         {
            this.§#M§(§7!1§);
         }
         else if(this.mCurrentCameraSliderLocation >= §6b§ / 2)
         {
            this.§#M§(§+]§);
         }
         else if(this.mCurrentCameraSliderLocation <= §6b§ / 2)
         {
            this.§#M§(§7!1§);
         }
      }
      
      public function §4!C§(param1:int) : void
      {
         this.§]z§ = param1;
         if(this.mCurrentCameraSliderLocation < §6b§ / 2)
         {
            this.§#M§(§+]§);
         }
         else
         {
            this.§#M§(§7!1§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§#M§(§+]§);
      }
      
      public function goToCastleView() : void
      {
         this.§#M§(§7!1§);
      }
      
      public function §#M§(param1:int) : void
      {
         this.§!y§.x = this.§ =§;
         this.§!y§.y = this.§]!?§;
         this.§!y§.scale = §7X§;
         this.§8!P§ = §7X§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §6b§)
         {
            return true;
         }
         if(this.mCurrentAction == §7!1§)
         {
            return true;
         }
         return false;
      }
      
      public function §=!d§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §+]§)
         {
            return true;
         }
         return false;
      }
      
      public function §<6§(param1:§&m§) : void
      {
         this.§8!,§ = param1;
         if(this.§8!,§ != null)
         {
            this.§ !f§ = new §&m§();
            this.§ !f§.x = this.§ =§;
            this.§ !f§.y = this.§]!?§;
            this.§ !f§.scale = §7X§;
         }
         else
         {
            this.§ =§ = this.§ !f§.x;
            this.§]!?§ = this.§ !f§.y;
            §7X§ = this.§ !f§.scale;
            this.§ !f§ = null;
         }
      }
      
      protected function §+!-§() : void
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
         var _loc3_:Number = this.§4Z§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§82§,Math.min(this.§'`§,_loc3_));
         if(_loc3_ != this.§4Z§)
         {
            this.§4Z§ = _loc3_;
            this.§+!-§();
         }
      }
      
      public function §[5§() : Number
      {
         return (this.manualScale - this.§82§) / (this.§'`§ - this.§82§);
      }
      
      public function §&2§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§'`§ - this.§82§) + this.§82§;
      }
      
      public function §32§() : void
      {
         this.§4Z§ = Math.max(this.§4Z§ - 0.5,0.5);
      }
      
      public function §[P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§4Z§;
         _loc1_ += " mXcenterB2: " + this.§ =§;
         _loc1_ += " mYcenterB2: " + this.§]!?§;
         _loc1_ += " mXcenterB2target: " + this.§4Z§;
         _loc1_ += "\n mYcenterB2target: " + this.§4Z§;
         _loc1_ += " mXcenterB2previous: " + this.§4Z§;
         _loc1_ += " mYcenterB2previous: " + this.§4Z§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§4Z§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§4Z§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§4Z§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§4Z§;
         _loc1_ += " mTargetScale: " + this.§4Z§;
         _loc1_ += " mTargetScalePrevious: " + this.§4Z§;
         _loc1_ += " mCastleCameraX: " + this.§4Z§;
         _loc1_ += "\n mCastleCameraY: " + this.§4Z§;
         _loc1_ += " mCastleCameraScale: " + this.§4Z§;
         _loc1_ += " mBirdCameraX: " + this.§4Z§;
         _loc1_ += " mBirdCameraY: " + this.§4Z§;
         _loc1_ += " mBirdCameraScale: " + this.§4Z§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§4Z§;
         _loc1_ += " mScreenTopScroll: " + this.§4Z§;
         _loc1_ += " mDragging: " + this.§4Z§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§4Z§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§4Z§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§4Z§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§4Z§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§4Z§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§4Z§;
         _loc1_ += " mDraggingTimer: " + this.§4Z§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§4Z§;
         _loc1_ += " mCameraBorderRight: " + this.§4Z§;
         _loc1_ += " mCameraBorderSky: " + this.§4Z§;
         _loc1_ += " mCameraBorderGround: " + this.§4Z§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§4Z§ + "\n ");
      }
   }
}
