package §?h§
{
   import § !G§.§ #§;
   import §!X§.§ 6§;
   import §!X§.§86§;
   import §,h§.§+0§;
   import §?m§.§7?§;
   import §]!F§.§&!]§;
   import §]!F§.§'A§;
   
   public class §<I§
   {
      
      public static const §;!1§:Number = 1.25;
      
      public static const §2!Y§:Number = 0.15;
      
      public static const §]!;§:Number = §7?§.§;#§ * §86§.§7!4§;
      
      public static const §0!2§:Number = §7?§.§0h§ * §86§.§7!4§;
      
      public static const §?q§:Number = 0.1;
      
      public static const §4e§:int = 1500;
      
      public static const §3!"§:int = 10;
      
      public static const §'!@§:int = 15;
      
      public static const §?!I§:int = 300;
      
      public static const §3!@§:int = 1000;
      
      public static const §+m§:int = 10000;
      
      public static const §]!Q§:int = §+m§ / 50;
      
      public static const §!]§:int = 0;
      
      public static const §=y§:int = 1;
      
      public static const §8-§:int = 2;
      
      public static const §0!'§:int = 3;
      
      public static const §&!F§:int = 4;
      
      public static const §"!P§:int = 5;
      
      public static const §,g§:String = "CASTLE";
      
      public static const §3!E§:String = "SLINGSHOT";
      
      protected static var §!B§:Number;
      
      public static var §5!S§:Number;
      
      public static var §+!G§:Number;
      
      public static const §3!6§:Number = 2000;
       
      
      private var §@!8§:Number = 1.0;
      
      private var §"!9§:Number = 0.2;
      
      protected var §,!7§:Number;
      
      protected var §3q§:Number;
      
      protected var §0!?§:Number;
      
      public var §>`§:§86§;
      
      public var §1!+§:Number;
      
      public var §?o§:Number;
      
      private var §&!"§:§]T§;
      
      private var §=b§:§]T§;
      
      public var §[!L§:Number;
      
      public var §<!F§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §+k§:Number;
      
      public var §[!E§:Number;
      
      public var §;e§:Number;
      
      public var §5!^§:Number;
      
      private var §9!N§:Number;
      
      private var §7f§:§!1§;
      
      private var §6!8§:§!1§;
      
      protected var §4!1§:Number = 0;
      
      protected var §9!>§:Number = 0;
      
      protected var §7H§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §,!2§:Number = 0;
      
      public var §-!G§:Boolean = true;
      
      public var §#g§:Number = 0;
      
      public var §^C§:Number = 0;
      
      public var §5l§:Number = 0;
      
      public var §^&§:Number = 0;
      
      public var §&!K§:Number = 0;
      
      public var §2!^§:Number = 0;
      
      public var §+!K§:Number = 0;
      
      public var §9v§:Number = 0;
      
      public var §"E§:Number = 0;
      
      private var §[?§:§!1§;
      
      public var §+V§:Number = 0;
      
      private var §=!=§:Number = 0;
      
      private var §9!3§:Number = 0;
      
      private var §^!4§:§'A§ = null;
      
      private var §1M§:§'A§ = null;
      
      public function §<I§(param1:§86§, param2:§&!]§, param3:Number = 1.0)
      {
         this.§[?§ = new §!1§(0,0,1,false);
         super();
         this.§3q§ = 0;
         this.§0!?§ = 0;
         this.§>`§ = param1;
         §<I§.§!B§ = 1;
         this.§@!8§ = Math.max(1,Math.min(2,param3));
         this.§,!7§ = this.§@!8§;
         this.§59§(param2);
         if(this.§&!"§ && this.§=b§)
         {
            this.§[3§();
            this.§4!1§ = this.§&!"§.x - this.§=b§.x;
            this.§9!>§ = this.§&!"§.y - this.§=b§.y;
            this.§7H§ = this.§&!"§.scale - this.§=b§.scale;
            this.§3q§ = this.§&!"§.x;
            this.§0!?§ = this.§&!"§.y;
            §!B§ = this.§&!"§.scale * this.§,!7§;
         }
         this.mCurrentCameraSliderLocation = §+m§;
         this.§-!G§ = true;
         this.§,!2§ = §+m§ / 500;
      }
      
      private static function §8P§() : Number
      {
         var _loc1_:Number = §7?§.§&Z§ / §7?§.§1H§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §,0§() : Number
      {
         return §!B§ * §8P§();
      }
      
      public function get manualScale() : Number
      {
         return this.§,!7§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§,!7§ = param1;
      }
      
      public function get §'v§() : Number
      {
         return this.§9!N§;
      }
      
      public function §6!0§() : Number
      {
         return §]!;§ / (this.§[!E§ - this.§+k§);
      }
      
      public function get §0!B§() : Number
      {
         return this.§@!8§;
      }
      
      public function get §use §() : Number
      {
         return this.§"!9§;
      }
      
      public function §'!7§(param1:Number) : void
      {
         this.§,!7§ = param1;
         this.§-!]§();
         this.§4W§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §"!P§)
         {
            return;
         }
         this.goToCastleView();
         this.§#g§ = 2000;
         this.§'!]§();
         this.§?e§();
         this.§%N§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§3q§ = this.§=b§.x;
         this.§0!?§ = this.§=b§.y;
         this.§-!G§ = false;
         this.§,!2§ = §+m§ / 160000 * param1;
         this.§-a§(§"!P§);
      }
      
      public function §[3§() : void
      {
         this.§+k§ = this.§=b§.x - §]!;§ / this.§=b§.scale / 2;
         this.§[!E§ = this.§&!"§.x + §]!;§ / this.§&!"§.scale / 2;
         this.§;e§ = this.§>`§.§%-§.§[w§ - 20 * §86§.§=D§ * §86§.§7!4§;
         this.§5!^§ = this.§>`§.§%-§.§[w§ + 4;
         var _loc1_:Number = §]!;§ / (this.§[!E§ - this.§+k§);
         this.§9!N§ = this.§5!^§ - §0!2§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§>`§ = null;
      }
      
      public function §59§(param1:§&!]§) : void
      {
         var _loc3_:§'A§ = null;
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
         while(_loc2_ < param1.§0^§)
         {
            _loc3_ = param1.§`;§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§>3§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §0!2§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §]!;§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §3!E§)
            {
               this.§=b§ = new §]T§(_loc9_,_loc10_,_loc13_,true);
               this.§6!8§ = new §!1§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §,g§)
            {
               this.§&!"§ = new §]T§(_loc9_,_loc10_,_loc13_,false);
               this.§7f§ = new §!1§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               § #§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §0§(param1:§&!]§) : void
      {
         var _loc2_:§'A§ = new §'A§();
         _loc2_.id = §3!E§;
         _loc2_.x = this.§=b§.x;
         _loc2_.y = this.§=b§.y;
         var _loc3_:Number = §]!;§ / this.§=b§.scale / 2;
         var _loc4_:Number = §0!2§ / this.§=b§.scale / 2;
         _loc2_.left = this.§=b§.x - _loc3_;
         _loc2_.right = this.§=b§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§'A§;
         (_loc5_ = new §'A§()).id = §,g§;
         _loc5_.x = this.§&!"§.x;
         _loc5_.y = this.§&!"§.y;
         var _loc6_:Number = §]!;§ / this.§&!"§.scale / 2;
         var _loc7_:Number = §0!2§ / this.§&!"§.scale / 2;
         _loc5_.left = this.§&!"§.x - _loc6_;
         _loc5_.right = this.§&!"§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§>^§();
         param1.§&[§(_loc2_);
         param1.§&[§(_loc5_);
      }
      
      public function §>3§(param1:§'A§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §7?§.§;#§ * 0.5 / _loc2_ * §86§.§7!4§;
         var _loc4_:Number = param1.y - §7?§.§0h§ * 0.5 / _loc2_ * §86§.§7!4§;
         var _loc5_:Number = _loc3_ + §7?§.§;#§ / _loc2_ * §86§.§7!4§;
         var _loc6_:Number = _loc4_ + §7?§.§0h§ / _loc2_ * §86§.§7!4§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §>x§(param1:§]T§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§,!2§;
         if(_loc3_ >= §+m§)
         {
            _loc3_ = §+m§;
            this.§-a§(§!]§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§-a§(§!]§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §]W§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§,!2§;
         var _loc4_:Number = -§+m§ * 0.7;
         if(_loc2_ >= §+m§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §+m§;
            }
            this.§,!2§ = -this.§,!2§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §8!W§(param1:Number) : void
      {
         if(this.mCurrentAction == §"!P§)
         {
            this.§]W§(param1);
         }
         else if(this.mCurrentAction == §=y§)
         {
            this.§>x§(this.§&!"§,param1);
         }
         else if(this.mCurrentAction == §8-§)
         {
            this.§>x§(this.§=b§,-param1);
         }
         else if(this.mCurrentAction == §0!'§)
         {
            this.§-!G§ = true;
         }
         else if(this.mCurrentAction == §&!F§)
         {
            this.§`v§(param1);
         }
      }
      
      public function §]!S§(param1:Number) : void
      {
         if(this.§^!4§)
         {
            this.§3q§ = this.§^!4§.x;
            this.§0!?§ = this.§^!4§.y;
            §!B§ = §]!;§ / (this.§^!4§.right - this.§^!4§.left);
         }
         else
         {
            this.§-!]§();
            this.§8!W§(param1);
            this.each(this.mCurrentCameraSliderLocation,param1);
         }
         this.§'!]§();
         this.§?e§();
         this.§%N§();
      }
      
      private function §@!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6!8§.scale + (this.§7f§.scale - this.§6!8§.scale) * param1;
         var _loc4_:Number = this.§6!8§.x + (this.§7f§.x - this.§6!8§.x) * param1;
         var _loc5_:Number = this.§6!8§.y + (this.§7f§.y - this.§6!8§.y) * param1;
         this.§[?§.x -= (this.§[?§.x - _loc4_) * param2;
         this.§[?§.y -= (this.§[?§.y - _loc5_) * param2;
         this.§[?§.scale -= (this.§[?§.scale - _loc3_) * param2;
      }
      
      protected function §4W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4!1§ != 0)
         {
            if(!this.§-!G§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §+m§;
            this.§@!7§(_loc3_,param2);
            this.§3q§ = this.§[?§.x;
            this.§0!?§ = this.§[?§.y;
            §!B§ = this.§[?§.scale;
         }
      }
      
      public function each(param1:Number, param2:Number) : void
      {
         var _loc5_:§+0§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §+m§)
         {
            this.§-!G§ = true;
         }
         if(this.mCurrentAction == §0!'§)
         {
            if(!this.§>`§.activeObject)
            {
               this.§-a§(§=y§);
               this.§"E§ = §3!@§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§>`§.activeObject).§?!7§().GetPosition().x + (!!_loc5_.§3!A§ ? _loc5_.§3!A§ * §86§.§7!4§ : 0);
               _loc7_ = _loc5_.§?!7§().GetPosition().y + (!!_loc5_.§+C§ ? _loc5_.§+C§ * §86§.§7!4§ : 0);
               if((_loc8_ = _loc5_.§?!7§().GetLinearVelocity().x) > 0 && this.§4!1§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§4!1§ * §+m§;
               }
               if(param1 >= §+m§)
               {
                  param1 = §+m§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §+m§;
               this.§@!7§(_loc9_,_loc4_);
               _loc10_ = this.§[?§.x - §]!;§ * 0.5 / this.§[?§.scale;
               _loc11_ = this.§[?§.y - §0!2§ * 0.5 / this.§[?§.scale;
               _loc12_ = this.§[?§.x + §]!;§ * 0.5 / this.§[?§.scale;
               _loc13_ = this.§[?§.y + §0!2§ * 0.5 / this.§[?§.scale;
               _loc14_ = 150 * §86§.§7!4§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§+k§,_loc15_);
               _loc17_ = Math.min(this.§[!E§,_loc17_);
               _loc19_ = Math.abs(§]!;§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§0!2§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§[?§.scale)
               {
                  _loc21_ = this.§[?§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §]!;§ * 0.5 / _loc21_ > this.§[!E§)
               {
                  _loc15_ = (_loc17_ = this.§[!E§) - §]!;§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§+k§)
                  {
                     _loc15_ = this.§+k§;
                  }
               }
               if(_loc22_ - §]!;§ * 0.5 / _loc21_ < this.§+k§)
               {
                  _loc17_ = (_loc15_ = this.§+k§) + §]!;§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§[!E§)
                  {
                     _loc17_ = this.§[!E§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§]!;§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §]!;§ * 0.5 / _loc21_ < this.§;e§)
               {
                  _loc23_ = this.§;e§ + §]!;§ * 0.5 / _loc21_;
               }
               this.§3q§ -= (this.§3q§ - _loc22_) * _loc4_;
               this.§+V§ -= (this.§+V§ - _loc21_) * _loc4_;
               §!B§ = this.§+V§;
               this.§0!?§ -= (this.§0!?§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§[!E§ || _loc6_ <= this.§+k§)
               {
                  this.§[?§.scale = §!B§;
                  this.§[?§.x = this.§3q§;
                  this.§[?§.y = this.§0!?§;
               }
            }
         }
         else
         {
            this.§4W§(param1,_loc4_);
         }
      }
      
      public function §&!G§(param1:Number, param2:Number) : void
      {
         this.§=!=§ = param1;
         this.§9!3§ = param2;
      }
      
      private function §7!L§(param1:§!1§, param2:§]T§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §2!Y§ + (param2.scale - §2!Y§) * this.§,!7§ * §<I§.§8P§();
         if(§]!;§ / param1.scale > this.§[!E§ - this.§+k§)
         {
            _loc3_ = §]!;§ / (this.§[!E§ - this.§+k§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@'§(param1:§!1§, param2:§]T§) : Boolean
      {
         var _loc3_:Boolean = this.§7!L§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §0!2§ * 0.5 / param1.scale;
         var _loc5_:Number = §0!2§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §]!;§ * 0.5 / param1.scale) < this.§+k§ && param1.§<h§)
         {
            param1.x += this.§+k§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §]!;§ * 0.5 / param1.scale) > this.§[!E§ && !param1.§<h§)
         {
            param1.x += this.§[!E§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §2!=§(param1:§!1§, param2:§]T§) : Number
      {
         return (param1.scale - §2!Y§) / (§<I§.§8P§() * (param2.scale - §2!Y§));
      }
      
      protected function §-!]§() : void
      {
         this.§@'§(this.§6!8§,this.§=b§);
         var _loc1_:Number = this.§2!=§(this.§6!8§,this.§=b§);
         this.§@'§(this.§7f§,this.§&!"§);
         var _loc2_:Number = this.§2!=§(this.§7f§,this.§&!"§);
         this.§,!7§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §'!]§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§>`§.sprite)
         {
            _loc1_ = §7?§.§@,§() / §7?§.§&Z§ - §7?§.§0h§ >> 1;
            §5!S§ = this.§>`§.sprite.x = §86§.§super§ * ((1 - §<I§.§,0§) / 2);
            §+!G§ = this.§>`§.sprite.y = _loc1_ + §86§.§=D§ * (1 - §<I§.§,0§) * § 6§.§!M§;
         }
      }
      
      public function §%N§() : void
      {
         if(this.§>`§.sprite)
         {
            this.§>`§.sprite.scaleX = §,0§;
            this.§>`§.sprite.scaleY = §,0§;
         }
      }
      
      public function §?e§() : void
      {
         var _loc1_:Number = this.§3q§ / §86§.§7!4§ + this.§=!=§;
         var _loc2_:Number = this.§0!?§ / §86§.§7!4§ + this.§9!3§;
         this.§[!L§ = _loc1_ - §86§.§super§ / 2 * §7?§.§&Z§ / §7?§.§;!<§;
         this.§<!F§ = _loc2_ - §86§.§=D§ / 2 + § 6§.§ q§;
         if(this.§>`§.background)
         {
            this.§>`§.background.§<!=§(this.§[!L§,this.§<!F§);
         }
         if(this.§>`§.objects)
         {
            this.§>`§.objects.§<!=§(this.§[!L§,this.§<!F§);
         }
         if(this.§>`§.mLevelEngine)
         {
            this.§>`§.mLevelEngine.§<!=§(this.§[!L§,this.§<!F§);
         }
         if(this.§>`§.slingshot)
         {
            this.§>`§.slingshot.§<!=§(this.§[!L§,this.§<!F§);
         }
         if(this.§>`§.particles)
         {
            this.§>`§.particles.§<!=§(this.§[!L§,this.§<!F§);
         }
      }
      
      protected function §++§() : void
      {
         this.§-a§(§&!F§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§"E§ = -1;
         this.§++§();
         this.§&!K§ = this.§+!K§ = this.§5l§ = param1;
         this.§2!^§ = this.§9v§ = this.§^&§ = param2;
         this.§^C§ = 0;
         this.§[?§.x = this.§3q§;
         this.§[?§.y = this.§0!?§;
         this.§[?§.scale = §!B§;
         this.§+V§ = §!B§;
         if(Math.abs(this.§7f§.x - this.§6!8§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§3q§ - this.§6!8§.x) / (this.§7f§.x - this.§6!8§.x) * §+m§;
         }
         this.mDragging = true;
      }
      
      public function §`v§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§^C§ += param1;
         var _loc3_:Number = this.§&!K§ - this.§+!K§;
         if(this.§4!1§ > 0)
         {
            _loc2_ -= _loc3_ * §86§.§7!4§ / §,0§ / this.§4!1§ * §+m§;
            this.§-!G§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§-!G§ = true;
            }
            if(_loc2_ > §+m§)
            {
               _loc2_ += (§+m§ - _loc2_) * 0.3;
               this.§-!G§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§+!K§ = this.§&!K§;
      }
      
      protected function §6@§() : Boolean
      {
         return this.mCurrentAction == §&!F§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§&!K§ = param1;
            this.§2!^§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §&!F§)
         {
            this.§-a§(§!]§);
            if(param1 > 0)
            {
               this.§&!K§ = param1;
            }
            _loc3_ = Math.abs(this.§&!K§ - this.§5l§);
            if(this.§^C§ < §4e§ && _loc3_ >= §3!"§ && _loc3_ >= §'!@§ * this.§^C§ / 1000)
            {
               if(this.§&!K§ < this.§5l§)
               {
                  this.§-a§(§=y§);
               }
               else
               {
                  this.§-a§(§8-§);
               }
               this.§,!2§ = _loc3_ / this.§^C§ * 10;
               this.§-!G§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§-!G§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §+m§)
               {
                  this.§-!G§ = true;
               }
            }
            else if(this.§^C§ < §?!I§)
            {
               this.§>h§();
               this.§,!2§ = §+m§ / (§+m§ / 500);
               this.§-!G§ = true;
            }
            else
            {
               this.§`v§(0);
               this.§ R§(0);
               this.§,!2§ = §+m§ / (§+m§ / 500);
               this.§-!G§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>h§() : void
      {
         if(this.mCurrentAction == §=y§)
         {
            this.§-a§(§8-§);
         }
         else if(this.mCurrentAction == §8-§)
         {
            this.§-a§(§=y§);
         }
         else if(this.mCurrentCameraSliderLocation >= §+m§ / 2)
         {
            this.§-a§(§8-§);
         }
         else if(this.mCurrentCameraSliderLocation <= §+m§ / 2)
         {
            this.§-a§(§=y§);
         }
      }
      
      public function § R§(param1:int) : void
      {
         this.§"E§ = param1;
         if(this.mCurrentCameraSliderLocation < §+m§ / 2)
         {
            this.§-a§(§8-§);
         }
         else
         {
            this.§-a§(§=y§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§-a§(§8-§);
      }
      
      public function goToCastleView() : void
      {
         this.§-a§(§=y§);
      }
      
      public function §-a§(param1:int) : void
      {
         this.§[?§.x = this.§3q§;
         this.§[?§.y = this.§0!?§;
         this.§[?§.scale = §!B§;
         this.§+V§ = §!B§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §+m§)
         {
            return true;
         }
         if(this.mCurrentAction == §=y§)
         {
            return true;
         }
         return false;
      }
      
      public function §]$§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §8-§)
         {
            return true;
         }
         return false;
      }
      
      public function §^0§(param1:§'A§) : void
      {
         this.§^!4§ = param1;
         if(this.§^!4§ != null)
         {
            this.§1M§ = new §'A§();
            this.§1M§.x = this.§3q§;
            this.§1M§.y = this.§0!?§;
            this.§1M§.scale = §!B§;
         }
         else
         {
            this.§3q§ = this.§1M§.x;
            this.§0!?§ = this.§1M§.y;
            §!B§ = this.§1M§.scale;
            this.§1M§ = null;
         }
      }
      
      protected function §,!J§() : void
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
         var _loc3_:Number = this.§,!7§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§use §,Math.min(this.§0!B§,_loc3_));
         if(_loc3_ != this.§,!7§)
         {
            this.§,!7§ = _loc3_;
            this.§,!J§();
         }
      }
      
      public function §'!?§() : Number
      {
         return (this.manualScale - this.§use §) / (this.§0!B§ - this.§use §);
      }
      
      public function §^!G§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§0!B§ - this.§use §) + this.§use §;
      }
      
      public function §@1§() : void
      {
         this.§,!7§ = Math.max(this.§,!7§ - 0.5,0.5);
      }
      
      public function §%!W§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§,!7§;
         _loc1_ += " mXcenterB2: " + this.§3q§;
         _loc1_ += " mYcenterB2: " + this.§0!?§;
         _loc1_ += " mXcenterB2target: " + this.§,!7§;
         _loc1_ += "\n mYcenterB2target: " + this.§,!7§;
         _loc1_ += " mXcenterB2previous: " + this.§,!7§;
         _loc1_ += " mYcenterB2previous: " + this.§,!7§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§,!7§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§,!7§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§,!7§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§,!7§;
         _loc1_ += " mTargetScale: " + this.§,!7§;
         _loc1_ += " mTargetScalePrevious: " + this.§,!7§;
         _loc1_ += " mCastleCameraX: " + this.§,!7§;
         _loc1_ += "\n mCastleCameraY: " + this.§,!7§;
         _loc1_ += " mCastleCameraScale: " + this.§,!7§;
         _loc1_ += " mBirdCameraX: " + this.§,!7§;
         _loc1_ += " mBirdCameraY: " + this.§,!7§;
         _loc1_ += " mBirdCameraScale: " + this.§,!7§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§,!7§;
         _loc1_ += " mScreenTopScroll: " + this.§,!7§;
         _loc1_ += " mDragging: " + this.§,!7§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§,!7§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§,!7§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§,!7§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§,!7§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§,!7§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§,!7§;
         _loc1_ += " mDraggingTimer: " + this.§,!7§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§,!7§;
         _loc1_ += " mCameraBorderRight: " + this.§,!7§;
         _loc1_ += " mCameraBorderSky: " + this.§,!7§;
         _loc1_ += " mCameraBorderGround: " + this.§,!7§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§,!7§ + "\n ");
      }
   }
}
