package §^Q§
{
   import §-!5§.§5s§;
   import §3F§.§2!3§;
   import §5=§.§8G§;
   import §5=§.§@!§;
   import §>2§.§#!&§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   
   public class §<a§
   {
      
      public static const §?O§:Number = 1.25;
      
      public static const §0!+§:Number = 0.15;
      
      public static const §;!K§:Number = §2G§.§=!M§ * §4h§.§-9§;
      
      public static const §%N§:Number = §2G§.§"!§ * §4h§.§-9§;
      
      public static const §^G§:Number = 0.1;
      
      public static const §["§:int = 1500;
      
      public static const §]w§:int = 10;
      
      public static const §7+§:int = 15;
      
      public static const §5!6§:int = 300;
      
      public static const §61§:int = 1000;
      
      public static const §8!#§:int = 10000;
      
      public static const § do§:int = §8!#§ / 50;
      
      public static const §+!6§:int = 0;
      
      public static const §#!9§:int = 1;
      
      public static const §<9§:int = 2;
      
      public static const §46§:int = 3;
      
      public static const §@!4§:int = 4;
      
      public static const §do §:int = 5;
      
      public static const §%!+§:String = "CASTLE";
      
      public static const §+B§:String = "SLINGSHOT";
      
      protected static var §%!>§:Number;
      
      public static var §-!K§:Number;
      
      public static var §8!$§:Number;
      
      public static const §@!!§:Number = 2000;
       
      
      private var §+m§:Number = 1.0;
      
      private var §&!'§:Number = 0.2;
      
      protected var §,!J§:Number;
      
      protected var §5c§:Number;
      
      protected var §0O§:Number;
      
      public var §@k§:§4h§;
      
      public var §,g§:Number;
      
      public var §7I§:Number;
      
      private var §<!%§:§3!K§;
      
      private var §3U§:§3!K§;
      
      public var §8!3§:Number;
      
      public var §#z§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@8§:Number;
      
      public var §3!D§:Number;
      
      public var §=l§:Number;
      
      public var §'!&§:Number;
      
      private var §7S§:Number;
      
      private var §6D§:§&N§;
      
      private var §8X§:§&N§;
      
      protected var §!!N§:Number = 0;
      
      protected var §@y§:Number = 0;
      
      protected var §]!5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&Y§:Number = 0;
      
      public var §,!$§:Boolean = true;
      
      public var §0!G§:Number = 0;
      
      public var §-#§:Number = 0;
      
      public var §%!2§:Number = 0;
      
      public var §@j§:Number = 0;
      
      public var §7!%§:Number = 0;
      
      public var §^l§:Number = 0;
      
      public var §8#§:Number = 0;
      
      public var §%!G§:Number = 0;
      
      public var §^a§:Number = 0;
      
      private var §,U§:§&N§;
      
      public var §2]§:Number = 0;
      
      private var §%F§:Number = 0;
      
      private var §2R§:Number = 0;
      
      private var §+!+§:§@!§ = null;
      
      private var §!W§:§@!§ = null;
      
      public function §<a§(param1:§4h§, param2:§8G§, param3:Number = 1.0)
      {
         this.§,U§ = new §&N§(0,0,1,false);
         super();
         this.§5c§ = 0;
         this.§0O§ = 0;
         this.§@k§ = param1;
         §<a§.§%!>§ = 1;
         this.§+m§ = Math.max(1,Math.min(2,param3));
         this.§,!J§ = this.§+m§;
         this.§%!%§(param2);
         if(this.§<!%§ && this.§3U§)
         {
            this.§9!;§();
            this.§!!N§ = this.§<!%§.x - this.§3U§.x;
            this.§@y§ = this.§<!%§.y - this.§3U§.y;
            this.§]!5§ = this.§<!%§.scale - this.§3U§.scale;
            this.§5c§ = this.§<!%§.x;
            this.§0O§ = this.§<!%§.y;
            §%!>§ = this.§<!%§.scale * this.§,!J§;
         }
         this.mCurrentCameraSliderLocation = §8!#§;
         this.§,!$§ = true;
         this.§&Y§ = §8!#§ / 500;
      }
      
      private static function §;U§() : Number
      {
         var _loc1_:Number = §2G§.§8$§ / §2G§.§;!P§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get levelScale() : Number
      {
         return §%!>§ * §;U§();
      }
      
      public function get §#!0§() : Number
      {
         return this.§,!J§;
      }
      
      public function set §#!0§(param1:Number) : void
      {
         this.§,!J§ = param1;
      }
      
      public function get §];§() : Number
      {
         return this.§7S§;
      }
      
      public function §^J§() : Number
      {
         return §;!K§ / (this.§3!D§ - this.§@8§);
      }
      
      public function get §4G§() : Number
      {
         return this.§+m§;
      }
      
      public function get §1!-§() : Number
      {
         return this.§&!'§;
      }
      
      public function §2!%§(param1:Number) : void
      {
         this.§,!J§ = param1;
         this.§]!+§();
         this.§super§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §do §)
         {
            return;
         }
         this.goToCastleView();
         this.§0!G§ = 2000;
         this.adjustLevelMainViewAccordingToScale();
         this.§<F§();
         this.§^3§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§5c§ = this.§3U§.x;
         this.§0O§ = this.§3U§.y;
         this.§,!$§ = false;
         this.§&Y§ = §8!#§ / 160000 * param1;
         this.§26§(§do §);
      }
      
      public function §9!;§() : void
      {
         this.§@8§ = this.§3U§.x - §;!K§ / this.§3U§.scale / 2;
         this.§3!D§ = this.§<!%§.x + §;!K§ / this.§<!%§.scale / 2;
         this.§=l§ = this.§@k§.§ !9§.§ h§ - 20 * §4h§.§]y§ * §4h§.§-9§;
         this.§'!&§ = this.§@k§.§ !9§.§ h§ + 4;
         var _loc1_:Number = §;!K§ / (this.§3!D§ - this.§@8§);
         this.§7S§ = this.§'!&§ - §%N§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§@k§ = null;
      }
      
      public function §%!%§(param1:§8G§) : void
      {
         var _loc3_:§@!§ = null;
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
         while(_loc2_ < param1.§8b§)
         {
            _loc3_ = param1.§^w§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§continue§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §%N§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §;!K§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §+B§)
            {
               this.§3U§ = new §3!K§(_loc9_,_loc10_,_loc13_,true);
               this.§8X§ = new §&N§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §%!+§)
            {
               this.§<!%§ = new §3!K§(_loc9_,_loc10_,_loc13_,false);
               this.§6D§ = new §&N§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §5s§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §]%§(param1:§8G§) : void
      {
         var _loc2_:§@!§ = new §@!§();
         _loc2_.id = §+B§;
         _loc2_.x = this.§3U§.x;
         _loc2_.y = this.§3U§.y;
         var _loc3_:Number = §;!K§ / this.§3U§.scale / 2;
         var _loc4_:Number = §%N§ / this.§3U§.scale / 2;
         _loc2_.left = this.§3U§.x - _loc3_;
         _loc2_.right = this.§3U§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§@!§;
         (_loc5_ = new §@!§()).id = §%!+§;
         _loc5_.x = this.§<!%§.x;
         _loc5_.y = this.§<!%§.y;
         var _loc6_:Number = §;!K§ / this.§<!%§.scale / 2;
         var _loc7_:Number = §%N§ / this.§<!%§.scale / 2;
         _loc5_.left = this.§<!%§.x - _loc6_;
         _loc5_.right = this.§<!%§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§>!@§();
         param1.§#B§(_loc2_);
         param1.§#B§(_loc5_);
      }
      
      public function §continue§(param1:§@!§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §2G§.§=!M§ * 0.5 / _loc2_ * §4h§.§-9§;
         var _loc4_:Number = param1.y - §2G§.§"!§ * 0.5 / _loc2_ * §4h§.§-9§;
         var _loc5_:Number = _loc3_ + §2G§.§=!M§ / _loc2_ * §4h§.§-9§;
         var _loc6_:Number = _loc4_ + §2G§.§"!§ / _loc2_ * §4h§.§-9§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §4!A§(param1:§3!K§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&Y§;
         if(_loc3_ >= §8!#§)
         {
            _loc3_ = §8!#§;
            this.§26§(§+!6§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§26§(§+!6§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §>!L§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&Y§;
         var _loc4_:Number = -§8!#§ * 0.7;
         if(_loc2_ >= §8!#§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §8!#§;
            }
            this.§&Y§ = -this.§&Y§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §0U§(param1:Number) : void
      {
         if(this.mCurrentAction == §do §)
         {
            this.§>!L§(param1);
         }
         else if(this.mCurrentAction == §#!9§)
         {
            this.§4!A§(this.§<!%§,param1);
         }
         else if(this.mCurrentAction == §<9§)
         {
            this.§4!A§(this.§3U§,-param1);
         }
         else if(this.mCurrentAction == §46§)
         {
            this.§,!$§ = true;
         }
         else if(this.mCurrentAction == §@!4§)
         {
            this.§+!M§(param1);
         }
      }
      
      public function §=Z§(param1:Number) : void
      {
         if(this.§+!+§)
         {
            this.§5c§ = this.§+!+§.x;
            this.§0O§ = this.§+!+§.y;
            §%!>§ = §;!K§ / (this.§+!+§.right - this.§+!+§.left);
         }
         else
         {
            this.§]!+§();
            this.§0U§(param1);
            this.§9!M§(this.mCurrentCameraSliderLocation,param1);
         }
         this.adjustLevelMainViewAccordingToScale();
         this.§<F§();
         this.§^3§();
      }
      
      private function §5@§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§8X§.scale + (this.§6D§.scale - this.§8X§.scale) * param1;
         var _loc4_:Number = this.§8X§.x + (this.§6D§.x - this.§8X§.x) * param1;
         var _loc5_:Number = this.§8X§.y + (this.§6D§.y - this.§8X§.y) * param1;
         this.§,U§.x -= (this.§,U§.x - _loc4_) * param2;
         this.§,U§.y -= (this.§,U§.y - _loc5_) * param2;
         this.§,U§.scale -= (this.§,U§.scale - _loc3_) * param2;
      }
      
      protected function §super§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!!N§ != 0)
         {
            if(!this.§,!$§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §8!#§;
            this.§5@§(_loc3_,param2);
            this.§5c§ = this.§,U§.x;
            this.§0O§ = this.§,U§.y;
            §%!>§ = this.§,U§.scale;
         }
      }
      
      public function §9!M§(param1:Number, param2:Number) : void
      {
         var _loc5_:§2!3§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §8!#§)
         {
            this.§,!$§ = true;
         }
         if(this.mCurrentAction == §46§)
         {
            if(!this.§@k§.activeObject)
            {
               this.§26§(§#!9§);
               this.§^a§ = §61§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§@k§.activeObject).§?!M§().GetPosition().x + (!!_loc5_.§#y§ ? _loc5_.§#y§ * §4h§.§-9§ : 0);
               _loc7_ = _loc5_.§?!M§().GetPosition().y + (!!_loc5_.§,K§ ? _loc5_.§,K§ * §4h§.§-9§ : 0);
               if((_loc8_ = _loc5_.§?!M§().GetLinearVelocity().x) > 0 && this.§!!N§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§!!N§ * §8!#§;
               }
               if(param1 >= §8!#§)
               {
                  param1 = §8!#§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §8!#§;
               this.§5@§(_loc9_,_loc4_);
               _loc10_ = this.§,U§.x - §;!K§ * 0.5 / this.§,U§.scale;
               _loc11_ = this.§,U§.y - §%N§ * 0.5 / this.§,U§.scale;
               _loc12_ = this.§,U§.x + §;!K§ * 0.5 / this.§,U§.scale;
               _loc13_ = this.§,U§.y + §%N§ * 0.5 / this.§,U§.scale;
               _loc14_ = 150 * §4h§.§-9§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§@8§,_loc15_);
               _loc17_ = Math.min(this.§3!D§,_loc17_);
               _loc19_ = Math.abs(§;!K§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§%N§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§,U§.scale)
               {
                  _loc21_ = this.§,U§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §;!K§ * 0.5 / _loc21_ > this.§3!D§)
               {
                  _loc15_ = (_loc17_ = this.§3!D§) - §;!K§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§@8§)
                  {
                     _loc15_ = this.§@8§;
                  }
               }
               if(_loc22_ - §;!K§ * 0.5 / _loc21_ < this.§@8§)
               {
                  _loc17_ = (_loc15_ = this.§@8§) + §;!K§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§3!D§)
                  {
                     _loc17_ = this.§3!D§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§;!K§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §;!K§ * 0.5 / _loc21_ < this.§=l§)
               {
                  _loc23_ = this.§=l§ + §;!K§ * 0.5 / _loc21_;
               }
               this.§5c§ -= (this.§5c§ - _loc22_) * _loc4_;
               this.§2]§ -= (this.§2]§ - _loc21_) * _loc4_;
               §%!>§ = this.§2]§;
               this.§0O§ -= (this.§0O§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§3!D§ || _loc6_ <= this.§@8§)
               {
                  this.§,U§.scale = §%!>§;
                  this.§,U§.x = this.§5c§;
                  this.§,U§.y = this.§0O§;
               }
            }
         }
         else
         {
            this.§super§(param1,_loc4_);
         }
      }
      
      public function §2!O§(param1:Number, param2:Number) : void
      {
         this.§%F§ = param1;
         this.§2R§ = param2;
      }
      
      private function §7§(param1:§&N§, param2:§3!K§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §0!+§ + (param2.scale - §0!+§) * this.§,!J§ * §<a§.§;U§();
         if(§;!K§ / param1.scale > this.§3!D§ - this.§@8§)
         {
            _loc3_ = §;!K§ / (this.§3!D§ - this.§@8§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §0>§(param1:§&N§, param2:§3!K§) : Boolean
      {
         var _loc3_:Boolean = this.§7§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §%N§ * 0.5 / param1.scale;
         var _loc5_:Number = §%N§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §;!K§ * 0.5 / param1.scale) < this.§@8§ && param1.§1=§)
         {
            param1.x += this.§@8§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §;!K§ * 0.5 / param1.scale) > this.§3!D§ && !param1.§1=§)
         {
            param1.x += this.§3!D§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §>s§(param1:§&N§, param2:§3!K§) : Number
      {
         return (param1.scale - §0!+§) / (§<a§.§;U§() * (param2.scale - §0!+§));
      }
      
      protected function §]!+§() : void
      {
         this.§0>§(this.§8X§,this.§3U§);
         var _loc1_:Number = this.§>s§(this.§8X§,this.§3U§);
         this.§0>§(this.§6D§,this.§<!%§);
         var _loc2_:Number = this.§>s§(this.§6D§,this.§<!%§);
         this.§,!J§ = Math.min(_loc1_,_loc2_);
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         if(this.§@k§.sprite)
         {
            _loc1_ = §2G§.§2a§() / §2G§.§8$§ - §2G§.§"!§ >> 1;
            §-!K§ = this.§@k§.sprite.x = §4h§.§^v§ * ((1 - §<a§.levelScale) / 2);
            §8!$§ = this.§@k§.sprite.y = _loc1_ + §4h§.§]y§ * (1 - §<a§.levelScale) * §#!&§.§`2§;
         }
      }
      
      public function §^3§() : void
      {
         if(this.§@k§.sprite)
         {
            this.§@k§.sprite.scaleX = levelScale;
            this.§@k§.sprite.scaleY = levelScale;
         }
      }
      
      public function §<F§() : void
      {
         var _loc1_:Number = this.§5c§ / §4h§.§-9§ + this.§%F§;
         var _loc2_:Number = this.§0O§ / §4h§.§-9§ + this.§2R§;
         this.§8!3§ = _loc1_ - §4h§.§^v§ / 2 * §2G§.§8$§ / §2G§.§42§;
         this.§#z§ = _loc2_ - §4h§.§]y§ / 2 + §#!&§.§8t§;
         if(this.§@k§.background)
         {
            this.§@k§.background.§!0§(this.§8!3§,this.§#z§);
         }
         if(this.§@k§.objects)
         {
            this.§@k§.objects.§!0§(this.§8!3§,this.§#z§);
         }
         if(this.§@k§.§ x§)
         {
            this.§@k§.§ x§.§!0§(this.§8!3§,this.§#z§,levelScale);
         }
         if(this.§@k§.slingshot)
         {
            this.§@k§.slingshot.§!0§(this.§8!3§,this.§#z§);
         }
         if(this.§@k§.particles)
         {
            this.§@k§.particles.§!0§(this.§8!3§,this.§#z§);
         }
      }
      
      protected function § get§() : void
      {
         this.§26§(§@!4§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§^a§ = -1;
         this.§ get§();
         this.§7!%§ = this.§8#§ = this.§%!2§ = param1;
         this.§^l§ = this.§%!G§ = this.§@j§ = param2;
         this.§-#§ = 0;
         this.§,U§.x = this.§5c§;
         this.§,U§.y = this.§0O§;
         this.§,U§.scale = §%!>§;
         this.§2]§ = §%!>§;
         if(Math.abs(this.§6D§.x - this.§8X§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§5c§ - this.§8X§.x) / (this.§6D§.x - this.§8X§.x) * §8!#§;
         }
         this.mDragging = true;
      }
      
      public function §+!M§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§-#§ += param1;
         var _loc3_:Number = this.§7!%§ - this.§8#§;
         if(this.§!!N§ > 0)
         {
            _loc2_ -= _loc3_ * §4h§.§-9§ / levelScale / this.§!!N§ * §8!#§;
            this.§,!$§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§,!$§ = true;
            }
            if(_loc2_ > §8!#§)
            {
               _loc2_ += (§8!#§ - _loc2_) * 0.3;
               this.§,!$§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§8#§ = this.§7!%§;
      }
      
      protected function §+!9§() : Boolean
      {
         return this.mCurrentAction == §@!4§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§7!%§ = param1;
            this.§^l§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §@!4§)
         {
            this.§26§(§+!6§);
            if(param1 > 0)
            {
               this.§7!%§ = param1;
            }
            _loc3_ = Math.abs(this.§7!%§ - this.§%!2§);
            if(this.§-#§ < §["§ && _loc3_ >= §]w§ && _loc3_ >= §7+§ * this.§-#§ / 1000)
            {
               if(this.§7!%§ < this.§%!2§)
               {
                  this.§26§(§#!9§);
               }
               else
               {
                  this.§26§(§<9§);
               }
               this.§&Y§ = _loc3_ / this.§-#§ * 10;
               this.§,!$§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§,!$§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §8!#§)
               {
                  this.§,!$§ = true;
               }
            }
            else if(this.§-#§ < §5!6§)
            {
               this.§,!+§();
               this.§&Y§ = §8!#§ / (§8!#§ / 500);
               this.§,!$§ = true;
            }
            else
            {
               this.§+!M§(0);
               this.§!7§(0);
               this.§&Y§ = §8!#§ / (§8!#§ / 500);
               this.§,!$§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §,!+§() : void
      {
         if(this.mCurrentAction == §#!9§)
         {
            this.§26§(§<9§);
         }
         else if(this.mCurrentAction == §<9§)
         {
            this.§26§(§#!9§);
         }
         else if(this.mCurrentCameraSliderLocation >= §8!#§ / 2)
         {
            this.§26§(§<9§);
         }
         else if(this.mCurrentCameraSliderLocation <= §8!#§ / 2)
         {
            this.§26§(§#!9§);
         }
      }
      
      public function §!7§(param1:int) : void
      {
         this.§^a§ = param1;
         if(this.mCurrentCameraSliderLocation < §8!#§ / 2)
         {
            this.§26§(§<9§);
         }
         else
         {
            this.§26§(§#!9§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§26§(§<9§);
      }
      
      public function goToCastleView() : void
      {
         this.§26§(§#!9§);
      }
      
      public function §26§(param1:int) : void
      {
         this.§,U§.x = this.§5c§;
         this.§,U§.y = this.§0O§;
         this.§,U§.scale = §%!>§;
         this.§2]§ = §%!>§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §8!#§)
         {
            return true;
         }
         if(this.mCurrentAction == §#!9§)
         {
            return true;
         }
         return false;
      }
      
      public function §%a§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §<9§)
         {
            return true;
         }
         return false;
      }
      
      public function §=s§(param1:§@!§) : void
      {
         this.§+!+§ = param1;
         if(this.§+!+§ != null)
         {
            this.§!W§ = new §@!§();
            this.§!W§.x = this.§5c§;
            this.§!W§.y = this.§0O§;
            this.§!W§.scale = §%!>§;
         }
         else
         {
            this.§5c§ = this.§!W§.x;
            this.§0O§ = this.§!W§.y;
            §%!>§ = this.§!W§.scale;
            this.§!W§ = null;
         }
      }
      
      protected function §=E§() : void
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
         var _loc3_:Number = this.§,!J§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§1!-§,Math.min(this.§4G§,_loc3_));
         if(_loc3_ != this.§,!J§)
         {
            this.§,!J§ = _loc3_;
            this.§=E§();
         }
      }
      
      public function §-M§() : Number
      {
         return (this.§#!0§ - this.§1!-§) / (this.§4G§ - this.§1!-§);
      }
      
      public function §7U§(param1:Number) : void
      {
         this.§#!0§ = Math.min(Math.max(param1,0),1) * (this.§4G§ - this.§1!-§) + this.§1!-§;
      }
      
      public function §2g§() : void
      {
         this.§,!J§ = Math.max(this.§,!J§ - 0.5,0.5);
      }
      
      public function §6!6§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§,!J§;
         _loc1_ += " mXcenterB2: " + this.§5c§;
         _loc1_ += " mYcenterB2: " + this.§0O§;
         _loc1_ += " mXcenterB2target: " + this.§,!J§;
         _loc1_ += "\n mYcenterB2target: " + this.§,!J§;
         _loc1_ += " mXcenterB2previous: " + this.§,!J§;
         _loc1_ += " mYcenterB2previous: " + this.§,!J§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§,!J§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§,!J§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§,!J§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§,!J§;
         _loc1_ += " mTargetScale: " + this.§,!J§;
         _loc1_ += " mTargetScalePrevious: " + this.§,!J§;
         _loc1_ += " mCastleCameraX: " + this.§,!J§;
         _loc1_ += "\n mCastleCameraY: " + this.§,!J§;
         _loc1_ += " mCastleCameraScale: " + this.§,!J§;
         _loc1_ += " mBirdCameraX: " + this.§,!J§;
         _loc1_ += " mBirdCameraY: " + this.§,!J§;
         _loc1_ += " mBirdCameraScale: " + this.§,!J§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§,!J§;
         _loc1_ += " mScreenTopScroll: " + this.§,!J§;
         _loc1_ += " mDragging: " + this.§,!J§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§,!J§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§,!J§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§,!J§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§,!J§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§,!J§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§,!J§;
         _loc1_ += " mDraggingTimer: " + this.§,!J§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§,!J§;
         _loc1_ += " mCameraBorderRight: " + this.§,!J§;
         _loc1_ += " mCameraBorderSky: " + this.§,!J§;
         _loc1_ += " mCameraBorderGround: " + this.§,!J§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§,!J§ + "\n ");
      }
   }
}
