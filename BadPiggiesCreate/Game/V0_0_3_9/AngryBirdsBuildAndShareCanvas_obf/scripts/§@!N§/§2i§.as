package §@!N§
{
   import §3!S§.§%s§;
   import §6!&§.§0!b§;
   import §6!&§.§2!O§;
   import §=b§.§-!K§;
   import §=b§.§3!_§;
   import §@!;§.§&F§;
   import §]r§.§9!R§;
   
   public class §2i§
   {
      
      public static const §#v§:Number = 1.25;
      
      public static const §]Z§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = §%s§.§"<§ * §-!K§.§"!C§;
      
      public static const SCREEN_HEIGHT_B2:Number = §%s§.§9%§ * §-!K§.§"!C§;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §7"%§:int = 1500;
      
      public static const §4!"§:int = 10;
      
      public static const §1S§:int = 15;
      
      public static const §;!$§:int = 300;
      
      public static const §&o§:int = 1000;
      
      public static const §]&§:int = 10000;
      
      public static const §+"#§:int = §]&§ / 50;
      
      public static const §[#§:int = 0;
      
      public static const §<!t§:int = 1;
      
      public static const §;!S§:int = 2;
      
      public static const §`E§:int = 3;
      
      public static const §7e§:int = 4;
      
      public static const §9!W§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §6!`§:Number;
      
      public static var §0c§:Number;
      
      public static var §?K§:Number;
      
      public static const §%X§:Number = 2000;
       
      
      private var §!""§:Number = 1.0;
      
      private var §"!<§:Number = 0.2;
      
      protected var §4?§:Number;
      
      protected var §+!r§:Number;
      
      protected var §#!r§:Number;
      
      public var §;!x§:§-!K§;
      
      public var §[>§:Number;
      
      public var §[B§:Number;
      
      private var §#0§:§?<§;
      
      private var §3!1§:§?<§;
      
      public var § Q§:Number;
      
      public var §<!A§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@!Y§:Number;
      
      public var §]!p§:Number;
      
      public var §>[§:Number;
      
      public var §8g§:Number;
      
      private var §=!l§:Number;
      
      private var §9C§:§=k§;
      
      private var §!"3§:§=k§;
      
      protected var §?!t§:Number = 0;
      
      protected var §?!T§:Number = 0;
      
      protected var §2!'§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §0^§:Number = 0;
      
      public var §#"-§:Boolean = true;
      
      public var §&]§:Number = 0;
      
      public var §[!a§:Number = 0;
      
      public var §#X§:Number = 0;
      
      public var §%b§:Number = 0;
      
      public var §5!g§:Number = 0;
      
      public var §?!_§:Number = 0;
      
      public var §5!X§:Number = 0;
      
      public var §^"-§:Number = 0;
      
      public var §8!-§:Number = 0;
      
      private var §'!a§:§=k§;
      
      public var §-a§:Number = 0;
      
      private var §&!X§:Number = 0;
      
      private var §9S§:Number = 0;
      
      private var §1!m§:§2!O§ = null;
      
      private var §#7§:§2!O§ = null;
      
      public function §2i§(param1:§-!K§, param2:§0!b§, param3:Number = 1.0)
      {
         this.§'!a§ = new §=k§(0,0,1,false);
         super();
         this.§+!r§ = 0;
         this.§#!r§ = 0;
         this.§;!x§ = param1;
         §2i§.§6!`§ = 1;
         this.§!""§ = Math.max(1,Math.min(2,param3));
         this.§4?§ = this.§!""§;
         this.§]!6§(param2);
         if(this.§#0§ && this.§3!1§)
         {
            this.loadCameraBorders();
            this.§?!t§ = this.§#0§.x - this.§3!1§.x;
            this.§?!T§ = this.§#0§.y - this.§3!1§.y;
            this.§2!'§ = this.§#0§.scale - this.§3!1§.scale;
            this.§+!r§ = this.§#0§.x;
            this.§#!r§ = this.§#0§.y;
            §6!`§ = this.§#0§.scale * this.§4?§;
         }
         this.mCurrentCameraSliderLocation = §]&§;
         this.§#"-§ = true;
         this.§0^§ = §]&§ / 500;
      }
      
      private static function §>!m§() : Number
      {
         var _loc1_:Number = §%s§.§,!=§ / §%s§.§-=§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §0Z§() : Number
      {
         return §6!`§ * §>!m§();
      }
      
      public function get §4"8§() : Number
      {
         return this.§4?§;
      }
      
      public function set §4"8§(param1:Number) : void
      {
         this.§4?§ = param1;
      }
      
      public function get §0!i§() : Number
      {
         return this.§=!l§;
      }
      
      public function §+8§() : Number
      {
         return SCREEN_WIDTH_B2 / (this.§]!p§ - this.§@!Y§);
      }
      
      public function get §-""§() : Number
      {
         return this.§!""§;
      }
      
      public function get §'!l§() : Number
      {
         return this.§"!<§;
      }
      
      public function § !F§(param1:Number) : void
      {
         this.§4?§ = param1;
         this.§`5§();
         this.§2!g§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §9!W§)
         {
            return;
         }
         this.goToCastleView();
         this.§&]§ = 2000;
         this.§&!T§();
         this.§6!M§();
         this.§ !]§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§+!r§ = this.§3!1§.x;
         this.§#!r§ = this.§3!1§.y;
         this.§#"-§ = false;
         this.§0^§ = §]&§ / 160000 * param1;
         this.§+!,§(§9!W§);
      }
      
      public function loadCameraBorders() : void
      {
         this.§@!Y§ = this.§3!1§.x - SCREEN_WIDTH_B2 / this.§3!1§.scale / 2;
         this.§]!p§ = this.§#0§.x + SCREEN_WIDTH_B2 / this.§#0§.scale / 2;
         this.§>[§ = this.§;!x§.borders.mBorderGround_B2 - 20 * §-!K§.§@!B§ * §-!K§.§"!C§;
         this.§8g§ = this.§;!x§.borders.mBorderGround_B2 + 4;
         var _loc1_:Number = SCREEN_WIDTH_B2 / (this.§]!p§ - this.§@!Y§);
         this.§=!l§ = this.§8g§ - SCREEN_HEIGHT_B2 * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§;!x§ = null;
      }
      
      public function §]!6§(param1:§0!b§) : void
      {
         var _loc3_:§2!O§ = null;
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
         while(_loc2_ < param1.§?!%§)
         {
            _loc3_ = param1.§8!x§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§<"4§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = SCREEN_HEIGHT_B2 / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = SCREEN_WIDTH_B2 / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == CAMERA_ID_SLINGSHOT)
            {
               this.§3!1§ = new §?<§(_loc9_,_loc10_,_loc13_,true);
               this.§!"3§ = new §=k§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.§#0§ = new §?<§(_loc9_,_loc10_,_loc13_,false);
               this.§9C§ = new §=k§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §&F§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function writeCameraInformation(param1:§0!b§) : void
      {
         var _loc2_:§2!O§ = new §2!O§();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.§3!1§.x;
         _loc2_.y = this.§3!1§.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.§3!1§.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.§3!1§.scale / 2;
         _loc2_.left = this.§3!1§.x - _loc3_;
         _loc2_.right = this.§3!1§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§2!O§;
         (_loc5_ = new §2!O§()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.§#0§.x;
         _loc5_.y = this.§#0§.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.§#0§.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.§#0§.scale / 2;
         _loc5_.left = this.§#0§.x - _loc6_;
         _loc5_.right = this.§#0§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§-!o§();
         param1.§%5§(_loc2_);
         param1.§%5§(_loc5_);
      }
      
      public function §<"4§(param1:§2!O§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §%s§.§"<§ * 0.5 / _loc2_ * §-!K§.§"!C§;
         var _loc4_:Number = param1.y - §%s§.§9%§ * 0.5 / _loc2_ * §-!K§.§"!C§;
         var _loc5_:Number = _loc3_ + §%s§.§"<§ / _loc2_ * §-!K§.§"!C§;
         var _loc6_:Number = _loc4_ + §%s§.§9%§ / _loc2_ * §-!K§.§"!C§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §`H§(param1:§?<§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§0^§;
         if(_loc3_ >= §]&§)
         {
            _loc3_ = §]&§;
            this.§+!,§(§[#§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§+!,§(§[#§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §7g§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§0^§;
         var _loc4_:Number = -§]&§ * 0.7;
         if(_loc2_ >= §]&§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]&§;
            }
            this.§0^§ = -this.§0^§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]$§(param1:Number) : void
      {
         if(this.mCurrentAction == §9!W§)
         {
            this.§7g§(param1);
         }
         else if(this.mCurrentAction == §<!t§)
         {
            this.§`H§(this.§#0§,param1);
         }
         else if(this.mCurrentAction == §;!S§)
         {
            this.§`H§(this.§3!1§,-param1);
         }
         else if(this.mCurrentAction == §`E§)
         {
            this.§#"-§ = true;
         }
         else if(this.mCurrentAction == §7e§)
         {
            this.§^!J§(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         if(this.§1!m§)
         {
            this.§+!r§ = this.§1!m§.x;
            this.§#!r§ = this.§1!m§.y;
            §6!`§ = SCREEN_WIDTH_B2 / (this.§1!m§.right - this.§1!m§.left);
         }
         else
         {
            this.§`5§();
            this.§]$§(param1);
            this.§7@§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§&!T§();
         this.§6!M§();
         this.§ !]§();
      }
      
      private function §1!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!"3§.scale + (this.§9C§.scale - this.§!"3§.scale) * param1;
         var _loc4_:Number = this.§!"3§.x + (this.§9C§.x - this.§!"3§.x) * param1;
         var _loc5_:Number = this.§!"3§.y + (this.§9C§.y - this.§!"3§.y) * param1;
         this.§'!a§.x -= (this.§'!a§.x - _loc4_) * param2;
         this.§'!a§.y -= (this.§'!a§.y - _loc5_) * param2;
         this.§'!a§.scale -= (this.§'!a§.scale - _loc3_) * param2;
      }
      
      protected function §2!g§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§?!t§ != 0)
         {
            if(!this.§#"-§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]&§;
            this.§1!N§(_loc3_,param2);
            this.§+!r§ = this.§'!a§.x;
            this.§#!r§ = this.§'!a§.y;
            §6!`§ = this.§'!a§.scale;
         }
      }
      
      public function §7@§(param1:Number, param2:Number) : void
      {
         var _loc5_:§9!R§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]&§)
         {
            this.§#"-§ = true;
         }
         if(this.mCurrentAction == §`E§)
         {
            if(!this.§;!x§.activeObject)
            {
               this.§+!,§(§<!t§);
               this.§8!-§ = §&o§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§;!x§.activeObject).getBody().GetPosition().x + (!!_loc5_.§ $§ ? _loc5_.§ $§ * §-!K§.§"!C§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§"%§ ? _loc5_.§"%§ * §-!K§.§"!C§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§?!t§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§?!t§ * §]&§;
               }
               if(param1 >= §]&§)
               {
                  param1 = §]&§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]&§;
               this.§1!N§(_loc9_,_loc4_);
               _loc10_ = this.§'!a§.x - SCREEN_WIDTH_B2 * 0.5 / this.§'!a§.scale;
               _loc11_ = this.§'!a§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§'!a§.scale;
               _loc12_ = this.§'!a§.x + SCREEN_WIDTH_B2 * 0.5 / this.§'!a§.scale;
               _loc13_ = this.§'!a§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§'!a§.scale;
               _loc14_ = 150 * §-!K§.§"!C§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§@!Y§,_loc15_);
               _loc17_ = Math.min(this.§]!p§,_loc17_);
               _loc19_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§'!a§.scale)
               {
                  _loc21_ = this.§'!a§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + SCREEN_WIDTH_B2 * 0.5 / _loc21_ > this.§]!p§)
               {
                  _loc15_ = (_loc17_ = this.§]!p§) - SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§@!Y§)
                  {
                     _loc15_ = this.§@!Y§;
                  }
               }
               if(_loc22_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§@!Y§)
               {
                  _loc17_ = (_loc15_ = this.§@!Y§) + SCREEN_WIDTH_B2 / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§]!p§)
                  {
                     _loc17_ = this.§]!p§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(SCREEN_WIDTH_B2 / (_loc17_ - _loc15_));
               }
               if(_loc23_ - SCREEN_WIDTH_B2 * 0.5 / _loc21_ < this.§>[§)
               {
                  _loc23_ = this.§>[§ + SCREEN_WIDTH_B2 * 0.5 / _loc21_;
               }
               this.§+!r§ -= (this.§+!r§ - _loc22_) * _loc4_;
               this.§-a§ -= (this.§-a§ - _loc21_) * _loc4_;
               §6!`§ = this.§-a§;
               this.§#!r§ -= (this.§#!r§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§]!p§ || _loc6_ <= this.§@!Y§)
               {
                  this.§'!a§.scale = §6!`§;
                  this.§'!a§.x = this.§+!r§;
                  this.§'!a§.y = this.§#!r§;
               }
            }
         }
         else
         {
            this.§2!g§(param1,_loc4_);
         }
      }
      
      public function § !=§(param1:Number, param2:Number) : void
      {
         this.§&!X§ = param1;
         this.§9S§ = param2;
      }
      
      private function §'!&§(param1:§=k§, param2:§?<§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §]Z§ + (param2.scale - §]Z§) * this.§4?§ * §2i§.§>!m§();
         if(SCREEN_WIDTH_B2 / param1.scale > this.§]!p§ - this.§@!Y§)
         {
            _loc3_ = SCREEN_WIDTH_B2 / (this.§]!p§ - this.§@!Y§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §"#§(param1:§=k§, param2:§?<§) : Boolean
      {
         var _loc3_:Boolean = this.§'!&§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale) < this.§@!Y§ && param1.§]"5§)
         {
            param1.x += this.§@!Y§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§]!p§ && !param1.§]"5§)
         {
            param1.x += this.§]!p§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §'A§(param1:§=k§, param2:§?<§) : Number
      {
         return (param1.scale - §]Z§) / (§2i§.§>!m§() * (param2.scale - §]Z§));
      }
      
      protected function §`5§() : void
      {
         this.§"#§(this.§!"3§,this.§3!1§);
         var _loc1_:Number = this.§'A§(this.§!"3§,this.§3!1§);
         this.§"#§(this.§9C§,this.§#0§);
         var _loc2_:Number = this.§'A§(this.§9C§,this.§#0§);
         this.§4?§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §&!T§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§;!x§.sprite)
         {
            _loc1_ = §%s§.§%!^§() / §%s§.§,!=§ - §%s§.§9%§ >> 1;
            §0c§ = this.§;!x§.sprite.x = §-!K§.§"C§ * ((1 - §2i§.§0Z§) / 2);
            §?K§ = this.§;!x§.sprite.y = _loc1_ + §-!K§.§@!B§ * (1 - §2i§.§0Z§) * §3!_§.§>m§;
         }
      }
      
      public function § !]§() : void
      {
         if(this.§;!x§.sprite)
         {
            this.§;!x§.sprite.scaleX = §0Z§;
            this.§;!x§.sprite.scaleY = §0Z§;
         }
      }
      
      public function §6!M§() : void
      {
         var _loc1_:Number = this.§+!r§ / §-!K§.§"!C§ + this.§&!X§;
         var _loc2_:Number = this.§#!r§ / §-!K§.§"!C§ + this.§9S§;
         this.§ Q§ = _loc1_ - §-!K§.§"C§ / 2 * §%s§.§,!=§ / §%s§.§+N§;
         this.§<!A§ = _loc2_ - §-!K§.§@!B§ / 2 + §3!_§.§9I§;
         if(this.§;!x§.background)
         {
            this.§;!x§.background.§,"#§(this.§ Q§,this.§<!A§);
         }
         if(this.§;!x§.objects)
         {
            this.§;!x§.objects.§,"#§(this.§ Q§,this.§<!A§);
         }
         if(this.§;!x§.§^J§)
         {
            this.§;!x§.§^J§.§,"#§(this.§ Q§,this.§<!A§,§0Z§);
         }
         if(this.§;!x§.slingshot)
         {
            this.§;!x§.slingshot.§,"#§(this.§ Q§,this.§<!A§);
         }
         if(this.§;!x§.particles)
         {
            this.§;!x§.particles.§,"#§(this.§ Q§,this.§<!A§);
         }
      }
      
      protected function §"!U§() : void
      {
         this.§+!,§(§7e§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§8!-§ = -1;
         this.§"!U§();
         this.§5!g§ = this.§5!X§ = this.§#X§ = param1;
         this.§?!_§ = this.§^"-§ = this.§%b§ = param2;
         this.§[!a§ = 0;
         this.§'!a§.x = this.§+!r§;
         this.§'!a§.y = this.§#!r§;
         this.§'!a§.scale = §6!`§;
         this.§-a§ = §6!`§;
         if(Math.abs(this.§9C§.x - this.§!"3§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§+!r§ - this.§!"3§.x) / (this.§9C§.x - this.§!"3§.x) * §]&§;
         }
         this.mDragging = true;
      }
      
      public function §^!J§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[!a§ += param1;
         var _loc3_:Number = this.§5!g§ - this.§5!X§;
         if(this.§?!t§ > 0)
         {
            _loc2_ -= _loc3_ * §-!K§.§"!C§ / §0Z§ / this.§?!t§ * §]&§;
            this.§#"-§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§#"-§ = true;
            }
            if(_loc2_ > §]&§)
            {
               _loc2_ += (§]&§ - _loc2_) * 0.3;
               this.§#"-§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§5!X§ = this.§5!g§;
      }
      
      protected function §9!d§() : Boolean
      {
         return this.mCurrentAction == §7e§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§5!g§ = param1;
            this.§?!_§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7e§)
         {
            this.§+!,§(§[#§);
            if(param1 > 0)
            {
               this.§5!g§ = param1;
            }
            _loc3_ = Math.abs(this.§5!g§ - this.§#X§);
            if(this.§[!a§ < §7"%§ && _loc3_ >= §4!"§ && _loc3_ >= §1S§ * this.§[!a§ / 1000)
            {
               if(this.§5!g§ < this.§#X§)
               {
                  this.§+!,§(§<!t§);
               }
               else
               {
                  this.§+!,§(§;!S§);
               }
               this.§0^§ = _loc3_ / this.§[!a§ * 10;
               this.§#"-§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§#"-§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]&§)
               {
                  this.§#"-§ = true;
               }
            }
            else if(this.§[!a§ < §;!$§)
            {
               this.§3!;§();
               this.§0^§ = §]&§ / (§]&§ / 500);
               this.§#"-§ = true;
            }
            else
            {
               this.§^!J§(0);
               this.§2!S§(0);
               this.§0^§ = §]&§ / (§]&§ / 500);
               this.§#"-§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §3!;§() : void
      {
         if(this.mCurrentAction == §<!t§)
         {
            this.§+!,§(§;!S§);
         }
         else if(this.mCurrentAction == §;!S§)
         {
            this.§+!,§(§<!t§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]&§ / 2)
         {
            this.§+!,§(§;!S§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]&§ / 2)
         {
            this.§+!,§(§<!t§);
         }
      }
      
      public function §2!S§(param1:int) : void
      {
         this.§8!-§ = param1;
         if(this.mCurrentCameraSliderLocation < §]&§ / 2)
         {
            this.§+!,§(§;!S§);
         }
         else
         {
            this.§+!,§(§<!t§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§+!,§(§;!S§);
      }
      
      public function goToCastleView() : void
      {
         this.§+!,§(§<!t§);
      }
      
      public function §+!,§(param1:int) : void
      {
         this.§'!a§.x = this.§+!r§;
         this.§'!a§.y = this.§#!r§;
         this.§'!a§.scale = §6!`§;
         this.§-a§ = §6!`§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]&§)
         {
            return true;
         }
         if(this.mCurrentAction == §<!t§)
         {
            return true;
         }
         return false;
      }
      
      public function §2"6§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §;!S§)
         {
            return true;
         }
         return false;
      }
      
      public function §"!'§(param1:§2!O§) : void
      {
         this.§1!m§ = param1;
         if(this.§1!m§ != null)
         {
            this.§#7§ = new §2!O§();
            this.§#7§.x = this.§+!r§;
            this.§#7§.y = this.§#!r§;
            this.§#7§.scale = §6!`§;
         }
         else
         {
            this.§+!r§ = this.§#7§.x;
            this.§#!r§ = this.§#7§.y;
            §6!`§ = this.§#7§.scale;
            this.§#7§ = null;
         }
      }
      
      protected function §&!g§() : void
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
         var _loc3_:Number = this.§4?§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§'!l§,Math.min(this.§-""§,_loc3_));
         if(_loc3_ != this.§4?§)
         {
            this.§4?§ = _loc3_;
            this.§&!g§();
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.§4"8§ - this.§'!l§) / (this.§-""§ - this.§'!l§);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§4"8§ = Math.min(Math.max(param1,0),1) * (this.§-""§ - this.§'!l§) + this.§'!l§;
      }
      
      public function §0w§() : void
      {
         this.§4?§ = Math.max(this.§4?§ - 0.5,0.5);
      }
      
      public function §<1§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§4?§;
         _loc1_ += " mXcenterB2: " + this.§+!r§;
         _loc1_ += " mYcenterB2: " + this.§#!r§;
         _loc1_ += " mXcenterB2target: " + this.§4?§;
         _loc1_ += "\n mYcenterB2target: " + this.§4?§;
         _loc1_ += " mXcenterB2previous: " + this.§4?§;
         _loc1_ += " mYcenterB2previous: " + this.§4?§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§4?§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§4?§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§4?§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§4?§;
         _loc1_ += " mTargetScale: " + this.§4?§;
         _loc1_ += " mTargetScalePrevious: " + this.§4?§;
         _loc1_ += " mCastleCameraX: " + this.§4?§;
         _loc1_ += "\n mCastleCameraY: " + this.§4?§;
         _loc1_ += " mCastleCameraScale: " + this.§4?§;
         _loc1_ += " mBirdCameraX: " + this.§4?§;
         _loc1_ += " mBirdCameraY: " + this.§4?§;
         _loc1_ += " mBirdCameraScale: " + this.§4?§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§4?§;
         _loc1_ += " mScreenTopScroll: " + this.§4?§;
         _loc1_ += " mDragging: " + this.§4?§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§4?§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§4?§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§4?§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§4?§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§4?§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§4?§;
         _loc1_ += " mDraggingTimer: " + this.§4?§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§4?§;
         _loc1_ += " mCameraBorderRight: " + this.§4?§;
         _loc1_ += " mCameraBorderSky: " + this.§4?§;
         _loc1_ += " mCameraBorderGround: " + this.§4?§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§4?§ + "\n ");
      }
   }
}
