package §!!g§
{
   import §2o§.§<H§;
   import §5!G§.§6!Y§;
   import §@!b§.§#!5§;
   import §@!b§.§@!k§;
   import §`!W§.§2v§;
   import §`!d§.§0%§;
   import §`!d§.§[!h§;
   
   public class §8d§
   {
      
      public static const §<!$§:Number = 1.25;
      
      public static const §]!X§:Number = 0.15;
      
      public static const §!!I§:Number = §<H§.§]A§ * §@!k§.§2!J§;
      
      public static const §2!f§:Number = §<H§.§<!T§ * §@!k§.§2!J§;
      
      public static const §[K§:Number = 0.1;
      
      public static const §]§:int = 1500;
      
      public static const §2!5§:int = 10;
      
      public static const §-W§:int = 15;
      
      public static const §3j§:int = 300;
      
      public static const §%!J§:int = 1000;
      
      public static const §2Z§:int = 10000;
      
      public static const §&!$§:int = §2Z§ / 50;
      
      public static const §9,§:int = 0;
      
      public static const §@`§:int = 1;
      
      public static const §1Z§:int = 2;
      
      public static const §!!Z§:int = 3;
      
      public static const §9Z§:int = 4;
      
      public static const §^!d§:int = 5;
      
      public static const §;A§:String = "CASTLE";
      
      public static const §<!`§:String = "SLINGSHOT";
      
      protected static var §6!F§:Number;
      
      public static var §0x§:Number;
      
      public static var each:Number;
      
      public static const §8!N§:Number = 2000;
       
      
      private var §"!9§:Number = 1.0;
      
      private var §=R§:Number = 0.2;
      
      protected var §@!J§:Number;
      
      protected var §0!B§:Number;
      
      protected var §=`§:Number;
      
      public var mLevelMain:§@!k§;
      
      public var §'!]§:Number;
      
      public var §;O§:Number;
      
      private var §-!n§:§>!$§;
      
      private var § !#§:§>!$§;
      
      public var §9'§:Number;
      
      public var §9![§:Number;
      
      public var mDragging:Boolean = false;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var §]!Y§:Number;
      
      public var §6e§:Number;
      
      private var §1!I§:Number;
      
      private var §?&§:§-q§;
      
      private var §2!S§:§-q§;
      
      protected var §]!;§:Number = 0;
      
      protected var §6!7§:Number = 0;
      
      protected var §-r§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §3!c§:Number = 0;
      
      public var §!!R§:Boolean = true;
      
      public var §6!j§:Number = 0;
      
      public var §<!o§:Number = 0;
      
      public var §"!o§:Number = 0;
      
      public var §?C§:Number = 0;
      
      public var §3%§:Number = 0;
      
      public var §=!?§:Number = 0;
      
      public var §"Z§:Number = 0;
      
      public var §#-§:Number = 0;
      
      public var §3!?§:Number = 0;
      
      private var §?f§:§-q§;
      
      public var §?!K§:Number = 0;
      
      private var §4§:Number = 0;
      
      private var §#k§:Number = 0;
      
      private var §;!A§:§[!h§ = null;
      
      private var §1!F§:§[!h§ = null;
      
      public function §8d§(param1:§@!k§, param2:§0%§, param3:Number = 1.0)
      {
         this.§?f§ = new §-q§(0,0,1,false);
         super();
         this.§0!B§ = 0;
         this.§=`§ = 0;
         this.mLevelMain = param1;
         §8d§.§6!F§ = 1;
         this.§"!9§ = Math.max(1,Math.min(2,param3));
         this.§@!J§ = this.§"!9§;
         this.§,q§(param2);
         if(this.§-!n§ && this.§ !#§)
         {
            this.§+!a§();
            this.§]!;§ = this.§-!n§.x - this.§ !#§.x;
            this.§6!7§ = this.§-!n§.y - this.§ !#§.y;
            this.§-r§ = this.§-!n§.scale - this.§ !#§.scale;
            this.§0!B§ = this.§-!n§.x;
            this.§=`§ = this.§-!n§.y;
            §6!F§ = this.§-!n§.scale * this.§@!J§;
         }
         this.mCurrentCameraSliderLocation = §2Z§;
         this.§!!R§ = true;
         this.§3!c§ = §2Z§ / 500;
      }
      
      private static function §0Z§() : Number
      {
         var _loc1_:Number = §<H§.§6C§ / §<H§.§^d§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §=d§() : Number
      {
         return §6!F§ * §0Z§();
      }
      
      public function get manualScale() : Number
      {
         return this.§@!J§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§@!J§ = param1;
      }
      
      public function get §finally§() : Number
      {
         return this.§1!I§;
      }
      
      public function §##§() : Number
      {
         return §!!I§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get §]J§() : Number
      {
         return this.§"!9§;
      }
      
      public function get §=%§() : Number
      {
         return this.§=R§;
      }
      
      public function §5!I§(param1:Number) : void
      {
         this.§@!J§ = param1;
         this.§"3§();
         this.§]!B§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §^!d§)
         {
            return;
         }
         this.goToCastleView();
         this.§6!j§ = 2000;
         this.§`!>§();
         this.§0!?§();
         this.§2!7§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§0!B§ = this.§ !#§.x;
         this.§=`§ = this.§ !#§.y;
         this.§!!R§ = false;
         this.§3!c§ = §2Z§ / 160000 * param1;
         this.setAction(§^!d§);
      }
      
      public function §+!a§() : void
      {
         this.mCameraBorderLeft = this.§ !#§.x - §!!I§ / this.§ !#§.scale / 2;
         this.mCameraBorderRight = this.§-!n§.x + §!!I§ / this.§-!n§.scale / 2;
         this.§]!Y§ = this.mLevelMain.§5H§.§4R§ - 20 * §@!k§.§01§ * §@!k§.§2!J§;
         this.§6e§ = this.mLevelMain.§5H§.§4R§ + 4;
         var _loc1_:Number = §!!I§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
         this.§1!I§ = this.§6e§ - §2!f§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §,q§(param1:§0%§) : void
      {
         var _loc3_:§[!h§ = null;
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
         while(_loc2_ < param1.§2!&§)
         {
            _loc3_ = param1.§!!,§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§&Y§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §2!f§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §!!I§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §<!`§)
            {
               this.§ !#§ = new §>!$§(_loc9_,_loc10_,_loc13_,true);
               this.§2!S§ = new §-q§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §;A§)
            {
               this.§-!n§ = new §>!$§(_loc9_,_loc10_,_loc13_,false);
               this.§?&§ = new §-q§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §2v§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §">§(param1:§0%§) : void
      {
         var _loc2_:§[!h§ = new §[!h§();
         _loc2_.id = §<!`§;
         _loc2_.x = this.§ !#§.x;
         _loc2_.y = this.§ !#§.y;
         var _loc3_:Number = §!!I§ / this.§ !#§.scale / 2;
         var _loc4_:Number = §2!f§ / this.§ !#§.scale / 2;
         _loc2_.left = this.§ !#§.x - _loc3_;
         _loc2_.right = this.§ !#§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§[!h§;
         (_loc5_ = new §[!h§()).id = §;A§;
         _loc5_.x = this.§-!n§.x;
         _loc5_.y = this.§-!n§.y;
         var _loc6_:Number = §!!I§ / this.§-!n§.scale / 2;
         var _loc7_:Number = §2!f§ / this.§-!n§.scale / 2;
         _loc5_.left = this.§-!n§.x - _loc6_;
         _loc5_.right = this.§-!n§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§]D§();
         param1.§<!W§(_loc2_);
         param1.§<!W§(_loc5_);
      }
      
      public function §&Y§(param1:§[!h§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §<H§.§]A§ * 0.5 / _loc2_ * §@!k§.§2!J§;
         var _loc4_:Number = param1.y - §<H§.§<!T§ * 0.5 / _loc2_ * §@!k§.§2!J§;
         var _loc5_:Number = _loc3_ + §<H§.§]A§ / _loc2_ * §@!k§.§2!J§;
         var _loc6_:Number = _loc4_ + §<H§.§<!T§ / _loc2_ * §@!k§.§2!J§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §@!?§(param1:§>!$§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§3!c§;
         if(_loc3_ >= §2Z§)
         {
            _loc3_ = §2Z§;
            this.setAction(§9,§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§9,§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§3!c§;
         var _loc4_:Number = -§2Z§ * 0.7;
         if(_loc2_ >= §2Z§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §2Z§;
            }
            this.§3!c§ = -this.§3!c§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function § !Y§(param1:Number) : void
      {
         if(this.mCurrentAction == §^!d§)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == §@`§)
         {
            this.§@!?§(this.§-!n§,param1);
         }
         else if(this.mCurrentAction == §1Z§)
         {
            this.§@!?§(this.§ !#§,-param1);
         }
         else if(this.mCurrentAction == §!!Z§)
         {
            this.§!!R§ = true;
         }
         else if(this.mCurrentAction == §9Z§)
         {
            this.§>>§(param1);
         }
      }
      
      public function §^P§(param1:Number) : void
      {
         if(this.§;!A§)
         {
            this.§0!B§ = this.§;!A§.x;
            this.§=`§ = this.§;!A§.y;
            §6!F§ = §!!I§ / (this.§;!A§.right - this.§;!A§.left);
         }
         else
         {
            this.§"3§();
            this.§ !Y§(param1);
            this.§=!Q§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§`!>§();
         this.§0!?§();
         this.§2!7§();
      }
      
      private function §8!a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§2!S§.scale + (this.§?&§.scale - this.§2!S§.scale) * param1;
         var _loc4_:Number = this.§2!S§.x + (this.§?&§.x - this.§2!S§.x) * param1;
         var _loc5_:Number = this.§2!S§.y + (this.§?&§.y - this.§2!S§.y) * param1;
         this.§?f§.x -= (this.§?f§.x - _loc4_) * param2;
         this.§?f§.y -= (this.§?f§.y - _loc5_) * param2;
         this.§?f§.scale -= (this.§?f§.scale - _loc3_) * param2;
      }
      
      protected function §]!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§]!;§ != 0)
         {
            if(!this.§!!R§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §2Z§;
            this.§8!a§(_loc3_,param2);
            this.§0!B§ = this.§?f§.x;
            this.§=`§ = this.§?f§.y;
            §6!F§ = this.§?f§.scale;
         }
      }
      
      public function §=!Q§(param1:Number, param2:Number) : void
      {
         var _loc5_:§6!Y§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §2Z§)
         {
            this.§!!R§ = true;
         }
         if(this.mCurrentAction == §!!Z§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.setAction(§@`§);
               this.§3!?§ = §%!J§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§>j§().GetPosition().x + (!!_loc5_.§1!l§ ? _loc5_.§1!l§ * §@!k§.§2!J§ : 0);
               _loc7_ = _loc5_.§>j§().GetPosition().y + (!!_loc5_.§%!E§ ? _loc5_.§%!E§ * §@!k§.§2!J§ : 0);
               if((_loc8_ = _loc5_.§>j§().GetLinearVelocity().x) > 0 && this.§]!;§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§]!;§ * §2Z§;
               }
               if(param1 >= §2Z§)
               {
                  param1 = §2Z§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §2Z§;
               this.§8!a§(_loc9_,_loc4_);
               _loc10_ = this.§?f§.x - §!!I§ * 0.5 / this.§?f§.scale;
               _loc11_ = this.§?f§.y - §2!f§ * 0.5 / this.§?f§.scale;
               _loc12_ = this.§?f§.x + §!!I§ * 0.5 / this.§?f§.scale;
               _loc13_ = this.§?f§.y + §2!f§ * 0.5 / this.§?f§.scale;
               _loc14_ = 150 * §@!k§.§2!J§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
               _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
               _loc19_ = Math.abs(§!!I§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§2!f§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§?f§.scale)
               {
                  _loc21_ = this.§?f§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §!!I§ * 0.5 / _loc21_ > this.mCameraBorderRight)
               {
                  _loc15_ = (_loc17_ = this.mCameraBorderRight) - §!!I§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.mCameraBorderLeft)
                  {
                     _loc15_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc22_ - §!!I§ * 0.5 / _loc21_ < this.mCameraBorderLeft)
               {
                  _loc17_ = (_loc15_ = this.mCameraBorderLeft) + §!!I§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.mCameraBorderRight)
                  {
                     _loc17_ = this.mCameraBorderRight;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§!!I§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §!!I§ * 0.5 / _loc21_ < this.§]!Y§)
               {
                  _loc23_ = this.§]!Y§ + §!!I§ * 0.5 / _loc21_;
               }
               this.§0!B§ -= (this.§0!B§ - _loc22_) * _loc4_;
               this.§?!K§ -= (this.§?!K§ - _loc21_) * _loc4_;
               §6!F§ = this.§?!K§;
               this.§=`§ -= (this.§=`§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.mCameraBorderRight || _loc6_ <= this.mCameraBorderLeft)
               {
                  this.§?f§.scale = §6!F§;
                  this.§?f§.x = this.§0!B§;
                  this.§?f§.y = this.§=`§;
               }
            }
         }
         else
         {
            this.§]!B§(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.§4§ = param1;
         this.§#k§ = param2;
      }
      
      private function §class§(param1:§-q§, param2:§>!$§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §]!X§ + (param2.scale - §]!X§) * this.§@!J§ * §8d§.§0Z§();
         if(§!!I§ / param1.scale > this.mCameraBorderRight - this.mCameraBorderLeft)
         {
            _loc3_ = §!!I§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §#g§(param1:§-q§, param2:§>!$§) : Boolean
      {
         var _loc3_:Boolean = this.§class§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §2!f§ * 0.5 / param1.scale;
         var _loc5_:Number = §2!f§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §!!I§ * 0.5 / param1.scale) < this.mCameraBorderLeft && param1.§&!>§)
         {
            param1.x += this.mCameraBorderLeft - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §!!I§ * 0.5 / param1.scale) > this.mCameraBorderRight && !param1.§&!>§)
         {
            param1.x += this.mCameraBorderRight - _loc7_;
         }
         return _loc3_;
      }
      
      private function §9!Y§(param1:§-q§, param2:§>!$§) : Number
      {
         return (param1.scale - §]!X§) / (§8d§.§0Z§() * (param2.scale - §]!X§));
      }
      
      protected function §"3§() : void
      {
         this.§#g§(this.§2!S§,this.§ !#§);
         var _loc1_:Number = this.§9!Y§(this.§2!S§,this.§ !#§);
         this.§#g§(this.§?&§,this.§-!n§);
         var _loc2_:Number = this.§9!Y§(this.§?&§,this.§-!n§);
         this.§@!J§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §`!>§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §<H§.§0!§() / §<H§.§6C§ - §<H§.§<!T§ >> 1;
            §0x§ = this.mLevelMain.sprite.x = §@!k§.§ p§ * ((1 - §8d§.§=d§) / 2);
            each = this.mLevelMain.sprite.y = _loc1_ + §@!k§.§01§ * (1 - §8d§.§=d§) * §#!5§.§set §;
         }
      }
      
      public function §2!7§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §=d§;
            this.mLevelMain.sprite.scaleY = §=d§;
         }
      }
      
      public function §0!?§() : void
      {
         var _loc1_:Number = this.§0!B§ / §@!k§.§2!J§ + this.§4§;
         var _loc2_:Number = this.§=`§ / §@!k§.§2!J§ + this.§#k§;
         this.§9'§ = _loc1_ - §@!k§.§ p§ / 2 * §<H§.§6C§ / §<H§.§&&§;
         this.§9![§ = _loc2_ - §@!k§.§01§ / 2 + §#!5§.§,!n§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§&f§(this.§9'§,this.§9![§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§&f§(this.§9'§,this.§9![§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§&f§(this.§9'§,this.§9![§,§=d§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§&f§(this.§9'§,this.§9![§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§&f§(this.§9'§,this.§9![§);
         }
      }
      
      protected function §"%§() : void
      {
         this.setAction(§9Z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§3!?§ = -1;
         this.§"%§();
         this.§3%§ = this.§"Z§ = this.§"!o§ = param1;
         this.§=!?§ = this.§#-§ = this.§?C§ = param2;
         this.§<!o§ = 0;
         this.§?f§.x = this.§0!B§;
         this.§?f§.y = this.§=`§;
         this.§?f§.scale = §6!F§;
         this.§?!K§ = §6!F§;
         if(Math.abs(this.§?&§.x - this.§2!S§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§0!B§ - this.§2!S§.x) / (this.§?&§.x - this.§2!S§.x) * §2Z§;
         }
         this.mDragging = true;
      }
      
      public function §>>§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§<!o§ += param1;
         var _loc3_:Number = this.§3%§ - this.§"Z§;
         if(this.§]!;§ > 0)
         {
            _loc2_ -= _loc3_ * §@!k§.§2!J§ / §=d§ / this.§]!;§ * §2Z§;
            this.§!!R§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§!!R§ = true;
            }
            if(_loc2_ > §2Z§)
            {
               _loc2_ += (§2Z§ - _loc2_) * 0.3;
               this.§!!R§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"Z§ = this.§3%§;
      }
      
      protected function §4B§() : Boolean
      {
         return this.mCurrentAction == §9Z§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§3%§ = param1;
            this.§=!?§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §9Z§)
         {
            this.setAction(§9,§);
            if(param1 > 0)
            {
               this.§3%§ = param1;
            }
            _loc3_ = Math.abs(this.§3%§ - this.§"!o§);
            if(this.§<!o§ < §]§ && _loc3_ >= §2!5§ && _loc3_ >= §-W§ * this.§<!o§ / 1000)
            {
               if(this.§3%§ < this.§"!o§)
               {
                  this.setAction(§@`§);
               }
               else
               {
                  this.setAction(§1Z§);
               }
               this.§3!c§ = _loc3_ / this.§<!o§ * 10;
               this.§!!R§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§!!R§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §2Z§)
               {
                  this.§!!R§ = true;
               }
            }
            else if(this.§<!o§ < §3j§)
            {
               this.§,!d§();
               this.§3!c§ = §2Z§ / (§2Z§ / 500);
               this.§!!R§ = true;
            }
            else
            {
               this.§>>§(0);
               this.§1h§(0);
               this.§3!c§ = §2Z§ / (§2Z§ / 500);
               this.§!!R§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §,!d§() : void
      {
         if(this.mCurrentAction == §@`§)
         {
            this.setAction(§1Z§);
         }
         else if(this.mCurrentAction == §1Z§)
         {
            this.setAction(§@`§);
         }
         else if(this.mCurrentCameraSliderLocation >= §2Z§ / 2)
         {
            this.setAction(§1Z§);
         }
         else if(this.mCurrentCameraSliderLocation <= §2Z§ / 2)
         {
            this.setAction(§@`§);
         }
      }
      
      public function §1h§(param1:int) : void
      {
         this.§3!?§ = param1;
         if(this.mCurrentCameraSliderLocation < §2Z§ / 2)
         {
            this.setAction(§1Z§);
         }
         else
         {
            this.setAction(§@`§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§1Z§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§@`§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§?f§.x = this.§0!B§;
         this.§?f§.y = this.§=`§;
         this.§?f§.scale = §6!F§;
         this.§?!K§ = §6!F§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §2Z§)
         {
            return true;
         }
         if(this.mCurrentAction == §@`§)
         {
            return true;
         }
         return false;
      }
      
      public function §-!2§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §1Z§)
         {
            return true;
         }
         return false;
      }
      
      public function §>g§(param1:§[!h§) : void
      {
         this.§;!A§ = param1;
         if(this.§;!A§ != null)
         {
            this.§1!F§ = new §[!h§();
            this.§1!F§.x = this.§0!B§;
            this.§1!F§.y = this.§=`§;
            this.§1!F§.scale = §6!F§;
         }
         else
         {
            this.§0!B§ = this.§1!F§.x;
            this.§=`§ = this.§1!F§.y;
            §6!F§ = this.§1!F§.scale;
            this.§1!F§ = null;
         }
      }
      
      protected function §@+§() : void
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
         var _loc3_:Number = this.§@!J§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§=%§,Math.min(this.§]J§,_loc3_));
         if(_loc3_ != this.§@!J§)
         {
            this.§@!J§ = _loc3_;
            this.§@+§();
         }
      }
      
      public function §`!,§() : Number
      {
         return (this.manualScale - this.§=%§) / (this.§]J§ - this.§=%§);
      }
      
      public function §0!N§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§]J§ - this.§=%§) + this.§=%§;
      }
      
      public function §"!R§() : void
      {
         this.§@!J§ = Math.max(this.§@!J§ - 0.5,0.5);
      }
      
      public function §1!i§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§@!J§;
         _loc1_ += " mXcenterB2: " + this.§0!B§;
         _loc1_ += " mYcenterB2: " + this.§=`§;
         _loc1_ += " mXcenterB2target: " + this.§@!J§;
         _loc1_ += "\n mYcenterB2target: " + this.§@!J§;
         _loc1_ += " mXcenterB2previous: " + this.§@!J§;
         _loc1_ += " mYcenterB2previous: " + this.§@!J§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§@!J§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§@!J§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§@!J§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§@!J§;
         _loc1_ += " mTargetScale: " + this.§@!J§;
         _loc1_ += " mTargetScalePrevious: " + this.§@!J§;
         _loc1_ += " mCastleCameraX: " + this.§@!J§;
         _loc1_ += "\n mCastleCameraY: " + this.§@!J§;
         _loc1_ += " mCastleCameraScale: " + this.§@!J§;
         _loc1_ += " mBirdCameraX: " + this.§@!J§;
         _loc1_ += " mBirdCameraY: " + this.§@!J§;
         _loc1_ += " mBirdCameraScale: " + this.§@!J§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§@!J§;
         _loc1_ += " mScreenTopScroll: " + this.§@!J§;
         _loc1_ += " mDragging: " + this.§@!J§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§@!J§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§@!J§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§@!J§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§@!J§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§@!J§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§@!J§;
         _loc1_ += " mDraggingTimer: " + this.§@!J§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§@!J§;
         _loc1_ += " mCameraBorderRight: " + this.§@!J§;
         _loc1_ += " mCameraBorderSky: " + this.§@!J§;
         _loc1_ += " mCameraBorderGround: " + this.§@!J§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§@!J§ + "\n ");
      }
   }
}
