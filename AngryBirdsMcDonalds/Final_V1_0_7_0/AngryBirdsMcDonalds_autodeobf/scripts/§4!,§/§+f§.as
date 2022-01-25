package §4!,§
{
   import §%!5§.§7;§;
   import §'!`§.§%!H§;
   import §-!F§.§;!?§;
   import §-!F§.§`+§;
   import §0i§.§4!%§;
   import §55§.§>![§;
   import §55§.§^!O§;
   
   public class §+f§
   {
      
      public static const §-#§:Number = 1.25;
      
      public static const §0!>§:Number = 0.15;
      
      public static const §4!;§:Number = §7;§.§`B§ * §>![§.§%!k§;
      
      public static const §5&§:Number = §7;§.§]!n§ * §>![§.§%!k§;
      
      public static const §^O§:Number = 0.1;
      
      public static const §4J§:int = 1500;
      
      public static const §^`§:int = 10;
      
      public static const §!S§:int = 15;
      
      public static const §"!T§:int = 300;
      
      public static const §`u§:int = 1000;
      
      public static const §=!o§:int = 10000;
      
      public static const §9q§:int = §=!o§ / 50;
      
      public static const §3!l§:int = 0;
      
      public static const §0!F§:int = 1;
      
      public static const §&!U§:int = 2;
      
      public static const §5!+§:int = 3;
      
      public static const §;O§:int = 4;
      
      public static const §"k§:int = 5;
      
      public static const §4!T§:String = "CASTLE";
      
      public static const §]!?§:String = "SLINGSHOT";
      
      protected static var §#!%§:Number;
      
      public static var §9!W§:Number;
      
      public static var §]!N§:Number;
      
      public static const § 9§:Number = 2000;
       
      
      private var §'!o§:Number = 1.0;
      
      private var §"!f§:Number = 0.2;
      
      protected var §null §:Number;
      
      protected var §&_§:Number;
      
      protected var §'!^§:Number;
      
      public var mLevelMain:§>![§;
      
      public var §%!$§:Number;
      
      public var §'J§:Number;
      
      private var §%!?§:§]M§;
      
      private var §64§:§]M§;
      
      public var §<B§:Number;
      
      public var §-o§:Number;
      
      public var mDragging:Boolean = false;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var §[C§:Number;
      
      public var §`U§:Number;
      
      private var § !3§:Number;
      
      private var §>s§:§!!+§;
      
      private var §!!P§:§!!+§;
      
      protected var § i§:Number = 0;
      
      protected var §!!<§:Number = 0;
      
      protected var §=!]§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § !8§:Number = 0;
      
      public var §?K§:Boolean = true;
      
      public var §5!X§:Number = 0;
      
      public var §[!o§:Number = 0;
      
      public var §0! §:Number = 0;
      
      public var §#1§:Number = 0;
      
      public var §`!'§:Number = 0;
      
      public var §^!k§:Number = 0;
      
      public var §?!1§:Number = 0;
      
      public var §8!j§:Number = 0;
      
      public var §#!l§:Number = 0;
      
      private var §8!g§:§!!+§;
      
      public var §,S§:Number = 0;
      
      private var §1!-§:Number = 0;
      
      private var §6i§:Number = 0;
      
      private var §`H§:§;!?§ = null;
      
      private var §<[§:§;!?§ = null;
      
      public function §+f§(param1:§>![§, param2:§`+§, param3:Number = 1.0)
      {
         this.§8!g§ = new §!!+§(0,0,1,false);
         super();
         this.§&_§ = 0;
         this.§'!^§ = 0;
         this.mLevelMain = param1;
         §+f§.§#!%§ = 1;
         this.§'!o§ = Math.max(1,Math.min(2,param3));
         this.§null § = this.§'!o§;
         this.§=L§(param2);
         if(this.§%!?§ && this.§64§)
         {
            this.§^!?§();
            this.§ i§ = this.§%!?§.x - this.§64§.x;
            this.§!!<§ = this.§%!?§.y - this.§64§.y;
            this.§=!]§ = this.§%!?§.scale - this.§64§.scale;
            this.§&_§ = this.§%!?§.x;
            this.§'!^§ = this.§%!?§.y;
            §#!%§ = this.§%!?§.scale * this.§null §;
         }
         this.mCurrentCameraSliderLocation = §=!o§;
         this.§?K§ = true;
         this.§ !8§ = §=!o§ / 500;
      }
      
      private static function §0!_§() : Number
      {
         var _loc1_:Number = §7;§.§#!T§ / §7;§.§,§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §1!m§() : Number
      {
         return §#!%§ * §0!_§();
      }
      
      public function get manualScale() : Number
      {
         return this.§null §;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§null § = param1;
      }
      
      public function get §[!B§() : Number
      {
         return this.§ !3§;
      }
      
      public function §"!I§() : Number
      {
         return §4!;§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get §&!1§() : Number
      {
         return this.§'!o§;
      }
      
      public function get §'Y§() : Number
      {
         return this.§"!f§;
      }
      
      public function §6M§(param1:Number) : void
      {
         this.§null § = param1;
         this.§@!G§();
         this.§6'§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §"k§)
         {
            return;
         }
         this.goToCastleView();
         this.§5!X§ = 2000;
         this.§1!d§();
         this.§;!P§();
         this.§8r§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§&_§ = this.§64§.x;
         this.§'!^§ = this.§64§.y;
         this.§?K§ = false;
         this.§ !8§ = §=!o§ / 160000 * param1;
         this.setAction(§"k§);
      }
      
      public function §^!?§() : void
      {
         this.mCameraBorderLeft = this.§64§.x - §4!;§ / this.§64§.scale / 2;
         this.mCameraBorderRight = this.§%!?§.x + §4!;§ / this.§%!?§.scale / 2;
         this.§[C§ = this.mLevelMain.§<+§.§,!Y§ - 20 * §>![§.§&!Z§ * §>![§.§%!k§;
         this.§`U§ = this.mLevelMain.§<+§.§,!Y§ + 4;
         var _loc1_:Number = §4!;§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
         this.§ !3§ = this.§`U§ - §5&§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §=L§(param1:§`+§) : void
      {
         var _loc3_:§;!?§ = null;
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
         while(_loc2_ < param1.§'v§)
         {
            _loc3_ = param1.§]5§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§2I§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §5&§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §4!;§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §]!?§)
            {
               this.§64§ = new §]M§(_loc9_,_loc10_,_loc13_,true);
               this.§!!P§ = new §!!+§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §4!T§)
            {
               this.§%!?§ = new §]M§(_loc9_,_loc10_,_loc13_,false);
               this.§>s§ = new §!!+§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §4!%§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §>5§(param1:§`+§) : void
      {
         var _loc2_:§;!?§ = new §;!?§();
         _loc2_.id = §]!?§;
         _loc2_.x = this.§64§.x;
         _loc2_.y = this.§64§.y;
         var _loc3_:Number = §4!;§ / this.§64§.scale / 2;
         var _loc4_:Number = §5&§ / this.§64§.scale / 2;
         _loc2_.left = this.§64§.x - _loc3_;
         _loc2_.right = this.§64§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§;!?§;
         (_loc5_ = new §;!?§()).id = §4!T§;
         _loc5_.x = this.§%!?§.x;
         _loc5_.y = this.§%!?§.y;
         var _loc6_:Number = §4!;§ / this.§%!?§.scale / 2;
         var _loc7_:Number = §5&§ / this.§%!?§.scale / 2;
         _loc5_.left = this.§%!?§.x - _loc6_;
         _loc5_.right = this.§%!?§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§6N§();
         param1.§+F§(_loc2_);
         param1.§+F§(_loc5_);
      }
      
      public function §2I§(param1:§;!?§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §7;§.§`B§ * 0.5 / _loc2_ * §>![§.§%!k§;
         var _loc4_:Number = param1.y - §7;§.§]!n§ * 0.5 / _loc2_ * §>![§.§%!k§;
         var _loc5_:Number = _loc3_ + §7;§.§`B§ / _loc2_ * §>![§.§%!k§;
         var _loc6_:Number = _loc4_ + §7;§.§]!n§ / _loc2_ * §>![§.§%!k§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §8!n§(param1:§]M§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§ !8§;
         if(_loc3_ >= §=!o§)
         {
            _loc3_ = §=!o§;
            this.setAction(§3!l§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§3!l§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§ !8§;
         var _loc4_:Number = -§=!o§ * 0.7;
         if(_loc2_ >= §=!o§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §=!o§;
            }
            this.§ !8§ = -this.§ !8§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §6!X§(param1:Number) : void
      {
         if(this.mCurrentAction == §"k§)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == §0!F§)
         {
            this.§8!n§(this.§%!?§,param1);
         }
         else if(this.mCurrentAction == §&!U§)
         {
            this.§8!n§(this.§64§,-param1);
         }
         else if(this.mCurrentAction == §5!+§)
         {
            this.§?K§ = true;
         }
         else if(this.mCurrentAction == §;O§)
         {
            this.§-r§(param1);
         }
      }
      
      public function §^#§(param1:Number) : void
      {
         if(this.§`H§)
         {
            this.§&_§ = this.§`H§.x;
            this.§'!^§ = this.§`H§.y;
            §#!%§ = §4!;§ / (this.§`H§.right - this.§`H§.left);
         }
         else
         {
            this.§@!G§();
            this.§6!X§(param1);
            this.§0!H§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§1!d§();
         this.§;!P§();
         this.§8r§();
      }
      
      private function §]x§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!P§.scale + (this.§>s§.scale - this.§!!P§.scale) * param1;
         var _loc4_:Number = this.§!!P§.x + (this.§>s§.x - this.§!!P§.x) * param1;
         var _loc5_:Number = this.§!!P§.y + (this.§>s§.y - this.§!!P§.y) * param1;
         this.§8!g§.x -= (this.§8!g§.x - _loc4_) * param2;
         this.§8!g§.y -= (this.§8!g§.y - _loc5_) * param2;
         this.§8!g§.scale -= (this.§8!g§.scale - _loc3_) * param2;
      }
      
      protected function §6'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ i§ != 0)
         {
            if(!this.§?K§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §=!o§;
            this.§]x§(_loc3_,param2);
            this.§&_§ = this.§8!g§.x;
            this.§'!^§ = this.§8!g§.y;
            §#!%§ = this.§8!g§.scale;
         }
      }
      
      public function §0!H§(param1:Number, param2:Number) : void
      {
         var _loc5_:§%!H§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §=!o§)
         {
            this.§?K§ = true;
         }
         if(this.mCurrentAction == §5!+§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.setAction(§0!F§);
               this.§#!l§ = §`u§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§&!p§().GetPosition().x + (!!_loc5_.§1!j§ ? _loc5_.§1!j§ * §>![§.§%!k§ : 0);
               _loc7_ = _loc5_.§&!p§().GetPosition().y + (!!_loc5_.§4! § ? _loc5_.§4! § * §>![§.§%!k§ : 0);
               if((_loc8_ = _loc5_.§&!p§().GetLinearVelocity().x) > 0 && this.§ i§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§ i§ * §=!o§;
               }
               if(param1 >= §=!o§)
               {
                  param1 = §=!o§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §=!o§;
               this.§]x§(_loc9_,_loc4_);
               _loc10_ = this.§8!g§.x - §4!;§ * 0.5 / this.§8!g§.scale;
               _loc11_ = this.§8!g§.y - §5&§ * 0.5 / this.§8!g§.scale;
               _loc12_ = this.§8!g§.x + §4!;§ * 0.5 / this.§8!g§.scale;
               _loc13_ = this.§8!g§.y + §5&§ * 0.5 / this.§8!g§.scale;
               _loc14_ = 150 * §>![§.§%!k§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
               _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
               _loc19_ = Math.abs(§4!;§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§5&§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§8!g§.scale)
               {
                  _loc21_ = this.§8!g§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §4!;§ * 0.5 / _loc21_ > this.mCameraBorderRight)
               {
                  _loc15_ = (_loc17_ = this.mCameraBorderRight) - §4!;§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.mCameraBorderLeft)
                  {
                     _loc15_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc22_ - §4!;§ * 0.5 / _loc21_ < this.mCameraBorderLeft)
               {
                  _loc17_ = (_loc15_ = this.mCameraBorderLeft) + §4!;§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.mCameraBorderRight)
                  {
                     _loc17_ = this.mCameraBorderRight;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§4!;§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §4!;§ * 0.5 / _loc21_ < this.§[C§)
               {
                  _loc23_ = this.§[C§ + §4!;§ * 0.5 / _loc21_;
               }
               this.§&_§ -= (this.§&_§ - _loc22_) * _loc4_;
               this.§,S§ -= (this.§,S§ - _loc21_) * _loc4_;
               §#!%§ = this.§,S§;
               this.§'!^§ -= (this.§'!^§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.mCameraBorderRight || _loc6_ <= this.mCameraBorderLeft)
               {
                  this.§8!g§.scale = §#!%§;
                  this.§8!g§.x = this.§&_§;
                  this.§8!g§.y = this.§'!^§;
               }
            }
         }
         else
         {
            this.§6'§(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.§1!-§ = param1;
         this.§6i§ = param2;
      }
      
      private function §1T§(param1:§!!+§, param2:§]M§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §0!>§ + (param2.scale - §0!>§) * this.§null § * §+f§.§0!_§();
         if(§4!;§ / param1.scale > this.mCameraBorderRight - this.mCameraBorderLeft)
         {
            _loc3_ = §4!;§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §+!d§(param1:§!!+§, param2:§]M§) : Boolean
      {
         var _loc3_:Boolean = this.§1T§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §5&§ * 0.5 / param1.scale;
         var _loc5_:Number = §5&§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §4!;§ * 0.5 / param1.scale) < this.mCameraBorderLeft && param1.§9;§)
         {
            param1.x += this.mCameraBorderLeft - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §4!;§ * 0.5 / param1.scale) > this.mCameraBorderRight && !param1.§9;§)
         {
            param1.x += this.mCameraBorderRight - _loc7_;
         }
         return _loc3_;
      }
      
      private function §[!`§(param1:§!!+§, param2:§]M§) : Number
      {
         return (param1.scale - §0!>§) / (§+f§.§0!_§() * (param2.scale - §0!>§));
      }
      
      protected function §@!G§() : void
      {
         this.§+!d§(this.§!!P§,this.§64§);
         var _loc1_:Number = this.§[!`§(this.§!!P§,this.§64§);
         this.§+!d§(this.§>s§,this.§%!?§);
         var _loc2_:Number = this.§[!`§(this.§>s§,this.§%!?§);
         this.§null § = Math.min(_loc1_,_loc2_);
      }
      
      public function §1!d§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §7;§.§2h§() / §7;§.§#!T§ - §7;§.§]!n§ >> 1;
            §9!W§ = this.mLevelMain.sprite.x = §>![§.§<d§ * ((1 - §+f§.§1!m§) / 2);
            §]!N§ = this.mLevelMain.sprite.y = _loc1_ + §>![§.§&!Z§ * (1 - §+f§.§1!m§) * §^!O§.§7!^§;
         }
      }
      
      public function §8r§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §1!m§;
            this.mLevelMain.sprite.scaleY = §1!m§;
         }
      }
      
      public function §;!P§() : void
      {
         var _loc1_:Number = this.§&_§ / §>![§.§%!k§ + this.§1!-§;
         var _loc2_:Number = this.§'!^§ / §>![§.§%!k§ + this.§6i§;
         this.§<B§ = _loc1_ - §>![§.§<d§ / 2 * §7;§.§#!T§ / §7;§.§<0§;
         this.§-o§ = _loc2_ - §>![§.§&!Z§ / 2 + §^!O§.§ !#§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§ !l§(this.§<B§,this.§-o§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§ !l§(this.§<B§,this.§-o§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§ !l§(this.§<B§,this.§-o§,§1!m§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§ !l§(this.§<B§,this.§-o§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§ !l§(this.§<B§,this.§-o§);
         }
      }
      
      protected function §;X§() : void
      {
         this.setAction(§;O§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§#!l§ = -1;
         this.§;X§();
         this.§`!'§ = this.§?!1§ = this.§0! § = param1;
         this.§^!k§ = this.§8!j§ = this.§#1§ = param2;
         this.§[!o§ = 0;
         this.§8!g§.x = this.§&_§;
         this.§8!g§.y = this.§'!^§;
         this.§8!g§.scale = §#!%§;
         this.§,S§ = §#!%§;
         if(Math.abs(this.§>s§.x - this.§!!P§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§&_§ - this.§!!P§.x) / (this.§>s§.x - this.§!!P§.x) * §=!o§;
         }
         this.mDragging = true;
      }
      
      public function §-r§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[!o§ += param1;
         var _loc3_:Number = this.§`!'§ - this.§?!1§;
         if(this.§ i§ > 0)
         {
            _loc2_ -= _loc3_ * §>![§.§%!k§ / §1!m§ / this.§ i§ * §=!o§;
            this.§?K§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§?K§ = true;
            }
            if(_loc2_ > §=!o§)
            {
               _loc2_ += (§=!o§ - _loc2_) * 0.3;
               this.§?K§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§?!1§ = this.§`!'§;
      }
      
      protected function §1J§() : Boolean
      {
         return this.mCurrentAction == §;O§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§`!'§ = param1;
            this.§^!k§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;O§)
         {
            this.setAction(§3!l§);
            if(param1 > 0)
            {
               this.§`!'§ = param1;
            }
            _loc3_ = Math.abs(this.§`!'§ - this.§0! §);
            if(this.§[!o§ < §4J§ && _loc3_ >= §^`§ && _loc3_ >= §!S§ * this.§[!o§ / 1000)
            {
               if(this.§`!'§ < this.§0! §)
               {
                  this.setAction(§0!F§);
               }
               else
               {
                  this.setAction(§&!U§);
               }
               this.§ !8§ = _loc3_ / this.§[!o§ * 10;
               this.§?K§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§?K§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §=!o§)
               {
                  this.§?K§ = true;
               }
            }
            else if(this.§[!o§ < §"!T§)
            {
               this.§'!]§();
               this.§ !8§ = §=!o§ / (§=!o§ / 500);
               this.§?K§ = true;
            }
            else
            {
               this.§-r§(0);
               this.§=H§(0);
               this.§ !8§ = §=!o§ / (§=!o§ / 500);
               this.§?K§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'!]§() : void
      {
         if(this.mCurrentAction == §0!F§)
         {
            this.setAction(§&!U§);
         }
         else if(this.mCurrentAction == §&!U§)
         {
            this.setAction(§0!F§);
         }
         else if(this.mCurrentCameraSliderLocation >= §=!o§ / 2)
         {
            this.setAction(§&!U§);
         }
         else if(this.mCurrentCameraSliderLocation <= §=!o§ / 2)
         {
            this.setAction(§0!F§);
         }
      }
      
      public function §=H§(param1:int) : void
      {
         this.§#!l§ = param1;
         if(this.mCurrentCameraSliderLocation < §=!o§ / 2)
         {
            this.setAction(§&!U§);
         }
         else
         {
            this.setAction(§0!F§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§&!U§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§0!F§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§8!g§.x = this.§&_§;
         this.§8!g§.y = this.§'!^§;
         this.§8!g§.scale = §#!%§;
         this.§,S§ = §#!%§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §=!o§)
         {
            return true;
         }
         if(this.mCurrentAction == §0!F§)
         {
            return true;
         }
         return false;
      }
      
      public function §0h§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §&!U§)
         {
            return true;
         }
         return false;
      }
      
      public function §;r§(param1:§;!?§) : void
      {
         this.§`H§ = param1;
         if(this.§`H§ != null)
         {
            this.§<[§ = new §;!?§();
            this.§<[§.x = this.§&_§;
            this.§<[§.y = this.§'!^§;
            this.§<[§.scale = §#!%§;
         }
         else
         {
            this.§&_§ = this.§<[§.x;
            this.§'!^§ = this.§<[§.y;
            §#!%§ = this.§<[§.scale;
            this.§<[§ = null;
         }
      }
      
      protected function §9!G§() : void
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
         var _loc3_:Number = this.§null §;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§'Y§,Math.min(this.§&!1§,_loc3_));
         if(_loc3_ != this.§null §)
         {
            this.§null § = _loc3_;
            this.§9!G§();
         }
      }
      
      public function §,!R§() : Number
      {
         return (this.manualScale - this.§'Y§) / (this.§&!1§ - this.§'Y§);
      }
      
      public function §<!K§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§&!1§ - this.§'Y§) + this.§'Y§;
      }
      
      public function §5!g§() : void
      {
         this.§null § = Math.max(this.§null § - 0.5,0.5);
      }
      
      public function §^d§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§null §;
         _loc1_ += " mXcenterB2: " + this.§&_§;
         _loc1_ += " mYcenterB2: " + this.§'!^§;
         _loc1_ += " mXcenterB2target: " + this.§null §;
         _loc1_ += "\n mYcenterB2target: " + this.§null §;
         _loc1_ += " mXcenterB2previous: " + this.§null §;
         _loc1_ += " mYcenterB2previous: " + this.§null §;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§null §;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§null §;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§null §;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§null §;
         _loc1_ += " mTargetScale: " + this.§null §;
         _loc1_ += " mTargetScalePrevious: " + this.§null §;
         _loc1_ += " mCastleCameraX: " + this.§null §;
         _loc1_ += "\n mCastleCameraY: " + this.§null §;
         _loc1_ += " mCastleCameraScale: " + this.§null §;
         _loc1_ += " mBirdCameraX: " + this.§null §;
         _loc1_ += " mBirdCameraY: " + this.§null §;
         _loc1_ += " mBirdCameraScale: " + this.§null §;
         _loc1_ += "\n mScreenLeftScroll: " + this.§null §;
         _loc1_ += " mScreenTopScroll: " + this.§null §;
         _loc1_ += " mDragging: " + this.§null §;
         _loc1_ += " mDraggingPointPreviousX: " + this.§null §;
         _loc1_ += " mDraggingPointPreviousY: " + this.§null §;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§null §;
         _loc1_ += " mDraggingPointCurrentY: " + this.§null §;
         _loc1_ += " mDraggingPointOriginalX: " + this.§null §;
         _loc1_ += " mDraggingPointOriginalY: " + this.§null §;
         _loc1_ += " mDraggingTimer: " + this.§null §;
         _loc1_ += "\n mCameraBorderLeft: " + this.§null §;
         _loc1_ += " mCameraBorderRight: " + this.§null §;
         _loc1_ += " mCameraBorderSky: " + this.§null §;
         _loc1_ += " mCameraBorderGround: " + this.§null §;
         return _loc1_ + (" mPigsAreOnRight: " + this.§null § + "\n ");
      }
   }
}
