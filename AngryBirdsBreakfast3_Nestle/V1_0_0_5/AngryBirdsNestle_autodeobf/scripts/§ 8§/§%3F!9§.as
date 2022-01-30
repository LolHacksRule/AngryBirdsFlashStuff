package § 8§
{
   import § !T§.§%!D§;
   import § !T§.§7@§;
   import §0!$§.§#!-§;
   import §=!`§.§^^§;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   
   public class §?!9§
   {
      
      public static const §^E§:Number = 1.25;
      
      public static const §%w§:Number = 0.15;
      
      public static const §1f§:Number = §6!E§.§#9§ * §<S§.§;!Q§;
      
      public static const §,"!§:Number = §6!E§.§<N§ * §<S§.§;!Q§;
      
      public static const §-!R§:Number = 0.1;
      
      public static const §,s§:int = 1500;
      
      public static const §#X§:int = 10;
      
      public static const §!![§:int = 15;
      
      public static const § !Q§:int = 300;
      
      public static const §1!&§:int = 1000;
      
      public static const §"!-§:int = 10000;
      
      public static const §,"2§:int = §"!-§ / 50;
      
      public static const §`h§:int = 0;
      
      public static const §"!y§:int = 1;
      
      public static const §]"§:int = 2;
      
      public static const §'W§:int = 3;
      
      public static const §7!-§:int = 4;
      
      public static const §'!K§:int = 5;
      
      public static const §4+§:String = §%!D§.CASTLE;
      
      public static const §[! §:String = §%!D§.SLINGSHOT;
      
      protected static var §[!!§:Number;
      
      public static const §2"+§:Number = 2000;
       
      
      private var §=[§:Number = 1.0;
      
      private var §#!M§:Number = 0.2;
      
      protected var §=2§:Number;
      
      protected var §>!_§:Number;
      
      protected var §0k§:Number;
      
      public var §#g§:§<S§;
      
      public var §-!<§:Number;
      
      public var §0!u§:Number;
      
      private var §3!e§:§!6§;
      
      private var §+!i§:§!6§;
      
      protected var §76§:Number;
      
      protected var §1"5§:Number;
      
      protected var §?X§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §<""§:Number;
      
      protected var §+L§:Number;
      
      protected var §>!W§:Number;
      
      protected var §+t§:Number;
      
      protected var §8!>§:Number;
      
      protected var §[" §:Number;
      
      private var §6!>§:§-!4§;
      
      private var §1!M§:§-!4§;
      
      protected var §"!v§:Number = 0;
      
      protected var § null§:Number = 0;
      
      protected var §4s§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §9t§:Number = 0;
      
      public var §3!A§:Boolean = true;
      
      public var §>!@§:Number = 0;
      
      public var § in§:Number = 0;
      
      public var §<!e§:Number = 0;
      
      public var §+""§:Number = 0;
      
      public var §>!,§:Number = 0;
      
      public var §?!Z§:Number = 0;
      
      public var §!!Y§:Number = 0;
      
      public var §>!p§:Number = 0;
      
      public var §&E§:Number = 0;
      
      private var §^!1§:§-!4§;
      
      public var §&C§:Number = 0;
      
      private var §39§:Number = 0;
      
      private var §4F§:Number = 0;
      
      private var §!Q§:§%!D§ = null;
      
      private var §>!C§:§%!D§ = null;
      
      public function §?!9§(param1:§<S§, param2:§7@§, param3:Number = 1.0)
      {
         this.§^!1§ = new §-!4§(0,0,1,false);
         super();
         this.§>!_§ = 0;
         this.§0k§ = 0;
         this.§#g§ = param1;
         §?!9§.§[!!§ = 1;
         this.§=[§ = Math.max(1,Math.min(2,param3));
         this.§=2§ = this.§;!Z§;
         this.§6!3§(param2);
         if(this.§3!e§ && this.§+!i§)
         {
            this.§^"2§();
            this.§"!v§ = this.§3!e§.x - this.§+!i§.x;
            this.§ null§ = this.§3!e§.y - this.§+!i§.y;
            this.§4s§ = this.§3!e§.scale - this.§+!i§.scale;
            this.§>!_§ = this.§3!e§.x;
            this.§0k§ = this.§3!e§.y;
            §[!!§ = this.§3!e§.scale * this.§=2§;
         }
         this.mCurrentCameraSliderLocation = §"!-§;
         this.§3!A§ = true;
         this.§9t§ = §"!-§ / 500;
      }
      
      public static function get §7C§() : Number
      {
         var _loc1_:Number = §6!E§.§'!U§ / §6!E§.§5!=§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §[!!§ * _loc1_ * _loc1_;
      }
      
      public function get §@""§() : Number
      {
         return this.§=2§;
      }
      
      public function set §@""§(param1:Number) : void
      {
         this.§=2§ = param1;
      }
      
      public function §1!§() : Number
      {
         return §1f§ / (this.§+t§ - this.§>!W§);
      }
      
      public function get §;!Z§() : Number
      {
         var _loc1_:Number = §6!E§.§'!U§ / §6!E§.§5!=§;
         return this.§=[§ / _loc1_;
      }
      
      public function get §>>§() : Number
      {
         return this.§#!M§;
      }
      
      public function get §^S§() : Number
      {
         return this.§76§;
      }
      
      public function get §+!Z§() : Number
      {
         return this.§1"5§;
      }
      
      public function get §2!R§() : Number
      {
         return this.§>!W§;
      }
      
      public function get §]!N§() : Number
      {
         return this.§+t§;
      }
      
      public function get §=?§() : Number
      {
         return this.§<""§;
      }
      
      public function get §2y§() : Number
      {
         return this.§+L§;
      }
      
      public function get §]!o§() : Number
      {
         return this.§+t§ - this.§>!W§;
      }
      
      protected function get §3!J§() : §!6§
      {
         return this.§3!e§;
      }
      
      public function § s§(param1:Number) : void
      {
         this.§=2§ = param1;
         this.§'!5§();
         this.§+q§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §'!K§)
         {
            return;
         }
         this.goToCastleView();
         this.§>!@§ = 2000;
         this.§3!;§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§>!_§ = this.§+!i§.x;
         this.§0k§ = this.§+!i§.y;
         this.§3!A§ = false;
         this.§9t§ = §"!-§ / 160000 * param1;
         this.§7!P§(§'!K§);
      }
      
      public function §^"2§() : void
      {
         var _loc1_:Number = (this.§3!e§.x - this.§+!i§.x) / 1.6;
         if(_loc1_ < §1f§ * 1.2)
         {
            _loc1_ = §1f§ * 1.2;
         }
         this.§>!W§ = this.§+!i§.x - _loc1_;
         this.§+t§ = this.§3!e§.x + _loc1_;
         this.§8!>§ = Math.min(this.§3!e§.y,this.§+!i§.y) - §,"!§;
         this.§[" § = Math.max(this.§3!e§.y,this.§+!i§.y) + §,"!§;
         this.§<""§ = (this.§3!e§.x + this.§+!i§.x) / 2;
         this.§+L§ = (this.§3!e§.y + this.§+!i§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§#g§ = null;
      }
      
      public function §6!3§(param1:§7@§) : void
      {
         var _loc3_:§%!D§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§2"!§)
         {
            _loc3_ = param1.§'!;§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§,!V§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == §[! §)
            {
               this.§+!i§ = new §!6§(_loc5_,_loc6_,_loc7_,true);
               this.§1!M§ = new §-!4§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §4+§)
            {
               this.§3!e§ = new §!6§(_loc5_,_loc6_,_loc7_,false);
               this.§6!>§ = new §-!4§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §#!-§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:§%!D§) : Number
      {
         var _loc2_:Number = §,"!§ / (param1.bottom - param1.top);
         var _loc3_:Number = §1f§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §>!3§(param1:§7@§) : void
      {
         var _loc2_:§%!D§ = new §%!D§();
         _loc2_.id = §[! §;
         _loc2_.x = this.§+!i§.x;
         _loc2_.y = this.§+!i§.y;
         var _loc3_:Number = §1f§ / this.§+!i§.scale / 2;
         var _loc4_:Number = §,"!§ / this.§+!i§.scale / 2;
         _loc2_.left = this.§+!i§.x - _loc3_;
         _loc2_.right = this.§+!i§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §,"!§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §1f§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§%!D§;
         (_loc7_ = new §%!D§()).id = §4+§;
         _loc7_.x = this.§3!e§.x;
         _loc7_.y = this.§3!e§.y;
         var _loc8_:Number = §1f§ / this.§3!e§.scale / 2;
         var _loc9_:Number = §,"!§ / this.§3!e§.scale / 2;
         _loc7_.left = this.§3!e§.x - _loc8_;
         _loc7_.right = this.§3!e§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §,"!§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §1f§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§ " §();
         param1.§-!O§(_loc2_);
         param1.§-!O§(_loc7_);
      }
      
      public function §,!V§(param1:§%!D§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §6!E§.§#9§ * 0.5 / _loc2_ * §<S§.§;!Q§;
         var _loc4_:Number = param1.y - §6!E§.§<N§ * 0.5 / _loc2_ * §<S§.§;!Q§;
         var _loc5_:Number = _loc3_ + §6!E§.§#9§ / _loc2_ * §<S§.§;!Q§;
         var _loc6_:Number = _loc4_ + §6!E§.§<N§ / _loc2_ * §<S§.§;!Q§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §2"%§(param1:§!6§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§9t§;
         if(_loc3_ >= §"!-§)
         {
            _loc3_ = §"!-§;
            this.§7!P§(§`h§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§7!P§(§`h§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §@!;§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§9t§;
         var _loc4_:Number = -§"!-§ * 0.7;
         if(_loc2_ >= §"!-§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §"!-§;
            }
            this.§9t§ = -this.§9t§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §^"3§(param1:Number) : void
      {
         if(this.mCurrentAction == §'!K§)
         {
            this.§@!;§(param1);
         }
         else if(this.mCurrentAction == §"!y§)
         {
            this.§2"%§(this.§3!e§,param1);
         }
         else if(this.mCurrentAction == §]"§)
         {
            this.§2"%§(this.§+!i§,-param1);
         }
         else if(this.mCurrentAction == §'W§)
         {
            this.§3!A§ = true;
         }
         else if(this.mCurrentAction == §7!-§)
         {
            this.§6" §(param1);
         }
      }
      
      public function §%&§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§!Q§)
         {
            this.§>!_§ = this.§!Q§.x;
            this.§0k§ = this.§!Q§.y;
            §[!!§ = §1f§ / (this.§!Q§.right - this.§!Q§.left);
         }
         else
         {
            this.§'!5§();
            this.§^"3§(param1);
            if(Math.abs(this.§?X§ - §6!E§.§'!U§ / §6!E§.§5!=§) > 0.01)
            {
               param1 = 1000;
            }
            this.§!"%§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§3!;§();
         this.§?X§ = §6!E§.§'!U§ / §6!E§.§5!=§;
      }
      
      private function §2!`§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§6!>§.x - this.§1!M§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§1!M§.scale + (this.§6!>§.scale - this.§1!M§.scale) * param1;
         var _loc4_:Number = this.§1!M§.x + (this.§6!>§.x - this.§1!M§.x) * param1;
         var _loc5_:Number = this.§1!M§.y + (this.§6!>§.y - this.§1!M§.y) * param1;
         this.§^!1§.x -= (this.§^!1§.x - _loc4_) * param2;
         this.§^!1§.y -= (this.§^!1§.y - _loc5_) * param2;
         this.§^!1§.scale -= (this.§^!1§.scale - _loc3_) * param2;
      }
      
      protected function §+q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"!v§ != 0)
         {
            if(!this.§3!A§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §"!-§;
            this.§2!`§(_loc3_,param2);
            this.§>!_§ = this.§^!1§.x;
            this.§0k§ = this.§^!1§.y;
            §[!!§ = this.§^!1§.scale;
         }
      }
      
      private function §%J§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§^^§;
         var _loc5_:Number = (_loc4_ = this.§#g§.levelObjects.activeObject).§[!2§();
         var _loc6_:Number = _loc4_.§]7§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§^",§().GetLinearVelocity().x) > 0 && this.§"!v§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§"!v§ * §"!-§;
         }
         if(param1 >= §"!-§)
         {
            param1 = §"!-§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §"!-§;
         this.§2!`§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §6!E§.§'!U§ / §6!E§.§5!=§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§^!1§.x - §1f§ / _loc9_ * 0.5 / this.§^!1§.scale;
         var _loc11_:Number = this.§^!1§.y - §,"!§ * 0.5 / this.§^!1§.scale;
         var _loc12_:Number = this.§^!1§.x + §1f§ / _loc9_ * 0.5 / this.§^!1§.scale;
         var _loc13_:Number = this.§^!1§.y + §,"!§ * 0.5 / this.§^!1§.scale;
         var _loc14_:Number = 150 * §<S§.§;!Q§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§>!W§,_loc15_);
         _loc17_ = Math.min(this.§+t§,_loc17_);
         var _loc19_:Number = Math.abs(§1f§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§,"!§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§^!1§.scale)
         {
            _loc21_ = this.§^!1§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §1f§ / _loc9_ * 0.5 / _loc21_ > this.§+t§)
         {
            _loc15_ = (_loc17_ = this.§+t§) - §1f§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§>!W§)
            {
               _loc15_ = this.§>!W§;
            }
         }
         if(_loc22_ - §1f§ / _loc9_ * 0.5 / _loc21_ < this.§>!W§)
         {
            _loc17_ = (_loc15_ = this.§>!W§) + §1f§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§+t§)
            {
               _loc17_ = this.§+t§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§1f§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §,"!§ * 0.5 < this.§8!>§)
         {
            _loc23_ = this.§8!>§ + §,"!§ * 0.5;
         }
         if(_loc23_ + §,"!§ * 0.5 > this.§[" §)
         {
            _loc23_ = this.§[" § - §,"!§ * 0.5;
         }
         this.§>!_§ -= (this.§>!_§ - _loc22_) * param3;
         this.§&C§ -= (this.§&C§ - _loc21_) * param3;
         §[!!§ = this.§&C§;
         this.§0k§ -= (this.§0k§ - _loc23_) * param3;
         if(_loc5_ >= this.§+t§ || _loc5_ <= this.§>!W§)
         {
            this.§^!1§.scale = §[!!§;
            this.§^!1§.x = this.§>!_§;
            this.§^!1§.y = this.§0k§;
         }
      }
      
      public function §!"%§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §"!-§)
         {
            this.§3!A§ = true;
         }
         if(this.mCurrentAction == §'W§)
         {
            if(!this.§#g§.levelObjects.activeObject)
            {
               this.§7!P§(§"!y§);
               this.§&E§ = §1!&§;
            }
            else
            {
               this.§%J§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§+q§(param1,_loc4_);
         }
      }
      
      public function §else§(param1:Number, param2:Number) : void
      {
         this.§39§ = param1;
         this.§4F§ = param2;
      }
      
      private function §%j§(param1:§-!4§, param2:§!6§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §6!E§.§'!U§ / §6!E§.§5!=§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §%w§ + (param2.scale - §%w§) * this.§@""§;
         if(§1f§ / param1.scale > (this.§+t§ - this.§>!W§) * _loc3_)
         {
            _loc4_ = §1f§ / ((this.§+t§ - this.§>!W§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §>!<§(param1:§-!4§, param2:§!6§) : Boolean
      {
         var _loc3_:Boolean = this.§%j§(param1,param2);
         var _loc4_:Number;
         if((_loc4_ = §6!E§.§'!U§ / §6!E§.§5!=§) > 1)
         {
            _loc4_ = 1;
         }
         param1.y = param2.y;
         param1.x = param2.x;
         var _loc5_:Number;
         if((_loc5_ = param1.x - §1f§ / _loc4_ * 0.5 / param1.scale) < this.§>!W§ && param1.§3C§)
         {
            param1.x += this.§>!W§ - _loc5_;
         }
         var _loc6_:Number;
         if((_loc6_ = param1.x + §1f§ / _loc4_ * 0.5 / param1.scale) > this.§+t§ && !param1.§3C§)
         {
            param1.x += this.§+t§ - _loc6_;
         }
         return _loc3_;
      }
      
      private function § "!§(param1:§-!4§, param2:§!6§) : Number
      {
         return (param1.scale - §%w§) / (param2.scale - §%w§);
      }
      
      protected function §'!5§() : void
      {
         this.§>!<§(this.§1!M§,this.§+!i§);
         var _loc1_:Number = this.§ "!§(this.§1!M§,this.§+!i§);
         this.§>!<§(this.§6!>§,this.§3!e§);
         var _loc2_:Number = this.§ "!§(this.§6!>§,this.§3!e§);
         this.§=2§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §3!;§() : void
      {
         var _loc1_:Number = this.§>!_§ / §<S§.§;!Q§ + this.§39§;
         var _loc2_:Number = this.§0k§ / §<S§.§;!Q§ + this.§4F§;
         var _loc3_:Number = §6!E§.§'!U§;
         var _loc4_:Number = §6!E§.§5!=§;
         var _loc5_:Number = §<S§.§7!y§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §<S§.§^![§;
         this.§76§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§1"5§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§76§ += _loc5_ / 2 - _loc5_ / 2 / §7C§;
         this.§1"5§ += (_loc6_ / 2 - _loc6_ / 2 / §7C§) / (_loc3_ / _loc4_);
         this.§#g§.setScreenOffset(this.§76§,this.§1"5§,§7C§);
      }
      
      protected function §28§() : void
      {
         this.§7!P§(§7!-§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§&E§ = -1;
         this.§28§();
         this.§>!,§ = this.§!!Y§ = this.§<!e§ = param1;
         this.§?!Z§ = this.§>!p§ = this.§+""§ = param2;
         this.§ in§ = 0;
         this.§^!1§.x = this.§>!_§;
         this.§^!1§.y = this.§0k§;
         this.§^!1§.scale = §[!!§;
         this.§&C§ = §[!!§;
         if(Math.abs(this.§6!>§.x - this.§1!M§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§>!_§ - this.§1!M§.x) / (this.§6!>§.x - this.§1!M§.x) * §"!-§;
         }
         this.mDragging = true;
      }
      
      public function §6" §(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§ in§ += param1;
         var _loc3_:Number = this.§>!,§ - this.§!!Y§;
         if(this.§"!v§ > 0)
         {
            _loc2_ -= _loc3_ * §<S§.§;!Q§ / §7C§ / this.§"!v§ * §"!-§;
            this.§3!A§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§3!A§ = true;
            }
            if(_loc2_ > §"!-§)
            {
               _loc2_ += (§"!-§ - _loc2_) * 0.3;
               this.§3!A§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§!!Y§ = this.§>!,§;
      }
      
      protected function §!!o§() : Boolean
      {
         return this.mCurrentAction == §7!-§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§>!,§ = param1;
            this.§?!Z§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7!-§)
         {
            this.§7!P§(§`h§);
            if(param1 > 0)
            {
               this.§>!,§ = param1;
            }
            _loc3_ = Math.abs(this.§>!,§ - this.§<!e§);
            if(this.§ in§ < §,s§ && _loc3_ >= §#X§ && _loc3_ >= §!![§ * this.§ in§ / 1000)
            {
               if(this.§>!,§ < this.§<!e§)
               {
                  this.§7!P§(§"!y§);
               }
               else
               {
                  this.§7!P§(§]"§);
               }
               this.§9t§ = _loc3_ / this.§ in§ * 10;
               this.§3!A§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§3!A§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §"!-§)
               {
                  this.§3!A§ = true;
               }
            }
            else if(this.§ in§ < § !Q§)
            {
               this.§;!^§();
               this.§9t§ = §"!-§ / (§"!-§ / 500);
               this.§3!A§ = true;
            }
            else
            {
               this.§6" §(0);
               this.§ "+§(0);
               this.§9t§ = §"!-§ / (§"!-§ / 500);
               this.§3!A§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §;!^§() : void
      {
         if(this.mCurrentAction == §"!y§)
         {
            this.§7!P§(§]"§);
         }
         else if(this.mCurrentAction == §]"§)
         {
            this.§7!P§(§"!y§);
         }
         else if(this.mCurrentCameraSliderLocation >= §"!-§ / 2)
         {
            this.§7!P§(§]"§);
         }
         else if(this.mCurrentCameraSliderLocation <= §"!-§ / 2)
         {
            this.§7!P§(§"!y§);
         }
      }
      
      public function § "+§(param1:int) : void
      {
         this.§&E§ = param1;
         if(this.mCurrentCameraSliderLocation < §"!-§ / 2)
         {
            this.§7!P§(§]"§);
         }
         else
         {
            this.§7!P§(§"!y§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§7!P§(§]"§);
      }
      
      public function goToCastleView() : void
      {
         this.§7!P§(§"!y§);
      }
      
      public function §7!P§(param1:int) : void
      {
         this.§^!1§.x = this.§>!_§;
         this.§^!1§.y = this.§0k§;
         this.§^!1§.scale = §[!!§;
         this.§&C§ = §[!!§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §"!-§)
         {
            return true;
         }
         if(this.mCurrentAction == §"!y§)
         {
            return true;
         }
         return false;
      }
      
      public function §>!U§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §]"§)
         {
            return true;
         }
         return false;
      }
      
      public function §9"'§(param1:§%!D§) : void
      {
         this.§!Q§ = param1;
         if(this.§!Q§ != null)
         {
            this.§>!C§ = new §%!D§();
            this.§>!C§.x = this.§>!_§;
            this.§>!C§.y = this.§0k§;
            this.§>!C§.scale = §[!!§;
         }
         else
         {
            this.§>!_§ = this.§>!C§.x;
            this.§0k§ = this.§>!C§.y;
            §[!!§ = this.§>!C§.scale;
            this.§>!C§ = null;
         }
      }
      
      protected function §6"0§() : void
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
         var _loc3_:Number = this.§=2§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§>>§,Math.min(this.§;!Z§,_loc3_));
         if(_loc3_ != this.§=2§)
         {
            this.§=2§ = _loc3_;
         }
      }
      
      public function §@!M§() : Number
      {
         return (this.§@""§ - this.§>>§) / (this.§;!Z§ - this.§>>§);
      }
      
      public function §[`§(param1:Number) : void
      {
         this.§@""§ = Math.min(Math.max(param1,0),1) * (this.§;!Z§ - this.§>>§) + this.§>>§;
      }
      
      public function §?"4§() : void
      {
         this.§=2§ = Math.max(this.§=2§ - 0.5,0.5);
      }
      
      public function §,@§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§@""§;
         _loc1_ += " mXcenterB2: " + this.§>!_§;
         _loc1_ += " mYcenterB2: " + this.§0k§;
         _loc1_ += " mXcenterB2target: " + this.§@""§;
         _loc1_ += "\n mYcenterB2target: " + this.§@""§;
         _loc1_ += " mXcenterB2previous: " + this.§@""§;
         _loc1_ += " mYcenterB2previous: " + this.§@""§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§@""§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§@""§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§@""§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§@""§;
         _loc1_ += " mTargetScale: " + this.§@""§;
         _loc1_ += " mTargetScalePrevious: " + this.§@""§;
         _loc1_ += " mCastleCameraX: " + this.§@""§;
         _loc1_ += "\n mCastleCameraY: " + this.§@""§;
         _loc1_ += " mCastleCameraScale: " + this.§@""§;
         _loc1_ += " mBirdCameraX: " + this.§@""§;
         _loc1_ += " mBirdCameraY: " + this.§@""§;
         _loc1_ += " mBirdCameraScale: " + this.§@""§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§@""§;
         _loc1_ += "mScreenOffsetYl: " + this.§@""§;
         _loc1_ += " mDragging: " + this.§@""§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§@""§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§@""§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§@""§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§@""§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§@""§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§@""§;
         _loc1_ += " mDraggingTimer: " + this.§@""§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§@""§;
         _loc1_ += " mCameraBorderRight: " + this.§@""§;
         _loc1_ += "mCameraBorderTop: " + this.§@""§;
         _loc1_ += "mCameraBorderBottom: " + this.§@""§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§@""§ + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
