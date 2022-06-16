package §%!P§
{
   import §8§.§4!y§;
   import §;#D§.§3#U§;
   import §;$3§.§%V§;
   import §;$3§.§>f§;
   import §@0§.§%!q§;
   import §]!6§.§6Y§;
   
   public class §4#u§
   {
      
      public static const §'S§:Number = 1.25;
      
      public static const §6"j§:Number = 0.15;
      
      public static const §`P§:Number = 0.1;
      
      public static const §1#6§:int = 1500;
      
      public static const §>#A§:int = 10;
      
      public static const §switch§:int = 15;
      
      public static const §-!u§:int = 300;
      
      public static const §+!5§:int = 1000;
      
      public static const §4!b§:int = 10000;
      
      public static const § #I§:int = §4!b§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §]#"§:int = 1;
      
      public static const §?!G§:int = 2;
      
      public static const §+"s§:int = 3;
      
      public static const §<%§:int = 4;
      
      public static const §##`§:int = 5;
      
      public static const §6"=§:String = §%V§.CASTLE;
      
      public static const §2#2§:String = §%V§.SLINGSHOT;
      
      protected static var §0!w§:Number;
      
      public static const §`#e§:Number = 2000;
       
      
      protected var §6!g§:Number = 1.0;
      
      protected var §]"g§:Number = 0.2;
      
      protected var §%!=§:Number;
      
      protected var §^$0§:Number;
      
      protected var §2l§:Number;
      
      public var §=#N§:§%!q§;
      
      public var §-#!§:Number;
      
      public var §="D§:Number;
      
      protected var §+!L§:§4#b§;
      
      protected var §7#1§:§4#b§;
      
      protected var §-"S§:Number;
      
      protected var each:Number;
      
      protected var §`"g§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §,"A§:Number;
      
      protected var §+!d§:Number;
      
      protected var §!g§:Number;
      
      protected var §3D§:Number;
      
      protected var §?"x§:Number;
      
      protected var §""p§:Number;
      
      protected var §!J§:§>H§;
      
      protected var §@$!§:§>H§;
      
      protected var §'"t§:Number = 0;
      
      protected var §5"!§:Number = 0;
      
      protected var §8!u§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §+"9§:Number = 0;
      
      public var §]D§:Boolean = true;
      
      public var §'#R§:Number = 0;
      
      public var §&P§:Number = 0;
      
      public var §"q§:Number = 0;
      
      public var §;"m§:Number = 0;
      
      public var § !^§:Number = 0;
      
      public var §#"<§:Number = 0;
      
      public var §#_§:Number = 0;
      
      public var §%"^§:Number = 0;
      
      public var §%#q§:Number = 0;
      
      private var §=!"§:§>H§;
      
      public var §,"p§:Number = 0;
      
      private var §>!M§:Number = 0;
      
      private var §^!W§:Number = 0;
      
      private var §;'§:§%V§ = null;
      
      private var §6t§:§%V§ = null;
      
      public function §4#u§(param1:§%!q§, param2:§>f§, param3:Number = 1.0)
      {
         this.§=!"§ = new §>H§(0,0,1,false);
         super();
         this.§^$0§ = 0;
         this.§2l§ = 0;
         this.§=#N§ = param1;
         §4#u§.§0!w§ = 1;
         this.§6!g§ = Math.max(1,Math.min(2,param3));
         this.§%!=§ = this.§=n§;
         this.§?#y§(param2);
         if(this.§+!L§ && this.§7#1§)
         {
            this.loadCameraBorders();
            this.§'"t§ = this.§+!L§.x - this.§7#1§.x;
            this.§5"!§ = this.§+!L§.y - this.§7#1§.y;
            this.§8!u§ = this.§+!L§.scale - this.§7#1§.scale;
            this.§^$0§ = this.§+!L§.x;
            this.§2l§ = this.§+!L§.y;
            §0!w§ = this.§+!L§.scale * this.§%!=§;
         }
         this.mCurrentCameraSliderLocation = §4!b§;
         this.§]D§ = true;
         this.§+"9§ = §4!b§ / 500;
      }
      
      public static function get §[!#§() : Number
      {
         return §3#U§.§,g§ * §%!q§.§6q§;
      }
      
      public static function get §3j§() : Number
      {
         return §3#U§.§2b§ * §%!q§.§6q§;
      }
      
      public static function get §3"§() : Number
      {
         var _loc1_:Number = §3#U§.§<!K§ / §3#U§.§>!p§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §0!w§ * _loc1_ * _loc1_;
      }
      
      public function get §#r§() : Number
      {
         return this.§%!=§;
      }
      
      public function set §#r§(param1:Number) : void
      {
         this.§%!=§ = param1;
      }
      
      public function §,"<§() : Number
      {
         return §[!#§ / (this.§3D§ - this.§!g§);
      }
      
      public function get §=n§() : Number
      {
         var _loc1_:Number = §3#U§.§<!K§ / §3#U§.§>!p§;
         return this.§6!g§ / _loc1_;
      }
      
      public function get §?!t§() : Number
      {
         return this.§]"g§;
      }
      
      public function get §6#i§() : Number
      {
         return this.§-"S§;
      }
      
      public function get §="e§() : Number
      {
         return this.each;
      }
      
      public function get borderLeft() : Number
      {
         return this.§!g§;
      }
      
      public function get borderRight() : Number
      {
         return this.§3D§;
      }
      
      public function get centerX() : Number
      {
         return this.§,"A§;
      }
      
      public function get §;"B§() : Number
      {
         return this.§+!d§;
      }
      
      public function get §@#T§() : Number
      {
         return this.§3D§ - this.§!g§;
      }
      
      public function get §`l§() : §4#b§
      {
         return this.§+!L§;
      }
      
      public function §`#^§(param1:Number) : void
      {
         this.§%!=§ = param1;
         this.§+!I§();
         this.§5#Z§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §##`§)
         {
            return;
         }
         this.goToCastleView();
         this.§'#R§ = 2000;
         this.§4!i§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§^$0§ = this.§7#1§.x;
         this.§2l§ = this.§7#1§.y;
         this.§]D§ = false;
         this.§+"9§ = §4!b§ / 160000 * param1;
         this.setAction(§##`§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§+!L§.x - this.§7#1§.x) / 1.6;
         if(_loc1_ < §[!#§ * 1.2)
         {
            _loc1_ = §[!#§ * 1.2;
         }
         this.§!g§ = this.§7#1§.x - _loc1_;
         this.§3D§ = this.§+!L§.x + _loc1_;
         this.§?"x§ = Math.min(this.§+!L§.y,this.§7#1§.y) - §3j§;
         this.§""p§ = Math.max(this.§+!L§.y,this.§7#1§.y) + §3j§;
         this.§,"A§ = (this.§+!L§.x + this.§7#1§.x) / 2;
         this.§+!d§ = (this.§+!L§.y + this.§7#1§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§=#N§ = null;
      }
      
      public function §?#y§(param1:§>f§) : void
      {
         var _loc3_:§%V§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§&"!§)
         {
            _loc3_ = param1.§4D§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§;"K§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§<"!§(_loc3_);
            if(_loc4_ == §2#2§)
            {
               this.§7#1§ = new §4#b§(_loc5_,_loc6_,_loc7_,true);
               this.§@$!§ = new §>H§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §6"=§)
            {
               this.§+!L§ = new §4#b§(_loc5_,_loc6_,_loc7_,false);
               this.§!J§ = new §>H§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §6Y§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §<"!§(param1:§%V§) : Number
      {
         var _loc2_:Number = §3j§ / (param1.bottom - param1.top);
         var _loc3_:Number = §[!#§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §#!5§(param1:§>f§) : void
      {
         var _loc2_:§%V§ = new §%V§();
         _loc2_.id = §2#2§;
         _loc2_.x = this.§7#1§.x;
         _loc2_.y = this.§7#1§.y;
         var _loc3_:Number = §[!#§ / this.§7#1§.scale / 2;
         var _loc4_:Number = §3j§ / this.§7#1§.scale / 2;
         _loc2_.left = this.§7#1§.x - _loc3_;
         _loc2_.right = this.§7#1§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§7#1§.scale;
         var _loc5_:§%V§;
         (_loc5_ = new §%V§()).id = §6"=§;
         _loc5_.x = this.§+!L§.x;
         _loc5_.y = this.§+!L§.y;
         var _loc6_:Number = §[!#§ / this.§+!L§.scale / 2;
         var _loc7_:Number = §3j§ / this.§+!L§.scale / 2;
         _loc5_.left = this.§+!L§.x - _loc6_;
         _loc5_.right = this.§+!L§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§+!L§.scale;
         param1.§;!S§();
         param1.§"K§(_loc2_);
         param1.§"K§(_loc5_);
      }
      
      public function §;"K§(param1:§%V§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §3#U§.§,g§ * 0.5 / _loc2_ * §%!q§.§6q§;
         var _loc4_:Number = param1.y - §3#U§.§2b§ * 0.5 / _loc2_ * §%!q§.§6q§;
         var _loc5_:Number = _loc3_ + §3#U§.§,g§ / _loc2_ * §%!q§.§6q§;
         var _loc6_:Number = _loc4_ + §3#U§.§2b§ / _loc2_ * §%!q§.§6q§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §1!E§(param1:§4#b§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§+"9§;
         if(_loc3_ >= §4!b§)
         {
            _loc3_ = §4!b§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §^!D§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§+"9§;
         var _loc4_:Number = -§4!b§ * 0.7;
         if(_loc2_ >= §4!b§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §4!b§;
            }
            this.§+"9§ = -this.§+"9§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §3!7§(param1:Number) : void
      {
         if(this.mCurrentAction == §##`§)
         {
            this.§^!D§(param1);
         }
         else if(this.mCurrentAction == §]#"§)
         {
            this.§1!E§(this.§+!L§,param1);
         }
         else if(this.mCurrentAction == §?!G§)
         {
            this.§1!E§(this.§7#1§,-param1);
         }
         else if(this.mCurrentAction == §+"s§)
         {
            this.§]D§ = true;
         }
         else if(this.mCurrentAction == §<%§)
         {
            this.§^]§(param1);
         }
      }
      
      public function §0"`§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§;'§)
         {
            this.§^$0§ = this.§;'§.x;
            this.§2l§ = this.§;'§.y;
            §0!w§ = §[!#§ / (this.§;'§.right - this.§;'§.left);
         }
         else
         {
            this.§+!I§();
            this.§3!7§(param1);
            if(Math.abs(this.§`"g§ - §3#U§.§<!K§ / §3#U§.§>!p§) > 0.01)
            {
               param1 = 1000;
            }
            this.§[X§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§4!i§();
         this.§`"g§ = §3#U§.§<!K§ / §3#U§.§>!p§;
      }
      
      private function §%!t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Number = param1;
         if(Math.abs(this.§!J§.x - this.§@$!§.x) < 0.2)
         {
            _loc3_ = 0.5;
         }
         if(Math.abs(this.§!J§.y - this.§@$!§.y) < 0.2)
         {
            _loc4_ = 0.5;
         }
         var _loc5_:Number = this.§@$!§.scale + (this.§!J§.scale - this.§@$!§.scale) * _loc3_;
         var _loc6_:Number = this.§@$!§.x + (this.§!J§.x - this.§@$!§.x) * _loc3_;
         var _loc7_:Number = this.§@$!§.y + (this.§!J§.y - this.§@$!§.y) * _loc4_;
         this.§=!"§.x -= (this.§=!"§.x - _loc6_) * param2;
         this.§=!"§.y -= (this.§=!"§.y - _loc7_) * param2;
         this.§=!"§.scale -= (this.§=!"§.scale - _loc5_) * param2;
         this.§!!l§(this.§=!"§);
      }
      
      protected function §5#Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'"t§ != 0)
         {
            if(!this.§]D§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §4!b§;
            this.§%!t§(_loc3_,param2);
            this.§^$0§ = this.§=!"§.x;
            this.§2l§ = this.§=!"§.y;
            §0!w§ = this.§=!"§.scale;
         }
      }
      
      private function §^!n§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§4!y§;
         var _loc5_:Number = (_loc4_ = this.§=#N§.levelObjects.activeObject).§&"0§();
         var _loc6_:Number = _loc4_.§5"l§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§'"t§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§'"t§ * §4!b§;
         }
         if(param1 >= §4!b§)
         {
            param1 = §4!b§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §4!b§;
         this.§%!t§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §3#U§.§<!K§ / §3#U§.§>!p§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§=!"§.x - §[!#§ / _loc9_ * 0.5 / this.§=!"§.scale;
         var _loc11_:Number = this.§=!"§.y - §3j§ * 0.5 / this.§=!"§.scale;
         var _loc12_:Number = this.§=!"§.x + §[!#§ / _loc9_ * 0.5 / this.§=!"§.scale;
         var _loc13_:Number = this.§=!"§.y + §3j§ * 0.5 / this.§=!"§.scale;
         var _loc14_:Number = 150 * §%!q§.§6q§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§!g§,_loc15_);
         _loc17_ = Math.min(this.§3D§,_loc17_);
         var _loc19_:Number = Math.abs(§[!#§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§3j§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§=!"§.scale)
         {
            _loc21_ = this.§=!"§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §[!#§ / _loc9_ * 0.5 / _loc21_ > this.§3D§)
         {
            _loc15_ = (_loc17_ = this.§3D§) - §[!#§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§!g§)
            {
               _loc15_ = this.§!g§;
            }
         }
         if(_loc22_ - §[!#§ / _loc9_ * 0.5 / _loc21_ < this.§!g§)
         {
            _loc17_ = (_loc15_ = this.§!g§) + §[!#§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§3D§)
            {
               _loc17_ = this.§3D§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§[!#§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §3j§ * 0.5 < this.§?"x§)
         {
            _loc23_ = this.§?"x§ + §3j§ * 0.5;
         }
         if(_loc23_ + §3j§ * 0.5 > this.§""p§)
         {
            _loc23_ = this.§""p§ - §3j§ * 0.5;
         }
         this.§^$0§ -= (this.§^$0§ - _loc22_) * param3;
         this.§,"p§ -= (this.§,"p§ - _loc21_) * param3;
         §0!w§ = this.§,"p§;
         this.§2l§ -= (this.§2l§ - _loc23_) * param3;
         if(_loc5_ >= this.§3D§ || _loc5_ <= this.§!g§)
         {
            this.§=!"§.scale = §0!w§;
            this.§=!"§.x = this.§^$0§;
            this.§=!"§.y = this.§2l§;
         }
      }
      
      protected function §[X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §4!b§)
         {
            this.§]D§ = true;
         }
         if(this.mCurrentAction == §+"s§)
         {
            if(!this.§=#N§.levelObjects.activeObject)
            {
               this.setAction(§]#"§);
               this.§%#q§ = §+!5§;
            }
            else
            {
               this.§^!n§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§5#Z§(param1,_loc4_);
         }
      }
      
      public function §!^§(param1:Number, param2:Number) : void
      {
         this.§>!M§ = param1;
         this.§^!W§ = param2;
      }
      
      protected function §"2§(param1:§>H§, param2:§4#b§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §3#U§.§<!K§ / §3#U§.§>!p§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §6"j§ + (param2.scale - §6"j§) * this.§#r§;
         if(§[!#§ / param1.scale > (this.§3D§ - this.§!g§) * _loc3_)
         {
            _loc4_ = §[!#§ / ((this.§3D§ - this.§!g§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §7!r§(param1:§>H§, param2:§4#b§) : Boolean
      {
         var _loc3_:Boolean = this.§"2§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§!!l§(param1);
         return _loc3_;
      }
      
      private function §!!l§(param1:§>H§) : void
      {
         var _loc2_:Number = §3#U§.§<!K§ / §3#U§.§>!p§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §[!#§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§!g§)
         {
            param1.x += this.§!g§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §[!#§ / _loc2_ * 0.5 / param1.scale) > this.§3D§)
         {
            param1.x += this.§3D§ - _loc4_;
         }
      }
      
      private function §@#I§(param1:§>H§, param2:§4#b§) : Number
      {
         return (param1.scale - §6"j§) / (param2.scale - §6"j§);
      }
      
      protected function §+!I§() : void
      {
         this.§7!r§(this.§@$!§,this.§7#1§);
         var _loc1_:Number = this.§@#I§(this.§@$!§,this.§7#1§);
         this.§7!r§(this.§!J§,this.§+!L§);
         var _loc2_:Number = this.§@#I§(this.§!J§,this.§+!L§);
         this.§%!=§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §4!i§() : void
      {
         var _loc1_:Number = this.§^$0§ / §%!q§.§6q§ + this.§>!M§;
         var _loc2_:Number = this.§2l§ / §%!q§.§6q§ + this.§^!W§;
         var _loc3_:Number = §3#U§.§<!K§;
         var _loc4_:Number = §3#U§.§>!p§;
         var _loc5_:Number = §%!q§.§ "+§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §%!q§.§=K§;
         this.§-"S§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.each = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§-"S§ += _loc5_ / 2 - _loc5_ / 2 / §3"§;
         this.each += (_loc6_ / 2 - _loc6_ / 2 / §3"§) / (_loc3_ / _loc4_);
         this.§=#N§.setScreenOffset(this.§-"S§,this.each,§3"§);
      }
      
      protected function §-!=§() : void
      {
         this.setAction(§<%§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§%#q§ = -1;
         this.§-!=§();
         this.§ !^§ = this.§#_§ = this.§"q§ = param1;
         this.§#"<§ = this.§%"^§ = this.§;"m§ = param2;
         this.§&P§ = 0;
         this.§=!"§.x = this.§^$0§;
         this.§=!"§.y = this.§2l§;
         this.§=!"§.scale = §0!w§;
         this.§,"p§ = §0!w§;
         if(Math.abs(this.§!J§.x - this.§@$!§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§^$0§ - this.§@$!§.x) / (this.§!J§.x - this.§@$!§.x) * §4!b§;
         }
         this.mDragging = true;
      }
      
      public function §^]§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§&P§ += param1;
         var _loc3_:Number = this.§ !^§ - this.§#_§;
         if(this.§'"t§ > 0)
         {
            _loc2_ -= _loc3_ * §%!q§.§6q§ / §3"§ / this.§'"t§ * §4!b§;
            this.§]D§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§]D§ = true;
            }
            if(_loc2_ > §4!b§)
            {
               _loc2_ += (§4!b§ - _loc2_) * 0.3;
               this.§]D§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§#_§ = this.§ !^§;
      }
      
      protected function §5"e§() : Boolean
      {
         return this.mCurrentAction == §<%§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§ !^§ = param1;
            this.§#"<§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §<%§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§ !^§ = param1;
            }
            _loc3_ = Math.abs(this.§ !^§ - this.§"q§);
            if(this.§&P§ < §1#6§ && _loc3_ >= §>#A§ && _loc3_ >= §switch§ * this.§&P§ / 1000)
            {
               if(this.§ !^§ < this.§"q§)
               {
                  this.setAction(§]#"§);
               }
               else
               {
                  this.setAction(§?!G§);
               }
               this.§+"9§ = _loc3_ / this.§&P§ * 10;
               this.§]D§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§]D§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §4!b§)
               {
                  this.§]D§ = true;
               }
            }
            else if(this.§&P§ < §-!u§)
            {
               this.§ !T§();
               this.§+"9§ = §4!b§ / (§4!b§ / 500);
               this.§]D§ = true;
            }
            else
            {
               this.§^]§(0);
               this.§%#"§(0);
               this.§+"9§ = §4!b§ / (§4!b§ / 500);
               this.§]D§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function § !T§() : void
      {
         if(this.mCurrentAction == §]#"§)
         {
            this.setAction(§?!G§);
         }
         else if(this.mCurrentAction == §?!G§)
         {
            this.setAction(§]#"§);
         }
         else if(this.mCurrentCameraSliderLocation >= §4!b§ / 2)
         {
            this.setAction(§?!G§);
         }
         else if(this.mCurrentCameraSliderLocation <= §4!b§ / 2)
         {
            this.setAction(§]#"§);
         }
      }
      
      public function §%#"§(param1:int) : void
      {
         this.§%#q§ = param1;
         if(this.mCurrentCameraSliderLocation < §4!b§ / 2)
         {
            this.setAction(§?!G§);
         }
         else
         {
            this.setAction(§]#"§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§?!G§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§]#"§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§=!"§.x = this.§^$0§;
         this.§=!"§.y = this.§2l§;
         this.§=!"§.scale = §0!w§;
         this.§,"p§ = §0!w§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §4!b§)
         {
            return true;
         }
         if(this.mCurrentAction == §]#"§)
         {
            return true;
         }
         return false;
      }
      
      public function §0^§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §?!G§)
         {
            return true;
         }
         return false;
      }
      
      public function §5#h§(param1:§%V§) : void
      {
         this.§;'§ = param1;
         if(this.§;'§ != null)
         {
            this.§6t§ = new §%V§();
            this.§6t§.x = this.§^$0§;
            this.§6t§.y = this.§2l§;
            this.§6t§.scale = §0!w§;
         }
         else
         {
            this.§^$0§ = this.§6t§.x;
            this.§2l§ = this.§6t§.y;
            §0!w§ = this.§6t§.scale;
            this.§6t§ = null;
         }
      }
      
      protected function §5n§() : void
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
         var _loc3_:Number = this.§%!=§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§?!t§,Math.min(this.§=n§,_loc3_));
         if(_loc3_ != this.§%!=§)
         {
            this.§%!=§ = _loc3_;
         }
      }
      
      public function §1#=§() : Number
      {
         return (this.§#r§ - this.§?!t§) / (this.§=n§ - this.§?!t§);
      }
      
      public function §7#D§(param1:Number) : void
      {
         this.§#r§ = Math.min(Math.max(param1,0),1) * (this.§=n§ - this.§?!t§) + this.§?!t§;
      }
      
      public function §@#v§() : void
      {
         this.§%!=§ = Math.max(this.§%!=§ - 0.5,0.5);
      }
      
      public function §7!e§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§#r§;
         _loc1_ += " mXcenterB2: " + this.§^$0§;
         _loc1_ += " mYcenterB2: " + this.§2l§;
         _loc1_ += " mXcenterB2target: " + this.§#r§;
         _loc1_ += "\n mYcenterB2target: " + this.§#r§;
         _loc1_ += " mXcenterB2previous: " + this.§#r§;
         _loc1_ += " mYcenterB2previous: " + this.§#r§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§#r§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§#r§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§#r§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§#r§;
         _loc1_ += " mTargetScale: " + this.§#r§;
         _loc1_ += " mTargetScalePrevious: " + this.§#r§;
         _loc1_ += " mCastleCameraX: " + this.§#r§;
         _loc1_ += "\n mCastleCameraY: " + this.§#r§;
         _loc1_ += " mCastleCameraScale: " + this.§#r§;
         _loc1_ += " mBirdCameraX: " + this.§#r§;
         _loc1_ += " mBirdCameraY: " + this.§#r§;
         _loc1_ += " mBirdCameraScale: " + this.§#r§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§#r§;
         _loc1_ += "mScreenOffsetYl: " + this.§#r§;
         _loc1_ += " mDragging: " + this.§#r§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§#r§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§#r§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§#r§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§#r§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§#r§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§#r§;
         _loc1_ += " mDraggingTimer: " + this.§#r§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§#r§;
         _loc1_ += " mCameraBorderRight: " + this.§#r§;
         _loc1_ += "mCameraBorderTop: " + this.§#r§;
         _loc1_ += "mCameraBorderBottom: " + this.§#r§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§#r§ + "\n ");
      }
      
      public function §3"@§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
