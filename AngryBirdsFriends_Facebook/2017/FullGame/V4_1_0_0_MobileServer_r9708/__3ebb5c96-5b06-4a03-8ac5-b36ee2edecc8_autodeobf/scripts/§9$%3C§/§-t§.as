package §9$<§
{
   import §+!C§.§!!S§;
   import §6"r§.§!#A§;
   import §<"p§.§?!T§;
   import §>!5§.§^"9§;
   import §@#§.§@"v§;
   import §@#§.§]#B§;
   
   public class §-t§
   {
      
      public static const §%$2§:Number = 1.25;
      
      public static const § !§:Number = 0.15;
      
      public static const §!g§:Number = 0.1;
      
      public static const §8!`§:int = 1500;
      
      public static const §<"E§:int = 10;
      
      public static const §-"M§:int = 15;
      
      public static const §0!w§:int = 300;
      
      public static const §>!z§:int = 1000;
      
      public static const §3";§:int = 10000;
      
      public static const §>g§:int = §3";§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §-"e§:int = 1;
      
      public static const § v§:int = 2;
      
      public static const §;$8§:int = 3;
      
      public static const §!"O§:int = 4;
      
      public static const §4"§:int = 5;
      
      public static const include:String = §@"v§.CASTLE;
      
      public static const §6!-§:String = §@"v§.SLINGSHOT;
      
      protected static var §%!z§:Number;
      
      public static const §""u§:Number = 2000;
       
      
      protected var §@"U§:Number = 1.0;
      
      protected var §]"r§:Number = 0.2;
      
      protected var §%Y§:Number;
      
      protected var §7z§:Number;
      
      protected var §6!3§:Number;
      
      public var §`=§:§!!S§;
      
      public var §[#z§:Number;
      
      public var §!5§:Number;
      
      protected var §4#@§:§4!q§;
      
      protected var §5#t§:§4!q§;
      
      protected var §@"k§:Number;
      
      protected var §@!Z§:Number;
      
      protected var §;%§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §4#e§:Number;
      
      protected var §9#=§:Number;
      
      protected var §^<§:Number;
      
      protected var §^"]§:Number;
      
      protected var §?"j§:Number;
      
      protected var §&H§:Number;
      
      protected var §0"'§:§8#E§;
      
      protected var §-!m§:§8#E§;
      
      protected var §!0§:Number = 0;
      
      protected var §!!j§:Number = 0;
      
      protected var §?$§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §>#7§:Number = 0;
      
      public var §>§:Boolean = true;
      
      public var § #c§:Number = 0;
      
      public var §&!n§:Number = 0;
      
      public var §7#^§:Number = 0;
      
      public var §>#§:Number = 0;
      
      public var §<#?§:Number = 0;
      
      public var §^o§:Number = 0;
      
      public var §4"r§:Number = 0;
      
      public var §6!1§:Number = 0;
      
      public var §;#p§:Number = 0;
      
      private var §>"P§:§8#E§;
      
      public var §@!%§:Number = 0;
      
      private var §+I§:Number = 0;
      
      private var §8q§:Number = 0;
      
      private var § $0§:§@"v§ = null;
      
      private var §['§:§@"v§ = null;
      
      public function §-t§(param1:§!!S§, param2:§]#B§, param3:Number = 1.0)
      {
         this.§>"P§ = new §8#E§(0,0,1,false);
         super();
         this.§7z§ = 0;
         this.§6!3§ = 0;
         this.§`=§ = param1;
         §-t§.§%!z§ = 1;
         this.§@"U§ = Math.max(1,Math.min(2,param3));
         this.§%Y§ = this.§7#3§;
         this.§69§(param2);
         if(this.§4#@§ && this.§5#t§)
         {
            this.loadCameraBorders();
            this.§!0§ = this.§4#@§.x - this.§5#t§.x;
            this.§!!j§ = this.§4#@§.y - this.§5#t§.y;
            this.§?$§ = this.§4#@§.scale - this.§5#t§.scale;
            this.§7z§ = this.§4#@§.x;
            this.§6!3§ = this.§4#@§.y;
            §%!z§ = this.§4#@§.scale * this.§%Y§;
         }
         this.mCurrentCameraSliderLocation = §3";§;
         this.§>§ = true;
         this.§>#7§ = §3";§ / 500;
      }
      
      public static function get §6w§() : Number
      {
         return §!#A§.§-Y§ * §!!S§.§,"3§;
      }
      
      public static function get §`#Z§() : Number
      {
         return §!#A§.§<!q§ * §!!S§.§,"3§;
      }
      
      public static function get §<!W§() : Number
      {
         var _loc1_:Number = §!#A§.§+K§ / §!#A§.§5O§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §%!z§ * _loc1_ * _loc1_;
      }
      
      public function get §?!,§() : Number
      {
         return this.§%Y§;
      }
      
      public function set §?!,§(param1:Number) : void
      {
         this.§%Y§ = param1;
      }
      
      public function §`"!§() : Number
      {
         return §6w§ / (this.§^"]§ - this.§^<§);
      }
      
      public function get §7#3§() : Number
      {
         var _loc1_:Number = §!#A§.§+K§ / §!#A§.§5O§;
         return this.§@"U§ / _loc1_;
      }
      
      public function get §7#T§() : Number
      {
         return this.§]"r§;
      }
      
      public function get §'#x§() : Number
      {
         return this.§@"k§;
      }
      
      public function get §>!w§() : Number
      {
         return this.§@!Z§;
      }
      
      public function get borderLeft() : Number
      {
         return this.§^<§;
      }
      
      public function get borderRight() : Number
      {
         return this.§^"]§;
      }
      
      public function get centerX() : Number
      {
         return this.§4#e§;
      }
      
      public function get §>!r§() : Number
      {
         return this.§9#=§;
      }
      
      public function get §<$%§() : Number
      {
         return this.§^"]§ - this.§^<§;
      }
      
      public function get §-l§() : §4!q§
      {
         return this.§4#@§;
      }
      
      public function §^!#§(param1:Number) : void
      {
         this.§%Y§ = param1;
         this.§'"n§();
         this.§2v§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §4"§)
         {
            return;
         }
         this.goToCastleView();
         this.§ #c§ = 2000;
         this.§&!C§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7z§ = this.§5#t§.x;
         this.§6!3§ = this.§5#t§.y;
         this.§>§ = false;
         this.§>#7§ = §3";§ / 160000 * param1;
         this.setAction(§4"§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§4#@§.x - this.§5#t§.x) / 1.6;
         if(_loc1_ < §6w§ * 1.2)
         {
            _loc1_ = §6w§ * 1.2;
         }
         this.§^<§ = this.§5#t§.x - _loc1_;
         this.§^"]§ = this.§4#@§.x + _loc1_;
         this.§?"j§ = Math.min(this.§4#@§.y,this.§5#t§.y) - §`#Z§;
         this.§&H§ = Math.max(this.§4#@§.y,this.§5#t§.y) + §`#Z§;
         this.§4#e§ = (this.§4#@§.x + this.§5#t§.x) / 2;
         this.§9#=§ = (this.§4#@§.y + this.§5#t§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§`=§ = null;
      }
      
      public function §69§(param1:§]#B§) : void
      {
         var _loc3_:§@"v§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§^i§)
         {
            _loc3_ = param1.§<#^§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§^#2§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§@E§(_loc3_);
            if(_loc4_ == §6!-§)
            {
               this.§5#t§ = new §4!q§(_loc5_,_loc6_,_loc7_,true);
               this.§-!m§ = new §8#E§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == include)
            {
               this.§4#@§ = new §4!q§(_loc5_,_loc6_,_loc7_,false);
               this.§0"'§ = new §8#E§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §?!T§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §@E§(param1:§@"v§) : Number
      {
         var _loc2_:Number = §`#Z§ / (param1.bottom - param1.top);
         var _loc3_:Number = §6w§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §#"G§(param1:§]#B§) : void
      {
         var _loc2_:§@"v§ = new §@"v§();
         _loc2_.id = §6!-§;
         _loc2_.x = this.§5#t§.x;
         _loc2_.y = this.§5#t§.y;
         var _loc3_:Number = §6w§ / this.§5#t§.scale / 2;
         var _loc4_:Number = §`#Z§ / this.§5#t§.scale / 2;
         _loc2_.left = this.§5#t§.x - _loc3_;
         _loc2_.right = this.§5#t§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§5#t§.scale;
         var _loc5_:§@"v§;
         (_loc5_ = new §@"v§()).id = include;
         _loc5_.x = this.§4#@§.x;
         _loc5_.y = this.§4#@§.y;
         var _loc6_:Number = §6w§ / this.§4#@§.scale / 2;
         var _loc7_:Number = §`#Z§ / this.§4#@§.scale / 2;
         _loc5_.left = this.§4#@§.x - _loc6_;
         _loc5_.right = this.§4#@§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§4#@§.scale;
         param1.§!!6§();
         param1.§+#w§(_loc2_);
         param1.§+#w§(_loc5_);
      }
      
      public function §^#2§(param1:§@"v§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §!#A§.§-Y§ * 0.5 / _loc2_ * §!!S§.§,"3§;
         var _loc4_:Number = param1.y - §!#A§.§<!q§ * 0.5 / _loc2_ * §!!S§.§,"3§;
         var _loc5_:Number = _loc3_ + §!#A§.§-Y§ / _loc2_ * §!!S§.§,"3§;
         var _loc6_:Number = _loc4_ + §!#A§.§<!q§ / _loc2_ * §!!S§.§,"3§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §4"B§(param1:§4!q§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§>#7§;
         if(_loc3_ >= §3";§)
         {
            _loc3_ = §3";§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §while§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§>#7§;
         var _loc4_:Number = -§3";§ * 0.7;
         if(_loc2_ >= §3";§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §3";§;
            }
            this.§>#7§ = -this.§>#7§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §5#P§(param1:Number) : void
      {
         if(this.mCurrentAction == §4"§)
         {
            this.§while§(param1);
         }
         else if(this.mCurrentAction == §-"e§)
         {
            this.§4"B§(this.§4#@§,param1);
         }
         else if(this.mCurrentAction == § v§)
         {
            this.§4"B§(this.§5#t§,-param1);
         }
         else if(this.mCurrentAction == §;$8§)
         {
            this.§>§ = true;
         }
         else if(this.mCurrentAction == §!"O§)
         {
            this.§^"S§(param1);
         }
      }
      
      public function §3!_§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§ $0§)
         {
            this.§7z§ = this.§ $0§.x;
            this.§6!3§ = this.§ $0§.y;
            §%!z§ = §6w§ / (this.§ $0§.right - this.§ $0§.left);
         }
         else
         {
            this.§'"n§();
            this.§5#P§(param1);
            if(Math.abs(this.§;%§ - §!#A§.§+K§ / §!#A§.§5O§) > 0.01)
            {
               param1 = 1000;
            }
            this.§'!E§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§&!C§();
         this.§;%§ = §!#A§.§+K§ / §!#A§.§5O§;
      }
      
      private function §=#e§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Number = param1;
         if(Math.abs(this.§0"'§.x - this.§-!m§.x) < 0.2)
         {
            _loc3_ = 0.5;
         }
         if(Math.abs(this.§0"'§.y - this.§-!m§.y) < 0.2)
         {
            _loc4_ = 0.5;
         }
         var _loc5_:Number = this.§-!m§.scale + (this.§0"'§.scale - this.§-!m§.scale) * _loc3_;
         var _loc6_:Number = this.§-!m§.x + (this.§0"'§.x - this.§-!m§.x) * _loc3_;
         var _loc7_:Number = this.§-!m§.y + (this.§0"'§.y - this.§-!m§.y) * _loc4_;
         this.§>"P§.x -= (this.§>"P§.x - _loc6_) * param2;
         this.§>"P§.y -= (this.§>"P§.y - _loc7_) * param2;
         this.§>"P§.scale -= (this.§>"P§.scale - _loc5_) * param2;
         this.§^!`§(this.§>"P§);
      }
      
      protected function §2v§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!0§ != 0)
         {
            if(!this.§>§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §3";§;
            this.§=#e§(_loc3_,param2);
            this.§7z§ = this.§>"P§.x;
            this.§6!3§ = this.§>"P§.y;
            §%!z§ = this.§>"P§.scale;
         }
      }
      
      private function §>#z§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§^"9§;
         var _loc5_:Number = (_loc4_ = this.§`=§.levelObjects.activeObject).§["b§();
         var _loc6_:Number = _loc4_.§@W§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§!0§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§!0§ * §3";§;
         }
         if(param1 >= §3";§)
         {
            param1 = §3";§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §3";§;
         this.§=#e§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §!#A§.§+K§ / §!#A§.§5O§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§>"P§.x - §6w§ / _loc9_ * 0.5 / this.§>"P§.scale;
         var _loc11_:Number = this.§>"P§.y - §`#Z§ * 0.5 / this.§>"P§.scale;
         var _loc12_:Number = this.§>"P§.x + §6w§ / _loc9_ * 0.5 / this.§>"P§.scale;
         var _loc13_:Number = this.§>"P§.y + §`#Z§ * 0.5 / this.§>"P§.scale;
         var _loc14_:Number = 150 * §!!S§.§,"3§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§^<§,_loc15_);
         _loc17_ = Math.min(this.§^"]§,_loc17_);
         var _loc19_:Number = Math.abs(§6w§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§`#Z§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§>"P§.scale)
         {
            _loc21_ = this.§>"P§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §6w§ / _loc9_ * 0.5 / _loc21_ > this.§^"]§)
         {
            _loc15_ = (_loc17_ = this.§^"]§) - §6w§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§^<§)
            {
               _loc15_ = this.§^<§;
            }
         }
         if(_loc22_ - §6w§ / _loc9_ * 0.5 / _loc21_ < this.§^<§)
         {
            _loc17_ = (_loc15_ = this.§^<§) + §6w§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§^"]§)
            {
               _loc17_ = this.§^"]§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§6w§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §`#Z§ * 0.5 < this.§?"j§)
         {
            _loc23_ = this.§?"j§ + §`#Z§ * 0.5;
         }
         if(_loc23_ + §`#Z§ * 0.5 > this.§&H§)
         {
            _loc23_ = this.§&H§ - §`#Z§ * 0.5;
         }
         this.§7z§ -= (this.§7z§ - _loc22_) * param3;
         this.§@!%§ -= (this.§@!%§ - _loc21_) * param3;
         §%!z§ = this.§@!%§;
         this.§6!3§ -= (this.§6!3§ - _loc23_) * param3;
         if(_loc5_ >= this.§^"]§ || _loc5_ <= this.§^<§)
         {
            this.§>"P§.scale = §%!z§;
            this.§>"P§.x = this.§7z§;
            this.§>"P§.y = this.§6!3§;
         }
      }
      
      protected function §'!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §3";§)
         {
            this.§>§ = true;
         }
         if(this.mCurrentAction == §;$8§)
         {
            if(!this.§`=§.levelObjects.activeObject)
            {
               this.setAction(§-"e§);
               this.§;#p§ = §>!z§;
            }
            else
            {
               this.§>#z§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§2v§(param1,_loc4_);
         }
      }
      
      public function §,!P§(param1:Number, param2:Number) : void
      {
         this.§+I§ = param1;
         this.§8q§ = param2;
      }
      
      protected function §'!y§(param1:§8#E§, param2:§4!q§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §!#A§.§+K§ / §!#A§.§5O§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = § !§ + (param2.scale - § !§) * this.§?!,§;
         if(§6w§ / param1.scale > (this.§^"]§ - this.§^<§) * _loc3_)
         {
            _loc4_ = §6w§ / ((this.§^"]§ - this.§^<§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §[X§(param1:§8#E§, param2:§4!q§) : Boolean
      {
         var _loc3_:Boolean = this.§'!y§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§^!`§(param1);
         return _loc3_;
      }
      
      private function §^!`§(param1:§8#E§) : void
      {
         var _loc2_:Number = §!#A§.§+K§ / §!#A§.§5O§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §6w§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§^<§)
         {
            param1.x += this.§^<§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §6w§ / _loc2_ * 0.5 / param1.scale) > this.§^"]§)
         {
            param1.x += this.§^"]§ - _loc4_;
         }
      }
      
      private function §68§(param1:§8#E§, param2:§4!q§) : Number
      {
         return (param1.scale - § !§) / (param2.scale - § !§);
      }
      
      protected function §'"n§() : void
      {
         this.§[X§(this.§-!m§,this.§5#t§);
         var _loc1_:Number = this.§68§(this.§-!m§,this.§5#t§);
         this.§[X§(this.§0"'§,this.§4#@§);
         var _loc2_:Number = this.§68§(this.§0"'§,this.§4#@§);
         this.§%Y§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §&!C§() : void
      {
         var _loc1_:Number = this.§7z§ / §!!S§.§,"3§ + this.§+I§;
         var _loc2_:Number = this.§6!3§ / §!!S§.§,"3§ + this.§8q§;
         var _loc3_:Number = §!#A§.§+K§;
         var _loc4_:Number = §!#A§.§5O§;
         var _loc5_:Number = §!!S§.§6" § * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §!!S§.§6",§;
         this.§@"k§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§@!Z§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§@"k§ += _loc5_ / 2 - _loc5_ / 2 / §<!W§;
         this.§@!Z§ += (_loc6_ / 2 - _loc6_ / 2 / §<!W§) / (_loc3_ / _loc4_);
         this.§`=§.setScreenOffset(this.§@"k§,this.§@!Z§,§<!W§);
      }
      
      protected function § `§() : void
      {
         this.setAction(§!"O§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§;#p§ = -1;
         this.§ `§();
         this.§<#?§ = this.§4"r§ = this.§7#^§ = param1;
         this.§^o§ = this.§6!1§ = this.§>#§ = param2;
         this.§&!n§ = 0;
         this.§>"P§.x = this.§7z§;
         this.§>"P§.y = this.§6!3§;
         this.§>"P§.scale = §%!z§;
         this.§@!%§ = §%!z§;
         if(Math.abs(this.§0"'§.x - this.§-!m§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7z§ - this.§-!m§.x) / (this.§0"'§.x - this.§-!m§.x) * §3";§;
         }
         this.mDragging = true;
      }
      
      public function §^"S§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§&!n§ += param1;
         var _loc3_:Number = this.§<#?§ - this.§4"r§;
         if(this.§!0§ > 0)
         {
            _loc2_ -= _loc3_ * §!!S§.§,"3§ / §<!W§ / this.§!0§ * §3";§;
            this.§>§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§>§ = true;
            }
            if(_loc2_ > §3";§)
            {
               _loc2_ += (§3";§ - _loc2_) * 0.3;
               this.§>§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§4"r§ = this.§<#?§;
      }
      
      protected function §^!y§() : Boolean
      {
         return this.mCurrentAction == §!"O§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§<#?§ = param1;
            this.§^o§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §!"O§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§<#?§ = param1;
            }
            _loc3_ = Math.abs(this.§<#?§ - this.§7#^§);
            if(this.§&!n§ < §8!`§ && _loc3_ >= §<"E§ && _loc3_ >= §-"M§ * this.§&!n§ / 1000)
            {
               if(this.§<#?§ < this.§7#^§)
               {
                  this.setAction(§-"e§);
               }
               else
               {
                  this.setAction(§ v§);
               }
               this.§>#7§ = _loc3_ / this.§&!n§ * 10;
               this.§>§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§>§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §3";§)
               {
                  this.§>§ = true;
               }
            }
            else if(this.§&!n§ < §0!w§)
            {
               this.§=!^§();
               this.§>#7§ = §3";§ / (§3";§ / 500);
               this.§>§ = true;
            }
            else
            {
               this.§^"S§(0);
               this.§"?§(0);
               this.§>#7§ = §3";§ / (§3";§ / 500);
               this.§>§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §=!^§() : void
      {
         if(this.mCurrentAction == §-"e§)
         {
            this.setAction(§ v§);
         }
         else if(this.mCurrentAction == § v§)
         {
            this.setAction(§-"e§);
         }
         else if(this.mCurrentCameraSliderLocation >= §3";§ / 2)
         {
            this.setAction(§ v§);
         }
         else if(this.mCurrentCameraSliderLocation <= §3";§ / 2)
         {
            this.setAction(§-"e§);
         }
      }
      
      public function §"?§(param1:int) : void
      {
         this.§;#p§ = param1;
         if(this.mCurrentCameraSliderLocation < §3";§ / 2)
         {
            this.setAction(§ v§);
         }
         else
         {
            this.setAction(§-"e§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§ v§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§-"e§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§>"P§.x = this.§7z§;
         this.§>"P§.y = this.§6!3§;
         this.§>"P§.scale = §%!z§;
         this.§@!%§ = §%!z§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §3";§)
         {
            return true;
         }
         if(this.mCurrentAction == §-"e§)
         {
            return true;
         }
         return false;
      }
      
      public function §7!e§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == § v§)
         {
            return true;
         }
         return false;
      }
      
      public function §4"$§(param1:§@"v§) : void
      {
         this.§ $0§ = param1;
         if(this.§ $0§ != null)
         {
            this.§['§ = new §@"v§();
            this.§['§.x = this.§7z§;
            this.§['§.y = this.§6!3§;
            this.§['§.scale = §%!z§;
         }
         else
         {
            this.§7z§ = this.§['§.x;
            this.§6!3§ = this.§['§.y;
            §%!z§ = this.§['§.scale;
            this.§['§ = null;
         }
      }
      
      protected function §^#?§() : void
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
         var _loc3_:Number = this.§%Y§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§7#T§,Math.min(this.§7#3§,_loc3_));
         if(_loc3_ != this.§%Y§)
         {
            this.§%Y§ = _loc3_;
         }
      }
      
      public function §&#&§() : Number
      {
         return (this.§?!,§ - this.§7#T§) / (this.§7#3§ - this.§7#T§);
      }
      
      public function §6!2§(param1:Number) : void
      {
         this.§?!,§ = Math.min(Math.max(param1,0),1) * (this.§7#3§ - this.§7#T§) + this.§7#T§;
      }
      
      public function §0"8§() : void
      {
         this.§%Y§ = Math.max(this.§%Y§ - 0.5,0.5);
      }
      
      public function §?D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§?!,§;
         _loc1_ += " mXcenterB2: " + this.§7z§;
         _loc1_ += " mYcenterB2: " + this.§6!3§;
         _loc1_ += " mXcenterB2target: " + this.§?!,§;
         _loc1_ += "\n mYcenterB2target: " + this.§?!,§;
         _loc1_ += " mXcenterB2previous: " + this.§?!,§;
         _loc1_ += " mYcenterB2previous: " + this.§?!,§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§?!,§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§?!,§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§?!,§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§?!,§;
         _loc1_ += " mTargetScale: " + this.§?!,§;
         _loc1_ += " mTargetScalePrevious: " + this.§?!,§;
         _loc1_ += " mCastleCameraX: " + this.§?!,§;
         _loc1_ += "\n mCastleCameraY: " + this.§?!,§;
         _loc1_ += " mCastleCameraScale: " + this.§?!,§;
         _loc1_ += " mBirdCameraX: " + this.§?!,§;
         _loc1_ += " mBirdCameraY: " + this.§?!,§;
         _loc1_ += " mBirdCameraScale: " + this.§?!,§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§?!,§;
         _loc1_ += "mScreenOffsetYl: " + this.§?!,§;
         _loc1_ += " mDragging: " + this.§?!,§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§?!,§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§?!,§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§?!,§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§?!,§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§?!,§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§?!,§;
         _loc1_ += " mDraggingTimer: " + this.§?!,§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§?!,§;
         _loc1_ += " mCameraBorderRight: " + this.§?!,§;
         _loc1_ += "mCameraBorderTop: " + this.§?!,§;
         _loc1_ += "mCameraBorderBottom: " + this.§?!,§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§?!,§ + "\n ");
      }
      
      public function §#5§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
