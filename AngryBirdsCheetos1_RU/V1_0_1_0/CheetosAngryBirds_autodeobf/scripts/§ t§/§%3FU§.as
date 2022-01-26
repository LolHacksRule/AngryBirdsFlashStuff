package § t§
{
   import §!!V§.§&I§;
   import §!!V§.§@!§;
   import §"!S§.§"_§;
   import §%t§.§@!%§;
   import §>8§.§#%§;
   import §>8§.§-!H§;
   import §]!+§.§";§;
   
   public class §?U§
   {
      
      public static const §<]§:Number = 1.25;
      
      public static const §9X§:Number = 0.15;
      
      public static const §0m§:Number = §"_§.§]!`§ * §&I§.§]!H§;
      
      public static const §1!R§:Number = §"_§.§-$§ * §&I§.§]!H§;
      
      public static const §#![§:Number = 0.1;
      
      public static const §+R§:int = 1500;
      
      public static const §+h§:int = 10;
      
      public static const §!b§:int = 15;
      
      public static const §9!P§:int = 300;
      
      public static const §=[§:int = 1000;
      
      public static const §2! §:int = 10000;
      
      public static const §2c§:int = §2! § / 50;
      
      public static const §"!_§:int = 0;
      
      public static const §]!S§:int = 1;
      
      public static const §#Q§:int = 2;
      
      public static const §0n§:int = 3;
      
      public static const §4!9§:int = 4;
      
      public static const §,!,§:int = 5;
      
      public static const §8!6§:String = "CASTLE";
      
      public static const §%!W§:String = "SLINGSHOT";
      
      protected static var §4K§:Number;
      
      public static var §+g§:Number;
      
      public static var §>!S§:Number;
      
      public static const §^M§:Number = 2000;
       
      
      private var §<-§:Number = 1.0;
      
      private var §2u§:Number = 0.2;
      
      protected var §@!E§:Number;
      
      protected var §'!N§:Number;
      
      protected var §'d§:Number;
      
      public var §%v§:§&I§;
      
      public var §,!W§:Number;
      
      public var §2!Z§:Number;
      
      private var §7@§:§4L§;
      
      private var §'!'§:§4L§;
      
      public var §]"§:Number;
      
      public var §&!D§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §`;§:Number;
      
      public var §@!Y§:Number;
      
      public var §4![§:Number;
      
      public var §+B§:Number;
      
      private var §]!-§:Number;
      
      private var §-!2§:§7!S§;
      
      private var §;!Y§:§7!S§;
      
      protected var §"!Q§:Number = 0;
      
      protected var §8s§:Number = 0;
      
      protected var §7!1§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&!`§:Number = 0;
      
      public var §^C§:Boolean = true;
      
      public var §!!9§:Number = 0;
      
      public var §@^§:Number = 0;
      
      public var §3!V§:Number = 0;
      
      public var §%U§:Number = 0;
      
      public var §-s§:Number = 0;
      
      public var §?^§:Number = 0;
      
      public var §?!L§:Number = 0;
      
      public var §<!;§:Number = 0;
      
      public var §!!G§:Number = 0;
      
      private var §!x§:§7!S§;
      
      public var §&3§:Number = 0;
      
      private var §`-§:Number = 0;
      
      private var §5!P§:Number = 0;
      
      private var §>!H§:§-!H§ = null;
      
      private var §36§:§-!H§ = null;
      
      public function §?U§(param1:§&I§, param2:§#%§, param3:Number = 1.0)
      {
         this.§!x§ = new §7!S§(0,0,1,false);
         super();
         this.§'!N§ = 0;
         this.§'d§ = 0;
         this.§%v§ = param1;
         §?U§.§4K§ = 1;
         this.§<-§ = Math.max(1,Math.min(2,param3));
         this.§@!E§ = this.§<-§;
         this.§6!6§(param2);
         if(this.§7@§ && this.§'!'§)
         {
            this.§5!#§();
            this.§"!Q§ = this.§7@§.x - this.§'!'§.x;
            this.§8s§ = this.§7@§.y - this.§'!'§.y;
            this.§7!1§ = this.§7@§.scale - this.§'!'§.scale;
            this.§'!N§ = this.§7@§.x;
            this.§'d§ = this.§7@§.y;
            §4K§ = this.§7@§.scale * this.§@!E§;
         }
         this.mCurrentCameraSliderLocation = §2! §;
         this.§^C§ = true;
         this.§&!`§ = §2! § / 500;
      }
      
      private static function §'Z§() : Number
      {
         var _loc1_:Number = §"_§.§5[§ / §"_§.§5o§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §!q§() : Number
      {
         return §4K§ * §'Z§();
      }
      
      public function get manualScale() : Number
      {
         return this.§@!E§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§@!E§ = param1;
      }
      
      public function get §?!D§() : Number
      {
         return this.§]!-§;
      }
      
      public function §+!9§() : Number
      {
         return §0m§ / (this.§@!Y§ - this.§`;§);
      }
      
      public function get §,5§() : Number
      {
         return this.§<-§;
      }
      
      public function get § !a§() : Number
      {
         return this.§2u§;
      }
      
      public function §6!H§(param1:Number) : void
      {
         this.§@!E§ = param1;
         this.§=!6§();
         this.§2!A§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §,!,§)
         {
            return;
         }
         this.goToCastleView();
         this.§!!9§ = 2000;
         this.§5F§();
         this.§5G§();
         this.§`^§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§'!N§ = this.§'!'§.x;
         this.§'d§ = this.§'!'§.y;
         this.§^C§ = false;
         this.§&!`§ = §2! § / 160000 * param1;
         this.§4!'§(§,!,§);
      }
      
      public function §5!#§() : void
      {
         this.§`;§ = this.§'!'§.x - §0m§ / this.§'!'§.scale / 2;
         this.§@!Y§ = this.§7@§.x + §0m§ / this.§7@§.scale / 2;
         this.§4![§ = this.§%v§.§,Q§.§]!Z§ - 20 * §&I§.§'!=§ * §&I§.§]!H§;
         this.§+B§ = this.§%v§.§,Q§.§]!Z§ + 4;
         var _loc1_:Number = §0m§ / (this.§@!Y§ - this.§`;§);
         this.§]!-§ = this.§+B§ - §1!R§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§%v§ = null;
      }
      
      public function §6!6§(param1:§#%§) : void
      {
         var _loc3_:§-!H§ = null;
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
         while(_loc2_ < param1.§8x§)
         {
            _loc3_ = param1.§^!9§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§7-§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §1!R§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §0m§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §%!W§)
            {
               this.§'!'§ = new §4L§(_loc9_,_loc10_,_loc13_,true);
               this.§;!Y§ = new §7!S§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §8!6§)
            {
               this.§7@§ = new §4L§(_loc9_,_loc10_,_loc13_,false);
               this.§-!2§ = new §7!S§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §@!%§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §<f§(param1:§#%§) : void
      {
         var _loc2_:§-!H§ = new §-!H§();
         _loc2_.id = §%!W§;
         _loc2_.x = this.§'!'§.x;
         _loc2_.y = this.§'!'§.y;
         var _loc3_:Number = §0m§ / this.§'!'§.scale / 2;
         var _loc4_:Number = §1!R§ / this.§'!'§.scale / 2;
         _loc2_.left = this.§'!'§.x - _loc3_;
         _loc2_.right = this.§'!'§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§-!H§;
         (_loc5_ = new §-!H§()).id = §8!6§;
         _loc5_.x = this.§7@§.x;
         _loc5_.y = this.§7@§.y;
         var _loc6_:Number = §0m§ / this.§7@§.scale / 2;
         var _loc7_:Number = §1!R§ / this.§7@§.scale / 2;
         _loc5_.left = this.§7@§.x - _loc6_;
         _loc5_.right = this.§7@§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§9k§();
         param1.§7!$§(_loc2_);
         param1.§7!$§(_loc5_);
      }
      
      public function §7-§(param1:§-!H§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §"_§.§]!`§ * 0.5 / _loc2_ * §&I§.§]!H§;
         var _loc4_:Number = param1.y - §"_§.§-$§ * 0.5 / _loc2_ * §&I§.§]!H§;
         var _loc5_:Number = _loc3_ + §"_§.§]!`§ / _loc2_ * §&I§.§]!H§;
         var _loc6_:Number = _loc4_ + §"_§.§-$§ / _loc2_ * §&I§.§]!H§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §9`§(param1:§4L§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&!`§;
         if(_loc3_ >= §2! §)
         {
            _loc3_ = §2! §;
            this.§4!'§(§"!_§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§4!'§(§"!_§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §,!C§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&!`§;
         var _loc4_:Number = -§2! § * 0.7;
         if(_loc2_ >= §2! § || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §2! §;
            }
            this.§&!`§ = -this.§&!`§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function § @§(param1:Number) : void
      {
         if(this.mCurrentAction == §,!,§)
         {
            this.§,!C§(param1);
         }
         else if(this.mCurrentAction == §]!S§)
         {
            this.§9`§(this.§7@§,param1);
         }
         else if(this.mCurrentAction == §#Q§)
         {
            this.§9`§(this.§'!'§,-param1);
         }
         else if(this.mCurrentAction == §0n§)
         {
            this.§^C§ = true;
         }
         else if(this.mCurrentAction == §4!9§)
         {
            this.§7!#§(param1);
         }
      }
      
      public function §[W§(param1:Number) : void
      {
         if(this.§>!H§)
         {
            this.§'!N§ = this.§>!H§.x;
            this.§'d§ = this.§>!H§.y;
            §4K§ = §0m§ / (this.§>!H§.right - this.§>!H§.left);
         }
         else
         {
            this.§=!6§();
            this.§ @§(param1);
            this.§`b§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§5F§();
         this.§5G§();
         this.§`^§();
      }
      
      private function §4z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§;!Y§.scale + (this.§-!2§.scale - this.§;!Y§.scale) * param1;
         var _loc4_:Number = this.§;!Y§.x + (this.§-!2§.x - this.§;!Y§.x) * param1;
         var _loc5_:Number = this.§;!Y§.y + (this.§-!2§.y - this.§;!Y§.y) * param1;
         this.§!x§.x -= (this.§!x§.x - _loc4_) * param2;
         this.§!x§.y -= (this.§!x§.y - _loc5_) * param2;
         this.§!x§.scale -= (this.§!x§.scale - _loc3_) * param2;
      }
      
      protected function §2!A§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"!Q§ != 0)
         {
            if(!this.§^C§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §2! §;
            this.§4z§(_loc3_,param2);
            this.§'!N§ = this.§!x§.x;
            this.§'d§ = this.§!x§.y;
            §4K§ = this.§!x§.scale;
         }
      }
      
      public function §`b§(param1:Number, param2:Number) : void
      {
         var _loc5_:§";§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §2! §)
         {
            this.§^C§ = true;
         }
         if(this.mCurrentAction == §0n§)
         {
            if(!this.§%v§.activeObject)
            {
               this.§4!'§(§]!S§);
               this.§!!G§ = §=[§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§%v§.activeObject).§?A§().GetPosition().x + (!!_loc5_.§9E§ ? _loc5_.§9E§ * §&I§.§]!H§ : 0);
               _loc7_ = _loc5_.§?A§().GetPosition().y + (!!_loc5_.§[0§ ? _loc5_.§[0§ * §&I§.§]!H§ : 0);
               if((_loc8_ = _loc5_.§?A§().GetLinearVelocity().x) > 0 && this.§"!Q§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§"!Q§ * §2! §;
               }
               if(param1 >= §2! §)
               {
                  param1 = §2! §;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §2! §;
               this.§4z§(_loc9_,_loc4_);
               _loc10_ = this.§!x§.x - §0m§ * 0.5 / this.§!x§.scale;
               _loc11_ = this.§!x§.y - §1!R§ * 0.5 / this.§!x§.scale;
               _loc12_ = this.§!x§.x + §0m§ * 0.5 / this.§!x§.scale;
               _loc13_ = this.§!x§.y + §1!R§ * 0.5 / this.§!x§.scale;
               _loc14_ = 150 * §&I§.§]!H§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§`;§,_loc15_);
               _loc17_ = Math.min(this.§@!Y§,_loc17_);
               _loc19_ = Math.abs(§0m§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§1!R§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§!x§.scale)
               {
                  _loc21_ = this.§!x§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §0m§ * 0.5 / _loc21_ > this.§@!Y§)
               {
                  _loc15_ = (_loc17_ = this.§@!Y§) - §0m§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§`;§)
                  {
                     _loc15_ = this.§`;§;
                  }
               }
               if(_loc22_ - §0m§ * 0.5 / _loc21_ < this.§`;§)
               {
                  _loc17_ = (_loc15_ = this.§`;§) + §0m§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§@!Y§)
                  {
                     _loc17_ = this.§@!Y§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§0m§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §0m§ * 0.5 / _loc21_ < this.§4![§)
               {
                  _loc23_ = this.§4![§ + §0m§ * 0.5 / _loc21_;
               }
               this.§'!N§ -= (this.§'!N§ - _loc22_) * _loc4_;
               this.§&3§ -= (this.§&3§ - _loc21_) * _loc4_;
               §4K§ = this.§&3§;
               this.§'d§ -= (this.§'d§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§@!Y§ || _loc6_ <= this.§`;§)
               {
                  this.§!x§.scale = §4K§;
                  this.§!x§.x = this.§'!N§;
                  this.§!x§.y = this.§'d§;
               }
            }
         }
         else
         {
            this.§2!A§(param1,_loc4_);
         }
      }
      
      public function §4M§(param1:Number, param2:Number) : void
      {
         this.§`-§ = param1;
         this.§5!P§ = param2;
      }
      
      private function §,<§(param1:§7!S§, param2:§4L§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §9X§ + (param2.scale - §9X§) * this.§@!E§ * §?U§.§'Z§();
         if(§0m§ / param1.scale > this.§@!Y§ - this.§`;§)
         {
            _loc3_ = §0m§ / (this.§@!Y§ - this.§`;§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §2W§(param1:§7!S§, param2:§4L§) : Boolean
      {
         var _loc3_:Boolean = this.§,<§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §1!R§ * 0.5 / param1.scale;
         var _loc5_:Number = §1!R§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §0m§ * 0.5 / param1.scale) < this.§`;§ && param1.§6i§)
         {
            param1.x += this.§`;§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §0m§ * 0.5 / param1.scale) > this.§@!Y§ && !param1.§6i§)
         {
            param1.x += this.§@!Y§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §<M§(param1:§7!S§, param2:§4L§) : Number
      {
         return (param1.scale - §9X§) / (§?U§.§'Z§() * (param2.scale - §9X§));
      }
      
      protected function §=!6§() : void
      {
         this.§2W§(this.§;!Y§,this.§'!'§);
         var _loc1_:Number = this.§<M§(this.§;!Y§,this.§'!'§);
         this.§2W§(this.§-!2§,this.§7@§);
         var _loc2_:Number = this.§<M§(this.§-!2§,this.§7@§);
         this.§@!E§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §5F§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§%v§.sprite)
         {
            _loc1_ = §"_§.§>I§() / §"_§.§5[§ - §"_§.§-$§ >> 1;
            §+g§ = this.§%v§.sprite.x = §&I§.§?!>§ * ((1 - §?U§.§!q§) / 2);
            §>!S§ = this.§%v§.sprite.y = _loc1_ + §&I§.§'!=§ * (1 - §?U§.§!q§) * §@!§.§&=§;
         }
      }
      
      public function §`^§() : void
      {
         if(this.§%v§.sprite)
         {
            this.§%v§.sprite.scaleX = §!q§;
            this.§%v§.sprite.scaleY = §!q§;
         }
      }
      
      public function §5G§() : void
      {
         var _loc1_:Number = this.§'!N§ / §&I§.§]!H§ + this.§`-§;
         var _loc2_:Number = this.§'d§ / §&I§.§]!H§ + this.§5!P§;
         this.§]"§ = _loc1_ - §&I§.§?!>§ / 2 * §"_§.§5[§ / §"_§.§6!J§;
         this.§&!D§ = _loc2_ - §&I§.§'!=§ / 2 + §@!§.§set §;
         if(this.§%v§.background)
         {
            this.§%v§.background.§?'§(this.§]"§,this.§&!D§);
         }
         if(this.§%v§.objects)
         {
            this.§%v§.objects.§?'§(this.§]"§,this.§&!D§);
         }
         if(this.§%v§.mLevelEngine)
         {
            this.§%v§.mLevelEngine.§?'§(this.§]"§,this.§&!D§,§!q§);
         }
         if(this.§%v§.slingshot)
         {
            this.§%v§.slingshot.§?'§(this.§]"§,this.§&!D§);
         }
         if(this.§%v§.particles)
         {
            this.§%v§.particles.§?'§(this.§]"§,this.§&!D§);
         }
      }
      
      protected function §7!P§() : void
      {
         this.§4!'§(§4!9§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§!!G§ = -1;
         this.§7!P§();
         this.§-s§ = this.§?!L§ = this.§3!V§ = param1;
         this.§?^§ = this.§<!;§ = this.§%U§ = param2;
         this.§@^§ = 0;
         this.§!x§.x = this.§'!N§;
         this.§!x§.y = this.§'d§;
         this.§!x§.scale = §4K§;
         this.§&3§ = §4K§;
         if(Math.abs(this.§-!2§.x - this.§;!Y§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§'!N§ - this.§;!Y§.x) / (this.§-!2§.x - this.§;!Y§.x) * §2! §;
         }
         this.mDragging = true;
      }
      
      public function §7!#§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§@^§ += param1;
         var _loc3_:Number = this.§-s§ - this.§?!L§;
         if(this.§"!Q§ > 0)
         {
            _loc2_ -= _loc3_ * §&I§.§]!H§ / §!q§ / this.§"!Q§ * §2! §;
            this.§^C§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§^C§ = true;
            }
            if(_loc2_ > §2! §)
            {
               _loc2_ += (§2! § - _loc2_) * 0.3;
               this.§^C§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§?!L§ = this.§-s§;
      }
      
      protected function §`#§() : Boolean
      {
         return this.mCurrentAction == §4!9§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§-s§ = param1;
            this.§?^§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §4!9§)
         {
            this.§4!'§(§"!_§);
            if(param1 > 0)
            {
               this.§-s§ = param1;
            }
            _loc3_ = Math.abs(this.§-s§ - this.§3!V§);
            if(this.§@^§ < §+R§ && _loc3_ >= §+h§ && _loc3_ >= §!b§ * this.§@^§ / 1000)
            {
               if(this.§-s§ < this.§3!V§)
               {
                  this.§4!'§(§]!S§);
               }
               else
               {
                  this.§4!'§(§#Q§);
               }
               this.§&!`§ = _loc3_ / this.§@^§ * 10;
               this.§^C§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§^C§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §2! §)
               {
                  this.§^C§ = true;
               }
            }
            else if(this.§@^§ < §9!P§)
            {
               this.§`p§();
               this.§&!`§ = §2! § / (§2! § / 500);
               this.§^C§ = true;
            }
            else
            {
               this.§7!#§(0);
               this.§,X§(0);
               this.§&!`§ = §2! § / (§2! § / 500);
               this.§^C§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §`p§() : void
      {
         if(this.mCurrentAction == §]!S§)
         {
            this.§4!'§(§#Q§);
         }
         else if(this.mCurrentAction == §#Q§)
         {
            this.§4!'§(§]!S§);
         }
         else if(this.mCurrentCameraSliderLocation >= §2! § / 2)
         {
            this.§4!'§(§#Q§);
         }
         else if(this.mCurrentCameraSliderLocation <= §2! § / 2)
         {
            this.§4!'§(§]!S§);
         }
      }
      
      public function §,X§(param1:int) : void
      {
         this.§!!G§ = param1;
         if(this.mCurrentCameraSliderLocation < §2! § / 2)
         {
            this.§4!'§(§#Q§);
         }
         else
         {
            this.§4!'§(§]!S§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§4!'§(§#Q§);
      }
      
      public function goToCastleView() : void
      {
         this.§4!'§(§]!S§);
      }
      
      public function §4!'§(param1:int) : void
      {
         this.§!x§.x = this.§'!N§;
         this.§!x§.y = this.§'d§;
         this.§!x§.scale = §4K§;
         this.§&3§ = §4K§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §2! §)
         {
            return true;
         }
         if(this.mCurrentAction == §]!S§)
         {
            return true;
         }
         return false;
      }
      
      public function §^!@§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §#Q§)
         {
            return true;
         }
         return false;
      }
      
      public function §"2§(param1:§-!H§) : void
      {
         this.§>!H§ = param1;
         if(this.§>!H§ != null)
         {
            this.§36§ = new §-!H§();
            this.§36§.x = this.§'!N§;
            this.§36§.y = this.§'d§;
            this.§36§.scale = §4K§;
         }
         else
         {
            this.§'!N§ = this.§36§.x;
            this.§'d§ = this.§36§.y;
            §4K§ = this.§36§.scale;
            this.§36§ = null;
         }
      }
      
      protected function §^-§() : void
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
         var _loc3_:Number = this.§@!E§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§ !a§,Math.min(this.§,5§,_loc3_));
         if(_loc3_ != this.§@!E§)
         {
            this.§@!E§ = _loc3_;
            this.§^-§();
         }
      }
      
      public function §[!?§() : Number
      {
         return (this.manualScale - this.§ !a§) / (this.§,5§ - this.§ !a§);
      }
      
      public function § !L§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§,5§ - this.§ !a§) + this.§ !a§;
      }
      
      public function §`r§() : void
      {
         this.§@!E§ = Math.max(this.§@!E§ - 0.5,0.5);
      }
      
      public function §+!G§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§@!E§;
         _loc1_ += " mXcenterB2: " + this.§'!N§;
         _loc1_ += " mYcenterB2: " + this.§'d§;
         _loc1_ += " mXcenterB2target: " + this.§@!E§;
         _loc1_ += "\n mYcenterB2target: " + this.§@!E§;
         _loc1_ += " mXcenterB2previous: " + this.§@!E§;
         _loc1_ += " mYcenterB2previous: " + this.§@!E§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§@!E§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§@!E§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§@!E§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§@!E§;
         _loc1_ += " mTargetScale: " + this.§@!E§;
         _loc1_ += " mTargetScalePrevious: " + this.§@!E§;
         _loc1_ += " mCastleCameraX: " + this.§@!E§;
         _loc1_ += "\n mCastleCameraY: " + this.§@!E§;
         _loc1_ += " mCastleCameraScale: " + this.§@!E§;
         _loc1_ += " mBirdCameraX: " + this.§@!E§;
         _loc1_ += " mBirdCameraY: " + this.§@!E§;
         _loc1_ += " mBirdCameraScale: " + this.§@!E§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§@!E§;
         _loc1_ += " mScreenTopScroll: " + this.§@!E§;
         _loc1_ += " mDragging: " + this.§@!E§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§@!E§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§@!E§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§@!E§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§@!E§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§@!E§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§@!E§;
         _loc1_ += " mDraggingTimer: " + this.§@!E§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§@!E§;
         _loc1_ += " mCameraBorderRight: " + this.§@!E§;
         _loc1_ += " mCameraBorderSky: " + this.§@!E§;
         _loc1_ += " mCameraBorderGround: " + this.§@!E§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§@!E§ + "\n ");
      }
   }
}
