package §+6§
{
   import §#!1§.§4!,§;
   import §-!C§.§3!H§;
   import §-!C§.§;]§;
   import §3v§.§1a§;
   import §>%§.§]3§;
   import §`i§.§2W§;
   import §`i§.§33§;
   
   public class §4j§
   {
      
      public static const §7I§:Number = 1.25;
      
      public static const §'Z§:Number = 0.15;
      
      public static const §!!A§:Number = §]3§.§1!D§ * §2W§.§0;§;
      
      public static const §%J§:Number = §]3§.§#A§ * §2W§.§0;§;
      
      public static const §]t§:Number = 0.1;
      
      public static const §]T§:int = 1500;
      
      public static const §7U§:int = 10;
      
      public static const §%!1§:int = 15;
      
      public static const §0Q§:int = 300;
      
      public static const §'w§:int = 1000;
      
      public static const §4w§:int = 10000;
      
      public static const §16§:int = §4w§ / 50;
      
      public static const §3!&§:int = 0;
      
      public static const §7q§:int = 1;
      
      public static const §1Z§:int = 2;
      
      public static const § use§:int = 3;
      
      public static const §]B§:int = 4;
      
      public static const §`=§:int = 5;
      
      public static const §?!!§:String = "CASTLE";
      
      public static const §6!§:String = "SLINGSHOT";
      
      protected static var §%-§:Number;
      
      public static var §#5§:Number;
      
      public static var §&w§:Number;
      
      public static const §9,§:Number = 2000;
       
      
      private var §=!7§:Number = 1.0;
      
      private var §]d§:Number = 0.2;
      
      protected var §2x§:Number;
      
      protected var §'e§:Number;
      
      protected var §[!?§:Number;
      
      public var §"8§:§2W§;
      
      public var §1!B§:Number;
      
      public var §[!8§:Number;
      
      private var §=a§:§5d§;
      
      private var §7!4§:§5d§;
      
      public var §[x§:Number;
      
      public var §7!>§:Number;
      
      public var mDragging:Boolean = false;
      
      public var § !A§:Number;
      
      public var §'S§:Number;
      
      public var §#x§:Number;
      
      public var §^2§:Number;
      
      private var §^!F§:Number;
      
      private var §-F§:§7!1§;
      
      private var §-!,§:§7!1§;
      
      protected var §!!&§:Number = 0;
      
      protected var §;t§:Number = 0;
      
      protected var §=s§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1I§:Number = 0;
      
      public var §#!I§:Boolean = true;
      
      public var §%P§:Number = 0;
      
      public var §,!?§:Number = 0;
      
      public var §0G§:Number = 0;
      
      public var §2J§:Number = 0;
      
      public var §#X§:Number = 0;
      
      public var §=<§:Number = 0;
      
      public var §>!3§:Number = 0;
      
      public var §==§:Number = 0;
      
      public var §=!+§:Number = 0;
      
      private var §-h§:§7!1§;
      
      public var §#>§:Number = 0;
      
      private var §;!G§:Number = 0;
      
      private var §]!@§:Number = 0;
      
      private var §84§:§;]§ = null;
      
      private var §5C§:§;]§ = null;
      
      public function §4j§(param1:§2W§, param2:§3!H§, param3:Number = 1.0)
      {
         this.§-h§ = new §7!1§(0,0,1,false);
         super();
         this.§'e§ = 0;
         this.§[!?§ = 0;
         this.§"8§ = param1;
         §4j§.§%-§ = 1;
         this.§=!7§ = Math.max(1,Math.min(2,param3));
         this.§2x§ = this.§=!7§;
         this.§7T§(param2);
         if(this.§=a§ && this.§7!4§)
         {
            this.§9!=§();
            this.§!!&§ = this.§=a§.x - this.§7!4§.x;
            this.§;t§ = this.§=a§.y - this.§7!4§.y;
            this.§=s§ = this.§=a§.scale - this.§7!4§.scale;
            this.§'e§ = this.§=a§.x;
            this.§[!?§ = this.§=a§.y;
            §%-§ = this.§=a§.scale * this.§2x§;
         }
         this.mCurrentCameraSliderLocation = §4w§;
         this.§#!I§ = true;
         this.§1I§ = §4w§ / 500;
      }
      
      private static function §&2§() : Number
      {
         var _loc1_:Number = §]3§.§3=§ / §]3§.§>F§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §`@§() : Number
      {
         return §%-§ * §&2§();
      }
      
      public function get §9m§() : Number
      {
         return this.§2x§;
      }
      
      public function set §9m§(param1:Number) : void
      {
         this.§2x§ = param1;
      }
      
      public function get §"w§() : Number
      {
         return this.§^!F§;
      }
      
      public function §8i§() : Number
      {
         return §!!A§ / (this.§'S§ - this.§ !A§);
      }
      
      public function get §7!-§() : Number
      {
         return this.§=!7§;
      }
      
      public function get §;F§() : Number
      {
         return this.§]d§;
      }
      
      public function §]N§(param1:Number) : void
      {
         this.§2x§ = param1;
         this.§`m§();
         this.§;x§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §`=§)
         {
            return;
         }
         this.goToCastleView();
         this.§%P§ = 2000;
         this.§?! §();
         this.§'m§();
         this.§@!D§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§'e§ = this.§7!4§.x;
         this.§[!?§ = this.§7!4§.y;
         this.§#!I§ = false;
         this.§1I§ = §4w§ / 160000 * param1;
         this.§^V§(§`=§);
      }
      
      public function §9!=§() : void
      {
         this.§ !A§ = this.§7!4§.x - §!!A§ / this.§7!4§.scale / 2;
         this.§'S§ = this.§=a§.x + §!!A§ / this.§=a§.scale / 2;
         this.§#x§ = this.§"8§.§&x§.§2B§ - 20 * §2W§.§##§ * §2W§.§0;§;
         this.§^2§ = this.§"8§.§&x§.§2B§ + 4;
         var _loc1_:Number = §!!A§ / (this.§'S§ - this.§ !A§);
         this.§^!F§ = this.§^2§ - §%J§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§"8§ = null;
      }
      
      public function §7T§(param1:§3!H§) : void
      {
         var _loc3_:§;]§ = null;
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
         while(_loc2_ < param1.§28§)
         {
            _loc3_ = param1.§@L§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§8J§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §%J§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §!!A§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §6!§)
            {
               this.§7!4§ = new §5d§(_loc9_,_loc10_,_loc13_,true);
               this.§-!,§ = new §7!1§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §?!!§)
            {
               this.§=a§ = new §5d§(_loc9_,_loc10_,_loc13_,false);
               this.§-F§ = new §7!1§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §1a§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §3R§(param1:§3!H§) : void
      {
         var _loc2_:§;]§ = new §;]§();
         _loc2_.id = §6!§;
         _loc2_.x = this.§7!4§.x;
         _loc2_.y = this.§7!4§.y;
         var _loc3_:Number = §!!A§ / this.§7!4§.scale / 2;
         var _loc4_:Number = §%J§ / this.§7!4§.scale / 2;
         _loc2_.left = this.§7!4§.x - _loc3_;
         _loc2_.right = this.§7!4§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§;]§;
         (_loc5_ = new §;]§()).id = §?!!§;
         _loc5_.x = this.§=a§.x;
         _loc5_.y = this.§=a§.y;
         var _loc6_:Number = §!!A§ / this.§=a§.scale / 2;
         var _loc7_:Number = §%J§ / this.§=a§.scale / 2;
         _loc5_.left = this.§=a§.x - _loc6_;
         _loc5_.right = this.§=a§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§<S§();
         param1.§7x§(_loc2_);
         param1.§7x§(_loc5_);
      }
      
      public function §8J§(param1:§;]§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §]3§.§1!D§ * 0.5 / _loc2_ * §2W§.§0;§;
         var _loc4_:Number = param1.y - §]3§.§#A§ * 0.5 / _loc2_ * §2W§.§0;§;
         var _loc5_:Number = _loc3_ + §]3§.§1!D§ / _loc2_ * §2W§.§0;§;
         var _loc6_:Number = _loc4_ + §]3§.§#A§ / _loc2_ * §2W§.§0;§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §5!6§(param1:§5d§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1I§;
         if(_loc3_ >= §4w§)
         {
            _loc3_ = §4w§;
            this.§^V§(§3!&§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§^V§(§3!&§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §+_§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1I§;
         var _loc4_:Number = -§4w§ * 0.7;
         if(_loc2_ >= §4w§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §4w§;
            }
            this.§1I§ = -this.§1I§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §-w§(param1:Number) : void
      {
         if(this.mCurrentAction == §`=§)
         {
            this.§+_§(param1);
         }
         else if(this.mCurrentAction == §7q§)
         {
            this.§5!6§(this.§=a§,param1);
         }
         else if(this.mCurrentAction == §1Z§)
         {
            this.§5!6§(this.§7!4§,-param1);
         }
         else if(this.mCurrentAction == § use§)
         {
            this.§#!I§ = true;
         }
         else if(this.mCurrentAction == §]B§)
         {
            this.§@`§(param1);
         }
      }
      
      public function §58§(param1:Number) : void
      {
         if(this.§84§)
         {
            this.§'e§ = this.§84§.x;
            this.§[!?§ = this.§84§.y;
            §%-§ = §!!A§ / (this.§84§.right - this.§84§.left);
         }
         else
         {
            this.§`m§();
            this.§-w§(param1);
            this.§>!8§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?! §();
         this.§'m§();
         this.§@!D§();
      }
      
      private function §"!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§-!,§.scale + (this.§-F§.scale - this.§-!,§.scale) * param1;
         var _loc4_:Number = this.§-!,§.x + (this.§-F§.x - this.§-!,§.x) * param1;
         var _loc5_:Number = this.§-!,§.y + (this.§-F§.y - this.§-!,§.y) * param1;
         this.§-h§.x -= (this.§-h§.x - _loc4_) * param2;
         this.§-h§.y -= (this.§-h§.y - _loc5_) * param2;
         this.§-h§.scale -= (this.§-h§.scale - _loc3_) * param2;
      }
      
      protected function §;x§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!!&§ != 0)
         {
            if(!this.§#!I§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §4w§;
            this.§"!2§(_loc3_,param2);
            this.§'e§ = this.§-h§.x;
            this.§[!?§ = this.§-h§.y;
            §%-§ = this.§-h§.scale;
         }
      }
      
      public function §>!8§(param1:Number, param2:Number) : void
      {
         var _loc5_:§4!,§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §4w§)
         {
            this.§#!I§ = true;
         }
         if(this.mCurrentAction == § use§)
         {
            if(!this.§"8§.activeObject)
            {
               this.§^V§(§7q§);
               this.§=!+§ = §'w§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§"8§.activeObject).§!v§().GetPosition().x + (!!_loc5_.§%M§ ? _loc5_.§%M§ * §2W§.§0;§ : 0);
               _loc7_ = _loc5_.§!v§().GetPosition().y + (!!_loc5_.§-8§ ? _loc5_.§-8§ * §2W§.§0;§ : 0);
               if((_loc8_ = _loc5_.§!v§().GetLinearVelocity().x) > 0 && this.§!!&§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§!!&§ * §4w§;
               }
               if(param1 >= §4w§)
               {
                  param1 = §4w§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §4w§;
               this.§"!2§(_loc9_,_loc4_);
               _loc10_ = this.§-h§.x - §!!A§ * 0.5 / this.§-h§.scale;
               _loc11_ = this.§-h§.y - §%J§ * 0.5 / this.§-h§.scale;
               _loc12_ = this.§-h§.x + §!!A§ * 0.5 / this.§-h§.scale;
               _loc13_ = this.§-h§.y + §%J§ * 0.5 / this.§-h§.scale;
               _loc14_ = 150 * §2W§.§0;§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§ !A§,_loc15_);
               _loc17_ = Math.min(this.§'S§,_loc17_);
               _loc19_ = Math.abs(§!!A§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§%J§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§-h§.scale)
               {
                  _loc21_ = this.§-h§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §!!A§ * 0.5 / _loc21_ > this.§'S§)
               {
                  _loc15_ = (_loc17_ = this.§'S§) - §!!A§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§ !A§)
                  {
                     _loc15_ = this.§ !A§;
                  }
               }
               if(_loc22_ - §!!A§ * 0.5 / _loc21_ < this.§ !A§)
               {
                  _loc17_ = (_loc15_ = this.§ !A§) + §!!A§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§'S§)
                  {
                     _loc17_ = this.§'S§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§!!A§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §!!A§ * 0.5 / _loc21_ < this.§#x§)
               {
                  _loc23_ = this.§#x§ + §!!A§ * 0.5 / _loc21_;
               }
               this.§'e§ -= (this.§'e§ - _loc22_) * _loc4_;
               this.§#>§ -= (this.§#>§ - _loc21_) * _loc4_;
               §%-§ = this.§#>§;
               this.§[!?§ -= (this.§[!?§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§'S§ || _loc6_ <= this.§ !A§)
               {
                  this.§-h§.scale = §%-§;
                  this.§-h§.x = this.§'e§;
                  this.§-h§.y = this.§[!?§;
               }
            }
         }
         else
         {
            this.§;x§(param1,_loc4_);
         }
      }
      
      public function §-!&§(param1:Number, param2:Number) : void
      {
         this.§;!G§ = param1;
         this.§]!@§ = param2;
      }
      
      private function §@7§(param1:§7!1§, param2:§5d§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §'Z§ + (param2.scale - §'Z§) * this.§2x§ * §4j§.§&2§();
         if(§!!A§ / param1.scale > this.§'S§ - this.§ !A§)
         {
            _loc3_ = §!!A§ / (this.§'S§ - this.§ !A§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §#h§(param1:§7!1§, param2:§5d§) : Boolean
      {
         var _loc3_:Boolean = this.§@7§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §%J§ * 0.5 / param1.scale;
         var _loc5_:Number = §%J§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §!!A§ * 0.5 / param1.scale) < this.§ !A§ && param1.§7g§)
         {
            param1.x += this.§ !A§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §!!A§ * 0.5 / param1.scale) > this.§'S§ && !param1.§7g§)
         {
            param1.x += this.§'S§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §?<§(param1:§7!1§, param2:§5d§) : Number
      {
         return (param1.scale - §'Z§) / (§4j§.§&2§() * (param2.scale - §'Z§));
      }
      
      protected function §`m§() : void
      {
         this.§#h§(this.§-!,§,this.§7!4§);
         var _loc1_:Number = this.§?<§(this.§-!,§,this.§7!4§);
         this.§#h§(this.§-F§,this.§=a§);
         var _loc2_:Number = this.§?<§(this.§-F§,this.§=a§);
         this.§2x§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §?! §() : void
      {
         var _loc1_:Number = NaN;
         if(this.§"8§.sprite)
         {
            _loc1_ = §]3§.§]!-§() / §]3§.§3=§ - §]3§.§#A§ >> 1;
            §#5§ = this.§"8§.sprite.x = §2W§.§9^§ * ((1 - §4j§.§`@§) / 2);
            §&w§ = this.§"8§.sprite.y = _loc1_ + §2W§.§##§ * (1 - §4j§.§`@§) * §33§.§7D§;
         }
      }
      
      public function §@!D§() : void
      {
         if(this.§"8§.sprite)
         {
            this.§"8§.sprite.scaleX = §`@§;
            this.§"8§.sprite.scaleY = §`@§;
         }
      }
      
      public function §'m§() : void
      {
         var _loc1_:Number = this.§'e§ / §2W§.§0;§ + this.§;!G§;
         var _loc2_:Number = this.§[!?§ / §2W§.§0;§ + this.§]!@§;
         this.§[x§ = _loc1_ - §2W§.§9^§ / 2 * §]3§.§3=§ / §]3§.§#1§;
         this.§7!>§ = _loc2_ - §2W§.§##§ / 2 + §33§.§`!B§;
         if(this.§"8§.background)
         {
            this.§"8§.background.§3k§(this.§[x§,this.§7!>§);
         }
         if(this.§"8§.objects)
         {
            this.§"8§.objects.§3k§(this.§[x§,this.§7!>§);
         }
         if(this.§"8§.§3X§)
         {
            this.§"8§.§3X§.§3k§(this.§[x§,this.§7!>§,§`@§);
         }
         if(this.§"8§.slingshot)
         {
            this.§"8§.slingshot.§3k§(this.§[x§,this.§7!>§);
         }
         if(this.§"8§.particles)
         {
            this.§"8§.particles.§3k§(this.§[x§,this.§7!>§);
         }
      }
      
      protected function §>!,§() : void
      {
         this.§^V§(§]B§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§=!+§ = -1;
         this.§>!,§();
         this.§#X§ = this.§>!3§ = this.§0G§ = param1;
         this.§=<§ = this.§==§ = this.§2J§ = param2;
         this.§,!?§ = 0;
         this.§-h§.x = this.§'e§;
         this.§-h§.y = this.§[!?§;
         this.§-h§.scale = §%-§;
         this.§#>§ = §%-§;
         if(Math.abs(this.§-F§.x - this.§-!,§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§'e§ - this.§-!,§.x) / (this.§-F§.x - this.§-!,§.x) * §4w§;
         }
         this.mDragging = true;
      }
      
      public function §@`§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§,!?§ += param1;
         var _loc3_:Number = this.§#X§ - this.§>!3§;
         if(this.§!!&§ > 0)
         {
            _loc2_ -= _loc3_ * §2W§.§0;§ / §`@§ / this.§!!&§ * §4w§;
            this.§#!I§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§#!I§ = true;
            }
            if(_loc2_ > §4w§)
            {
               _loc2_ += (§4w§ - _loc2_) * 0.3;
               this.§#!I§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§>!3§ = this.§#X§;
      }
      
      protected function §>O§() : Boolean
      {
         return this.mCurrentAction == §]B§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§#X§ = param1;
            this.§=<§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §]B§)
         {
            this.§^V§(§3!&§);
            if(param1 > 0)
            {
               this.§#X§ = param1;
            }
            _loc3_ = Math.abs(this.§#X§ - this.§0G§);
            if(this.§,!?§ < §]T§ && _loc3_ >= §7U§ && _loc3_ >= §%!1§ * this.§,!?§ / 1000)
            {
               if(this.§#X§ < this.§0G§)
               {
                  this.§^V§(§7q§);
               }
               else
               {
                  this.§^V§(§1Z§);
               }
               this.§1I§ = _loc3_ / this.§,!?§ * 10;
               this.§#!I§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§#!I§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §4w§)
               {
                  this.§#!I§ = true;
               }
            }
            else if(this.§,!?§ < §0Q§)
            {
               this.§]!8§();
               this.§1I§ = §4w§ / (§4w§ / 500);
               this.§#!I§ = true;
            }
            else
            {
               this.§@`§(0);
               this.§[!,§(0);
               this.§1I§ = §4w§ / (§4w§ / 500);
               this.§#!I§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §]!8§() : void
      {
         if(this.mCurrentAction == §7q§)
         {
            this.§^V§(§1Z§);
         }
         else if(this.mCurrentAction == §1Z§)
         {
            this.§^V§(§7q§);
         }
         else if(this.mCurrentCameraSliderLocation >= §4w§ / 2)
         {
            this.§^V§(§1Z§);
         }
         else if(this.mCurrentCameraSliderLocation <= §4w§ / 2)
         {
            this.§^V§(§7q§);
         }
      }
      
      public function §[!,§(param1:int) : void
      {
         this.§=!+§ = param1;
         if(this.mCurrentCameraSliderLocation < §4w§ / 2)
         {
            this.§^V§(§1Z§);
         }
         else
         {
            this.§^V§(§7q§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§^V§(§1Z§);
      }
      
      public function goToCastleView() : void
      {
         this.§^V§(§7q§);
      }
      
      public function §^V§(param1:int) : void
      {
         this.§-h§.x = this.§'e§;
         this.§-h§.y = this.§[!?§;
         this.§-h§.scale = §%-§;
         this.§#>§ = §%-§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §4w§)
         {
            return true;
         }
         if(this.mCurrentAction == §7q§)
         {
            return true;
         }
         return false;
      }
      
      public function §4!!§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §1Z§)
         {
            return true;
         }
         return false;
      }
      
      public function §[s§(param1:§;]§) : void
      {
         this.§84§ = param1;
         if(this.§84§ != null)
         {
            this.§5C§ = new §;]§();
            this.§5C§.x = this.§'e§;
            this.§5C§.y = this.§[!?§;
            this.§5C§.scale = §%-§;
         }
         else
         {
            this.§'e§ = this.§5C§.x;
            this.§[!?§ = this.§5C§.y;
            §%-§ = this.§5C§.scale;
            this.§5C§ = null;
         }
      }
      
      protected function §4!+§() : void
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
         var _loc3_:Number = this.§2x§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§;F§,Math.min(this.§7!-§,_loc3_));
         if(_loc3_ != this.§2x§)
         {
            this.§2x§ = _loc3_;
            this.§4!+§();
         }
      }
      
      public function §+!3§() : Number
      {
         return (this.§9m§ - this.§;F§) / (this.§7!-§ - this.§;F§);
      }
      
      public function §7;§(param1:Number) : void
      {
         this.§9m§ = Math.min(Math.max(param1,0),1) * (this.§7!-§ - this.§;F§) + this.§;F§;
      }
      
      public function §9!B§() : void
      {
         this.§2x§ = Math.max(this.§2x§ - 0.5,0.5);
      }
      
      public function §8!&§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§2x§;
         _loc1_ += " mXcenterB2: " + this.§'e§;
         _loc1_ += " mYcenterB2: " + this.§[!?§;
         _loc1_ += " mXcenterB2target: " + this.§2x§;
         _loc1_ += "\n mYcenterB2target: " + this.§2x§;
         _loc1_ += " mXcenterB2previous: " + this.§2x§;
         _loc1_ += " mYcenterB2previous: " + this.§2x§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§2x§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§2x§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§2x§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§2x§;
         _loc1_ += " mTargetScale: " + this.§2x§;
         _loc1_ += " mTargetScalePrevious: " + this.§2x§;
         _loc1_ += " mCastleCameraX: " + this.§2x§;
         _loc1_ += "\n mCastleCameraY: " + this.§2x§;
         _loc1_ += " mCastleCameraScale: " + this.§2x§;
         _loc1_ += " mBirdCameraX: " + this.§2x§;
         _loc1_ += " mBirdCameraY: " + this.§2x§;
         _loc1_ += " mBirdCameraScale: " + this.§2x§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§2x§;
         _loc1_ += " mScreenTopScroll: " + this.§2x§;
         _loc1_ += " mDragging: " + this.§2x§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§2x§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§2x§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§2x§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§2x§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§2x§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§2x§;
         _loc1_ += " mDraggingTimer: " + this.§2x§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§2x§;
         _loc1_ += " mCameraBorderRight: " + this.§2x§;
         _loc1_ += " mCameraBorderSky: " + this.§2x§;
         _loc1_ += " mCameraBorderGround: " + this.§2x§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§2x§ + "\n ");
      }
   }
}
