package §9!w§
{
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §]">§.§1!0§;
   import §`!j§.§#b§;
   import §`!j§.§1U§;
   
   public class §9!,§
   {
      
      public static const §,!N§:Number = 1.25;
      
      public static const §"j§:Number = 0.15;
      
      public static const §5F§:Number = §9q§.§?[§ * §^g§.§5!-§;
      
      public static const §-!?§:Number = §9q§.§3!h§ * §^g§.§5!-§;
      
      public static const §&N§:Number = 0.1;
      
      public static const §7!d§:int = 1500;
      
      public static const §`!K§:int = 10;
      
      public static const §=b§:int = 15;
      
      public static const §`!H§:int = 300;
      
      public static const §6Y§:int = 1000;
      
      public static const §<!z§:int = 10000;
      
      public static const §7§:int = §<!z§ / 50;
      
      public static const §9!!§:int = 0;
      
      public static const §81§:int = 1;
      
      public static const §7"9§:int = 2;
      
      public static const §&!u§:int = 3;
      
      public static const §[A§:int = 4;
      
      public static const §4"C§:int = 5;
      
      public static const §5!7§:String = §1U§.CASTLE;
      
      public static const §,]§:String = §1U§.SLINGSHOT;
      
      protected static var §+i§:Number;
      
      public static const §]A§:Number = 2000;
       
      
      private var §<t§:Number = 1.0;
      
      private var §1"C§:Number = 0.2;
      
      protected var §8"'§:Number;
      
      protected var §6! §:Number;
      
      protected var §1k§:Number;
      
      public var §?>§:§^g§;
      
      public var §<5§:Number;
      
      public var §>!,§:Number;
      
      private var §,@§:§]"7§;
      
      private var §#!6§:§]"7§;
      
      protected var §7A§:Number;
      
      protected var § !#§:Number;
      
      protected var §#!I§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §!!"§:Number;
      
      protected var §,!2§:Number;
      
      protected var §1!q§:Number;
      
      protected var § "%§:Number;
      
      protected var §%!H§:Number;
      
      protected var §-v§:Number;
      
      private var §9R§:§`!Z§;
      
      private var §8! §:§`!Z§;
      
      protected var §%!A§:Number = 0;
      
      protected var §8"C§:Number = 0;
      
      protected var §>x§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §%a§:Number = 0;
      
      public var §#!y§:Boolean = true;
      
      public var §3W§:Number = 0;
      
      public var §^l§:Number = 0;
      
      public var §%X§:Number = 0;
      
      public var §"K§:Number = 0;
      
      public var §"7§:Number = 0;
      
      public var §%!`§:Number = 0;
      
      public var §2!b§:Number = 0;
      
      public var §&;§:Number = 0;
      
      public var §#!g§:Number = 0;
      
      private var §2!'§:§`!Z§;
      
      public var §2!t§:Number = 0;
      
      private var §@f§:Number = 0;
      
      private var §9r§:Number = 0;
      
      private var §-!E§:§1U§ = null;
      
      private var §'t§:§1U§ = null;
      
      public function §9!,§(param1:§^g§, param2:§#b§, param3:Number = 1.0)
      {
         this.§2!'§ = new §`!Z§(0,0,1,false);
         super();
         this.§6! § = 0;
         this.§1k§ = 0;
         this.§?>§ = param1;
         §9!,§.§+i§ = 1;
         this.§<t§ = Math.max(1,Math.min(2,param3));
         this.§8"'§ = this.§?!t§;
         this.§99§(param2);
         if(this.§,@§ && this.§#!6§)
         {
            this.§?"E§();
            this.§%!A§ = this.§,@§.x - this.§#!6§.x;
            this.§8"C§ = this.§,@§.y - this.§#!6§.y;
            this.§>x§ = this.§,@§.scale - this.§#!6§.scale;
            this.§6! § = this.§,@§.x;
            this.§1k§ = this.§,@§.y;
            §+i§ = this.§,@§.scale * this.§8"'§;
         }
         this.mCurrentCameraSliderLocation = §<!z§;
         this.§#!y§ = true;
         this.§%a§ = §<!z§ / 500;
      }
      
      public static function get §8"4§() : Number
      {
         var _loc1_:Number = §9q§.§9!$§ / §9q§.§+w§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §+i§ * _loc1_ * _loc1_;
      }
      
      public function get §'!$§() : Number
      {
         return this.§8"'§;
      }
      
      public function set §'!$§(param1:Number) : void
      {
         this.§8"'§ = param1;
      }
      
      public function §1!z§() : Number
      {
         return §5F§ / (this.§ "%§ - this.§1!q§);
      }
      
      public function get §?!t§() : Number
      {
         var _loc1_:Number = §9q§.§9!$§ / §9q§.§+w§;
         return this.§<t§ / _loc1_;
      }
      
      public function get §[!u§() : Number
      {
         return this.§1"C§;
      }
      
      public function get §;=§() : Number
      {
         return this.§7A§;
      }
      
      public function get §""!§() : Number
      {
         return this.§ !#§;
      }
      
      public function get §[f§() : Number
      {
         return this.§1!q§;
      }
      
      public function get §<m§() : Number
      {
         return this.§ "%§;
      }
      
      public function get §2!`§() : Number
      {
         return this.§!!"§;
      }
      
      public function get §0!F§() : Number
      {
         return this.§,!2§;
      }
      
      public function get §=!%§() : Number
      {
         return this.§ "%§ - this.§1!q§;
      }
      
      public function §0>§(param1:Number) : void
      {
         this.§8"'§ = param1;
         this.§,`§();
         this.§+!J§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §4"C§)
         {
            return;
         }
         this.goToCastleView();
         this.§3W§ = 2000;
         this.§+"-§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§6! § = this.§#!6§.x;
         this.§1k§ = this.§#!6§.y;
         this.§#!y§ = false;
         this.§%a§ = §<!z§ / 160000 * param1;
         this.§^!P§(§4"C§);
      }
      
      public function §?"E§() : void
      {
         var _loc1_:Number = (this.§,@§.x - this.§#!6§.x) / 1.6;
         if(_loc1_ < §5F§ * 1.2)
         {
            _loc1_ = §5F§ * 1.2;
         }
         this.§1!q§ = this.§#!6§.x - _loc1_;
         this.§ "%§ = this.§,@§.x + _loc1_;
         this.§%!H§ = Math.min(this.§,@§.y,this.§#!6§.y) - §-!?§;
         this.§-v§ = Math.max(this.§,@§.y,this.§#!6§.y) + §-!?§;
         this.§!!"§ = (this.§,@§.x + this.§#!6§.x) / 2;
         this.§,!2§ = (this.§,@§.y + this.§#!6§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§?>§ = null;
      }
      
      public function §99§(param1:§#b§) : void
      {
         var _loc3_:§1U§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§'!Y§)
         {
            _loc3_ = param1.§>2§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§3"<§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §,]§)
            {
               this.§#!6§ = new §]"7§(_loc5_,_loc6_,_loc7_,true);
               this.§8! § = new §`!Z§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §5!7§)
            {
               this.§,@§ = new §]"7§(_loc5_,_loc6_,_loc7_,false);
               this.§9R§ = new §`!Z§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §2!@§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§1U§) : Number
      {
         var _loc2_:Number = §-!?§ / (param1.bottom - param1.top);
         var _loc3_:Number = §5F§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function writeCameraInformation(param1:§#b§) : void
      {
         var _loc2_:§1U§ = new §1U§();
         _loc2_.id = §,]§;
         _loc2_.x = this.§#!6§.x;
         _loc2_.y = this.§#!6§.y;
         var _loc3_:Number = §5F§ / this.§#!6§.scale / 2;
         var _loc4_:Number = §-!?§ / this.§#!6§.scale / 2;
         _loc2_.left = this.§#!6§.x - _loc3_;
         _loc2_.right = this.§#!6§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§1U§;
         (_loc5_ = new §1U§()).id = §5!7§;
         _loc5_.x = this.§,@§.x;
         _loc5_.y = this.§,@§.y;
         var _loc6_:Number = §5F§ / this.§,@§.scale / 2;
         var _loc7_:Number = §-!?§ / this.§,@§.scale / 2;
         _loc5_.left = this.§,@§.x - _loc6_;
         _loc5_.right = this.§,@§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§%7§();
         param1.§,!Z§(_loc2_);
         param1.§,!Z§(_loc5_);
      }
      
      public function §3"<§(param1:§1U§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §9q§.§?[§ * 0.5 / _loc2_ * §^g§.§5!-§;
         var _loc4_:Number = param1.y - §9q§.§3!h§ * 0.5 / _loc2_ * §^g§.§5!-§;
         var _loc5_:Number = _loc3_ + §9q§.§?[§ / _loc2_ * §^g§.§5!-§;
         var _loc6_:Number = _loc4_ + §9q§.§3!h§ / _loc2_ * §^g§.§5!-§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §^_§(param1:§]"7§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§%a§;
         if(_loc3_ >= §<!z§)
         {
            _loc3_ = §<!z§;
            this.§^!P§(§9!!§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§^!P§(§9!!§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §5i§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§%a§;
         var _loc4_:Number = -§<!z§ * 0.7;
         if(_loc2_ >= §<!z§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §<!z§;
            }
            this.§%a§ = -this.§%a§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §%"0§(param1:Number) : void
      {
         if(this.mCurrentAction == §4"C§)
         {
            this.§5i§(param1);
         }
         else if(this.mCurrentAction == §81§)
         {
            this.§^_§(this.§,@§,param1);
         }
         else if(this.mCurrentAction == §7"9§)
         {
            this.§^_§(this.§#!6§,-param1);
         }
         else if(this.mCurrentAction == §&!u§)
         {
            this.§#!y§ = true;
         }
         else if(this.mCurrentAction == §[A§)
         {
            this.§<E§(param1);
         }
      }
      
      public function §4!d§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§-!E§)
         {
            this.§6! § = this.§-!E§.x;
            this.§1k§ = this.§-!E§.y;
            §+i§ = §5F§ / (this.§-!E§.right - this.§-!E§.left);
         }
         else
         {
            this.§,`§();
            this.§%"0§(param1);
            if(Math.abs(this.§#!I§ - §9q§.§9!$§ / §9q§.§+w§) > 0.01)
            {
               param1 = 1000;
            }
            this.§%!f§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§+"-§();
         this.§#!I§ = §9q§.§9!$§ / §9q§.§+w§;
      }
      
      private function §!!_§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§9R§.x - this.§8! §.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§8! §.scale + (this.§9R§.scale - this.§8! §.scale) * param1;
         var _loc4_:Number = this.§8! §.x + (this.§9R§.x - this.§8! §.x) * param1;
         var _loc5_:Number = this.§8! §.y + (this.§9R§.y - this.§8! §.y) * param1;
         this.§2!'§.x -= (this.§2!'§.x - _loc4_) * param2;
         this.§2!'§.y -= (this.§2!'§.y - _loc5_) * param2;
         this.§2!'§.scale -= (this.§2!'§.scale - _loc3_) * param2;
      }
      
      protected function §+!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%!A§ != 0)
         {
            if(!this.§#!y§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §<!z§;
            this.§!!_§(_loc3_,param2);
            this.§6! § = this.§2!'§.x;
            this.§1k§ = this.§2!'§.y;
            §+i§ = this.§2!'§.scale;
         }
      }
      
      private function §]!§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§1!0§;
         var _loc5_:Number = (_loc4_ = this.§?>§.levelObjects.activeObject).§]!>§();
         var _loc6_:Number = _loc4_.§!"1§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§^!z§().GetLinearVelocity().x) > 0 && this.§%!A§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§%!A§ * §<!z§;
         }
         if(param1 >= §<!z§)
         {
            param1 = §<!z§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §<!z§;
         this.§!!_§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §9q§.§9!$§ / §9q§.§+w§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§2!'§.x - §5F§ / _loc9_ * 0.5 / this.§2!'§.scale;
         var _loc11_:Number = this.§2!'§.y - §-!?§ * 0.5 / this.§2!'§.scale;
         var _loc12_:Number = this.§2!'§.x + §5F§ / _loc9_ * 0.5 / this.§2!'§.scale;
         var _loc13_:Number = this.§2!'§.y + §-!?§ * 0.5 / this.§2!'§.scale;
         var _loc14_:Number = 150 * §^g§.§5!-§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§1!q§,_loc15_);
         _loc17_ = Math.min(this.§ "%§,_loc17_);
         var _loc19_:Number = Math.abs(§5F§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§-!?§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§2!'§.scale)
         {
            _loc21_ = this.§2!'§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §5F§ / _loc9_ * 0.5 / _loc21_ > this.§ "%§)
         {
            _loc15_ = (_loc17_ = this.§ "%§) - §5F§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§1!q§)
            {
               _loc15_ = this.§1!q§;
            }
         }
         if(_loc22_ - §5F§ / _loc9_ * 0.5 / _loc21_ < this.§1!q§)
         {
            _loc17_ = (_loc15_ = this.§1!q§) + §5F§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§ "%§)
            {
               _loc17_ = this.§ "%§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§5F§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §-!?§ * 0.5 < this.§%!H§)
         {
            _loc23_ = this.§%!H§ + §-!?§ * 0.5;
         }
         if(_loc23_ + §-!?§ * 0.5 > this.§-v§)
         {
            _loc23_ = this.§-v§ - §-!?§ * 0.5;
         }
         this.§6! § -= (this.§6! § - _loc22_) * param3;
         this.§2!t§ -= (this.§2!t§ - _loc21_) * param3;
         §+i§ = this.§2!t§;
         this.§1k§ -= (this.§1k§ - _loc23_) * param3;
         if(_loc5_ >= this.§ "%§ || _loc5_ <= this.§1!q§)
         {
            this.§2!'§.scale = §+i§;
            this.§2!'§.x = this.§6! §;
            this.§2!'§.y = this.§1k§;
         }
      }
      
      public function §%!f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §<!z§)
         {
            this.§#!y§ = true;
         }
         if(this.mCurrentAction == §&!u§)
         {
            if(!this.§?>§.levelObjects.activeObject)
            {
               this.§^!P§(§81§);
               this.§#!g§ = §6Y§;
            }
            else
            {
               this.§]!§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§+!J§(param1,_loc4_);
         }
      }
      
      public function §7H§(param1:Number, param2:Number) : void
      {
         this.§@f§ = param1;
         this.§9r§ = param2;
      }
      
      private function §^!W§(param1:§`!Z§, param2:§]"7§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §9q§.§9!$§ / §9q§.§+w§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §"j§ + (param2.scale - §"j§) * this.§'!$§;
         if(§5F§ / param1.scale > (this.§ "%§ - this.§1!q§) * _loc3_)
         {
            _loc4_ = §5F§ / ((this.§ "%§ - this.§1!q§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §6"9§(param1:§`!Z§, param2:§]"7§) : Boolean
      {
         var _loc3_:Boolean = this.§^!W§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §9q§.§9!$§ / §9q§.§+w§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §5F§ / _loc4_ * 0.5 / param1.scale) < this.§1!q§ && param1.§8Q§)
         {
            param1.x += this.§1!q§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §5F§ / _loc4_ * 0.5 / param1.scale) > this.§ "%§ && !param1.§8Q§)
         {
            param1.x += this.§ "%§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function §8"1§(param1:§`!Z§, param2:§]"7§) : Number
      {
         return (param1.scale - §"j§) / (param2.scale - §"j§);
      }
      
      protected function §,`§() : void
      {
         this.§6"9§(this.§8! §,this.§#!6§);
         var _loc1_:Number = this.§8"1§(this.§8! §,this.§#!6§);
         this.§6"9§(this.§9R§,this.§,@§);
         var _loc2_:Number = this.§8"1§(this.§9R§,this.§,@§);
         this.§8"'§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §+"-§() : void
      {
         var _loc1_:Number = this.§6! § / §^g§.§5!-§ + this.§@f§;
         var _loc2_:Number = this.§1k§ / §^g§.§5!-§ + this.§9r§;
         var _loc3_:Number = §9q§.§9!$§;
         var _loc4_:Number = §9q§.§+w§;
         var _loc5_:Number = §^g§.§6!9§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §^g§.§4A§;
         this.§7A§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§ !#§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§7A§ += _loc5_ / 2 - _loc5_ / 2 / §8"4§;
         this.§ !#§ += (_loc6_ / 2 - _loc6_ / 2 / §8"4§) / (_loc3_ / _loc4_);
         this.§?>§.setScreenOffset(this.§7A§,this.§ !#§,§8"4§);
      }
      
      protected function §-!K§() : void
      {
         this.§^!P§(§[A§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§#!g§ = -1;
         this.§-!K§();
         this.§"7§ = this.§2!b§ = this.§%X§ = param1;
         this.§%!`§ = this.§&;§ = this.§"K§ = param2;
         this.§^l§ = 0;
         this.§2!'§.x = this.§6! §;
         this.§2!'§.y = this.§1k§;
         this.§2!'§.scale = §+i§;
         this.§2!t§ = §+i§;
         if(Math.abs(this.§9R§.x - this.§8! §.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§6! § - this.§8! §.x) / (this.§9R§.x - this.§8! §.x) * §<!z§;
         }
         this.mDragging = true;
      }
      
      public function §<E§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§^l§ += param1;
         var _loc3_:Number = this.§"7§ - this.§2!b§;
         if(this.§%!A§ > 0)
         {
            _loc2_ -= _loc3_ * §^g§.§5!-§ / §8"4§ / this.§%!A§ * §<!z§;
            this.§#!y§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§#!y§ = true;
            }
            if(_loc2_ > §<!z§)
            {
               _loc2_ += (§<!z§ - _loc2_) * 0.3;
               this.§#!y§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§2!b§ = this.§"7§;
      }
      
      protected function §6!'§() : Boolean
      {
         return this.mCurrentAction == §[A§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§"7§ = param1;
            this.§%!`§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §[A§)
         {
            this.§^!P§(§9!!§);
            if(param1 > 0)
            {
               this.§"7§ = param1;
            }
            _loc3_ = Math.abs(this.§"7§ - this.§%X§);
            if(this.§^l§ < §7!d§ && _loc3_ >= §`!K§ && _loc3_ >= §=b§ * this.§^l§ / 1000)
            {
               if(this.§"7§ < this.§%X§)
               {
                  this.§^!P§(§81§);
               }
               else
               {
                  this.§^!P§(§7"9§);
               }
               this.§%a§ = _loc3_ / this.§^l§ * 10;
               this.§#!y§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§#!y§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §<!z§)
               {
                  this.§#!y§ = true;
               }
            }
            else if(this.§^l§ < §`!H§)
            {
               this.§08§();
               this.§%a§ = §<!z§ / (§<!z§ / 500);
               this.§#!y§ = true;
            }
            else
            {
               this.§<E§(0);
               this.§-"&§(0);
               this.§%a§ = §<!z§ / (§<!z§ / 500);
               this.§#!y§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §08§() : void
      {
         if(this.mCurrentAction == §81§)
         {
            this.§^!P§(§7"9§);
         }
         else if(this.mCurrentAction == §7"9§)
         {
            this.§^!P§(§81§);
         }
         else if(this.mCurrentCameraSliderLocation >= §<!z§ / 2)
         {
            this.§^!P§(§7"9§);
         }
         else if(this.mCurrentCameraSliderLocation <= §<!z§ / 2)
         {
            this.§^!P§(§81§);
         }
      }
      
      public function §-"&§(param1:int) : void
      {
         this.§#!g§ = param1;
         if(this.mCurrentCameraSliderLocation < §<!z§ / 2)
         {
            this.§^!P§(§7"9§);
         }
         else
         {
            this.§^!P§(§81§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§^!P§(§7"9§);
      }
      
      public function goToCastleView() : void
      {
         this.§^!P§(§81§);
      }
      
      public function §^!P§(param1:int) : void
      {
         this.§2!'§.x = this.§6! §;
         this.§2!'§.y = this.§1k§;
         this.§2!'§.scale = §+i§;
         this.§2!t§ = §+i§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §<!z§)
         {
            return true;
         }
         if(this.mCurrentAction == §81§)
         {
            return true;
         }
         return false;
      }
      
      public function §4X§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §7"9§)
         {
            return true;
         }
         return false;
      }
      
      public function §3!]§(param1:§1U§) : void
      {
         this.§-!E§ = param1;
         if(this.§-!E§ != null)
         {
            this.§'t§ = new §1U§();
            this.§'t§.x = this.§6! §;
            this.§'t§.y = this.§1k§;
            this.§'t§.scale = §+i§;
         }
         else
         {
            this.§6! § = this.§'t§.x;
            this.§1k§ = this.§'t§.y;
            §+i§ = this.§'t§.scale;
            this.§'t§ = null;
         }
      }
      
      protected function §,!p§() : void
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
         var _loc3_:Number = this.§8"'§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§[!u§,Math.min(this.§?!t§,_loc3_));
         if(_loc3_ != this.§8"'§)
         {
            this.§8"'§ = _loc3_;
         }
      }
      
      public function §=U§() : Number
      {
         return (this.§'!$§ - this.§[!u§) / (this.§?!t§ - this.§[!u§);
      }
      
      public function §&"0§(param1:Number) : void
      {
         this.§'!$§ = Math.min(Math.max(param1,0),1) * (this.§?!t§ - this.§[!u§) + this.§[!u§;
      }
      
      public function §8Y§() : void
      {
         this.§8"'§ = Math.max(this.§8"'§ - 0.5,0.5);
      }
      
      public function §6!2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§'!$§;
         _loc1_ += " mXcenterB2: " + this.§6! §;
         _loc1_ += " mYcenterB2: " + this.§1k§;
         _loc1_ += " mXcenterB2target: " + this.§'!$§;
         _loc1_ += "\n mYcenterB2target: " + this.§'!$§;
         _loc1_ += " mXcenterB2previous: " + this.§'!$§;
         _loc1_ += " mYcenterB2previous: " + this.§'!$§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§'!$§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§'!$§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§'!$§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§'!$§;
         _loc1_ += " mTargetScale: " + this.§'!$§;
         _loc1_ += " mTargetScalePrevious: " + this.§'!$§;
         _loc1_ += " mCastleCameraX: " + this.§'!$§;
         _loc1_ += "\n mCastleCameraY: " + this.§'!$§;
         _loc1_ += " mCastleCameraScale: " + this.§'!$§;
         _loc1_ += " mBirdCameraX: " + this.§'!$§;
         _loc1_ += " mBirdCameraY: " + this.§'!$§;
         _loc1_ += " mBirdCameraScale: " + this.§'!$§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§'!$§;
         _loc1_ += "mScreenOffsetYl: " + this.§'!$§;
         _loc1_ += " mDragging: " + this.§'!$§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§'!$§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§'!$§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§'!$§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§'!$§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§'!$§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§'!$§;
         _loc1_ += " mDraggingTimer: " + this.§'!$§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§'!$§;
         _loc1_ += " mCameraBorderRight: " + this.§'!$§;
         _loc1_ += "mCameraBorderTop: " + this.§'!$§;
         _loc1_ += "mCameraBorderBottom: " + this.§'!$§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§'!$§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
