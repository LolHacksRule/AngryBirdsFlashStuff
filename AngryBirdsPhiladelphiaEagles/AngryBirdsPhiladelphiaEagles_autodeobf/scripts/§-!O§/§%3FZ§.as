package §-!O§
{
   import §-!&§.§3!,§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§^=§;
   import §^]§.§[z§;
   import §^]§.§]X§;
   import §`K§.§ L§;
   
   public class §?Z§
   {
      
      public static const §[d§:Number = 1.25;
      
      public static const §"5§:Number = 0.15;
      
      public static const §@!C§:Number = §#! §.§-p§ * §1r§.§[M§;
      
      public static const §&5§:Number = §#! §.§5!9§ * §1r§.§[M§;
      
      public static const §;!;§:Number = 0.1;
      
      public static const § ]§:int = 1500;
      
      public static const §%!A§:int = 10;
      
      public static const §'a§:int = 15;
      
      public static const §8+§:int = 300;
      
      public static const §,!=§:int = 1000;
      
      public static const §+!O§:int = 10000;
      
      public static const §2P§:int = §+!O§ / 50;
      
      public static const §@s§:int = 0;
      
      public static const §3!-§:int = 1;
      
      public static const §4X§:int = 2;
      
      public static const §2N§:int = 3;
      
      public static const §[D§:int = 4;
      
      public static const §2L§:int = 5;
      
      public static const §`"§:String = "CASTLE";
      
      public static const §2d§:String = "SLINGSHOT";
      
      protected static var §3L§:Number;
      
      public static var §#!#§:Number;
      
      public static var §+^§:Number;
      
      public static const §=!%§:Number = 2000;
       
      
      private var §"V§:Number = 1.0;
      
      private var §2!N§:Number = 0.2;
      
      protected var §@3§:Number;
      
      protected var §&!'§:Number;
      
      protected var §&q§:Number;
      
      public var §;§:§1r§;
      
      public var §6=§:Number;
      
      public var §"!'§:Number;
      
      private var §"S§:§@H§;
      
      private var §1U§:§@H§;
      
      public var §`!6§:Number;
      
      public var §'!9§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §]2§:Number;
      
      public var §-,§:Number;
      
      public var §"R§:Number;
      
      public var §-!N§:Number;
      
      private var §2c§:Number;
      
      private var §'-§:§]P§;
      
      private var §,B§:§]P§;
      
      protected var §=!F§:Number = 0;
      
      protected var §]e§:Number = 0;
      
      protected var §2!K§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §+!'§:Number = 0;
      
      public var §-;§:Boolean = true;
      
      public var §@E§:Number = 0;
      
      public var §<!1§:Number = 0;
      
      public var §'p§:Number = 0;
      
      public var §[-§:Number = 0;
      
      public var §#y§:Number = 0;
      
      public var §@!K§:Number = 0;
      
      public var §!!3§:Number = 0;
      
      public var §>^§:Number = 0;
      
      public var §%o§:Number = 0;
      
      private var §+!D§:§]P§;
      
      public var §=!M§:Number = 0;
      
      private var §`d§:Number = 0;
      
      private var §#!;§:Number = 0;
      
      private var §5+§:§]X§ = null;
      
      private var §5k§:§]X§ = null;
      
      public function §?Z§(param1:§1r§, param2:§[z§, param3:Number = 1.0)
      {
         this.§+!D§ = new §]P§(0,0,1,false);
         super();
         this.§&!'§ = 0;
         this.§&q§ = 0;
         this.§;§ = param1;
         §?Z§.§3L§ = 1;
         this.§"V§ = Math.max(1,Math.min(2,param3));
         this.§@3§ = this.§"V§;
         this.§6b§(param2);
         if(this.§"S§ && this.§1U§)
         {
            this.§0^§();
            this.§=!F§ = this.§"S§.x - this.§1U§.x;
            this.§]e§ = this.§"S§.y - this.§1U§.y;
            this.§2!K§ = this.§"S§.scale - this.§1U§.scale;
            this.§&!'§ = this.§"S§.x;
            this.§&q§ = this.§"S§.y;
            §3L§ = this.§"S§.scale * this.§@3§;
         }
         this.mCurrentCameraSliderLocation = §+!O§;
         this.§-;§ = true;
         this.§+!'§ = §+!O§ / 500;
      }
      
      private static function § !Q§() : Number
      {
         var _loc1_:Number = §#! §.§3M§ / §#! §.§+!E§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get levelScale() : Number
      {
         return §3L§ * § !Q§();
      }
      
      public function get §%L§() : Number
      {
         return this.§@3§;
      }
      
      public function set §%L§(param1:Number) : void
      {
         this.§@3§ = param1;
      }
      
      public function get §;[§() : Number
      {
         return this.§2c§;
      }
      
      public function §>y§() : Number
      {
         return §@!C§ / (this.§-,§ - this.§]2§);
      }
      
      public function get §#K§() : Number
      {
         return this.§"V§;
      }
      
      public function get §9!L§() : Number
      {
         return this.§2!N§;
      }
      
      public function §[!Q§(param1:Number) : void
      {
         this.§@3§ = param1;
         this.§^u§();
         this.§ !"§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §2L§)
         {
            return;
         }
         this.goToCastleView();
         this.§@E§ = 2000;
         this.adjustLevelMainViewAccordingToScale();
         this.§";§();
         this.§,@§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§&!'§ = this.§1U§.x;
         this.§&q§ = this.§1U§.y;
         this.§-;§ = false;
         this.§+!'§ = §+!O§ / 160000 * param1;
         this.§#!'§(§2L§);
      }
      
      public function §0^§() : void
      {
         this.§]2§ = this.§1U§.x - §@!C§ / this.§1U§.scale / 2;
         this.§-,§ = this.§"S§.x + §@!C§ / this.§"S§.scale / 2;
         this.§"R§ = this.§;§.§9!>§.§^!O§ - 20 * §1r§.§=w§ * §1r§.§[M§;
         this.§-!N§ = this.§;§.§9!>§.§^!O§ + 4;
         var _loc1_:Number = §@!C§ / (this.§-,§ - this.§]2§);
         this.§2c§ = this.§-!N§ - §&5§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§;§ = null;
      }
      
      public function §6b§(param1:§[z§) : void
      {
         var _loc3_:§]X§ = null;
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
         while(_loc2_ < param1.§9!N§)
         {
            _loc3_ = param1.§>d§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§&!;§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §&5§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(§@!C§ / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §2d§)
            {
               this.§1U§ = new §@H§(_loc9_,_loc10_,_loc13_,true);
               this.§,B§ = new §]P§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §`"§)
            {
               this.§"S§ = new §@H§(_loc9_,_loc10_,_loc13_,false);
               this.§'-§ = new §]P§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               § L§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §1N§(param1:§[z§) : void
      {
         var _loc2_:§]X§ = new §]X§();
         _loc2_.id = §2d§;
         _loc2_.x = this.§1U§.x;
         _loc2_.y = this.§1U§.y;
         var _loc3_:Number = §@!C§ / this.§1U§.scale / 2;
         var _loc4_:Number = §&5§ / this.§1U§.scale / 2;
         _loc2_.left = this.§1U§.x - _loc3_;
         _loc2_.right = this.§1U§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§]X§;
         (_loc5_ = new §]X§()).id = §`"§;
         _loc5_.x = this.§"S§.x;
         _loc5_.y = this.§"S§.y;
         var _loc6_:Number = §@!C§ / this.§"S§.scale / 2;
         var _loc7_:Number = §&5§ / this.§"S§.scale / 2;
         _loc5_.left = this.§"S§.x - _loc6_;
         _loc5_.right = this.§"S§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§,]§();
         param1.§-!L§(_loc2_);
         param1.§-!L§(_loc5_);
      }
      
      public function §&!;§(param1:§]X§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §#! §.§-p§ * 0.5 / _loc2_ * §1r§.§[M§;
         var _loc4_:Number = param1.y - §#! §.§5!9§ * 0.5 / _loc2_ * §1r§.§[M§;
         var _loc5_:Number = _loc3_ + §#! §.§-p§ / _loc2_ * §1r§.§[M§;
         var _loc6_:Number = _loc4_ + §#! §.§5!9§ / _loc2_ * §1r§.§[M§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §"!?§(param1:§@H§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§+!'§;
         if(_loc3_ >= §+!O§)
         {
            _loc3_ = §+!O§;
            this.§#!'§(§@s§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§#!'§(§@s§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §>l§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§+!'§;
         var _loc4_:Number = -§+!O§ * 0.7;
         if(_loc2_ >= §+!O§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §+!O§;
            }
            this.§+!'§ = -this.§+!'§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function § z§(param1:Number) : void
      {
         if(this.mCurrentAction == §2L§)
         {
            this.§>l§(param1);
         }
         else if(this.mCurrentAction == §3!-§)
         {
            this.§"!?§(this.§"S§,param1);
         }
         else if(this.mCurrentAction == §4X§)
         {
            this.§"!?§(this.§1U§,-param1);
         }
         else if(this.mCurrentAction == §2N§)
         {
            this.§-;§ = true;
         }
         else if(this.mCurrentAction == §[D§)
         {
            this.§5r§(param1);
         }
      }
      
      public function §8,§(param1:Number) : void
      {
         if(this.§5+§)
         {
            this.§&!'§ = this.§5+§.x;
            this.§&q§ = this.§5+§.y;
            §3L§ = §@!C§ / (this.§5+§.right - this.§5+§.left);
         }
         else
         {
            this.§^u§();
            this.§ z§(param1);
            this.§%C§(this.mCurrentCameraSliderLocation,param1);
         }
         this.adjustLevelMainViewAccordingToScale();
         this.§";§();
         this.§,@§();
      }
      
      private function §-^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§,B§.scale + (this.§'-§.scale - this.§,B§.scale) * param1;
         var _loc4_:Number = this.§,B§.x + (this.§'-§.x - this.§,B§.x) * param1;
         var _loc5_:Number = this.§,B§.y + (this.§'-§.y - this.§,B§.y) * param1;
         this.§+!D§.x -= (this.§+!D§.x - _loc4_) * param2;
         this.§+!D§.y -= (this.§+!D§.y - _loc5_) * param2;
         this.§+!D§.scale -= (this.§+!D§.scale - _loc3_) * param2;
      }
      
      protected function § !"§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§=!F§ != 0)
         {
            if(!this.§-;§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §+!O§;
            this.§-^§(_loc3_,param2);
            this.§&!'§ = this.§+!D§.x;
            this.§&q§ = this.§+!D§.y;
            §3L§ = this.§+!D§.scale;
         }
      }
      
      public function §%C§(param1:Number, param2:Number) : void
      {
         var _loc5_:§3!,§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §+!O§)
         {
            this.§-;§ = true;
         }
         if(this.mCurrentAction == §2N§)
         {
            if(!this.§;§.activeObject)
            {
               this.§#!'§(§3!-§);
               this.§%o§ = §,!=§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§;§.activeObject).§`%§().GetPosition().x + (!!_loc5_.§2q§ ? _loc5_.§2q§ * §1r§.§[M§ : 0);
               _loc7_ = _loc5_.§`%§().GetPosition().y + (!!_loc5_.§2m§ ? _loc5_.§2m§ * §1r§.§[M§ : 0);
               if((_loc8_ = _loc5_.§`%§().GetLinearVelocity().x) > 0 && this.§=!F§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§=!F§ * §+!O§;
               }
               if(param1 >= §+!O§)
               {
                  param1 = §+!O§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §+!O§;
               this.§-^§(_loc9_,_loc4_);
               _loc10_ = this.§+!D§.x - §@!C§ * 0.5 / this.§+!D§.scale;
               _loc11_ = this.§+!D§.y - §&5§ * 0.5 / this.§+!D§.scale;
               _loc12_ = this.§+!D§.x + §@!C§ * 0.5 / this.§+!D§.scale;
               _loc13_ = this.§+!D§.y + §&5§ * 0.5 / this.§+!D§.scale;
               _loc14_ = 150 * §1r§.§[M§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§]2§,_loc15_);
               _loc17_ = Math.min(this.§-,§,_loc17_);
               _loc19_ = Math.abs(§@!C§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§&5§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§+!D§.scale)
               {
                  _loc21_ = this.§+!D§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §@!C§ * 0.5 / _loc21_ > this.§-,§)
               {
                  _loc15_ = (_loc17_ = this.§-,§) - §@!C§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§]2§)
                  {
                     _loc15_ = this.§]2§;
                  }
               }
               if(_loc22_ - §@!C§ * 0.5 / _loc21_ < this.§]2§)
               {
                  _loc17_ = (_loc15_ = this.§]2§) + §@!C§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§-,§)
                  {
                     _loc17_ = this.§-,§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§@!C§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §@!C§ * 0.5 / _loc21_ < this.§"R§)
               {
                  _loc23_ = this.§"R§ + §@!C§ * 0.5 / _loc21_;
               }
               this.§&!'§ -= (this.§&!'§ - _loc22_) * _loc4_;
               this.§=!M§ -= (this.§=!M§ - _loc21_) * _loc4_;
               §3L§ = this.§=!M§;
               this.§&q§ -= (this.§&q§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§-,§ || _loc6_ <= this.§]2§)
               {
                  this.§+!D§.scale = §3L§;
                  this.§+!D§.x = this.§&!'§;
                  this.§+!D§.y = this.§&q§;
               }
            }
         }
         else
         {
            this.§ !"§(param1,_loc4_);
         }
      }
      
      public function §22§(param1:Number, param2:Number) : void
      {
         this.§`d§ = param1;
         this.§#!;§ = param2;
      }
      
      private function §+!4§(param1:§]P§, param2:§@H§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §"5§ + (param2.scale - §"5§) * this.§@3§ * §?Z§.§ !Q§();
         if(§@!C§ / param1.scale > this.§-,§ - this.§]2§)
         {
            _loc3_ = §@!C§ / (this.§-,§ - this.§]2§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@!#§(param1:§]P§, param2:§@H§) : Boolean
      {
         var _loc3_:Boolean = this.§+!4§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §&5§ * 0.5 / param1.scale;
         var _loc5_:Number = §&5§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §@!C§ * 0.5 / param1.scale) < this.§]2§ && param1.§?!I§)
         {
            param1.x += this.§]2§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §@!C§ * 0.5 / param1.scale) > this.§-,§ && !param1.§?!I§)
         {
            param1.x += this.§-,§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §<V§(param1:§]P§, param2:§@H§) : Number
      {
         return (param1.scale - §"5§) / (§?Z§.§ !Q§() * (param2.scale - §"5§));
      }
      
      protected function §^u§() : void
      {
         this.§@!#§(this.§,B§,this.§1U§);
         var _loc1_:Number = this.§<V§(this.§,B§,this.§1U§);
         this.§@!#§(this.§'-§,this.§"S§);
         var _loc2_:Number = this.§<V§(this.§'-§,this.§"S§);
         this.§@3§ = Math.min(_loc1_,_loc2_);
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         if(this.§;§.sprite)
         {
            _loc1_ = §#! §.§ v§() / §#! §.§3M§ - §#! §.§5!9§ >> 1;
            §#!#§ = this.§;§.sprite.x = §1r§.§'6§ * ((1 - §?Z§.levelScale) / 2);
            §+^§ = this.§;§.sprite.y = _loc1_ + §1r§.§=w§ * (1 - §?Z§.levelScale) * §^=§.§9s§;
         }
      }
      
      public function §,@§() : void
      {
         if(this.§;§.sprite)
         {
            this.§;§.sprite.scaleX = levelScale;
            this.§;§.sprite.scaleY = levelScale;
         }
      }
      
      public function §";§() : void
      {
         var _loc1_:Number = this.§&!'§ / §1r§.§[M§ + this.§`d§;
         var _loc2_:Number = this.§&q§ / §1r§.§[M§ + this.§#!;§;
         this.§`!6§ = _loc1_ - §1r§.§'6§ / 2 * §#! §.§3M§ / §#! §.§+!&§;
         this.§'!9§ = _loc2_ - §1r§.§=w§ / 2 + §^=§.§44§;
         if(this.§;§.background)
         {
            this.§;§.background.§<E§(this.§`!6§,this.§'!9§);
         }
         if(this.§;§.objects)
         {
            this.§;§.objects.§<E§(this.§`!6§,this.§'!9§);
         }
         if(this.§;§.§-!H§)
         {
            this.§;§.§-!H§.§<E§(this.§`!6§,this.§'!9§,levelScale);
         }
         if(this.§;§.slingshot)
         {
            this.§;§.slingshot.§<E§(this.§`!6§,this.§'!9§);
         }
         if(this.§;§.particles)
         {
            this.§;§.particles.§<E§(this.§`!6§,this.§'!9§);
         }
      }
      
      protected function §8! §() : void
      {
         this.§#!'§(§[D§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§%o§ = -1;
         this.§8! §();
         this.§#y§ = this.§!!3§ = this.§'p§ = param1;
         this.§@!K§ = this.§>^§ = this.§[-§ = param2;
         this.§<!1§ = 0;
         this.§+!D§.x = this.§&!'§;
         this.§+!D§.y = this.§&q§;
         this.§+!D§.scale = §3L§;
         this.§=!M§ = §3L§;
         if(Math.abs(this.§'-§.x - this.§,B§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§&!'§ - this.§,B§.x) / (this.§'-§.x - this.§,B§.x) * §+!O§;
         }
         this.mDragging = true;
      }
      
      public function §5r§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§<!1§ += param1;
         var _loc3_:Number = this.§#y§ - this.§!!3§;
         if(this.§=!F§ > 0)
         {
            _loc2_ -= _loc3_ * §1r§.§[M§ / levelScale / this.§=!F§ * §+!O§;
            this.§-;§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§-;§ = true;
            }
            if(_loc2_ > §+!O§)
            {
               _loc2_ += (§+!O§ - _loc2_) * 0.3;
               this.§-;§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§!!3§ = this.§#y§;
      }
      
      protected function §%X§() : Boolean
      {
         return this.mCurrentAction == §[D§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§#y§ = param1;
            this.§@!K§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §[D§)
         {
            this.§#!'§(§@s§);
            if(param1 > 0)
            {
               this.§#y§ = param1;
            }
            _loc3_ = Math.abs(this.§#y§ - this.§'p§);
            if(this.§<!1§ < § ]§ && _loc3_ >= §%!A§ && _loc3_ >= §'a§ * this.§<!1§ / 1000)
            {
               if(this.§#y§ < this.§'p§)
               {
                  this.§#!'§(§3!-§);
               }
               else
               {
                  this.§#!'§(§4X§);
               }
               this.§+!'§ = _loc3_ / this.§<!1§ * 10;
               this.§-;§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§-;§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §+!O§)
               {
                  this.§-;§ = true;
               }
            }
            else if(this.§<!1§ < §8+§)
            {
               this.§1!7§();
               this.§+!'§ = §+!O§ / (§+!O§ / 500);
               this.§-;§ = true;
            }
            else
            {
               this.§5r§(0);
               this.§@§(0);
               this.§+!'§ = §+!O§ / (§+!O§ / 500);
               this.§-;§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §1!7§() : void
      {
         if(this.mCurrentAction == §3!-§)
         {
            this.§#!'§(§4X§);
         }
         else if(this.mCurrentAction == §4X§)
         {
            this.§#!'§(§3!-§);
         }
         else if(this.mCurrentCameraSliderLocation >= §+!O§ / 2)
         {
            this.§#!'§(§4X§);
         }
         else if(this.mCurrentCameraSliderLocation <= §+!O§ / 2)
         {
            this.§#!'§(§3!-§);
         }
      }
      
      public function §@§(param1:int) : void
      {
         this.§%o§ = param1;
         if(this.mCurrentCameraSliderLocation < §+!O§ / 2)
         {
            this.§#!'§(§4X§);
         }
         else
         {
            this.§#!'§(§3!-§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§#!'§(§4X§);
      }
      
      public function goToCastleView() : void
      {
         this.§#!'§(§3!-§);
      }
      
      public function §#!'§(param1:int) : void
      {
         this.§+!D§.x = this.§&!'§;
         this.§+!D§.y = this.§&q§;
         this.§+!D§.scale = §3L§;
         this.§=!M§ = §3L§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §+!O§)
         {
            return true;
         }
         if(this.mCurrentAction == §3!-§)
         {
            return true;
         }
         return false;
      }
      
      public function §=! §(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §4X§)
         {
            return true;
         }
         return false;
      }
      
      public function §[y§(param1:§]X§) : void
      {
         this.§5+§ = param1;
         if(this.§5+§ != null)
         {
            this.§5k§ = new §]X§();
            this.§5k§.x = this.§&!'§;
            this.§5k§.y = this.§&q§;
            this.§5k§.scale = §3L§;
         }
         else
         {
            this.§&!'§ = this.§5k§.x;
            this.§&q§ = this.§5k§.y;
            §3L§ = this.§5k§.scale;
            this.§5k§ = null;
         }
      }
      
      protected function §9!+§() : void
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
         var _loc3_:Number = this.§@3§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§9!L§,Math.min(this.§#K§,_loc3_));
         if(_loc3_ != this.§@3§)
         {
            this.§@3§ = _loc3_;
            this.§9!+§();
         }
      }
      
      public function §4_§() : Number
      {
         return (this.§%L§ - this.§9!L§) / (this.§#K§ - this.§9!L§);
      }
      
      public function §-+§(param1:Number) : void
      {
         this.§%L§ = Math.min(Math.max(param1,0),1) * (this.§#K§ - this.§9!L§) + this.§9!L§;
      }
      
      public function §2#§() : void
      {
         this.§@3§ = Math.max(this.§@3§ - 0.5,0.5);
      }
      
      public function §!P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§@3§;
         _loc1_ += " mXcenterB2: " + this.§&!'§;
         _loc1_ += " mYcenterB2: " + this.§&q§;
         _loc1_ += " mXcenterB2target: " + this.§@3§;
         _loc1_ += "\n mYcenterB2target: " + this.§@3§;
         _loc1_ += " mXcenterB2previous: " + this.§@3§;
         _loc1_ += " mYcenterB2previous: " + this.§@3§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§@3§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§@3§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§@3§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§@3§;
         _loc1_ += " mTargetScale: " + this.§@3§;
         _loc1_ += " mTargetScalePrevious: " + this.§@3§;
         _loc1_ += " mCastleCameraX: " + this.§@3§;
         _loc1_ += "\n mCastleCameraY: " + this.§@3§;
         _loc1_ += " mCastleCameraScale: " + this.§@3§;
         _loc1_ += " mBirdCameraX: " + this.§@3§;
         _loc1_ += " mBirdCameraY: " + this.§@3§;
         _loc1_ += " mBirdCameraScale: " + this.§@3§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§@3§;
         _loc1_ += " mScreenTopScroll: " + this.§@3§;
         _loc1_ += " mDragging: " + this.§@3§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§@3§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§@3§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§@3§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§@3§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§@3§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§@3§;
         _loc1_ += " mDraggingTimer: " + this.§@3§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§@3§;
         _loc1_ += " mCameraBorderRight: " + this.§@3§;
         _loc1_ += " mCameraBorderSky: " + this.§@3§;
         _loc1_ += " mCameraBorderGround: " + this.§@3§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§@3§ + "\n ");
      }
   }
}
