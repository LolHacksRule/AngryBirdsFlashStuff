package §@!!§
{
   import §!+§.§>G§;
   import §+!"§.§5!<§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§]<§;
   import §?b§.§7!,§;
   import §?b§.§9H§;
   
   public class §=_§
   {
      
      public static const §+!,§:Number = 1.25;
      
      public static const §5!0§:Number = 0.15;
      
      public static const §^J§:Number = §[k§.§>§ * §7!,§.§ '§;
      
      public static const §6!?§:Number = §[k§.§%i§ * §7!,§.§ '§;
      
      public static const §"o§:Number = 0.1;
      
      public static const §6W§:int = 1500;
      
      public static const §;$§:int = 10;
      
      public static const §<D§:int = 15;
      
      public static const §'!-§:int = 300;
      
      public static const §2h§:int = 1000;
      
      public static const §"C§:int = 10000;
      
      public static const §9y§:int = §"C§ / 50;
      
      public static const §@<§:int = 0;
      
      public static const §;!@§:int = 1;
      
      public static const §;p§:int = 2;
      
      public static const §7Y§:int = 3;
      
      public static const §56§:int = 4;
      
      public static const §1!#§:int = 5;
      
      public static const §43§:String = "CASTLE";
      
      public static const §0!D§:String = "SLINGSHOT";
      
      protected static var §5K§:Number;
      
      public static var §[!#§:Number;
      
      public static var §<9§:Number;
      
      public static const §;b§:Number = 2000;
       
      
      private var §6y§:Number = 1.0;
      
      private var §&u§:Number = 0.2;
      
      protected var §import§:Number;
      
      protected var §-!'§:Number;
      
      protected var §!A§:Number;
      
      public var §4!%§:§7!,§;
      
      public var §4!?§:Number;
      
      public var §3!§:Number;
      
      private var §%a§:§;!F§;
      
      private var §6!B§:§;!F§;
      
      public var §3!3§:Number;
      
      public var §@A§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §&,§:Number;
      
      public var §`V§:Number;
      
      public var §7!E§:Number;
      
      public var §<1§:Number;
      
      private var §6!$§:Number;
      
      private var §[o§:§0Q§;
      
      private var §%L§:§0Q§;
      
      protected var §6t§:Number = 0;
      
      protected var §`!!§:Number = 0;
      
      protected var §0!@§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § for§:Number = 0;
      
      public var §;!?§:Boolean = true;
      
      public var §^j§:Number = 0;
      
      public var §=!#§:Number = 0;
      
      public var §[y§:Number = 0;
      
      public var §0>§:Number = 0;
      
      public var §!X§:Number = 0;
      
      public var §`e§:Number = 0;
      
      public var §^a§:Number = 0;
      
      public var §`!?§:Number = 0;
      
      public var § T§:Number = 0;
      
      private var §?p§:§0Q§;
      
      public var §3!4§:Number = 0;
      
      private var §0;§:Number = 0;
      
      private var §=X§:Number = 0;
      
      private var §=T§:§]<§ = null;
      
      private var §]>§:§]<§ = null;
      
      public function §=_§(param1:§7!,§, param2:§&!;§, param3:Number = 1.0)
      {
         this.§?p§ = new §0Q§(0,0,1,false);
         super();
         this.§-!'§ = 0;
         this.§!A§ = 0;
         this.§4!%§ = param1;
         §=_§.§5K§ = 1;
         this.§6y§ = Math.max(1,Math.min(2,param3));
         this.§import§ = this.§6y§;
         this.§do§(param2);
         if(this.§%a§ && this.§6!B§)
         {
            this.§6m§();
            this.§6t§ = this.§%a§.x - this.§6!B§.x;
            this.§`!!§ = this.§%a§.y - this.§6!B§.y;
            this.§0!@§ = this.§%a§.scale - this.§6!B§.scale;
            this.§-!'§ = this.§%a§.x;
            this.§!A§ = this.§%a§.y;
            §5K§ = this.§%a§.scale * this.§import§;
         }
         this.mCurrentCameraSliderLocation = §"C§;
         this.§;!?§ = true;
         this.§ for§ = §"C§ / 500;
      }
      
      private static function §[!-§() : Number
      {
         var _loc1_:Number = §[k§.§3!5§ / §[k§.§@$§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §&!?§() : Number
      {
         return §5K§ * §[!-§();
      }
      
      public function get §-!D§() : Number
      {
         return this.§import§;
      }
      
      public function set §-!D§(param1:Number) : void
      {
         this.§import§ = param1;
      }
      
      public function get §@2§() : Number
      {
         return this.§6!$§;
      }
      
      public function §'!8§() : Number
      {
         return §^J§ / (this.§`V§ - this.§&,§);
      }
      
      public function get §?!$§() : Number
      {
         return this.§6y§;
      }
      
      public function get §'!@§() : Number
      {
         return this.§&u§;
      }
      
      public function §%!3§(param1:Number) : void
      {
         this.§import§ = param1;
         this.§<!H§();
         this.§^w§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §1!#§)
         {
            return;
         }
         this.goToCastleView();
         this.§^j§ = 2000;
         this.§>$§();
         this.§84§();
         this.§<M§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§-!'§ = this.§6!B§.x;
         this.§!A§ = this.§6!B§.y;
         this.§;!?§ = false;
         this.§ for§ = §"C§ / 160000 * param1;
         this.§=!1§(§1!#§);
      }
      
      public function §6m§() : void
      {
         this.§&,§ = this.§6!B§.x - §^J§ / this.§6!B§.scale / 2;
         this.§`V§ = this.§%a§.x + §^J§ / this.§%a§.scale / 2;
         this.§7!E§ = this.§4!%§.§+4§.§6o§ - 20 * §7!,§.§14§ * §7!,§.§ '§;
         this.§<1§ = this.§4!%§.§+4§.§6o§ + 4;
         var _loc1_:Number = §^J§ / (this.§`V§ - this.§&,§);
         this.§6!$§ = this.§<1§ - §6!?§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§4!%§ = null;
      }
      
      public function §do§(param1:§&!;§) : void
      {
         var _loc3_:§]<§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§&!@§)
         {
            _loc3_ = param1.§5!1§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§=6§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §6!?§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §^J§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §0!D§)
            {
               this.§6!B§ = new §;!F§(_loc9_,_loc10_,_loc13_,true);
               this.§%L§ = new §0Q§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §43§)
            {
               this.§%a§ = new §;!F§(_loc9_,_loc10_,_loc13_,false);
               this.§[o§ = new §0Q§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §5!<§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §[s§(param1:§&!;§) : void
      {
         var _loc2_:§]<§ = new §]<§();
         _loc2_.id = §0!D§;
         _loc2_.x = this.§6!B§.x;
         _loc2_.y = this.§6!B§.y;
         var _loc3_:Number = §^J§ / this.§6!B§.scale / 2;
         var _loc4_:Number = §6!?§ / this.§6!B§.scale / 2;
         _loc2_.left = this.§6!B§.x - _loc3_;
         _loc2_.right = this.§6!B§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§]<§;
         (_loc5_ = new §]<§()).id = §43§;
         _loc5_.x = this.§%a§.x;
         _loc5_.y = this.§%a§.y;
         var _loc6_:Number = §^J§ / this.§%a§.scale / 2;
         var _loc7_:Number = §6!?§ / this.§%a§.scale / 2;
         _loc5_.left = this.§%a§.x - _loc6_;
         _loc5_.right = this.§%a§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§,t§();
         param1.§<!1§(_loc2_);
         param1.§<!1§(_loc5_);
      }
      
      public function §=6§(param1:§]<§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[k§.§>§ * 0.5 / _loc2_ * §7!,§.§ '§;
         var _loc4_:Number = param1.y - §[k§.§%i§ * 0.5 / _loc2_ * §7!,§.§ '§;
         var _loc5_:Number = _loc3_ + §[k§.§>§ / _loc2_ * §7!,§.§ '§;
         var _loc6_:Number = _loc4_ + §[k§.§%i§ / _loc2_ * §7!,§.§ '§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §+!G§(param1:§;!F§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§ for§;
         if(_loc3_ >= §"C§)
         {
            _loc3_ = §"C§;
            this.§=!1§(§@<§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§=!1§(§@<§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §6b§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§ for§;
         var _loc4_:Number = -§"C§ * 0.7;
         if(_loc2_ >= §"C§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §"C§;
            }
            this.§ for§ = -this.§ for§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §8!&§(param1:Number) : void
      {
         if(this.mCurrentAction == §1!#§)
         {
            this.§6b§(param1);
         }
         else if(this.mCurrentAction == §;!@§)
         {
            this.§+!G§(this.§%a§,param1);
         }
         else if(this.mCurrentAction == §;p§)
         {
            this.§+!G§(this.§6!B§,-param1);
         }
         else if(this.mCurrentAction == §7Y§)
         {
            this.§;!?§ = true;
         }
         else if(this.mCurrentAction == §56§)
         {
            this.§]!?§(param1);
         }
      }
      
      public function §6e§(param1:Number) : void
      {
         if(this.§=T§)
         {
            this.§-!'§ = this.§=T§.x;
            this.§!A§ = this.§=T§.y;
            §5K§ = §^J§ / (this.§=T§.right - this.§=T§.left);
         }
         else
         {
            this.§<!H§();
            this.§8!&§(param1);
            this.§6O§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§>$§();
         this.§84§();
         this.§<M§();
      }
      
      private function §]^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%L§.scale + (this.§[o§.scale - this.§%L§.scale) * param1;
         var _loc4_:Number = this.§%L§.x + (this.§[o§.x - this.§%L§.x) * param1;
         var _loc5_:Number = this.§%L§.y + (this.§[o§.y - this.§%L§.y) * param1;
         this.§?p§.x -= (this.§?p§.x - _loc4_) * param2;
         this.§?p§.y -= (this.§?p§.y - _loc5_) * param2;
         this.§?p§.scale -= (this.§?p§.scale - _loc3_) * param2;
      }
      
      protected function §^w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§6t§ != 0)
         {
            if(!this.§;!?§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §"C§;
            this.§]^§(_loc3_,param2);
            this.§-!'§ = this.§?p§.x;
            this.§!A§ = this.§?p§.y;
            §5K§ = this.§?p§.scale;
         }
      }
      
      public function §6O§(param1:Number, param2:Number) : void
      {
         var _loc5_:§>G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Boolean = false;
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §"C§)
         {
            this.§;!?§ = true;
         }
         if(this.mCurrentAction == §7Y§)
         {
            if(!this.§4!%§.activeObject)
            {
               this.§=!1§(§;!@§);
               this.§ T§ = §2h§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§4!%§.activeObject).§`t§().GetPosition().x + (!!_loc5_.§'V§ ? _loc5_.§'V§ * §7!,§.§ '§ : 0);
               _loc7_ = _loc5_.§`t§().GetPosition().y + (!!_loc5_.§&!F§ ? _loc5_.§&!F§ * §7!,§.§ '§ : 0);
               if((_loc8_ = _loc5_.§`t§().GetLinearVelocity().x) > 0 && this.§6t§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§6t§ * §"C§;
               }
               if(param1 >= §"C§)
               {
                  param1 = §"C§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §"C§;
               this.§]^§(_loc9_,_loc4_);
               _loc10_ = this.§?p§.x - §^J§ * 0.5 / this.§?p§.scale;
               _loc11_ = this.§?p§.y - §6!?§ * 0.5 / this.§?p§.scale;
               _loc12_ = this.§?p§.x + §^J§ * 0.5 / this.§?p§.scale;
               _loc13_ = this.§?p§.y + §6!?§ * 0.5 / this.§?p§.scale;
               _loc14_ = 150 * §7!,§.§ '§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§&,§,_loc15_);
               _loc17_ = Math.min(this.§`V§,_loc17_);
               _loc19_ = Math.abs(§^J§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§6!?§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§?p§.scale)
               {
                  _loc21_ = this.§?p§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §^J§ * 0.5 / _loc21_ > this.§`V§)
               {
                  _loc15_ = (_loc17_ = this.§`V§) - §^J§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§&,§)
                  {
                     _loc15_ = this.§&,§;
                  }
               }
               if(_loc22_ - §^J§ * 0.5 / _loc21_ < this.§&,§)
               {
                  _loc17_ = (_loc15_ = this.§&,§) + §^J§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§`V§)
                  {
                     _loc17_ = this.§`V§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§^J§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §^J§ * 0.5 / _loc21_ < this.§7!E§)
               {
                  _loc23_ = this.§7!E§ + §^J§ * 0.5 / _loc21_;
               }
               this.§-!'§ -= (this.§-!'§ - _loc22_) * _loc4_;
               this.§3!4§ -= (this.§3!4§ - _loc21_) * _loc4_;
               §5K§ = this.§3!4§;
               this.§!A§ -= (this.§!A§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§`V§ || _loc6_ <= this.§&,§)
               {
                  this.§?p§.scale = §5K§;
                  this.§?p§.x = this.§-!'§;
                  this.§?p§.y = this.§!A§;
               }
            }
         }
         else
         {
            this.§^w§(param1,_loc4_);
         }
      }
      
      public function §?F§(param1:Number, param2:Number) : void
      {
         this.§0;§ = param1;
         this.§=X§ = param2;
      }
      
      private function §%k§(param1:§0Q§, param2:§;!F§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §5!0§ + (param2.scale - §5!0§) * this.§import§ * §=_§.§[!-§();
         if(§^J§ / param1.scale > this.§`V§ - this.§&,§)
         {
            _loc3_ = §^J§ / (this.§`V§ - this.§&,§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §-j§(param1:§0Q§, param2:§;!F§) : Boolean
      {
         var _loc3_:Boolean = this.§%k§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §6!?§ * 0.5 / param1.scale;
         var _loc5_:Number = §6!?§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §^J§ * 0.5 / param1.scale) < this.§&,§ && param1.§=!G§)
         {
            param1.x += this.§&,§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §^J§ * 0.5 / param1.scale) > this.§`V§ && !param1.§=!G§)
         {
            param1.x += this.§`V§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §if §(param1:§0Q§, param2:§;!F§) : Number
      {
         return (param1.scale - §5!0§) / (§=_§.§[!-§() * (param2.scale - §5!0§));
      }
      
      protected function §<!H§() : void
      {
         this.§-j§(this.§%L§,this.§6!B§);
         var _loc1_:Number = this.§if §(this.§%L§,this.§6!B§);
         this.§-j§(this.§[o§,this.§%a§);
         var _loc2_:Number = this.§if §(this.§[o§,this.§%a§);
         this.§import§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §>$§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§4!%§.sprite)
         {
            _loc1_ = §[k§.§`&§() / §[k§.§3!5§ - §[k§.§%i§ >> 1;
            §[!#§ = this.§4!%§.sprite.x = §7!,§.§[>§ * ((1 - §=_§.§&!?§) / 2);
            §<9§ = this.§4!%§.sprite.y = _loc1_ + §7!,§.§14§ * (1 - §=_§.§&!?§) * §9H§.§%2§;
         }
      }
      
      public function §<M§() : void
      {
         if(this.§4!%§.sprite)
         {
            this.§4!%§.sprite.scaleX = §&!?§;
            this.§4!%§.sprite.scaleY = §&!?§;
         }
      }
      
      public function §84§() : void
      {
         var _loc1_:Number = this.§-!'§ / §7!,§.§ '§ + this.§0;§;
         var _loc2_:Number = this.§!A§ / §7!,§.§ '§ + this.§=X§;
         this.§3!3§ = _loc1_ - §7!,§.§[>§ / 2 * §[k§.§3!5§ / §[k§.§9U§;
         this.§@A§ = _loc2_ - §7!,§.§14§ / 2 + §9H§.§#!=§;
         if(this.§4!%§.background)
         {
            this.§4!%§.background.§-b§(this.§3!3§,this.§@A§);
         }
         if(this.§4!%§.objects)
         {
            this.§4!%§.objects.§-b§(this.§3!3§,this.§@A§);
         }
         if(this.§4!%§.§^<§)
         {
            this.§4!%§.§^<§.§-b§(this.§3!3§,this.§@A§,§&!?§);
         }
         if(this.§4!%§.slingshot)
         {
            this.§4!%§.slingshot.§-b§(this.§3!3§,this.§@A§);
         }
         if(this.§4!%§.particles)
         {
            this.§4!%§.particles.§-b§(this.§3!3§,this.§@A§);
         }
      }
      
      protected function §!S§() : void
      {
         this.§=!1§(§56§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§ T§ = -1;
         this.§!S§();
         this.§!X§ = this.§^a§ = this.§[y§ = param1;
         this.§`e§ = this.§`!?§ = this.§0>§ = param2;
         this.§=!#§ = 0;
         this.§?p§.x = this.§-!'§;
         this.§?p§.y = this.§!A§;
         this.§?p§.scale = §5K§;
         this.§3!4§ = §5K§;
         if(Math.abs(this.§[o§.x - this.§%L§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§-!'§ - this.§%L§.x) / (this.§[o§.x - this.§%L§.x) * §"C§;
         }
         this.mDragging = true;
      }
      
      public function §]!?§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§=!#§ += param1;
         var _loc3_:Number = this.§!X§ - this.§^a§;
         if(this.§6t§ > 0)
         {
            _loc2_ -= _loc3_ * §7!,§.§ '§ / §&!?§ / this.§6t§ * §"C§;
            this.§;!?§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§;!?§ = true;
            }
            if(_loc2_ > §"C§)
            {
               _loc2_ += (§"C§ - _loc2_) * 0.3;
               this.§;!?§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§^a§ = this.§!X§;
      }
      
      protected function §7J§() : Boolean
      {
         return this.mCurrentAction == §56§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§!X§ = param1;
            this.§`e§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §56§)
         {
            this.§=!1§(§@<§);
            if(param1 > 0)
            {
               this.§!X§ = param1;
            }
            _loc3_ = Math.abs(this.§!X§ - this.§[y§);
            if(this.§=!#§ < §6W§ && _loc3_ >= §;$§ && _loc3_ >= §<D§ * this.§=!#§ / 1000)
            {
               if(this.§!X§ < this.§[y§)
               {
                  this.§=!1§(§;!@§);
               }
               else
               {
                  this.§=!1§(§;p§);
               }
               this.§ for§ = _loc3_ / this.§=!#§ * 10;
               this.§;!?§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§;!?§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §"C§)
               {
                  this.§;!?§ = true;
               }
            }
            else if(this.§=!#§ < §'!-§)
            {
               this.§"9§();
               this.§ for§ = §"C§ / (§"C§ / 500);
               this.§;!?§ = true;
            }
            else
            {
               this.§]!?§(0);
               this.§"R§(0);
               this.§ for§ = §"C§ / (§"C§ / 500);
               this.§;!?§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"9§() : void
      {
         if(this.mCurrentAction == §;!@§)
         {
            this.§=!1§(§;p§);
         }
         else if(this.mCurrentAction == §;p§)
         {
            this.§=!1§(§;!@§);
         }
         else if(this.mCurrentCameraSliderLocation >= §"C§ / 2)
         {
            this.§=!1§(§;p§);
         }
         else if(this.mCurrentCameraSliderLocation <= §"C§ / 2)
         {
            this.§=!1§(§;!@§);
         }
      }
      
      public function §"R§(param1:int) : void
      {
         this.§ T§ = param1;
         if(this.mCurrentCameraSliderLocation < §"C§ / 2)
         {
            this.§=!1§(§;p§);
         }
         else
         {
            this.§=!1§(§;!@§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§=!1§(§;p§);
      }
      
      public function goToCastleView() : void
      {
         this.§=!1§(§;!@§);
      }
      
      public function §=!1§(param1:int) : void
      {
         this.§?p§.x = this.§-!'§;
         this.§?p§.y = this.§!A§;
         this.§?p§.scale = §5K§;
         this.§3!4§ = §5K§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §"C§)
         {
            return true;
         }
         if(this.mCurrentAction == §;!@§)
         {
            return true;
         }
         return false;
      }
      
      public function §5!4§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §;p§)
         {
            return true;
         }
         return false;
      }
      
      public function §?!C§(param1:§]<§) : void
      {
         this.§=T§ = param1;
         if(this.§=T§ != null)
         {
            this.§]>§ = new §]<§();
            this.§]>§.x = this.§-!'§;
            this.§]>§.y = this.§!A§;
            this.§]>§.scale = §5K§;
         }
         else
         {
            this.§-!'§ = this.§]>§.x;
            this.§!A§ = this.§]>§.y;
            §5K§ = this.§]>§.scale;
            this.§]>§ = null;
         }
      }
      
      protected function §!W§() : void
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
         var _loc3_:Number = this.§import§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§'!@§,Math.min(this.§?!$§,_loc3_));
         if(_loc3_ != this.§import§)
         {
            this.§import§ = _loc3_;
            this.§!W§();
         }
      }
      
      public function § &§() : Number
      {
         return (this.§-!D§ - this.§'!@§) / (this.§?!$§ - this.§'!@§);
      }
      
      public function §"O§(param1:Number) : void
      {
         this.§-!D§ = Math.min(Math.max(param1,0),1) * (this.§?!$§ - this.§'!@§) + this.§'!@§;
      }
      
      public function §"A§() : void
      {
         this.§import§ = Math.max(this.§import§ - 0.5,0.5);
      }
      
      public function §5!-§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§import§;
         _loc1_ += " mXcenterB2: " + this.§-!'§;
         _loc1_ += " mYcenterB2: " + this.§!A§;
         _loc1_ += " mXcenterB2target: " + this.§import§;
         _loc1_ += "\n mYcenterB2target: " + this.§import§;
         _loc1_ += " mXcenterB2previous: " + this.§import§;
         _loc1_ += " mYcenterB2previous: " + this.§import§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§import§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§import§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§import§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§import§;
         _loc1_ += " mTargetScale: " + this.§import§;
         _loc1_ += " mTargetScalePrevious: " + this.§import§;
         _loc1_ += " mCastleCameraX: " + this.§import§;
         _loc1_ += "\n mCastleCameraY: " + this.§import§;
         _loc1_ += " mCastleCameraScale: " + this.§import§;
         _loc1_ += " mBirdCameraX: " + this.§import§;
         _loc1_ += " mBirdCameraY: " + this.§import§;
         _loc1_ += " mBirdCameraScale: " + this.§import§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§import§;
         _loc1_ += " mScreenTopScroll: " + this.§import§;
         _loc1_ += " mDragging: " + this.§import§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§import§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§import§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§import§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§import§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§import§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§import§;
         _loc1_ += " mDraggingTimer: " + this.§import§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§import§;
         _loc1_ += " mCameraBorderRight: " + this.§import§;
         _loc1_ += " mCameraBorderSky: " + this.§import§;
         _loc1_ += " mCameraBorderGround: " + this.§import§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§import§ + "\n ");
      }
   }
}
