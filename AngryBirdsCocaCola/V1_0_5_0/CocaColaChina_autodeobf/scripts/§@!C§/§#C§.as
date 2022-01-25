package §@!C§
{
   import §#B§.§ ]§;
   import §2!G§.§1E§;
   import §2!G§.§2!V§;
   import §3U§.§ !M§;
   import §3U§.§2!]§;
   import §;A§.§7!K§;
   import §<!!§.§-"§;
   
   public class §#C§
   {
      
      public static const §,!Q§:Number = 1.25;
      
      public static const § !`§:Number = 0.15;
      
      public static const §&!?§:Number = §7!K§.§'[§ * §2!V§.§-!3§;
      
      public static const §"!Y§:Number = §7!K§.§+!U§ * §2!V§.§-!3§;
      
      public static const §<4§:Number = 0.1;
      
      public static const §`!S§:int = 1500;
      
      public static const §2! §:int = 10;
      
      public static const §=K§:int = 15;
      
      public static const §'b§:int = 300;
      
      public static const § !c§:int = 1000;
      
      public static const §3!1§:int = 10000;
      
      public static const §+!G§:int = §3!1§ / 50;
      
      public static const §!!8§:int = 0;
      
      public static const §@n§:int = 1;
      
      public static const §-y§:int = 2;
      
      public static const §4W§:int = 3;
      
      public static const §%4§:int = 4;
      
      public static const §9!D§:int = 5;
      
      public static const §4!^§:String = "CASTLE";
      
      public static const §@!$§:String = "SLINGSHOT";
      
      protected static var §2![§:Number;
      
      public static var §[x§:Number;
      
      public static var §^,§:Number;
      
      public static const §9!H§:Number = 2000;
       
      
      private var §?Q§:Number = 1.0;
      
      private var §>!a§:Number = 0.2;
      
      protected var §2o§:Number;
      
      protected var §-!a§:Number;
      
      protected var §'?§:Number;
      
      public var mLevelMain:§2!V§;
      
      public var §;!0§:Number;
      
      public var §%!0§:Number;
      
      private var §94§:§>i§;
      
      private var §"2§:§>i§;
      
      public var §8%§:Number;
      
      public var §`!'§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §#D§:Number;
      
      public var §^R§:Number;
      
      public var §&Y§:Number;
      
      public var §%!G§:Number;
      
      private var §=!5§:Number;
      
      private var §8!!§:§#!_§;
      
      private var §?y§:§#!_§;
      
      protected var §true §:Number = 0;
      
      protected var §^!1§:Number = 0;
      
      protected var §4T§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §9!U§:Number = 0;
      
      public var §,M§:Boolean = true;
      
      public var §+!%§:Number = 0;
      
      public var §;!T§:Number = 0;
      
      public var §@C§:Number = 0;
      
      public var §0R§:Number = 0;
      
      public var §9"§:Number = 0;
      
      public var §^s§:Number = 0;
      
      public var §#w§:Number = 0;
      
      public var §>!1§:Number = 0;
      
      public var §<w§:Number = 0;
      
      private var §[1§:§#!_§;
      
      public var §2!R§:Number = 0;
      
      private var §8!?§:Number = 0;
      
      private var §@t§:Number = 0;
      
      private var §]!`§:§2!]§ = null;
      
      private var §@!D§:§2!]§ = null;
      
      public function §#C§(param1:§2!V§, param2:§ !M§, param3:Number = 1.0)
      {
         this.§[1§ = new §#!_§(0,0,1,false);
         super();
         this.§-!a§ = 0;
         this.§'?§ = 0;
         this.mLevelMain = param1;
         §#C§.§2![§ = 1;
         this.§?Q§ = Math.max(1,Math.min(2,param3));
         this.§2o§ = this.§?Q§;
         this.§'V§(param2);
         if(this.§94§ && this.§"2§)
         {
            this.§@_§();
            this.§true § = this.§94§.x - this.§"2§.x;
            this.§^!1§ = this.§94§.y - this.§"2§.y;
            this.§4T§ = this.§94§.scale - this.§"2§.scale;
            this.§-!a§ = this.§94§.x;
            this.§'?§ = this.§94§.y;
            §2![§ = this.§94§.scale * this.§2o§;
         }
         this.mCurrentCameraSliderLocation = §3!1§;
         this.§,M§ = true;
         this.§9!U§ = §3!1§ / 500;
      }
      
      private static function §^O§() : Number
      {
         var _loc1_:Number = §7!K§.§=x§ / §7!K§.§7Y§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §#`§() : Number
      {
         return §2![§ * §^O§();
      }
      
      public function get manualScale() : Number
      {
         return this.§2o§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§2o§ = param1;
      }
      
      public function get §#c§() : Number
      {
         return this.§=!5§;
      }
      
      public function §>!F§() : Number
      {
         return §&!?§ / (this.§^R§ - this.§#D§);
      }
      
      public function get §?!>§() : Number
      {
         return this.§?Q§;
      }
      
      public function get §07§() : Number
      {
         return this.§>!a§;
      }
      
      public function §!1§(param1:Number) : void
      {
         this.§2o§ = param1;
         this.§@5§();
         this.§<!K§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §9!D§)
         {
            return;
         }
         this.goToCastleView();
         this.§+!%§ = 2000;
         this.§4!?§();
         this.§=! §();
         this.§%!X§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§-!a§ = this.§"2§.x;
         this.§'?§ = this.§"2§.y;
         this.§,M§ = false;
         this.§9!U§ = §3!1§ / 160000 * param1;
         this.§;!3§(§9!D§);
      }
      
      public function §@_§() : void
      {
         this.§#D§ = this.§"2§.x - §&!?§ / this.§"2§.scale / 2;
         this.§^R§ = this.§94§.x + §&!?§ / this.§94§.scale / 2;
         this.§&Y§ = this.mLevelMain.§0D§.§6![§ - 20 * §2!V§.§+5§ * §2!V§.§-!3§;
         this.§%!G§ = this.mLevelMain.§0D§.§6![§ + 4;
         var _loc1_:Number = §&!?§ / (this.§^R§ - this.§#D§);
         this.§=!5§ = this.§%!G§ - §"!Y§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §'V§(param1:§ !M§) : void
      {
         var _loc3_:§2!]§ = null;
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
         while(_loc2_ < param1.§^M§)
         {
            _loc3_ = param1.§<k§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§7!N§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §"!Y§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §&!?§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §@!$§)
            {
               this.§"2§ = new §>i§(_loc9_,_loc10_,_loc13_,true);
               this.§?y§ = new §#!_§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §4!^§)
            {
               this.§94§ = new §>i§(_loc9_,_loc10_,_loc13_,false);
               this.§8!!§ = new §#!_§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §-"§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §;#§(param1:§ !M§) : void
      {
         var _loc2_:§2!]§ = new §2!]§();
         _loc2_.id = §@!$§;
         _loc2_.x = this.§"2§.x;
         _loc2_.y = this.§"2§.y;
         var _loc3_:Number = §&!?§ / this.§"2§.scale / 2;
         var _loc4_:Number = §"!Y§ / this.§"2§.scale / 2;
         _loc2_.left = this.§"2§.x - _loc3_;
         _loc2_.right = this.§"2§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§2!]§;
         (_loc5_ = new §2!]§()).id = §4!^§;
         _loc5_.x = this.§94§.x;
         _loc5_.y = this.§94§.y;
         var _loc6_:Number = §&!?§ / this.§94§.scale / 2;
         var _loc7_:Number = §"!Y§ / this.§94§.scale / 2;
         _loc5_.left = this.§94§.x - _loc6_;
         _loc5_.right = this.§94§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§#+§();
         param1.§,J§(_loc2_);
         param1.§,J§(_loc5_);
      }
      
      public function §7!N§(param1:§2!]§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §7!K§.§'[§ * 0.5 / _loc2_ * §2!V§.§-!3§;
         var _loc4_:Number = param1.y - §7!K§.§+!U§ * 0.5 / _loc2_ * §2!V§.§-!3§;
         var _loc5_:Number = _loc3_ + §7!K§.§'[§ / _loc2_ * §2!V§.§-!3§;
         var _loc6_:Number = _loc4_ + §7!K§.§+!U§ / _loc2_ * §2!V§.§-!3§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §@!^§(param1:§>i§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§9!U§;
         if(_loc3_ >= §3!1§)
         {
            _loc3_ = §3!1§;
            this.§;!3§(§!!8§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§;!3§(§!!8§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §7p§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§9!U§;
         var _loc4_:Number = -§3!1§ * 0.7;
         if(_loc2_ >= §3!1§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §3!1§;
            }
            this.§9!U§ = -this.§9!U§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §,!=§(param1:Number) : void
      {
         if(this.mCurrentAction == §9!D§)
         {
            this.§7p§(param1);
         }
         else if(this.mCurrentAction == §@n§)
         {
            this.§@!^§(this.§94§,param1);
         }
         else if(this.mCurrentAction == §-y§)
         {
            this.§@!^§(this.§"2§,-param1);
         }
         else if(this.mCurrentAction == §4W§)
         {
            this.§,M§ = true;
         }
         else if(this.mCurrentAction == §%4§)
         {
            this.§'p§(param1);
         }
      }
      
      public function §7!S§(param1:Number) : void
      {
         if(this.§]!`§)
         {
            this.§-!a§ = this.§]!`§.x;
            this.§'?§ = this.§]!`§.y;
            §2![§ = §&!?§ / (this.§]!`§.right - this.§]!`§.left);
         }
         else
         {
            this.§@5§();
            this.§,!=§(param1);
            this.§"Q§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§4!?§();
         this.§=! §();
         this.§%!X§();
      }
      
      private function §4! §(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?y§.scale + (this.§8!!§.scale - this.§?y§.scale) * param1;
         var _loc4_:Number = this.§?y§.x + (this.§8!!§.x - this.§?y§.x) * param1;
         var _loc5_:Number = this.§?y§.y + (this.§8!!§.y - this.§?y§.y) * param1;
         this.§[1§.x -= (this.§[1§.x - _loc4_) * param2;
         this.§[1§.y -= (this.§[1§.y - _loc5_) * param2;
         this.§[1§.scale -= (this.§[1§.scale - _loc3_) * param2;
      }
      
      protected function §<!K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§true § != 0)
         {
            if(!this.§,M§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §3!1§;
            this.§4! §(_loc3_,param2);
            this.§-!a§ = this.§[1§.x;
            this.§'?§ = this.§[1§.y;
            §2![§ = this.§[1§.scale;
         }
      }
      
      public function §"Q§(param1:Number, param2:Number) : void
      {
         var _loc5_:§ ]§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §3!1§)
         {
            this.§,M§ = true;
         }
         if(this.mCurrentAction == §4W§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.§;!3§(§@n§);
               this.§<w§ = § !c§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§4g§().GetPosition().x + (!!_loc5_.§'!J§ ? _loc5_.§'!J§ * §2!V§.§-!3§ : 0);
               _loc7_ = _loc5_.§4g§().GetPosition().y + (!!_loc5_.§`!V§ ? _loc5_.§`!V§ * §2!V§.§-!3§ : 0);
               if((_loc8_ = _loc5_.§4g§().GetLinearVelocity().x) > 0 && this.§true § != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§true § * §3!1§;
               }
               if(param1 >= §3!1§)
               {
                  param1 = §3!1§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §3!1§;
               this.§4! §(_loc9_,_loc4_);
               _loc10_ = this.§[1§.x - §&!?§ * 0.5 / this.§[1§.scale;
               _loc11_ = this.§[1§.y - §"!Y§ * 0.5 / this.§[1§.scale;
               _loc12_ = this.§[1§.x + §&!?§ * 0.5 / this.§[1§.scale;
               _loc13_ = this.§[1§.y + §"!Y§ * 0.5 / this.§[1§.scale;
               _loc14_ = 150 * §2!V§.§-!3§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§#D§,_loc15_);
               _loc17_ = Math.min(this.§^R§,_loc17_);
               _loc19_ = Math.abs(§&!?§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§"!Y§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§[1§.scale)
               {
                  _loc21_ = this.§[1§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §&!?§ * 0.5 / _loc21_ > this.§^R§)
               {
                  _loc15_ = (_loc17_ = this.§^R§) - §&!?§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§#D§)
                  {
                     _loc15_ = this.§#D§;
                  }
               }
               if(_loc22_ - §&!?§ * 0.5 / _loc21_ < this.§#D§)
               {
                  _loc17_ = (_loc15_ = this.§#D§) + §&!?§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§^R§)
                  {
                     _loc17_ = this.§^R§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§&!?§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §&!?§ * 0.5 / _loc21_ < this.§&Y§)
               {
                  _loc23_ = this.§&Y§ + §&!?§ * 0.5 / _loc21_;
               }
               this.§-!a§ -= (this.§-!a§ - _loc22_) * _loc4_;
               this.§2!R§ -= (this.§2!R§ - _loc21_) * _loc4_;
               §2![§ = this.§2!R§;
               this.§'?§ -= (this.§'?§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§^R§ || _loc6_ <= this.§#D§)
               {
                  this.§[1§.scale = §2![§;
                  this.§[1§.x = this.§-!a§;
                  this.§[1§.y = this.§'?§;
               }
            }
         }
         else
         {
            this.§<!K§(param1,_loc4_);
         }
      }
      
      public function §0!5§(param1:Number, param2:Number) : void
      {
         this.§8!?§ = param1;
         this.§@t§ = param2;
      }
      
      private function §<!L§(param1:§#!_§, param2:§>i§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = § !`§ + (param2.scale - § !`§) * this.§2o§ * §#C§.§^O§();
         if(§&!?§ / param1.scale > this.§^R§ - this.§#D§)
         {
            _loc3_ = §&!?§ / (this.§^R§ - this.§#D§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §0>§(param1:§#!_§, param2:§>i§) : Boolean
      {
         var _loc3_:Boolean = this.§<!L§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §"!Y§ * 0.5 / param1.scale;
         var _loc5_:Number = §"!Y§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §&!?§ * 0.5 / param1.scale) < this.§#D§ && param1.§?+§)
         {
            param1.x += this.§#D§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §&!?§ * 0.5 / param1.scale) > this.§^R§ && !param1.§?+§)
         {
            param1.x += this.§^R§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §%>§(param1:§#!_§, param2:§>i§) : Number
      {
         return (param1.scale - § !`§) / (§#C§.§^O§() * (param2.scale - § !`§));
      }
      
      protected function §@5§() : void
      {
         this.§0>§(this.§?y§,this.§"2§);
         var _loc1_:Number = this.§%>§(this.§?y§,this.§"2§);
         this.§0>§(this.§8!!§,this.§94§);
         var _loc2_:Number = this.§%>§(this.§8!!§,this.§94§);
         this.§2o§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §4!?§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §7!K§.§5!C§() / §7!K§.§=x§ - §7!K§.§+!U§ >> 1;
            §[x§ = this.mLevelMain.sprite.x = §2!V§.§-!>§ * ((1 - §#C§.§#`§) / 2);
            §^,§ = this.mLevelMain.sprite.y = _loc1_ + §2!V§.§+5§ * (1 - §#C§.§#`§) * §1E§.§4!G§;
         }
      }
      
      public function §%!X§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §#`§;
            this.mLevelMain.sprite.scaleY = §#`§;
         }
      }
      
      public function §=! §() : void
      {
         var _loc1_:Number = this.§-!a§ / §2!V§.§-!3§ + this.§8!?§;
         var _loc2_:Number = this.§'?§ / §2!V§.§-!3§ + this.§@t§;
         this.§8%§ = _loc1_ - §2!V§.§-!>§ / 2 * §7!K§.§=x§ / §7!K§.§&n§;
         this.§`!'§ = _loc2_ - §2!V§.§+5§ / 2 + §1E§.§[!L§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§^!%§(this.§8%§,this.§`!'§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§^!%§(this.§8%§,this.§`!'§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§^!%§(this.§8%§,this.§`!'§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§^!%§(this.§8%§,this.§`!'§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§^!%§(this.§8%§,this.§`!'§);
         }
      }
      
      protected function §7l§() : void
      {
         this.§;!3§(§%4§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§<w§ = -1;
         this.§7l§();
         this.§9"§ = this.§#w§ = this.§@C§ = param1;
         this.§^s§ = this.§>!1§ = this.§0R§ = param2;
         this.§;!T§ = 0;
         this.§[1§.x = this.§-!a§;
         this.§[1§.y = this.§'?§;
         this.§[1§.scale = §2![§;
         this.§2!R§ = §2![§;
         if(Math.abs(this.§8!!§.x - this.§?y§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§-!a§ - this.§?y§.x) / (this.§8!!§.x - this.§?y§.x) * §3!1§;
         }
         this.mDragging = true;
      }
      
      public function §'p§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§;!T§ += param1;
         var _loc3_:Number = this.§9"§ - this.§#w§;
         if(this.§true § > 0)
         {
            _loc2_ -= _loc3_ * §2!V§.§-!3§ / §#`§ / this.§true § * §3!1§;
            this.§,M§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§,M§ = true;
            }
            if(_loc2_ > §3!1§)
            {
               _loc2_ += (§3!1§ - _loc2_) * 0.3;
               this.§,M§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§#w§ = this.§9"§;
      }
      
      protected function §;9§() : Boolean
      {
         return this.mCurrentAction == §%4§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§9"§ = param1;
            this.§^s§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §%4§)
         {
            this.§;!3§(§!!8§);
            if(param1 > 0)
            {
               this.§9"§ = param1;
            }
            _loc3_ = Math.abs(this.§9"§ - this.§@C§);
            if(this.§;!T§ < §`!S§ && _loc3_ >= §2! § && _loc3_ >= §=K§ * this.§;!T§ / 1000)
            {
               if(this.§9"§ < this.§@C§)
               {
                  this.§;!3§(§@n§);
               }
               else
               {
                  this.§;!3§(§-y§);
               }
               this.§9!U§ = _loc3_ / this.§;!T§ * 10;
               this.§,M§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§,M§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §3!1§)
               {
                  this.§,M§ = true;
               }
            }
            else if(this.§;!T§ < §'b§)
            {
               this.§ !=§();
               this.§9!U§ = §3!1§ / (§3!1§ / 500);
               this.§,M§ = true;
            }
            else
            {
               this.§'p§(0);
               this.§ R§(0);
               this.§9!U§ = §3!1§ / (§3!1§ / 500);
               this.§,M§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function § !=§() : void
      {
         if(this.mCurrentAction == §@n§)
         {
            this.§;!3§(§-y§);
         }
         else if(this.mCurrentAction == §-y§)
         {
            this.§;!3§(§@n§);
         }
         else if(this.mCurrentCameraSliderLocation >= §3!1§ / 2)
         {
            this.§;!3§(§-y§);
         }
         else if(this.mCurrentCameraSliderLocation <= §3!1§ / 2)
         {
            this.§;!3§(§@n§);
         }
      }
      
      public function § R§(param1:int) : void
      {
         this.§<w§ = param1;
         if(this.mCurrentCameraSliderLocation < §3!1§ / 2)
         {
            this.§;!3§(§-y§);
         }
         else
         {
            this.§;!3§(§@n§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§;!3§(§-y§);
      }
      
      public function goToCastleView() : void
      {
         this.§;!3§(§@n§);
      }
      
      public function §;!3§(param1:int) : void
      {
         this.§[1§.x = this.§-!a§;
         this.§[1§.y = this.§'?§;
         this.§[1§.scale = §2![§;
         this.§2!R§ = §2![§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §3!1§)
         {
            return true;
         }
         if(this.mCurrentAction == §@n§)
         {
            return true;
         }
         return false;
      }
      
      public function §;Y§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §-y§)
         {
            return true;
         }
         return false;
      }
      
      public function §9§(param1:§2!]§) : void
      {
         this.§]!`§ = param1;
         if(this.§]!`§ != null)
         {
            this.§@!D§ = new §2!]§();
            this.§@!D§.x = this.§-!a§;
            this.§@!D§.y = this.§'?§;
            this.§@!D§.scale = §2![§;
         }
         else
         {
            this.§-!a§ = this.§@!D§.x;
            this.§'?§ = this.§@!D§.y;
            §2![§ = this.§@!D§.scale;
            this.§@!D§ = null;
         }
      }
      
      protected function §0J§() : void
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
         var _loc3_:Number = this.§2o§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§07§,Math.min(this.§?!>§,_loc3_));
         if(_loc3_ != this.§2o§)
         {
            this.§2o§ = _loc3_;
            this.§0J§();
         }
      }
      
      public function §3!,§() : Number
      {
         return (this.manualScale - this.§07§) / (this.§?!>§ - this.§07§);
      }
      
      public function §+l§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§?!>§ - this.§07§) + this.§07§;
      }
      
      public function §`9§() : void
      {
         this.§2o§ = Math.max(this.§2o§ - 0.5,0.5);
      }
      
      public function §0!Z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§2o§;
         _loc1_ += " mXcenterB2: " + this.§-!a§;
         _loc1_ += " mYcenterB2: " + this.§'?§;
         _loc1_ += " mXcenterB2target: " + this.§2o§;
         _loc1_ += "\n mYcenterB2target: " + this.§2o§;
         _loc1_ += " mXcenterB2previous: " + this.§2o§;
         _loc1_ += " mYcenterB2previous: " + this.§2o§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§2o§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§2o§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§2o§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§2o§;
         _loc1_ += " mTargetScale: " + this.§2o§;
         _loc1_ += " mTargetScalePrevious: " + this.§2o§;
         _loc1_ += " mCastleCameraX: " + this.§2o§;
         _loc1_ += "\n mCastleCameraY: " + this.§2o§;
         _loc1_ += " mCastleCameraScale: " + this.§2o§;
         _loc1_ += " mBirdCameraX: " + this.§2o§;
         _loc1_ += " mBirdCameraY: " + this.§2o§;
         _loc1_ += " mBirdCameraScale: " + this.§2o§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§2o§;
         _loc1_ += " mScreenTopScroll: " + this.§2o§;
         _loc1_ += " mDragging: " + this.§2o§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§2o§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§2o§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§2o§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§2o§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§2o§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§2o§;
         _loc1_ += " mDraggingTimer: " + this.§2o§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§2o§;
         _loc1_ += " mCameraBorderRight: " + this.§2o§;
         _loc1_ += " mCameraBorderSky: " + this.§2o§;
         _loc1_ += " mCameraBorderGround: " + this.§2o§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§2o§ + "\n ");
      }
   }
}
