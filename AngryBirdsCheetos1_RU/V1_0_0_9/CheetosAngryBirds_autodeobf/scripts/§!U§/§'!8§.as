package §!U§
{
   import §"!@§.§&;§;
   import §"!@§.§]8§;
   import §#!P§.§2!W§;
   import §-!6§.§>I§;
   import §3E§.§6w§;
   import §3E§.§<!9§;
   import §7!U§.§2!7§;
   
   public class §'!8§
   {
      
      public static const §-!B§:Number = 1.25;
      
      public static const §5!Y§:Number = 0.15;
      
      public static const §9!W§:Number = §2!7§.§'s§ * §6w§.§?!^§;
      
      public static const §0!^§:Number = §2!7§.§&!8§ * §6w§.§?!^§;
      
      public static const §=!!§:Number = 0.1;
      
      public static const §`m§:int = 1500;
      
      public static const §<?§:int = 10;
      
      public static const §"u§:int = 15;
      
      public static const §3k§:int = 300;
      
      public static const §!!8§:int = 1000;
      
      public static const §!!0§:int = 10000;
      
      public static const §-9§:int = §!!0§ / 50;
      
      public static const §=!@§:int = 0;
      
      public static const §!!V§:int = 1;
      
      public static const § in§:int = 2;
      
      public static const §-!2§:int = 3;
      
      public static const §;j§:int = 4;
      
      public static const §#n§:int = 5;
      
      public static const override:String = "CASTLE";
      
      public static const §"k§:String = "SLINGSHOT";
      
      protected static var §7]§:Number;
      
      public static var §?d§:Number;
      
      public static var §+'§:Number;
      
      public static const §^0§:Number = 2000;
       
      
      private var §,u§:Number = 1.0;
      
      private var §7!N§:Number = 0.2;
      
      protected var §,8§:Number;
      
      protected var §+![§:Number;
      
      protected var §0X§:Number;
      
      public var §]v§:§6w§;
      
      public var §1! §:Number;
      
      public var §8"§:Number;
      
      private var §"5§:§+X§;
      
      private var §3!R§:§+X§;
      
      public var §;!D§:Number;
      
      public var §;m§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §]Q§:Number;
      
      public var §9M§:Number;
      
      public var §[!!§:Number;
      
      public var §'i§:Number;
      
      private var §6A§:Number;
      
      private var §=[§:§6!8§;
      
      private var §+^§:§6!8§;
      
      protected var §5!Q§:Number = 0;
      
      protected var §`T§:Number = 0;
      
      protected var §]'§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §%5§:Number = 0;
      
      public var §>!N§:Boolean = true;
      
      public var §]!D§:Number = 0;
      
      public var §6E§:Number = 0;
      
      public var §'!1§:Number = 0;
      
      public var §'!9§:Number = 0;
      
      public var §8!K§:Number = 0;
      
      public var §0!X§:Number = 0;
      
      public var §-!J§:Number = 0;
      
      public var §0D§:Number = 0;
      
      public var §+!a§:Number = 0;
      
      private var §2!N§:§6!8§;
      
      public var §<y§:Number = 0;
      
      private var §%!A§:Number = 0;
      
      private var §^C§:Number = 0;
      
      private var §<!=§:§]8§ = null;
      
      private var §,!0§:§]8§ = null;
      
      public function §'!8§(param1:§6w§, param2:§&;§, param3:Number = 1.0)
      {
         this.§2!N§ = new §6!8§(0,0,1,false);
         super();
         this.§+![§ = 0;
         this.§0X§ = 0;
         this.§]v§ = param1;
         §'!8§.§7]§ = 1;
         this.§,u§ = Math.max(1,Math.min(2,param3));
         this.§,8§ = this.§,u§;
         this.§+!"§(param2);
         if(this.§"5§ && this.§3!R§)
         {
            this.§'!B§();
            this.§5!Q§ = this.§"5§.x - this.§3!R§.x;
            this.§`T§ = this.§"5§.y - this.§3!R§.y;
            this.§]'§ = this.§"5§.scale - this.§3!R§.scale;
            this.§+![§ = this.§"5§.x;
            this.§0X§ = this.§"5§.y;
            §7]§ = this.§"5§.scale * this.§,8§;
         }
         this.mCurrentCameraSliderLocation = §!!0§;
         this.§>!N§ = true;
         this.§%5§ = §!!0§ / 500;
      }
      
      private static function §0E§() : Number
      {
         var _loc1_:Number = §2!7§.§!!D§ / §2!7§.§0m§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §3!0§() : Number
      {
         return §7]§ * §0E§();
      }
      
      public function get manualScale() : Number
      {
         return this.§,8§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§,8§ = param1;
      }
      
      public function get §]"§() : Number
      {
         return this.§6A§;
      }
      
      public function §8!B§() : Number
      {
         return §9!W§ / (this.§9M§ - this.§]Q§);
      }
      
      public function get §&!&§() : Number
      {
         return this.§,u§;
      }
      
      public function get §@!V§() : Number
      {
         return this.§7!N§;
      }
      
      public function §-<§(param1:Number) : void
      {
         this.§,8§ = param1;
         this.§-!F§();
         this.§#o§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §#n§)
         {
            return;
         }
         this.goToCastleView();
         this.§]!D§ = 2000;
         this.§1!8§();
         this.§"!6§();
         this.§;Y§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§+![§ = this.§3!R§.x;
         this.§0X§ = this.§3!R§.y;
         this.§>!N§ = false;
         this.§%5§ = §!!0§ / 160000 * param1;
         this.§?!G§(§#n§);
      }
      
      public function §'!B§() : void
      {
         this.§]Q§ = this.§3!R§.x - §9!W§ / this.§3!R§.scale / 2;
         this.§9M§ = this.§"5§.x + §9!W§ / this.§"5§.scale / 2;
         this.§[!!§ = this.§]v§.§[2§.§@I§ - 20 * §6w§.§%A§ * §6w§.§?!^§;
         this.§'i§ = this.§]v§.§[2§.§@I§ + 4;
         var _loc1_:Number = §9!W§ / (this.§9M§ - this.§]Q§);
         this.§6A§ = this.§'i§ - §0!^§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]v§ = null;
      }
      
      public function §+!"§(param1:§&;§) : void
      {
         var _loc3_:§]8§ = null;
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
         while(_loc2_ < param1.§'e§)
         {
            _loc3_ = param1.§5!S§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§=!V§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §0!^§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §9!W§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §"k§)
            {
               this.§3!R§ = new §+X§(_loc9_,_loc10_,_loc13_,true);
               this.§+^§ = new §6!8§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == override)
            {
               this.§"5§ = new §+X§(_loc9_,_loc10_,_loc13_,false);
               this.§=[§ = new §6!8§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §>I§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §^!L§(param1:§&;§) : void
      {
         var _loc2_:§]8§ = new §]8§();
         _loc2_.id = §"k§;
         _loc2_.x = this.§3!R§.x;
         _loc2_.y = this.§3!R§.y;
         var _loc3_:Number = §9!W§ / this.§3!R§.scale / 2;
         var _loc4_:Number = §0!^§ / this.§3!R§.scale / 2;
         _loc2_.left = this.§3!R§.x - _loc3_;
         _loc2_.right = this.§3!R§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§]8§;
         (_loc5_ = new §]8§()).id = override;
         _loc5_.x = this.§"5§.x;
         _loc5_.y = this.§"5§.y;
         var _loc6_:Number = §9!W§ / this.§"5§.scale / 2;
         var _loc7_:Number = §0!^§ / this.§"5§.scale / 2;
         _loc5_.left = this.§"5§.x - _loc6_;
         _loc5_.right = this.§"5§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§=!N§();
         param1.§"V§(_loc2_);
         param1.§"V§(_loc5_);
      }
      
      public function §=!V§(param1:§]8§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §2!7§.§'s§ * 0.5 / _loc2_ * §6w§.§?!^§;
         var _loc4_:Number = param1.y - §2!7§.§&!8§ * 0.5 / _loc2_ * §6w§.§?!^§;
         var _loc5_:Number = _loc3_ + §2!7§.§'s§ / _loc2_ * §6w§.§?!^§;
         var _loc6_:Number = _loc4_ + §2!7§.§&!8§ / _loc2_ * §6w§.§?!^§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §"_§(param1:§+X§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§%5§;
         if(_loc3_ >= §!!0§)
         {
            _loc3_ = §!!0§;
            this.§?!G§(§=!@§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§?!G§(§=!@§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §,!M§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§%5§;
         var _loc4_:Number = -§!!0§ * 0.7;
         if(_loc2_ >= §!!0§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §!!0§;
            }
            this.§%5§ = -this.§%5§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]!8§(param1:Number) : void
      {
         if(this.mCurrentAction == §#n§)
         {
            this.§,!M§(param1);
         }
         else if(this.mCurrentAction == §!!V§)
         {
            this.§"_§(this.§"5§,param1);
         }
         else if(this.mCurrentAction == § in§)
         {
            this.§"_§(this.§3!R§,-param1);
         }
         else if(this.mCurrentAction == §-!2§)
         {
            this.§>!N§ = true;
         }
         else if(this.mCurrentAction == §;j§)
         {
            this.§'!N§(param1);
         }
      }
      
      public function §!!K§(param1:Number) : void
      {
         if(this.§<!=§)
         {
            this.§+![§ = this.§<!=§.x;
            this.§0X§ = this.§<!=§.y;
            §7]§ = §9!W§ / (this.§<!=§.right - this.§<!=§.left);
         }
         else
         {
            this.§-!F§();
            this.§]!8§(param1);
            this.§&D§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§1!8§();
         this.§"!6§();
         this.§;Y§();
      }
      
      private function §&!D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+^§.scale + (this.§=[§.scale - this.§+^§.scale) * param1;
         var _loc4_:Number = this.§+^§.x + (this.§=[§.x - this.§+^§.x) * param1;
         var _loc5_:Number = this.§+^§.y + (this.§=[§.y - this.§+^§.y) * param1;
         this.§2!N§.x -= (this.§2!N§.x - _loc4_) * param2;
         this.§2!N§.y -= (this.§2!N§.y - _loc5_) * param2;
         this.§2!N§.scale -= (this.§2!N§.scale - _loc3_) * param2;
      }
      
      protected function §#o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§5!Q§ != 0)
         {
            if(!this.§>!N§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §!!0§;
            this.§&!D§(_loc3_,param2);
            this.§+![§ = this.§2!N§.x;
            this.§0X§ = this.§2!N§.y;
            §7]§ = this.§2!N§.scale;
         }
      }
      
      public function §&D§(param1:Number, param2:Number) : void
      {
         var _loc5_:§2!W§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §!!0§)
         {
            this.§>!N§ = true;
         }
         if(this.mCurrentAction == §-!2§)
         {
            if(!this.§]v§.activeObject)
            {
               this.§?!G§(§!!V§);
               this.§+!a§ = §!!8§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]v§.activeObject).§84§().GetPosition().x + (!!_loc5_.§[!?§ ? _loc5_.§[!?§ * §6w§.§?!^§ : 0);
               _loc7_ = _loc5_.§84§().GetPosition().y + (!!_loc5_.§"!2§ ? _loc5_.§"!2§ * §6w§.§?!^§ : 0);
               if((_loc8_ = _loc5_.§84§().GetLinearVelocity().x) > 0 && this.§5!Q§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§5!Q§ * §!!0§;
               }
               if(param1 >= §!!0§)
               {
                  param1 = §!!0§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §!!0§;
               this.§&!D§(_loc9_,_loc4_);
               _loc10_ = this.§2!N§.x - §9!W§ * 0.5 / this.§2!N§.scale;
               _loc11_ = this.§2!N§.y - §0!^§ * 0.5 / this.§2!N§.scale;
               _loc12_ = this.§2!N§.x + §9!W§ * 0.5 / this.§2!N§.scale;
               _loc13_ = this.§2!N§.y + §0!^§ * 0.5 / this.§2!N§.scale;
               _loc14_ = 150 * §6w§.§?!^§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§]Q§,_loc15_);
               _loc17_ = Math.min(this.§9M§,_loc17_);
               _loc19_ = Math.abs(§9!W§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§0!^§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§2!N§.scale)
               {
                  _loc21_ = this.§2!N§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §9!W§ * 0.5 / _loc21_ > this.§9M§)
               {
                  _loc15_ = (_loc17_ = this.§9M§) - §9!W§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§]Q§)
                  {
                     _loc15_ = this.§]Q§;
                  }
               }
               if(_loc22_ - §9!W§ * 0.5 / _loc21_ < this.§]Q§)
               {
                  _loc17_ = (_loc15_ = this.§]Q§) + §9!W§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§9M§)
                  {
                     _loc17_ = this.§9M§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§9!W§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §9!W§ * 0.5 / _loc21_ < this.§[!!§)
               {
                  _loc23_ = this.§[!!§ + §9!W§ * 0.5 / _loc21_;
               }
               this.§+![§ -= (this.§+![§ - _loc22_) * _loc4_;
               this.§<y§ -= (this.§<y§ - _loc21_) * _loc4_;
               §7]§ = this.§<y§;
               this.§0X§ -= (this.§0X§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§9M§ || _loc6_ <= this.§]Q§)
               {
                  this.§2!N§.scale = §7]§;
                  this.§2!N§.x = this.§+![§;
                  this.§2!N§.y = this.§0X§;
               }
            }
         }
         else
         {
            this.§#o§(param1,_loc4_);
         }
      }
      
      public function §?!A§(param1:Number, param2:Number) : void
      {
         this.§%!A§ = param1;
         this.§^C§ = param2;
      }
      
      private function §'@§(param1:§6!8§, param2:§+X§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §5!Y§ + (param2.scale - §5!Y§) * this.§,8§ * §'!8§.§0E§();
         if(§9!W§ / param1.scale > this.§9M§ - this.§]Q§)
         {
            _loc3_ = §9!W§ / (this.§9M§ - this.§]Q§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §%!V§(param1:§6!8§, param2:§+X§) : Boolean
      {
         var _loc3_:Boolean = this.§'@§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §0!^§ * 0.5 / param1.scale;
         var _loc5_:Number = §0!^§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §9!W§ * 0.5 / param1.scale) < this.§]Q§ && param1.§?b§)
         {
            param1.x += this.§]Q§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §9!W§ * 0.5 / param1.scale) > this.§9M§ && !param1.§?b§)
         {
            param1.x += this.§9M§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §8!7§(param1:§6!8§, param2:§+X§) : Number
      {
         return (param1.scale - §5!Y§) / (§'!8§.§0E§() * (param2.scale - §5!Y§));
      }
      
      protected function §-!F§() : void
      {
         this.§%!V§(this.§+^§,this.§3!R§);
         var _loc1_:Number = this.§8!7§(this.§+^§,this.§3!R§);
         this.§%!V§(this.§=[§,this.§"5§);
         var _loc2_:Number = this.§8!7§(this.§=[§,this.§"5§);
         this.§,8§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §1!8§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]v§.sprite)
         {
            _loc1_ = §2!7§.§=I§() / §2!7§.§!!D§ - §2!7§.§&!8§ >> 1;
            §?d§ = this.§]v§.sprite.x = §6w§.§9X§ * ((1 - §'!8§.§3!0§) / 2);
            §+'§ = this.§]v§.sprite.y = _loc1_ + §6w§.§%A§ * (1 - §'!8§.§3!0§) * §<!9§.§&0§;
         }
      }
      
      public function §;Y§() : void
      {
         if(this.§]v§.sprite)
         {
            this.§]v§.sprite.scaleX = §3!0§;
            this.§]v§.sprite.scaleY = §3!0§;
         }
      }
      
      public function §"!6§() : void
      {
         var _loc1_:Number = this.§+![§ / §6w§.§?!^§ + this.§%!A§;
         var _loc2_:Number = this.§0X§ / §6w§.§?!^§ + this.§^C§;
         this.§;!D§ = _loc1_ - §6w§.§9X§ / 2 * §2!7§.§!!D§ / §2!7§.§1$§;
         this.§;m§ = _loc2_ - §6w§.§%A§ / 2 + §<!9§.§3w§;
         if(this.§]v§.background)
         {
            this.§]v§.background.§3!J§(this.§;!D§,this.§;m§);
         }
         if(this.§]v§.objects)
         {
            this.§]v§.objects.§3!J§(this.§;!D§,this.§;m§);
         }
         if(this.§]v§.mLevelEngine)
         {
            this.§]v§.mLevelEngine.§3!J§(this.§;!D§,this.§;m§,§3!0§);
         }
         if(this.§]v§.slingshot)
         {
            this.§]v§.slingshot.§3!J§(this.§;!D§,this.§;m§);
         }
         if(this.§]v§.particles)
         {
            this.§]v§.particles.§3!J§(this.§;!D§,this.§;m§);
         }
      }
      
      protected function §+!1§() : void
      {
         this.§?!G§(§;j§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§+!a§ = -1;
         this.§+!1§();
         this.§8!K§ = this.§-!J§ = this.§'!1§ = param1;
         this.§0!X§ = this.§0D§ = this.§'!9§ = param2;
         this.§6E§ = 0;
         this.§2!N§.x = this.§+![§;
         this.§2!N§.y = this.§0X§;
         this.§2!N§.scale = §7]§;
         this.§<y§ = §7]§;
         if(Math.abs(this.§=[§.x - this.§+^§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§+![§ - this.§+^§.x) / (this.§=[§.x - this.§+^§.x) * §!!0§;
         }
         this.mDragging = true;
      }
      
      public function §'!N§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§6E§ += param1;
         var _loc3_:Number = this.§8!K§ - this.§-!J§;
         if(this.§5!Q§ > 0)
         {
            _loc2_ -= _loc3_ * §6w§.§?!^§ / §3!0§ / this.§5!Q§ * §!!0§;
            this.§>!N§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§>!N§ = true;
            }
            if(_loc2_ > §!!0§)
            {
               _loc2_ += (§!!0§ - _loc2_) * 0.3;
               this.§>!N§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§-!J§ = this.§8!K§;
      }
      
      protected function §9^§() : Boolean
      {
         return this.mCurrentAction == §;j§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§8!K§ = param1;
            this.§0!X§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;j§)
         {
            this.§?!G§(§=!@§);
            if(param1 > 0)
            {
               this.§8!K§ = param1;
            }
            _loc3_ = Math.abs(this.§8!K§ - this.§'!1§);
            if(this.§6E§ < §`m§ && _loc3_ >= §<?§ && _loc3_ >= §"u§ * this.§6E§ / 1000)
            {
               if(this.§8!K§ < this.§'!1§)
               {
                  this.§?!G§(§!!V§);
               }
               else
               {
                  this.§?!G§(§ in§);
               }
               this.§%5§ = _loc3_ / this.§6E§ * 10;
               this.§>!N§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§>!N§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §!!0§)
               {
                  this.§>!N§ = true;
               }
            }
            else if(this.§6E§ < §3k§)
            {
               this.§^F§();
               this.§%5§ = §!!0§ / (§!!0§ / 500);
               this.§>!N§ = true;
            }
            else
            {
               this.§'!N§(0);
               this.§0!;§(0);
               this.§%5§ = §!!0§ / (§!!0§ / 500);
               this.§>!N§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §^F§() : void
      {
         if(this.mCurrentAction == §!!V§)
         {
            this.§?!G§(§ in§);
         }
         else if(this.mCurrentAction == § in§)
         {
            this.§?!G§(§!!V§);
         }
         else if(this.mCurrentCameraSliderLocation >= §!!0§ / 2)
         {
            this.§?!G§(§ in§);
         }
         else if(this.mCurrentCameraSliderLocation <= §!!0§ / 2)
         {
            this.§?!G§(§!!V§);
         }
      }
      
      public function §0!;§(param1:int) : void
      {
         this.§+!a§ = param1;
         if(this.mCurrentCameraSliderLocation < §!!0§ / 2)
         {
            this.§?!G§(§ in§);
         }
         else
         {
            this.§?!G§(§!!V§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§?!G§(§ in§);
      }
      
      public function goToCastleView() : void
      {
         this.§?!G§(§!!V§);
      }
      
      public function §?!G§(param1:int) : void
      {
         this.§2!N§.x = this.§+![§;
         this.§2!N§.y = this.§0X§;
         this.§2!N§.scale = §7]§;
         this.§<y§ = §7]§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §!!0§)
         {
            return true;
         }
         if(this.mCurrentAction == §!!V§)
         {
            return true;
         }
         return false;
      }
      
      public function §>!8§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == § in§)
         {
            return true;
         }
         return false;
      }
      
      public function §5S§(param1:§]8§) : void
      {
         this.§<!=§ = param1;
         if(this.§<!=§ != null)
         {
            this.§,!0§ = new §]8§();
            this.§,!0§.x = this.§+![§;
            this.§,!0§.y = this.§0X§;
            this.§,!0§.scale = §7]§;
         }
         else
         {
            this.§+![§ = this.§,!0§.x;
            this.§0X§ = this.§,!0§.y;
            §7]§ = this.§,!0§.scale;
            this.§,!0§ = null;
         }
      }
      
      protected function §@!'§() : void
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
         var _loc3_:Number = this.§,8§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§@!V§,Math.min(this.§&!&§,_loc3_));
         if(_loc3_ != this.§,8§)
         {
            this.§,8§ = _loc3_;
            this.§@!'§();
         }
      }
      
      public function §7!9§() : Number
      {
         return (this.manualScale - this.§@!V§) / (this.§&!&§ - this.§@!V§);
      }
      
      public function §!j§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§&!&§ - this.§@!V§) + this.§@!V§;
      }
      
      public function §7!C§() : void
      {
         this.§,8§ = Math.max(this.§,8§ - 0.5,0.5);
      }
      
      public function §[-§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§,8§;
         _loc1_ += " mXcenterB2: " + this.§+![§;
         _loc1_ += " mYcenterB2: " + this.§0X§;
         _loc1_ += " mXcenterB2target: " + this.§,8§;
         _loc1_ += "\n mYcenterB2target: " + this.§,8§;
         _loc1_ += " mXcenterB2previous: " + this.§,8§;
         _loc1_ += " mYcenterB2previous: " + this.§,8§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§,8§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§,8§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§,8§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§,8§;
         _loc1_ += " mTargetScale: " + this.§,8§;
         _loc1_ += " mTargetScalePrevious: " + this.§,8§;
         _loc1_ += " mCastleCameraX: " + this.§,8§;
         _loc1_ += "\n mCastleCameraY: " + this.§,8§;
         _loc1_ += " mCastleCameraScale: " + this.§,8§;
         _loc1_ += " mBirdCameraX: " + this.§,8§;
         _loc1_ += " mBirdCameraY: " + this.§,8§;
         _loc1_ += " mBirdCameraScale: " + this.§,8§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§,8§;
         _loc1_ += " mScreenTopScroll: " + this.§,8§;
         _loc1_ += " mDragging: " + this.§,8§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§,8§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§,8§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§,8§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§,8§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§,8§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§,8§;
         _loc1_ += " mDraggingTimer: " + this.§,8§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§,8§;
         _loc1_ += " mCameraBorderRight: " + this.§,8§;
         _loc1_ += " mCameraBorderSky: " + this.§,8§;
         _loc1_ += " mCameraBorderGround: " + this.§,8§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§,8§ + "\n ");
      }
   }
}
