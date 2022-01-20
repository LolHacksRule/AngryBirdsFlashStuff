package §?!d§
{
   import § !J§.§%M§;
   import § !J§.§0!!§;
   import §'+§.§1u§;
   import §,4§.§0B§;
   import §,4§.§<f§;
   import §4j§.§9M§;
   import §7F§.§2M§;
   
   public class §-E§
   {
      
      public static const §@!-§:Number = 1.25;
      
      public static const §,!h§:Number = 0.15;
      
      public static const §[!=§:Number = §2M§.§&a§ * §%M§.§'!Y§;
      
      public static const §4!f§:Number = §2M§.§0Z§ * §%M§.§'!Y§;
      
      public static const § try§:Number = 0.1;
      
      public static const § !Z§:int = 1500;
      
      public static const § <§:int = 10;
      
      public static const §6!+§:int = 15;
      
      public static const §;!!§:int = 300;
      
      public static const §2B§:int = 1000;
      
      public static const §3!3§:int = 10000;
      
      public static const §^B§:int = §3!3§ / 50;
      
      public static const §#!6§:int = 0;
      
      public static const §9!m§:int = 1;
      
      public static const §=!b§:int = 2;
      
      public static const §;!D§:int = 3;
      
      public static const §;!S§:int = 4;
      
      public static const §<=§:int = 5;
      
      public static const §#F§:String = "CASTLE";
      
      public static const §^!N§:String = "SLINGSHOT";
      
      protected static var §8p§:Number;
      
      public static var §`!8§:Number;
      
      public static var §%G§:Number;
      
      public static const § !h§:Number = 2000;
       
      
      private var §3!l§:Number = 1.0;
      
      private var §7Z§:Number = 0.2;
      
      protected var §]!0§:Number;
      
      protected var §33§:Number;
      
      protected var §-I§:Number;
      
      public var mLevelMain:§%M§;
      
      public var §-k§:Number;
      
      public var §'p§:Number;
      
      protected var §&!?§:§'5§;
      
      protected var §1!L§:§'5§;
      
      public var §<!2§:Number;
      
      public var §=!K§:Number;
      
      public var mDragging:Boolean = false;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var §=!Q§:Number;
      
      public var §'U§:Number;
      
      private var §;s§:Number;
      
      private var §+g§:§]!T§;
      
      private var §]M§:§]!T§;
      
      protected var §>!A§:Number = 0;
      
      protected var §<;§:Number = 0;
      
      protected var §1;§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §<?§:Number = 0;
      
      public var §9e§:Boolean = true;
      
      public var §`§:Number = 0;
      
      public var §6+§:Number = 0;
      
      public var §>!T§:Number = 0;
      
      public var §`!g§:Number = 0;
      
      public var §`6§:Number = 0;
      
      public var §<Z§:Number = 0;
      
      public var §]!3§:Number = 0;
      
      public var §6;§:Number = 0;
      
      public var §7k§:Number = 0;
      
      private var §^!o§:§]!T§;
      
      public var §4!J§:Number = 0;
      
      private var §2!L§:Number = 0;
      
      private var §6!O§:Number = 0;
      
      private var §;!P§:§<f§ = null;
      
      private var §^#§:§<f§ = null;
      
      public function §-E§(param1:§%M§, param2:§0B§, param3:Number = 1.0)
      {
         this.§^!o§ = new §]!T§(0,0,1,false);
         super();
         this.§33§ = 0;
         this.§-I§ = 0;
         this.mLevelMain = param1;
         §-E§.§8p§ = 1;
         this.§3!l§ = Math.max(1,Math.min(2,param3));
         this.§]!0§ = this.§3!l§;
         this.§=6§(param2);
         if(this.§&!?§ && this.§1!L§)
         {
            this.§5![§();
            this.§>!A§ = this.§&!?§.x - this.§1!L§.x;
            this.§<;§ = this.§&!?§.y - this.§1!L§.y;
            this.§1;§ = this.§&!?§.scale - this.§1!L§.scale;
            this.§33§ = this.§&!?§.x;
            this.§-I§ = this.§&!?§.y;
            §8p§ = this.§&!?§.scale * this.§]!0§;
         }
         this.mCurrentCameraSliderLocation = §3!3§;
         this.§9e§ = true;
         this.§<?§ = §3!3§ / 500;
      }
      
      private static function §+j§() : Number
      {
         var _loc1_:Number = §2M§.§4f§ / §2M§.§50§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §-$§() : Number
      {
         return §8p§ * §+j§();
      }
      
      public function get manualScale() : Number
      {
         return this.§]!0§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§]!0§ = param1;
      }
      
      public function get §2!;§() : Number
      {
         return this.§;s§;
      }
      
      public function §#!T§() : Number
      {
         return §[!=§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get §[!`§() : Number
      {
         return this.§3!l§;
      }
      
      public function get § !S§() : Number
      {
         return this.§7Z§;
      }
      
      public function §^u§(param1:Number) : void
      {
         this.§]!0§ = param1;
         this.§&!3§();
         this.§9![§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<=§)
         {
            return;
         }
         this.goToCastleView();
         this.§`§ = 2000;
         this.§<o§();
         this.§>"§();
         this.§+!7§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§33§ = this.§1!L§.x;
         this.§-I§ = this.§1!L§.y;
         this.§9e§ = false;
         this.§<?§ = §3!3§ / 160000 * param1;
         this.setAction(§<=§);
      }
      
      public function §5![§() : void
      {
         this.mCameraBorderLeft = this.§1!L§.x - §[!=§ / this.§1!L§.scale / 2;
         this.mCameraBorderRight = this.§&!?§.x + §[!=§ / this.§&!?§.scale / 2;
         this.§=!Q§ = this.mLevelMain.§"6§.§[! § - 20 * §%M§.§;z§ * §%M§.§'!Y§;
         this.§'U§ = this.mLevelMain.§"6§.§[! § + 4;
         var _loc1_:Number = §[!=§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
         this.§;s§ = this.§'U§ - §4!f§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §=6§(param1:§0B§) : void
      {
         var _loc3_:§<f§ = null;
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
         while(_loc2_ < param1.§0?§)
         {
            _loc3_ = param1.§=+§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§3d§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §4!f§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §[!=§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §^!N§)
            {
               this.§1!L§ = new §'5§(_loc9_,_loc10_,_loc13_,true);
               this.§]M§ = new §]!T§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §#F§)
            {
               this.§&!?§ = new §'5§(_loc9_,_loc10_,_loc13_,false);
               this.§+g§ = new §]!T§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §1u§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §1!§(param1:§0B§) : void
      {
         var _loc2_:§<f§ = new §<f§();
         _loc2_.id = §^!N§;
         _loc2_.x = this.§1!L§.x;
         _loc2_.y = this.§1!L§.y;
         var _loc3_:Number = §[!=§ / this.§1!L§.scale / 2;
         var _loc4_:Number = §4!f§ / this.§1!L§.scale / 2;
         _loc2_.left = this.§1!L§.x - _loc3_;
         _loc2_.right = this.§1!L§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§<f§;
         (_loc5_ = new §<f§()).id = §#F§;
         _loc5_.x = this.§&!?§.x;
         _loc5_.y = this.§&!?§.y;
         var _loc6_:Number = §[!=§ / this.§&!?§.scale / 2;
         var _loc7_:Number = §4!f§ / this.§&!?§.scale / 2;
         _loc5_.left = this.§&!?§.x - _loc6_;
         _loc5_.right = this.§&!?§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§@!&§();
         param1.§+4§(_loc2_);
         param1.§+4§(_loc5_);
      }
      
      public function §3d§(param1:§<f§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §2M§.§&a§ * 0.5 / _loc2_ * §%M§.§'!Y§;
         var _loc4_:Number = param1.y - §2M§.§0Z§ * 0.5 / _loc2_ * §%M§.§'!Y§;
         var _loc5_:Number = _loc3_ + §2M§.§&a§ / _loc2_ * §%M§.§'!Y§;
         var _loc6_:Number = _loc4_ + §2M§.§0Z§ / _loc2_ * §%M§.§'!Y§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function § !B§(param1:§'5§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§<?§;
         if(_loc3_ >= §3!3§)
         {
            _loc3_ = §3!3§;
            this.setAction(§#!6§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§#!6§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§<?§;
         var _loc4_:Number = -§3!3§ * 0.7;
         if(_loc2_ >= §3!3§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §3!3§;
            }
            this.§<?§ = -this.§<?§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §8!c§(param1:Number) : void
      {
         if(this.mCurrentAction == §<=§)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == §9!m§)
         {
            this.§ !B§(this.§&!?§,param1);
         }
         else if(this.mCurrentAction == §=!b§)
         {
            this.§ !B§(this.§1!L§,-param1);
         }
         else if(this.mCurrentAction == §;!D§)
         {
            this.§9e§ = true;
         }
         else if(this.mCurrentAction == §;!S§)
         {
            this.§4!F§(param1);
         }
      }
      
      public function §0z§(param1:Number) : void
      {
         if(this.§;!P§)
         {
            this.§33§ = this.§;!P§.x;
            this.§-I§ = this.§;!P§.y;
            §8p§ = §[!=§ / (this.§;!P§.right - this.§;!P§.left);
         }
         else
         {
            this.§&!3§();
            this.§8!c§(param1);
            this.§,+§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§<o§();
         this.§>"§();
         this.§+!7§();
      }
      
      private function §8!6§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]M§.scale + (this.§+g§.scale - this.§]M§.scale) * param1;
         var _loc4_:Number = this.§]M§.x + (this.§+g§.x - this.§]M§.x) * param1;
         var _loc5_:Number = this.§]M§.y + (this.§+g§.y - this.§]M§.y) * param1;
         this.§^!o§.x -= (this.§^!o§.x - _loc4_) * param2;
         this.§^!o§.y -= (this.§^!o§.y - _loc5_) * param2;
         this.§^!o§.scale -= (this.§^!o§.scale - _loc3_) * param2;
      }
      
      protected function §9![§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§>!A§ != 0)
         {
            if(!this.§9e§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §3!3§;
            this.§8!6§(_loc3_,param2);
            this.§33§ = this.§^!o§.x;
            this.§-I§ = this.§^!o§.y;
            §8p§ = this.§^!o§.scale;
         }
      }
      
      public function §,+§(param1:Number, param2:Number) : void
      {
         var _loc5_:§9M§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §3!3§)
         {
            this.§9e§ = true;
         }
         if(this.mCurrentAction == §;!D§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.setAction(§9!m§);
               this.§7k§ = §2B§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§3H§().GetPosition().x + (!!_loc5_.§2U§ ? _loc5_.§2U§ * §%M§.§'!Y§ : 0);
               _loc7_ = _loc5_.§3H§().GetPosition().y + (!!_loc5_.§<!L§ ? _loc5_.§<!L§ * §%M§.§'!Y§ : 0);
               if((_loc8_ = _loc5_.§3H§().GetLinearVelocity().x) > 0 && this.§>!A§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§>!A§ * §3!3§;
               }
               if(param1 >= §3!3§)
               {
                  param1 = §3!3§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §3!3§;
               this.§8!6§(_loc9_,_loc4_);
               _loc10_ = this.§^!o§.x - §[!=§ * 0.5 / this.§^!o§.scale;
               _loc11_ = this.§^!o§.y - §4!f§ * 0.5 / this.§^!o§.scale;
               _loc12_ = this.§^!o§.x + §[!=§ * 0.5 / this.§^!o§.scale;
               _loc13_ = this.§^!o§.y + §4!f§ * 0.5 / this.§^!o§.scale;
               _loc14_ = 150 * §%M§.§'!Y§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
               _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
               _loc19_ = Math.abs(§[!=§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§4!f§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§^!o§.scale)
               {
                  _loc21_ = this.§^!o§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §[!=§ * 0.5 / _loc21_ > this.mCameraBorderRight)
               {
                  _loc15_ = (_loc17_ = this.mCameraBorderRight) - §[!=§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.mCameraBorderLeft)
                  {
                     _loc15_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc22_ - §[!=§ * 0.5 / _loc21_ < this.mCameraBorderLeft)
               {
                  _loc17_ = (_loc15_ = this.mCameraBorderLeft) + §[!=§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.mCameraBorderRight)
                  {
                     _loc17_ = this.mCameraBorderRight;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§[!=§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §[!=§ * 0.5 / _loc21_ < this.§=!Q§)
               {
                  _loc23_ = this.§=!Q§ + §[!=§ * 0.5 / _loc21_;
               }
               this.§33§ -= (this.§33§ - _loc22_) * _loc4_;
               this.§4!J§ -= (this.§4!J§ - _loc21_) * _loc4_;
               §8p§ = this.§4!J§;
               this.§-I§ -= (this.§-I§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.mCameraBorderRight || _loc6_ <= this.mCameraBorderLeft)
               {
                  this.§^!o§.scale = §8p§;
                  this.§^!o§.x = this.§33§;
                  this.§^!o§.y = this.§-I§;
               }
            }
         }
         else
         {
            this.§9![§(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.§2!L§ = param1;
         this.§6!O§ = param2;
      }
      
      private function §^U§(param1:§]!T§, param2:§'5§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §,!h§ + (param2.scale - §,!h§) * this.§]!0§ * §-E§.§+j§();
         if(§[!=§ / param1.scale > this.mCameraBorderRight - this.mCameraBorderLeft)
         {
            _loc3_ = §[!=§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §!!n§(param1:§]!T§, param2:§'5§) : Boolean
      {
         var _loc3_:Boolean = this.§^U§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §4!f§ * 0.5 / param1.scale;
         var _loc5_:Number = §4!f§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §[!=§ * 0.5 / param1.scale) < this.mCameraBorderLeft && param1.§,!f§)
         {
            param1.x += this.mCameraBorderLeft - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §[!=§ * 0.5 / param1.scale) > this.mCameraBorderRight && !param1.§,!f§)
         {
            param1.x += this.mCameraBorderRight - _loc7_;
         }
         return _loc3_;
      }
      
      private function §@!@§(param1:§]!T§, param2:§'5§) : Number
      {
         return (param1.scale - §,!h§) / (§-E§.§+j§() * (param2.scale - §,!h§));
      }
      
      protected function §&!3§() : void
      {
         this.§!!n§(this.§]M§,this.§1!L§);
         var _loc1_:Number = this.§@!@§(this.§]M§,this.§1!L§);
         this.§!!n§(this.§+g§,this.§&!?§);
         var _loc2_:Number = this.§@!@§(this.§+g§,this.§&!?§);
         this.§]!0§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §<o§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §2M§.§!!6§() / §2M§.§4f§ - §2M§.§0Z§ >> 1;
            §`!8§ = this.mLevelMain.sprite.x = §%M§.§"t§ * ((1 - §-E§.§-$§) / 2);
            §%G§ = this.mLevelMain.sprite.y = _loc1_ + §%M§.§;z§ * (1 - §-E§.§-$§) * §0!!§.§-@§;
         }
      }
      
      public function §+!7§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §-$§;
            this.mLevelMain.sprite.scaleY = §-$§;
         }
      }
      
      public function §>"§() : void
      {
         var _loc1_:Number = this.§33§ / §%M§.§'!Y§ + this.§2!L§;
         var _loc2_:Number = this.§-I§ / §%M§.§'!Y§ + this.§6!O§;
         this.§<!2§ = _loc1_ - §%M§.§"t§ / 2 * §2M§.§4f§ / §2M§.§>!E§;
         this.§=!K§ = _loc2_ - §%M§.§;z§ / 2 + §0!!§.§39§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§5[§(this.§<!2§,this.§=!K§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§5[§(this.§<!2§,this.§=!K§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§5[§(this.§<!2§,this.§=!K§,§8p§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§5[§(this.§<!2§,this.§=!K§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§5[§(this.§<!2§,this.§=!K§);
         }
      }
      
      protected function §%!V§() : void
      {
         this.setAction(§;!S§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7k§ = -1;
         this.§%!V§();
         this.§`6§ = this.§]!3§ = this.§>!T§ = param1;
         this.§<Z§ = this.§6;§ = this.§`!g§ = param2;
         this.§6+§ = 0;
         this.§^!o§.x = this.§33§;
         this.§^!o§.y = this.§-I§;
         this.§^!o§.scale = §8p§;
         this.§4!J§ = §8p§;
         if(Math.abs(this.§+g§.x - this.§]M§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§33§ - this.§]M§.x) / (this.§+g§.x - this.§]M§.x) * §3!3§;
         }
         this.mDragging = true;
      }
      
      public function §4!F§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§6+§ += param1;
         var _loc3_:Number = this.§`6§ - this.§]!3§;
         if(this.§>!A§ > 0)
         {
            _loc2_ -= _loc3_ * §%M§.§'!Y§ / §-$§ / this.§>!A§ * §3!3§;
            this.§9e§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§9e§ = true;
            }
            if(_loc2_ > §3!3§)
            {
               _loc2_ += (§3!3§ - _loc2_) * 0.3;
               this.§9e§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§]!3§ = this.§`6§;
      }
      
      protected function §,!1§() : Boolean
      {
         return this.mCurrentAction == §;!S§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§`6§ = param1;
            this.§<Z§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;!S§)
         {
            this.setAction(§#!6§);
            if(param1 > 0)
            {
               this.§`6§ = param1;
            }
            _loc3_ = Math.abs(this.§`6§ - this.§>!T§);
            if(this.§6+§ < § !Z§ && _loc3_ >= § <§ && _loc3_ >= §6!+§ * this.§6+§ / 1000)
            {
               if(this.§`6§ < this.§>!T§)
               {
                  this.setAction(§9!m§);
               }
               else
               {
                  this.setAction(§=!b§);
               }
               this.§<?§ = _loc3_ / this.§6+§ * 10;
               this.§9e§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§9e§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §3!3§)
               {
                  this.§9e§ = true;
               }
            }
            else if(this.§6+§ < §;!!§)
            {
               this.§+!r§();
               this.§<?§ = §3!3§ / (§3!3§ / 500);
               this.§9e§ = true;
            }
            else
            {
               this.§4!F§(0);
               this.§>!>§(0);
               this.§<?§ = §3!3§ / (§3!3§ / 500);
               this.§9e§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §+!r§() : void
      {
         if(this.mCurrentAction == §9!m§)
         {
            this.setAction(§=!b§);
         }
         else if(this.mCurrentAction == §=!b§)
         {
            this.setAction(§9!m§);
         }
         else if(this.mCurrentCameraSliderLocation >= §3!3§ / 2)
         {
            this.setAction(§=!b§);
         }
         else if(this.mCurrentCameraSliderLocation <= §3!3§ / 2)
         {
            this.setAction(§9!m§);
         }
      }
      
      public function §>!>§(param1:int) : void
      {
         this.§7k§ = param1;
         if(this.mCurrentCameraSliderLocation < §3!3§ / 2)
         {
            this.setAction(§=!b§);
         }
         else
         {
            this.setAction(§9!m§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§=!b§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§9!m§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§^!o§.x = this.§33§;
         this.§^!o§.y = this.§-I§;
         this.§^!o§.scale = §8p§;
         this.§4!J§ = §8p§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §3!3§)
         {
            return true;
         }
         if(this.mCurrentAction == §9!m§)
         {
            return true;
         }
         return false;
      }
      
      public function §'d§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §=!b§)
         {
            return true;
         }
         return false;
      }
      
      public function §7!o§(param1:§<f§) : void
      {
         this.§;!P§ = param1;
         if(this.§;!P§ != null)
         {
            this.§^#§ = new §<f§();
            this.§^#§.x = this.§33§;
            this.§^#§.y = this.§-I§;
            this.§^#§.scale = §8p§;
         }
         else
         {
            this.§33§ = this.§^#§.x;
            this.§-I§ = this.§^#§.y;
            §8p§ = this.§^#§.scale;
            this.§^#§ = null;
         }
      }
      
      protected function §`!d§() : void
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
         var _loc3_:Number = this.§]!0§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§ !S§,Math.min(this.§[!`§,_loc3_));
         if(_loc3_ != this.§]!0§)
         {
            this.§]!0§ = _loc3_;
            this.§`!d§();
         }
      }
      
      public function § else§() : Number
      {
         return (this.manualScale - this.§ !S§) / (this.§[!`§ - this.§ !S§);
      }
      
      public function §&j§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§[!`§ - this.§ !S§) + this.§ !S§;
      }
      
      public function §?'§() : void
      {
         this.§]!0§ = Math.max(this.§]!0§ - 0.5,0.5);
      }
      
      public function §@?§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§]!0§;
         _loc1_ += " mXcenterB2: " + this.§33§;
         _loc1_ += " mYcenterB2: " + this.§-I§;
         _loc1_ += " mXcenterB2target: " + this.§]!0§;
         _loc1_ += "\n mYcenterB2target: " + this.§]!0§;
         _loc1_ += " mXcenterB2previous: " + this.§]!0§;
         _loc1_ += " mYcenterB2previous: " + this.§]!0§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§]!0§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§]!0§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§]!0§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§]!0§;
         _loc1_ += " mTargetScale: " + this.§]!0§;
         _loc1_ += " mTargetScalePrevious: " + this.§]!0§;
         _loc1_ += " mCastleCameraX: " + this.§]!0§;
         _loc1_ += "\n mCastleCameraY: " + this.§]!0§;
         _loc1_ += " mCastleCameraScale: " + this.§]!0§;
         _loc1_ += " mBirdCameraX: " + this.§]!0§;
         _loc1_ += " mBirdCameraY: " + this.§]!0§;
         _loc1_ += " mBirdCameraScale: " + this.§]!0§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§]!0§;
         _loc1_ += " mScreenTopScroll: " + this.§]!0§;
         _loc1_ += " mDragging: " + this.§]!0§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§]!0§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§]!0§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§]!0§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§]!0§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§]!0§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§]!0§;
         _loc1_ += " mDraggingTimer: " + this.§]!0§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§]!0§;
         _loc1_ += " mCameraBorderRight: " + this.§]!0§;
         _loc1_ += " mCameraBorderSky: " + this.§]!0§;
         _loc1_ += " mCameraBorderGround: " + this.§]!0§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§]!0§ + "\n ");
      }
      
      public function §?2§() : Number
      {
         return this.§33§;
      }
   }
}
