package §6h§
{
   import §&b§.§[F§;
   import §1E§.§5T§;
   import §1E§.§`_§;
   import §3!O§.§5q§;
   import §4!-§.§%o§;
   import §4!-§.§4`§;
   import §>Y§.§#o§;
   
   public class §?!I§
   {
      
      public static const §?!5§:Number = 1.25;
      
      public static const §&!>§:Number = 0.15;
      
      public static const §-i§:Number = §[F§.§[!1§ * §%o§.§]!?§;
      
      public static const §@^§:Number = §[F§.§87§ * §%o§.§]!?§;
      
      public static const §;3§:Number = 0.1;
      
      public static const §3! §:int = 1500;
      
      public static const §,!?§:int = 10;
      
      public static const §0!2§:int = 15;
      
      public static const §4y§:int = 300;
      
      public static const §3[§:int = 1000;
      
      public static const §5d§:int = 10000;
      
      public static const §%@§:int = §5d§ / 50;
      
      public static const §-"§:int = 0;
      
      public static const §1!2§:int = 1;
      
      public static const §3u§:int = 2;
      
      public static const §+,§:int = 3;
      
      public static const §,X§:int = 4;
      
      public static const §'!;§:int = 5;
      
      public static const §3!P§:String = "CASTLE";
      
      public static const §6!<§:String = "SLINGSHOT";
      
      protected static var §<K§:Number;
      
      public static var §3^§:Number;
      
      public static var §use §:Number;
      
      public static const §@!2§:Number = 2000;
       
      
      private var §2P§:Number = 1.0;
      
      private var §<t§:Number = 0.2;
      
      protected var §%!?§:Number;
      
      protected var §?w§:Number;
      
      protected var §64§:Number;
      
      public var §'!8§:§%o§;
      
      public var §=N§:Number;
      
      public var §break§:Number;
      
      private var §;!L§:§+&§;
      
      private var §+4§:§+&§;
      
      public var §+!%§:Number;
      
      public var §9!L§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §,!G§:Number;
      
      public var §4H§:Number;
      
      public var §&"§:Number;
      
      public var §0!L§:Number;
      
      private var §<Y§:Number;
      
      private var §;h§:§=U§;
      
      private var §+!"§:§=U§;
      
      protected var §1R§:Number = 0;
      
      protected var §-!5§:Number = 0;
      
      protected var §4W§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §2<§:Number = 0;
      
      public var §,!=§:Boolean = true;
      
      public var §;!,§:Number = 0;
      
      public var §5v§:Number = 0;
      
      public var §"_§:Number = 0;
      
      public var § do§:Number = 0;
      
      public var §"#§:Number = 0;
      
      public var §6!5§:Number = 0;
      
      public var §'m§:Number = 0;
      
      public var §-c§:Number = 0;
      
      public var §+f§:Number = 0;
      
      private var §?!P§:§=U§;
      
      public var §2q§:Number = 0;
      
      private var §6t§:Number = 0;
      
      private var §#!K§:Number = 0;
      
      private var §1k§:§`_§ = null;
      
      private var §"k§:§`_§ = null;
      
      public function §?!I§(param1:§%o§, param2:§5T§, param3:Number = 1.0)
      {
         this.§?!P§ = new §=U§(0,0,1,false);
         super();
         this.§?w§ = 0;
         this.§64§ = 0;
         this.§'!8§ = param1;
         §?!I§.§<K§ = 1;
         this.§2P§ = Math.max(1,Math.min(2,param3));
         this.§%!?§ = this.§2P§;
         this.§+!B§(param2);
         if(this.§;!L§ && this.§+4§)
         {
            this.§1!4§();
            this.§1R§ = this.§;!L§.x - this.§+4§.x;
            this.§-!5§ = this.§;!L§.y - this.§+4§.y;
            this.§4W§ = this.§;!L§.scale - this.§+4§.scale;
            this.§?w§ = this.§;!L§.x;
            this.§64§ = this.§;!L§.y;
            §<K§ = this.§;!L§.scale * this.§%!?§;
         }
         this.mCurrentCameraSliderLocation = §5d§;
         this.§,!=§ = true;
         this.§2<§ = §5d§ / 500;
      }
      
      private static function § !+§() : Number
      {
         var _loc1_:Number = §[F§.§9h§ / §[F§.§9!M§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get levelScale() : Number
      {
         return §<K§ * § !+§();
      }
      
      public function get §+i§() : Number
      {
         return this.§%!?§;
      }
      
      public function set §+i§(param1:Number) : void
      {
         this.§%!?§ = param1;
      }
      
      public function get §"D§() : Number
      {
         return this.§<Y§;
      }
      
      public function §[!;§() : Number
      {
         return §-i§ / (this.§4H§ - this.§,!G§);
      }
      
      public function get §?$§() : Number
      {
         return this.§2P§;
      }
      
      public function get §7#§() : Number
      {
         return this.§<t§;
      }
      
      public function §7f§(param1:Number) : void
      {
         this.§%!?§ = param1;
         this.§>!@§();
         this.§!!M§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §'!;§)
         {
            return;
         }
         this.goToCastleView();
         this.§;!,§ = 2000;
         this.adjustLevelMainViewAccordingToScale();
         this.§^P§();
         this.§"b§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§?w§ = this.§+4§.x;
         this.§64§ = this.§+4§.y;
         this.§,!=§ = false;
         this.§2<§ = §5d§ / 160000 * param1;
         this.§!!1§(§'!;§);
      }
      
      public function §1!4§() : void
      {
         this.§,!G§ = this.§+4§.x - §-i§ / this.§+4§.scale / 2;
         this.§4H§ = this.§;!L§.x + §-i§ / this.§;!L§.scale / 2;
         this.§&"§ = this.§'!8§.§=!#§.§,!2§ - 20 * §%o§.§,,§ * §%o§.§]!?§;
         this.§0!L§ = this.§'!8§.§=!#§.§,!2§ + 4;
         var _loc1_:Number = §-i§ / (this.§4H§ - this.§,!G§);
         this.§<Y§ = this.§0!L§ - §@^§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§'!8§ = null;
      }
      
      public function §+!B§(param1:§5T§) : void
      {
         var _loc3_:§`_§ = null;
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
         while(_loc2_ < param1.§8!!§)
         {
            _loc3_ = param1.§-Q§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§-<§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §@^§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §-i§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §6!<§)
            {
               this.§+4§ = new §+&§(_loc9_,_loc10_,_loc13_,true);
               this.§+!"§ = new §=U§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §3!P§)
            {
               this.§;!L§ = new §+&§(_loc9_,_loc10_,_loc13_,false);
               this.§;h§ = new §=U§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §5q§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §;4§(param1:§5T§) : void
      {
         var _loc2_:§`_§ = new §`_§();
         _loc2_.id = §6!<§;
         _loc2_.x = this.§+4§.x;
         _loc2_.y = this.§+4§.y;
         var _loc3_:Number = §-i§ / this.§+4§.scale / 2;
         var _loc4_:Number = §@^§ / this.§+4§.scale / 2;
         _loc2_.left = this.§+4§.x - _loc3_;
         _loc2_.right = this.§+4§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§`_§;
         (_loc5_ = new §`_§()).id = §3!P§;
         _loc5_.x = this.§;!L§.x;
         _loc5_.y = this.§;!L§.y;
         var _loc6_:Number = §-i§ / this.§;!L§.scale / 2;
         var _loc7_:Number = §@^§ / this.§;!L§.scale / 2;
         _loc5_.left = this.§;!L§.x - _loc6_;
         _loc5_.right = this.§;!L§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§]!§();
         param1.§^c§(_loc2_);
         param1.§^c§(_loc5_);
      }
      
      public function §-<§(param1:§`_§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[F§.§[!1§ * 0.5 / _loc2_ * §%o§.§]!?§;
         var _loc4_:Number = param1.y - §[F§.§87§ * 0.5 / _loc2_ * §%o§.§]!?§;
         var _loc5_:Number = _loc3_ + §[F§.§[!1§ / _loc2_ * §%o§.§]!?§;
         var _loc6_:Number = _loc4_ + §[F§.§87§ / _loc2_ * §%o§.§]!?§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §^q§(param1:§+&§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§2<§;
         if(_loc3_ >= §5d§)
         {
            _loc3_ = §5d§;
            this.§!!1§(§-"§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§!!1§(§-"§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §@-§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§2<§;
         var _loc4_:Number = -§5d§ * 0.7;
         if(_loc2_ >= §5d§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §5d§;
            }
            this.§2<§ = -this.§2<§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §&v§(param1:Number) : void
      {
         if(this.mCurrentAction == §'!;§)
         {
            this.§@-§(param1);
         }
         else if(this.mCurrentAction == §1!2§)
         {
            this.§^q§(this.§;!L§,param1);
         }
         else if(this.mCurrentAction == §3u§)
         {
            this.§^q§(this.§+4§,-param1);
         }
         else if(this.mCurrentAction == §+,§)
         {
            this.§,!=§ = true;
         }
         else if(this.mCurrentAction == §,X§)
         {
            this.§"p§(param1);
         }
      }
      
      public function §]!G§(param1:Number) : void
      {
         if(this.§1k§)
         {
            this.§?w§ = this.§1k§.x;
            this.§64§ = this.§1k§.y;
            §<K§ = §-i§ / (this.§1k§.right - this.§1k§.left);
         }
         else
         {
            this.§>!@§();
            this.§&v§(param1);
            this.§ var§(this.mCurrentCameraSliderLocation,param1);
         }
         this.adjustLevelMainViewAccordingToScale();
         this.§^P§();
         this.§"b§();
      }
      
      private function §5o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+!"§.scale + (this.§;h§.scale - this.§+!"§.scale) * param1;
         var _loc4_:Number = this.§+!"§.x + (this.§;h§.x - this.§+!"§.x) * param1;
         var _loc5_:Number = this.§+!"§.y + (this.§;h§.y - this.§+!"§.y) * param1;
         this.§?!P§.x -= (this.§?!P§.x - _loc4_) * param2;
         this.§?!P§.y -= (this.§?!P§.y - _loc5_) * param2;
         this.§?!P§.scale -= (this.§?!P§.scale - _loc3_) * param2;
      }
      
      protected function §!!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§1R§ != 0)
         {
            if(!this.§,!=§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §5d§;
            this.§5o§(_loc3_,param2);
            this.§?w§ = this.§?!P§.x;
            this.§64§ = this.§?!P§.y;
            §<K§ = this.§?!P§.scale;
         }
      }
      
      public function § var§(param1:Number, param2:Number) : void
      {
         var _loc5_:§#o§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §5d§)
         {
            this.§,!=§ = true;
         }
         if(this.mCurrentAction == §+,§)
         {
            if(!this.§'!8§.activeObject)
            {
               this.§!!1§(§1!2§);
               this.§+f§ = §3[§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§'!8§.activeObject).§[5§().GetPosition().x + (!!_loc5_.§^,§ ? _loc5_.§^,§ * §%o§.§]!?§ : 0);
               _loc7_ = _loc5_.§[5§().GetPosition().y + (!!_loc5_.§-L§ ? _loc5_.§-L§ * §%o§.§]!?§ : 0);
               if((_loc8_ = _loc5_.§[5§().GetLinearVelocity().x) > 0 && this.§1R§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§1R§ * §5d§;
               }
               if(param1 >= §5d§)
               {
                  param1 = §5d§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §5d§;
               this.§5o§(_loc9_,_loc4_);
               _loc10_ = this.§?!P§.x - §-i§ * 0.5 / this.§?!P§.scale;
               _loc11_ = this.§?!P§.y - §@^§ * 0.5 / this.§?!P§.scale;
               _loc12_ = this.§?!P§.x + §-i§ * 0.5 / this.§?!P§.scale;
               _loc13_ = this.§?!P§.y + §@^§ * 0.5 / this.§?!P§.scale;
               _loc14_ = 150 * §%o§.§]!?§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§,!G§,_loc15_);
               _loc17_ = Math.min(this.§4H§,_loc17_);
               _loc19_ = Math.abs(§-i§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§@^§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§?!P§.scale)
               {
                  _loc21_ = this.§?!P§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §-i§ * 0.5 / _loc21_ > this.§4H§)
               {
                  _loc15_ = (_loc17_ = this.§4H§) - §-i§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§,!G§)
                  {
                     _loc15_ = this.§,!G§;
                  }
               }
               if(_loc22_ - §-i§ * 0.5 / _loc21_ < this.§,!G§)
               {
                  _loc17_ = (_loc15_ = this.§,!G§) + §-i§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§4H§)
                  {
                     _loc17_ = this.§4H§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§-i§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §-i§ * 0.5 / _loc21_ < this.§&"§)
               {
                  _loc23_ = this.§&"§ + §-i§ * 0.5 / _loc21_;
               }
               this.§?w§ -= (this.§?w§ - _loc22_) * _loc4_;
               this.§2q§ -= (this.§2q§ - _loc21_) * _loc4_;
               §<K§ = this.§2q§;
               this.§64§ -= (this.§64§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§4H§ || _loc6_ <= this.§,!G§)
               {
                  this.§?!P§.scale = §<K§;
                  this.§?!P§.x = this.§?w§;
                  this.§?!P§.y = this.§64§;
               }
            }
         }
         else
         {
            this.§!!M§(param1,_loc4_);
         }
      }
      
      public function §<6§(param1:Number, param2:Number) : void
      {
         this.§6t§ = param1;
         this.§#!K§ = param2;
      }
      
      private function §^!7§(param1:§=U§, param2:§+&§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §&!>§ + (param2.scale - §&!>§) * this.§%!?§ * §?!I§.§ !+§();
         if(§-i§ / param1.scale > this.§4H§ - this.§,!G§)
         {
            _loc3_ = §-i§ / (this.§4H§ - this.§,!G§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §`Y§(param1:§=U§, param2:§+&§) : Boolean
      {
         var _loc3_:Boolean = this.§^!7§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §@^§ * 0.5 / param1.scale;
         var _loc5_:Number = §@^§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §-i§ * 0.5 / param1.scale) < this.§,!G§ && param1.§3!9§)
         {
            param1.x += this.§,!G§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §-i§ * 0.5 / param1.scale) > this.§4H§ && !param1.§3!9§)
         {
            param1.x += this.§4H§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §[!9§(param1:§=U§, param2:§+&§) : Number
      {
         return (param1.scale - §&!>§) / (§?!I§.§ !+§() * (param2.scale - §&!>§));
      }
      
      protected function §>!@§() : void
      {
         this.§`Y§(this.§+!"§,this.§+4§);
         var _loc1_:Number = this.§[!9§(this.§+!"§,this.§+4§);
         this.§`Y§(this.§;h§,this.§;!L§);
         var _loc2_:Number = this.§[!9§(this.§;h§,this.§;!L§);
         this.§%!?§ = Math.min(_loc1_,_loc2_);
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         if(this.§'!8§.sprite)
         {
            _loc1_ = §[F§.§;'§() / §[F§.§9h§ - §[F§.§87§ >> 1;
            §3^§ = this.§'!8§.sprite.x = §%o§.§3V§ * ((1 - §?!I§.levelScale) / 2);
            §use § = this.§'!8§.sprite.y = _loc1_ + §%o§.§,,§ * (1 - §?!I§.levelScale) * §4`§.§ `§;
         }
      }
      
      public function §"b§() : void
      {
         if(this.§'!8§.sprite)
         {
            this.§'!8§.sprite.scaleX = levelScale;
            this.§'!8§.sprite.scaleY = levelScale;
         }
      }
      
      public function §^P§() : void
      {
         var _loc1_:Number = this.§?w§ / §%o§.§]!?§ + this.§6t§;
         var _loc2_:Number = this.§64§ / §%o§.§]!?§ + this.§#!K§;
         this.§+!%§ = _loc1_ - §%o§.§3V§ / 2 * §[F§.§9h§ / §[F§.§2F§;
         this.§9!L§ = _loc2_ - §%o§.§,,§ / 2 + §4`§.§'a§;
         if(this.§'!8§.background)
         {
            this.§'!8§.background.§`2§(this.§+!%§,this.§9!L§);
         }
         if(this.§'!8§.objects)
         {
            this.§'!8§.objects.§`2§(this.§+!%§,this.§9!L§);
         }
         if(this.§'!8§.§,!%§)
         {
            this.§'!8§.§,!%§.§`2§(this.§+!%§,this.§9!L§,levelScale);
         }
         if(this.§'!8§.slingshot)
         {
            this.§'!8§.slingshot.§`2§(this.§+!%§,this.§9!L§);
         }
         if(this.§'!8§.particles)
         {
            this.§'!8§.particles.§`2§(this.§+!%§,this.§9!L§);
         }
      }
      
      protected function §<!5§() : void
      {
         this.§!!1§(§,X§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§+f§ = -1;
         this.§<!5§();
         this.§"#§ = this.§'m§ = this.§"_§ = param1;
         this.§6!5§ = this.§-c§ = this.§ do§ = param2;
         this.§5v§ = 0;
         this.§?!P§.x = this.§?w§;
         this.§?!P§.y = this.§64§;
         this.§?!P§.scale = §<K§;
         this.§2q§ = §<K§;
         if(Math.abs(this.§;h§.x - this.§+!"§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§?w§ - this.§+!"§.x) / (this.§;h§.x - this.§+!"§.x) * §5d§;
         }
         this.mDragging = true;
      }
      
      public function §"p§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§5v§ += param1;
         var _loc3_:Number = this.§"#§ - this.§'m§;
         if(this.§1R§ > 0)
         {
            _loc2_ -= _loc3_ * §%o§.§]!?§ / levelScale / this.§1R§ * §5d§;
            this.§,!=§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§,!=§ = true;
            }
            if(_loc2_ > §5d§)
            {
               _loc2_ += (§5d§ - _loc2_) * 0.3;
               this.§,!=§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§'m§ = this.§"#§;
      }
      
      protected function § ]§() : Boolean
      {
         return this.mCurrentAction == §,X§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§"#§ = param1;
            this.§6!5§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §,X§)
         {
            this.§!!1§(§-"§);
            if(param1 > 0)
            {
               this.§"#§ = param1;
            }
            _loc3_ = Math.abs(this.§"#§ - this.§"_§);
            if(this.§5v§ < §3! § && _loc3_ >= §,!?§ && _loc3_ >= §0!2§ * this.§5v§ / 1000)
            {
               if(this.§"#§ < this.§"_§)
               {
                  this.§!!1§(§1!2§);
               }
               else
               {
                  this.§!!1§(§3u§);
               }
               this.§2<§ = _loc3_ / this.§5v§ * 10;
               this.§,!=§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§,!=§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §5d§)
               {
                  this.§,!=§ = true;
               }
            }
            else if(this.§5v§ < §4y§)
            {
               this.§"t§();
               this.§2<§ = §5d§ / (§5d§ / 500);
               this.§,!=§ = true;
            }
            else
            {
               this.§"p§(0);
               this.§4!I§(0);
               this.§2<§ = §5d§ / (§5d§ / 500);
               this.§,!=§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"t§() : void
      {
         if(this.mCurrentAction == §1!2§)
         {
            this.§!!1§(§3u§);
         }
         else if(this.mCurrentAction == §3u§)
         {
            this.§!!1§(§1!2§);
         }
         else if(this.mCurrentCameraSliderLocation >= §5d§ / 2)
         {
            this.§!!1§(§3u§);
         }
         else if(this.mCurrentCameraSliderLocation <= §5d§ / 2)
         {
            this.§!!1§(§1!2§);
         }
      }
      
      public function §4!I§(param1:int) : void
      {
         this.§+f§ = param1;
         if(this.mCurrentCameraSliderLocation < §5d§ / 2)
         {
            this.§!!1§(§3u§);
         }
         else
         {
            this.§!!1§(§1!2§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§!!1§(§3u§);
      }
      
      public function goToCastleView() : void
      {
         this.§!!1§(§1!2§);
      }
      
      public function §!!1§(param1:int) : void
      {
         this.§?!P§.x = this.§?w§;
         this.§?!P§.y = this.§64§;
         this.§?!P§.scale = §<K§;
         this.§2q§ = §<K§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §5d§)
         {
            return true;
         }
         if(this.mCurrentAction == §1!2§)
         {
            return true;
         }
         return false;
      }
      
      public function §2!@§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §3u§)
         {
            return true;
         }
         return false;
      }
      
      public function §7<§(param1:§`_§) : void
      {
         this.§1k§ = param1;
         if(this.§1k§ != null)
         {
            this.§"k§ = new §`_§();
            this.§"k§.x = this.§?w§;
            this.§"k§.y = this.§64§;
            this.§"k§.scale = §<K§;
         }
         else
         {
            this.§?w§ = this.§"k§.x;
            this.§64§ = this.§"k§.y;
            §<K§ = this.§"k§.scale;
            this.§"k§ = null;
         }
      }
      
      protected function §[?§() : void
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
         var _loc3_:Number = this.§%!?§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§7#§,Math.min(this.§?$§,_loc3_));
         if(_loc3_ != this.§%!?§)
         {
            this.§%!?§ = _loc3_;
            this.§[?§();
         }
      }
      
      public function §!l§() : Number
      {
         return (this.§+i§ - this.§7#§) / (this.§?$§ - this.§7#§);
      }
      
      public function §%D§(param1:Number) : void
      {
         this.§+i§ = Math.min(Math.max(param1,0),1) * (this.§?$§ - this.§7#§) + this.§7#§;
      }
      
      public function §+7§() : void
      {
         this.§%!?§ = Math.max(this.§%!?§ - 0.5,0.5);
      }
      
      public function §+V§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§%!?§;
         _loc1_ += " mXcenterB2: " + this.§?w§;
         _loc1_ += " mYcenterB2: " + this.§64§;
         _loc1_ += " mXcenterB2target: " + this.§%!?§;
         _loc1_ += "\n mYcenterB2target: " + this.§%!?§;
         _loc1_ += " mXcenterB2previous: " + this.§%!?§;
         _loc1_ += " mYcenterB2previous: " + this.§%!?§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§%!?§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§%!?§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§%!?§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§%!?§;
         _loc1_ += " mTargetScale: " + this.§%!?§;
         _loc1_ += " mTargetScalePrevious: " + this.§%!?§;
         _loc1_ += " mCastleCameraX: " + this.§%!?§;
         _loc1_ += "\n mCastleCameraY: " + this.§%!?§;
         _loc1_ += " mCastleCameraScale: " + this.§%!?§;
         _loc1_ += " mBirdCameraX: " + this.§%!?§;
         _loc1_ += " mBirdCameraY: " + this.§%!?§;
         _loc1_ += " mBirdCameraScale: " + this.§%!?§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§%!?§;
         _loc1_ += " mScreenTopScroll: " + this.§%!?§;
         _loc1_ += " mDragging: " + this.§%!?§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§%!?§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§%!?§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§%!?§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§%!?§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§%!?§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§%!?§;
         _loc1_ += " mDraggingTimer: " + this.§%!?§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§%!?§;
         _loc1_ += " mCameraBorderRight: " + this.§%!?§;
         _loc1_ += " mCameraBorderSky: " + this.§%!?§;
         _loc1_ += " mCameraBorderGround: " + this.§%!?§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§%!?§ + "\n ");
      }
   }
}
