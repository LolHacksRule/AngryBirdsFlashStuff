package §^!<§
{
   import §"P§.§^!x§;
   import §8!e§.§ !z§;
   import §8!e§.§!!E§;
   import §9G§.§2F§;
   import §;4§.§]!%§;
   import com.angrybirds.§4"6§;
   
   public class §#t§
   {
      
      public static const §10§:Number = 1.25;
      
      public static const §+"5§:Number = 0.15;
      
      public static const §1!t§:Number = §4"6§.§,_§ * §2F§.§6+§;
      
      public static const §[W§:Number = §4"6§.§-v§ * §2F§.§6+§;
      
      public static const §"B§:Number = 0.1;
      
      public static const §<!q§:int = 1500;
      
      public static const §?!k§:int = 10;
      
      public static const §-X§:int = 15;
      
      public static const §@K§:int = 300;
      
      public static const §4!=§:int = 1000;
      
      public static const §+!<§:int = 10000;
      
      public static const §]!S§:int = §+!<§ / 50;
      
      public static const §8o§:int = 0;
      
      public static const §>9§:int = 1;
      
      public static const §=!;§:int = 2;
      
      public static const § !K§:int = 3;
      
      public static const §7e§:int = 4;
      
      public static const §<Y§:int = 5;
      
      public static const §]!4§:String = § !z§.CASTLE;
      
      public static const §+"+§:String = § !z§.SLINGSHOT;
      
      protected static var § u§:Number;
      
      public static const §5!,§:Number = 2000;
       
      
      protected var §2!-§:Number = 1.0;
      
      protected var §4T§:Number = 0.2;
      
      protected var §<N§:Number;
      
      protected var § "0§:Number;
      
      protected var §=!-§:Number;
      
      public var §5M§:§2F§;
      
      public var §&@§:Number;
      
      public var §=""§:Number;
      
      protected var §@o§:§!§;
      
      protected var §9o§:§!§;
      
      protected var §-5§:Number;
      
      protected var §,!p§:Number;
      
      protected var §3!9§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §]&§:Number;
      
      protected var §-E§:Number;
      
      protected var §<!o§:Number;
      
      protected var §3a§:Number;
      
      protected var §`!k§:Number;
      
      protected var §#!g§:Number;
      
      protected var §0!z§:§`![§;
      
      protected var § !d§:§`![§;
      
      protected var §#!D§:Number = 0;
      
      protected var §!1§:Number = 0;
      
      protected var §@u§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1!§:Number = 0;
      
      public var §[T§:Boolean = true;
      
      public var §3,§:Number = 0;
      
      public var §!b§:Number = 0;
      
      public var §4!1§:Number = 0;
      
      public var §&X§:Number = 0;
      
      public var §>""§:Number = 0;
      
      public var §6%§:Number = 0;
      
      public var § &§:Number = 0;
      
      public var §&!o§:Number = 0;
      
      public var §-"!§:Number = 0;
      
      private var §4!e§:§`![§;
      
      public var §&" §:Number = 0;
      
      private var § !,§:Number = 0;
      
      private var §-!g§:Number = 0;
      
      private var §<!t§:§ !z§ = null;
      
      private var §+!&§:§ !z§ = null;
      
      public function §#t§(param1:§2F§, param2:§!!E§, param3:Number = 1.0)
      {
         this.§4!e§ = new §`![§(0,0,1,false);
         super();
         this.§ "0§ = 0;
         this.§=!-§ = 0;
         this.§5M§ = param1;
         §#t§.§ u§ = 1;
         this.§2!-§ = Math.max(1,Math.min(2,param3));
         this.§<N§ = this.§"8§;
         this.§&r§(param2);
         if(this.§@o§ && this.§9o§)
         {
            this.§=m§();
            this.§#!D§ = this.§@o§.x - this.§9o§.x;
            this.§!1§ = this.§@o§.y - this.§9o§.y;
            this.§@u§ = this.§@o§.scale - this.§9o§.scale;
            this.§ "0§ = this.§@o§.x;
            this.§=!-§ = this.§@o§.y;
            § u§ = this.§@o§.scale * this.§<N§;
         }
         this.mCurrentCameraSliderLocation = §+!<§;
         this.§[T§ = true;
         this.§1!§ = §+!<§ / 500;
      }
      
      public static function get §9!3§() : Number
      {
         var _loc1_:Number = §4"6§.§8!N§ / §4"6§.§&!D§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return § u§ * _loc1_ * _loc1_;
      }
      
      public function get §8!B§() : Number
      {
         return this.§<N§;
      }
      
      public function set §8!B§(param1:Number) : void
      {
         this.§<N§ = param1;
      }
      
      public function §[v§() : Number
      {
         return §1!t§ / (this.§3a§ - this.§<!o§);
      }
      
      public function get §"8§() : Number
      {
         var _loc1_:Number = §4"6§.§8!N§ / §4"6§.§&!D§;
         return this.§2!-§ / _loc1_;
      }
      
      public function get §6!=§() : Number
      {
         return this.§4T§;
      }
      
      public function get §?f§() : Number
      {
         return this.§-5§;
      }
      
      public function get §8"§() : Number
      {
         return this.§,!p§;
      }
      
      public function get §@!u§() : Number
      {
         return this.§<!o§;
      }
      
      public function get §class§() : Number
      {
         return this.§3a§;
      }
      
      public function get §]"$§() : Number
      {
         return this.§]&§;
      }
      
      public function get §6;§() : Number
      {
         return this.§-E§;
      }
      
      public function get §1?§() : Number
      {
         return this.§3a§ - this.§<!o§;
      }
      
      protected function get §-!h§() : §!§
      {
         return this.§@o§;
      }
      
      public function §#!b§(param1:Number) : void
      {
         this.§<N§ = param1;
         this.§+!Z§();
         this.§+!b§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<Y§)
         {
            return;
         }
         this.goToCastleView();
         this.§3,§ = 2000;
         this.§?!,§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§ "0§ = this.§9o§.x;
         this.§=!-§ = this.§9o§.y;
         this.§[T§ = false;
         this.§1!§ = §+!<§ / 160000 * param1;
         this.§ $§(§<Y§);
      }
      
      public function §=m§() : void
      {
         var _loc1_:Number = (this.§@o§.x - this.§9o§.x) / 1.6;
         if(_loc1_ < §1!t§ * 1.2)
         {
            _loc1_ = §1!t§ * 1.2;
         }
         this.§<!o§ = this.§9o§.x - _loc1_;
         this.§3a§ = this.§@o§.x + _loc1_;
         this.§`!k§ = Math.min(this.§@o§.y,this.§9o§.y) - §[W§;
         this.§#!g§ = Math.max(this.§@o§.y,this.§9o§.y) + §[W§;
         this.§]&§ = (this.§@o§.x + this.§9o§.x) / 2;
         this.§-E§ = (this.§@o§.y + this.§9o§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§5M§ = null;
      }
      
      public function §&r§(param1:§!!E§) : void
      {
         var _loc3_:§ !z§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§8!@§)
         {
            _loc3_ = param1.§[!X§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§6y§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §+"+§)
            {
               this.§9o§ = new §!§(_loc5_,_loc6_,_loc7_,true);
               this.§ !d§ = new §`![§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §]!4§)
            {
               this.§@o§ = new §!§(_loc5_,_loc6_,_loc7_,false);
               this.§0!z§ = new §`![§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §]!%§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§ !z§) : Number
      {
         var _loc2_:Number = §[W§ / (param1.bottom - param1.top);
         var _loc3_:Number = §1!t§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §[u§(param1:§!!E§) : void
      {
         var _loc2_:§ !z§ = new § !z§();
         _loc2_.id = §+"+§;
         _loc2_.x = this.§9o§.x;
         _loc2_.y = this.§9o§.y;
         var _loc3_:Number = §1!t§ / this.§9o§.scale / 2;
         var _loc4_:Number = §[W§ / this.§9o§.scale / 2;
         _loc2_.left = this.§9o§.x - _loc3_;
         _loc2_.right = this.§9o§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§ !z§;
         (_loc5_ = new § !z§()).id = §]!4§;
         _loc5_.x = this.§@o§.x;
         _loc5_.y = this.§@o§.y;
         var _loc6_:Number = §1!t§ / this.§@o§.scale / 2;
         var _loc7_:Number = §[W§ / this.§@o§.scale / 2;
         _loc5_.left = this.§@o§.x - _loc6_;
         _loc5_.right = this.§@o§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§00§();
         param1.§""%§(_loc2_);
         param1.§""%§(_loc5_);
      }
      
      public function §6y§(param1:§ !z§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §4"6§.§,_§ * 0.5 / _loc2_ * §2F§.§6+§;
         var _loc4_:Number = param1.y - §4"6§.§-v§ * 0.5 / _loc2_ * §2F§.§6+§;
         var _loc5_:Number = _loc3_ + §4"6§.§,_§ / _loc2_ * §2F§.§6+§;
         var _loc6_:Number = _loc4_ + §4"6§.§-v§ / _loc2_ * §2F§.§6+§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §3!&§(param1:§!§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1!§;
         if(_loc3_ >= §+!<§)
         {
            _loc3_ = §+!<§;
            this.§ $§(§8o§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§ $§(§8o§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §^9§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1!§;
         var _loc4_:Number = -§+!<§ * 0.7;
         if(_loc2_ >= §+!<§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §+!<§;
            }
            this.§1!§ = -this.§1!§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §try §(param1:Number) : void
      {
         if(this.mCurrentAction == §<Y§)
         {
            this.§^9§(param1);
         }
         else if(this.mCurrentAction == §>9§)
         {
            this.§3!&§(this.§@o§,param1);
         }
         else if(this.mCurrentAction == §=!;§)
         {
            this.§3!&§(this.§9o§,-param1);
         }
         else if(this.mCurrentAction == § !K§)
         {
            this.§[T§ = true;
         }
         else if(this.mCurrentAction == §7e§)
         {
            this.§6I§(param1);
         }
      }
      
      public function §#!O§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§<!t§)
         {
            this.§ "0§ = this.§<!t§.x;
            this.§=!-§ = this.§<!t§.y;
            § u§ = §1!t§ / (this.§<!t§.right - this.§<!t§.left);
         }
         else
         {
            this.§+!Z§();
            this.§try §(param1);
            if(Math.abs(this.§3!9§ - §4"6§.§8!N§ / §4"6§.§&!D§) > 0.01)
            {
               param1 = 1000;
            }
            this.§7!7§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?!,§();
         this.§3!9§ = §4"6§.§8!N§ / §4"6§.§&!D§;
      }
      
      private function §1!p§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§0!z§.x - this.§ !d§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§ !d§.scale + (this.§0!z§.scale - this.§ !d§.scale) * param1;
         var _loc4_:Number = this.§ !d§.x + (this.§0!z§.x - this.§ !d§.x) * param1;
         var _loc5_:Number = this.§ !d§.y + (this.§0!z§.y - this.§ !d§.y) * param1;
         this.§4!e§.x -= (this.§4!e§.x - _loc4_) * param2;
         this.§4!e§.y -= (this.§4!e§.y - _loc5_) * param2;
         this.§4!e§.scale -= (this.§4!e§.scale - _loc3_) * param2;
         this.§9"#§(this.§4!e§);
      }
      
      protected function §+!b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#!D§ != 0)
         {
            if(!this.§[T§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §+!<§;
            this.§1!p§(_loc3_,param2);
            this.§ "0§ = this.§4!e§.x;
            this.§=!-§ = this.§4!e§.y;
            § u§ = this.§4!e§.scale;
         }
      }
      
      private function §9R§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§^!x§;
         var _loc5_:Number = (_loc4_ = this.§5M§.levelObjects.activeObject).§+j§();
         var _loc6_:Number = _loc4_.§"[§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§7J§().GetLinearVelocity().x) > 0 && this.§#!D§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§#!D§ * §+!<§;
         }
         if(param1 >= §+!<§)
         {
            param1 = §+!<§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §+!<§;
         this.§1!p§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §4"6§.§8!N§ / §4"6§.§&!D§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§4!e§.x - §1!t§ / _loc9_ * 0.5 / this.§4!e§.scale;
         var _loc11_:Number = this.§4!e§.y - §[W§ * 0.5 / this.§4!e§.scale;
         var _loc12_:Number = this.§4!e§.x + §1!t§ / _loc9_ * 0.5 / this.§4!e§.scale;
         var _loc13_:Number = this.§4!e§.y + §[W§ * 0.5 / this.§4!e§.scale;
         var _loc14_:Number = 150 * §2F§.§6+§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§<!o§,_loc15_);
         _loc17_ = Math.min(this.§3a§,_loc17_);
         var _loc19_:Number = Math.abs(§1!t§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§[W§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§4!e§.scale)
         {
            _loc21_ = this.§4!e§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §1!t§ / _loc9_ * 0.5 / _loc21_ > this.§3a§)
         {
            _loc15_ = (_loc17_ = this.§3a§) - §1!t§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§<!o§)
            {
               _loc15_ = this.§<!o§;
            }
         }
         if(_loc22_ - §1!t§ / _loc9_ * 0.5 / _loc21_ < this.§<!o§)
         {
            _loc17_ = (_loc15_ = this.§<!o§) + §1!t§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§3a§)
            {
               _loc17_ = this.§3a§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§1!t§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §[W§ * 0.5 < this.§`!k§)
         {
            _loc23_ = this.§`!k§ + §[W§ * 0.5;
         }
         if(_loc23_ + §[W§ * 0.5 > this.§#!g§)
         {
            _loc23_ = this.§#!g§ - §[W§ * 0.5;
         }
         this.§ "0§ -= (this.§ "0§ - _loc22_) * param3;
         this.§&" § -= (this.§&" § - _loc21_) * param3;
         § u§ = this.§&" §;
         this.§=!-§ -= (this.§=!-§ - _loc23_) * param3;
         if(_loc5_ >= this.§3a§ || _loc5_ <= this.§<!o§)
         {
            this.§4!e§.scale = § u§;
            this.§4!e§.x = this.§ "0§;
            this.§4!e§.y = this.§=!-§;
         }
      }
      
      protected function §7!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §+!<§)
         {
            this.§[T§ = true;
         }
         if(this.mCurrentAction == § !K§)
         {
            if(!this.§5M§.levelObjects.activeObject)
            {
               this.§ $§(§>9§);
               this.§-"!§ = §4!=§;
            }
            else
            {
               this.§9R§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§+!b§(param1,_loc4_);
         }
      }
      
      public function §>k§(param1:Number, param2:Number) : void
      {
         this.§ !,§ = param1;
         this.§-!g§ = param2;
      }
      
      protected function §!"6§(param1:§`![§, param2:§!§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §4"6§.§8!N§ / §4"6§.§&!D§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §+"5§ + (param2.scale - §+"5§) * this.§8!B§;
         if(§1!t§ / param1.scale > (this.§3a§ - this.§<!o§) * _loc3_)
         {
            _loc4_ = §1!t§ / ((this.§3a§ - this.§<!o§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §;U§(param1:§`![§, param2:§!§) : Boolean
      {
         var _loc3_:Boolean = this.§!"6§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§9"#§(param1);
         return _loc3_;
      }
      
      private function §9"#§(param1:§`![§) : void
      {
         var _loc2_:Number = §4"6§.§8!N§ / §4"6§.§&!D§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §1!t§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§<!o§)
         {
            param1.x += this.§<!o§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §1!t§ / _loc2_ * 0.5 / param1.scale) > this.§3a§)
         {
            param1.x += this.§3a§ - _loc4_;
         }
      }
      
      private function §"!k§(param1:§`![§, param2:§!§) : Number
      {
         return (param1.scale - §+"5§) / (param2.scale - §+"5§);
      }
      
      protected function §+!Z§() : void
      {
         this.§;U§(this.§ !d§,this.§9o§);
         var _loc1_:Number = this.§"!k§(this.§ !d§,this.§9o§);
         this.§;U§(this.§0!z§,this.§@o§);
         var _loc2_:Number = this.§"!k§(this.§0!z§,this.§@o§);
         this.§<N§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §?!,§() : void
      {
         var _loc1_:Number = this.§ "0§ / §2F§.§6+§ + this.§ !,§;
         var _loc2_:Number = this.§=!-§ / §2F§.§6+§ + this.§-!g§;
         var _loc3_:Number = §4"6§.§8!N§;
         var _loc4_:Number = §4"6§.§&!D§;
         var _loc5_:Number = §2F§.§&",§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §2F§.§%!=§;
         this.§-5§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§,!p§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§-5§ += _loc5_ / 2 - _loc5_ / 2 / §9!3§;
         this.§,!p§ += (_loc6_ / 2 - _loc6_ / 2 / §9!3§) / (_loc3_ / _loc4_);
         this.§5M§.setScreenOffset(this.§-5§,this.§,!p§,§9!3§);
      }
      
      protected function §&!_§() : void
      {
         this.§ $§(§7e§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§-"!§ = -1;
         this.§&!_§();
         this.§>""§ = this.§ &§ = this.§4!1§ = param1;
         this.§6%§ = this.§&!o§ = this.§&X§ = param2;
         this.§!b§ = 0;
         this.§4!e§.x = this.§ "0§;
         this.§4!e§.y = this.§=!-§;
         this.§4!e§.scale = § u§;
         this.§&" § = § u§;
         if(Math.abs(this.§0!z§.x - this.§ !d§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§ "0§ - this.§ !d§.x) / (this.§0!z§.x - this.§ !d§.x) * §+!<§;
         }
         this.mDragging = true;
      }
      
      public function §6I§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§!b§ += param1;
         var _loc3_:Number = this.§>""§ - this.§ &§;
         if(this.§#!D§ > 0)
         {
            _loc2_ -= _loc3_ * §2F§.§6+§ / §9!3§ / this.§#!D§ * §+!<§;
            this.§[T§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§[T§ = true;
            }
            if(_loc2_ > §+!<§)
            {
               _loc2_ += (§+!<§ - _loc2_) * 0.3;
               this.§[T§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§ &§ = this.§>""§;
      }
      
      protected function §5s§() : Boolean
      {
         return this.mCurrentAction == §7e§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§>""§ = param1;
            this.§6%§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7e§)
         {
            this.§ $§(§8o§);
            if(param1 > 0)
            {
               this.§>""§ = param1;
            }
            _loc3_ = Math.abs(this.§>""§ - this.§4!1§);
            if(this.§!b§ < §<!q§ && _loc3_ >= §?!k§ && _loc3_ >= §-X§ * this.§!b§ / 1000)
            {
               if(this.§>""§ < this.§4!1§)
               {
                  this.§ $§(§>9§);
               }
               else
               {
                  this.§ $§(§=!;§);
               }
               this.§1!§ = _loc3_ / this.§!b§ * 10;
               this.§[T§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§[T§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §+!<§)
               {
                  this.§[T§ = true;
               }
            }
            else if(this.§!b§ < §@K§)
            {
               this.§%O§();
               this.§1!§ = §+!<§ / (§+!<§ / 500);
               this.§[T§ = true;
            }
            else
            {
               this.§6I§(0);
               this.§`"!§(0);
               this.§1!§ = §+!<§ / (§+!<§ / 500);
               this.§[T§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §%O§() : void
      {
         if(this.mCurrentAction == §>9§)
         {
            this.§ $§(§=!;§);
         }
         else if(this.mCurrentAction == §=!;§)
         {
            this.§ $§(§>9§);
         }
         else if(this.mCurrentCameraSliderLocation >= §+!<§ / 2)
         {
            this.§ $§(§=!;§);
         }
         else if(this.mCurrentCameraSliderLocation <= §+!<§ / 2)
         {
            this.§ $§(§>9§);
         }
      }
      
      public function §`"!§(param1:int) : void
      {
         this.§-"!§ = param1;
         if(this.mCurrentCameraSliderLocation < §+!<§ / 2)
         {
            this.§ $§(§=!;§);
         }
         else
         {
            this.§ $§(§>9§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§ $§(§=!;§);
      }
      
      public function goToCastleView() : void
      {
         this.§ $§(§>9§);
      }
      
      public function § $§(param1:int) : void
      {
         this.§4!e§.x = this.§ "0§;
         this.§4!e§.y = this.§=!-§;
         this.§4!e§.scale = § u§;
         this.§&" § = § u§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §+!<§)
         {
            return true;
         }
         if(this.mCurrentAction == §>9§)
         {
            return true;
         }
         return false;
      }
      
      public function §5!#§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §=!;§)
         {
            return true;
         }
         return false;
      }
      
      public function § l§(param1:§ !z§) : void
      {
         this.§<!t§ = param1;
         if(this.§<!t§ != null)
         {
            this.§+!&§ = new § !z§();
            this.§+!&§.x = this.§ "0§;
            this.§+!&§.y = this.§=!-§;
            this.§+!&§.scale = § u§;
         }
         else
         {
            this.§ "0§ = this.§+!&§.x;
            this.§=!-§ = this.§+!&§.y;
            § u§ = this.§+!&§.scale;
            this.§+!&§ = null;
         }
      }
      
      protected function §;"%§() : void
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
         var _loc3_:Number = this.§<N§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§6!=§,Math.min(this.§"8§,_loc3_));
         if(_loc3_ != this.§<N§)
         {
            this.§<N§ = _loc3_;
         }
      }
      
      public function §4!6§() : Number
      {
         return (this.§8!B§ - this.§6!=§) / (this.§"8§ - this.§6!=§);
      }
      
      public function §,v§(param1:Number) : void
      {
         this.§8!B§ = Math.min(Math.max(param1,0),1) * (this.§"8§ - this.§6!=§) + this.§6!=§;
      }
      
      public function §5! §() : void
      {
         this.§<N§ = Math.max(this.§<N§ - 0.5,0.5);
      }
      
      public function §%^§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§8!B§;
         _loc1_ += " mXcenterB2: " + this.§ "0§;
         _loc1_ += " mYcenterB2: " + this.§=!-§;
         _loc1_ += " mXcenterB2target: " + this.§8!B§;
         _loc1_ += "\n mYcenterB2target: " + this.§8!B§;
         _loc1_ += " mXcenterB2previous: " + this.§8!B§;
         _loc1_ += " mYcenterB2previous: " + this.§8!B§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§8!B§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§8!B§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§8!B§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§8!B§;
         _loc1_ += " mTargetScale: " + this.§8!B§;
         _loc1_ += " mTargetScalePrevious: " + this.§8!B§;
         _loc1_ += " mCastleCameraX: " + this.§8!B§;
         _loc1_ += "\n mCastleCameraY: " + this.§8!B§;
         _loc1_ += " mCastleCameraScale: " + this.§8!B§;
         _loc1_ += " mBirdCameraX: " + this.§8!B§;
         _loc1_ += " mBirdCameraY: " + this.§8!B§;
         _loc1_ += " mBirdCameraScale: " + this.§8!B§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§8!B§;
         _loc1_ += "mScreenOffsetYl: " + this.§8!B§;
         _loc1_ += " mDragging: " + this.§8!B§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§8!B§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§8!B§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§8!B§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§8!B§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§8!B§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§8!B§;
         _loc1_ += " mDraggingTimer: " + this.§8!B§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§8!B§;
         _loc1_ += " mCameraBorderRight: " + this.§8!B§;
         _loc1_ += "mCameraBorderTop: " + this.§8!B§;
         _loc1_ += "mCameraBorderBottom: " + this.§8!B§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§8!B§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
