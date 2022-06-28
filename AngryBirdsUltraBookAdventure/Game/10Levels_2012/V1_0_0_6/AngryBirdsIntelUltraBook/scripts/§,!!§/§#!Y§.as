package §,!!§
{
   import §"x§.§-8§;
   import §2_§.§'r§;
   import §2_§.§'u§;
   import §3!G§.§ y§;
   import §3!G§.§'Z§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   
   public class §#!Y§
   {
      
      public static const §[-§:Number = 1.25;
      
      public static const §!!I§:Number = 0.15;
      
      public static const §";§:Number = §^!c§.§"!c§ * §'u§.§18§;
      
      public static const §`5§:Number = §^!c§.§%g§ * §'u§.§18§;
      
      public static const §9!+§:Number = 0.1;
      
      public static const §]!L§:int = 1500;
      
      public static const §]`§:int = 10;
      
      public static const §5D§:int = 15;
      
      public static const §]#§:int = 300;
      
      public static const §^!n§:int = 1000;
      
      public static const §0!#§:int = 10000;
      
      public static const §?!?§:int = §0!#§ / 50;
      
      public static const §<8§:int = 0;
      
      public static const §%B§:int = 1;
      
      public static const §-Y§:int = 2;
      
      public static const §use§:int = 3;
      
      public static const §!!@§:int = 4;
      
      public static const §?!b§:int = 5;
      
      public static const §27§:String = "CASTLE";
      
      public static const §7j§:String = "SLINGSHOT";
      
      protected static var §41§:Number;
      
      public static var §%!H§:Number;
      
      public static var §[^§:Number;
      
      public static const §3D§:Number = 2000;
       
      
      private var §<l§:Number = 1.0;
      
      private var §6!K§:Number = 0.2;
      
      protected var §8!5§:Number;
      
      protected var §+!B§:Number;
      
      protected var §>z§:Number;
      
      public var §#!3§:§'u§;
      
      public var §4!V§:Number;
      
      public var §+!4§:Number;
      
      private var §'!%§:§,!r§;
      
      private var §8r§:§,!r§;
      
      public var §^E§:Number;
      
      public var §7u§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §7!>§:Number;
      
      public var §#!&§:Number;
      
      public var §"!T§:Number;
      
      public var §=!%§:Number;
      
      private var §0!0§:Number;
      
      private var §4R§:§^!h§;
      
      private var §<!v§:§^!h§;
      
      protected var §&!i§:Number = 0;
      
      protected var §<4§:Number = 0;
      
      protected var §=o§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §`0§:Number = 0;
      
      public var § c§:Boolean = true;
      
      public var §=7§:Number = 0;
      
      public var §+!=§:Number = 0;
      
      public var §9i§:Number = 0;
      
      public var §5!&§:Number = 0;
      
      public var §-!$§:Number = 0;
      
      public var §!p§:Number = 0;
      
      public var §^!r§:Number = 0;
      
      public var §&8§:Number = 0;
      
      public var §5!q§:Number = 0;
      
      private var §8!A§:§^!h§;
      
      public var §[!>§:Number = 0;
      
      private var §>!,§:Number = 0;
      
      private var §3!w§:Number = 0;
      
      private var §5k§:§'Z§ = null;
      
      private var §@2§:§'Z§ = null;
      
      public function §#!Y§(param1:§'u§, param2:§ y§, param3:Number = 1.0)
      {
         this.§8!A§ = new §^!h§(0,0,1,false);
         super();
         this.§+!B§ = 0;
         this.§>z§ = 0;
         this.§#!3§ = param1;
         §#!Y§.§41§ = 1;
         this.§<l§ = Math.max(1,Math.min(2,param3));
         this.§8!5§ = this.§<l§;
         this.§>!b§(param2);
         if(this.§'!%§ && this.§8r§)
         {
            this.§>C§();
            this.§&!i§ = this.§'!%§.x - this.§8r§.x;
            this.§<4§ = this.§'!%§.y - this.§8r§.y;
            this.§=o§ = this.§'!%§.scale - this.§8r§.scale;
            this.§+!B§ = this.§'!%§.x;
            this.§>z§ = this.§'!%§.y;
            §41§ = this.§'!%§.scale * this.§8!5§;
         }
         this.mCurrentCameraSliderLocation = §0!#§;
         this.§ c§ = true;
         this.§`0§ = §0!#§ / 500;
      }
      
      private static function §]!k§() : Number
      {
         var _loc1_:Number = §^!c§.§#!M§ / §^!c§.§6W§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §0!_§() : Number
      {
         return §41§ * §]!k§();
      }
      
      public function get §05§() : Number
      {
         return this.§8!5§;
      }
      
      public function set §05§(param1:Number) : void
      {
         this.§8!5§ = param1;
      }
      
      public function get §1!k§() : Number
      {
         return this.§0!0§;
      }
      
      public function §#!m§() : Number
      {
         return §";§ / (this.§#!&§ - this.§7!>§);
      }
      
      public function get §8!Y§() : Number
      {
         return this.§<l§;
      }
      
      public function get §0!P§() : Number
      {
         return this.§6!K§;
      }
      
      public function §0[§(param1:Number) : void
      {
         this.§8!5§ = param1;
         this.§'!!§();
         this.§'! §(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §?!b§)
         {
            return;
         }
         this.goToCastleView();
         this.§=7§ = 2000;
         this.§7!9§();
         this.§&G§();
         this.§<!Y§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§+!B§ = this.§8r§.x;
         this.§>z§ = this.§8r§.y;
         this.§ c§ = false;
         this.§`0§ = §0!#§ / 160000 * param1;
         this.§+!T§(§?!b§);
      }
      
      public function §>C§() : void
      {
         this.§7!>§ = this.§8r§.x - §";§ / this.§8r§.scale / 2;
         this.§#!&§ = this.§'!%§.x + §";§ / this.§'!%§.scale / 2;
         this.§"!T§ = this.§#!3§.§!!"§.§%!^§ - 20 * §'u§.§4o§ * §'u§.§18§;
         this.§=!%§ = this.§#!3§.§!!"§.§%!^§ + 4;
         var _loc1_:Number = §";§ / (this.§#!&§ - this.§7!>§);
         this.§0!0§ = this.§=!%§ - §`5§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§#!3§ = null;
      }
      
      public function §>!b§(param1:§ y§) : void
      {
         var _loc3_:§'Z§ = null;
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
         while(_loc2_ < param1.§#!y§)
         {
            _loc3_ = param1.§>!>§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§8Q§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §`5§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §";§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §7j§)
            {
               this.§8r§ = new §,!r§(_loc9_,_loc10_,_loc13_,true);
               this.§<!v§ = new §^!h§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §27§)
            {
               this.§'!%§ = new §,!r§(_loc9_,_loc10_,_loc13_,false);
               this.§4R§ = new §^!h§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §-8§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §?!3§(param1:§ y§) : void
      {
         var _loc2_:§'Z§ = new §'Z§();
         _loc2_.id = §7j§;
         _loc2_.x = this.§8r§.x;
         _loc2_.y = this.§8r§.y;
         var _loc3_:Number = §";§ / this.§8r§.scale / 2;
         var _loc4_:Number = §`5§ / this.§8r§.scale / 2;
         _loc2_.left = this.§8r§.x - _loc3_;
         _loc2_.right = this.§8r§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§'Z§;
         (_loc5_ = new §'Z§()).id = §27§;
         _loc5_.x = this.§'!%§.x;
         _loc5_.y = this.§'!%§.y;
         var _loc6_:Number = §";§ / this.§'!%§.scale / 2;
         var _loc7_:Number = §`5§ / this.§'!%§.scale / 2;
         _loc5_.left = this.§'!%§.x - _loc6_;
         _loc5_.right = this.§'!%§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§9H§();
         param1.§+'§(_loc2_);
         param1.§+'§(_loc5_);
      }
      
      public function §8Q§(param1:§'Z§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §^!c§.§"!c§ * 0.5 / _loc2_ * §'u§.§18§;
         var _loc4_:Number = param1.y - §^!c§.§%g§ * 0.5 / _loc2_ * §'u§.§18§;
         var _loc5_:Number = _loc3_ + §^!c§.§"!c§ / _loc2_ * §'u§.§18§;
         var _loc6_:Number = _loc4_ + §^!c§.§%g§ / _loc2_ * §'u§.§18§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §0V§(param1:§,!r§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§`0§;
         if(_loc3_ >= §0!#§)
         {
            _loc3_ = §0!#§;
            this.§+!T§(§<8§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§+!T§(§<8§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §2!+§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§`0§;
         var _loc4_:Number = -§0!#§ * 0.7;
         if(_loc2_ >= §0!#§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §0!#§;
            }
            this.§`0§ = -this.§`0§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §2!V§(param1:Number) : void
      {
         if(this.mCurrentAction == §?!b§)
         {
            this.§2!+§(param1);
         }
         else if(this.mCurrentAction == §%B§)
         {
            this.§0V§(this.§'!%§,param1);
         }
         else if(this.mCurrentAction == §-Y§)
         {
            this.§0V§(this.§8r§,-param1);
         }
         else if(this.mCurrentAction == §use§)
         {
            this.§ c§ = true;
         }
         else if(this.mCurrentAction == §!!@§)
         {
            this.§>!g§(param1);
         }
      }
      
      public function §6A§(param1:Number) : void
      {
         if(this.§5k§)
         {
            this.§+!B§ = this.§5k§.x;
            this.§>z§ = this.§5k§.y;
            §41§ = §";§ / (this.§5k§.right - this.§5k§.left);
         }
         else
         {
            this.§'!!§();
            this.§2!V§(param1);
            this.§5!!§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§7!9§();
         this.§&G§();
         this.§<!Y§();
      }
      
      private function §['§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<!v§.scale + (this.§4R§.scale - this.§<!v§.scale) * param1;
         var _loc4_:Number = this.§<!v§.x + (this.§4R§.x - this.§<!v§.x) * param1;
         var _loc5_:Number = this.§<!v§.y + (this.§4R§.y - this.§<!v§.y) * param1;
         this.§8!A§.x -= (this.§8!A§.x - _loc4_) * param2;
         this.§8!A§.y -= (this.§8!A§.y - _loc5_) * param2;
         this.§8!A§.scale -= (this.§8!A§.scale - _loc3_) * param2;
      }
      
      protected function §'! §(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&!i§ != 0)
         {
            if(!this.§ c§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §0!#§;
            this.§['§(_loc3_,param2);
            this.§+!B§ = this.§8!A§.x;
            this.§>z§ = this.§8!A§.y;
            §41§ = this.§8!A§.scale;
         }
      }
      
      public function §5!!§(param1:Number, param2:Number) : void
      {
         var _loc5_:§`!_§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §0!#§)
         {
            this.§ c§ = true;
         }
         if(this.mCurrentAction == §use§)
         {
            if(!this.§#!3§.activeObject)
            {
               this.§+!T§(§%B§);
               this.§5!q§ = §^!n§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§#!3§.activeObject).§3J§().GetPosition().x + (!!_loc5_.§'S§ ? _loc5_.§'S§ * §'u§.§18§ : 0);
               _loc7_ = _loc5_.§3J§().GetPosition().y + (!!_loc5_.§0_§ ? _loc5_.§0_§ * §'u§.§18§ : 0);
               if((_loc8_ = _loc5_.§3J§().GetLinearVelocity().x) > 0 && this.§&!i§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§&!i§ * §0!#§;
               }
               if(param1 >= §0!#§)
               {
                  param1 = §0!#§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §0!#§;
               this.§['§(_loc9_,_loc4_);
               _loc10_ = this.§8!A§.x - §";§ * 0.5 / this.§8!A§.scale;
               _loc11_ = this.§8!A§.y - §`5§ * 0.5 / this.§8!A§.scale;
               _loc12_ = this.§8!A§.x + §";§ * 0.5 / this.§8!A§.scale;
               _loc13_ = this.§8!A§.y + §`5§ * 0.5 / this.§8!A§.scale;
               _loc14_ = 150 * §'u§.§18§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§7!>§,_loc15_);
               _loc17_ = Math.min(this.§#!&§,_loc17_);
               _loc19_ = Math.abs(§";§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§`5§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§8!A§.scale)
               {
                  _loc21_ = this.§8!A§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §";§ * 0.5 / _loc21_ > this.§#!&§)
               {
                  _loc15_ = (_loc17_ = this.§#!&§) - §";§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§7!>§)
                  {
                     _loc15_ = this.§7!>§;
                  }
               }
               if(_loc22_ - §";§ * 0.5 / _loc21_ < this.§7!>§)
               {
                  _loc17_ = (_loc15_ = this.§7!>§) + §";§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§#!&§)
                  {
                     _loc17_ = this.§#!&§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§";§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §";§ * 0.5 / _loc21_ < this.§"!T§)
               {
                  _loc23_ = this.§"!T§ + §";§ * 0.5 / _loc21_;
               }
               this.§+!B§ -= (this.§+!B§ - _loc22_) * _loc4_;
               this.§[!>§ -= (this.§[!>§ - _loc21_) * _loc4_;
               §41§ = this.§[!>§;
               this.§>z§ -= (this.§>z§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§#!&§ || _loc6_ <= this.§7!>§)
               {
                  this.§8!A§.scale = §41§;
                  this.§8!A§.x = this.§+!B§;
                  this.§8!A§.y = this.§>z§;
               }
            }
         }
         else
         {
            this.§'! §(param1,_loc4_);
         }
      }
      
      public function §-!M§(param1:Number, param2:Number) : void
      {
         this.§>!,§ = param1;
         this.§3!w§ = param2;
      }
      
      private function §5![§(param1:§^!h§, param2:§,!r§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §!!I§ + (param2.scale - §!!I§) * this.§8!5§ * §#!Y§.§]!k§();
         if(§";§ / param1.scale > this.§#!&§ - this.§7!>§)
         {
            _loc3_ = §";§ / (this.§#!&§ - this.§7!>§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §=!p§(param1:§^!h§, param2:§,!r§) : Boolean
      {
         var _loc3_:Boolean = this.§5![§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §`5§ * 0.5 / param1.scale;
         var _loc5_:Number = §`5§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §";§ * 0.5 / param1.scale) < this.§7!>§ && param1.§"2§)
         {
            param1.x += this.§7!>§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §";§ * 0.5 / param1.scale) > this.§#!&§ && !param1.§"2§)
         {
            param1.x += this.§#!&§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §8!S§(param1:§^!h§, param2:§,!r§) : Number
      {
         return (param1.scale - §!!I§) / (§#!Y§.§]!k§() * (param2.scale - §!!I§));
      }
      
      protected function §'!!§() : void
      {
         this.§=!p§(this.§<!v§,this.§8r§);
         var _loc1_:Number = this.§8!S§(this.§<!v§,this.§8r§);
         this.§=!p§(this.§4R§,this.§'!%§);
         var _loc2_:Number = this.§8!S§(this.§4R§,this.§'!%§);
         this.§8!5§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §7!9§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§#!3§.sprite)
         {
            _loc1_ = §^!c§.§8&§() / §^!c§.§#!M§ - §^!c§.§%g§ >> 1;
            §%!H§ = this.§#!3§.sprite.x = §'u§.§?!8§ * ((1 - §#!Y§.§0!_§) / 2);
            §[^§ = this.§#!3§.sprite.y = _loc1_ + §'u§.§4o§ * (1 - §#!Y§.§0!_§) * §'r§.§3e§;
         }
      }
      
      public function §<!Y§() : void
      {
         if(this.§#!3§.sprite)
         {
            this.§#!3§.sprite.scaleX = §0!_§;
            this.§#!3§.sprite.scaleY = §0!_§;
         }
      }
      
      public function §&G§() : void
      {
         var _loc1_:Number = this.§+!B§ / §'u§.§18§ + this.§>!,§;
         var _loc2_:Number = this.§>z§ / §'u§.§18§ + this.§3!w§;
         this.§^E§ = _loc1_ - §'u§.§?!8§ / 2 * §^!c§.§#!M§ / §^!c§.§ v§;
         this.§7u§ = _loc2_ - §'u§.§4o§ / 2 + §'r§.§ !F§;
         if(this.§#!3§.background)
         {
            this.§#!3§.background.§7!P§(this.§^E§,this.§7u§);
         }
         if(this.§#!3§.objects)
         {
            this.§#!3§.objects.§7!P§(this.§^E§,this.§7u§);
         }
         if(this.§#!3§.mLevelEngine)
         {
            this.§#!3§.mLevelEngine.§7!P§(this.§^E§,this.§7u§,§0!_§);
         }
         if(this.§#!3§.slingshot)
         {
            this.§#!3§.slingshot.§7!P§(this.§^E§,this.§7u§);
         }
         if(this.§#!3§.particles)
         {
            this.§#!3§.particles.§7!P§(this.§^E§,this.§7u§);
         }
      }
      
      protected function §^Y§() : void
      {
         this.§+!T§(§!!@§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§5!q§ = -1;
         this.§^Y§();
         this.§-!$§ = this.§^!r§ = this.§9i§ = param1;
         this.§!p§ = this.§&8§ = this.§5!&§ = param2;
         this.§+!=§ = 0;
         this.§8!A§.x = this.§+!B§;
         this.§8!A§.y = this.§>z§;
         this.§8!A§.scale = §41§;
         this.§[!>§ = §41§;
         if(Math.abs(this.§4R§.x - this.§<!v§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§+!B§ - this.§<!v§.x) / (this.§4R§.x - this.§<!v§.x) * §0!#§;
         }
         this.mDragging = true;
      }
      
      public function §>!g§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§+!=§ += param1;
         var _loc3_:Number = this.§-!$§ - this.§^!r§;
         if(this.§&!i§ > 0)
         {
            _loc2_ -= _loc3_ * §'u§.§18§ / §0!_§ / this.§&!i§ * §0!#§;
            this.§ c§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§ c§ = true;
            }
            if(_loc2_ > §0!#§)
            {
               _loc2_ += (§0!#§ - _loc2_) * 0.3;
               this.§ c§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§^!r§ = this.§-!$§;
      }
      
      protected function §^M§() : Boolean
      {
         return this.mCurrentAction == §!!@§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§-!$§ = param1;
            this.§!p§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §!!@§)
         {
            this.§+!T§(§<8§);
            if(param1 > 0)
            {
               this.§-!$§ = param1;
            }
            _loc3_ = Math.abs(this.§-!$§ - this.§9i§);
            if(this.§+!=§ < §]!L§ && _loc3_ >= §]`§ && _loc3_ >= §5D§ * this.§+!=§ / 1000)
            {
               if(this.§-!$§ < this.§9i§)
               {
                  this.§+!T§(§%B§);
               }
               else
               {
                  this.§+!T§(§-Y§);
               }
               this.§`0§ = _loc3_ / this.§+!=§ * 10;
               this.§ c§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§ c§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §0!#§)
               {
                  this.§ c§ = true;
               }
            }
            else if(this.§+!=§ < §]#§)
            {
               this.§ B§();
               this.§`0§ = §0!#§ / (§0!#§ / 500);
               this.§ c§ = true;
            }
            else
            {
               this.§>!g§(0);
               this.§9!6§(0);
               this.§`0§ = §0!#§ / (§0!#§ / 500);
               this.§ c§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function § B§() : void
      {
         if(this.mCurrentAction == §%B§)
         {
            this.§+!T§(§-Y§);
         }
         else if(this.mCurrentAction == §-Y§)
         {
            this.§+!T§(§%B§);
         }
         else if(this.mCurrentCameraSliderLocation >= §0!#§ / 2)
         {
            this.§+!T§(§-Y§);
         }
         else if(this.mCurrentCameraSliderLocation <= §0!#§ / 2)
         {
            this.§+!T§(§%B§);
         }
      }
      
      public function §9!6§(param1:int) : void
      {
         this.§5!q§ = param1;
         if(this.mCurrentCameraSliderLocation < §0!#§ / 2)
         {
            this.§+!T§(§-Y§);
         }
         else
         {
            this.§+!T§(§%B§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§+!T§(§-Y§);
      }
      
      public function goToCastleView() : void
      {
         this.§+!T§(§%B§);
      }
      
      public function §+!T§(param1:int) : void
      {
         this.§8!A§.x = this.§+!B§;
         this.§8!A§.y = this.§>z§;
         this.§8!A§.scale = §41§;
         this.§[!>§ = §41§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §0!#§)
         {
            return true;
         }
         if(this.mCurrentAction == §%B§)
         {
            return true;
         }
         return false;
      }
      
      public function § !9§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §-Y§)
         {
            return true;
         }
         return false;
      }
      
      public function §=!]§(param1:§'Z§) : void
      {
         this.§5k§ = param1;
         if(this.§5k§ != null)
         {
            this.§@2§ = new §'Z§();
            this.§@2§.x = this.§+!B§;
            this.§@2§.y = this.§>z§;
            this.§@2§.scale = §41§;
         }
         else
         {
            this.§+!B§ = this.§@2§.x;
            this.§>z§ = this.§@2§.y;
            §41§ = this.§@2§.scale;
            this.§@2§ = null;
         }
      }
      
      protected function §<!H§() : void
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
         var _loc3_:Number = this.§8!5§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§0!P§,Math.min(this.§8!Y§,_loc3_));
         if(_loc3_ != this.§8!5§)
         {
            this.§8!5§ = _loc3_;
            this.§<!H§();
         }
      }
      
      public function §4!U§() : Number
      {
         return (this.§05§ - this.§0!P§) / (this.§8!Y§ - this.§0!P§);
      }
      
      public function §5]§(param1:Number) : void
      {
         this.§05§ = Math.min(Math.max(param1,0),1) * (this.§8!Y§ - this.§0!P§) + this.§0!P§;
      }
      
      public function §?T§() : void
      {
         this.§8!5§ = Math.max(this.§8!5§ - 0.5,0.5);
      }
      
      public function §^!o§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§8!5§;
         _loc1_ += " mXcenterB2: " + this.§+!B§;
         _loc1_ += " mYcenterB2: " + this.§>z§;
         _loc1_ += " mXcenterB2target: " + this.§8!5§;
         _loc1_ += "\n mYcenterB2target: " + this.§8!5§;
         _loc1_ += " mXcenterB2previous: " + this.§8!5§;
         _loc1_ += " mYcenterB2previous: " + this.§8!5§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§8!5§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§8!5§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§8!5§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§8!5§;
         _loc1_ += " mTargetScale: " + this.§8!5§;
         _loc1_ += " mTargetScalePrevious: " + this.§8!5§;
         _loc1_ += " mCastleCameraX: " + this.§8!5§;
         _loc1_ += "\n mCastleCameraY: " + this.§8!5§;
         _loc1_ += " mCastleCameraScale: " + this.§8!5§;
         _loc1_ += " mBirdCameraX: " + this.§8!5§;
         _loc1_ += " mBirdCameraY: " + this.§8!5§;
         _loc1_ += " mBirdCameraScale: " + this.§8!5§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§8!5§;
         _loc1_ += " mScreenTopScroll: " + this.§8!5§;
         _loc1_ += " mDragging: " + this.§8!5§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§8!5§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§8!5§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§8!5§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§8!5§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§8!5§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§8!5§;
         _loc1_ += " mDraggingTimer: " + this.§8!5§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§8!5§;
         _loc1_ += " mCameraBorderRight: " + this.§8!5§;
         _loc1_ += " mCameraBorderSky: " + this.§8!5§;
         _loc1_ += " mCameraBorderGround: " + this.§8!5§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§8!5§ + "\n ");
      }
   }
}
