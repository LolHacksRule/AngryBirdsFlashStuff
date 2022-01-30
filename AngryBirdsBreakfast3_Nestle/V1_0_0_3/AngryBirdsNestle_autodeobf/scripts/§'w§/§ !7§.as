package §'w§
{
   import §"!-§.§[-§;
   import §=!7§.§1!7§;
   import §>!a§.§-?§;
   import §>!a§.§0!t§;
   import §@"1§.§"h§;
   import com.angrybirds.§4!l§;
   
   public class § !7§
   {
      
      public static const § !E§:Number = 1.25;
      
      public static const §&4§:Number = 0.15;
      
      public static const §%y§:Number = §4!l§.§^!z§ * §"h§.§4<§;
      
      public static const §3P§:Number = §4!l§.§^!y§ * §"h§.§4<§;
      
      public static const §"!N§:Number = 0.1;
      
      public static const §2!6§:int = 1500;
      
      public static const §@!,§:int = 10;
      
      public static const §%!<§:int = 15;
      
      public static const §[!a§:int = 300;
      
      public static const §"!,§:int = 1000;
      
      public static const §8x§:int = 10000;
      
      public static const §^^§:int = §8x§ / 50;
      
      public static const §;p§:int = 0;
      
      public static const §?"+§:int = 1;
      
      public static const §"v§:int = 2;
      
      public static const §@#§:int = 3;
      
      public static const §9f§:int = 4;
      
      public static const §5!F§:int = 5;
      
      public static const §?M§:String = §0!t§.CASTLE;
      
      public static const §`!f§:String = §0!t§.SLINGSHOT;
      
      protected static var §7!D§:Number;
      
      public static const §7v§:Number = 2000;
       
      
      private var §#!m§:Number = 1.0;
      
      private var §3<§:Number = 0.2;
      
      protected var §?C§:Number;
      
      protected var §`m§:Number;
      
      protected var §"!p§:Number;
      
      public var §`W§:§"h§;
      
      public var §9"1§:Number;
      
      public var §>!G§:Number;
      
      private var §+l§:§0"0§;
      
      private var §&!S§:§0"0§;
      
      protected var §^"1§:Number;
      
      protected var §=_§:Number;
      
      protected var §?!0§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §;""§:Number;
      
      protected var §?s§:Number;
      
      protected var §5I§:Number;
      
      protected var §5!<§:Number;
      
      protected var §55§:Number;
      
      protected var §[!K§:Number;
      
      private var §0q§:§5!_§;
      
      private var §,!u§:§5!_§;
      
      protected var §^l§:Number = 0;
      
      protected var §8<§:Number = 0;
      
      protected var §'e§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&l§:Number = 0;
      
      public var §6!d§:Boolean = true;
      
      public var §<"0§:Number = 0;
      
      public var §?!;§:Number = 0;
      
      public var §+2§:Number = 0;
      
      public var §6!"§:Number = 0;
      
      public var § $§:Number = 0;
      
      public var §;!;§:Number = 0;
      
      public var §3!r§:Number = 0;
      
      public var §=Y§:Number = 0;
      
      public var §4B§:Number = 0;
      
      private var §@%§:§5!_§;
      
      public var §`5§:Number = 0;
      
      private var §+f§:Number = 0;
      
      private var §99§:Number = 0;
      
      private var §7!G§:§0!t§ = null;
      
      private var §#!+§:§0!t§ = null;
      
      public function § !7§(param1:§"h§, param2:§-?§, param3:Number = 1.0)
      {
         this.§@%§ = new §5!_§(0,0,1,false);
         super();
         this.§`m§ = 0;
         this.§"!p§ = 0;
         this.§`W§ = param1;
         § !7§.§7!D§ = 1;
         this.§#!m§ = Math.max(1,Math.min(2,param3));
         this.§?C§ = this.§^!@§;
         this.§'6§(param2);
         if(this.§+l§ && this.§&!S§)
         {
            this.§0!5§();
            this.§^l§ = this.§+l§.x - this.§&!S§.x;
            this.§8<§ = this.§+l§.y - this.§&!S§.y;
            this.§'e§ = this.§+l§.scale - this.§&!S§.scale;
            this.§`m§ = this.§+l§.x;
            this.§"!p§ = this.§+l§.y;
            §7!D§ = this.§+l§.scale * this.§?C§;
         }
         this.mCurrentCameraSliderLocation = §8x§;
         this.§6!d§ = true;
         this.§&l§ = §8x§ / 500;
      }
      
      public static function get §'!?§() : Number
      {
         var _loc1_:Number = §4!l§.§[j§ / §4!l§.§@!9§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §7!D§ * _loc1_ * _loc1_;
      }
      
      public function get §+Y§() : Number
      {
         return this.§?C§;
      }
      
      public function set §+Y§(param1:Number) : void
      {
         this.§?C§ = param1;
      }
      
      public function §-!N§() : Number
      {
         return §%y§ / (this.§5!<§ - this.§5I§);
      }
      
      public function get §^!@§() : Number
      {
         var _loc1_:Number = §4!l§.§[j§ / §4!l§.§@!9§;
         return this.§#!m§ / _loc1_;
      }
      
      public function get §`"&§() : Number
      {
         return this.§3<§;
      }
      
      public function get §?"-§() : Number
      {
         return this.§^"1§;
      }
      
      public function get §9M§() : Number
      {
         return this.§=_§;
      }
      
      public function get §"G§() : Number
      {
         return this.§5I§;
      }
      
      public function get §^m§() : Number
      {
         return this.§5!<§;
      }
      
      public function get §-!z§() : Number
      {
         return this.§;""§;
      }
      
      public function get §+G§() : Number
      {
         return this.§?s§;
      }
      
      public function get §+X§() : Number
      {
         return this.§5!<§ - this.§5I§;
      }
      
      protected function get §#!6§() : §0"0§
      {
         return this.§+l§;
      }
      
      public function §@!-§(param1:Number) : void
      {
         this.§?C§ = param1;
         this.§-!%§();
         this.§^H§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §5!F§)
         {
            return;
         }
         this.goToCastleView();
         this.§<"0§ = 2000;
         this.§#!X§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§`m§ = this.§&!S§.x;
         this.§"!p§ = this.§&!S§.y;
         this.§6!d§ = false;
         this.§&l§ = §8x§ / 160000 * param1;
         this.§4D§(§5!F§);
      }
      
      public function §0!5§() : void
      {
         var _loc1_:Number = (this.§+l§.x - this.§&!S§.x) / 1.6;
         if(_loc1_ < §%y§ * 1.2)
         {
            _loc1_ = §%y§ * 1.2;
         }
         this.§5I§ = this.§&!S§.x - _loc1_;
         this.§5!<§ = this.§+l§.x + _loc1_;
         this.§55§ = Math.min(this.§+l§.y,this.§&!S§.y) - §3P§;
         this.§[!K§ = Math.max(this.§+l§.y,this.§&!S§.y) + §3P§;
         this.§;""§ = (this.§+l§.x + this.§&!S§.x) / 2;
         this.§?s§ = (this.§+l§.y + this.§&!S§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§`W§ = null;
      }
      
      public function §'6§(param1:§-?§) : void
      {
         var _loc3_:§0!t§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§""#§)
         {
            _loc3_ = param1.§4![§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§6@§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §`!f§)
            {
               this.§&!S§ = new §0"0§(_loc5_,_loc6_,_loc7_,true);
               this.§,!u§ = new §5!_§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §?M§)
            {
               this.§+l§ = new §0"0§(_loc5_,_loc6_,_loc7_,false);
               this.§0q§ = new §5!_§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §1!7§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§0!t§) : Number
      {
         var _loc2_:Number = §3P§ / (param1.bottom - param1.top);
         var _loc3_:Number = §%y§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §?%§(param1:§-?§) : void
      {
         var _loc2_:§0!t§ = new §0!t§();
         _loc2_.id = §`!f§;
         _loc2_.x = this.§&!S§.x;
         _loc2_.y = this.§&!S§.y;
         var _loc3_:Number = §%y§ / this.§&!S§.scale / 2;
         var _loc4_:Number = §3P§ / this.§&!S§.scale / 2;
         _loc2_.left = this.§&!S§.x - _loc3_;
         _loc2_.right = this.§&!S§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §3P§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §%y§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§0!t§;
         (_loc7_ = new §0!t§()).id = §?M§;
         _loc7_.x = this.§+l§.x;
         _loc7_.y = this.§+l§.y;
         var _loc8_:Number = §%y§ / this.§+l§.scale / 2;
         var _loc9_:Number = §3P§ / this.§+l§.scale / 2;
         _loc7_.left = this.§+l§.x - _loc8_;
         _loc7_.right = this.§+l§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §3P§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §%y§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§@!k§();
         param1.§=!1§(_loc2_);
         param1.§=!1§(_loc7_);
      }
      
      public function §6@§(param1:§0!t§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §4!l§.§^!z§ * 0.5 / _loc2_ * §"h§.§4<§;
         var _loc4_:Number = param1.y - §4!l§.§^!y§ * 0.5 / _loc2_ * §"h§.§4<§;
         var _loc5_:Number = _loc3_ + §4!l§.§^!z§ / _loc2_ * §"h§.§4<§;
         var _loc6_:Number = _loc4_ + §4!l§.§^!y§ / _loc2_ * §"h§.§4<§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §[8§(param1:§0"0§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&l§;
         if(_loc3_ >= §8x§)
         {
            _loc3_ = §8x§;
            this.§4D§(§;p§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§4D§(§;p§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §%!W§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&l§;
         var _loc4_:Number = -§8x§ * 0.7;
         if(_loc2_ >= §8x§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §8x§;
            }
            this.§&l§ = -this.§&l§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §9k§(param1:Number) : void
      {
         if(this.mCurrentAction == §5!F§)
         {
            this.§%!W§(param1);
         }
         else if(this.mCurrentAction == §?"+§)
         {
            this.§[8§(this.§+l§,param1);
         }
         else if(this.mCurrentAction == §"v§)
         {
            this.§[8§(this.§&!S§,-param1);
         }
         else if(this.mCurrentAction == §@#§)
         {
            this.§6!d§ = true;
         }
         else if(this.mCurrentAction == §9f§)
         {
            this.§9K§(param1);
         }
      }
      
      public function §-!&§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§7!G§)
         {
            this.§`m§ = this.§7!G§.x;
            this.§"!p§ = this.§7!G§.y;
            §7!D§ = §%y§ / (this.§7!G§.right - this.§7!G§.left);
         }
         else
         {
            this.§-!%§();
            this.§9k§(param1);
            if(Math.abs(this.§?!0§ - §4!l§.§[j§ / §4!l§.§@!9§) > 0.01)
            {
               param1 = 1000;
            }
            this.§=!f§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§#!X§();
         this.§?!0§ = §4!l§.§[j§ / §4!l§.§@!9§;
      }
      
      private function §78§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§0q§.x - this.§,!u§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§,!u§.scale + (this.§0q§.scale - this.§,!u§.scale) * param1;
         var _loc4_:Number = this.§,!u§.x + (this.§0q§.x - this.§,!u§.x) * param1;
         var _loc5_:Number = this.§,!u§.y + (this.§0q§.y - this.§,!u§.y) * param1;
         this.§@%§.x -= (this.§@%§.x - _loc4_) * param2;
         this.§@%§.y -= (this.§@%§.y - _loc5_) * param2;
         this.§@%§.scale -= (this.§@%§.scale - _loc3_) * param2;
      }
      
      protected function §^H§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§^l§ != 0)
         {
            if(!this.§6!d§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §8x§;
            this.§78§(_loc3_,param2);
            this.§`m§ = this.§@%§.x;
            this.§"!p§ = this.§@%§.y;
            §7!D§ = this.§@%§.scale;
         }
      }
      
      private function §0"3§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§[-§;
         var _loc5_:Number = (_loc4_ = this.§`W§.levelObjects.activeObject).§@w§();
         var _loc6_:Number = _loc4_.§4!Z§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§9l§().GetLinearVelocity().x) > 0 && this.§^l§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§^l§ * §8x§;
         }
         if(param1 >= §8x§)
         {
            param1 = §8x§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §8x§;
         this.§78§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §4!l§.§[j§ / §4!l§.§@!9§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§@%§.x - §%y§ / _loc9_ * 0.5 / this.§@%§.scale;
         var _loc11_:Number = this.§@%§.y - §3P§ * 0.5 / this.§@%§.scale;
         var _loc12_:Number = this.§@%§.x + §%y§ / _loc9_ * 0.5 / this.§@%§.scale;
         var _loc13_:Number = this.§@%§.y + §3P§ * 0.5 / this.§@%§.scale;
         var _loc14_:Number = 150 * §"h§.§4<§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§5I§,_loc15_);
         _loc17_ = Math.min(this.§5!<§,_loc17_);
         var _loc19_:Number = Math.abs(§%y§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§3P§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§@%§.scale)
         {
            _loc21_ = this.§@%§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §%y§ / _loc9_ * 0.5 / _loc21_ > this.§5!<§)
         {
            _loc15_ = (_loc17_ = this.§5!<§) - §%y§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§5I§)
            {
               _loc15_ = this.§5I§;
            }
         }
         if(_loc22_ - §%y§ / _loc9_ * 0.5 / _loc21_ < this.§5I§)
         {
            _loc17_ = (_loc15_ = this.§5I§) + §%y§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§5!<§)
            {
               _loc17_ = this.§5!<§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§%y§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §3P§ * 0.5 < this.§55§)
         {
            _loc23_ = this.§55§ + §3P§ * 0.5;
         }
         if(_loc23_ + §3P§ * 0.5 > this.§[!K§)
         {
            _loc23_ = this.§[!K§ - §3P§ * 0.5;
         }
         this.§`m§ -= (this.§`m§ - _loc22_) * param3;
         this.§`5§ -= (this.§`5§ - _loc21_) * param3;
         §7!D§ = this.§`5§;
         this.§"!p§ -= (this.§"!p§ - _loc23_) * param3;
         if(_loc5_ >= this.§5!<§ || _loc5_ <= this.§5I§)
         {
            this.§@%§.scale = §7!D§;
            this.§@%§.x = this.§`m§;
            this.§@%§.y = this.§"!p§;
         }
      }
      
      public function §=!f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §8x§)
         {
            this.§6!d§ = true;
         }
         if(this.mCurrentAction == §@#§)
         {
            if(!this.§`W§.levelObjects.activeObject)
            {
               this.§4D§(§?"+§);
               this.§4B§ = §"!,§;
            }
            else
            {
               this.§0"3§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§^H§(param1,_loc4_);
         }
      }
      
      public function §!!X§(param1:Number, param2:Number) : void
      {
         this.§+f§ = param1;
         this.§99§ = param2;
      }
      
      private function §@N§(param1:§5!_§, param2:§0"0§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §4!l§.§[j§ / §4!l§.§@!9§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §&4§ + (param2.scale - §&4§) * this.§+Y§;
         if(§%y§ / param1.scale > (this.§5!<§ - this.§5I§) * _loc3_)
         {
            _loc4_ = §%y§ / ((this.§5!<§ - this.§5I§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §0s§(param1:§5!_§, param2:§0"0§) : Boolean
      {
         var _loc3_:Boolean = this.§@N§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §4!l§.§[j§ / §4!l§.§@!9§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §%y§ / _loc4_ * 0.5 / param1.scale) < this.§5I§ && param1.§ !,§)
         {
            param1.x += this.§5I§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §%y§ / _loc4_ * 0.5 / param1.scale) > this.§5!<§ && !param1.§ !,§)
         {
            param1.x += this.§5!<§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §4!b§(param1:§5!_§, param2:§0"0§) : Number
      {
         return (param1.scale - §&4§) / (param2.scale - §&4§);
      }
      
      protected function §-!%§() : void
      {
         this.§0s§(this.§,!u§,this.§&!S§);
         var _loc1_:Number = this.§4!b§(this.§,!u§,this.§&!S§);
         this.§0s§(this.§0q§,this.§+l§);
         var _loc2_:Number = this.§4!b§(this.§0q§,this.§+l§);
         this.§?C§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §#!X§() : void
      {
         var _loc1_:Number = this.§`m§ / §"h§.§4<§ + this.§+f§;
         var _loc2_:Number = this.§"!p§ / §"h§.§4<§ + this.§99§;
         var _loc3_:Number = §4!l§.§[j§;
         var _loc4_:Number = §4!l§.§@!9§;
         var _loc5_:Number = §"h§.§[!C§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §"h§.§0=§;
         this.§^"1§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§=_§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§^"1§ += _loc5_ / 2 - _loc5_ / 2 / §'!?§;
         this.§=_§ += (_loc6_ / 2 - _loc6_ / 2 / §'!?§) / (_loc3_ / _loc4_);
         this.§`W§.setScreenOffset(this.§^"1§,this.§=_§,§'!?§);
      }
      
      protected function §!!A§() : void
      {
         this.§4D§(§9f§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§4B§ = -1;
         this.§!!A§();
         this.§ $§ = this.§3!r§ = this.§+2§ = param1;
         this.§;!;§ = this.§=Y§ = this.§6!"§ = param2;
         this.§?!;§ = 0;
         this.§@%§.x = this.§`m§;
         this.§@%§.y = this.§"!p§;
         this.§@%§.scale = §7!D§;
         this.§`5§ = §7!D§;
         if(Math.abs(this.§0q§.x - this.§,!u§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§`m§ - this.§,!u§.x) / (this.§0q§.x - this.§,!u§.x) * §8x§;
         }
         this.mDragging = true;
      }
      
      public function §9K§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§?!;§ += param1;
         var _loc3_:Number = this.§ $§ - this.§3!r§;
         if(this.§^l§ > 0)
         {
            _loc2_ -= _loc3_ * §"h§.§4<§ / §'!?§ / this.§^l§ * §8x§;
            this.§6!d§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§6!d§ = true;
            }
            if(_loc2_ > §8x§)
            {
               _loc2_ += (§8x§ - _loc2_) * 0.3;
               this.§6!d§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§3!r§ = this.§ $§;
      }
      
      protected function §""$§() : Boolean
      {
         return this.mCurrentAction == §9f§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§ $§ = param1;
            this.§;!;§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §9f§)
         {
            this.§4D§(§;p§);
            if(param1 > 0)
            {
               this.§ $§ = param1;
            }
            _loc3_ = Math.abs(this.§ $§ - this.§+2§);
            if(this.§?!;§ < §2!6§ && _loc3_ >= §@!,§ && _loc3_ >= §%!<§ * this.§?!;§ / 1000)
            {
               if(this.§ $§ < this.§+2§)
               {
                  this.§4D§(§?"+§);
               }
               else
               {
                  this.§4D§(§"v§);
               }
               this.§&l§ = _loc3_ / this.§?!;§ * 10;
               this.§6!d§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§6!d§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §8x§)
               {
                  this.§6!d§ = true;
               }
            }
            else if(this.§?!;§ < §[!a§)
            {
               this.§4"2§();
               this.§&l§ = §8x§ / (§8x§ / 500);
               this.§6!d§ = true;
            }
            else
            {
               this.§9K§(0);
               this.§?!9§(0);
               this.§&l§ = §8x§ / (§8x§ / 500);
               this.§6!d§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §4"2§() : void
      {
         if(this.mCurrentAction == §?"+§)
         {
            this.§4D§(§"v§);
         }
         else if(this.mCurrentAction == §"v§)
         {
            this.§4D§(§?"+§);
         }
         else if(this.mCurrentCameraSliderLocation >= §8x§ / 2)
         {
            this.§4D§(§"v§);
         }
         else if(this.mCurrentCameraSliderLocation <= §8x§ / 2)
         {
            this.§4D§(§?"+§);
         }
      }
      
      public function §?!9§(param1:int) : void
      {
         this.§4B§ = param1;
         if(this.mCurrentCameraSliderLocation < §8x§ / 2)
         {
            this.§4D§(§"v§);
         }
         else
         {
            this.§4D§(§?"+§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§4D§(§"v§);
      }
      
      public function goToCastleView() : void
      {
         this.§4D§(§?"+§);
      }
      
      public function §4D§(param1:int) : void
      {
         this.§@%§.x = this.§`m§;
         this.§@%§.y = this.§"!p§;
         this.§@%§.scale = §7!D§;
         this.§`5§ = §7!D§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §8x§)
         {
            return true;
         }
         if(this.mCurrentAction == §?"+§)
         {
            return true;
         }
         return false;
      }
      
      public function §[!<§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"v§)
         {
            return true;
         }
         return false;
      }
      
      public function §7!f§(param1:§0!t§) : void
      {
         this.§7!G§ = param1;
         if(this.§7!G§ != null)
         {
            this.§#!+§ = new §0!t§();
            this.§#!+§.x = this.§`m§;
            this.§#!+§.y = this.§"!p§;
            this.§#!+§.scale = §7!D§;
         }
         else
         {
            this.§`m§ = this.§#!+§.x;
            this.§"!p§ = this.§#!+§.y;
            §7!D§ = this.§#!+§.scale;
            this.§#!+§ = null;
         }
      }
      
      protected function §,!"§() : void
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
         var _loc3_:Number = this.§?C§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§`"&§,Math.min(this.§^!@§,_loc3_));
         if(_loc3_ != this.§?C§)
         {
            this.§?C§ = _loc3_;
         }
      }
      
      public function §!r§() : Number
      {
         return (this.§+Y§ - this.§`"&§) / (this.§^!@§ - this.§`"&§);
      }
      
      public function §<!l§(param1:Number) : void
      {
         this.§+Y§ = Math.min(Math.max(param1,0),1) * (this.§^!@§ - this.§`"&§) + this.§`"&§;
      }
      
      public function §&O§() : void
      {
         this.§?C§ = Math.max(this.§?C§ - 0.5,0.5);
      }
      
      public function §+q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§+Y§;
         _loc1_ += " mXcenterB2: " + this.§`m§;
         _loc1_ += " mYcenterB2: " + this.§"!p§;
         _loc1_ += " mXcenterB2target: " + this.§+Y§;
         _loc1_ += "\n mYcenterB2target: " + this.§+Y§;
         _loc1_ += " mXcenterB2previous: " + this.§+Y§;
         _loc1_ += " mYcenterB2previous: " + this.§+Y§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§+Y§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§+Y§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§+Y§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§+Y§;
         _loc1_ += " mTargetScale: " + this.§+Y§;
         _loc1_ += " mTargetScalePrevious: " + this.§+Y§;
         _loc1_ += " mCastleCameraX: " + this.§+Y§;
         _loc1_ += "\n mCastleCameraY: " + this.§+Y§;
         _loc1_ += " mCastleCameraScale: " + this.§+Y§;
         _loc1_ += " mBirdCameraX: " + this.§+Y§;
         _loc1_ += " mBirdCameraY: " + this.§+Y§;
         _loc1_ += " mBirdCameraScale: " + this.§+Y§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§+Y§;
         _loc1_ += "mScreenOffsetYl: " + this.§+Y§;
         _loc1_ += " mDragging: " + this.§+Y§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§+Y§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§+Y§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§+Y§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§+Y§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§+Y§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§+Y§;
         _loc1_ += " mDraggingTimer: " + this.§+Y§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§+Y§;
         _loc1_ += " mCameraBorderRight: " + this.§+Y§;
         _loc1_ += "mCameraBorderTop: " + this.§+Y§;
         _loc1_ += "mCameraBorderBottom: " + this.§+Y§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§+Y§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
