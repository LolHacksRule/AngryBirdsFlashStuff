package §[r§
{
   import §""<§.§#N§;
   import §+!9§.§;0§;
   import §;!0§.§!!X§;
   import §;!0§.§2!4§;
   import §?!<§.§'!1§;
   import §[,§.§5,§;
   
   public class § use§
   {
      
      public static const §["#§:Number = 1.25;
      
      public static const §#!-§:Number = 0.15;
      
      public static const §7m§:Number = §;0§.§+g§ * §'!1§.§<!@§;
      
      public static const §2H§:Number = §;0§.§5+§ * §'!1§.§<!@§;
      
      public static const §5!D§:Number = 0.1;
      
      public static const §[">§:int = 1500;
      
      public static const §-!§:int = 10;
      
      public static const §1j§:int = 15;
      
      public static const §<!C§:int = 300;
      
      public static const §4h§:int = 1000;
      
      public static const §'N§:int = 10000;
      
      public static const §'e§:int = §'N§ / 50;
      
      public static const §@V§:int = 0;
      
      public static const §3!'§:int = 1;
      
      public static const §'!t§:int = 2;
      
      public static const §`"E§:int = 3;
      
      public static const §;!Z§:int = 4;
      
      public static const §@!_§:int = 5;
      
      public static const §-S§:String = §2!4§.CASTLE;
      
      public static const §["A§:String = §2!4§.SLINGSHOT;
      
      protected static var §-"0§:Number;
      
      public static const §+;§:Number = 2000;
       
      
      private var §`"9§:Number = 1.0;
      
      private var §3!0§:Number = 0.2;
      
      protected var §+q§:Number;
      
      protected var §>"B§:Number;
      
      protected var §3!Z§:Number;
      
      public var §1!3§:§'!1§;
      
      public var §>>§:Number;
      
      public var §6!2§:Number;
      
      private var §<<§:§-&§;
      
      private var §2!V§:§-&§;
      
      protected var §0!D§:Number;
      
      protected var §2a§:Number;
      
      protected var §2"8§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §;_§:Number;
      
      protected var §!v§:Number;
      
      protected var §&!;§:Number;
      
      protected var §0!§:Number;
      
      protected var §0e§:Number;
      
      protected var §"E§:Number;
      
      private var §9!P§:§]!W§;
      
      private var §@v§:§]!W§;
      
      protected var §4!2§:Number = 0;
      
      protected var §0!W§:Number = 0;
      
      protected var §'"H§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §4!L§:Number = 0;
      
      public var §?!q§:Boolean = true;
      
      public var § !p§:Number = 0;
      
      public var §^u§:Number = 0;
      
      public var §-t§:Number = 0;
      
      public var §;B§:Number = 0;
      
      public var §continue§:Number = 0;
      
      public var §=9§:Number = 0;
      
      public var §"d§:Number = 0;
      
      public var §0"$§:Number = 0;
      
      public var §7"E§:Number = 0;
      
      private var §<!t§:§]!W§;
      
      public var §%!E§:Number = 0;
      
      private var §7h§:Number = 0;
      
      private var §2u§:Number = 0;
      
      private var §?"'§:§2!4§ = null;
      
      private var §!"4§:§2!4§ = null;
      
      public function § use§(param1:§'!1§, param2:§!!X§, param3:Number = 1.0)
      {
         this.§<!t§ = new §]!W§(0,0,1,false);
         super();
         this.§>"B§ = 0;
         this.§3!Z§ = 0;
         this.§1!3§ = param1;
         § use§.§-"0§ = 1;
         this.§`"9§ = Math.max(1,Math.min(2,param3));
         this.§+q§ = this.§[!5§;
         this.§""!§(param2);
         if(this.§<<§ && this.§2!V§)
         {
            this.§ !R§();
            this.§4!2§ = this.§<<§.x - this.§2!V§.x;
            this.§0!W§ = this.§<<§.y - this.§2!V§.y;
            this.§'"H§ = this.§<<§.scale - this.§2!V§.scale;
            this.§>"B§ = this.§<<§.x;
            this.§3!Z§ = this.§<<§.y;
            §-"0§ = this.§<<§.scale * this.§+q§;
         }
         this.mCurrentCameraSliderLocation = §'N§;
         this.§?!q§ = true;
         this.§4!L§ = §'N§ / 500;
      }
      
      public static function get §#!;§() : Number
      {
         var _loc1_:Number = §;0§.§@'§ / §;0§.§6[§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §-"0§ * _loc1_ * _loc1_;
      }
      
      public function get §]u§() : Number
      {
         return this.§+q§;
      }
      
      public function set §]u§(param1:Number) : void
      {
         this.§+q§ = param1;
      }
      
      public function §+r§() : Number
      {
         return §7m§ / (this.§0!§ - this.§&!;§);
      }
      
      public function get §[!5§() : Number
      {
         var _loc1_:Number = §;0§.§@'§ / §;0§.§6[§;
         return this.§`"9§ / _loc1_;
      }
      
      public function get §'!f§() : Number
      {
         return this.§3!0§;
      }
      
      public function get §,J§() : Number
      {
         return this.§0!D§;
      }
      
      public function get §9"+§() : Number
      {
         return this.§2a§;
      }
      
      public function get §0_§() : Number
      {
         return this.§&!;§;
      }
      
      public function get § !d§() : Number
      {
         return this.§0!§;
      }
      
      public function get §&g§() : Number
      {
         return this.§;_§;
      }
      
      public function get §`!`§() : Number
      {
         return this.§!v§;
      }
      
      public function get § !7§() : Number
      {
         return this.§0!§ - this.§&!;§;
      }
      
      public function §@!x§(param1:Number) : void
      {
         this.§+q§ = param1;
         this.§3k§();
         this.§'!w§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@!_§)
         {
            return;
         }
         this.goToCastleView();
         this.§ !p§ = 2000;
         this.§2!Q§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§>"B§ = this.§2!V§.x;
         this.§3!Z§ = this.§2!V§.y;
         this.§?!q§ = false;
         this.§4!L§ = §'N§ / 160000 * param1;
         this.§`4§(§@!_§);
      }
      
      public function § !R§() : void
      {
         var _loc1_:Number = (this.§<<§.x - this.§2!V§.x) / 1.6;
         if(_loc1_ < §7m§ * 1.2)
         {
            _loc1_ = §7m§ * 1.2;
         }
         this.§&!;§ = this.§2!V§.x - _loc1_;
         this.§0!§ = this.§<<§.x + _loc1_;
         this.§0e§ = Math.min(this.§<<§.y,this.§2!V§.y) - §2H§;
         this.§"E§ = Math.max(this.§<<§.y,this.§2!V§.y) + §2H§;
         this.§;_§ = (this.§<<§.x + this.§2!V§.x) / 2;
         this.§!v§ = (this.§<<§.y + this.§2!V§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§1!3§ = null;
      }
      
      public function §""!§(param1:§!!X§) : void
      {
         var _loc3_:§2!4§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§ +§)
         {
            _loc3_ = param1.§4"!§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§5!1§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §["A§)
            {
               this.§2!V§ = new §-&§(_loc5_,_loc6_,_loc7_,true);
               this.§@v§ = new §]!W§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §-S§)
            {
               this.§<<§ = new §-&§(_loc5_,_loc6_,_loc7_,false);
               this.§9!P§ = new §]!W§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §#N§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§2!4§) : Number
      {
         var _loc2_:Number = §2H§ / (param1.bottom - param1.top);
         var _loc3_:Number = §7m§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function writeCameraInformation(param1:§!!X§) : void
      {
         var _loc2_:§2!4§ = new §2!4§();
         _loc2_.id = §["A§;
         _loc2_.x = this.§2!V§.x;
         _loc2_.y = this.§2!V§.y;
         var _loc3_:Number = §7m§ / this.§2!V§.scale / 2;
         var _loc4_:Number = §2H§ / this.§2!V§.scale / 2;
         _loc2_.left = this.§2!V§.x - _loc3_;
         _loc2_.right = this.§2!V§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§2!4§;
         (_loc5_ = new §2!4§()).id = §-S§;
         _loc5_.x = this.§<<§.x;
         _loc5_.y = this.§<<§.y;
         var _loc6_:Number = §7m§ / this.§<<§.scale / 2;
         var _loc7_:Number = §2H§ / this.§<<§.scale / 2;
         _loc5_.left = this.§<<§.x - _loc6_;
         _loc5_.right = this.§<<§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§<"$§();
         param1.§^!'§(_loc2_);
         param1.§^!'§(_loc5_);
      }
      
      public function §5!1§(param1:§2!4§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §;0§.§+g§ * 0.5 / _loc2_ * §'!1§.§<!@§;
         var _loc4_:Number = param1.y - §;0§.§5+§ * 0.5 / _loc2_ * §'!1§.§<!@§;
         var _loc5_:Number = _loc3_ + §;0§.§+g§ / _loc2_ * §'!1§.§<!@§;
         var _loc6_:Number = _loc4_ + §;0§.§5+§ / _loc2_ * §'!1§.§<!@§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §@!b§(param1:§-&§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§4!L§;
         if(_loc3_ >= §'N§)
         {
            _loc3_ = §'N§;
            this.§`4§(§@V§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§`4§(§@V§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §<!F§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§4!L§;
         var _loc4_:Number = -§'N§ * 0.7;
         if(_loc2_ >= §'N§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §'N§;
            }
            this.§4!L§ = -this.§4!L§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §;g§(param1:Number) : void
      {
         if(this.mCurrentAction == §@!_§)
         {
            this.§<!F§(param1);
         }
         else if(this.mCurrentAction == §3!'§)
         {
            this.§@!b§(this.§<<§,param1);
         }
         else if(this.mCurrentAction == §'!t§)
         {
            this.§@!b§(this.§2!V§,-param1);
         }
         else if(this.mCurrentAction == §`"E§)
         {
            this.§?!q§ = true;
         }
         else if(this.mCurrentAction == §;!Z§)
         {
            this.§?R§(param1);
         }
      }
      
      public function §&;§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§?"'§)
         {
            this.§>"B§ = this.§?"'§.x;
            this.§3!Z§ = this.§?"'§.y;
            §-"0§ = §7m§ / (this.§?"'§.right - this.§?"'§.left);
         }
         else
         {
            this.§3k§();
            this.§;g§(param1);
            if(Math.abs(this.§2"8§ - §;0§.§@'§ / §;0§.§6[§) > 0.01)
            {
               param1 = 1000;
            }
            this.§7P§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§2!Q§();
         this.§2"8§ = §;0§.§@'§ / §;0§.§6[§;
      }
      
      private function §%!b§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§9!P§.x - this.§@v§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§@v§.scale + (this.§9!P§.scale - this.§@v§.scale) * param1;
         var _loc4_:Number = this.§@v§.x + (this.§9!P§.x - this.§@v§.x) * param1;
         var _loc5_:Number = this.§@v§.y + (this.§9!P§.y - this.§@v§.y) * param1;
         this.§<!t§.x -= (this.§<!t§.x - _loc4_) * param2;
         this.§<!t§.y -= (this.§<!t§.y - _loc5_) * param2;
         this.§<!t§.scale -= (this.§<!t§.scale - _loc3_) * param2;
      }
      
      protected function §'!w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4!2§ != 0)
         {
            if(!this.§?!q§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §'N§;
            this.§%!b§(_loc3_,param2);
            this.§>"B§ = this.§<!t§.x;
            this.§3!Z§ = this.§<!t§.y;
            §-"0§ = this.§<!t§.scale;
         }
      }
      
      private function §-!3§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§5,§;
         var _loc5_:Number = (_loc4_ = this.§1!3§.levelObjects.activeObject).§%p§();
         var _loc6_:Number = _loc4_.§%!!§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§ <§().GetLinearVelocity().x) > 0 && this.§4!2§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§4!2§ * §'N§;
         }
         if(param1 >= §'N§)
         {
            param1 = §'N§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §'N§;
         this.§%!b§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §;0§.§@'§ / §;0§.§6[§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§<!t§.x - §7m§ / _loc9_ * 0.5 / this.§<!t§.scale;
         var _loc11_:Number = this.§<!t§.y - §2H§ * 0.5 / this.§<!t§.scale;
         var _loc12_:Number = this.§<!t§.x + §7m§ / _loc9_ * 0.5 / this.§<!t§.scale;
         var _loc13_:Number = this.§<!t§.y + §2H§ * 0.5 / this.§<!t§.scale;
         var _loc14_:Number = 150 * §'!1§.§<!@§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§&!;§,_loc15_);
         _loc17_ = Math.min(this.§0!§,_loc17_);
         var _loc19_:Number = Math.abs(§7m§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§2H§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§<!t§.scale)
         {
            _loc21_ = this.§<!t§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §7m§ / _loc9_ * 0.5 / _loc21_ > this.§0!§)
         {
            _loc15_ = (_loc17_ = this.§0!§) - §7m§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§&!;§)
            {
               _loc15_ = this.§&!;§;
            }
         }
         if(_loc22_ - §7m§ / _loc9_ * 0.5 / _loc21_ < this.§&!;§)
         {
            _loc17_ = (_loc15_ = this.§&!;§) + §7m§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§0!§)
            {
               _loc17_ = this.§0!§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§7m§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §2H§ * 0.5 < this.§0e§)
         {
            _loc23_ = this.§0e§ + §2H§ * 0.5;
         }
         if(_loc23_ + §2H§ * 0.5 > this.§"E§)
         {
            _loc23_ = this.§"E§ - §2H§ * 0.5;
         }
         this.§>"B§ -= (this.§>"B§ - _loc22_) * param3;
         this.§%!E§ -= (this.§%!E§ - _loc21_) * param3;
         §-"0§ = this.§%!E§;
         this.§3!Z§ -= (this.§3!Z§ - _loc23_) * param3;
         if(_loc5_ >= this.§0!§ || _loc5_ <= this.§&!;§)
         {
            this.§<!t§.scale = §-"0§;
            this.§<!t§.x = this.§>"B§;
            this.§<!t§.y = this.§3!Z§;
         }
      }
      
      public function §7P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §'N§)
         {
            this.§?!q§ = true;
         }
         if(this.mCurrentAction == §`"E§)
         {
            if(!this.§1!3§.levelObjects.activeObject)
            {
               this.§`4§(§3!'§);
               this.§7"E§ = §4h§;
            }
            else
            {
               this.§-!3§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§'!w§(param1,_loc4_);
         }
      }
      
      public function §&%§(param1:Number, param2:Number) : void
      {
         this.§7h§ = param1;
         this.§2u§ = param2;
      }
      
      private function §>!t§(param1:§]!W§, param2:§-&§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §;0§.§@'§ / §;0§.§6[§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §#!-§ + (param2.scale - §#!-§) * this.§]u§;
         if(§7m§ / param1.scale > (this.§0!§ - this.§&!;§) * _loc3_)
         {
            _loc4_ = §7m§ / ((this.§0!§ - this.§&!;§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §["!§(param1:§]!W§, param2:§-&§) : Boolean
      {
         var _loc3_:Boolean = this.§>!t§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §;0§.§@'§ / §;0§.§6[§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §7m§ / _loc4_ * 0.5 / param1.scale) < this.§&!;§ && param1.§#5§)
         {
            param1.x += this.§&!;§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §7m§ / _loc4_ * 0.5 / param1.scale) > this.§0!§ && !param1.§#5§)
         {
            param1.x += this.§0!§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §7!V§(param1:§]!W§, param2:§-&§) : Number
      {
         return (param1.scale - §#!-§) / (param2.scale - §#!-§);
      }
      
      protected function §3k§() : void
      {
         this.§["!§(this.§@v§,this.§2!V§);
         var _loc1_:Number = this.§7!V§(this.§@v§,this.§2!V§);
         this.§["!§(this.§9!P§,this.§<<§);
         var _loc2_:Number = this.§7!V§(this.§9!P§,this.§<<§);
         this.§+q§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §2!Q§() : void
      {
         var _loc1_:Number = this.§>"B§ / §'!1§.§<!@§ + this.§7h§;
         var _loc2_:Number = this.§3!Z§ / §'!1§.§<!@§ + this.§2u§;
         var _loc3_:Number = §;0§.§@'§;
         var _loc4_:Number = §;0§.§6[§;
         var _loc5_:Number = §'!1§.§,o§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §'!1§.§3"?§;
         this.§0!D§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§2a§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§0!D§ += _loc5_ / 2 - _loc5_ / 2 / §#!;§;
         this.§2a§ += (_loc6_ / 2 - _loc6_ / 2 / §#!;§) / (_loc3_ / _loc4_);
         this.§1!3§.setScreenOffset(this.§0!D§,this.§2a§,§#!;§);
      }
      
      protected function §+c§() : void
      {
         this.§`4§(§;!Z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7"E§ = -1;
         this.§+c§();
         this.§continue§ = this.§"d§ = this.§-t§ = param1;
         this.§=9§ = this.§0"$§ = this.§;B§ = param2;
         this.§^u§ = 0;
         this.§<!t§.x = this.§>"B§;
         this.§<!t§.y = this.§3!Z§;
         this.§<!t§.scale = §-"0§;
         this.§%!E§ = §-"0§;
         if(Math.abs(this.§9!P§.x - this.§@v§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§>"B§ - this.§@v§.x) / (this.§9!P§.x - this.§@v§.x) * §'N§;
         }
         this.mDragging = true;
      }
      
      public function §?R§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§^u§ += param1;
         var _loc3_:Number = this.§continue§ - this.§"d§;
         if(this.§4!2§ > 0)
         {
            _loc2_ -= _loc3_ * §'!1§.§<!@§ / §#!;§ / this.§4!2§ * §'N§;
            this.§?!q§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§?!q§ = true;
            }
            if(_loc2_ > §'N§)
            {
               _loc2_ += (§'N§ - _loc2_) * 0.3;
               this.§?!q§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"d§ = this.§continue§;
      }
      
      protected function § !G§() : Boolean
      {
         return this.mCurrentAction == §;!Z§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§continue§ = param1;
            this.§=9§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;!Z§)
         {
            this.§`4§(§@V§);
            if(param1 > 0)
            {
               this.§continue§ = param1;
            }
            _loc3_ = Math.abs(this.§continue§ - this.§-t§);
            if(this.§^u§ < §[">§ && _loc3_ >= §-!§ && _loc3_ >= §1j§ * this.§^u§ / 1000)
            {
               if(this.§continue§ < this.§-t§)
               {
                  this.§`4§(§3!'§);
               }
               else
               {
                  this.§`4§(§'!t§);
               }
               this.§4!L§ = _loc3_ / this.§^u§ * 10;
               this.§?!q§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§?!q§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §'N§)
               {
                  this.§?!q§ = true;
               }
            }
            else if(this.§^u§ < §<!C§)
            {
               this.§"!T§();
               this.§4!L§ = §'N§ / (§'N§ / 500);
               this.§?!q§ = true;
            }
            else
            {
               this.§?R§(0);
               this.§2!`§(0);
               this.§4!L§ = §'N§ / (§'N§ / 500);
               this.§?!q§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"!T§() : void
      {
         if(this.mCurrentAction == §3!'§)
         {
            this.§`4§(§'!t§);
         }
         else if(this.mCurrentAction == §'!t§)
         {
            this.§`4§(§3!'§);
         }
         else if(this.mCurrentCameraSliderLocation >= §'N§ / 2)
         {
            this.§`4§(§'!t§);
         }
         else if(this.mCurrentCameraSliderLocation <= §'N§ / 2)
         {
            this.§`4§(§3!'§);
         }
      }
      
      public function §2!`§(param1:int) : void
      {
         this.§7"E§ = param1;
         if(this.mCurrentCameraSliderLocation < §'N§ / 2)
         {
            this.§`4§(§'!t§);
         }
         else
         {
            this.§`4§(§3!'§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§`4§(§'!t§);
      }
      
      public function goToCastleView() : void
      {
         this.§`4§(§3!'§);
      }
      
      public function §`4§(param1:int) : void
      {
         this.§<!t§.x = this.§>"B§;
         this.§<!t§.y = this.§3!Z§;
         this.§<!t§.scale = §-"0§;
         this.§%!E§ = §-"0§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §'N§)
         {
            return true;
         }
         if(this.mCurrentAction == §3!'§)
         {
            return true;
         }
         return false;
      }
      
      public function §>s§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §'!t§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!'§(param1:§2!4§) : void
      {
         this.§?"'§ = param1;
         if(this.§?"'§ != null)
         {
            this.§!"4§ = new §2!4§();
            this.§!"4§.x = this.§>"B§;
            this.§!"4§.y = this.§3!Z§;
            this.§!"4§.scale = §-"0§;
         }
         else
         {
            this.§>"B§ = this.§!"4§.x;
            this.§3!Z§ = this.§!"4§.y;
            §-"0§ = this.§!"4§.scale;
            this.§!"4§ = null;
         }
      }
      
      protected function §80§() : void
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
         var _loc3_:Number = this.§+q§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§'!f§,Math.min(this.§[!5§,_loc3_));
         if(_loc3_ != this.§+q§)
         {
            this.§+q§ = _loc3_;
         }
      }
      
      public function §!$§() : Number
      {
         return (this.§]u§ - this.§'!f§) / (this.§[!5§ - this.§'!f§);
      }
      
      public function §6W§(param1:Number) : void
      {
         this.§]u§ = Math.min(Math.max(param1,0),1) * (this.§[!5§ - this.§'!f§) + this.§'!f§;
      }
      
      public function §[!q§() : void
      {
         this.§+q§ = Math.max(this.§+q§ - 0.5,0.5);
      }
      
      public function §#!z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§]u§;
         _loc1_ += " mXcenterB2: " + this.§>"B§;
         _loc1_ += " mYcenterB2: " + this.§3!Z§;
         _loc1_ += " mXcenterB2target: " + this.§]u§;
         _loc1_ += "\n mYcenterB2target: " + this.§]u§;
         _loc1_ += " mXcenterB2previous: " + this.§]u§;
         _loc1_ += " mYcenterB2previous: " + this.§]u§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§]u§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§]u§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§]u§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§]u§;
         _loc1_ += " mTargetScale: " + this.§]u§;
         _loc1_ += " mTargetScalePrevious: " + this.§]u§;
         _loc1_ += " mCastleCameraX: " + this.§]u§;
         _loc1_ += "\n mCastleCameraY: " + this.§]u§;
         _loc1_ += " mCastleCameraScale: " + this.§]u§;
         _loc1_ += " mBirdCameraX: " + this.§]u§;
         _loc1_ += " mBirdCameraY: " + this.§]u§;
         _loc1_ += " mBirdCameraScale: " + this.§]u§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§]u§;
         _loc1_ += "mScreenOffsetYl: " + this.§]u§;
         _loc1_ += " mDragging: " + this.§]u§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§]u§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§]u§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§]u§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§]u§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§]u§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§]u§;
         _loc1_ += " mDraggingTimer: " + this.§]u§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§]u§;
         _loc1_ += " mCameraBorderRight: " + this.§]u§;
         _loc1_ += "mCameraBorderTop: " + this.§]u§;
         _loc1_ += "mCameraBorderBottom: " + this.§]u§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§]u§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
