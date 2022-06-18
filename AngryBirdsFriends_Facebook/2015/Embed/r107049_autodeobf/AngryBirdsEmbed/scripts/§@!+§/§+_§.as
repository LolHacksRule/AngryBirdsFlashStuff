package §@!+§
{
   import §!!,§.§`Q§;
   import §6Z§.§"!;§;
   import §6Z§.§%i§;
   import §6h§.§[!4§;
   import §9s§.§;0§;
   import §9s§.§^9§;
   import §@!;§.§!!=§;
   
   public class §+_§
   {
      
      public static const § p§:Number = 1.25;
      
      public static const §1!1§:Number = 0.15;
      
      public static const §+!%§:Number = §[!4§.§71§ * §^9§.§5T§;
      
      public static const §-!0§:Number = §[!4§.§=6§ * §^9§.§5T§;
      
      public static const §+'§:Number = 0.1;
      
      public static const §7'§:int = 1500;
      
      public static const §,z§:int = 10;
      
      public static const §`!5§:int = 15;
      
      public static const §&,§:int = 300;
      
      public static const §&4§:int = 1000;
      
      public static const §]P§:int = 10000;
      
      public static const §[B§:int = §]P§ / 50;
      
      public static const § 9§:int = 0;
      
      public static const §9f§:int = 1;
      
      public static const §@!8§:int = 2;
      
      public static const §&!D§:int = 3;
      
      public static const §2P§:int = 4;
      
      public static const §7!?§:int = 5;
      
      public static const §1?§:String = "CASTLE";
      
      public static const §&6§:String = "SLINGSHOT";
      
      protected static var §8V§:Number;
      
      public static var §-!%§:Number;
      
      public static var §<!K§:Number;
      
      public static const §0!6§:Number = 2000;
       
      
      private var §9!-§:Number = 1.0;
      
      private var §]k§:Number = 0.2;
      
      protected var §+!9§:Number;
      
      protected var §5r§:Number;
      
      protected var §%s§:Number;
      
      public var §4!I§:§^9§;
      
      public var §8e§:Number;
      
      public var §^C§:Number;
      
      protected var §^j§:§6w§;
      
      protected var §[!#§:§6w§;
      
      public var §-!B§:Number;
      
      public var §%!0§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §=!"§:Number;
      
      public var § !K§:Number;
      
      public var §`t§:Number;
      
      public var §3x§:Number;
      
      private var §,!?§:Number;
      
      private var §#!0§:§2!+§;
      
      private var §!!!§:§2!+§;
      
      protected var §^s§:Number = 0;
      
      protected var §,]§:Number = 0;
      
      protected var §0! §:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §#!+§:Number = 0;
      
      public var §3t§:Boolean = true;
      
      public var §;K§:Number = 0;
      
      public var §4!%§:Number = 0;
      
      public var §1!'§:Number = 0;
      
      public var §<!A§:Number = 0;
      
      public var §#y§:Number = 0;
      
      public var §>!3§:Number = 0;
      
      public var §+-§:Number = 0;
      
      public var §>6§:Number = 0;
      
      public var §=P§:Number = 0;
      
      private var §6`§:§2!+§;
      
      public var §default§:Number = 0;
      
      private var §2b§:Number = 0;
      
      private var §<!M§:Number = 0;
      
      private var §`!N§:§%i§ = null;
      
      private var §`!L§:§%i§ = null;
      
      public function §+_§(param1:§^9§, param2:§"!;§, param3:Number = 1.0)
      {
         this.§6`§ = new §2!+§(0,0,1,false);
         super();
         this.§5r§ = 0;
         this.§%s§ = 0;
         this.§4!I§ = param1;
         §+_§.§8V§ = 1;
         this.§9!-§ = Math.max(1,Math.min(2,param3));
         this.§+!9§ = this.§9!-§;
         this.§^;§(param2);
         if(this.§^j§ && this.§[!#§)
         {
            this.§+P§();
            this.§^s§ = this.§^j§.x - this.§[!#§.x;
            this.§,]§ = this.§^j§.y - this.§[!#§.y;
            this.§0! § = this.§^j§.scale - this.§[!#§.scale;
            this.§5r§ = this.§^j§.x;
            this.§%s§ = this.§^j§.y;
            §8V§ = this.§^j§.scale * this.§+!9§;
         }
         this.mCurrentCameraSliderLocation = §]P§;
         this.§3t§ = true;
         this.§#!+§ = §]P§ / 500;
      }
      
      private static function §`w§() : Number
      {
         var _loc1_:Number = §[!4§.§4p§ / §[!4§.§<^§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §=]§() : Number
      {
         return §8V§ * §`w§();
      }
      
      public function get §@7§() : Number
      {
         return this.§+!9§;
      }
      
      public function set §@7§(param1:Number) : void
      {
         this.§+!9§ = param1;
      }
      
      public function get §%?§() : Number
      {
         return this.§,!?§;
      }
      
      public function §6k§() : Number
      {
         return §+!%§ / (this.§ !K§ - this.§=!"§);
      }
      
      public function get §+!<§() : Number
      {
         return this.§9!-§;
      }
      
      public function get §6U§() : Number
      {
         return this.§]k§;
      }
      
      public function §7z§(param1:Number) : void
      {
         this.§+!9§ = param1;
         this.§5s§();
         this.§-!9§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §7!?§)
         {
            return;
         }
         this.goToCastleView();
         this.§;K§ = 2000;
         this.§,!<§();
         this.§2!E§();
         this.§%+§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§5r§ = this.§[!#§.x;
         this.§%s§ = this.§[!#§.y;
         this.§3t§ = false;
         this.§#!+§ = §]P§ / 160000 * param1;
         this.§@W§(§7!?§);
      }
      
      public function §+P§() : void
      {
         this.§=!"§ = this.§[!#§.x - §+!%§ / this.§[!#§.scale / 2;
         this.§ !K§ = this.§^j§.x + §+!%§ / this.§^j§.scale / 2;
         this.§`t§ = this.§4!I§.§5!=§.§]!7§ - 20 * §^9§.§&!B§ * §^9§.§5T§;
         this.§3x§ = this.§4!I§.§5!=§.§]!7§ + 4;
         var _loc1_:Number = §+!%§ / (this.§ !K§ - this.§=!"§);
         this.§,!?§ = this.§3x§ - §-!0§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§4!I§ = null;
      }
      
      public function §^;§(param1:§"!;§) : void
      {
         var _loc3_:§%i§ = null;
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
         while(_loc2_ < param1.§!>§)
         {
            _loc3_ = param1.§9!;§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§if §(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §-!0§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §+!%§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §&6§)
            {
               this.§[!#§ = new §6w§(_loc9_,_loc10_,_loc13_,true);
               this.§!!!§ = new §2!+§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §1?§)
            {
               this.§^j§ = new §6w§(_loc9_,_loc10_,_loc13_,false);
               this.§#!0§ = new §2!+§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §!!=§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §^w§(param1:§"!;§) : void
      {
         var _loc2_:§%i§ = new §%i§();
         _loc2_.id = §&6§;
         _loc2_.x = this.§[!#§.x;
         _loc2_.y = this.§[!#§.y;
         var _loc3_:Number = §+!%§ / this.§[!#§.scale / 2;
         var _loc4_:Number = §-!0§ / this.§[!#§.scale / 2;
         _loc2_.left = this.§[!#§.x - _loc3_;
         _loc2_.right = this.§[!#§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §-!0§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §+!%§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§%i§;
         (_loc7_ = new §%i§()).id = §1?§;
         _loc7_.x = this.§^j§.x;
         _loc7_.y = this.§^j§.y;
         var _loc8_:Number = §+!%§ / this.§^j§.scale / 2;
         var _loc9_:Number = §-!0§ / this.§^j§.scale / 2;
         _loc7_.left = this.§^j§.x - _loc8_;
         _loc7_.right = this.§^j§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §-!0§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §+!%§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§<§();
         param1.§^B§(_loc2_);
         param1.§^B§(_loc7_);
      }
      
      public function §if §(param1:§%i§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[!4§.§71§ * 0.5 / _loc2_ * §^9§.§5T§;
         var _loc4_:Number = param1.y - §[!4§.§=6§ * 0.5 / _loc2_ * §^9§.§5T§;
         var _loc5_:Number = _loc3_ + §[!4§.§71§ / _loc2_ * §^9§.§5T§;
         var _loc6_:Number = _loc4_ + §[!4§.§=6§ / _loc2_ * §^9§.§5T§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §5A§(param1:§6w§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§#!+§;
         if(_loc3_ >= §]P§)
         {
            _loc3_ = §]P§;
            this.§@W§(§ 9§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§@W§(§ 9§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §!o§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§#!+§;
         var _loc4_:Number = -§]P§ * 0.7;
         if(_loc2_ >= §]P§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]P§;
            }
            this.§#!+§ = -this.§#!+§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §0!1§(param1:Number) : void
      {
         if(this.mCurrentAction == §7!?§)
         {
            this.§!o§(param1);
         }
         else if(this.mCurrentAction == §9f§)
         {
            this.§5A§(this.§^j§,param1);
         }
         else if(this.mCurrentAction == §@!8§)
         {
            this.§5A§(this.§[!#§,-param1);
         }
         else if(this.mCurrentAction == §&!D§)
         {
            this.§3t§ = true;
         }
         else if(this.mCurrentAction == §2P§)
         {
            this.§4!?§(param1);
         }
      }
      
      public function §>Y§(param1:Number) : void
      {
         if(this.§`!N§)
         {
            this.§5r§ = this.§`!N§.x;
            this.§%s§ = this.§`!N§.y;
            §8V§ = §+!%§ / (this.§`!N§.right - this.§`!N§.left);
         }
         else
         {
            this.§5s§();
            this.§0!1§(param1);
            this.§`C§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§,!<§();
         this.§2!E§();
         this.§%+§();
      }
      
      private function §'!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!!§.scale + (this.§#!0§.scale - this.§!!!§.scale) * param1;
         var _loc4_:Number = this.§!!!§.x + (this.§#!0§.x - this.§!!!§.x) * param1;
         var _loc5_:Number = this.§!!!§.y + (this.§#!0§.y - this.§!!!§.y) * param1;
         this.§6`§.x -= (this.§6`§.x - _loc4_) * param2;
         this.§6`§.y -= (this.§6`§.y - _loc5_) * param2;
         this.§6`§.scale -= (this.§6`§.scale - _loc3_) * param2;
      }
      
      protected function §-!9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§^s§ != 0)
         {
            if(!this.§3t§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]P§;
            this.§'!N§(_loc3_,param2);
            this.§5r§ = this.§6`§.x;
            this.§%s§ = this.§6`§.y;
            §8V§ = this.§6`§.scale;
         }
      }
      
      public function §`C§(param1:Number, param2:Number) : void
      {
         var _loc5_:§`Q§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]P§)
         {
            this.§3t§ = true;
         }
         if(this.mCurrentAction == §&!D§)
         {
            if(!this.§4!I§.activeObject)
            {
               this.§@W§(§9f§);
               this.§=P§ = §&4§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§4!I§.activeObject).§ 7§().GetPosition().x + (!!_loc5_.§5Z§ ? _loc5_.§5Z§ * §^9§.§5T§ : 0);
               _loc7_ = _loc5_.§ 7§().GetPosition().y + (!!_loc5_.§=!K§ ? _loc5_.§=!K§ * §^9§.§5T§ : 0);
               if((_loc8_ = _loc5_.§ 7§().GetLinearVelocity().x) > 0 && this.§^s§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§^s§ * §]P§;
               }
               if(param1 >= §]P§)
               {
                  param1 = §]P§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]P§;
               this.§'!N§(_loc9_,_loc4_);
               _loc10_ = this.§6`§.x - §+!%§ * 0.5 / this.§6`§.scale;
               _loc11_ = this.§6`§.y - §-!0§ * 0.5 / this.§6`§.scale;
               _loc12_ = this.§6`§.x + §+!%§ * 0.5 / this.§6`§.scale;
               _loc13_ = this.§6`§.y + §-!0§ * 0.5 / this.§6`§.scale;
               _loc14_ = 150 * §^9§.§5T§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§=!"§,_loc15_);
               _loc17_ = Math.min(this.§ !K§,_loc17_);
               _loc19_ = Math.abs(§+!%§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§-!0§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§6`§.scale)
               {
                  _loc21_ = this.§6`§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §+!%§ * 0.5 / _loc21_ > this.§ !K§)
               {
                  _loc15_ = (_loc17_ = this.§ !K§) - §+!%§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§=!"§)
                  {
                     _loc15_ = this.§=!"§;
                  }
               }
               if(_loc22_ - §+!%§ * 0.5 / _loc21_ < this.§=!"§)
               {
                  _loc17_ = (_loc15_ = this.§=!"§) + §+!%§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§ !K§)
                  {
                     _loc17_ = this.§ !K§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§+!%§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §+!%§ * 0.5 / _loc21_ < this.§`t§)
               {
                  _loc23_ = this.§`t§ + §+!%§ * 0.5 / _loc21_;
               }
               this.§5r§ -= (this.§5r§ - _loc22_) * _loc4_;
               this.§default§ -= (this.§default§ - _loc21_) * _loc4_;
               §8V§ = this.§default§;
               this.§%s§ -= (this.§%s§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§ !K§ || _loc6_ <= this.§=!"§)
               {
                  this.§6`§.scale = §8V§;
                  this.§6`§.x = this.§5r§;
                  this.§6`§.y = this.§%s§;
               }
            }
         }
         else
         {
            this.§-!9§(param1,_loc4_);
         }
      }
      
      public function §#!?§(param1:Number, param2:Number) : void
      {
         this.§2b§ = param1;
         this.§<!M§ = param2;
      }
      
      private function §,U§(param1:§2!+§, param2:§6w§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §1!1§ + (param2.scale - §1!1§) * this.§+!9§ * §+_§.§`w§();
         if(§+!%§ / param1.scale > this.§ !K§ - this.§=!"§)
         {
            _loc3_ = §+!%§ / (this.§ !K§ - this.§=!"§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §"8§(param1:§2!+§, param2:§6w§) : Boolean
      {
         var _loc3_:Boolean = this.§,U§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §-!0§ * 0.5 / param1.scale;
         var _loc5_:Number = §-!0§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §+!%§ * 0.5 / param1.scale) < this.§=!"§ && param1.§#o§)
         {
            param1.x += this.§=!"§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §+!%§ * 0.5 / param1.scale) > this.§ !K§ && !param1.§#o§)
         {
            param1.x += this.§ !K§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §7!6§(param1:§2!+§, param2:§6w§) : Number
      {
         return (param1.scale - §1!1§) / (§+_§.§`w§() * (param2.scale - §1!1§));
      }
      
      protected function §5s§() : void
      {
         this.§"8§(this.§!!!§,this.§[!#§);
         var _loc1_:Number = this.§7!6§(this.§!!!§,this.§[!#§);
         this.§"8§(this.§#!0§,this.§^j§);
         var _loc2_:Number = this.§7!6§(this.§#!0§,this.§^j§);
         this.§+!9§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §,!<§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§4!I§.sprite)
         {
            _loc1_ = §[!4§.§-!§() / §[!4§.§4p§ - §[!4§.§=6§ >> 1;
            §-!%§ = this.§4!I§.sprite.x = §^9§.§@o§ * ((1 - §+_§.§=]§) / 2);
            §<!K§ = this.§4!I§.sprite.y = _loc1_ + §^9§.§&!B§ * (1 - §+_§.§=]§) * §;0§.§'#§;
         }
      }
      
      public function §%+§() : void
      {
         if(this.§4!I§.sprite)
         {
            this.§4!I§.sprite.scaleX = §=]§;
            this.§4!I§.sprite.scaleY = §=]§;
         }
      }
      
      public function §2!E§() : void
      {
         var _loc1_:Number = this.§5r§ / §^9§.§5T§ + this.§2b§;
         var _loc2_:Number = this.§%s§ / §^9§.§5T§ + this.§<!M§;
         this.§-!B§ = _loc1_ - §^9§.§@o§ / 2 * §[!4§.§4p§ / §[!4§.§3!9§;
         this.§%!0§ = _loc2_ - §^9§.§&!B§ / 2 + §;0§.§`%§;
         if(this.§4!I§.background)
         {
            this.§4!I§.background.§,P§(this.§-!B§,this.§%!0§);
         }
         if(this.§4!I§.objects)
         {
            this.§4!I§.objects.§,P§(this.§-!B§,this.§%!0§);
         }
         if(this.§4!I§.mLevelEngine)
         {
            this.§!!0§();
         }
         if(this.§4!I§.slingshot)
         {
            this.§4!I§.slingshot.§,P§(this.§-!B§,this.§%!0§);
         }
         if(this.§4!I§.particles)
         {
            this.§4!I§.particles.§,P§(this.§-!B§,this.§%!0§);
         }
      }
      
      protected function §!!0§() : void
      {
         this.§4!I§.mLevelEngine.§,P§(this.§-!B§,this.§%!0§,§8V§);
      }
      
      protected function §&Z§() : void
      {
         this.§@W§(§2P§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§=P§ = -1;
         this.§&Z§();
         this.§#y§ = this.§+-§ = this.§1!'§ = param1;
         this.§>!3§ = this.§>6§ = this.§<!A§ = param2;
         this.§4!%§ = 0;
         this.§6`§.x = this.§5r§;
         this.§6`§.y = this.§%s§;
         this.§6`§.scale = §8V§;
         this.§default§ = §8V§;
         if(Math.abs(this.§#!0§.x - this.§!!!§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§5r§ - this.§!!!§.x) / (this.§#!0§.x - this.§!!!§.x) * §]P§;
         }
         this.mDragging = true;
      }
      
      public function §4!?§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§4!%§ += param1;
         var _loc3_:Number = this.§#y§ - this.§+-§;
         if(this.§^s§ > 0)
         {
            _loc2_ -= _loc3_ * §^9§.§5T§ / §=]§ / this.§^s§ * §]P§;
            this.§3t§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§3t§ = true;
            }
            if(_loc2_ > §]P§)
            {
               _loc2_ += (§]P§ - _loc2_) * 0.3;
               this.§3t§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§+-§ = this.§#y§;
      }
      
      protected function §[2§() : Boolean
      {
         return this.mCurrentAction == §2P§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§#y§ = param1;
            this.§>!3§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §2P§)
         {
            this.§@W§(§ 9§);
            if(param1 > 0)
            {
               this.§#y§ = param1;
            }
            _loc3_ = Math.abs(this.§#y§ - this.§1!'§);
            if(this.§4!%§ < §7'§ && _loc3_ >= §,z§ && _loc3_ >= §`!5§ * this.§4!%§ / 1000)
            {
               if(this.§#y§ < this.§1!'§)
               {
                  this.§@W§(§9f§);
               }
               else
               {
                  this.§@W§(§@!8§);
               }
               this.§#!+§ = _loc3_ / this.§4!%§ * 10;
               this.§3t§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§3t§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]P§)
               {
                  this.§3t§ = true;
               }
            }
            else if(this.§4!%§ < §&,§)
            {
               this.§'!5§();
               this.§#!+§ = §]P§ / (§]P§ / 500);
               this.§3t§ = true;
            }
            else
            {
               this.§4!?§(0);
               this.§9d§(0);
               this.§#!+§ = §]P§ / (§]P§ / 500);
               this.§3t§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'!5§() : void
      {
         if(this.mCurrentAction == §9f§)
         {
            this.§@W§(§@!8§);
         }
         else if(this.mCurrentAction == §@!8§)
         {
            this.§@W§(§9f§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]P§ / 2)
         {
            this.§@W§(§@!8§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]P§ / 2)
         {
            this.§@W§(§9f§);
         }
      }
      
      public function §9d§(param1:int) : void
      {
         this.§=P§ = param1;
         if(this.mCurrentCameraSliderLocation < §]P§ / 2)
         {
            this.§@W§(§@!8§);
         }
         else
         {
            this.§@W§(§9f§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§@W§(§@!8§);
      }
      
      public function goToCastleView() : void
      {
         this.§@W§(§9f§);
      }
      
      public function §@W§(param1:int) : void
      {
         this.§6`§.x = this.§5r§;
         this.§6`§.y = this.§%s§;
         this.§6`§.scale = §8V§;
         this.§default§ = §8V§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]P§)
         {
            return true;
         }
         if(this.mCurrentAction == §9f§)
         {
            return true;
         }
         return false;
      }
      
      public function §<y§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §@!8§)
         {
            return true;
         }
         return false;
      }
      
      public function §'!>§(param1:§%i§) : void
      {
         this.§`!N§ = param1;
         if(this.§`!N§ != null)
         {
            this.§`!L§ = new §%i§();
            this.§`!L§.x = this.§5r§;
            this.§`!L§.y = this.§%s§;
            this.§`!L§.scale = §8V§;
         }
         else
         {
            this.§5r§ = this.§`!L§.x;
            this.§%s§ = this.§`!L§.y;
            §8V§ = this.§`!L§.scale;
            this.§`!L§ = null;
         }
      }
      
      protected function §]!M§() : void
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
         var _loc3_:Number = this.§+!9§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§6U§,Math.min(this.§+!<§,_loc3_));
         if(_loc3_ != this.§+!9§)
         {
            this.§+!9§ = _loc3_;
            this.§]!M§();
         }
      }
      
      public function §"h§() : Number
      {
         return (this.§@7§ - this.§6U§) / (this.§+!<§ - this.§6U§);
      }
      
      public function §;!#§(param1:Number) : void
      {
         this.§@7§ = Math.min(Math.max(param1,0),1) * (this.§+!<§ - this.§6U§) + this.§6U§;
      }
      
      public function §#M§() : void
      {
         this.§+!9§ = Math.max(this.§+!9§ - 0.5,0.5);
      }
      
      public function §3?§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§+!9§;
         _loc1_ += " mXcenterB2: " + this.§5r§;
         _loc1_ += " mYcenterB2: " + this.§%s§;
         _loc1_ += " mXcenterB2target: " + this.§+!9§;
         _loc1_ += "\n mYcenterB2target: " + this.§+!9§;
         _loc1_ += " mXcenterB2previous: " + this.§+!9§;
         _loc1_ += " mYcenterB2previous: " + this.§+!9§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§+!9§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§+!9§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§+!9§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§+!9§;
         _loc1_ += " mTargetScale: " + this.§+!9§;
         _loc1_ += " mTargetScalePrevious: " + this.§+!9§;
         _loc1_ += " mCastleCameraX: " + this.§+!9§;
         _loc1_ += "\n mCastleCameraY: " + this.§+!9§;
         _loc1_ += " mCastleCameraScale: " + this.§+!9§;
         _loc1_ += " mBirdCameraX: " + this.§+!9§;
         _loc1_ += " mBirdCameraY: " + this.§+!9§;
         _loc1_ += " mBirdCameraScale: " + this.§+!9§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§+!9§;
         _loc1_ += " mScreenTopScroll: " + this.§+!9§;
         _loc1_ += " mDragging: " + this.§+!9§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§+!9§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§+!9§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§+!9§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§+!9§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§+!9§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§+!9§;
         _loc1_ += " mDraggingTimer: " + this.§+!9§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§+!9§;
         _loc1_ += " mCameraBorderRight: " + this.§+!9§;
         _loc1_ += " mCameraBorderSky: " + this.§+!9§;
         _loc1_ += " mCameraBorderGround: " + this.§+!9§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§+!9§ + "\n ");
      }
      
      public function §4!2§() : Number
      {
         return this.§5r§;
      }
      
      public function §8!$§() : Number
      {
         return this.§%s§;
      }
   }
}
