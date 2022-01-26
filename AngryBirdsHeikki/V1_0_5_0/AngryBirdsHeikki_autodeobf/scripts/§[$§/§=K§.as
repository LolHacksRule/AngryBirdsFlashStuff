package §[$§
{
   import §+D§.§5!P§;
   import §+D§.§8T§;
   import §1!K§.§>!<§;
   import §3-§.§1L§;
   import §9!T§.§;!"§;
   import §=X§.§"!6§;
   import §=X§.§#!6§;
   
   public class §=K§
   {
      
      public static const §"p§:Number = 1.25;
      
      public static const §?`§:Number = 0.15;
      
      public static const §<!Q§:Number = §1L§.§6w§ * §5!P§.§>M§;
      
      public static const §=!O§:Number = §1L§.§[S§ * §5!P§.§>M§;
      
      public static const §#z§:Number = 0.1;
      
      public static const get:int = 1500;
      
      public static const §8!<§:int = 10;
      
      public static const §8q§:int = 15;
      
      public static const §=!D§:int = 300;
      
      public static const §>J§:int = 1000;
      
      public static const §+8§:int = 10000;
      
      public static const §8!J§:int = §+8§ / 50;
      
      public static const §<9§:int = 0;
      
      public static const §7!'§:int = 1;
      
      public static const §9!U§:int = 2;
      
      public static const §#!Y§:int = 3;
      
      public static const §7E§:int = 4;
      
      public static const §6!5§:int = 5;
      
      public static const §[N§:String = "CASTLE";
      
      public static const §!V§:String = "SLINGSHOT";
      
      protected static var §6I§:Number;
      
      public static var §2>§:Number;
      
      public static var §;2§:Number;
      
      public static const §>z§:Number = 2000;
       
      
      private var §?s§:Number = 1.0;
      
      private var §@7§:Number = 0.2;
      
      protected var §5A§:Number;
      
      protected var §@!U§:Number;
      
      protected var §[!]§:Number;
      
      public var §^!4§:§5!P§;
      
      public var §?!M§:Number;
      
      public var §+5§:Number;
      
      private var §-!=§:§?6§;
      
      private var §3!]§:§?6§;
      
      public var §^V§:Number;
      
      public var §?!O§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §%!8§:Number;
      
      public var §5S§:Number;
      
      public var §<0§:Number;
      
      public var §?X§:Number;
      
      private var §'!^§:Number;
      
      private var §=`§:§&!T§;
      
      private var §3Z§:§&!T§;
      
      protected var §'!Z§:Number = 0;
      
      protected var §[!S§:Number = 0;
      
      protected var §;!D§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&l§:Number = 0;
      
      public var §=V§:Boolean = true;
      
      public var §%!5§:Number = 0;
      
      public var §]!S§:Number = 0;
      
      public var §9"§:Number = 0;
      
      public var §%!c§:Number = 0;
      
      public var §8[§:Number = 0;
      
      public var §&!6§:Number = 0;
      
      public var §]!Z§:Number = 0;
      
      public var §&!?§:Number = 0;
      
      public var §`!4§:Number = 0;
      
      private var §<e§:§&!T§;
      
      public var §]!R§:Number = 0;
      
      private var §2![§:Number = 0;
      
      private var §<!2§:Number = 0;
      
      private var §`8§:§#!6§ = null;
      
      private var §^!-§:§#!6§ = null;
      
      public function §=K§(param1:§5!P§, param2:§"!6§, param3:Number = 1.0)
      {
         this.§<e§ = new §&!T§(0,0,1,false);
         super();
         this.§@!U§ = 0;
         this.§[!]§ = 0;
         this.§^!4§ = param1;
         §=K§.§6I§ = 1;
         this.§?s§ = Math.max(1,Math.min(2,param3));
         this.§5A§ = this.§?s§;
         this.§1!7§(param2);
         if(this.§-!=§ && this.§3!]§)
         {
            this.§3X§();
            this.§'!Z§ = this.§-!=§.x - this.§3!]§.x;
            this.§[!S§ = this.§-!=§.y - this.§3!]§.y;
            this.§;!D§ = this.§-!=§.scale - this.§3!]§.scale;
            this.§@!U§ = this.§-!=§.x;
            this.§[!]§ = this.§-!=§.y;
            §6I§ = this.§-!=§.scale * this.§5A§;
         }
         this.mCurrentCameraSliderLocation = §+8§;
         this.§=V§ = true;
         this.§&l§ = §+8§ / 500;
      }
      
      private static function §+T§() : Number
      {
         var _loc1_:Number = §1L§.§%v§ / §1L§.§1t§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §%-§() : Number
      {
         return §6I§ * §+T§();
      }
      
      public function get manualScale() : Number
      {
         return this.§5A§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§5A§ = param1;
      }
      
      public function get §3!F§() : Number
      {
         return this.§'!^§;
      }
      
      public function §3!D§() : Number
      {
         return §<!Q§ / (this.§5S§ - this.§%!8§);
      }
      
      public function get §?$§() : Number
      {
         return this.§?s§;
      }
      
      public function get §#!7§() : Number
      {
         return this.§@7§;
      }
      
      public function §,!#§(param1:Number) : void
      {
         this.§5A§ = param1;
         this.§0!`§();
         this.§&!B§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §6!5§)
         {
            return;
         }
         this.goToCastleView();
         this.§%!5§ = 2000;
         this.§%!E§();
         this.§6!>§();
         this.§[!B§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§@!U§ = this.§3!]§.x;
         this.§[!]§ = this.§3!]§.y;
         this.§=V§ = false;
         this.§&l§ = §+8§ / 160000 * param1;
         this.§ !Z§(§6!5§);
      }
      
      public function §3X§() : void
      {
         this.§%!8§ = this.§3!]§.x - §<!Q§ / this.§3!]§.scale / 2;
         this.§5S§ = this.§-!=§.x + §<!Q§ / this.§-!=§.scale / 2;
         this.§<0§ = this.§^!4§.§0r§.§6E§ - 20 * §5!P§.§-7§ * §5!P§.§>M§;
         this.§?X§ = this.§^!4§.§0r§.§6E§ + 4;
         var _loc1_:Number = §<!Q§ / (this.§5S§ - this.§%!8§);
         this.§'!^§ = this.§?X§ - §=!O§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§^!4§ = null;
      }
      
      public function §1!7§(param1:§"!6§) : void
      {
         var _loc3_:§#!6§ = null;
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
         while(_loc2_ < param1.§;!#§)
         {
            _loc3_ = param1.§@w§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§-9§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §=!O§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §<!Q§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §!V§)
            {
               this.§3!]§ = new §?6§(_loc9_,_loc10_,_loc13_,true);
               this.§3Z§ = new §&!T§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §[N§)
            {
               this.§-!=§ = new §?6§(_loc9_,_loc10_,_loc13_,false);
               this.§=`§ = new §&!T§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §>!<§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §!!@§(param1:§"!6§) : void
      {
         var _loc2_:§#!6§ = new §#!6§();
         _loc2_.id = §!V§;
         _loc2_.x = this.§3!]§.x;
         _loc2_.y = this.§3!]§.y;
         var _loc3_:Number = §<!Q§ / this.§3!]§.scale / 2;
         var _loc4_:Number = §=!O§ / this.§3!]§.scale / 2;
         _loc2_.left = this.§3!]§.x - _loc3_;
         _loc2_.right = this.§3!]§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§#!6§;
         (_loc5_ = new §#!6§()).id = §[N§;
         _loc5_.x = this.§-!=§.x;
         _loc5_.y = this.§-!=§.y;
         var _loc6_:Number = §<!Q§ / this.§-!=§.scale / 2;
         var _loc7_:Number = §=!O§ / this.§-!=§.scale / 2;
         _loc5_.left = this.§-!=§.x - _loc6_;
         _loc5_.right = this.§-!=§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§[G§();
         param1.§"Y§(_loc2_);
         param1.§"Y§(_loc5_);
      }
      
      public function §-9§(param1:§#!6§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §1L§.§6w§ * 0.5 / _loc2_ * §5!P§.§>M§;
         var _loc4_:Number = param1.y - §1L§.§[S§ * 0.5 / _loc2_ * §5!P§.§>M§;
         var _loc5_:Number = _loc3_ + §1L§.§6w§ / _loc2_ * §5!P§.§>M§;
         var _loc6_:Number = _loc4_ + §1L§.§[S§ / _loc2_ * §5!P§.§>M§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §+!7§(param1:§?6§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&l§;
         if(_loc3_ >= §+8§)
         {
            _loc3_ = §+8§;
            this.§ !Z§(§<9§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§ !Z§(§<9§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §;!7§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&l§;
         var _loc4_:Number = -§+8§ * 0.7;
         if(_loc2_ >= §+8§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §+8§;
            }
            this.§&l§ = -this.§&l§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §?R§(param1:Number) : void
      {
         if(this.mCurrentAction == §6!5§)
         {
            this.§;!7§(param1);
         }
         else if(this.mCurrentAction == §7!'§)
         {
            this.§+!7§(this.§-!=§,param1);
         }
         else if(this.mCurrentAction == §9!U§)
         {
            this.§+!7§(this.§3!]§,-param1);
         }
         else if(this.mCurrentAction == §#!Y§)
         {
            this.§=V§ = true;
         }
         else if(this.mCurrentAction == §7E§)
         {
            this.§23§(param1);
         }
      }
      
      public function §#!=§(param1:Number) : void
      {
         if(this.§`8§)
         {
            this.§@!U§ = this.§`8§.x;
            this.§[!]§ = this.§`8§.y;
            §6I§ = §<!Q§ / (this.§`8§.right - this.§`8§.left);
         }
         else
         {
            this.§0!`§();
            this.§?R§(param1);
            this.§?=§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§%!E§();
         this.§6!>§();
         this.§[!B§();
      }
      
      private function §3!K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§3Z§.scale + (this.§=`§.scale - this.§3Z§.scale) * param1;
         var _loc4_:Number = this.§3Z§.x + (this.§=`§.x - this.§3Z§.x) * param1;
         var _loc5_:Number = this.§3Z§.y + (this.§=`§.y - this.§3Z§.y) * param1;
         this.§<e§.x -= (this.§<e§.x - _loc4_) * param2;
         this.§<e§.y -= (this.§<e§.y - _loc5_) * param2;
         this.§<e§.scale -= (this.§<e§.scale - _loc3_) * param2;
      }
      
      protected function §&!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'!Z§ != 0)
         {
            if(!this.§=V§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §+8§;
            this.§3!K§(_loc3_,param2);
            this.§@!U§ = this.§<e§.x;
            this.§[!]§ = this.§<e§.y;
            §6I§ = this.§<e§.scale;
         }
      }
      
      public function §?=§(param1:Number, param2:Number) : void
      {
         var _loc5_:§;!"§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §+8§)
         {
            this.§=V§ = true;
         }
         if(this.mCurrentAction == §#!Y§)
         {
            if(!this.§^!4§.activeObject)
            {
               this.§ !Z§(§7!'§);
               this.§`!4§ = §>J§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§^!4§.activeObject).§<k§().GetPosition().x + (!!_loc5_.§[b§ ? _loc5_.§[b§ * §5!P§.§>M§ : 0);
               _loc7_ = _loc5_.§<k§().GetPosition().y + (!!_loc5_.§%^§ ? _loc5_.§%^§ * §5!P§.§>M§ : 0);
               if((_loc8_ = _loc5_.§<k§().GetLinearVelocity().x) > 0 && this.§'!Z§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§'!Z§ * §+8§;
               }
               if(param1 >= §+8§)
               {
                  param1 = §+8§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §+8§;
               this.§3!K§(_loc9_,_loc4_);
               _loc10_ = this.§<e§.x - §<!Q§ * 0.5 / this.§<e§.scale;
               _loc11_ = this.§<e§.y - §=!O§ * 0.5 / this.§<e§.scale;
               _loc12_ = this.§<e§.x + §<!Q§ * 0.5 / this.§<e§.scale;
               _loc13_ = this.§<e§.y + §=!O§ * 0.5 / this.§<e§.scale;
               _loc14_ = 150 * §5!P§.§>M§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§%!8§,_loc15_);
               _loc17_ = Math.min(this.§5S§,_loc17_);
               _loc19_ = Math.abs(§<!Q§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§=!O§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§<e§.scale)
               {
                  _loc21_ = this.§<e§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §<!Q§ * 0.5 / _loc21_ > this.§5S§)
               {
                  _loc15_ = (_loc17_ = this.§5S§) - §<!Q§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§%!8§)
                  {
                     _loc15_ = this.§%!8§;
                  }
               }
               if(_loc22_ - §<!Q§ * 0.5 / _loc21_ < this.§%!8§)
               {
                  _loc17_ = (_loc15_ = this.§%!8§) + §<!Q§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§5S§)
                  {
                     _loc17_ = this.§5S§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§<!Q§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §<!Q§ * 0.5 / _loc21_ < this.§<0§)
               {
                  _loc23_ = this.§<0§ + §<!Q§ * 0.5 / _loc21_;
               }
               this.§@!U§ -= (this.§@!U§ - _loc22_) * _loc4_;
               this.§]!R§ -= (this.§]!R§ - _loc21_) * _loc4_;
               §6I§ = this.§]!R§;
               this.§[!]§ -= (this.§[!]§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§5S§ || _loc6_ <= this.§%!8§)
               {
                  this.§<e§.scale = §6I§;
                  this.§<e§.x = this.§@!U§;
                  this.§<e§.y = this.§[!]§;
               }
            }
         }
         else
         {
            this.§&!B§(param1,_loc4_);
         }
      }
      
      public function §?!L§(param1:Number, param2:Number) : void
      {
         this.§2![§ = param1;
         this.§<!2§ = param2;
      }
      
      private function §!N§(param1:§&!T§, param2:§?6§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §?`§ + (param2.scale - §?`§) * this.§5A§ * §=K§.§+T§();
         if(§<!Q§ / param1.scale > this.§5S§ - this.§%!8§)
         {
            _loc3_ = §<!Q§ / (this.§5S§ - this.§%!8§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §-x§(param1:§&!T§, param2:§?6§) : Boolean
      {
         var _loc3_:Boolean = this.§!N§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §=!O§ * 0.5 / param1.scale;
         var _loc5_:Number = §=!O§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §<!Q§ * 0.5 / param1.scale) < this.§%!8§ && param1.§84§)
         {
            param1.x += this.§%!8§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §<!Q§ * 0.5 / param1.scale) > this.§5S§ && !param1.§84§)
         {
            param1.x += this.§5S§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §-?§(param1:§&!T§, param2:§?6§) : Number
      {
         return (param1.scale - §?`§) / (§=K§.§+T§() * (param2.scale - §?`§));
      }
      
      protected function §0!`§() : void
      {
         this.§-x§(this.§3Z§,this.§3!]§);
         var _loc1_:Number = this.§-?§(this.§3Z§,this.§3!]§);
         this.§-x§(this.§=`§,this.§-!=§);
         var _loc2_:Number = this.§-?§(this.§=`§,this.§-!=§);
         this.§5A§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §%!E§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§^!4§.sprite)
         {
            _loc1_ = §1L§.§<!J§() / §1L§.§%v§ - §1L§.§[S§ >> 1;
            §2>§ = this.§^!4§.sprite.x = §5!P§.§=!F§ * ((1 - §=K§.§%-§) / 2);
            §;2§ = this.§^!4§.sprite.y = _loc1_ + §5!P§.§-7§ * (1 - §=K§.§%-§) * §8T§.§4C§;
         }
      }
      
      public function §[!B§() : void
      {
         if(this.§^!4§.sprite)
         {
            this.§^!4§.sprite.scaleX = §%-§;
            this.§^!4§.sprite.scaleY = §%-§;
         }
      }
      
      public function §6!>§() : void
      {
         var _loc1_:Number = this.§@!U§ / §5!P§.§>M§ + this.§2![§;
         var _loc2_:Number = this.§[!]§ / §5!P§.§>M§ + this.§<!2§;
         this.§^V§ = _loc1_ - §5!P§.§=!F§ / 2 * §1L§.§%v§ / §1L§.§&>§;
         this.§?!O§ = _loc2_ - §5!P§.§-7§ / 2 + §8T§.§?C§;
         if(this.§^!4§.background)
         {
            this.§^!4§.background.§@P§(this.§^V§,this.§?!O§);
         }
         if(this.§^!4§.objects)
         {
            this.§^!4§.objects.§@P§(this.§^V§,this.§?!O§);
         }
         if(this.§^!4§.mLevelEngine)
         {
            this.§^!4§.mLevelEngine.§@P§(this.§^V§,this.§?!O§,§%-§);
         }
         if(this.§^!4§.slingshot)
         {
            this.§^!4§.slingshot.§@P§(this.§^V§,this.§?!O§);
         }
         if(this.§^!4§.particles)
         {
            this.§^!4§.particles.§@P§(this.§^V§,this.§?!O§);
         }
      }
      
      protected function §4!W§() : void
      {
         this.§ !Z§(§7E§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§`!4§ = -1;
         this.§4!W§();
         this.§8[§ = this.§]!Z§ = this.§9"§ = param1;
         this.§&!6§ = this.§&!?§ = this.§%!c§ = param2;
         this.§]!S§ = 0;
         this.§<e§.x = this.§@!U§;
         this.§<e§.y = this.§[!]§;
         this.§<e§.scale = §6I§;
         this.§]!R§ = §6I§;
         if(Math.abs(this.§=`§.x - this.§3Z§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§@!U§ - this.§3Z§.x) / (this.§=`§.x - this.§3Z§.x) * §+8§;
         }
         this.mDragging = true;
      }
      
      public function §23§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§]!S§ += param1;
         var _loc3_:Number = this.§8[§ - this.§]!Z§;
         if(this.§'!Z§ > 0)
         {
            _loc2_ -= _loc3_ * §5!P§.§>M§ / §%-§ / this.§'!Z§ * §+8§;
            this.§=V§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§=V§ = true;
            }
            if(_loc2_ > §+8§)
            {
               _loc2_ += (§+8§ - _loc2_) * 0.3;
               this.§=V§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§]!Z§ = this.§8[§;
      }
      
      protected function §-!4§() : Boolean
      {
         return this.mCurrentAction == §7E§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§8[§ = param1;
            this.§&!6§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7E§)
         {
            this.§ !Z§(§<9§);
            if(param1 > 0)
            {
               this.§8[§ = param1;
            }
            _loc3_ = Math.abs(this.§8[§ - this.§9"§);
            if(this.§]!S§ < get && _loc3_ >= §8!<§ && _loc3_ >= §8q§ * this.§]!S§ / 1000)
            {
               if(this.§8[§ < this.§9"§)
               {
                  this.§ !Z§(§7!'§);
               }
               else
               {
                  this.§ !Z§(§9!U§);
               }
               this.§&l§ = _loc3_ / this.§]!S§ * 10;
               this.§=V§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§=V§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §+8§)
               {
                  this.§=V§ = true;
               }
            }
            else if(this.§]!S§ < §=!D§)
            {
               this.§?!@§();
               this.§&l§ = §+8§ / (§+8§ / 500);
               this.§=V§ = true;
            }
            else
            {
               this.§23§(0);
               this.§`!a§(0);
               this.§&l§ = §+8§ / (§+8§ / 500);
               this.§=V§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §?!@§() : void
      {
         if(this.mCurrentAction == §7!'§)
         {
            this.§ !Z§(§9!U§);
         }
         else if(this.mCurrentAction == §9!U§)
         {
            this.§ !Z§(§7!'§);
         }
         else if(this.mCurrentCameraSliderLocation >= §+8§ / 2)
         {
            this.§ !Z§(§9!U§);
         }
         else if(this.mCurrentCameraSliderLocation <= §+8§ / 2)
         {
            this.§ !Z§(§7!'§);
         }
      }
      
      public function §`!a§(param1:int) : void
      {
         this.§`!4§ = param1;
         if(this.mCurrentCameraSliderLocation < §+8§ / 2)
         {
            this.§ !Z§(§9!U§);
         }
         else
         {
            this.§ !Z§(§7!'§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§ !Z§(§9!U§);
      }
      
      public function goToCastleView() : void
      {
         this.§ !Z§(§7!'§);
      }
      
      public function § !Z§(param1:int) : void
      {
         this.§<e§.x = this.§@!U§;
         this.§<e§.y = this.§[!]§;
         this.§<e§.scale = §6I§;
         this.§]!R§ = §6I§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §+8§)
         {
            return true;
         }
         if(this.mCurrentAction == §7!'§)
         {
            return true;
         }
         return false;
      }
      
      public function §@`§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §9!U§)
         {
            return true;
         }
         return false;
      }
      
      public function §-!-§(param1:§#!6§) : void
      {
         this.§`8§ = param1;
         if(this.§`8§ != null)
         {
            this.§^!-§ = new §#!6§();
            this.§^!-§.x = this.§@!U§;
            this.§^!-§.y = this.§[!]§;
            this.§^!-§.scale = §6I§;
         }
         else
         {
            this.§@!U§ = this.§^!-§.x;
            this.§[!]§ = this.§^!-§.y;
            §6I§ = this.§^!-§.scale;
            this.§^!-§ = null;
         }
      }
      
      protected function §8%§() : void
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
         var _loc3_:Number = this.§5A§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§#!7§,Math.min(this.§?$§,_loc3_));
         if(_loc3_ != this.§5A§)
         {
            this.§5A§ = _loc3_;
            this.§8%§();
         }
      }
      
      public function §`u§() : Number
      {
         return (this.manualScale - this.§#!7§) / (this.§?$§ - this.§#!7§);
      }
      
      public function §<K§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§?$§ - this.§#!7§) + this.§#!7§;
      }
      
      public function §&8§() : void
      {
         this.§5A§ = Math.max(this.§5A§ - 0.5,0.5);
      }
      
      public function §9!V§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§5A§;
         _loc1_ += " mXcenterB2: " + this.§@!U§;
         _loc1_ += " mYcenterB2: " + this.§[!]§;
         _loc1_ += " mXcenterB2target: " + this.§5A§;
         _loc1_ += "\n mYcenterB2target: " + this.§5A§;
         _loc1_ += " mXcenterB2previous: " + this.§5A§;
         _loc1_ += " mYcenterB2previous: " + this.§5A§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§5A§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§5A§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§5A§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§5A§;
         _loc1_ += " mTargetScale: " + this.§5A§;
         _loc1_ += " mTargetScalePrevious: " + this.§5A§;
         _loc1_ += " mCastleCameraX: " + this.§5A§;
         _loc1_ += "\n mCastleCameraY: " + this.§5A§;
         _loc1_ += " mCastleCameraScale: " + this.§5A§;
         _loc1_ += " mBirdCameraX: " + this.§5A§;
         _loc1_ += " mBirdCameraY: " + this.§5A§;
         _loc1_ += " mBirdCameraScale: " + this.§5A§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§5A§;
         _loc1_ += " mScreenTopScroll: " + this.§5A§;
         _loc1_ += " mDragging: " + this.§5A§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§5A§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§5A§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§5A§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§5A§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§5A§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§5A§;
         _loc1_ += " mDraggingTimer: " + this.§5A§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§5A§;
         _loc1_ += " mCameraBorderRight: " + this.§5A§;
         _loc1_ += " mCameraBorderSky: " + this.§5A§;
         _loc1_ += " mCameraBorderGround: " + this.§5A§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§5A§ + "\n ");
      }
   }
}
