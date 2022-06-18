package §[!Q§
{
   import §!4§.§=!Z§;
   import §"C§.§?w§;
   import §%b§.§,_§;
   import §%b§.§0!Z§;
   import §'d§.§3>§;
   import §0C§.§+!Y§;
   import §0C§.§;!Q§;
   
   public class § true§
   {
      
      public static const §,!H§:Number = 1.25;
      
      public static const §;!E§:Number = 0.15;
      
      public static const §=!"§:Number = §3>§.§'R§ * §0!Z§.§+n§;
      
      public static const §3q§:Number = §3>§.§'Z§ * §0!Z§.§+n§;
      
      public static const §7O§:Number = 0.1;
      
      public static const §!!>§:int = 1500;
      
      public static const §,!D§:int = 10;
      
      public static const §=!-§:int = 15;
      
      public static const §[6§:int = 300;
      
      public static const §'E§:int = 1000;
      
      public static const §2Y§:int = 10000;
      
      public static const §"!§:int = §2Y§ / 50;
      
      public static const §>>§:int = 0;
      
      public static const §[!E§:int = 1;
      
      public static const §0!M§:int = 2;
      
      public static const § !B§:int = 3;
      
      public static const §6D§:int = 4;
      
      public static const §8a§:int = 5;
      
      public static const §"3§:String = "CASTLE";
      
      public static const §;!7§:String = "SLINGSHOT";
      
      protected static var §2!%§:Number;
      
      public static var §5!$§:Number;
      
      public static var §&9§:Number;
      
      public static const §"!V§:Number = 2000;
       
      
      private var §9B§:Number = 1.0;
      
      private var § J§:Number = 0.2;
      
      protected var §!!U§:Number;
      
      protected var §[V§:Number;
      
      protected var §+l§:Number;
      
      public var §]!8§:§0!Z§;
      
      public var §<!_§:Number;
      
      public var §8c§:Number;
      
      private var §!! §:§"!<§;
      
      private var §,2§:§"!<§;
      
      public var §^!,§:Number;
      
      public var §"!N§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §?g§:Number;
      
      public var §#U§:Number;
      
      public var §>!A§:Number;
      
      public var §>1§:Number;
      
      private var §>R§:Number;
      
      private var §><§:§?m§;
      
      private var §3!?§:§?m§;
      
      protected var §8l§:Number = 0;
      
      protected var §^2§:Number = 0;
      
      protected var §"! §:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §[!K§:Number = 0;
      
      public var §46§:Boolean = true;
      
      public var §^O§:Number = 0;
      
      public var §;!$§:Number = 0;
      
      public var §6X§:Number = 0;
      
      public var §9![§:Number = 0;
      
      public var §=!K§:Number = 0;
      
      public var § var§:Number = 0;
      
      public var §,n§:Number = 0;
      
      public var §[3§:Number = 0;
      
      public var §`!<§:Number = 0;
      
      private var § !T§:§?m§;
      
      public var §!!A§:Number = 0;
      
      private var §2!4§:Number = 0;
      
      private var §`!"§:Number = 0;
      
      private var §>!L§:§+!Y§ = null;
      
      private var §+!M§:§+!Y§ = null;
      
      public function § true§(param1:§0!Z§, param2:§;!Q§, param3:Number = 1.0)
      {
         this.§ !T§ = new §?m§(0,0,1,false);
         super();
         this.§[V§ = 0;
         this.§+l§ = 0;
         this.§]!8§ = param1;
         § true§.§2!%§ = 1;
         this.§9B§ = Math.max(1,Math.min(2,param3));
         this.§!!U§ = this.§9B§;
         this.§@>§(param2);
         if(this.§!! § && this.§,2§)
         {
            this.§6!>§();
            this.§8l§ = this.§!! §.x - this.§,2§.x;
            this.§^2§ = this.§!! §.y - this.§,2§.y;
            this.§"! § = this.§!! §.scale - this.§,2§.scale;
            this.§[V§ = this.§!! §.x;
            this.§+l§ = this.§!! §.y;
            §2!%§ = this.§!! §.scale * this.§!!U§;
         }
         this.mCurrentCameraSliderLocation = §2Y§;
         this.§46§ = true;
         this.§[!K§ = §2Y§ / 500;
      }
      
      private static function §=!H§() : Number
      {
         var _loc1_:Number = §3>§.§5F§ / §3>§.§&e§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §4Z§() : Number
      {
         return §2!%§ * §=!H§();
      }
      
      public function get manualScale() : Number
      {
         return this.§!!U§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§!!U§ = param1;
      }
      
      public function get §>!3§() : Number
      {
         return this.§>R§;
      }
      
      public function §0s§() : Number
      {
         return §=!"§ / (this.§#U§ - this.§?g§);
      }
      
      public function get §=l§() : Number
      {
         return this.§9B§;
      }
      
      public function get §=w§() : Number
      {
         return this.§ J§;
      }
      
      public function §%!<§(param1:Number) : void
      {
         this.§!!U§ = param1;
         this.§"!`§();
         this.§>!C§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §8a§)
         {
            return;
         }
         this.goToCastleView();
         this.§^O§ = 2000;
         this.§[!S§();
         this.§;!U§();
         this.§7l§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§[V§ = this.§,2§.x;
         this.§+l§ = this.§,2§.y;
         this.§46§ = false;
         this.§[!K§ = §2Y§ / 160000 * param1;
         this.§!1§(§8a§);
      }
      
      public function §6!>§() : void
      {
         this.§?g§ = this.§,2§.x - §=!"§ / this.§,2§.scale / 2;
         this.§#U§ = this.§!! §.x + §=!"§ / this.§!! §.scale / 2;
         this.§>!A§ = this.§]!8§.§break§.§!!%§ - 20 * §0!Z§.§7^§ * §0!Z§.§+n§;
         this.§>1§ = this.§]!8§.§break§.§!!%§ + 4;
         var _loc1_:Number = §=!"§ / (this.§#U§ - this.§?g§);
         this.§>R§ = this.§>1§ - §3q§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]!8§ = null;
      }
      
      public function §@>§(param1:§;!Q§) : void
      {
         var _loc3_:§+!Y§ = null;
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
         while(_loc2_ < param1.§3!=§)
         {
            _loc3_ = param1.§%3§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§3M§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §3q§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §=!"§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §;!7§)
            {
               this.§,2§ = new §"!<§(_loc9_,_loc10_,_loc13_,true);
               this.§3!?§ = new §?m§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §"3§)
            {
               this.§!! § = new §"!<§(_loc9_,_loc10_,_loc13_,false);
               this.§><§ = new §?m§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §=!Z§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §4F§(param1:§;!Q§) : void
      {
         var _loc2_:§+!Y§ = new §+!Y§();
         _loc2_.id = §;!7§;
         _loc2_.x = this.§,2§.x;
         _loc2_.y = this.§,2§.y;
         var _loc3_:Number = §=!"§ / this.§,2§.scale / 2;
         var _loc4_:Number = §3q§ / this.§,2§.scale / 2;
         _loc2_.left = this.§,2§.x - _loc3_;
         _loc2_.right = this.§,2§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§+!Y§;
         (_loc5_ = new §+!Y§()).id = §"3§;
         _loc5_.x = this.§!! §.x;
         _loc5_.y = this.§!! §.y;
         var _loc6_:Number = §=!"§ / this.§!! §.scale / 2;
         var _loc7_:Number = §3q§ / this.§!! §.scale / 2;
         _loc5_.left = this.§!! §.x - _loc6_;
         _loc5_.right = this.§!! §.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§=;§();
         param1.§!k§(_loc2_);
         param1.§!k§(_loc5_);
      }
      
      public function §3M§(param1:§+!Y§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §3>§.§'R§ * 0.5 / _loc2_ * §0!Z§.§+n§;
         var _loc4_:Number = param1.y - §3>§.§'Z§ * 0.5 / _loc2_ * §0!Z§.§+n§;
         var _loc5_:Number = _loc3_ + §3>§.§'R§ / _loc2_ * §0!Z§.§+n§;
         var _loc6_:Number = _loc4_ + §3>§.§'Z§ / _loc2_ * §0!Z§.§+n§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §[!D§(param1:§"!<§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§[!K§;
         if(_loc3_ >= §2Y§)
         {
            _loc3_ = §2Y§;
            this.§!1§(§>>§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§!1§(§>>§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §=s§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§[!K§;
         var _loc4_:Number = -§2Y§ * 0.7;
         if(_loc2_ >= §2Y§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §2Y§;
            }
            this.§[!K§ = -this.§[!K§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function § a§(param1:Number) : void
      {
         if(this.mCurrentAction == §8a§)
         {
            this.§=s§(param1);
         }
         else if(this.mCurrentAction == §[!E§)
         {
            this.§[!D§(this.§!! §,param1);
         }
         else if(this.mCurrentAction == §0!M§)
         {
            this.§[!D§(this.§,2§,-param1);
         }
         else if(this.mCurrentAction == § !B§)
         {
            this.§46§ = true;
         }
         else if(this.mCurrentAction == §6D§)
         {
            this.§^W§(param1);
         }
      }
      
      public function §<!F§(param1:Number) : void
      {
         if(this.§>!L§)
         {
            this.§[V§ = this.§>!L§.x;
            this.§+l§ = this.§>!L§.y;
            §2!%§ = §=!"§ / (this.§>!L§.right - this.§>!L§.left);
         }
         else
         {
            this.§"!`§();
            this.§ a§(param1);
            this.§+0§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§[!S§();
         this.§;!U§();
         this.§7l§();
      }
      
      private function § j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§3!?§.scale + (this.§><§.scale - this.§3!?§.scale) * param1;
         var _loc4_:Number = this.§3!?§.x + (this.§><§.x - this.§3!?§.x) * param1;
         var _loc5_:Number = this.§3!?§.y + (this.§><§.y - this.§3!?§.y) * param1;
         this.§ !T§.x -= (this.§ !T§.x - _loc4_) * param2;
         this.§ !T§.y -= (this.§ !T§.y - _loc5_) * param2;
         this.§ !T§.scale -= (this.§ !T§.scale - _loc3_) * param2;
      }
      
      protected function §>!C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§8l§ != 0)
         {
            if(!this.§46§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §2Y§;
            this.§ j§(_loc3_,param2);
            this.§[V§ = this.§ !T§.x;
            this.§+l§ = this.§ !T§.y;
            §2!%§ = this.§ !T§.scale;
         }
      }
      
      public function §+0§(param1:Number, param2:Number) : void
      {
         var _loc5_:§?w§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §2Y§)
         {
            this.§46§ = true;
         }
         if(this.mCurrentAction == § !B§)
         {
            if(!this.§]!8§.activeObject)
            {
               this.§!1§(§[!E§);
               this.§`!<§ = §'E§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]!8§.activeObject).§?@§().GetPosition().x + (!!_loc5_.§5![§ ? _loc5_.§5![§ * §0!Z§.§+n§ : 0);
               _loc7_ = _loc5_.§?@§().GetPosition().y + (!!_loc5_.§,e§ ? _loc5_.§,e§ * §0!Z§.§+n§ : 0);
               if((_loc8_ = _loc5_.§?@§().GetLinearVelocity().x) > 0 && this.§8l§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§8l§ * §2Y§;
               }
               if(param1 >= §2Y§)
               {
                  param1 = §2Y§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §2Y§;
               this.§ j§(_loc9_,_loc4_);
               _loc10_ = this.§ !T§.x - §=!"§ * 0.5 / this.§ !T§.scale;
               _loc11_ = this.§ !T§.y - §3q§ * 0.5 / this.§ !T§.scale;
               _loc12_ = this.§ !T§.x + §=!"§ * 0.5 / this.§ !T§.scale;
               _loc13_ = this.§ !T§.y + §3q§ * 0.5 / this.§ !T§.scale;
               _loc14_ = 150 * §0!Z§.§+n§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§?g§,_loc15_);
               _loc17_ = Math.min(this.§#U§,_loc17_);
               _loc19_ = Math.abs(§=!"§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§3q§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§ !T§.scale)
               {
                  _loc21_ = this.§ !T§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §=!"§ * 0.5 / _loc21_ > this.§#U§)
               {
                  _loc15_ = (_loc17_ = this.§#U§) - §=!"§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§?g§)
                  {
                     _loc15_ = this.§?g§;
                  }
               }
               if(_loc22_ - §=!"§ * 0.5 / _loc21_ < this.§?g§)
               {
                  _loc17_ = (_loc15_ = this.§?g§) + §=!"§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§#U§)
                  {
                     _loc17_ = this.§#U§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§=!"§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §=!"§ * 0.5 / _loc21_ < this.§>!A§)
               {
                  _loc23_ = this.§>!A§ + §=!"§ * 0.5 / _loc21_;
               }
               this.§[V§ -= (this.§[V§ - _loc22_) * _loc4_;
               this.§!!A§ -= (this.§!!A§ - _loc21_) * _loc4_;
               §2!%§ = this.§!!A§;
               this.§+l§ -= (this.§+l§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§#U§ || _loc6_ <= this.§?g§)
               {
                  this.§ !T§.scale = §2!%§;
                  this.§ !T§.x = this.§[V§;
                  this.§ !T§.y = this.§+l§;
               }
            }
         }
         else
         {
            this.§>!C§(param1,_loc4_);
         }
      }
      
      public function §74§(param1:Number, param2:Number) : void
      {
         this.§2!4§ = param1;
         this.§`!"§ = param2;
      }
      
      private function §<R§(param1:§?m§, param2:§"!<§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §;!E§ + (param2.scale - §;!E§) * this.§!!U§ * § true§.§=!H§();
         if(§=!"§ / param1.scale > this.§#U§ - this.§?g§)
         {
            _loc3_ = §=!"§ / (this.§#U§ - this.§?g§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §#!P§(param1:§?m§, param2:§"!<§) : Boolean
      {
         var _loc3_:Boolean = this.§<R§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §3q§ * 0.5 / param1.scale;
         var _loc5_:Number = §3q§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §=!"§ * 0.5 / param1.scale) < this.§?g§ && param1.§&!V§)
         {
            param1.x += this.§?g§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §=!"§ * 0.5 / param1.scale) > this.§#U§ && !param1.§&!V§)
         {
            param1.x += this.§#U§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §-!Z§(param1:§?m§, param2:§"!<§) : Number
      {
         return (param1.scale - §;!E§) / (§ true§.§=!H§() * (param2.scale - §;!E§));
      }
      
      protected function §"!`§() : void
      {
         this.§#!P§(this.§3!?§,this.§,2§);
         var _loc1_:Number = this.§-!Z§(this.§3!?§,this.§,2§);
         this.§#!P§(this.§><§,this.§!! §);
         var _loc2_:Number = this.§-!Z§(this.§><§,this.§!! §);
         this.§!!U§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §[!S§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]!8§.sprite)
         {
            _loc1_ = §3>§.§!m§() / §3>§.§5F§ - §3>§.§'Z§ >> 1;
            §5!$§ = this.§]!8§.sprite.x = §0!Z§.§9M§ * ((1 - § true§.§4Z§) / 2);
            §&9§ = this.§]!8§.sprite.y = _loc1_ + §0!Z§.§7^§ * (1 - § true§.§4Z§) * §,_§.§'9§;
         }
      }
      
      public function §7l§() : void
      {
         if(this.§]!8§.sprite)
         {
            this.§]!8§.sprite.scaleX = §4Z§;
            this.§]!8§.sprite.scaleY = §4Z§;
         }
      }
      
      public function §;!U§() : void
      {
         var _loc1_:Number = this.§[V§ / §0!Z§.§+n§ + this.§2!4§;
         var _loc2_:Number = this.§+l§ / §0!Z§.§+n§ + this.§`!"§;
         this.§^!,§ = _loc1_ - §0!Z§.§9M§ / 2 * §3>§.§5F§ / §3>§.§@!X§;
         this.§"!N§ = _loc2_ - §0!Z§.§7^§ / 2 + §,_§.§6i§;
         if(this.§]!8§.background)
         {
            this.§]!8§.background.§@^§(this.§^!,§,this.§"!N§);
         }
         if(this.§]!8§.objects)
         {
            this.§]!8§.objects.§@^§(this.§^!,§,this.§"!N§);
         }
         if(this.§]!8§.mLevelEngine)
         {
            this.§]!8§.mLevelEngine.§@^§(this.§^!,§,this.§"!N§,§4Z§);
         }
         if(this.§]!8§.slingshot)
         {
            this.§]!8§.slingshot.§@^§(this.§^!,§,this.§"!N§);
         }
         if(this.§]!8§.particles)
         {
            this.§]!8§.particles.§@^§(this.§^!,§,this.§"!N§);
         }
      }
      
      protected function §+6§() : void
      {
         this.§!1§(§6D§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§`!<§ = -1;
         this.§+6§();
         this.§=!K§ = this.§,n§ = this.§6X§ = param1;
         this.§ var§ = this.§[3§ = this.§9![§ = param2;
         this.§;!$§ = 0;
         this.§ !T§.x = this.§[V§;
         this.§ !T§.y = this.§+l§;
         this.§ !T§.scale = §2!%§;
         this.§!!A§ = §2!%§;
         if(Math.abs(this.§><§.x - this.§3!?§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§[V§ - this.§3!?§.x) / (this.§><§.x - this.§3!?§.x) * §2Y§;
         }
         this.mDragging = true;
      }
      
      public function §^W§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§;!$§ += param1;
         var _loc3_:Number = this.§=!K§ - this.§,n§;
         if(this.§8l§ > 0)
         {
            _loc2_ -= _loc3_ * §0!Z§.§+n§ / §4Z§ / this.§8l§ * §2Y§;
            this.§46§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§46§ = true;
            }
            if(_loc2_ > §2Y§)
            {
               _loc2_ += (§2Y§ - _loc2_) * 0.3;
               this.§46§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§,n§ = this.§=!K§;
      }
      
      protected function §9!I§() : Boolean
      {
         return this.mCurrentAction == §6D§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§=!K§ = param1;
            this.§ var§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §6D§)
         {
            this.§!1§(§>>§);
            if(param1 > 0)
            {
               this.§=!K§ = param1;
            }
            _loc3_ = Math.abs(this.§=!K§ - this.§6X§);
            if(this.§;!$§ < §!!>§ && _loc3_ >= §,!D§ && _loc3_ >= §=!-§ * this.§;!$§ / 1000)
            {
               if(this.§=!K§ < this.§6X§)
               {
                  this.§!1§(§[!E§);
               }
               else
               {
                  this.§!1§(§0!M§);
               }
               this.§[!K§ = _loc3_ / this.§;!$§ * 10;
               this.§46§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§46§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §2Y§)
               {
                  this.§46§ = true;
               }
            }
            else if(this.§;!$§ < §[6§)
            {
               this.§6W§();
               this.§[!K§ = §2Y§ / (§2Y§ / 500);
               this.§46§ = true;
            }
            else
            {
               this.§^W§(0);
               this.§&&§(0);
               this.§[!K§ = §2Y§ / (§2Y§ / 500);
               this.§46§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §6W§() : void
      {
         if(this.mCurrentAction == §[!E§)
         {
            this.§!1§(§0!M§);
         }
         else if(this.mCurrentAction == §0!M§)
         {
            this.§!1§(§[!E§);
         }
         else if(this.mCurrentCameraSliderLocation >= §2Y§ / 2)
         {
            this.§!1§(§0!M§);
         }
         else if(this.mCurrentCameraSliderLocation <= §2Y§ / 2)
         {
            this.§!1§(§[!E§);
         }
      }
      
      public function §&&§(param1:int) : void
      {
         this.§`!<§ = param1;
         if(this.mCurrentCameraSliderLocation < §2Y§ / 2)
         {
            this.§!1§(§0!M§);
         }
         else
         {
            this.§!1§(§[!E§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§!1§(§0!M§);
      }
      
      public function goToCastleView() : void
      {
         this.§!1§(§[!E§);
      }
      
      public function §!1§(param1:int) : void
      {
         this.§ !T§.x = this.§[V§;
         this.§ !T§.y = this.§+l§;
         this.§ !T§.scale = §2!%§;
         this.§!!A§ = §2!%§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §2Y§)
         {
            return true;
         }
         if(this.mCurrentAction == §[!E§)
         {
            return true;
         }
         return false;
      }
      
      public function §#>§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §0!M§)
         {
            return true;
         }
         return false;
      }
      
      public function §7q§(param1:§+!Y§) : void
      {
         this.§>!L§ = param1;
         if(this.§>!L§ != null)
         {
            this.§+!M§ = new §+!Y§();
            this.§+!M§.x = this.§[V§;
            this.§+!M§.y = this.§+l§;
            this.§+!M§.scale = §2!%§;
         }
         else
         {
            this.§[V§ = this.§+!M§.x;
            this.§+l§ = this.§+!M§.y;
            §2!%§ = this.§+!M§.scale;
            this.§+!M§ = null;
         }
      }
      
      protected function §3V§() : void
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
         var _loc3_:Number = this.§!!U§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§=w§,Math.min(this.§=l§,_loc3_));
         if(_loc3_ != this.§!!U§)
         {
            this.§!!U§ = _loc3_;
            this.§3V§();
         }
      }
      
      public function §8#§() : Number
      {
         return (this.manualScale - this.§=w§) / (this.§=l§ - this.§=w§);
      }
      
      public function §<!9§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§=l§ - this.§=w§) + this.§=w§;
      }
      
      public function §;!P§() : void
      {
         this.§!!U§ = Math.max(this.§!!U§ - 0.5,0.5);
      }
      
      public function §#!4§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§!!U§;
         _loc1_ += " mXcenterB2: " + this.§[V§;
         _loc1_ += " mYcenterB2: " + this.§+l§;
         _loc1_ += " mXcenterB2target: " + this.§!!U§;
         _loc1_ += "\n mYcenterB2target: " + this.§!!U§;
         _loc1_ += " mXcenterB2previous: " + this.§!!U§;
         _loc1_ += " mYcenterB2previous: " + this.§!!U§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§!!U§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§!!U§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§!!U§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§!!U§;
         _loc1_ += " mTargetScale: " + this.§!!U§;
         _loc1_ += " mTargetScalePrevious: " + this.§!!U§;
         _loc1_ += " mCastleCameraX: " + this.§!!U§;
         _loc1_ += "\n mCastleCameraY: " + this.§!!U§;
         _loc1_ += " mCastleCameraScale: " + this.§!!U§;
         _loc1_ += " mBirdCameraX: " + this.§!!U§;
         _loc1_ += " mBirdCameraY: " + this.§!!U§;
         _loc1_ += " mBirdCameraScale: " + this.§!!U§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§!!U§;
         _loc1_ += " mScreenTopScroll: " + this.§!!U§;
         _loc1_ += " mDragging: " + this.§!!U§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§!!U§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§!!U§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§!!U§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§!!U§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§!!U§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§!!U§;
         _loc1_ += " mDraggingTimer: " + this.§!!U§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§!!U§;
         _loc1_ += " mCameraBorderRight: " + this.§!!U§;
         _loc1_ += " mCameraBorderSky: " + this.§!!U§;
         _loc1_ += " mCameraBorderGround: " + this.§!!U§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§!!U§ + "\n ");
      }
   }
}
