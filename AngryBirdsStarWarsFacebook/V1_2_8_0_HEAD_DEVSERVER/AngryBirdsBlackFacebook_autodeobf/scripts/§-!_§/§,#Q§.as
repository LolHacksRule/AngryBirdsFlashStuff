package §-!_§
{
   import §5t§.Log;
   import §7P§.§&#=§;
   import §?m§.§0!§;
   import §?m§.§8!B§;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   
   public class §,#Q§
   {
      
      public static const §1W§:Number = 1.25;
      
      public static const §<! §:Number = 0.15;
      
      public static const §"#N§:Number = §,!q§.§%N§ * §#_§.§8]§;
      
      public static const §`"!§:Number = §,!q§.§>#O§ * §#_§.§8]§;
      
      public static const §#"E§:Number = 0.1;
      
      public static const §5!u§:int = 1500;
      
      public static const § "%§:int = 10;
      
      public static const §6x§:int = 15;
      
      public static const §=!Y§:int = 300;
      
      public static const §>"<§:int = 1000;
      
      public static const §>!2§:int = 10000;
      
      public static const §]!@§:int = §>!2§ / 50;
      
      public static const §`#+§:int = 0;
      
      public static const §@#G§:int = 1;
      
      public static const §+!v§:int = 2;
      
      public static const §[#H§:int = 3;
      
      public static const §>"?§:int = 4;
      
      public static const §"!Y§:int = 5;
      
      public static const §?i§:String = §0!§.CASTLE;
      
      public static const §>"2§:String = §0!§.SLINGSHOT;
      
      protected static var §>F§:Number;
      
      public static const §`#=§:Number = 2000;
       
      
      protected var §#"-§:Number = 1.0;
      
      protected var §9!I§:Number = 0.2;
      
      protected var §<%§:Number;
      
      protected var §="0§:Number;
      
      protected var §`t§:Number;
      
      public var §2#G§:§#_§;
      
      public var §?"b§:Number;
      
      public var §5!2§:Number;
      
      protected var §3!L§:§""N§;
      
      protected var §1#=§:§""N§;
      
      protected var §7"§:Number;
      
      protected var §+!p§:Number;
      
      protected var §<#X§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §;"M§:Number;
      
      protected var §,#@§:Number;
      
      protected var §^#9§:Number;
      
      protected var §^!C§:Number;
      
      protected var §;!b§:Number;
      
      protected var §]!G§:Number;
      
      protected var §4"z§:§]"Q§;
      
      protected var §82§:§]"Q§;
      
      protected var §0T§:Number = 0;
      
      protected var §3!B§:Number = 0;
      
      protected var §%"q§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §!#6§:Number = 0;
      
      public var §<"G§:Boolean = true;
      
      public var §;v§:Number = 0;
      
      public var §""@§:Number = 0;
      
      public var §'"t§:Number = 0;
      
      public var §8#7§:Number = 0;
      
      public var §@"E§:Number = 0;
      
      public var §;!l§:Number = 0;
      
      public var §#?§:Number = 0;
      
      public var §^H§:Number = 0;
      
      public var §]U§:Number = 0;
      
      private var §>8§:§]"Q§;
      
      public var §3V§:Number = 0;
      
      private var §2x§:Number = 0;
      
      private var §+"v§:Number = 0;
      
      private var §while§:§0!§ = null;
      
      private var §&#2§:§0!§ = null;
      
      public function §,#Q§(param1:§#_§, param2:§8!B§, param3:Number = 1.0)
      {
         this.§>8§ = new §]"Q§(0,0,1,false);
         super();
         this.§="0§ = 0;
         this.§`t§ = 0;
         this.§2#G§ = param1;
         §,#Q§.§>F§ = 1;
         this.§#"-§ = Math.max(1,Math.min(2,param3));
         this.§<%§ = this.§7i§;
         this.§4!b§(param2);
         if(this.§3!L§ && this.§1#=§)
         {
            this.§'!T§();
            this.§0T§ = this.§3!L§.x - this.§1#=§.x;
            this.§3!B§ = this.§3!L§.y - this.§1#=§.y;
            this.§%"q§ = this.§3!L§.scale - this.§1#=§.scale;
            this.§="0§ = this.§3!L§.x;
            this.§`t§ = this.§3!L§.y;
            §>F§ = this.§3!L§.scale * this.§<%§;
         }
         this.mCurrentCameraSliderLocation = §>!2§;
         this.§<"G§ = true;
         this.§!#6§ = §>!2§ / 500;
      }
      
      public static function get § #b§() : Number
      {
         var _loc1_:Number = §,!q§.§6G§ / §,!q§.§!"N§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §>F§ * _loc1_ * _loc1_;
      }
      
      public function get §'"2§() : Number
      {
         return this.§<%§;
      }
      
      public function set §'"2§(param1:Number) : void
      {
         this.§<%§ = param1;
      }
      
      public function §+"n§() : Number
      {
         return §"#N§ / (this.§^!C§ - this.§^#9§);
      }
      
      public function get §7i§() : Number
      {
         var _loc1_:Number = §,!q§.§6G§ / §,!q§.§!"N§;
         return this.§#"-§ / _loc1_;
      }
      
      public function get §^r§() : Number
      {
         return this.§9!I§;
      }
      
      public function get §9";§() : Number
      {
         return this.§7"§;
      }
      
      public function get § !4§() : Number
      {
         return this.§+!p§;
      }
      
      public function get §'^§() : Number
      {
         return this.§^#9§;
      }
      
      public function get §="!§() : Number
      {
         return this.§^!C§;
      }
      
      public function get §%!3§() : Number
      {
         return this.§;"M§;
      }
      
      public function get §>e§() : Number
      {
         return this.§,#@§;
      }
      
      public function get §"!"§() : Number
      {
         return this.§^!C§ - this.§^#9§;
      }
      
      protected function get §4^§() : §""N§
      {
         return this.§3!L§;
      }
      
      public function §[W§(param1:Number) : void
      {
         this.§<%§ = param1;
         this.§ o§();
         this.§"#=§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §"!Y§)
         {
            return;
         }
         this.goToCastleView();
         this.§;v§ = 2000;
         this.§,n§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§="0§ = this.§1#=§.x;
         this.§`t§ = this.§1#=§.y;
         this.§<"G§ = false;
         this.§!#6§ = §>!2§ / 160000 * param1;
         this.setAction(§"!Y§);
      }
      
      public function §'!T§() : void
      {
         var _loc1_:Number = (this.§3!L§.x - this.§1#=§.x) / 1.6;
         if(_loc1_ < §"#N§ * 1.2)
         {
            _loc1_ = §"#N§ * 1.2;
         }
         this.§^#9§ = this.§1#=§.x - _loc1_;
         this.§^!C§ = this.§3!L§.x + _loc1_;
         this.§;!b§ = Math.min(this.§3!L§.y,this.§1#=§.y) - §`"!§;
         this.§]!G§ = Math.max(this.§3!L§.y,this.§1#=§.y) + §`"!§;
         this.§;"M§ = (this.§3!L§.x + this.§1#=§.x) / 2;
         this.§,#@§ = (this.§3!L§.y + this.§1#=§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§2#G§ = null;
      }
      
      public function §4!b§(param1:§8!B§) : void
      {
         var _loc3_:§0!§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§<#I§)
         {
            _loc3_ = param1.§^#'§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§,!a§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§,"§(_loc3_);
            if(_loc4_ == §>"2§)
            {
               this.§1#=§ = new §""N§(_loc5_,_loc6_,_loc7_,true);
               this.§82§ = new §]"Q§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §?i§)
            {
               this.§3!L§ = new §""N§(_loc5_,_loc6_,_loc7_,false);
               this.§4"z§ = new §]"Q§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §,"§(param1:§0!§) : Number
      {
         var _loc2_:Number = §`"!§ / (param1.bottom - param1.top);
         var _loc3_:Number = §"#N§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §+#Y§(param1:§8!B§) : void
      {
         var _loc2_:§0!§ = new §0!§();
         _loc2_.id = §>"2§;
         _loc2_.x = this.§1#=§.x;
         _loc2_.y = this.§1#=§.y;
         var _loc3_:Number = §"#N§ / this.§1#=§.scale / 2;
         var _loc4_:Number = §`"!§ / this.§1#=§.scale / 2;
         _loc2_.left = this.§1#=§.x - _loc3_;
         _loc2_.right = this.§1#=§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§1#=§.scale;
         var _loc5_:§0!§;
         (_loc5_ = new §0!§()).id = §?i§;
         _loc5_.x = this.§3!L§.x;
         _loc5_.y = this.§3!L§.y;
         var _loc6_:Number = §"#N§ / this.§3!L§.scale / 2;
         var _loc7_:Number = §`"!§ / this.§3!L§.scale / 2;
         _loc5_.left = this.§3!L§.x - _loc6_;
         _loc5_.right = this.§3!L§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§3!L§.scale;
         param1.§[!=§();
         param1.§'!h§(_loc2_);
         param1.§'!h§(_loc5_);
      }
      
      public function §,!a§(param1:§0!§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §,!q§.§%N§ * 0.5 / _loc2_ * §#_§.§8]§;
         var _loc4_:Number = param1.y - §,!q§.§>#O§ * 0.5 / _loc2_ * §#_§.§8]§;
         var _loc5_:Number = _loc3_ + §,!q§.§%N§ / _loc2_ * §#_§.§8]§;
         var _loc6_:Number = _loc4_ + §,!q§.§>#O§ / _loc2_ * §#_§.§8]§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §6"q§(param1:§""N§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§!#6§;
         if(_loc3_ >= §>!2§)
         {
            _loc3_ = §>!2§;
            this.setAction(§`#+§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§`#+§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §@!N§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§!#6§;
         var _loc4_:Number = -§>!2§ * 0.7;
         if(_loc2_ >= §>!2§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §>!2§;
            }
            this.§!#6§ = -this.§!#6§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]!r§(param1:Number) : void
      {
         if(this.mCurrentAction == §"!Y§)
         {
            this.§@!N§(param1);
         }
         else if(this.mCurrentAction == §@#G§)
         {
            this.§6"q§(this.§3!L§,param1);
         }
         else if(this.mCurrentAction == §+!v§)
         {
            this.§6"q§(this.§1#=§,-param1);
         }
         else if(this.mCurrentAction == §[#H§)
         {
            this.§<"G§ = true;
         }
         else if(this.mCurrentAction == §>"?§)
         {
            this.§'"7§(param1);
         }
      }
      
      public function §"%§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§while§)
         {
            this.§="0§ = this.§while§.x;
            this.§`t§ = this.§while§.y;
            §>F§ = §"#N§ / (this.§while§.right - this.§while§.left);
         }
         else
         {
            this.§ o§();
            this.§]!r§(param1);
            if(Math.abs(this.§<#X§ - §,!q§.§6G§ / §,!q§.§!"N§) > 0.01)
            {
               param1 = 1000;
            }
            this.§8!q§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§,n§();
         this.§<#X§ = §,!q§.§6G§ / §,!q§.§!"N§;
      }
      
      private function §<#%§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§4"z§.x - this.§82§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§82§.scale + (this.§4"z§.scale - this.§82§.scale) * param1;
         var _loc4_:Number = this.§82§.x + (this.§4"z§.x - this.§82§.x) * param1;
         var _loc5_:Number = this.§82§.y + (this.§4"z§.y - this.§82§.y) * param1;
         this.§>8§.x -= (this.§>8§.x - _loc4_) * param2;
         this.§>8§.y -= (this.§>8§.y - _loc5_) * param2;
         this.§>8§.scale -= (this.§>8§.scale - _loc3_) * param2;
         this.§3!<§(this.§>8§);
      }
      
      protected function §"#=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§0T§ != 0)
         {
            if(!this.§<"G§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §>!2§;
            this.§<#%§(_loc3_,param2);
            this.§="0§ = this.§>8§.x;
            this.§`t§ = this.§>8§.y;
            §>F§ = this.§>8§.scale;
         }
      }
      
      private function §,"@§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§&#=§;
         var _loc5_:Number = (_loc4_ = this.§2#G§.levelObjects.activeObject).§'"8§();
         var _loc6_:Number = _loc4_.§;">§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§3!t§().GetLinearVelocity().x) > 0 && this.§0T§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§0T§ * §>!2§;
         }
         if(param1 >= §>!2§)
         {
            param1 = §>!2§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §>!2§;
         this.§<#%§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §,!q§.§6G§ / §,!q§.§!"N§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§>8§.x - §"#N§ / _loc9_ * 0.5 / this.§>8§.scale;
         var _loc11_:Number = this.§>8§.y - §`"!§ * 0.5 / this.§>8§.scale;
         var _loc12_:Number = this.§>8§.x + §"#N§ / _loc9_ * 0.5 / this.§>8§.scale;
         var _loc13_:Number = this.§>8§.y + §`"!§ * 0.5 / this.§>8§.scale;
         var _loc14_:Number = 150 * §#_§.§8]§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§^#9§,_loc15_);
         _loc17_ = Math.min(this.§^!C§,_loc17_);
         var _loc19_:Number = Math.abs(§"#N§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§`"!§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§>8§.scale)
         {
            _loc21_ = this.§>8§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §"#N§ / _loc9_ * 0.5 / _loc21_ > this.§^!C§)
         {
            _loc15_ = (_loc17_ = this.§^!C§) - §"#N§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§^#9§)
            {
               _loc15_ = this.§^#9§;
            }
         }
         if(_loc22_ - §"#N§ / _loc9_ * 0.5 / _loc21_ < this.§^#9§)
         {
            _loc17_ = (_loc15_ = this.§^#9§) + §"#N§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§^!C§)
            {
               _loc17_ = this.§^!C§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§"#N§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §`"!§ * 0.5 < this.§;!b§)
         {
            _loc23_ = this.§;!b§ + §`"!§ * 0.5;
         }
         if(_loc23_ + §`"!§ * 0.5 > this.§]!G§)
         {
            _loc23_ = this.§]!G§ - §`"!§ * 0.5;
         }
         this.§="0§ -= (this.§="0§ - _loc22_) * param3;
         this.§3V§ -= (this.§3V§ - _loc21_) * param3;
         §>F§ = this.§3V§;
         this.§`t§ -= (this.§`t§ - _loc23_) * param3;
         if(_loc5_ >= this.§^!C§ || _loc5_ <= this.§^#9§)
         {
            this.§>8§.scale = §>F§;
            this.§>8§.x = this.§="0§;
            this.§>8§.y = this.§`t§;
         }
      }
      
      protected function §8!q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §>!2§)
         {
            this.§<"G§ = true;
         }
         if(this.mCurrentAction == §[#H§)
         {
            if(!this.§2#G§.levelObjects.activeObject)
            {
               this.setAction(§@#G§);
               this.§]U§ = §>"<§;
            }
            else
            {
               this.§,"@§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§"#=§(param1,_loc4_);
         }
      }
      
      public function §3u§(param1:Number, param2:Number) : void
      {
         this.§2x§ = param1;
         this.§+"v§ = param2;
      }
      
      protected function §<c§(param1:§]"Q§, param2:§""N§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §,!q§.§6G§ / §,!q§.§!"N§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §<! § + (param2.scale - §<! §) * this.§'"2§;
         if(§"#N§ / param1.scale > (this.§^!C§ - this.§^#9§) * _loc3_)
         {
            _loc4_ = §"#N§ / ((this.§^!C§ - this.§^#9§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §+!"§(param1:§]"Q§, param2:§""N§) : Boolean
      {
         var _loc3_:Boolean = this.§<c§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§3!<§(param1);
         return _loc3_;
      }
      
      private function §3!<§(param1:§]"Q§) : void
      {
         var _loc2_:Number = §,!q§.§6G§ / §,!q§.§!"N§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §"#N§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§^#9§)
         {
            param1.x += this.§^#9§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §"#N§ / _loc2_ * 0.5 / param1.scale) > this.§^!C§)
         {
            param1.x += this.§^!C§ - _loc4_;
         }
      }
      
      private function §1m§(param1:§]"Q§, param2:§""N§) : Number
      {
         return (param1.scale - §<! §) / (param2.scale - §<! §);
      }
      
      protected function § o§() : void
      {
         this.§+!"§(this.§82§,this.§1#=§);
         var _loc1_:Number = this.§1m§(this.§82§,this.§1#=§);
         this.§+!"§(this.§4"z§,this.§3!L§);
         var _loc2_:Number = this.§1m§(this.§4"z§,this.§3!L§);
         this.§<%§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §,n§() : void
      {
         var _loc1_:Number = this.§="0§ / §#_§.§8]§ + this.§2x§;
         var _loc2_:Number = this.§`t§ / §#_§.§8]§ + this.§+"v§;
         var _loc3_:Number = §,!q§.§6G§;
         var _loc4_:Number = §,!q§.§!"N§;
         var _loc5_:Number = §#_§.§]#Q§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §#_§.§@#!§;
         this.§7"§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§+!p§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§7"§ += _loc5_ / 2 - _loc5_ / 2 / § #b§;
         this.§+!p§ += (_loc6_ / 2 - _loc6_ / 2 / § #b§) / (_loc3_ / _loc4_);
         this.§2#G§.setScreenOffset(this.§7"§,this.§+!p§,§ #b§);
      }
      
      protected function include() : void
      {
         this.setAction(§>"?§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§]U§ = -1;
         this.include();
         this.§@"E§ = this.§#?§ = this.§'"t§ = param1;
         this.§;!l§ = this.§^H§ = this.§8#7§ = param2;
         this.§""@§ = 0;
         this.§>8§.x = this.§="0§;
         this.§>8§.y = this.§`t§;
         this.§>8§.scale = §>F§;
         this.§3V§ = §>F§;
         if(Math.abs(this.§4"z§.x - this.§82§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§="0§ - this.§82§.x) / (this.§4"z§.x - this.§82§.x) * §>!2§;
         }
         this.mDragging = true;
      }
      
      public function §'"7§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§""@§ += param1;
         var _loc3_:Number = this.§@"E§ - this.§#?§;
         if(this.§0T§ > 0)
         {
            _loc2_ -= _loc3_ * §#_§.§8]§ / § #b§ / this.§0T§ * §>!2§;
            this.§<"G§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§<"G§ = true;
            }
            if(_loc2_ > §>!2§)
            {
               _loc2_ += (§>!2§ - _loc2_) * 0.3;
               this.§<"G§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§#?§ = this.§@"E§;
      }
      
      protected function §?#0§() : Boolean
      {
         return this.mCurrentAction == §>"?§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§@"E§ = param1;
            this.§;!l§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §>"?§)
         {
            this.setAction(§`#+§);
            if(param1 > 0)
            {
               this.§@"E§ = param1;
            }
            _loc3_ = Math.abs(this.§@"E§ - this.§'"t§);
            if(this.§""@§ < §5!u§ && _loc3_ >= § "%§ && _loc3_ >= §6x§ * this.§""@§ / 1000)
            {
               if(this.§@"E§ < this.§'"t§)
               {
                  this.setAction(§@#G§);
               }
               else
               {
                  this.setAction(§+!v§);
               }
               this.§!#6§ = _loc3_ / this.§""@§ * 10;
               this.§<"G§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§<"G§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §>!2§)
               {
                  this.§<"G§ = true;
               }
            }
            else if(this.§""@§ < §=!Y§)
            {
               this.§5#$§();
               this.§!#6§ = §>!2§ / (§>!2§ / 500);
               this.§<"G§ = true;
            }
            else
            {
               this.§'"7§(0);
               this.§>"H§(0);
               this.§!#6§ = §>!2§ / (§>!2§ / 500);
               this.§<"G§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §5#$§() : void
      {
         if(this.mCurrentAction == §@#G§)
         {
            this.setAction(§+!v§);
         }
         else if(this.mCurrentAction == §+!v§)
         {
            this.setAction(§@#G§);
         }
         else if(this.mCurrentCameraSliderLocation >= §>!2§ / 2)
         {
            this.setAction(§+!v§);
         }
         else if(this.mCurrentCameraSliderLocation <= §>!2§ / 2)
         {
            this.setAction(§@#G§);
         }
      }
      
      public function §>"H§(param1:int) : void
      {
         this.§]U§ = param1;
         if(this.mCurrentCameraSliderLocation < §>!2§ / 2)
         {
            this.setAction(§+!v§);
         }
         else
         {
            this.setAction(§@#G§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§+!v§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§@#G§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§>8§.x = this.§="0§;
         this.§>8§.y = this.§`t§;
         this.§>8§.scale = §>F§;
         this.§3V§ = §>F§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §>!2§)
         {
            return true;
         }
         if(this.mCurrentAction == §@#G§)
         {
            return true;
         }
         return false;
      }
      
      public function §!#M§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §+!v§)
         {
            return true;
         }
         return false;
      }
      
      public function §?"g§(param1:§0!§) : void
      {
         this.§while§ = param1;
         if(this.§while§ != null)
         {
            this.§&#2§ = new §0!§();
            this.§&#2§.x = this.§="0§;
            this.§&#2§.y = this.§`t§;
            this.§&#2§.scale = §>F§;
         }
         else
         {
            this.§="0§ = this.§&#2§.x;
            this.§`t§ = this.§&#2§.y;
            §>F§ = this.§&#2§.scale;
            this.§&#2§ = null;
         }
      }
      
      protected function §"!=§() : void
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
         var _loc3_:Number = this.§<%§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§^r§,Math.min(this.§7i§,_loc3_));
         if(_loc3_ != this.§<%§)
         {
            this.§<%§ = _loc3_;
         }
      }
      
      public function §=!L§() : Number
      {
         return (this.§'"2§ - this.§^r§) / (this.§7i§ - this.§^r§);
      }
      
      public function §+"&§(param1:Number) : void
      {
         this.§'"2§ = Math.min(Math.max(param1,0),1) * (this.§7i§ - this.§^r§) + this.§^r§;
      }
      
      public function §,"L§() : void
      {
         this.§<%§ = Math.max(this.§<%§ - 0.5,0.5);
      }
      
      public function §-!a§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§'"2§;
         _loc1_ += " mXcenterB2: " + this.§="0§;
         _loc1_ += " mYcenterB2: " + this.§`t§;
         _loc1_ += " mXcenterB2target: " + this.§'"2§;
         _loc1_ += "\n mYcenterB2target: " + this.§'"2§;
         _loc1_ += " mXcenterB2previous: " + this.§'"2§;
         _loc1_ += " mYcenterB2previous: " + this.§'"2§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§'"2§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§'"2§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§'"2§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§'"2§;
         _loc1_ += " mTargetScale: " + this.§'"2§;
         _loc1_ += " mTargetScalePrevious: " + this.§'"2§;
         _loc1_ += " mCastleCameraX: " + this.§'"2§;
         _loc1_ += "\n mCastleCameraY: " + this.§'"2§;
         _loc1_ += " mCastleCameraScale: " + this.§'"2§;
         _loc1_ += " mBirdCameraX: " + this.§'"2§;
         _loc1_ += " mBirdCameraY: " + this.§'"2§;
         _loc1_ += " mBirdCameraScale: " + this.§'"2§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§'"2§;
         _loc1_ += "mScreenOffsetYl: " + this.§'"2§;
         _loc1_ += " mDragging: " + this.§'"2§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§'"2§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§'"2§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§'"2§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§'"2§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§'"2§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§'"2§;
         _loc1_ += " mDraggingTimer: " + this.§'"2§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§'"2§;
         _loc1_ += " mCameraBorderRight: " + this.§'"2§;
         _loc1_ += "mCameraBorderTop: " + this.§'"2§;
         _loc1_ += "mCameraBorderBottom: " + this.§'"2§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§'"2§ + "\n ");
      }
      
      public function §?l§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
