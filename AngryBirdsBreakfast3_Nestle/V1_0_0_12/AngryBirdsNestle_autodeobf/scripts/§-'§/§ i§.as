package §-'§
{
   import § 2§.§=+§;
   import §%Z§.§&!-§;
   import §3!0§.§`i§;
   import §8!$§.§?p§;
   
   public class § i§
   {
      
      public static const §@!#§:Number = 1.25;
      
      public static const §0!A§:Number = 0.15;
      
      public static const §;0§:Number = §`i§.§8#§ * §=+§.§5!w§;
      
      public static const §%"3§:Number = §`i§.§1k§ * §=+§.§5!w§;
      
      public static const §@"-§:Number = 0.1;
      
      public static const §>!2§:int = 1500;
      
      public static const §5!u§:int = 10;
      
      public static const § !&§:int = 15;
      
      public static const §!!n§:int = 300;
      
      public static const §+!z§:int = 1000;
      
      public static const §"V§:int = 10000;
      
      public static const §8"4§:int = §"V§ / 50;
      
      public static const §>e§:int = 0;
      
      public static const §3N§:int = 1;
      
      public static const §0!,§:int = 2;
      
      public static const §1!W§:int = 3;
      
      public static const §1!q§:int = 4;
      
      public static const §^f§:int = 5;
      
      public static const §'`§:String = §3!?§.CASTLE;
      
      public static const §`!4§:String = §3!?§.SLINGSHOT;
      
      protected static var §7!^§:Number;
      
      public static const §@!`§:Number = 2000;
       
      
      protected var §37§:Number = 1.0;
      
      protected var §,i§:Number = 0.2;
      
      protected var §!!f§:Number;
      
      protected var §5!Z§:Number;
      
      protected var §6!F§:Number;
      
      public var §false§:§=+§;
      
      public var §9!O§:Number;
      
      public var §?W§:Number;
      
      protected var §7M§:§3!q§;
      
      protected var §2!?§:§3!q§;
      
      protected var §5!r§:Number;
      
      protected var §>s§:Number;
      
      protected var §<9§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §78§:Number;
      
      protected var §%!2§:Number;
      
      protected var §3!&§:Number;
      
      protected var §&!'§:Number;
      
      protected var §3Z§:Number;
      
      protected var §!"8§:Number;
      
      protected var §"!w§:§8f§;
      
      protected var §[!1§:§8f§;
      
      protected var §5!U§:Number = 0;
      
      protected var § ""§:Number = 0;
      
      protected var §^!W§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §!!A§:Number = 0;
      
      public var § !Q§:Boolean = true;
      
      public var §+s§:Number = 0;
      
      public var §4!i§:Number = 0;
      
      public var §`!S§:Number = 0;
      
      public var §do§:Number = 0;
      
      public var §7V§:Number = 0;
      
      public var §@"$§:Number = 0;
      
      public var §<o§:Number = 0;
      
      public var §[!g§:Number = 0;
      
      public var §-=§:Number = 0;
      
      private var §`!m§:§8f§;
      
      public var §=!<§:Number = 0;
      
      private var §8g§:Number = 0;
      
      private var §0!"§:Number = 0;
      
      private var §=q§:§3!?§ = null;
      
      private var §<<§:§3!?§ = null;
      
      public function § i§(param1:§=+§, param2:§[d§, param3:Number = 1.0)
      {
         this.§`!m§ = new §8f§(0,0,1,false);
         super();
         this.§5!Z§ = 0;
         this.§6!F§ = 0;
         this.§false§ = param1;
         § i§.§7!^§ = 1;
         this.§37§ = Math.max(1,Math.min(2,param3));
         this.§!!f§ = this.§+c§;
         this.§#!t§(param2);
         if(this.§7M§ && this.§2!?§)
         {
            this.§&!E§();
            this.§5!U§ = this.§7M§.x - this.§2!?§.x;
            this.§ ""§ = this.§7M§.y - this.§2!?§.y;
            this.§^!W§ = this.§7M§.scale - this.§2!?§.scale;
            this.§5!Z§ = this.§7M§.x;
            this.§6!F§ = this.§7M§.y;
            §7!^§ = this.§7M§.scale * this.§!!f§;
         }
         this.mCurrentCameraSliderLocation = §"V§;
         this.§ !Q§ = true;
         this.§!!A§ = §"V§ / 500;
      }
      
      public static function get §>!_§() : Number
      {
         var _loc1_:Number = §`i§.§=!I§ / §`i§.§%!a§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §7!^§ * _loc1_ * _loc1_;
      }
      
      public function get §3!9§() : Number
      {
         return this.§!!f§;
      }
      
      public function set §3!9§(param1:Number) : void
      {
         this.§!!f§ = param1;
      }
      
      public function § v§() : Number
      {
         return §;0§ / (this.§&!'§ - this.§3!&§);
      }
      
      public function get §+c§() : Number
      {
         var _loc1_:Number = §`i§.§=!I§ / §`i§.§%!a§;
         return this.§37§ / _loc1_;
      }
      
      public function get §"R§() : Number
      {
         return this.§,i§;
      }
      
      public function get §;!#§() : Number
      {
         return this.§5!r§;
      }
      
      public function get §]j§() : Number
      {
         return this.§>s§;
      }
      
      public function get §+!t§() : Number
      {
         return this.§3!&§;
      }
      
      public function get §%!s§() : Number
      {
         return this.§&!'§;
      }
      
      public function get §]<§() : Number
      {
         return this.§78§;
      }
      
      public function get §5!e§() : Number
      {
         return this.§%!2§;
      }
      
      public function get §4!p§() : Number
      {
         return this.§&!'§ - this.§3!&§;
      }
      
      protected function get §87§() : §3!q§
      {
         return this.§7M§;
      }
      
      public function §?k§(param1:Number) : void
      {
         this.§!!f§ = param1;
         this.§7s§();
         this.§,"1§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §^f§)
         {
            return;
         }
         this.goToCastleView();
         this.§+s§ = 2000;
         this.§;!?§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§5!Z§ = this.§2!?§.x;
         this.§6!F§ = this.§2!?§.y;
         this.§ !Q§ = false;
         this.§!!A§ = §"V§ / 160000 * param1;
         this.§2!6§(§^f§);
      }
      
      public function §&!E§() : void
      {
         var _loc1_:Number = (this.§7M§.x - this.§2!?§.x) / 1.6;
         if(_loc1_ < §;0§ * 1.2)
         {
            _loc1_ = §;0§ * 1.2;
         }
         this.§3!&§ = this.§2!?§.x - _loc1_;
         this.§&!'§ = this.§7M§.x + _loc1_;
         this.§3Z§ = Math.min(this.§7M§.y,this.§2!?§.y) - §%"3§;
         this.§!"8§ = Math.max(this.§7M§.y,this.§2!?§.y) + §%"3§;
         this.§78§ = (this.§7M§.x + this.§2!?§.x) / 2;
         this.§%!2§ = (this.§7M§.y + this.§2!?§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§false§ = null;
      }
      
      public function §#!t§(param1:§[d§) : void
      {
         var _loc3_:§3!?§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§[!V§)
         {
            _loc3_ = param1.§6!U§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§?$§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §`!4§)
            {
               this.§2!?§ = new §3!q§(_loc5_,_loc6_,_loc7_,true);
               this.§[!1§ = new §8f§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §'`§)
            {
               this.§7M§ = new §3!q§(_loc5_,_loc6_,_loc7_,false);
               this.§"!w§ = new §8f§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §?p§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§3!?§) : Number
      {
         var _loc2_:Number = §%"3§ / (param1.bottom - param1.top);
         var _loc3_:Number = §;0§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §!"%§(param1:§[d§) : void
      {
         var _loc2_:§3!?§ = new §3!?§();
         _loc2_.id = §`!4§;
         _loc2_.x = this.§2!?§.x;
         _loc2_.y = this.§2!?§.y;
         var _loc3_:Number = §;0§ / this.§2!?§.scale / 2;
         var _loc4_:Number = §%"3§ / this.§2!?§.scale / 2;
         _loc2_.left = this.§2!?§.x - _loc3_;
         _loc2_.right = this.§2!?§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§2!?§.scale;
         var _loc5_:§3!?§;
         (_loc5_ = new §3!?§()).id = §'`§;
         _loc5_.x = this.§7M§.x;
         _loc5_.y = this.§7M§.y;
         var _loc6_:Number = §;0§ / this.§7M§.scale / 2;
         var _loc7_:Number = §%"3§ / this.§7M§.scale / 2;
         _loc5_.left = this.§7M§.x - _loc6_;
         _loc5_.right = this.§7M§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§7M§.scale;
         param1.§-![§();
         param1.§`k§(_loc2_);
         param1.§`k§(_loc5_);
      }
      
      public function §?$§(param1:§3!?§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §`i§.§8#§ * 0.5 / _loc2_ * §=+§.§5!w§;
         var _loc4_:Number = param1.y - §`i§.§1k§ * 0.5 / _loc2_ * §=+§.§5!w§;
         var _loc5_:Number = _loc3_ + §`i§.§8#§ / _loc2_ * §=+§.§5!w§;
         var _loc6_:Number = _loc4_ + §`i§.§1k§ / _loc2_ * §=+§.§5!w§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §1§(param1:§3!q§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§!!A§;
         if(_loc3_ >= §"V§)
         {
            _loc3_ = §"V§;
            this.§2!6§(§>e§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§2!6§(§>e§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §'"2§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§!!A§;
         var _loc4_:Number = -§"V§ * 0.7;
         if(_loc2_ >= §"V§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §"V§;
            }
            this.§!!A§ = -this.§!!A§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §1`§(param1:Number) : void
      {
         if(this.mCurrentAction == §^f§)
         {
            this.§'"2§(param1);
         }
         else if(this.mCurrentAction == §3N§)
         {
            this.§1§(this.§7M§,param1);
         }
         else if(this.mCurrentAction == §0!,§)
         {
            this.§1§(this.§2!?§,-param1);
         }
         else if(this.mCurrentAction == §1!W§)
         {
            this.§ !Q§ = true;
         }
         else if(this.mCurrentAction == §1!q§)
         {
            this.§9<§(param1);
         }
      }
      
      public function §00§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§=q§)
         {
            this.§5!Z§ = this.§=q§.x;
            this.§6!F§ = this.§=q§.y;
            §7!^§ = §;0§ / (this.§=q§.right - this.§=q§.left);
         }
         else
         {
            this.§7s§();
            this.§1`§(param1);
            if(Math.abs(this.§<9§ - §`i§.§=!I§ / §`i§.§%!a§) > 0.01)
            {
               param1 = 1000;
            }
            this.§[!]§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§;!?§();
         this.§<9§ = §`i§.§=!I§ / §`i§.§%!a§;
      }
      
      private function §^!q§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§"!w§.x - this.§[!1§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§[!1§.scale + (this.§"!w§.scale - this.§[!1§.scale) * param1;
         var _loc4_:Number = this.§[!1§.x + (this.§"!w§.x - this.§[!1§.x) * param1;
         var _loc5_:Number = this.§[!1§.y + (this.§"!w§.y - this.§[!1§.y) * param1;
         this.§`!m§.x -= (this.§`!m§.x - _loc4_) * param2;
         this.§`!m§.y -= (this.§`!m§.y - _loc5_) * param2;
         this.§`!m§.scale -= (this.§`!m§.scale - _loc3_) * param2;
         this.§]9§(this.§`!m§);
      }
      
      protected function §,"1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§5!U§ != 0)
         {
            if(!this.§ !Q§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §"V§;
            this.§^!q§(_loc3_,param2);
            this.§5!Z§ = this.§`!m§.x;
            this.§6!F§ = this.§`!m§.y;
            §7!^§ = this.§`!m§.scale;
         }
      }
      
      private function §5!!§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§&!-§;
         var _loc5_:Number = (_loc4_ = this.§false§.levelObjects.activeObject).§0!'§();
         var _loc6_:Number = _loc4_.§9!g§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§-!N§().GetLinearVelocity().x) > 0 && this.§5!U§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§5!U§ * §"V§;
         }
         if(param1 >= §"V§)
         {
            param1 = §"V§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §"V§;
         this.§^!q§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §`i§.§=!I§ / §`i§.§%!a§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§`!m§.x - §;0§ / _loc9_ * 0.5 / this.§`!m§.scale;
         var _loc11_:Number = this.§`!m§.y - §%"3§ * 0.5 / this.§`!m§.scale;
         var _loc12_:Number = this.§`!m§.x + §;0§ / _loc9_ * 0.5 / this.§`!m§.scale;
         var _loc13_:Number = this.§`!m§.y + §%"3§ * 0.5 / this.§`!m§.scale;
         var _loc14_:Number = 150 * §=+§.§5!w§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§3!&§,_loc15_);
         _loc17_ = Math.min(this.§&!'§,_loc17_);
         var _loc19_:Number = Math.abs(§;0§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§%"3§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§`!m§.scale)
         {
            _loc21_ = this.§`!m§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §;0§ / _loc9_ * 0.5 / _loc21_ > this.§&!'§)
         {
            _loc15_ = (_loc17_ = this.§&!'§) - §;0§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§3!&§)
            {
               _loc15_ = this.§3!&§;
            }
         }
         if(_loc22_ - §;0§ / _loc9_ * 0.5 / _loc21_ < this.§3!&§)
         {
            _loc17_ = (_loc15_ = this.§3!&§) + §;0§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§&!'§)
            {
               _loc17_ = this.§&!'§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§;0§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §%"3§ * 0.5 < this.§3Z§)
         {
            _loc23_ = this.§3Z§ + §%"3§ * 0.5;
         }
         if(_loc23_ + §%"3§ * 0.5 > this.§!"8§)
         {
            _loc23_ = this.§!"8§ - §%"3§ * 0.5;
         }
         this.§5!Z§ -= (this.§5!Z§ - _loc22_) * param3;
         this.§=!<§ -= (this.§=!<§ - _loc21_) * param3;
         §7!^§ = this.§=!<§;
         this.§6!F§ -= (this.§6!F§ - _loc23_) * param3;
         if(_loc5_ >= this.§&!'§ || _loc5_ <= this.§3!&§)
         {
            this.§`!m§.scale = §7!^§;
            this.§`!m§.x = this.§5!Z§;
            this.§`!m§.y = this.§6!F§;
         }
      }
      
      protected function §[!]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §"V§)
         {
            this.§ !Q§ = true;
         }
         if(this.mCurrentAction == §1!W§)
         {
            if(!this.§false§.levelObjects.activeObject)
            {
               this.§2!6§(§3N§);
               this.§-=§ = §+!z§;
            }
            else
            {
               this.§5!!§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§,"1§(param1,_loc4_);
         }
      }
      
      public function §`!I§(param1:Number, param2:Number) : void
      {
         this.§8g§ = param1;
         this.§0!"§ = param2;
      }
      
      protected function §[-§(param1:§8f§, param2:§3!q§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §`i§.§=!I§ / §`i§.§%!a§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §0!A§ + (param2.scale - §0!A§) * this.§3!9§;
         if(§;0§ / param1.scale > (this.§&!'§ - this.§3!&§) * _loc3_)
         {
            _loc4_ = §;0§ / ((this.§&!'§ - this.§3!&§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §94§(param1:§8f§, param2:§3!q§) : Boolean
      {
         var _loc3_:Boolean = this.§[-§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§]9§(param1);
         return _loc3_;
      }
      
      private function §]9§(param1:§8f§) : void
      {
         var _loc2_:Number = §`i§.§=!I§ / §`i§.§%!a§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §;0§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§3!&§)
         {
            param1.x += this.§3!&§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §;0§ / _loc2_ * 0.5 / param1.scale) > this.§&!'§)
         {
            param1.x += this.§&!'§ - _loc4_;
         }
      }
      
      private function §+!n§(param1:§8f§, param2:§3!q§) : Number
      {
         return (param1.scale - §0!A§) / (param2.scale - §0!A§);
      }
      
      protected function §7s§() : void
      {
         this.§94§(this.§[!1§,this.§2!?§);
         var _loc1_:Number = this.§+!n§(this.§[!1§,this.§2!?§);
         this.§94§(this.§"!w§,this.§7M§);
         var _loc2_:Number = this.§+!n§(this.§"!w§,this.§7M§);
         this.§!!f§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §;!?§() : void
      {
         var _loc1_:Number = this.§5!Z§ / §=+§.§5!w§ + this.§8g§;
         var _loc2_:Number = this.§6!F§ / §=+§.§5!w§ + this.§0!"§;
         var _loc3_:Number = §`i§.§=!I§;
         var _loc4_:Number = §`i§.§%!a§;
         var _loc5_:Number = §=+§.§1!h§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §=+§.§-G§;
         this.§5!r§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§>s§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§5!r§ += _loc5_ / 2 - _loc5_ / 2 / §>!_§;
         this.§>s§ += (_loc6_ / 2 - _loc6_ / 2 / §>!_§) / (_loc3_ / _loc4_);
         this.§false§.setScreenOffset(this.§5!r§,this.§>s§,§>!_§);
      }
      
      protected function §`u§() : void
      {
         this.§2!6§(§1!q§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§-=§ = -1;
         this.§`u§();
         this.§7V§ = this.§<o§ = this.§`!S§ = param1;
         this.§@"$§ = this.§[!g§ = this.§do§ = param2;
         this.§4!i§ = 0;
         this.§`!m§.x = this.§5!Z§;
         this.§`!m§.y = this.§6!F§;
         this.§`!m§.scale = §7!^§;
         this.§=!<§ = §7!^§;
         if(Math.abs(this.§"!w§.x - this.§[!1§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§5!Z§ - this.§[!1§.x) / (this.§"!w§.x - this.§[!1§.x) * §"V§;
         }
         this.mDragging = true;
      }
      
      public function §9<§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§4!i§ += param1;
         var _loc3_:Number = this.§7V§ - this.§<o§;
         if(this.§5!U§ > 0)
         {
            _loc2_ -= _loc3_ * §=+§.§5!w§ / §>!_§ / this.§5!U§ * §"V§;
            this.§ !Q§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§ !Q§ = true;
            }
            if(_loc2_ > §"V§)
            {
               _loc2_ += (§"V§ - _loc2_) * 0.3;
               this.§ !Q§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§<o§ = this.§7V§;
      }
      
      protected function §'A§() : Boolean
      {
         return this.mCurrentAction == §1!q§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§7V§ = param1;
            this.§@"$§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §1!q§)
         {
            this.§2!6§(§>e§);
            if(param1 > 0)
            {
               this.§7V§ = param1;
            }
            _loc3_ = Math.abs(this.§7V§ - this.§`!S§);
            if(this.§4!i§ < §>!2§ && _loc3_ >= §5!u§ && _loc3_ >= § !&§ * this.§4!i§ / 1000)
            {
               if(this.§7V§ < this.§`!S§)
               {
                  this.§2!6§(§3N§);
               }
               else
               {
                  this.§2!6§(§0!,§);
               }
               this.§!!A§ = _loc3_ / this.§4!i§ * 10;
               this.§ !Q§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§ !Q§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §"V§)
               {
                  this.§ !Q§ = true;
               }
            }
            else if(this.§4!i§ < §!!n§)
            {
               this.§!!3§();
               this.§!!A§ = §"V§ / (§"V§ / 500);
               this.§ !Q§ = true;
            }
            else
            {
               this.§9<§(0);
               this.§0S§(0);
               this.§!!A§ = §"V§ / (§"V§ / 500);
               this.§ !Q§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §!!3§() : void
      {
         if(this.mCurrentAction == §3N§)
         {
            this.§2!6§(§0!,§);
         }
         else if(this.mCurrentAction == §0!,§)
         {
            this.§2!6§(§3N§);
         }
         else if(this.mCurrentCameraSliderLocation >= §"V§ / 2)
         {
            this.§2!6§(§0!,§);
         }
         else if(this.mCurrentCameraSliderLocation <= §"V§ / 2)
         {
            this.§2!6§(§3N§);
         }
      }
      
      public function §0S§(param1:int) : void
      {
         this.§-=§ = param1;
         if(this.mCurrentCameraSliderLocation < §"V§ / 2)
         {
            this.§2!6§(§0!,§);
         }
         else
         {
            this.§2!6§(§3N§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§2!6§(§0!,§);
      }
      
      public function goToCastleView() : void
      {
         this.§2!6§(§3N§);
      }
      
      public function §2!6§(param1:int) : void
      {
         this.§`!m§.x = this.§5!Z§;
         this.§`!m§.y = this.§6!F§;
         this.§`!m§.scale = §7!^§;
         this.§=!<§ = §7!^§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §"V§)
         {
            return true;
         }
         if(this.mCurrentAction == §3N§)
         {
            return true;
         }
         return false;
      }
      
      public function §?j§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §0!,§)
         {
            return true;
         }
         return false;
      }
      
      public function dynamic(param1:§3!?§) : void
      {
         this.§=q§ = param1;
         if(this.§=q§ != null)
         {
            this.§<<§ = new §3!?§();
            this.§<<§.x = this.§5!Z§;
            this.§<<§.y = this.§6!F§;
            this.§<<§.scale = §7!^§;
         }
         else
         {
            this.§5!Z§ = this.§<<§.x;
            this.§6!F§ = this.§<<§.y;
            §7!^§ = this.§<<§.scale;
            this.§<<§ = null;
         }
      }
      
      protected function §#"&§() : void
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
         var _loc3_:Number = this.§!!f§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§"R§,Math.min(this.§+c§,_loc3_));
         if(_loc3_ != this.§!!f§)
         {
            this.§!!f§ = _loc3_;
         }
      }
      
      public function §4b§() : Number
      {
         return (this.§3!9§ - this.§"R§) / (this.§+c§ - this.§"R§);
      }
      
      public function §!^§(param1:Number) : void
      {
         this.§3!9§ = Math.min(Math.max(param1,0),1) * (this.§+c§ - this.§"R§) + this.§"R§;
      }
      
      public function §-2§() : void
      {
         this.§!!f§ = Math.max(this.§!!f§ - 0.5,0.5);
      }
      
      public function §"o§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§3!9§;
         _loc1_ += " mXcenterB2: " + this.§5!Z§;
         _loc1_ += " mYcenterB2: " + this.§6!F§;
         _loc1_ += " mXcenterB2target: " + this.§3!9§;
         _loc1_ += "\n mYcenterB2target: " + this.§3!9§;
         _loc1_ += " mXcenterB2previous: " + this.§3!9§;
         _loc1_ += " mYcenterB2previous: " + this.§3!9§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§3!9§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§3!9§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§3!9§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§3!9§;
         _loc1_ += " mTargetScale: " + this.§3!9§;
         _loc1_ += " mTargetScalePrevious: " + this.§3!9§;
         _loc1_ += " mCastleCameraX: " + this.§3!9§;
         _loc1_ += "\n mCastleCameraY: " + this.§3!9§;
         _loc1_ += " mCastleCameraScale: " + this.§3!9§;
         _loc1_ += " mBirdCameraX: " + this.§3!9§;
         _loc1_ += " mBirdCameraY: " + this.§3!9§;
         _loc1_ += " mBirdCameraScale: " + this.§3!9§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§3!9§;
         _loc1_ += "mScreenOffsetYl: " + this.§3!9§;
         _loc1_ += " mDragging: " + this.§3!9§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§3!9§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§3!9§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§3!9§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§3!9§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§3!9§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§3!9§;
         _loc1_ += " mDraggingTimer: " + this.§3!9§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§3!9§;
         _loc1_ += " mCameraBorderRight: " + this.§3!9§;
         _loc1_ += "mCameraBorderTop: " + this.§3!9§;
         _loc1_ += "mCameraBorderBottom: " + this.§3!9§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§3!9§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
