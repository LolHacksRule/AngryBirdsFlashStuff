package §`!M§
{
   import § var§.§!u§;
   import §"!i§.§"!'§;
   import §"!i§.§8z§;
   import §1!B§.§<m§;
   import §40§.§5G§;
   import §40§.§[l§;
   import §;!y§.§,!s§;
   
   public class §%X§
   {
      
      public static const §2!O§:Number = 1.25;
      
      public static const §%!T§:Number = 0.15;
      
      public static const § !9§:Number = §,!s§.§!"#§ * §5G§.§6+§;
      
      public static const §8!@§:Number = §,!s§.§8p§ * §5G§.§6+§;
      
      public static const §2O§:Number = 0.1;
      
      public static const §<!V§:int = 1500;
      
      public static const §-T§:int = 10;
      
      public static const §#x§:int = 15;
      
      public static const §2q§:int = 300;
      
      public static const §'!i§:int = 1000;
      
      public static const §#!e§:int = 10000;
      
      public static const §>!v§:int = §#!e§ / 50;
      
      public static const §,E§:int = 0;
      
      public static const §>!'§:int = 1;
      
      public static const §6!g§:int = 2;
      
      public static const §`5§:int = 3;
      
      public static const §-!j§:int = 4;
      
      public static const §4!4§:int = 5;
      
      public static const §;l§:String = "CASTLE";
      
      public static const §9C§:String = "SLINGSHOT";
      
      protected static var §+O§:Number;
      
      public static var §+!_§:Number;
      
      public static var § !o§:Number;
      
      public static const §#!K§:Number = 2000;
       
      
      private var §2!c§:Number = 1.0;
      
      private var § J§:Number = 0.2;
      
      protected var §%3§:Number;
      
      protected var §8!"§:Number;
      
      protected var §get §:Number;
      
      public var §#!U§:§5G§;
      
      public var § !x§:Number;
      
      public var §"c§:Number;
      
      protected var §+!l§:§8!>§;
      
      protected var §,!N§:§8!>§;
      
      public var §[!H§:Number;
      
      public var §@!6§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §super§:Number;
      
      public var §`,§:Number;
      
      public var §7P§:Number;
      
      public var §@![§:Number;
      
      private var §3!g§:Number;
      
      private var §!;§:§`!8§;
      
      private var §@!Y§:§`!8§;
      
      protected var §'E§:Number = 0;
      
      protected var §'w§:Number = 0;
      
      protected var §08§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §?!A§:Number = 0;
      
      public var §@!!§:Boolean = true;
      
      public var §!U§:Number = 0;
      
      public var §?!Q§:Number = 0;
      
      public var §6!0§:Number = 0;
      
      public var §;!`§:Number = 0;
      
      public var §?"!§:Number = 0;
      
      public var §;M§:Number = 0;
      
      public var §?!g§:Number = 0;
      
      public var §9!E§:Number = 0;
      
      public var §@!+§:Number = 0;
      
      private var §7!m§:§`!8§;
      
      public var §<!m§:Number = 0;
      
      private var § !,§:Number = 0;
      
      private var §9!H§:Number = 0;
      
      private var §-!c§:§8z§ = null;
      
      private var §+!"§:§8z§ = null;
      
      public function §%X§(param1:§5G§, param2:§"!'§, param3:Number = 1.0)
      {
         this.§7!m§ = new §`!8§(0,0,1,false);
         super();
         this.§8!"§ = 0;
         this.§get § = 0;
         this.§#!U§ = param1;
         §%X§.§+O§ = 1;
         this.§2!c§ = Math.max(1,Math.min(2,param3));
         this.§%3§ = this.§2!c§;
         this.§1!m§(param2);
         if(this.§+!l§ && this.§,!N§)
         {
            this.§5!V§();
            this.§'E§ = this.§+!l§.x - this.§,!N§.x;
            this.§'w§ = this.§+!l§.y - this.§,!N§.y;
            this.§08§ = this.§+!l§.scale - this.§,!N§.scale;
            this.§8!"§ = this.§+!l§.x;
            this.§get § = this.§+!l§.y;
            §+O§ = this.§+!l§.scale * this.§%3§;
         }
         this.mCurrentCameraSliderLocation = §#!e§;
         this.§@!!§ = true;
         this.§?!A§ = §#!e§ / 500;
      }
      
      private static function §0#§() : Number
      {
         var _loc1_:Number = §,!s§.§8;§ / §,!s§.§#d§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §'!f§() : Number
      {
         return §+O§ * §0#§();
      }
      
      public function get §0l§() : Number
      {
         return this.§%3§;
      }
      
      public function set §0l§(param1:Number) : void
      {
         this.§%3§ = param1;
      }
      
      public function get §9!2§() : Number
      {
         return this.§3!g§;
      }
      
      public function §25§() : Number
      {
         return § !9§ / (this.§`,§ - this.§super§);
      }
      
      public function get §>!n§() : Number
      {
         return this.§2!c§;
      }
      
      public function get §5!9§() : Number
      {
         return this.§ J§;
      }
      
      public function §!!7§(param1:Number) : void
      {
         this.§%3§ = param1;
         this.§?^§();
         this.§5b§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §4!4§)
         {
            return;
         }
         this.goToCastleView();
         this.§!U§ = 2000;
         this.§8P§();
         this.§4D§();
         this.§!!k§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§8!"§ = this.§,!N§.x;
         this.§get § = this.§,!N§.y;
         this.§@!!§ = false;
         this.§?!A§ = §#!e§ / 160000 * param1;
         this.§?M§(§4!4§);
      }
      
      public function §5!V§() : void
      {
         this.§super§ = this.§,!N§.x - § !9§ / this.§,!N§.scale / 2;
         this.§`,§ = this.§+!l§.x + § !9§ / this.§+!l§.scale / 2;
         this.§7P§ = this.§#!U§.§!#§.§]!L§ - 20 * §5G§.§;7§ * §5G§.§6+§;
         this.§@![§ = this.§#!U§.§!#§.§]!L§ + 4;
         var _loc1_:Number = § !9§ / (this.§`,§ - this.§super§);
         this.§3!g§ = this.§@![§ - §8!@§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§#!U§ = null;
      }
      
      public function §1!m§(param1:§"!'§) : void
      {
         var _loc3_:§8z§ = null;
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
         while(_loc2_ < param1.§?!M§)
         {
            _loc3_ = param1.§#M§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§;k§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §8!@§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = § !9§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §9C§)
            {
               this.§,!N§ = new §8!>§(_loc9_,_loc10_,_loc13_,true);
               this.§@!Y§ = new §`!8§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §;l§)
            {
               this.§+!l§ = new §8!>§(_loc9_,_loc10_,_loc13_,false);
               this.§!;§ = new §`!8§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §<m§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §?!n§(param1:§"!'§) : void
      {
         var _loc2_:§8z§ = new §8z§();
         _loc2_.id = §9C§;
         _loc2_.x = this.§,!N§.x;
         _loc2_.y = this.§,!N§.y;
         var _loc3_:Number = § !9§ / this.§,!N§.scale / 2;
         var _loc4_:Number = §8!@§ / this.§,!N§.scale / 2;
         _loc2_.left = this.§,!N§.x - _loc3_;
         _loc2_.right = this.§,!N§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §8!@§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = § !9§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§8z§;
         (_loc7_ = new §8z§()).id = §;l§;
         _loc7_.x = this.§+!l§.x;
         _loc7_.y = this.§+!l§.y;
         var _loc8_:Number = § !9§ / this.§+!l§.scale / 2;
         var _loc9_:Number = §8!@§ / this.§+!l§.scale / 2;
         _loc7_.left = this.§+!l§.x - _loc8_;
         _loc7_.right = this.§+!l§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §8!@§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = § !9§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§&!Z§();
         param1.§7!x§(_loc2_);
         param1.§7!x§(_loc7_);
      }
      
      public function §;k§(param1:§8z§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §,!s§.§!"#§ * 0.5 / _loc2_ * §5G§.§6+§;
         var _loc4_:Number = param1.y - §,!s§.§8p§ * 0.5 / _loc2_ * §5G§.§6+§;
         var _loc5_:Number = _loc3_ + §,!s§.§!"#§ / _loc2_ * §5G§.§6+§;
         var _loc6_:Number = _loc4_ + §,!s§.§8p§ / _loc2_ * §5G§.§6+§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §&0§(param1:§8!>§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§?!A§;
         if(_loc3_ >= §#!e§)
         {
            _loc3_ = §#!e§;
            this.§?M§(§,E§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§?M§(§,E§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §2N§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§?!A§;
         var _loc4_:Number = -§#!e§ * 0.7;
         if(_loc2_ >= §#!e§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §#!e§;
            }
            this.§?!A§ = -this.§?!A§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §=!<§(param1:Number) : void
      {
         if(this.mCurrentAction == §4!4§)
         {
            this.§2N§(param1);
         }
         else if(this.mCurrentAction == §>!'§)
         {
            this.§&0§(this.§+!l§,param1);
         }
         else if(this.mCurrentAction == §6!g§)
         {
            this.§&0§(this.§,!N§,-param1);
         }
         else if(this.mCurrentAction == §`5§)
         {
            this.§@!!§ = true;
         }
         else if(this.mCurrentAction == §-!j§)
         {
            this.§>!?§(param1);
         }
      }
      
      public function §7!I§(param1:Number) : void
      {
         if(this.§-!c§)
         {
            this.§8!"§ = this.§-!c§.x;
            this.§get § = this.§-!c§.y;
            §+O§ = § !9§ / (this.§-!c§.right - this.§-!c§.left);
         }
         else
         {
            this.§?^§();
            this.§=!<§(param1);
            this.§;g§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§8P§();
         this.§4D§();
         this.§!!k§();
      }
      
      private function §5!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@!Y§.scale + (this.§!;§.scale - this.§@!Y§.scale) * param1;
         var _loc4_:Number = this.§@!Y§.x + (this.§!;§.x - this.§@!Y§.x) * param1;
         var _loc5_:Number = this.§@!Y§.y + (this.§!;§.y - this.§@!Y§.y) * param1;
         this.§7!m§.x -= (this.§7!m§.x - _loc4_) * param2;
         this.§7!m§.y -= (this.§7!m§.y - _loc5_) * param2;
         this.§7!m§.scale -= (this.§7!m§.scale - _loc3_) * param2;
      }
      
      protected function §5b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'E§ != 0)
         {
            if(!this.§@!!§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §#!e§;
            this.§5!N§(_loc3_,param2);
            this.§8!"§ = this.§7!m§.x;
            this.§get § = this.§7!m§.y;
            §+O§ = this.§7!m§.scale;
         }
      }
      
      public function §;g§(param1:Number, param2:Number) : void
      {
         var _loc5_:§!u§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §#!e§)
         {
            this.§@!!§ = true;
         }
         if(this.mCurrentAction == §`5§)
         {
            if(!this.§#!U§.activeObject)
            {
               this.§?M§(§>!'§);
               this.§@!+§ = §'!i§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§#!U§.activeObject).§63§().GetPosition().x + (!!_loc5_.§4j§ ? _loc5_.§4j§ * §5G§.§6+§ : 0);
               _loc7_ = _loc5_.§63§().GetPosition().y + (!!_loc5_.§@Z§ ? _loc5_.§@Z§ * §5G§.§6+§ : 0);
               if((_loc8_ = _loc5_.§63§().GetLinearVelocity().x) > 0 && this.§'E§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§'E§ * §#!e§;
               }
               if(param1 >= §#!e§)
               {
                  param1 = §#!e§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §#!e§;
               this.§5!N§(_loc9_,_loc4_);
               _loc10_ = this.§7!m§.x - § !9§ * 0.5 / this.§7!m§.scale;
               _loc11_ = this.§7!m§.y - §8!@§ * 0.5 / this.§7!m§.scale;
               _loc12_ = this.§7!m§.x + § !9§ * 0.5 / this.§7!m§.scale;
               _loc13_ = this.§7!m§.y + §8!@§ * 0.5 / this.§7!m§.scale;
               _loc14_ = 150 * §5G§.§6+§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§super§,_loc15_);
               _loc17_ = Math.min(this.§`,§,_loc17_);
               _loc19_ = Math.abs(§ !9§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§8!@§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§7!m§.scale)
               {
                  _loc21_ = this.§7!m§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + § !9§ * 0.5 / _loc21_ > this.§`,§)
               {
                  _loc15_ = (_loc17_ = this.§`,§) - § !9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§super§)
                  {
                     _loc15_ = this.§super§;
                  }
               }
               if(_loc22_ - § !9§ * 0.5 / _loc21_ < this.§super§)
               {
                  _loc17_ = (_loc15_ = this.§super§) + § !9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§`,§)
                  {
                     _loc17_ = this.§`,§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§ !9§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - § !9§ * 0.5 / _loc21_ < this.§7P§)
               {
                  _loc23_ = this.§7P§ + § !9§ * 0.5 / _loc21_;
               }
               this.§8!"§ -= (this.§8!"§ - _loc22_) * _loc4_;
               this.§<!m§ -= (this.§<!m§ - _loc21_) * _loc4_;
               §+O§ = this.§<!m§;
               this.§get § -= (this.§get § - _loc23_) * _loc4_;
               if(_loc6_ >= this.§`,§ || _loc6_ <= this.§super§)
               {
                  this.§7!m§.scale = §+O§;
                  this.§7!m§.x = this.§8!"§;
                  this.§7!m§.y = this.§get §;
               }
            }
         }
         else
         {
            this.§5b§(param1,_loc4_);
         }
      }
      
      public function §]!z§(param1:Number, param2:Number) : void
      {
         this.§ !,§ = param1;
         this.§9!H§ = param2;
      }
      
      private function § i§(param1:§`!8§, param2:§8!>§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §%!T§ + (param2.scale - §%!T§) * this.§%3§ * §%X§.§0#§();
         if(§ !9§ / param1.scale > this.§`,§ - this.§super§)
         {
            _loc3_ = § !9§ / (this.§`,§ - this.§super§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §2+§(param1:§`!8§, param2:§8!>§) : Boolean
      {
         var _loc3_:Boolean = this.§ i§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §8!@§ * 0.5 / param1.scale;
         var _loc5_:Number = §8!@§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - § !9§ * 0.5 / param1.scale) < this.§super§ && param1.§"!j§)
         {
            param1.x += this.§super§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + § !9§ * 0.5 / param1.scale) > this.§`,§ && !param1.§"!j§)
         {
            param1.x += this.§`,§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §1!q§(param1:§`!8§, param2:§8!>§) : Number
      {
         return (param1.scale - §%!T§) / (§%X§.§0#§() * (param2.scale - §%!T§));
      }
      
      protected function §?^§() : void
      {
         this.§2+§(this.§@!Y§,this.§,!N§);
         var _loc1_:Number = this.§1!q§(this.§@!Y§,this.§,!N§);
         this.§2+§(this.§!;§,this.§+!l§);
         var _loc2_:Number = this.§1!q§(this.§!;§,this.§+!l§);
         this.§%3§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §8P§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§#!U§.sprite)
         {
            _loc1_ = §,!s§.§<!S§() / §,!s§.§8;§ - §,!s§.§8p§ >> 1;
            §+!_§ = this.§#!U§.sprite.x = §5G§.§&!d§ * ((1 - §%X§.§'!f§) / 2);
            § !o§ = this.§#!U§.sprite.y = _loc1_ + §5G§.§;7§ * (1 - §%X§.§'!f§) * §[l§.§6"#§;
         }
      }
      
      public function §!!k§() : void
      {
         if(this.§#!U§.sprite)
         {
            this.§#!U§.sprite.scaleX = §'!f§;
            this.§#!U§.sprite.scaleY = §'!f§;
         }
      }
      
      public function §4D§() : void
      {
         var _loc1_:Number = this.§8!"§ / §5G§.§6+§ + this.§ !,§;
         var _loc2_:Number = this.§get § / §5G§.§6+§ + this.§9!H§;
         this.§[!H§ = _loc1_ - §5G§.§&!d§ / 2 * §,!s§.§8;§ / §,!s§.§0!!§;
         this.§@!6§ = _loc2_ - §5G§.§;7§ / 2 + §[l§.§5!5§;
         if(this.§#!U§.background)
         {
            this.§#!U§.background.§1T§(this.§[!H§,this.§@!6§);
         }
         if(this.§#!U§.objects)
         {
            this.§#!U§.objects.§1T§(this.§[!H§,this.§@!6§);
         }
         if(this.§#!U§.mLevelEngine)
         {
            this.§<!5§();
         }
         if(this.§#!U§.slingshot)
         {
            this.§#!U§.slingshot.§1T§(this.§[!H§,this.§@!6§);
         }
         if(this.§#!U§.particles)
         {
            this.§#!U§.particles.§1T§(this.§[!H§,this.§@!6§);
         }
      }
      
      protected function §<!5§() : void
      {
         this.§#!U§.mLevelEngine.§1T§(this.§[!H§,this.§@!6§,§+O§);
      }
      
      protected function §-!S§() : void
      {
         this.§?M§(§-!j§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§@!+§ = -1;
         this.§-!S§();
         this.§?"!§ = this.§?!g§ = this.§6!0§ = param1;
         this.§;M§ = this.§9!E§ = this.§;!`§ = param2;
         this.§?!Q§ = 0;
         this.§7!m§.x = this.§8!"§;
         this.§7!m§.y = this.§get §;
         this.§7!m§.scale = §+O§;
         this.§<!m§ = §+O§;
         if(Math.abs(this.§!;§.x - this.§@!Y§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§8!"§ - this.§@!Y§.x) / (this.§!;§.x - this.§@!Y§.x) * §#!e§;
         }
         this.mDragging = true;
      }
      
      public function §>!?§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§?!Q§ += param1;
         var _loc3_:Number = this.§?"!§ - this.§?!g§;
         if(this.§'E§ > 0)
         {
            _loc2_ -= _loc3_ * §5G§.§6+§ / §'!f§ / this.§'E§ * §#!e§;
            this.§@!!§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§@!!§ = true;
            }
            if(_loc2_ > §#!e§)
            {
               _loc2_ += (§#!e§ - _loc2_) * 0.3;
               this.§@!!§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§?!g§ = this.§?"!§;
      }
      
      protected function §8n§() : Boolean
      {
         return this.mCurrentAction == §-!j§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§?"!§ = param1;
            this.§;M§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §-!j§)
         {
            this.§?M§(§,E§);
            if(param1 > 0)
            {
               this.§?"!§ = param1;
            }
            _loc3_ = Math.abs(this.§?"!§ - this.§6!0§);
            if(this.§?!Q§ < §<!V§ && _loc3_ >= §-T§ && _loc3_ >= §#x§ * this.§?!Q§ / 1000)
            {
               if(this.§?"!§ < this.§6!0§)
               {
                  this.§?M§(§>!'§);
               }
               else
               {
                  this.§?M§(§6!g§);
               }
               this.§?!A§ = _loc3_ / this.§?!Q§ * 10;
               this.§@!!§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§@!!§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §#!e§)
               {
                  this.§@!!§ = true;
               }
            }
            else if(this.§?!Q§ < §2q§)
            {
               this.§,M§();
               this.§?!A§ = §#!e§ / (§#!e§ / 500);
               this.§@!!§ = true;
            }
            else
            {
               this.§>!?§(0);
               this.§^!a§(0);
               this.§?!A§ = §#!e§ / (§#!e§ / 500);
               this.§@!!§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §,M§() : void
      {
         if(this.mCurrentAction == §>!'§)
         {
            this.§?M§(§6!g§);
         }
         else if(this.mCurrentAction == §6!g§)
         {
            this.§?M§(§>!'§);
         }
         else if(this.mCurrentCameraSliderLocation >= §#!e§ / 2)
         {
            this.§?M§(§6!g§);
         }
         else if(this.mCurrentCameraSliderLocation <= §#!e§ / 2)
         {
            this.§?M§(§>!'§);
         }
      }
      
      public function §^!a§(param1:int) : void
      {
         this.§@!+§ = param1;
         if(this.mCurrentCameraSliderLocation < §#!e§ / 2)
         {
            this.§?M§(§6!g§);
         }
         else
         {
            this.§?M§(§>!'§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§?M§(§6!g§);
      }
      
      public function goToCastleView() : void
      {
         this.§?M§(§>!'§);
      }
      
      public function §?M§(param1:int) : void
      {
         this.§7!m§.x = this.§8!"§;
         this.§7!m§.y = this.§get §;
         this.§7!m§.scale = §+O§;
         this.§<!m§ = §+O§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §#!e§)
         {
            return true;
         }
         if(this.mCurrentAction == §>!'§)
         {
            return true;
         }
         return false;
      }
      
      public function §>!W§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §6!g§)
         {
            return true;
         }
         return false;
      }
      
      public function §7!a§(param1:§8z§) : void
      {
         this.§-!c§ = param1;
         if(this.§-!c§ != null)
         {
            this.§+!"§ = new §8z§();
            this.§+!"§.x = this.§8!"§;
            this.§+!"§.y = this.§get §;
            this.§+!"§.scale = §+O§;
         }
         else
         {
            this.§8!"§ = this.§+!"§.x;
            this.§get § = this.§+!"§.y;
            §+O§ = this.§+!"§.scale;
            this.§+!"§ = null;
         }
      }
      
      protected function §9!o§() : void
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
         var _loc3_:Number = this.§%3§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§5!9§,Math.min(this.§>!n§,_loc3_));
         if(_loc3_ != this.§%3§)
         {
            this.§%3§ = _loc3_;
            this.§9!o§();
         }
      }
      
      public function §;!n§() : Number
      {
         return (this.§0l§ - this.§5!9§) / (this.§>!n§ - this.§5!9§);
      }
      
      public function §2!P§(param1:Number) : void
      {
         this.§0l§ = Math.min(Math.max(param1,0),1) * (this.§>!n§ - this.§5!9§) + this.§5!9§;
      }
      
      public function §@s§() : void
      {
         this.§%3§ = Math.max(this.§%3§ - 0.5,0.5);
      }
      
      public function §;D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§%3§;
         _loc1_ += " mXcenterB2: " + this.§8!"§;
         _loc1_ += " mYcenterB2: " + this.§get §;
         _loc1_ += " mXcenterB2target: " + this.§%3§;
         _loc1_ += "\n mYcenterB2target: " + this.§%3§;
         _loc1_ += " mXcenterB2previous: " + this.§%3§;
         _loc1_ += " mYcenterB2previous: " + this.§%3§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§%3§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§%3§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§%3§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§%3§;
         _loc1_ += " mTargetScale: " + this.§%3§;
         _loc1_ += " mTargetScalePrevious: " + this.§%3§;
         _loc1_ += " mCastleCameraX: " + this.§%3§;
         _loc1_ += "\n mCastleCameraY: " + this.§%3§;
         _loc1_ += " mCastleCameraScale: " + this.§%3§;
         _loc1_ += " mBirdCameraX: " + this.§%3§;
         _loc1_ += " mBirdCameraY: " + this.§%3§;
         _loc1_ += " mBirdCameraScale: " + this.§%3§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§%3§;
         _loc1_ += " mScreenTopScroll: " + this.§%3§;
         _loc1_ += " mDragging: " + this.§%3§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§%3§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§%3§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§%3§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§%3§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§%3§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§%3§;
         _loc1_ += " mDraggingTimer: " + this.§%3§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§%3§;
         _loc1_ += " mCameraBorderRight: " + this.§%3§;
         _loc1_ += " mCameraBorderSky: " + this.§%3§;
         _loc1_ += " mCameraBorderGround: " + this.§%3§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§%3§ + "\n ");
      }
      
      public function §]!g§() : Number
      {
         return this.§8!"§;
      }
      
      public function §<!D§() : Number
      {
         return this.§get §;
      }
   }
}
