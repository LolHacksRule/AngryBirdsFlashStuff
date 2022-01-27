package §7§#6
{
   import §!r§.§0N§;
   import §"§.§;!E§;
   import §9"`§.§-"H§;
   import com.angrybirds.§<!J§;
   import §null §.§ case§;
   import §null §.§>#-§;
   
   public class §8[§
   {
      
      public static const §;"t§:Number = 1.25;
      
      public static const §]!S§:Number = 0.15;
      
      public static const §,"h§:Number = §<!J§.§8!Q§ * §;!E§.§0"?§;
      
      public static const §=b§:Number = §<!J§.§,e§ * §;!E§.§0"?§;
      
      public static const §4Y§:Number = 0.1;
      
      public static const §>,§:int = 1500;
      
      public static const §1!w§:int = 10;
      
      public static const §47§:int = 15;
      
      public static const §<#4§:int = 300;
      
      public static const §^!i§:int = 1000;
      
      public static const §1i§:int = 10000;
      
      public static const §,"A§:int = §1i§ / 50;
      
      public static const §^!F§:int = 0;
      
      public static const § "<§:int = 1;
      
      public static const §?t§:int = 2;
      
      public static const §%!B§:int = 3;
      
      public static const §'"&§:int = 4;
      
      public static const §<8§:int = 5;
      
      public static const §"6§:String = § case§.CASTLE;
      
      public static const §>h§:String = § case§.SLINGSHOT;
      
      protected static var §6H§:Number;
      
      public static const §4=§:Number = 2000;
       
      
      protected var §%!a§:Number = 1.0;
      
      protected var § C§:Number = 0.2;
      
      protected var §+!]§:Number;
      
      protected var §,!o§:Number;
      
      protected var §^!k§:Number;
      
      public var §+!E§:§;!E§;
      
      public var §'"Z§:Number;
      
      public var §@!f§:Number;
      
      protected var §5!_§:§##6§;
      
      protected var §`"Q§:§##6§;
      
      protected var §<"x§:Number;
      
      protected var §=">§:Number;
      
      protected var § "7§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §@!"§:Number;
      
      protected var §-!E§:Number;
      
      protected var §6"[§:Number;
      
      protected var §4"$§:Number;
      
      protected var §8"E§:Number;
      
      protected var §1"[§:Number;
      
      protected var §6u§:§;"q§;
      
      protected var §9"@§:§;"q§;
      
      protected var §5" §:Number = 0;
      
      protected var §&!v§:Number = 0;
      
      protected var §""^§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §!";§:Number = 0;
      
      public var §?#0§:Boolean = true;
      
      public var §3E§:Number = 0;
      
      public var §,9§:Number = 0;
      
      public var §3!t§:Number = 0;
      
      public var §]!?§:Number = 0;
      
      public var §?"2§:Number = 0;
      
      public var §@";§:Number = 0;
      
      public var §4"!§:Number = 0;
      
      public var §`!@§:Number = 0;
      
      public var §!G§:Number = 0;
      
      private var §=!g§:§;"q§;
      
      public var §3"r§:Number = 0;
      
      private var §=!+§:Number = 0;
      
      private var §&]§:Number = 0;
      
      private var §3!9§:§ case§ = null;
      
      private var §[!6§:§ case§ = null;
      
      public function §8[§(param1:§;!E§, param2:§>#-§, param3:Number = 1.0)
      {
         this.§=!g§ = new §;"q§(0,0,1,false);
         super();
         this.§,!o§ = 0;
         this.§^!k§ = 0;
         this.§+!E§ = param1;
         §8[§.§6H§ = 1;
         this.§%!a§ = Math.max(1,Math.min(2,param3));
         this.§+!]§ = this.§-"J§;
         this.§+!0§(param2);
         if(this.§5!_§ && this.§`"Q§)
         {
            this.§&!i§();
            this.§5" § = this.§5!_§.x - this.§`"Q§.x;
            this.§&!v§ = this.§5!_§.y - this.§`"Q§.y;
            this.§""^§ = this.§5!_§.scale - this.§`"Q§.scale;
            this.§,!o§ = this.§5!_§.x;
            this.§^!k§ = this.§5!_§.y;
            §6H§ = this.§5!_§.scale * this.§+!]§;
         }
         this.mCurrentCameraSliderLocation = §1i§;
         this.§?#0§ = true;
         this.§!";§ = §1i§ / 500;
      }
      
      public static function get §#?§() : Number
      {
         var _loc1_:Number = §<!J§.§^K§ / §<!J§.§`1§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §6H§ * _loc1_ * _loc1_;
      }
      
      public function get §0"d§() : Number
      {
         return this.§+!]§;
      }
      
      public function set §0"d§(param1:Number) : void
      {
         this.§+!]§ = param1;
      }
      
      public function §1"M§() : Number
      {
         return §,"h§ / (this.§4"$§ - this.§6"[§);
      }
      
      public function get §-"J§() : Number
      {
         var _loc1_:Number = §<!J§.§^K§ / §<!J§.§`1§;
         return this.§%!a§ / _loc1_;
      }
      
      public function get §^""§() : Number
      {
         return this.§ C§;
      }
      
      public function get §9![§() : Number
      {
         return this.§<"x§;
      }
      
      public function get §<V§() : Number
      {
         return this.§=">§;
      }
      
      public function get §<!r§() : Number
      {
         return this.§6"[§;
      }
      
      public function get §+"&§() : Number
      {
         return this.§4"$§;
      }
      
      public function get §@!5§() : Number
      {
         return this.§@!"§;
      }
      
      public function get §5!'§() : Number
      {
         return this.§-!E§;
      }
      
      public function get §@!w§() : Number
      {
         return this.§4"$§ - this.§6"[§;
      }
      
      protected function get §<#7§() : §##6§
      {
         return this.§5!_§;
      }
      
      public function §!c§(param1:Number) : void
      {
         this.§+!]§ = param1;
         this.§^"Y§();
         this.§%g§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<8§)
         {
            return;
         }
         this.goToCastleView();
         this.§3E§ = 2000;
         this.§+"r§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§,!o§ = this.§`"Q§.x;
         this.§^!k§ = this.§`"Q§.y;
         this.§?#0§ = false;
         this.§!";§ = §1i§ / 160000 * param1;
         this.setAction(§<8§);
      }
      
      public function §&!i§() : void
      {
         var _loc1_:Number = (this.§5!_§.x - this.§`"Q§.x) / 1.6;
         if(_loc1_ < §,"h§ * 1.2)
         {
            _loc1_ = §,"h§ * 1.2;
         }
         this.§6"[§ = this.§`"Q§.x - _loc1_;
         this.§4"$§ = this.§5!_§.x + _loc1_;
         this.§8"E§ = Math.min(this.§5!_§.y,this.§`"Q§.y) - §=b§;
         this.§1"[§ = Math.max(this.§5!_§.y,this.§`"Q§.y) + §=b§;
         this.§@!"§ = (this.§5!_§.x + this.§`"Q§.x) / 2;
         this.§-!E§ = (this.§5!_§.y + this.§`"Q§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§+!E§ = null;
      }
      
      public function §+!0§(param1:§>#-§) : void
      {
         var _loc3_:§ case§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§[!%§)
         {
            _loc3_ = param1.§7"d§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§#!-§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§4!D§(_loc3_);
            if(_loc4_ == §>h§)
            {
               this.§`"Q§ = new §##6§(_loc5_,_loc6_,_loc7_,true);
               this.§9"@§ = new §;"q§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §"6§)
            {
               this.§5!_§ = new §##6§(_loc5_,_loc6_,_loc7_,false);
               this.§6u§ = new §;"q§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §-"H§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §4!D§(param1:§ case§) : Number
      {
         var _loc2_:Number = §=b§ / (param1.bottom - param1.top);
         var _loc3_:Number = §,"h§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §#!V§(param1:§>#-§) : void
      {
         var _loc2_:§ case§ = new § case§();
         _loc2_.id = §>h§;
         _loc2_.x = this.§`"Q§.x;
         _loc2_.y = this.§`"Q§.y;
         var _loc3_:Number = §,"h§ / this.§`"Q§.scale / 2;
         var _loc4_:Number = §=b§ / this.§`"Q§.scale / 2;
         _loc2_.left = this.§`"Q§.x - _loc3_;
         _loc2_.right = this.§`"Q§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§`"Q§.scale;
         var _loc5_:§ case§;
         (_loc5_ = new § case§()).id = §"6§;
         _loc5_.x = this.§5!_§.x;
         _loc5_.y = this.§5!_§.y;
         var _loc6_:Number = §,"h§ / this.§5!_§.scale / 2;
         var _loc7_:Number = §=b§ / this.§5!_§.scale / 2;
         _loc5_.left = this.§5!_§.x - _loc6_;
         _loc5_.right = this.§5!_§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§5!_§.scale;
         param1.§36§();
         param1.§@0§(_loc2_);
         param1.§@0§(_loc5_);
      }
      
      public function §#!-§(param1:§ case§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §<!J§.§8!Q§ * 0.5 / _loc2_ * §;!E§.§0"?§;
         var _loc4_:Number = param1.y - §<!J§.§,e§ * 0.5 / _loc2_ * §;!E§.§0"?§;
         var _loc5_:Number = _loc3_ + §<!J§.§8!Q§ / _loc2_ * §;!E§.§0"?§;
         var _loc6_:Number = _loc4_ + §<!J§.§,e§ / _loc2_ * §;!E§.§0"?§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §"!x§(param1:§##6§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§!";§;
         if(_loc3_ >= §1i§)
         {
            _loc3_ = §1i§;
            this.setAction(§^!F§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(§^!F§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function § "o§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§!";§;
         var _loc4_:Number = -§1i§ * 0.7;
         if(_loc2_ >= §1i§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §1i§;
            }
            this.§!";§ = -this.§!";§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §6x§(param1:Number) : void
      {
         if(this.mCurrentAction == §<8§)
         {
            this.§ "o§(param1);
         }
         else if(this.mCurrentAction == § "<§)
         {
            this.§"!x§(this.§5!_§,param1);
         }
         else if(this.mCurrentAction == §?t§)
         {
            this.§"!x§(this.§`"Q§,-param1);
         }
         else if(this.mCurrentAction == §%!B§)
         {
            this.§?#0§ = true;
         }
         else if(this.mCurrentAction == §'"&§)
         {
            this.§1"P§(param1);
         }
      }
      
      public function §[f§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§3!9§)
         {
            this.§,!o§ = this.§3!9§.x;
            this.§^!k§ = this.§3!9§.y;
            §6H§ = §,"h§ / (this.§3!9§.right - this.§3!9§.left);
         }
         else
         {
            this.§^"Y§();
            this.§6x§(param1);
            if(Math.abs(this.§ "7§ - §<!J§.§^K§ / §<!J§.§`1§) > 0.01)
            {
               param1 = 1000;
            }
            this.§>!x§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§+"r§();
         this.§ "7§ = §<!J§.§^K§ / §<!J§.§`1§;
      }
      
      private function §,#3§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§6u§.x - this.§9"@§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§9"@§.scale + (this.§6u§.scale - this.§9"@§.scale) * param1;
         var _loc4_:Number = this.§9"@§.x + (this.§6u§.x - this.§9"@§.x) * param1;
         var _loc5_:Number = this.§9"@§.y + (this.§6u§.y - this.§9"@§.y) * param1;
         this.§=!g§.x -= (this.§=!g§.x - _loc4_) * param2;
         this.§=!g§.y -= (this.§=!g§.y - _loc5_) * param2;
         this.§=!g§.scale -= (this.§=!g§.scale - _loc3_) * param2;
         this.§,4§(this.§=!g§);
      }
      
      protected function §%g§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§5" § != 0)
         {
            if(!this.§?#0§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §1i§;
            this.§,#3§(_loc3_,param2);
            this.§,!o§ = this.§=!g§.x;
            this.§^!k§ = this.§=!g§.y;
            §6H§ = this.§=!g§.scale;
         }
      }
      
      private function §>!=§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§0N§;
         var _loc5_:Number = (_loc4_ = this.§+!E§.levelObjects.activeObject).§"!r§();
         var _loc6_:Number = _loc4_.§8#1§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.§3"s§().GetLinearVelocity().x) > 0 && this.§5" § != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§5" § * §1i§;
         }
         if(param1 >= §1i§)
         {
            param1 = §1i§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §1i§;
         this.§,#3§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §<!J§.§^K§ / §<!J§.§`1§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§=!g§.x - §,"h§ / _loc9_ * 0.5 / this.§=!g§.scale;
         var _loc11_:Number = this.§=!g§.y - §=b§ * 0.5 / this.§=!g§.scale;
         var _loc12_:Number = this.§=!g§.x + §,"h§ / _loc9_ * 0.5 / this.§=!g§.scale;
         var _loc13_:Number = this.§=!g§.y + §=b§ * 0.5 / this.§=!g§.scale;
         var _loc14_:Number = 150 * §;!E§.§0"?§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§6"[§,_loc15_);
         _loc17_ = Math.min(this.§4"$§,_loc17_);
         var _loc19_:Number = Math.abs(§,"h§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§=b§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§=!g§.scale)
         {
            _loc21_ = this.§=!g§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §,"h§ / _loc9_ * 0.5 / _loc21_ > this.§4"$§)
         {
            _loc15_ = (_loc17_ = this.§4"$§) - §,"h§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§6"[§)
            {
               _loc15_ = this.§6"[§;
            }
         }
         if(_loc22_ - §,"h§ / _loc9_ * 0.5 / _loc21_ < this.§6"[§)
         {
            _loc17_ = (_loc15_ = this.§6"[§) + §,"h§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§4"$§)
            {
               _loc17_ = this.§4"$§;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§,"h§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §=b§ * 0.5 < this.§8"E§)
         {
            _loc23_ = this.§8"E§ + §=b§ * 0.5;
         }
         if(_loc23_ + §=b§ * 0.5 > this.§1"[§)
         {
            _loc23_ = this.§1"[§ - §=b§ * 0.5;
         }
         this.§,!o§ -= (this.§,!o§ - _loc22_) * param3;
         this.§3"r§ -= (this.§3"r§ - _loc21_) * param3;
         §6H§ = this.§3"r§;
         this.§^!k§ -= (this.§^!k§ - _loc23_) * param3;
         if(_loc5_ >= this.§4"$§ || _loc5_ <= this.§6"[§)
         {
            this.§=!g§.scale = §6H§;
            this.§=!g§.x = this.§,!o§;
            this.§=!g§.y = this.§^!k§;
         }
      }
      
      protected function §>!x§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §1i§)
         {
            this.§?#0§ = true;
         }
         if(this.mCurrentAction == §%!B§)
         {
            if(!this.§+!E§.levelObjects.activeObject)
            {
               this.setAction(§ "<§);
               this.§!G§ = §^!i§;
            }
            else
            {
               this.§>!=§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§%g§(param1,_loc4_);
         }
      }
      
      public function §^"?§(param1:Number, param2:Number) : void
      {
         this.§=!+§ = param1;
         this.§&]§ = param2;
      }
      
      protected function §[%§(param1:§;"q§, param2:§##6§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §<!J§.§^K§ / §<!J§.§`1§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §]!S§ + (param2.scale - §]!S§) * this.§0"d§;
         if(§,"h§ / param1.scale > (this.§4"$§ - this.§6"[§) * _loc3_)
         {
            _loc4_ = §,"h§ / ((this.§4"$§ - this.§6"[§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §1#3§(param1:§;"q§, param2:§##6§) : Boolean
      {
         var _loc3_:Boolean = this.§[%§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§,4§(param1);
         return _loc3_;
      }
      
      private function §,4§(param1:§;"q§) : void
      {
         var _loc2_:Number = §<!J§.§^K§ / §<!J§.§`1§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §,"h§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§6"[§)
         {
            param1.x += this.§6"[§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §,"h§ / _loc2_ * 0.5 / param1.scale) > this.§4"$§)
         {
            param1.x += this.§4"$§ - _loc4_;
         }
      }
      
      private function §""q§(param1:§;"q§, param2:§##6§) : Number
      {
         return (param1.scale - §]!S§) / (param2.scale - §]!S§);
      }
      
      protected function §^"Y§() : void
      {
         this.§1#3§(this.§9"@§,this.§`"Q§);
         var _loc1_:Number = this.§""q§(this.§9"@§,this.§`"Q§);
         this.§1#3§(this.§6u§,this.§5!_§);
         var _loc2_:Number = this.§""q§(this.§6u§,this.§5!_§);
         this.§+!]§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §+"r§() : void
      {
         var _loc1_:Number = this.§,!o§ / §;!E§.§0"?§ + this.§=!+§;
         var _loc2_:Number = this.§^!k§ / §;!E§.§0"?§ + this.§&]§;
         var _loc3_:Number = §<!J§.§^K§;
         var _loc4_:Number = §<!J§.§`1§;
         var _loc5_:Number = §;!E§.§;#&§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §;!E§.§!#-§;
         this.§<"x§ = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§=">§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§<"x§ += _loc5_ / 2 - _loc5_ / 2 / §#?§;
         this.§=">§ += (_loc6_ / 2 - _loc6_ / 2 / §#?§) / (_loc3_ / _loc4_);
         this.§+!E§.setScreenOffset(this.§<"x§,this.§=">§,§#?§);
      }
      
      protected function §7"Y§() : void
      {
         this.setAction(§'"&§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§!G§ = -1;
         this.§7"Y§();
         this.§?"2§ = this.§4"!§ = this.§3!t§ = param1;
         this.§@";§ = this.§`!@§ = this.§]!?§ = param2;
         this.§,9§ = 0;
         this.§=!g§.x = this.§,!o§;
         this.§=!g§.y = this.§^!k§;
         this.§=!g§.scale = §6H§;
         this.§3"r§ = §6H§;
         if(Math.abs(this.§6u§.x - this.§9"@§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§,!o§ - this.§9"@§.x) / (this.§6u§.x - this.§9"@§.x) * §1i§;
         }
         this.mDragging = true;
      }
      
      public function §1"P§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§,9§ += param1;
         var _loc3_:Number = this.§?"2§ - this.§4"!§;
         if(this.§5" § > 0)
         {
            _loc2_ -= _loc3_ * §;!E§.§0"?§ / §#?§ / this.§5" § * §1i§;
            this.§?#0§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§?#0§ = true;
            }
            if(_loc2_ > §1i§)
            {
               _loc2_ += (§1i§ - _loc2_) * 0.3;
               this.§?#0§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§4"!§ = this.§?"2§;
      }
      
      protected function §;Z§() : Boolean
      {
         return this.mCurrentAction == §'"&§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§?"2§ = param1;
            this.§@";§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §'"&§)
         {
            this.setAction(§^!F§);
            if(param1 > 0)
            {
               this.§?"2§ = param1;
            }
            _loc3_ = Math.abs(this.§?"2§ - this.§3!t§);
            if(this.§,9§ < §>,§ && _loc3_ >= §1!w§ && _loc3_ >= §47§ * this.§,9§ / 1000)
            {
               if(this.§?"2§ < this.§3!t§)
               {
                  this.setAction(§ "<§);
               }
               else
               {
                  this.setAction(§?t§);
               }
               this.§!";§ = _loc3_ / this.§,9§ * 10;
               this.§?#0§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§?#0§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §1i§)
               {
                  this.§?#0§ = true;
               }
            }
            else if(this.§,9§ < §<#4§)
            {
               this.§0R§();
               this.§!";§ = §1i§ / (§1i§ / 500);
               this.§?#0§ = true;
            }
            else
            {
               this.§1"P§(0);
               this.§2"w§(0);
               this.§!";§ = §1i§ / (§1i§ / 500);
               this.§?#0§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §0R§() : void
      {
         if(this.mCurrentAction == § "<§)
         {
            this.setAction(§?t§);
         }
         else if(this.mCurrentAction == §?t§)
         {
            this.setAction(§ "<§);
         }
         else if(this.mCurrentCameraSliderLocation >= §1i§ / 2)
         {
            this.setAction(§?t§);
         }
         else if(this.mCurrentCameraSliderLocation <= §1i§ / 2)
         {
            this.setAction(§ "<§);
         }
      }
      
      public function §2"w§(param1:int) : void
      {
         this.§!G§ = param1;
         if(this.mCurrentCameraSliderLocation < §1i§ / 2)
         {
            this.setAction(§?t§);
         }
         else
         {
            this.setAction(§ "<§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§?t§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§ "<§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§=!g§.x = this.§,!o§;
         this.§=!g§.y = this.§^!k§;
         this.§=!g§.scale = §6H§;
         this.§3"r§ = §6H§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §1i§)
         {
            return true;
         }
         if(this.mCurrentAction == § "<§)
         {
            return true;
         }
         return false;
      }
      
      public function §+"§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §?t§)
         {
            return true;
         }
         return false;
      }
      
      public function §&!B§(param1:§ case§) : void
      {
         this.§3!9§ = param1;
         if(this.§3!9§ != null)
         {
            this.§[!6§ = new § case§();
            this.§[!6§.x = this.§,!o§;
            this.§[!6§.y = this.§^!k§;
            this.§[!6§.scale = §6H§;
         }
         else
         {
            this.§,!o§ = this.§[!6§.x;
            this.§^!k§ = this.§[!6§.y;
            §6H§ = this.§[!6§.scale;
            this.§[!6§ = null;
         }
      }
      
      protected function § "X§() : void
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
         var _loc3_:Number = this.§+!]§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§^""§,Math.min(this.§-"J§,_loc3_));
         if(_loc3_ != this.§+!]§)
         {
            this.§+!]§ = _loc3_;
         }
      }
      
      public function §&y§() : Number
      {
         return (this.§0"d§ - this.§^""§) / (this.§-"J§ - this.§^""§);
      }
      
      public function §<#§(param1:Number) : void
      {
         this.§0"d§ = Math.min(Math.max(param1,0),1) * (this.§-"J§ - this.§^""§) + this.§^""§;
      }
      
      public function §"p§() : void
      {
         this.§+!]§ = Math.max(this.§+!]§ - 0.5,0.5);
      }
      
      public function §;Y§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§0"d§;
         _loc1_ += " mXcenterB2: " + this.§,!o§;
         _loc1_ += " mYcenterB2: " + this.§^!k§;
         _loc1_ += " mXcenterB2target: " + this.§0"d§;
         _loc1_ += "\n mYcenterB2target: " + this.§0"d§;
         _loc1_ += " mXcenterB2previous: " + this.§0"d§;
         _loc1_ += " mYcenterB2previous: " + this.§0"d§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§0"d§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§0"d§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§0"d§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§0"d§;
         _loc1_ += " mTargetScale: " + this.§0"d§;
         _loc1_ += " mTargetScalePrevious: " + this.§0"d§;
         _loc1_ += " mCastleCameraX: " + this.§0"d§;
         _loc1_ += "\n mCastleCameraY: " + this.§0"d§;
         _loc1_ += " mCastleCameraScale: " + this.§0"d§;
         _loc1_ += " mBirdCameraX: " + this.§0"d§;
         _loc1_ += " mBirdCameraY: " + this.§0"d§;
         _loc1_ += " mBirdCameraScale: " + this.§0"d§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§0"d§;
         _loc1_ += "mScreenOffsetYl: " + this.§0"d§;
         _loc1_ += " mDragging: " + this.§0"d§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§0"d§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§0"d§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§0"d§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§0"d§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§0"d§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§0"d§;
         _loc1_ += " mDraggingTimer: " + this.§0"d§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§0"d§;
         _loc1_ += " mCameraBorderRight: " + this.§0"d§;
         _loc1_ += "mCameraBorderTop: " + this.§0"d§;
         _loc1_ += "mCameraBorderBottom: " + this.§0"d§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§0"d§ + "\n ");
      }
      
      public function §`"J§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
