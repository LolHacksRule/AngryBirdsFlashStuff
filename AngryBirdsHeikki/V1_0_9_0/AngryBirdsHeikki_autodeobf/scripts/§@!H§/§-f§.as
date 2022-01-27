package §@!H§
{
   import § d§.§'!"§;
   import § d§.§+=§;
   import §"W§.§;N§;
   import §0i§.§]_§;
   import §8! §.§1_§;
   import §8! §.§^!F§;
   import §>!F§.§9!Z§;
   
   public class §-f§
   {
      
      public static const §^!H§:Number = 1.25;
      
      public static const §&!9§:Number = 0.15;
      
      public static const §'7§:Number = §9!Z§.§,e§ * §'!"§.§#3§;
      
      public static const §9"§:Number = §9!Z§.§5§ * §'!"§.§#3§;
      
      public static const §"!$§:Number = 0.1;
      
      public static const §?M§:int = 1500;
      
      public static const §%! §:int = 10;
      
      public static const §+!`§:int = 15;
      
      public static const §@I§:int = 300;
      
      public static const §9!I§:int = 1000;
      
      public static const §6?§:int = 10000;
      
      public static const §?!`§:int = §6?§ / 50;
      
      public static const §@!@§:int = 0;
      
      public static const §;!W§:int = 1;
      
      public static const §@!3§:int = 2;
      
      public static const §"!5§:int = 3;
      
      public static const § z§:int = 4;
      
      public static const §7N§:int = 5;
      
      public static const §#!G§:String = "CASTLE";
      
      public static const §3!Q§:String = "SLINGSHOT";
      
      protected static var §[!0§:Number;
      
      public static var §&!H§:Number;
      
      public static var §'z§:Number;
      
      public static const §`F§:Number = 2000;
       
      
      private var §0!<§:Number = 1.0;
      
      private var §'_§:Number = 0.2;
      
      protected var §&$§:Number;
      
      protected var §1!=§:Number;
      
      protected var each:Number;
      
      public var §"2§:§'!"§;
      
      public var §!!W§:Number;
      
      public var §^!6§:Number;
      
      private var §#!>§:§1!Q§;
      
      private var §47§:§1!Q§;
      
      public var §6!5§:Number;
      
      public var §-M§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §[!Q§:Number;
      
      public var §-!N§:Number;
      
      public var §&!O§:Number;
      
      public var §%!1§:Number;
      
      private var §;r§:Number;
      
      private var §4n§:§#!`§;
      
      private var §<B§:§#!`§;
      
      protected var §`'§:Number = 0;
      
      protected var §3!C§:Number = 0;
      
      protected var §81§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §6!Y§:Number = 0;
      
      public var §[!>§:Boolean = true;
      
      public var §>!C§:Number = 0;
      
      public var §^!D§:Number = 0;
      
      public var §5!R§:Number = 0;
      
      public var §[k§:Number = 0;
      
      public var §<!]§:Number = 0;
      
      public var §4T§:Number = 0;
      
      public var §1!-§:Number = 0;
      
      public var §0j§:Number = 0;
      
      public var §?$§:Number = 0;
      
      private var §"!6§:§#!`§;
      
      public var §;!%§:Number = 0;
      
      private var §!]§:Number = 0;
      
      private var §?!H§:Number = 0;
      
      private var §`!T§:§^!F§ = null;
      
      private var §+?§:§^!F§ = null;
      
      public function §-f§(param1:§'!"§, param2:§1_§, param3:Number = 1.0)
      {
         this.§"!6§ = new §#!`§(0,0,1,false);
         super();
         this.§1!=§ = 0;
         this.each = 0;
         this.§"2§ = param1;
         §-f§.§[!0§ = 1;
         this.§0!<§ = Math.max(1,Math.min(2,param3));
         this.§&$§ = this.§0!<§;
         this.§3y§(param2);
         if(this.§#!>§ && this.§47§)
         {
            this.§5!§();
            this.§`'§ = this.§#!>§.x - this.§47§.x;
            this.§3!C§ = this.§#!>§.y - this.§47§.y;
            this.§81§ = this.§#!>§.scale - this.§47§.scale;
            this.§1!=§ = this.§#!>§.x;
            this.each = this.§#!>§.y;
            §[!0§ = this.§#!>§.scale * this.§&$§;
         }
         this.mCurrentCameraSliderLocation = §6?§;
         this.§[!>§ = true;
         this.§6!Y§ = §6?§ / 500;
      }
      
      private static function §8!R§() : Number
      {
         var _loc1_:Number = §9!Z§.§0!6§ / §9!Z§.§+C§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §%!@§() : Number
      {
         return §[!0§ * §8!R§();
      }
      
      public function get manualScale() : Number
      {
         return this.§&$§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§&$§ = param1;
      }
      
      public function get §&!0§() : Number
      {
         return this.§;r§;
      }
      
      public function §`y§() : Number
      {
         return §'7§ / (this.§-!N§ - this.§[!Q§);
      }
      
      public function get §%!N§() : Number
      {
         return this.§0!<§;
      }
      
      public function get §2`§() : Number
      {
         return this.§'_§;
      }
      
      public function §!d§(param1:Number) : void
      {
         this.§&$§ = param1;
         this.§"!R§();
         this.§%!;§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §7N§)
         {
            return;
         }
         this.goToCastleView();
         this.§>!C§ = 2000;
         this.§^g§();
         this.§[,§();
         this.§>!>§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§1!=§ = this.§47§.x;
         this.each = this.§47§.y;
         this.§[!>§ = false;
         this.§6!Y§ = §6?§ / 160000 * param1;
         this.§2!R§(§7N§);
      }
      
      public function §5!§() : void
      {
         this.§[!Q§ = this.§47§.x - §'7§ / this.§47§.scale / 2;
         this.§-!N§ = this.§#!>§.x + §'7§ / this.§#!>§.scale / 2;
         this.§&!O§ = this.§"2§.§=!E§.§9%§ - 20 * §'!"§.§20§ * §'!"§.§#3§;
         this.§%!1§ = this.§"2§.§=!E§.§9%§ + 4;
         var _loc1_:Number = §'7§ / (this.§-!N§ - this.§[!Q§);
         this.§;r§ = this.§%!1§ - §9"§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§"2§ = null;
      }
      
      public function §3y§(param1:§1_§) : void
      {
         var _loc3_:§^!F§ = null;
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
         while(_loc2_ < param1.§4!X§)
         {
            _loc3_ = param1.§!B§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§3!S§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §9"§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §'7§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §3!Q§)
            {
               this.§47§ = new §1!Q§(_loc9_,_loc10_,_loc13_,true);
               this.§<B§ = new §#!`§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §#!G§)
            {
               this.§#!>§ = new §1!Q§(_loc9_,_loc10_,_loc13_,false);
               this.§4n§ = new §#!`§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §]_§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §4!?§(param1:§1_§) : void
      {
         var _loc2_:§^!F§ = new §^!F§();
         _loc2_.id = §3!Q§;
         _loc2_.x = this.§47§.x;
         _loc2_.y = this.§47§.y;
         var _loc3_:Number = §'7§ / this.§47§.scale / 2;
         var _loc4_:Number = §9"§ / this.§47§.scale / 2;
         _loc2_.left = this.§47§.x - _loc3_;
         _loc2_.right = this.§47§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§^!F§;
         (_loc5_ = new §^!F§()).id = §#!G§;
         _loc5_.x = this.§#!>§.x;
         _loc5_.y = this.§#!>§.y;
         var _loc6_:Number = §'7§ / this.§#!>§.scale / 2;
         var _loc7_:Number = §9"§ / this.§#!>§.scale / 2;
         _loc5_.left = this.§#!>§.x - _loc6_;
         _loc5_.right = this.§#!>§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§@G§();
         param1.§7S§(_loc2_);
         param1.§7S§(_loc5_);
      }
      
      public function §3!S§(param1:§^!F§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §9!Z§.§,e§ * 0.5 / _loc2_ * §'!"§.§#3§;
         var _loc4_:Number = param1.y - §9!Z§.§5§ * 0.5 / _loc2_ * §'!"§.§#3§;
         var _loc5_:Number = _loc3_ + §9!Z§.§,e§ / _loc2_ * §'!"§.§#3§;
         var _loc6_:Number = _loc4_ + §9!Z§.§5§ / _loc2_ * §'!"§.§#3§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §54§(param1:§1!Q§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§6!Y§;
         if(_loc3_ >= §6?§)
         {
            _loc3_ = §6?§;
            this.§2!R§(§@!@§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§2!R§(§@!@§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §"^§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§6!Y§;
         var _loc4_:Number = -§6?§ * 0.7;
         if(_loc2_ >= §6?§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §6?§;
            }
            this.§6!Y§ = -this.§6!Y§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §83§(param1:Number) : void
      {
         if(this.mCurrentAction == §7N§)
         {
            this.§"^§(param1);
         }
         else if(this.mCurrentAction == §;!W§)
         {
            this.§54§(this.§#!>§,param1);
         }
         else if(this.mCurrentAction == §@!3§)
         {
            this.§54§(this.§47§,-param1);
         }
         else if(this.mCurrentAction == §"!5§)
         {
            this.§[!>§ = true;
         }
         else if(this.mCurrentAction == § z§)
         {
            this.§!!8§(param1);
         }
      }
      
      public function §@!!§(param1:Number) : void
      {
         if(this.§`!T§)
         {
            this.§1!=§ = this.§`!T§.x;
            this.each = this.§`!T§.y;
            §[!0§ = §'7§ / (this.§`!T§.right - this.§`!T§.left);
         }
         else
         {
            this.§"!R§();
            this.§83§(param1);
            this.§;q§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§^g§();
         this.§[,§();
         this.§>!>§();
      }
      
      private function §!!e§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<B§.scale + (this.§4n§.scale - this.§<B§.scale) * param1;
         var _loc4_:Number = this.§<B§.x + (this.§4n§.x - this.§<B§.x) * param1;
         var _loc5_:Number = this.§<B§.y + (this.§4n§.y - this.§<B§.y) * param1;
         this.§"!6§.x -= (this.§"!6§.x - _loc4_) * param2;
         this.§"!6§.y -= (this.§"!6§.y - _loc5_) * param2;
         this.§"!6§.scale -= (this.§"!6§.scale - _loc3_) * param2;
      }
      
      protected function §%!;§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`'§ != 0)
         {
            if(!this.§[!>§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §6?§;
            this.§!!e§(_loc3_,param2);
            this.§1!=§ = this.§"!6§.x;
            this.each = this.§"!6§.y;
            §[!0§ = this.§"!6§.scale;
         }
      }
      
      public function §;q§(param1:Number, param2:Number) : void
      {
         var _loc5_:§;N§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §6?§)
         {
            this.§[!>§ = true;
         }
         if(this.mCurrentAction == §"!5§)
         {
            if(!this.§"2§.activeObject)
            {
               this.§2!R§(§;!W§);
               this.§?$§ = §9!I§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§"2§.activeObject).§"!H§().GetPosition().x + (!!_loc5_.§+D§ ? _loc5_.§+D§ * §'!"§.§#3§ : 0);
               _loc7_ = _loc5_.§"!H§().GetPosition().y + (!!_loc5_.§;!9§ ? _loc5_.§;!9§ * §'!"§.§#3§ : 0);
               if((_loc8_ = _loc5_.§"!H§().GetLinearVelocity().x) > 0 && this.§`'§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§`'§ * §6?§;
               }
               if(param1 >= §6?§)
               {
                  param1 = §6?§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §6?§;
               this.§!!e§(_loc9_,_loc4_);
               _loc10_ = this.§"!6§.x - §'7§ * 0.5 / this.§"!6§.scale;
               _loc11_ = this.§"!6§.y - §9"§ * 0.5 / this.§"!6§.scale;
               _loc12_ = this.§"!6§.x + §'7§ * 0.5 / this.§"!6§.scale;
               _loc13_ = this.§"!6§.y + §9"§ * 0.5 / this.§"!6§.scale;
               _loc14_ = 150 * §'!"§.§#3§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§[!Q§,_loc15_);
               _loc17_ = Math.min(this.§-!N§,_loc17_);
               _loc19_ = Math.abs(§'7§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§9"§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§"!6§.scale)
               {
                  _loc21_ = this.§"!6§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §'7§ * 0.5 / _loc21_ > this.§-!N§)
               {
                  _loc15_ = (_loc17_ = this.§-!N§) - §'7§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§[!Q§)
                  {
                     _loc15_ = this.§[!Q§;
                  }
               }
               if(_loc22_ - §'7§ * 0.5 / _loc21_ < this.§[!Q§)
               {
                  _loc17_ = (_loc15_ = this.§[!Q§) + §'7§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§-!N§)
                  {
                     _loc17_ = this.§-!N§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§'7§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §'7§ * 0.5 / _loc21_ < this.§&!O§)
               {
                  _loc23_ = this.§&!O§ + §'7§ * 0.5 / _loc21_;
               }
               this.§1!=§ -= (this.§1!=§ - _loc22_) * _loc4_;
               this.§;!%§ -= (this.§;!%§ - _loc21_) * _loc4_;
               §[!0§ = this.§;!%§;
               this.each -= (this.each - _loc23_) * _loc4_;
               if(_loc6_ >= this.§-!N§ || _loc6_ <= this.§[!Q§)
               {
                  this.§"!6§.scale = §[!0§;
                  this.§"!6§.x = this.§1!=§;
                  this.§"!6§.y = this.each;
               }
            }
         }
         else
         {
            this.§%!;§(param1,_loc4_);
         }
      }
      
      public function §"`§(param1:Number, param2:Number) : void
      {
         this.§!]§ = param1;
         this.§?!H§ = param2;
      }
      
      private function §=j§(param1:§#!`§, param2:§1!Q§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §&!9§ + (param2.scale - §&!9§) * this.§&$§ * §-f§.§8!R§();
         if(§'7§ / param1.scale > this.§-!N§ - this.§[!Q§)
         {
            _loc3_ = §'7§ / (this.§-!N§ - this.§[!Q§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §+5§(param1:§#!`§, param2:§1!Q§) : Boolean
      {
         var _loc3_:Boolean = this.§=j§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §9"§ * 0.5 / param1.scale;
         var _loc5_:Number = §9"§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §'7§ * 0.5 / param1.scale) < this.§[!Q§ && param1.§[!2§)
         {
            param1.x += this.§[!Q§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §'7§ * 0.5 / param1.scale) > this.§-!N§ && !param1.§[!2§)
         {
            param1.x += this.§-!N§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §7!Q§(param1:§#!`§, param2:§1!Q§) : Number
      {
         return (param1.scale - §&!9§) / (§-f§.§8!R§() * (param2.scale - §&!9§));
      }
      
      protected function §"!R§() : void
      {
         this.§+5§(this.§<B§,this.§47§);
         var _loc1_:Number = this.§7!Q§(this.§<B§,this.§47§);
         this.§+5§(this.§4n§,this.§#!>§);
         var _loc2_:Number = this.§7!Q§(this.§4n§,this.§#!>§);
         this.§&$§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §^g§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§"2§.sprite)
         {
            _loc1_ = §9!Z§.§0!b§() / §9!Z§.§0!6§ - §9!Z§.§5§ >> 1;
            §&!H§ = this.§"2§.sprite.x = §'!"§.§5!;§ * ((1 - §-f§.§%!@§) / 2);
            §'z§ = this.§"2§.sprite.y = _loc1_ + §'!"§.§20§ * (1 - §-f§.§%!@§) * §+=§.§"!4§;
         }
      }
      
      public function §>!>§() : void
      {
         if(this.§"2§.sprite)
         {
            this.§"2§.sprite.scaleX = §%!@§;
            this.§"2§.sprite.scaleY = §%!@§;
         }
      }
      
      public function §[,§() : void
      {
         var _loc1_:Number = this.§1!=§ / §'!"§.§#3§ + this.§!]§;
         var _loc2_:Number = this.each / §'!"§.§#3§ + this.§?!H§;
         this.§6!5§ = _loc1_ - §'!"§.§5!;§ / 2 * §9!Z§.§0!6§ / §9!Z§.§]t§;
         this.§-M§ = _loc2_ - §'!"§.§20§ / 2 + §+=§.§2j§;
         if(this.§"2§.background)
         {
            this.§"2§.background.§9!J§(this.§6!5§,this.§-M§);
         }
         if(this.§"2§.objects)
         {
            this.§"2§.objects.§9!J§(this.§6!5§,this.§-M§);
         }
         if(this.§"2§.mLevelEngine)
         {
            this.§"2§.mLevelEngine.§9!J§(this.§6!5§,this.§-M§,§%!@§);
         }
         if(this.§"2§.slingshot)
         {
            this.§"2§.slingshot.§9!J§(this.§6!5§,this.§-M§);
         }
         if(this.§"2§.particles)
         {
            this.§"2§.particles.§9!J§(this.§6!5§,this.§-M§);
         }
      }
      
      protected function §#!U§() : void
      {
         this.§2!R§(§ z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§?$§ = -1;
         this.§#!U§();
         this.§<!]§ = this.§1!-§ = this.§5!R§ = param1;
         this.§4T§ = this.§0j§ = this.§[k§ = param2;
         this.§^!D§ = 0;
         this.§"!6§.x = this.§1!=§;
         this.§"!6§.y = this.each;
         this.§"!6§.scale = §[!0§;
         this.§;!%§ = §[!0§;
         if(Math.abs(this.§4n§.x - this.§<B§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§1!=§ - this.§<B§.x) / (this.§4n§.x - this.§<B§.x) * §6?§;
         }
         this.mDragging = true;
      }
      
      public function §!!8§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§^!D§ += param1;
         var _loc3_:Number = this.§<!]§ - this.§1!-§;
         if(this.§`'§ > 0)
         {
            _loc2_ -= _loc3_ * §'!"§.§#3§ / §%!@§ / this.§`'§ * §6?§;
            this.§[!>§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§[!>§ = true;
            }
            if(_loc2_ > §6?§)
            {
               _loc2_ += (§6?§ - _loc2_) * 0.3;
               this.§[!>§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§1!-§ = this.§<!]§;
      }
      
      protected function §3!%§() : Boolean
      {
         return this.mCurrentAction == § z§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§<!]§ = param1;
            this.§4T§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == § z§)
         {
            this.§2!R§(§@!@§);
            if(param1 > 0)
            {
               this.§<!]§ = param1;
            }
            _loc3_ = Math.abs(this.§<!]§ - this.§5!R§);
            if(this.§^!D§ < §?M§ && _loc3_ >= §%! § && _loc3_ >= §+!`§ * this.§^!D§ / 1000)
            {
               if(this.§<!]§ < this.§5!R§)
               {
                  this.§2!R§(§;!W§);
               }
               else
               {
                  this.§2!R§(§@!3§);
               }
               this.§6!Y§ = _loc3_ / this.§^!D§ * 10;
               this.§[!>§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§[!>§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §6?§)
               {
                  this.§[!>§ = true;
               }
            }
            else if(this.§^!D§ < §@I§)
            {
               this.§`!!§();
               this.§6!Y§ = §6?§ / (§6?§ / 500);
               this.§[!>§ = true;
            }
            else
            {
               this.§!!8§(0);
               this.§<`§(0);
               this.§6!Y§ = §6?§ / (§6?§ / 500);
               this.§[!>§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §`!!§() : void
      {
         if(this.mCurrentAction == §;!W§)
         {
            this.§2!R§(§@!3§);
         }
         else if(this.mCurrentAction == §@!3§)
         {
            this.§2!R§(§;!W§);
         }
         else if(this.mCurrentCameraSliderLocation >= §6?§ / 2)
         {
            this.§2!R§(§@!3§);
         }
         else if(this.mCurrentCameraSliderLocation <= §6?§ / 2)
         {
            this.§2!R§(§;!W§);
         }
      }
      
      public function §<`§(param1:int) : void
      {
         this.§?$§ = param1;
         if(this.mCurrentCameraSliderLocation < §6?§ / 2)
         {
            this.§2!R§(§@!3§);
         }
         else
         {
            this.§2!R§(§;!W§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§2!R§(§@!3§);
      }
      
      public function goToCastleView() : void
      {
         this.§2!R§(§;!W§);
      }
      
      public function §2!R§(param1:int) : void
      {
         this.§"!6§.x = this.§1!=§;
         this.§"!6§.y = this.each;
         this.§"!6§.scale = §[!0§;
         this.§;!%§ = §[!0§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §6?§)
         {
            return true;
         }
         if(this.mCurrentAction == §;!W§)
         {
            return true;
         }
         return false;
      }
      
      public function §3h§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §@!3§)
         {
            return true;
         }
         return false;
      }
      
      public function §#7§(param1:§^!F§) : void
      {
         this.§`!T§ = param1;
         if(this.§`!T§ != null)
         {
            this.§+?§ = new §^!F§();
            this.§+?§.x = this.§1!=§;
            this.§+?§.y = this.each;
            this.§+?§.scale = §[!0§;
         }
         else
         {
            this.§1!=§ = this.§+?§.x;
            this.each = this.§+?§.y;
            §[!0§ = this.§+?§.scale;
            this.§+?§ = null;
         }
      }
      
      protected function §9n§() : void
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
         var _loc3_:Number = this.§&$§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§2`§,Math.min(this.§%!N§,_loc3_));
         if(_loc3_ != this.§&$§)
         {
            this.§&$§ = _loc3_;
            this.§9n§();
         }
      }
      
      public function §6m§() : Number
      {
         return (this.manualScale - this.§2`§) / (this.§%!N§ - this.§2`§);
      }
      
      public function §5!f§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§%!N§ - this.§2`§) + this.§2`§;
      }
      
      public function §"F§() : void
      {
         this.§&$§ = Math.max(this.§&$§ - 0.5,0.5);
      }
      
      public function §7!&§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§&$§;
         _loc1_ += " mXcenterB2: " + this.§1!=§;
         _loc1_ += " mYcenterB2: " + this.each;
         _loc1_ += " mXcenterB2target: " + this.§&$§;
         _loc1_ += "\n mYcenterB2target: " + this.§&$§;
         _loc1_ += " mXcenterB2previous: " + this.§&$§;
         _loc1_ += " mYcenterB2previous: " + this.§&$§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§&$§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§&$§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§&$§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§&$§;
         _loc1_ += " mTargetScale: " + this.§&$§;
         _loc1_ += " mTargetScalePrevious: " + this.§&$§;
         _loc1_ += " mCastleCameraX: " + this.§&$§;
         _loc1_ += "\n mCastleCameraY: " + this.§&$§;
         _loc1_ += " mCastleCameraScale: " + this.§&$§;
         _loc1_ += " mBirdCameraX: " + this.§&$§;
         _loc1_ += " mBirdCameraY: " + this.§&$§;
         _loc1_ += " mBirdCameraScale: " + this.§&$§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§&$§;
         _loc1_ += " mScreenTopScroll: " + this.§&$§;
         _loc1_ += " mDragging: " + this.§&$§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§&$§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§&$§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§&$§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§&$§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§&$§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§&$§;
         _loc1_ += " mDraggingTimer: " + this.§&$§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§&$§;
         _loc1_ += " mCameraBorderRight: " + this.§&$§;
         _loc1_ += " mCameraBorderSky: " + this.§&$§;
         _loc1_ += " mCameraBorderGround: " + this.§&$§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§&$§ + "\n ");
      }
   }
}
