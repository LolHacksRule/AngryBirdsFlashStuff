package §[_§
{
   import §%`§.§"s§;
   import §'a§.§0!f§;
   import §'a§.§;!'§;
   import §+-§.§,K§;
   import §+-§.§^D§;
   import §9!W§.§=!@§;
   import §=<§.§1+§;
   
   public class §2D§
   {
      
      public static const §-!m§:Number = 1.25;
      
      public static const §5!F§:Number = 0.15;
      
      public static const §!<§:Number = §=!@§.§&"§ * §0!f§.§<C§;
      
      public static const §@t§:Number = §=!@§.§+! § * §0!f§.§<C§;
      
      public static const §-t§:Number = 0.1;
      
      public static const §+!;§:int = 1500;
      
      public static const §&Y§:int = 10;
      
      public static const §2[§:int = 15;
      
      public static const §%,§:int = 300;
      
      public static const §@!Y§:int = 1000;
      
      public static const §5M§:int = 10000;
      
      public static const §`!M§:int = §5M§ / 50;
      
      public static const §;b§:int = 0;
      
      public static const §3!;§:int = 1;
      
      public static const §1!f§:int = 2;
      
      public static const §=R§:int = 3;
      
      public static const §#z§:int = 4;
      
      public static const §2"§:int = 5;
      
      public static const §^!0§:String = "CASTLE";
      
      public static const §%1§:String = "SLINGSHOT";
      
      protected static var §7!L§:Number;
      
      public static var §]!A§:Number;
      
      public static var §-!>§:Number;
      
      public static const §]!g§:Number = 2000;
       
      
      private var §-!d§:Number = 1.0;
      
      private var §2!@§:Number = 0.2;
      
      protected var § s§:Number;
      
      protected var §6!6§:Number;
      
      protected var §29§:Number;
      
      public var mLevelMain:§0!f§;
      
      public var §%!j§:Number;
      
      public var §%+§:Number;
      
      private var §?!M§:§2V§;
      
      private var §[!R§:§2V§;
      
      public var §?!0§:Number;
      
      public var §?!B§:Number;
      
      public var mDragging:Boolean = false;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var §!z§:Number;
      
      public var §>x§:Number;
      
      private var §&m§:Number;
      
      private var §0c§:§-!c§;
      
      private var §0!E§:§-!c§;
      
      protected var §%W§:Number = 0;
      
      protected var §#8§:Number = 0;
      
      protected var §]@§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §#!@§:Number = 0;
      
      public var §&!c§:Boolean = true;
      
      public var §@![§:Number = 0;
      
      public var §+!p§:Number = 0;
      
      public var §]!d§:Number = 0;
      
      public var §1`§:Number = 0;
      
      public var §3h§:Number = 0;
      
      public var §-X§:Number = 0;
      
      public var §]!C§:Number = 0;
      
      public var §2T§:Number = 0;
      
      public var §`a§:Number = 0;
      
      private var §%x§:§-!c§;
      
      public var §5!E§:Number = 0;
      
      private var §"!c§:Number = 0;
      
      private var §]!>§:Number = 0;
      
      private var §!H§:§^D§ = null;
      
      private var §5!Z§:§^D§ = null;
      
      public function §2D§(param1:§0!f§, param2:§,K§, param3:Number = 1.0)
      {
         this.§%x§ = new §-!c§(0,0,1,false);
         super();
         this.§6!6§ = 0;
         this.§29§ = 0;
         this.mLevelMain = param1;
         §2D§.§7!L§ = 1;
         this.§-!d§ = Math.max(1,Math.min(2,param3));
         this.§ s§ = this.§-!d§;
         this.§%!5§(param2);
         if(this.§?!M§ && this.§[!R§)
         {
            this.§-!&§();
            this.§%W§ = this.§?!M§.x - this.§[!R§.x;
            this.§#8§ = this.§?!M§.y - this.§[!R§.y;
            this.§]@§ = this.§?!M§.scale - this.§[!R§.scale;
            this.§6!6§ = this.§?!M§.x;
            this.§29§ = this.§?!M§.y;
            §7!L§ = this.§?!M§.scale * this.§ s§;
         }
         this.mCurrentCameraSliderLocation = §5M§;
         this.§&!c§ = true;
         this.§#!@§ = §5M§ / 500;
      }
      
      private static function §>j§() : Number
      {
         var _loc1_:Number = §=!@§.§',§ / §=!@§.§6d§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §0#§() : Number
      {
         return §7!L§ * §>j§();
      }
      
      public function get manualScale() : Number
      {
         return this.§ s§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§ s§ = param1;
      }
      
      public function get §4!M§() : Number
      {
         return this.§&m§;
      }
      
      public function §2+§() : Number
      {
         return §!<§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get §8^§() : Number
      {
         return this.§-!d§;
      }
      
      public function get §[!7§() : Number
      {
         return this.§2!@§;
      }
      
      public function §[l§(param1:Number) : void
      {
         this.§ s§ = param1;
         this.§ F§();
         this.§=!b§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §2"§)
         {
            return;
         }
         this.goToCastleView();
         this.§@![§ = 2000;
         this.§6o§();
         this.§[G§();
         this.§+!$§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§6!6§ = this.§[!R§.x;
         this.§29§ = this.§[!R§.y;
         this.§&!c§ = false;
         this.§#!@§ = §5M§ / 160000 * param1;
         this.setAction(§2"§);
      }
      
      public function §-!&§() : void
      {
         this.mCameraBorderLeft = this.§[!R§.x - §!<§ / this.§[!R§.scale / 2;
         this.mCameraBorderRight = this.§?!M§.x + §!<§ / this.§?!M§.scale / 2;
         this.§!z§ = this.mLevelMain.§9!I§.§8!R§ - 20 * §0!f§.§?%§ * §0!f§.§<C§;
         this.§>x§ = this.mLevelMain.§9!I§.§8!R§ + 4;
         var _loc1_:Number = §!<§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
         this.§&m§ = this.§>x§ - §@t§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §%!5§(param1:§,K§) : void
      {
         var _loc3_:§^D§ = null;
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
         while(_loc2_ < param1.§2y§)
         {
            _loc3_ = param1.§-R§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§;K§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §@t§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §!<§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §%1§)
            {
               this.§[!R§ = new §2V§(_loc9_,_loc10_,_loc13_,true);
               this.§0!E§ = new §-!c§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §^!0§)
            {
               this.§?!M§ = new §2V§(_loc9_,_loc10_,_loc13_,false);
               this.§0c§ = new §-!c§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §1+§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §+a§(param1:§,K§) : void
      {
         var _loc2_:§^D§ = new §^D§();
         _loc2_.id = §%1§;
         _loc2_.x = this.§[!R§.x;
         _loc2_.y = this.§[!R§.y;
         var _loc3_:Number = §!<§ / this.§[!R§.scale / 2;
         var _loc4_:Number = §@t§ / this.§[!R§.scale / 2;
         _loc2_.left = this.§[!R§.x - _loc3_;
         _loc2_.right = this.§[!R§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§^D§;
         (_loc5_ = new §^D§()).id = §^!0§;
         _loc5_.x = this.§?!M§.x;
         _loc5_.y = this.§?!M§.y;
         var _loc6_:Number = §!<§ / this.§?!M§.scale / 2;
         var _loc7_:Number = §@t§ / this.§?!M§.scale / 2;
         _loc5_.left = this.§?!M§.x - _loc6_;
         _loc5_.right = this.§?!M§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§"!>§();
         param1.§%U§(_loc2_);
         param1.§%U§(_loc5_);
      }
      
      public function §;K§(param1:§^D§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §=!@§.§&"§ * 0.5 / _loc2_ * §0!f§.§<C§;
         var _loc4_:Number = param1.y - §=!@§.§+! § * 0.5 / _loc2_ * §0!f§.§<C§;
         var _loc5_:Number = _loc3_ + §=!@§.§&"§ / _loc2_ * §0!f§.§<C§;
         var _loc6_:Number = _loc4_ + §=!@§.§+! § / _loc2_ * §0!f§.§<C§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §7i§(param1:§2V§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§#!@§;
         if(_loc3_ >= §5M§)
         {
            _loc3_ = §5M§;
            this.setAction(§;b§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§;b§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§#!@§;
         var _loc4_:Number = -§5M§ * 0.7;
         if(_loc2_ >= §5M§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §5M§;
            }
            this.§#!@§ = -this.§#!@§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §5=§(param1:Number) : void
      {
         if(this.mCurrentAction == §2"§)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == §3!;§)
         {
            this.§7i§(this.§?!M§,param1);
         }
         else if(this.mCurrentAction == §1!f§)
         {
            this.§7i§(this.§[!R§,-param1);
         }
         else if(this.mCurrentAction == §=R§)
         {
            this.§&!c§ = true;
         }
         else if(this.mCurrentAction == §#z§)
         {
            this.§<B§(param1);
         }
      }
      
      public function §'!i§(param1:Number) : void
      {
         if(this.§!H§)
         {
            this.§6!6§ = this.§!H§.x;
            this.§29§ = this.§!H§.y;
            §7!L§ = §!<§ / (this.§!H§.right - this.§!H§.left);
         }
         else
         {
            this.§ F§();
            this.§5=§(param1);
            this.§5!f§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§6o§();
         this.§[G§();
         this.§+!$§();
      }
      
      private function §!j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§0!E§.scale + (this.§0c§.scale - this.§0!E§.scale) * param1;
         var _loc4_:Number = this.§0!E§.x + (this.§0c§.x - this.§0!E§.x) * param1;
         var _loc5_:Number = this.§0!E§.y + (this.§0c§.y - this.§0!E§.y) * param1;
         this.§%x§.x -= (this.§%x§.x - _loc4_) * param2;
         this.§%x§.y -= (this.§%x§.y - _loc5_) * param2;
         this.§%x§.scale -= (this.§%x§.scale - _loc3_) * param2;
      }
      
      protected function §=!b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%W§ != 0)
         {
            if(!this.§&!c§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §5M§;
            this.§!j§(_loc3_,param2);
            this.§6!6§ = this.§%x§.x;
            this.§29§ = this.§%x§.y;
            §7!L§ = this.§%x§.scale;
         }
      }
      
      public function §5!f§(param1:Number, param2:Number) : void
      {
         var _loc5_:§"s§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §5M§)
         {
            this.§&!c§ = true;
         }
         if(this.mCurrentAction == §=R§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.setAction(§3!;§);
               this.§`a§ = §@!Y§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§%9§().GetPosition().x + (!!_loc5_.§&G§ ? _loc5_.§&G§ * §0!f§.§<C§ : 0);
               _loc7_ = _loc5_.§%9§().GetPosition().y + (!!_loc5_.§4!a§ ? _loc5_.§4!a§ * §0!f§.§<C§ : 0);
               if((_loc8_ = _loc5_.§%9§().GetLinearVelocity().x) > 0 && this.§%W§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§%W§ * §5M§;
               }
               if(param1 >= §5M§)
               {
                  param1 = §5M§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §5M§;
               this.§!j§(_loc9_,_loc4_);
               _loc10_ = this.§%x§.x - §!<§ * 0.5 / this.§%x§.scale;
               _loc11_ = this.§%x§.y - §@t§ * 0.5 / this.§%x§.scale;
               _loc12_ = this.§%x§.x + §!<§ * 0.5 / this.§%x§.scale;
               _loc13_ = this.§%x§.y + §@t§ * 0.5 / this.§%x§.scale;
               _loc14_ = 150 * §0!f§.§<C§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
               _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
               _loc19_ = Math.abs(§!<§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§@t§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§%x§.scale)
               {
                  _loc21_ = this.§%x§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §!<§ * 0.5 / _loc21_ > this.mCameraBorderRight)
               {
                  _loc15_ = (_loc17_ = this.mCameraBorderRight) - §!<§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.mCameraBorderLeft)
                  {
                     _loc15_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc22_ - §!<§ * 0.5 / _loc21_ < this.mCameraBorderLeft)
               {
                  _loc17_ = (_loc15_ = this.mCameraBorderLeft) + §!<§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.mCameraBorderRight)
                  {
                     _loc17_ = this.mCameraBorderRight;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§!<§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §!<§ * 0.5 / _loc21_ < this.§!z§)
               {
                  _loc23_ = this.§!z§ + §!<§ * 0.5 / _loc21_;
               }
               this.§6!6§ -= (this.§6!6§ - _loc22_) * _loc4_;
               this.§5!E§ -= (this.§5!E§ - _loc21_) * _loc4_;
               §7!L§ = this.§5!E§;
               this.§29§ -= (this.§29§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.mCameraBorderRight || _loc6_ <= this.mCameraBorderLeft)
               {
                  this.§%x§.scale = §7!L§;
                  this.§%x§.x = this.§6!6§;
                  this.§%x§.y = this.§29§;
               }
            }
         }
         else
         {
            this.§=!b§(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.§"!c§ = param1;
         this.§]!>§ = param2;
      }
      
      private function §8!f§(param1:§-!c§, param2:§2V§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §5!F§ + (param2.scale - §5!F§) * this.§ s§ * §2D§.§>j§();
         if(§!<§ / param1.scale > this.mCameraBorderRight - this.mCameraBorderLeft)
         {
            _loc3_ = §!<§ / (this.mCameraBorderRight - this.mCameraBorderLeft);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §4!J§(param1:§-!c§, param2:§2V§) : Boolean
      {
         var _loc3_:Boolean = this.§8!f§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §@t§ * 0.5 / param1.scale;
         var _loc5_:Number = §@t§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §!<§ * 0.5 / param1.scale) < this.mCameraBorderLeft && param1.§!!]§)
         {
            param1.x += this.mCameraBorderLeft - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §!<§ * 0.5 / param1.scale) > this.mCameraBorderRight && !param1.§!!]§)
         {
            param1.x += this.mCameraBorderRight - _loc7_;
         }
         return _loc3_;
      }
      
      private function §'I§(param1:§-!c§, param2:§2V§) : Number
      {
         return (param1.scale - §5!F§) / (§2D§.§>j§() * (param2.scale - §5!F§));
      }
      
      protected function § F§() : void
      {
         this.§4!J§(this.§0!E§,this.§[!R§);
         var _loc1_:Number = this.§'I§(this.§0!E§,this.§[!R§);
         this.§4!J§(this.§0c§,this.§?!M§);
         var _loc2_:Number = this.§'I§(this.§0c§,this.§?!M§);
         this.§ s§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §6o§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §=!@§.§ z§() / §=!@§.§',§ - §=!@§.§+! § >> 1;
            §]!A§ = this.mLevelMain.sprite.x = §0!f§.§"i§ * ((1 - §2D§.§0#§) / 2);
            §-!>§ = this.mLevelMain.sprite.y = _loc1_ + §0!f§.§?%§ * (1 - §2D§.§0#§) * §;!'§.§&§;
         }
      }
      
      public function §+!$§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §0#§;
            this.mLevelMain.sprite.scaleY = §0#§;
         }
      }
      
      public function §[G§() : void
      {
         var _loc1_:Number = this.§6!6§ / §0!f§.§<C§ + this.§"!c§;
         var _loc2_:Number = this.§29§ / §0!f§.§<C§ + this.§]!>§;
         this.§?!0§ = _loc1_ - §0!f§.§"i§ / 2 * §=!@§.§',§ / §=!@§.§,B§;
         this.§?!B§ = _loc2_ - §0!f§.§?%§ / 2 + §;!'§.§9!V§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§8!E§(this.§?!0§,this.§?!B§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§8!E§(this.§?!0§,this.§?!B§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§8!E§(this.§?!0§,this.§?!B§,§0#§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§8!E§(this.§?!0§,this.§?!B§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§8!E§(this.§?!0§,this.§?!B§);
         }
      }
      
      protected function §2!C§() : void
      {
         this.setAction(§#z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§`a§ = -1;
         this.§2!C§();
         this.§3h§ = this.§]!C§ = this.§]!d§ = param1;
         this.§-X§ = this.§2T§ = this.§1`§ = param2;
         this.§+!p§ = 0;
         this.§%x§.x = this.§6!6§;
         this.§%x§.y = this.§29§;
         this.§%x§.scale = §7!L§;
         this.§5!E§ = §7!L§;
         if(Math.abs(this.§0c§.x - this.§0!E§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§6!6§ - this.§0!E§.x) / (this.§0c§.x - this.§0!E§.x) * §5M§;
         }
         this.mDragging = true;
      }
      
      public function §<B§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§+!p§ += param1;
         var _loc3_:Number = this.§3h§ - this.§]!C§;
         if(this.§%W§ > 0)
         {
            _loc2_ -= _loc3_ * §0!f§.§<C§ / §0#§ / this.§%W§ * §5M§;
            this.§&!c§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§&!c§ = true;
            }
            if(_loc2_ > §5M§)
            {
               _loc2_ += (§5M§ - _loc2_) * 0.3;
               this.§&!c§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§]!C§ = this.§3h§;
      }
      
      protected function §36§() : Boolean
      {
         return this.mCurrentAction == §#z§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§3h§ = param1;
            this.§-X§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §#z§)
         {
            this.setAction(§;b§);
            if(param1 > 0)
            {
               this.§3h§ = param1;
            }
            _loc3_ = Math.abs(this.§3h§ - this.§]!d§);
            if(this.§+!p§ < §+!;§ && _loc3_ >= §&Y§ && _loc3_ >= §2[§ * this.§+!p§ / 1000)
            {
               if(this.§3h§ < this.§]!d§)
               {
                  this.setAction(§3!;§);
               }
               else
               {
                  this.setAction(§1!f§);
               }
               this.§#!@§ = _loc3_ / this.§+!p§ * 10;
               this.§&!c§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§&!c§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §5M§)
               {
                  this.§&!c§ = true;
               }
            }
            else if(this.§+!p§ < §%,§)
            {
               this.§<!'§();
               this.§#!@§ = §5M§ / (§5M§ / 500);
               this.§&!c§ = true;
            }
            else
            {
               this.§<B§(0);
               this.§"G§(0);
               this.§#!@§ = §5M§ / (§5M§ / 500);
               this.§&!c§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §<!'§() : void
      {
         if(this.mCurrentAction == §3!;§)
         {
            this.setAction(§1!f§);
         }
         else if(this.mCurrentAction == §1!f§)
         {
            this.setAction(§3!;§);
         }
         else if(this.mCurrentCameraSliderLocation >= §5M§ / 2)
         {
            this.setAction(§1!f§);
         }
         else if(this.mCurrentCameraSliderLocation <= §5M§ / 2)
         {
            this.setAction(§3!;§);
         }
      }
      
      public function §"G§(param1:int) : void
      {
         this.§`a§ = param1;
         if(this.mCurrentCameraSliderLocation < §5M§ / 2)
         {
            this.setAction(§1!f§);
         }
         else
         {
            this.setAction(§3!;§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§1!f§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§3!;§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§%x§.x = this.§6!6§;
         this.§%x§.y = this.§29§;
         this.§%x§.scale = §7!L§;
         this.§5!E§ = §7!L§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §5M§)
         {
            return true;
         }
         if(this.mCurrentAction == §3!;§)
         {
            return true;
         }
         return false;
      }
      
      public function §]<§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §1!f§)
         {
            return true;
         }
         return false;
      }
      
      public function §#!%§(param1:§^D§) : void
      {
         this.§!H§ = param1;
         if(this.§!H§ != null)
         {
            this.§5!Z§ = new §^D§();
            this.§5!Z§.x = this.§6!6§;
            this.§5!Z§.y = this.§29§;
            this.§5!Z§.scale = §7!L§;
         }
         else
         {
            this.§6!6§ = this.§5!Z§.x;
            this.§29§ = this.§5!Z§.y;
            §7!L§ = this.§5!Z§.scale;
            this.§5!Z§ = null;
         }
      }
      
      protected function §2!+§() : void
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
         var _loc3_:Number = this.§ s§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§[!7§,Math.min(this.§8^§,_loc3_));
         if(_loc3_ != this.§ s§)
         {
            this.§ s§ = _loc3_;
            this.§2!+§();
         }
      }
      
      public function §!!6§() : Number
      {
         return (this.manualScale - this.§[!7§) / (this.§8^§ - this.§[!7§);
      }
      
      public function §@!§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§8^§ - this.§[!7§) + this.§[!7§;
      }
      
      public function §?!%§() : void
      {
         this.§ s§ = Math.max(this.§ s§ - 0.5,0.5);
      }
      
      public function §6&§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§ s§;
         _loc1_ += " mXcenterB2: " + this.§6!6§;
         _loc1_ += " mYcenterB2: " + this.§29§;
         _loc1_ += " mXcenterB2target: " + this.§ s§;
         _loc1_ += "\n mYcenterB2target: " + this.§ s§;
         _loc1_ += " mXcenterB2previous: " + this.§ s§;
         _loc1_ += " mYcenterB2previous: " + this.§ s§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§ s§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§ s§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§ s§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§ s§;
         _loc1_ += " mTargetScale: " + this.§ s§;
         _loc1_ += " mTargetScalePrevious: " + this.§ s§;
         _loc1_ += " mCastleCameraX: " + this.§ s§;
         _loc1_ += "\n mCastleCameraY: " + this.§ s§;
         _loc1_ += " mCastleCameraScale: " + this.§ s§;
         _loc1_ += " mBirdCameraX: " + this.§ s§;
         _loc1_ += " mBirdCameraY: " + this.§ s§;
         _loc1_ += " mBirdCameraScale: " + this.§ s§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§ s§;
         _loc1_ += " mScreenTopScroll: " + this.§ s§;
         _loc1_ += " mDragging: " + this.§ s§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§ s§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§ s§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§ s§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§ s§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§ s§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§ s§;
         _loc1_ += " mDraggingTimer: " + this.§ s§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§ s§;
         _loc1_ += " mCameraBorderRight: " + this.§ s§;
         _loc1_ += " mCameraBorderSky: " + this.§ s§;
         _loc1_ += " mCameraBorderGround: " + this.§ s§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§ s§ + "\n ");
      }
   }
}
