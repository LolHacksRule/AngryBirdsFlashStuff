package §^U§
{
   import § !Y§.§2#§;
   import §3!@§.§ s§;
   import §3!@§.§?4§;
   import §5K§.§[C§;
   import §?!§.§%o§;
   import §finally§.§@z§;
   import §finally§.§`!h§;
   
   public class §3$§
   {
      
      public static const §`B§:Number = 1.25;
      
      public static const §%!U§:Number = 0.15;
      
      public static const §;!9§:Number = §2#§.§#@§ * § s§.§<!h§;
      
      public static const §6W§:Number = §2#§.§#k§ * § s§.§<!h§;
      
      public static const §6u§:Number = 0.1;
      
      public static const §6!X§:int = 1500;
      
      public static const §4!=§:int = 10;
      
      public static const §`!#§:int = 15;
      
      public static const §1B§:int = 300;
      
      public static const §7J§:int = 1000;
      
      public static const §7t§:int = 10000;
      
      public static const §5d§:int = §7t§ / 50;
      
      public static const §7!U§:int = 0;
      
      public static const §%8§:int = 1;
      
      public static const §0!I§:int = 2;
      
      public static const §'!O§:int = 3;
      
      public static const § i§:int = 4;
      
      public static const §@o§:int = 5;
      
      public static const §7!L§:String = "CASTLE";
      
      public static const §?T§:String = "SLINGSHOT";
      
      protected static var §#T§:Number;
      
      public static var §2!d§:Number;
      
      public static var §4!,§:Number;
      
      public static const §,!o§:Number = 2000;
       
      
      private var §5E§:Number = 1.0;
      
      private var §=!b§:Number = 0.2;
      
      protected var §'U§:Number;
      
      protected var §?R§:Number;
      
      protected var §?!J§:Number;
      
      public var mLevelMain:§ s§;
      
      public var §+!E§:Number;
      
      public var §+R§:Number;
      
      private var §7!K§:§-!c§;
      
      private var §[!9§:§-!c§;
      
      public var §8!^§:Number;
      
      public var §!O§:Number;
      
      public var mDragging:Boolean = false;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var §"!W§:Number;
      
      public var §=!d§:Number;
      
      private var §0A§:Number;
      
      private var §4!_§:§1M§;
      
      private var §9a§:§1M§;
      
      protected var §?u§:Number = 0;
      
      protected var §<,§:Number = 0;
      
      protected var §=!3§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §0!$§:Number = 0;
      
      public var §%!o§:Boolean = true;
      
      public var §%!$§:Number = 0;
      
      public var §#J§:Number = 0;
      
      public var §%!^§:Number = 0;
      
      public var §6!+§:Number = 0;
      
      public var §4G§:Number = 0;
      
      public var §8y§:Number = 0;
      
      public var §5!-§:Number = 0;
      
      public var §@k§:Number = 0;
      
      public var §>!,§:Number = 0;
      
      private var §`w§:§1M§;
      
      public var §]!M§:Number = 0;
      
      private var §^O§:Number = 0;
      
      private var §=i§:Number = 0;
      
      private var §]!j§:§`!h§ = null;
      
      private var §2B§:§`!h§ = null;
      
      public function §3$§(param1:§ s§, param2:§@z§, param3:Number = 1.0)
      {
         this.§`w§ = new §1M§(0,0,1,false);
         super();
         this.§?R§ = 0;
         this.§?!J§ = 0;
         this.mLevelMain = param1;
         §3$§.§#T§ = 1;
         this.§5E§ = Math.max(1,Math.min(2,param3));
         this.§'U§ = this.§5E§;
         this.§5q§(param2);
         if(this.§7!K§ && this.§[!9§)
         {
            this.§;I§();
            this.§?u§ = this.§7!K§.x - this.§[!9§.x;
            this.§<,§ = this.§7!K§.y - this.§[!9§.y;
            this.§=!3§ = this.§7!K§.scale - this.§[!9§.scale;
            this.§?R§ = this.§7!K§.x;
            this.§?!J§ = this.§7!K§.y;
            §#T§ = this.§7!K§.scale * this.§'U§;
         }
         this.mCurrentCameraSliderLocation = §7t§;
         this.§%!o§ = true;
         this.§0!$§ = §7t§ / 500;
      }
      
      private static function §<!§() : Number
      {
         var _loc1_:Number = §2#§.§`4§ / §2#§.§2"§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §?!=§() : Number
      {
         return §#T§ * §<!§();
      }
      
      public function get manualScale() : Number
      {
         return this.§'U§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§'U§ = param1;
      }
      
      public function get §'!_§() : Number
      {
         return this.§0A§;
      }
      
      public function §,W§() : Number
      {
         return §;!9§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get §&P§() : Number
      {
         return this.§5E§;
      }
      
      public function get §1f§() : Number
      {
         return this.§=!b§;
      }
      
      public function §%!I§(param1:Number) : void
      {
         this.§'U§ = param1;
         this.§3"§();
         this.§`_§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@o§)
         {
            return;
         }
         this.goToCastleView();
         this.§%!$§ = 2000;
         this.§&!$§();
         this.§+!W§();
         this.§break§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§?R§ = this.§[!9§.x;
         this.§?!J§ = this.§[!9§.y;
         this.§%!o§ = false;
         this.§0!$§ = §7t§ / 160000 * param1;
         this.setAction(§@o§);
      }
      
      public function §;I§() : void
      {
         this.mCameraBorderLeft = this.§[!9§.x - §;!9§ / this.§[!9§.scale / 2;
         this.mCameraBorderRight = this.§7!K§.x + §;!9§ / this.§7!K§.scale / 2;
         this.§"!W§ = this.mLevelMain.§1c§.§"Z§ - 20 * § s§.§,!3§ * § s§.§<!h§;
         this.§=!d§ = this.mLevelMain.§1c§.§"Z§ + 4;
         var _loc1_:Number = §;!9§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
         this.§0A§ = this.§=!d§ - §6W§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §5q§(param1:§@z§) : void
      {
         var _loc3_:§`!h§ = null;
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
         while(_loc2_ < param1.§'!k§)
         {
            _loc3_ = param1.§,n§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§"x§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §6W§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §;!9§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §?T§)
            {
               this.§[!9§ = new §-!c§(_loc9_,_loc10_,_loc13_,true);
               this.§9a§ = new §1M§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §7!L§)
            {
               this.§7!K§ = new §-!c§(_loc9_,_loc10_,_loc13_,false);
               this.§4!_§ = new §1M§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §[C§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §]!`§(param1:§@z§) : void
      {
         var _loc2_:§`!h§ = new §`!h§();
         _loc2_.id = §?T§;
         _loc2_.x = this.§[!9§.x;
         _loc2_.y = this.§[!9§.y;
         var _loc3_:Number = §;!9§ / this.§[!9§.scale / 2;
         var _loc4_:Number = §6W§ / this.§[!9§.scale / 2;
         _loc2_.left = this.§[!9§.x - _loc3_;
         _loc2_.right = this.§[!9§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§`!h§;
         (_loc5_ = new §`!h§()).id = §7!L§;
         _loc5_.x = this.§7!K§.x;
         _loc5_.y = this.§7!K§.y;
         var _loc6_:Number = §;!9§ / this.§7!K§.scale / 2;
         var _loc7_:Number = §6W§ / this.§7!K§.scale / 2;
         _loc5_.left = this.§7!K§.x - _loc6_;
         _loc5_.right = this.§7!K§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§1!Z§();
         param1.§+r§(_loc2_);
         param1.§+r§(_loc5_);
      }
      
      public function §"x§(param1:§`!h§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §2#§.§#@§ * 0.5 / _loc2_ * § s§.§<!h§;
         var _loc4_:Number = param1.y - §2#§.§#k§ * 0.5 / _loc2_ * § s§.§<!h§;
         var _loc5_:Number = _loc3_ + §2#§.§#@§ / _loc2_ * § s§.§<!h§;
         var _loc6_:Number = _loc4_ + §2#§.§#k§ / _loc2_ * § s§.§<!h§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §=!5§(param1:§-!c§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§0!$§;
         if(_loc3_ >= §7t§)
         {
            _loc3_ = §7t§;
            this.setAction(§7!U§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§7!U§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§0!$§;
         var _loc4_:Number = -§7t§ * 0.7;
         if(_loc2_ >= §7t§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §7t§;
            }
            this.§0!$§ = -this.§0!$§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §3!d§(param1:Number) : void
      {
         if(this.mCurrentAction == §@o§)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == §%8§)
         {
            this.§=!5§(this.§7!K§,param1);
         }
         else if(this.mCurrentAction == §0!I§)
         {
            this.§=!5§(this.§[!9§,-param1);
         }
         else if(this.mCurrentAction == §'!O§)
         {
            this.§%!o§ = true;
         }
         else if(this.mCurrentAction == § i§)
         {
            this.§3M§(param1);
         }
      }
      
      public function §?;§(param1:Number) : void
      {
         if(this.§]!j§)
         {
            this.§?R§ = this.§]!j§.x;
            this.§?!J§ = this.§]!j§.y;
            §#T§ = §;!9§ / (this.§]!j§.right - this.§]!j§.left);
         }
         else
         {
            this.§3"§();
            this.§3!d§(param1);
            this.§&7§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§&!$§();
         this.§+!W§();
         this.§break§();
      }
      
      private function §@_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§9a§.scale + (this.§4!_§.scale - this.§9a§.scale) * param1;
         var _loc4_:Number = this.§9a§.x + (this.§4!_§.x - this.§9a§.x) * param1;
         var _loc5_:Number = this.§9a§.y + (this.§4!_§.y - this.§9a§.y) * param1;
         this.§`w§.x -= (this.§`w§.x - _loc4_) * param2;
         this.§`w§.y -= (this.§`w§.y - _loc5_) * param2;
         this.§`w§.scale -= (this.§`w§.scale - _loc3_) * param2;
      }
      
      protected function §`_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§?u§ != 0)
         {
            if(!this.§%!o§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §7t§;
            this.§@_§(_loc3_,param2);
            this.§?R§ = this.§`w§.x;
            this.§?!J§ = this.§`w§.y;
            §#T§ = this.§`w§.scale;
         }
      }
      
      public function §&7§(param1:Number, param2:Number) : void
      {
         var _loc5_:§%o§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §7t§)
         {
            this.§%!o§ = true;
         }
         if(this.mCurrentAction == §'!O§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.setAction(§%8§);
               this.§>!,§ = §7J§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§2!!§().GetPosition().x + (!!_loc5_.§ set§ ? _loc5_.§ set§ * § s§.§<!h§ : 0);
               _loc7_ = _loc5_.§2!!§().GetPosition().y + (!!_loc5_.§>!?§ ? _loc5_.§>!?§ * § s§.§<!h§ : 0);
               if((_loc8_ = _loc5_.§2!!§().GetLinearVelocity().x) > 0 && this.§?u§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§?u§ * §7t§;
               }
               if(param1 >= §7t§)
               {
                  param1 = §7t§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §7t§;
               this.§@_§(_loc9_,_loc4_);
               _loc10_ = this.§`w§.x - §;!9§ * 0.5 / this.§`w§.scale;
               _loc11_ = this.§`w§.y - §6W§ * 0.5 / this.§`w§.scale;
               _loc12_ = this.§`w§.x + §;!9§ * 0.5 / this.§`w§.scale;
               _loc13_ = this.§`w§.y + §6W§ * 0.5 / this.§`w§.scale;
               _loc14_ = 150 * § s§.§<!h§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
               _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
               _loc19_ = Math.abs(§;!9§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§6W§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§`w§.scale)
               {
                  _loc21_ = this.§`w§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §;!9§ * 0.5 / _loc21_ > this.mCameraBorderRight)
               {
                  _loc15_ = (_loc17_ = this.mCameraBorderRight) - §;!9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.mCameraBorderLeft)
                  {
                     _loc15_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc22_ - §;!9§ * 0.5 / _loc21_ < this.mCameraBorderLeft)
               {
                  _loc17_ = (_loc15_ = this.mCameraBorderLeft) + §;!9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.mCameraBorderRight)
                  {
                     _loc17_ = this.mCameraBorderRight;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§;!9§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §;!9§ * 0.5 / _loc21_ < this.§"!W§)
               {
                  _loc23_ = this.§"!W§ + §;!9§ * 0.5 / _loc21_;
               }
               this.§?R§ -= (this.§?R§ - _loc22_) * _loc4_;
               this.§]!M§ -= (this.§]!M§ - _loc21_) * _loc4_;
               §#T§ = this.§]!M§;
               this.§?!J§ -= (this.§?!J§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.mCameraBorderRight || _loc6_ <= this.mCameraBorderLeft)
               {
                  this.§`w§.scale = §#T§;
                  this.§`w§.x = this.§?R§;
                  this.§`w§.y = this.§?!J§;
               }
            }
         }
         else
         {
            this.§`_§(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.§^O§ = param1;
         this.§=i§ = param2;
      }
      
      private function §<'§(param1:§1M§, param2:§-!c§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §%!U§ + (param2.scale - §%!U§) * this.§'U§ * §3$§.§<!§();
         if(§;!9§ / param1.scale > this.mCameraBorderRight - this.mCameraBorderLeft)
         {
            _loc3_ = §;!9§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@-§(param1:§1M§, param2:§-!c§) : Boolean
      {
         var _loc3_:Boolean = this.§<'§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §6W§ * 0.5 / param1.scale;
         var _loc5_:Number = §6W§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §;!9§ * 0.5 / param1.scale) < this.mCameraBorderLeft && param1.§<_§)
         {
            param1.x += this.mCameraBorderLeft - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §;!9§ * 0.5 / param1.scale) > this.mCameraBorderRight && !param1.§<_§)
         {
            param1.x += this.mCameraBorderRight - _loc7_;
         }
         return _loc3_;
      }
      
      private function §4!j§(param1:§1M§, param2:§-!c§) : Number
      {
         return (param1.scale - §%!U§) / (§3$§.§<!§() * (param2.scale - §%!U§));
      }
      
      protected function §3"§() : void
      {
         this.§@-§(this.§9a§,this.§[!9§);
         var _loc1_:Number = this.§4!j§(this.§9a§,this.§[!9§);
         this.§@-§(this.§4!_§,this.§7!K§);
         var _loc2_:Number = this.§4!j§(this.§4!_§,this.§7!K§);
         this.§'U§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §&!$§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §2#§.§!!Y§() / §2#§.§`4§ - §2#§.§#k§ >> 1;
            §2!d§ = this.mLevelMain.sprite.x = § s§.§3!i§ * ((1 - §3$§.§?!=§) / 2);
            §4!,§ = this.mLevelMain.sprite.y = _loc1_ + § s§.§,!3§ * (1 - §3$§.§?!=§) * §?4§.§'8§;
         }
      }
      
      public function §break§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §?!=§;
            this.mLevelMain.sprite.scaleY = §?!=§;
         }
      }
      
      public function §+!W§() : void
      {
         var _loc1_:Number = this.§?R§ / § s§.§<!h§ + this.§^O§;
         var _loc2_:Number = this.§?!J§ / § s§.§<!h§ + this.§=i§;
         this.§8!^§ = _loc1_ - § s§.§3!i§ / 2 * §2#§.§`4§ / §2#§.§'@§;
         this.§!O§ = _loc2_ - § s§.§,!3§ / 2 + §?4§.§`!i§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§-B§(this.§8!^§,this.§!O§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§-B§(this.§8!^§,this.§!O§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§-B§(this.§8!^§,this.§!O§,§?!=§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§-B§(this.§8!^§,this.§!O§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§-B§(this.§8!^§,this.§!O§);
         }
      }
      
      protected function §%V§() : void
      {
         this.setAction(§ i§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§>!,§ = -1;
         this.§%V§();
         this.§4G§ = this.§5!-§ = this.§%!^§ = param1;
         this.§8y§ = this.§@k§ = this.§6!+§ = param2;
         this.§#J§ = 0;
         this.§`w§.x = this.§?R§;
         this.§`w§.y = this.§?!J§;
         this.§`w§.scale = §#T§;
         this.§]!M§ = §#T§;
         if(Math.abs(this.§4!_§.x - this.§9a§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§?R§ - this.§9a§.x) / (this.§4!_§.x - this.§9a§.x) * §7t§;
         }
         this.mDragging = true;
      }
      
      public function §3M§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§#J§ += param1;
         var _loc3_:Number = this.§4G§ - this.§5!-§;
         if(this.§?u§ > 0)
         {
            _loc2_ -= _loc3_ * § s§.§<!h§ / §?!=§ / this.§?u§ * §7t§;
            this.§%!o§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§%!o§ = true;
            }
            if(_loc2_ > §7t§)
            {
               _loc2_ += (§7t§ - _loc2_) * 0.3;
               this.§%!o§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§5!-§ = this.§4G§;
      }
      
      protected function §0!i§() : Boolean
      {
         return this.mCurrentAction == § i§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§4G§ = param1;
            this.§8y§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == § i§)
         {
            this.setAction(§7!U§);
            if(param1 > 0)
            {
               this.§4G§ = param1;
            }
            _loc3_ = Math.abs(this.§4G§ - this.§%!^§);
            if(this.§#J§ < §6!X§ && _loc3_ >= §4!=§ && _loc3_ >= §`!#§ * this.§#J§ / 1000)
            {
               if(this.§4G§ < this.§%!^§)
               {
                  this.setAction(§%8§);
               }
               else
               {
                  this.setAction(§0!I§);
               }
               this.§0!$§ = _loc3_ / this.§#J§ * 10;
               this.§%!o§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§%!o§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §7t§)
               {
                  this.§%!o§ = true;
               }
            }
            else if(this.§#J§ < §1B§)
            {
               this.§+2§();
               this.§0!$§ = §7t§ / (§7t§ / 500);
               this.§%!o§ = true;
            }
            else
            {
               this.§3M§(0);
               this.§=r§(0);
               this.§0!$§ = §7t§ / (§7t§ / 500);
               this.§%!o§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §+2§() : void
      {
         if(this.mCurrentAction == §%8§)
         {
            this.setAction(§0!I§);
         }
         else if(this.mCurrentAction == §0!I§)
         {
            this.setAction(§%8§);
         }
         else if(this.mCurrentCameraSliderLocation >= §7t§ / 2)
         {
            this.setAction(§0!I§);
         }
         else if(this.mCurrentCameraSliderLocation <= §7t§ / 2)
         {
            this.setAction(§%8§);
         }
      }
      
      public function §=r§(param1:int) : void
      {
         this.§>!,§ = param1;
         if(this.mCurrentCameraSliderLocation < §7t§ / 2)
         {
            this.setAction(§0!I§);
         }
         else
         {
            this.setAction(§%8§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§0!I§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§%8§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§`w§.x = this.§?R§;
         this.§`w§.y = this.§?!J§;
         this.§`w§.scale = §#T§;
         this.§]!M§ = §#T§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §7t§)
         {
            return true;
         }
         if(this.mCurrentAction == §%8§)
         {
            return true;
         }
         return false;
      }
      
      public function §5!b§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §0!I§)
         {
            return true;
         }
         return false;
      }
      
      public function §-?§(param1:§`!h§) : void
      {
         this.§]!j§ = param1;
         if(this.§]!j§ != null)
         {
            this.§2B§ = new §`!h§();
            this.§2B§.x = this.§?R§;
            this.§2B§.y = this.§?!J§;
            this.§2B§.scale = §#T§;
         }
         else
         {
            this.§?R§ = this.§2B§.x;
            this.§?!J§ = this.§2B§.y;
            §#T§ = this.§2B§.scale;
            this.§2B§ = null;
         }
      }
      
      protected function §`!g§() : void
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
         var _loc3_:Number = this.§'U§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§1f§,Math.min(this.§&P§,_loc3_));
         if(_loc3_ != this.§'U§)
         {
            this.§'U§ = _loc3_;
            this.§`!g§();
         }
      }
      
      public function §?Z§() : Number
      {
         return (this.manualScale - this.§1f§) / (this.§&P§ - this.§1f§);
      }
      
      public function §5G§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§&P§ - this.§1f§) + this.§1f§;
      }
      
      public function §^!H§() : void
      {
         this.§'U§ = Math.max(this.§'U§ - 0.5,0.5);
      }
      
      public function §[l§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§'U§;
         _loc1_ += " mXcenterB2: " + this.§?R§;
         _loc1_ += " mYcenterB2: " + this.§?!J§;
         _loc1_ += " mXcenterB2target: " + this.§'U§;
         _loc1_ += "\n mYcenterB2target: " + this.§'U§;
         _loc1_ += " mXcenterB2previous: " + this.§'U§;
         _loc1_ += " mYcenterB2previous: " + this.§'U§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§'U§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§'U§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§'U§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§'U§;
         _loc1_ += " mTargetScale: " + this.§'U§;
         _loc1_ += " mTargetScalePrevious: " + this.§'U§;
         _loc1_ += " mCastleCameraX: " + this.§'U§;
         _loc1_ += "\n mCastleCameraY: " + this.§'U§;
         _loc1_ += " mCastleCameraScale: " + this.§'U§;
         _loc1_ += " mBirdCameraX: " + this.§'U§;
         _loc1_ += " mBirdCameraY: " + this.§'U§;
         _loc1_ += " mBirdCameraScale: " + this.§'U§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§'U§;
         _loc1_ += " mScreenTopScroll: " + this.§'U§;
         _loc1_ += " mDragging: " + this.§'U§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§'U§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§'U§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§'U§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§'U§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§'U§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§'U§;
         _loc1_ += " mDraggingTimer: " + this.§'U§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§'U§;
         _loc1_ += " mCameraBorderRight: " + this.§'U§;
         _loc1_ += " mCameraBorderSky: " + this.§'U§;
         _loc1_ += " mCameraBorderGround: " + this.§'U§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§'U§ + "\n ");
      }
   }
}
