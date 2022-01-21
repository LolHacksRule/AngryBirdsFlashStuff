package §[!_§
{
   import §#M§.§+!Z§;
   import §5!L§.§,!&§;
   import §7_§.§>6§;
   import §7_§.§]![§;
   import §8<§.§<!7§;
   import §<L§.§!!G§;
   import §<L§.§%t§;
   
   public class §8U§
   {
      
      public static const §"`§:Number = 1.25;
      
      public static const §-K§:Number = 0.15;
      
      public static const §,!!§:Number = §+!Z§.§]?§ * §!!G§.§ !E§;
      
      public static const §,T§:Number = §+!Z§.§@+§ * §!!G§.§ !E§;
      
      public static const §3!&§:Number = 0.1;
      
      public static const §<!a§:int = 1500;
      
      public static const §+t§:int = 10;
      
      public static const §+!K§:int = 15;
      
      public static const §7!B§:int = 300;
      
      public static const §+!^§:int = 1000;
      
      public static const §"z§:int = 10000;
      
      public static const § 0§:int = §"z§ / 50;
      
      public static const §0!C§:int = 0;
      
      public static const §"L§:int = 1;
      
      public static const §"t§:int = 2;
      
      public static const §@!m§:int = 3;
      
      public static const §='§:int = 4;
      
      public static const §45§:int = 5;
      
      public static const §^!3§:String = "CASTLE";
      
      public static const §`! §:String = "SLINGSHOT";
      
      protected static var §;=§:Number;
      
      public static var §[]§:Number;
      
      public static var §;!e§:Number;
      
      public static const §%!S§:Number = 2000;
       
      
      private var §!!m§:Number = 1.0;
      
      private var §-2§:Number = 0.2;
      
      protected var §3!5§:Number;
      
      protected var §^!4§:Number;
      
      protected var §@!B§:Number;
      
      public var mLevelMain:§!!G§;
      
      public var §%!§:Number;
      
      public var §,"§:Number;
      
      private var §>Y§:§"!`§;
      
      private var §3!=§:§"!`§;
      
      public var §7!O§:Number;
      
      public var §3_§:Number;
      
      public var mDragging:Boolean = false;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var §[!1§:Number;
      
      public var §%!4§:Number;
      
      private var §'!>§:Number;
      
      private var §'!1§:§7U§;
      
      private var §'![§:§7U§;
      
      protected var §9!@§:Number = 0;
      
      protected var §^!`§:Number = 0;
      
      protected var §0b§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §6!9§:Number = 0;
      
      public var §14§:Boolean = true;
      
      public var §"+§:Number = 0;
      
      public var §4!o§:Number = 0;
      
      public var §2$§:Number = 0;
      
      public var §9!d§:Number = 0;
      
      public var §"p§:Number = 0;
      
      public var §0i§:Number = 0;
      
      public var §,e§:Number = 0;
      
      public var §<!Y§:Number = 0;
      
      public var §``§:Number = 0;
      
      private var §;#§:§7U§;
      
      public var §=>§:Number = 0;
      
      private var §;!H§:Number = 0;
      
      private var §5!]§:Number = 0;
      
      private var §+J§:§>6§ = null;
      
      private var §3e§:§>6§ = null;
      
      public function §8U§(param1:§!!G§, param2:§]![§, param3:Number = 1.0)
      {
         this.§;#§ = new §7U§(0,0,1,false);
         super();
         this.§^!4§ = 0;
         this.§@!B§ = 0;
         this.mLevelMain = param1;
         §8U§.§;=§ = 1;
         this.§!!m§ = Math.max(1,Math.min(2,param3));
         this.§3!5§ = this.§!!m§;
         this.§3!>§(param2);
         if(this.§>Y§ && this.§3!=§)
         {
            this.§=o§();
            this.§9!@§ = this.§>Y§.x - this.§3!=§.x;
            this.§^!`§ = this.§>Y§.y - this.§3!=§.y;
            this.§0b§ = this.§>Y§.scale - this.§3!=§.scale;
            this.§^!4§ = this.§>Y§.x;
            this.§@!B§ = this.§>Y§.y;
            §;=§ = this.§>Y§.scale * this.§3!5§;
         }
         this.mCurrentCameraSliderLocation = §"z§;
         this.§14§ = true;
         this.§6!9§ = §"z§ / 500;
      }
      
      private static function §`!P§() : Number
      {
         var _loc1_:Number = §+!Z§.§9!E§ / §+!Z§.§4!k§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §[!E§() : Number
      {
         return §;=§ * §`!P§();
      }
      
      public function get manualScale() : Number
      {
         return this.§3!5§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§3!5§ = param1;
      }
      
      public function get §,!'§() : Number
      {
         return this.§'!>§;
      }
      
      public function §>!?§() : Number
      {
         return §,!!§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get §2f§() : Number
      {
         return this.§!!m§;
      }
      
      public function get § !M§() : Number
      {
         return this.§-2§;
      }
      
      public function §0!d§(param1:Number) : void
      {
         this.§3!5§ = param1;
         this.§+!d§();
         this.§9j§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §45§)
         {
            return;
         }
         this.goToCastleView();
         this.§"+§ = 2000;
         this.§9!N§();
         this.§!u§();
         this.§7m§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§^!4§ = this.§3!=§.x;
         this.§@!B§ = this.§3!=§.y;
         this.§14§ = false;
         this.§6!9§ = §"z§ / 160000 * param1;
         this.setAction(§45§);
      }
      
      public function §=o§() : void
      {
         this.mCameraBorderLeft = this.§3!=§.x - §,!!§ / this.§3!=§.scale / 2;
         this.mCameraBorderRight = this.§>Y§.x + §,!!§ / this.§>Y§.scale / 2;
         this.§[!1§ = this.mLevelMain.§9!R§.§@Y§ - 20 * §!!G§.§3!L§ * §!!G§.§ !E§;
         this.§%!4§ = this.mLevelMain.§9!R§.§@Y§ + 4;
         var _loc1_:Number = §,!!§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
         this.§'!>§ = this.§%!4§ - §,T§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §3!>§(param1:§]![§) : void
      {
         var _loc3_:§>6§ = null;
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
         while(_loc2_ < param1.§0Z§)
         {
            _loc3_ = param1.§5`§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§9!I§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §,T§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §,!!§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §`! §)
            {
               this.§3!=§ = new §"!`§(_loc9_,_loc10_,_loc13_,true);
               this.§'![§ = new §7U§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §^!3§)
            {
               this.§>Y§ = new §"!`§(_loc9_,_loc10_,_loc13_,false);
               this.§'!1§ = new §7U§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §<!7§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §=K§(param1:§]![§) : void
      {
         var _loc2_:§>6§ = new §>6§();
         _loc2_.id = §`! §;
         _loc2_.x = this.§3!=§.x;
         _loc2_.y = this.§3!=§.y;
         var _loc3_:Number = §,!!§ / this.§3!=§.scale / 2;
         var _loc4_:Number = §,T§ / this.§3!=§.scale / 2;
         _loc2_.left = this.§3!=§.x - _loc3_;
         _loc2_.right = this.§3!=§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§>6§;
         (_loc5_ = new §>6§()).id = §^!3§;
         _loc5_.x = this.§>Y§.x;
         _loc5_.y = this.§>Y§.y;
         var _loc6_:Number = §,!!§ / this.§>Y§.scale / 2;
         var _loc7_:Number = §,T§ / this.§>Y§.scale / 2;
         _loc5_.left = this.§>Y§.x - _loc6_;
         _loc5_.right = this.§>Y§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§2!6§();
         param1.§[!B§(_loc2_);
         param1.§[!B§(_loc5_);
      }
      
      public function §9!I§(param1:§>6§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §+!Z§.§]?§ * 0.5 / _loc2_ * §!!G§.§ !E§;
         var _loc4_:Number = param1.y - §+!Z§.§@+§ * 0.5 / _loc2_ * §!!G§.§ !E§;
         var _loc5_:Number = _loc3_ + §+!Z§.§]?§ / _loc2_ * §!!G§.§ !E§;
         var _loc6_:Number = _loc4_ + §+!Z§.§@+§ / _loc2_ * §!!G§.§ !E§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §&[§(param1:§"!`§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§6!9§;
         if(_loc3_ >= §"z§)
         {
            _loc3_ = §"z§;
            this.setAction(§0!C§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§0!C§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§6!9§;
         var _loc4_:Number = -§"z§ * 0.7;
         if(_loc2_ >= §"z§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §"z§;
            }
            this.§6!9§ = -this.§6!9§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §8!@§(param1:Number) : void
      {
         if(this.mCurrentAction == §45§)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == §"L§)
         {
            this.§&[§(this.§>Y§,param1);
         }
         else if(this.mCurrentAction == §"t§)
         {
            this.§&[§(this.§3!=§,-param1);
         }
         else if(this.mCurrentAction == §@!m§)
         {
            this.§14§ = true;
         }
         else if(this.mCurrentAction == §='§)
         {
            this.§#!f§(param1);
         }
      }
      
      public function §>!6§(param1:Number) : void
      {
         if(this.§+J§)
         {
            this.§^!4§ = this.§+J§.x;
            this.§@!B§ = this.§+J§.y;
            §;=§ = §,!!§ / (this.§+J§.right - this.§+J§.left);
         }
         else
         {
            this.§+!d§();
            this.§8!@§(param1);
            this.§7!o§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§9!N§();
         this.§!u§();
         this.§7m§();
      }
      
      private function §?!P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§'![§.scale + (this.§'!1§.scale - this.§'![§.scale) * param1;
         var _loc4_:Number = this.§'![§.x + (this.§'!1§.x - this.§'![§.x) * param1;
         var _loc5_:Number = this.§'![§.y + (this.§'!1§.y - this.§'![§.y) * param1;
         this.§;#§.x -= (this.§;#§.x - _loc4_) * param2;
         this.§;#§.y -= (this.§;#§.y - _loc5_) * param2;
         this.§;#§.scale -= (this.§;#§.scale - _loc3_) * param2;
      }
      
      protected function §9j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§9!@§ != 0)
         {
            if(!this.§14§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §"z§;
            this.§?!P§(_loc3_,param2);
            this.§^!4§ = this.§;#§.x;
            this.§@!B§ = this.§;#§.y;
            §;=§ = this.§;#§.scale;
         }
      }
      
      public function §7!o§(param1:Number, param2:Number) : void
      {
         var _loc5_:§,!&§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §"z§)
         {
            this.§14§ = true;
         }
         if(this.mCurrentAction == §@!m§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.setAction(§"L§);
               this.§``§ = §+!^§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§;G§().GetPosition().x + (!!_loc5_.§6E§ ? _loc5_.§6E§ * §!!G§.§ !E§ : 0);
               _loc7_ = _loc5_.§;G§().GetPosition().y + (!!_loc5_.§4!V§ ? _loc5_.§4!V§ * §!!G§.§ !E§ : 0);
               if((_loc8_ = _loc5_.§;G§().GetLinearVelocity().x) > 0 && this.§9!@§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§9!@§ * §"z§;
               }
               if(param1 >= §"z§)
               {
                  param1 = §"z§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §"z§;
               this.§?!P§(_loc9_,_loc4_);
               _loc10_ = this.§;#§.x - §,!!§ * 0.5 / this.§;#§.scale;
               _loc11_ = this.§;#§.y - §,T§ * 0.5 / this.§;#§.scale;
               _loc12_ = this.§;#§.x + §,!!§ * 0.5 / this.§;#§.scale;
               _loc13_ = this.§;#§.y + §,T§ * 0.5 / this.§;#§.scale;
               _loc14_ = 150 * §!!G§.§ !E§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
               _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
               _loc19_ = Math.abs(§,!!§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§,T§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§;#§.scale)
               {
                  _loc21_ = this.§;#§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §,!!§ * 0.5 / _loc21_ > this.mCameraBorderRight)
               {
                  _loc15_ = (_loc17_ = this.mCameraBorderRight) - §,!!§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.mCameraBorderLeft)
                  {
                     _loc15_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc22_ - §,!!§ * 0.5 / _loc21_ < this.mCameraBorderLeft)
               {
                  _loc17_ = (_loc15_ = this.mCameraBorderLeft) + §,!!§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.mCameraBorderRight)
                  {
                     _loc17_ = this.mCameraBorderRight;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§,!!§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §,!!§ * 0.5 / _loc21_ < this.§[!1§)
               {
                  _loc23_ = this.§[!1§ + §,!!§ * 0.5 / _loc21_;
               }
               this.§^!4§ -= (this.§^!4§ - _loc22_) * _loc4_;
               this.§=>§ -= (this.§=>§ - _loc21_) * _loc4_;
               §;=§ = this.§=>§;
               this.§@!B§ -= (this.§@!B§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.mCameraBorderRight || _loc6_ <= this.mCameraBorderLeft)
               {
                  this.§;#§.scale = §;=§;
                  this.§;#§.x = this.§^!4§;
                  this.§;#§.y = this.§@!B§;
               }
            }
         }
         else
         {
            this.§9j§(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.§;!H§ = param1;
         this.§5!]§ = param2;
      }
      
      private function §+7§(param1:§7U§, param2:§"!`§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §-K§ + (param2.scale - §-K§) * this.§3!5§ * §8U§.§`!P§();
         if(§,!!§ / param1.scale > this.mCameraBorderRight - this.mCameraBorderLeft)
         {
            _loc3_ = §,!!§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function § !G§(param1:§7U§, param2:§"!`§) : Boolean
      {
         var _loc3_:Boolean = this.§+7§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §,T§ * 0.5 / param1.scale;
         var _loc5_:Number = §,T§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §,!!§ * 0.5 / param1.scale) < this.mCameraBorderLeft && param1.§6Q§)
         {
            param1.x += this.mCameraBorderLeft - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §,!!§ * 0.5 / param1.scale) > this.mCameraBorderRight && !param1.§6Q§)
         {
            param1.x += this.mCameraBorderRight - _loc7_;
         }
         return _loc3_;
      }
      
      private function §65§(param1:§7U§, param2:§"!`§) : Number
      {
         return (param1.scale - §-K§) / (§8U§.§`!P§() * (param2.scale - §-K§));
      }
      
      protected function §+!d§() : void
      {
         this.§ !G§(this.§'![§,this.§3!=§);
         var _loc1_:Number = this.§65§(this.§'![§,this.§3!=§);
         this.§ !G§(this.§'!1§,this.§>Y§);
         var _loc2_:Number = this.§65§(this.§'!1§,this.§>Y§);
         this.§3!5§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §9!N§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §+!Z§.§"!$§() / §+!Z§.§9!E§ - §+!Z§.§@+§ >> 1;
            §[]§ = this.mLevelMain.sprite.x = §!!G§.§6!c§ * ((1 - §8U§.§[!E§) / 2);
            §;!e§ = this.mLevelMain.sprite.y = _loc1_ + §!!G§.§3!L§ * (1 - §8U§.§[!E§) * §%t§.§#!S§;
         }
      }
      
      public function §7m§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §[!E§;
            this.mLevelMain.sprite.scaleY = §[!E§;
         }
      }
      
      public function §!u§() : void
      {
         var _loc1_:Number = this.§^!4§ / §!!G§.§ !E§ + this.§;!H§;
         var _loc2_:Number = this.§@!B§ / §!!G§.§ !E§ + this.§5!]§;
         this.§7!O§ = _loc1_ - §!!G§.§6!c§ / 2 * §+!Z§.§9!E§ / §+!Z§.§>§;
         this.§3_§ = _loc2_ - §!!G§.§3!L§ / 2 + §%t§.§6s§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§=6§(this.§7!O§,this.§3_§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§=6§(this.§7!O§,this.§3_§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§=6§(this.§7!O§,this.§3_§,§[!E§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§=6§(this.§7!O§,this.§3_§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§=6§(this.§7!O§,this.§3_§);
         }
      }
      
      protected function §2!I§() : void
      {
         this.setAction(§='§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§``§ = -1;
         this.§2!I§();
         this.§"p§ = this.§,e§ = this.§2$§ = param1;
         this.§0i§ = this.§<!Y§ = this.§9!d§ = param2;
         this.§4!o§ = 0;
         this.§;#§.x = this.§^!4§;
         this.§;#§.y = this.§@!B§;
         this.§;#§.scale = §;=§;
         this.§=>§ = §;=§;
         if(Math.abs(this.§'!1§.x - this.§'![§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§^!4§ - this.§'![§.x) / (this.§'!1§.x - this.§'![§.x) * §"z§;
         }
         this.mDragging = true;
      }
      
      public function §#!f§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§4!o§ += param1;
         var _loc3_:Number = this.§"p§ - this.§,e§;
         if(this.§9!@§ > 0)
         {
            _loc2_ -= _loc3_ * §!!G§.§ !E§ / §[!E§ / this.§9!@§ * §"z§;
            this.§14§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§14§ = true;
            }
            if(_loc2_ > §"z§)
            {
               _loc2_ += (§"z§ - _loc2_) * 0.3;
               this.§14§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§,e§ = this.§"p§;
      }
      
      protected function § X§() : Boolean
      {
         return this.mCurrentAction == §='§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§"p§ = param1;
            this.§0i§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §='§)
         {
            this.setAction(§0!C§);
            if(param1 > 0)
            {
               this.§"p§ = param1;
            }
            _loc3_ = Math.abs(this.§"p§ - this.§2$§);
            if(this.§4!o§ < §<!a§ && _loc3_ >= §+t§ && _loc3_ >= §+!K§ * this.§4!o§ / 1000)
            {
               if(this.§"p§ < this.§2$§)
               {
                  this.setAction(§"L§);
               }
               else
               {
                  this.setAction(§"t§);
               }
               this.§6!9§ = _loc3_ / this.§4!o§ * 10;
               this.§14§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§14§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §"z§)
               {
                  this.§14§ = true;
               }
            }
            else if(this.§4!o§ < §7!B§)
            {
               this.§4!Z§();
               this.§6!9§ = §"z§ / (§"z§ / 500);
               this.§14§ = true;
            }
            else
            {
               this.§#!f§(0);
               this.§9!+§(0);
               this.§6!9§ = §"z§ / (§"z§ / 500);
               this.§14§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §4!Z§() : void
      {
         if(this.mCurrentAction == §"L§)
         {
            this.setAction(§"t§);
         }
         else if(this.mCurrentAction == §"t§)
         {
            this.setAction(§"L§);
         }
         else if(this.mCurrentCameraSliderLocation >= §"z§ / 2)
         {
            this.setAction(§"t§);
         }
         else if(this.mCurrentCameraSliderLocation <= §"z§ / 2)
         {
            this.setAction(§"L§);
         }
      }
      
      public function §9!+§(param1:int) : void
      {
         this.§``§ = param1;
         if(this.mCurrentCameraSliderLocation < §"z§ / 2)
         {
            this.setAction(§"t§);
         }
         else
         {
            this.setAction(§"L§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§"t§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§"L§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§;#§.x = this.§^!4§;
         this.§;#§.y = this.§@!B§;
         this.§;#§.scale = §;=§;
         this.§=>§ = §;=§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §"z§)
         {
            return true;
         }
         if(this.mCurrentAction == §"L§)
         {
            return true;
         }
         return false;
      }
      
      public function §`!n§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"t§)
         {
            return true;
         }
         return false;
      }
      
      public function §-!,§(param1:§>6§) : void
      {
         this.§+J§ = param1;
         if(this.§+J§ != null)
         {
            this.§3e§ = new §>6§();
            this.§3e§.x = this.§^!4§;
            this.§3e§.y = this.§@!B§;
            this.§3e§.scale = §;=§;
         }
         else
         {
            this.§^!4§ = this.§3e§.x;
            this.§@!B§ = this.§3e§.y;
            §;=§ = this.§3e§.scale;
            this.§3e§ = null;
         }
      }
      
      protected function §23§() : void
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
         var _loc3_:Number = this.§3!5§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§ !M§,Math.min(this.§2f§,_loc3_));
         if(_loc3_ != this.§3!5§)
         {
            this.§3!5§ = _loc3_;
            this.§23§();
         }
      }
      
      public function §!q§() : Number
      {
         return (this.manualScale - this.§ !M§) / (this.§2f§ - this.§ !M§);
      }
      
      public function §"x§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§2f§ - this.§ !M§) + this.§ !M§;
      }
      
      public function §>!3§() : void
      {
         this.§3!5§ = Math.max(this.§3!5§ - 0.5,0.5);
      }
      
      public function §]C§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§3!5§;
         _loc1_ += " mXcenterB2: " + this.§^!4§;
         _loc1_ += " mYcenterB2: " + this.§@!B§;
         _loc1_ += " mXcenterB2target: " + this.§3!5§;
         _loc1_ += "\n mYcenterB2target: " + this.§3!5§;
         _loc1_ += " mXcenterB2previous: " + this.§3!5§;
         _loc1_ += " mYcenterB2previous: " + this.§3!5§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§3!5§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§3!5§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§3!5§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§3!5§;
         _loc1_ += " mTargetScale: " + this.§3!5§;
         _loc1_ += " mTargetScalePrevious: " + this.§3!5§;
         _loc1_ += " mCastleCameraX: " + this.§3!5§;
         _loc1_ += "\n mCastleCameraY: " + this.§3!5§;
         _loc1_ += " mCastleCameraScale: " + this.§3!5§;
         _loc1_ += " mBirdCameraX: " + this.§3!5§;
         _loc1_ += " mBirdCameraY: " + this.§3!5§;
         _loc1_ += " mBirdCameraScale: " + this.§3!5§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§3!5§;
         _loc1_ += " mScreenTopScroll: " + this.§3!5§;
         _loc1_ += " mDragging: " + this.§3!5§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§3!5§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§3!5§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§3!5§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§3!5§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§3!5§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§3!5§;
         _loc1_ += " mDraggingTimer: " + this.§3!5§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§3!5§;
         _loc1_ += " mCameraBorderRight: " + this.§3!5§;
         _loc1_ += " mCameraBorderSky: " + this.§3!5§;
         _loc1_ += " mCameraBorderGround: " + this.§3!5§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§3!5§ + "\n ");
      }
   }
}
