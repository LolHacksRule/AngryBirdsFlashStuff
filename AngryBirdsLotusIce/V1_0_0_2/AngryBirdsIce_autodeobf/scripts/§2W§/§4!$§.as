package §2W§
{
   import §"o§.§ M§;
   import §"o§.§#U§;
   import §'m§.§^S§;
   import §;f§.§-!=§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §finally§.§%!7§;
   
   public class §4!$§
   {
      
      public static const § 8§:Number = 1.25;
      
      public static const §[!&§:Number = 0.15;
      
      public static const §6&§:Number = §8[§.§!!"§ * § M§.§%v§;
      
      public static const §6Q§:Number = §8[§.§2G§ * § M§.§%v§;
      
      public static const §+C§:Number = 0.1;
      
      public static const §6!&§:int = 1500;
      
      public static const §#!=§:int = 10;
      
      public static const §^X§:int = 15;
      
      public static const §@!9§:int = 300;
      
      public static const §&S§:int = 1000;
      
      public static const §]!0§:int = 10000;
      
      public static const §^2§:int = §]!0§ / 50;
      
      public static const §+7§:int = 0;
      
      public static const §,!1§:int = 1;
      
      public static const §@3§:int = 2;
      
      public static const §16§:int = 3;
      
      public static const §0!2§:int = 4;
      
      public static const §2b§:int = 5;
      
      public static const §5y§:String = "CASTLE";
      
      public static const §^u§:String = "SLINGSHOT";
      
      protected static var §8!#§:Number;
      
      public static var §"u§:Number;
      
      public static var §0!G§:Number;
      
      public static const §]!-§:Number = 2000;
       
      
      private var §"H§:Number = 1.0;
      
      private var §'S§:Number = 0.2;
      
      protected var §;9§:Number;
      
      protected var §<v§:Number;
      
      protected var §6K§:Number;
      
      public var § 6§:§ M§;
      
      public var §<;§:Number;
      
      public var §<H§:Number;
      
      private var §9!6§:§7!2§;
      
      private var §"!=§:§7!2§;
      
      public var §"!9§:Number;
      
      public var §&!1§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §2j§:Number;
      
      public var §0K§:Number;
      
      public var §]! §:Number;
      
      public var §!!4§:Number;
      
      private var §;o§:Number;
      
      private var §]`§:§5h§;
      
      private var §<!'§:§5h§;
      
      protected var §>!1§:Number = 0;
      
      protected var §4r§:Number = 0;
      
      protected var §+o§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §,!D§:Number = 0;
      
      public var § !B§:Boolean = true;
      
      public var §6!5§:Number = 0;
      
      public var § !C§:Number = 0;
      
      public var §0!;§:Number = 0;
      
      public var § P§:Number = 0;
      
      public var §6!0§:Number = 0;
      
      public var §"!'§:Number = 0;
      
      public var §,[§:Number = 0;
      
      public var §]Q§:Number = 0;
      
      public var §7!#§:Number = 0;
      
      private var §--§:§5h§;
      
      public var §5!§:Number = 0;
      
      private var §#^§:Number = 0;
      
      private var §@!1§:Number = 0;
      
      private var §+!0§:§-!=§ = null;
      
      private var §^T§:§-!=§ = null;
      
      public function §4!$§(param1:§ M§, param2:§^o§, param3:Number = 1.0)
      {
         this.§--§ = new §5h§(0,0,1,false);
         super();
         this.§<v§ = 0;
         this.§6K§ = 0;
         this.§ 6§ = param1;
         §4!$§.§8!#§ = 1;
         this.§"H§ = Math.max(1,Math.min(2,param3));
         this.§;9§ = this.§"H§;
         this.§2!0§(param2);
         if(this.§9!6§ && this.§"!=§)
         {
            this.§@f§();
            this.§>!1§ = this.§9!6§.x - this.§"!=§.x;
            this.§4r§ = this.§9!6§.y - this.§"!=§.y;
            this.§+o§ = this.§9!6§.scale - this.§"!=§.scale;
            this.§<v§ = this.§9!6§.x;
            this.§6K§ = this.§9!6§.y;
            §8!#§ = this.§9!6§.scale * this.§;9§;
         }
         this.mCurrentCameraSliderLocation = §]!0§;
         this.§ !B§ = true;
         this.§,!D§ = §]!0§ / 500;
      }
      
      private static function §4!#§() : Number
      {
         var _loc1_:Number = §8[§.§=h§ / §8[§.§[!'§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §2y§() : Number
      {
         return §8!#§ * §4!#§();
      }
      
      public function get §6!<§() : Number
      {
         return this.§;9§;
      }
      
      public function set §6!<§(param1:Number) : void
      {
         this.§;9§ = param1;
      }
      
      public function get § o§() : Number
      {
         return this.§;o§;
      }
      
      public function §3<§() : Number
      {
         return §6&§ / (this.§0K§ - this.§2j§);
      }
      
      public function get §2J§() : Number
      {
         return this.§"H§;
      }
      
      public function get §=!"§() : Number
      {
         return this.§'S§;
      }
      
      public function §@!6§(param1:Number) : void
      {
         this.§;9§ = param1;
         this.§5]§();
         this.§"e§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §2b§)
         {
            return;
         }
         this.goToCastleView();
         this.§6!5§ = 2000;
         this.§4W§();
         this.§]B§();
         this.§7<§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§<v§ = this.§"!=§.x;
         this.§6K§ = this.§"!=§.y;
         this.§ !B§ = false;
         this.§,!D§ = §]!0§ / 160000 * param1;
         this.§4!2§(§2b§);
      }
      
      public function §@f§() : void
      {
         this.§2j§ = this.§"!=§.x - §6&§ / this.§"!=§.scale / 2;
         this.§0K§ = this.§9!6§.x + §6&§ / this.§9!6§.scale / 2;
         this.§]! § = this.§ 6§.§2!§.§1n§ - 20 * § M§.§+!C§ * § M§.§%v§;
         this.§!!4§ = this.§ 6§.§2!§.§1n§ + 4;
         var _loc1_:Number = §6&§ / (this.§0K§ - this.§2j§);
         this.§;o§ = this.§!!4§ - §6Q§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§ 6§ = null;
      }
      
      public function §2!0§(param1:§^o§) : void
      {
         var _loc3_:§-!=§ = null;
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
         while(_loc2_ < param1.§else §)
         {
            _loc3_ = param1.§3Y§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§!!D§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §6Q§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §6&§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §^u§)
            {
               this.§"!=§ = new §7!2§(_loc9_,_loc10_,_loc13_,true);
               this.§<!'§ = new §5h§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §5y§)
            {
               this.§9!6§ = new §7!2§(_loc9_,_loc10_,_loc13_,false);
               this.§]`§ = new §5h§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §^S§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §8!1§(param1:§^o§) : void
      {
         var _loc2_:§-!=§ = new §-!=§();
         _loc2_.id = §^u§;
         _loc2_.x = this.§"!=§.x;
         _loc2_.y = this.§"!=§.y;
         var _loc3_:Number = §6&§ / this.§"!=§.scale / 2;
         var _loc4_:Number = §6Q§ / this.§"!=§.scale / 2;
         _loc2_.left = this.§"!=§.x - _loc3_;
         _loc2_.right = this.§"!=§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§-!=§;
         (_loc5_ = new §-!=§()).id = §5y§;
         _loc5_.x = this.§9!6§.x;
         _loc5_.y = this.§9!6§.y;
         var _loc6_:Number = §6&§ / this.§9!6§.scale / 2;
         var _loc7_:Number = §6Q§ / this.§9!6§.scale / 2;
         _loc5_.left = this.§9!6§.x - _loc6_;
         _loc5_.right = this.§9!6§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§-!2§();
         param1.§0w§(_loc2_);
         param1.§0w§(_loc5_);
      }
      
      public function §!!D§(param1:§-!=§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §8[§.§!!"§ * 0.5 / _loc2_ * § M§.§%v§;
         var _loc4_:Number = param1.y - §8[§.§2G§ * 0.5 / _loc2_ * § M§.§%v§;
         var _loc5_:Number = _loc3_ + §8[§.§!!"§ / _loc2_ * § M§.§%v§;
         var _loc6_:Number = _loc4_ + §8[§.§2G§ / _loc2_ * § M§.§%v§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §?a§(param1:§7!2§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§,!D§;
         if(_loc3_ >= §]!0§)
         {
            _loc3_ = §]!0§;
            this.§4!2§(§+7§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§4!2§(§+7§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §+r§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§,!D§;
         var _loc4_:Number = -§]!0§ * 0.7;
         if(_loc2_ >= §]!0§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]!0§;
            }
            this.§,!D§ = -this.§,!D§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §<!-§(param1:Number) : void
      {
         if(this.mCurrentAction == §2b§)
         {
            this.§+r§(param1);
         }
         else if(this.mCurrentAction == §,!1§)
         {
            this.§?a§(this.§9!6§,param1);
         }
         else if(this.mCurrentAction == §@3§)
         {
            this.§?a§(this.§"!=§,-param1);
         }
         else if(this.mCurrentAction == §16§)
         {
            this.§ !B§ = true;
         }
         else if(this.mCurrentAction == §0!2§)
         {
            this.§%!%§(param1);
         }
      }
      
      public function §1G§(param1:Number) : void
      {
         if(this.§+!0§)
         {
            this.§<v§ = this.§+!0§.x;
            this.§6K§ = this.§+!0§.y;
            §8!#§ = §6&§ / (this.§+!0§.right - this.§+!0§.left);
         }
         else
         {
            this.§5]§();
            this.§<!-§(param1);
            this.§2,§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§4W§();
         this.§]B§();
         this.§7<§();
      }
      
      private function §^!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<!'§.scale + (this.§]`§.scale - this.§<!'§.scale) * param1;
         var _loc4_:Number = this.§<!'§.x + (this.§]`§.x - this.§<!'§.x) * param1;
         var _loc5_:Number = this.§<!'§.y + (this.§]`§.y - this.§<!'§.y) * param1;
         this.§--§.x -= (this.§--§.x - _loc4_) * param2;
         this.§--§.y -= (this.§--§.y - _loc5_) * param2;
         this.§--§.scale -= (this.§--§.scale - _loc3_) * param2;
      }
      
      protected function §"e§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§>!1§ != 0)
         {
            if(!this.§ !B§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]!0§;
            this.§^!G§(_loc3_,param2);
            this.§<v§ = this.§--§.x;
            this.§6K§ = this.§--§.y;
            §8!#§ = this.§--§.scale;
         }
      }
      
      public function §2,§(param1:Number, param2:Number) : void
      {
         var _loc5_:§%!7§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]!0§)
         {
            this.§ !B§ = true;
         }
         if(this.mCurrentAction == §16§)
         {
            if(!this.§ 6§.activeObject)
            {
               this.§4!2§(§,!1§);
               this.§7!#§ = §&S§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§ 6§.activeObject).§+!-§().GetPosition().x + (!!_loc5_.§%!3§ ? _loc5_.§%!3§ * § M§.§%v§ : 0);
               _loc7_ = _loc5_.§+!-§().GetPosition().y + (!!_loc5_.§ h§ ? _loc5_.§ h§ * § M§.§%v§ : 0);
               if((_loc8_ = _loc5_.§+!-§().GetLinearVelocity().x) > 0 && this.§>!1§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§>!1§ * §]!0§;
               }
               if(param1 >= §]!0§)
               {
                  param1 = §]!0§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]!0§;
               this.§^!G§(_loc9_,_loc4_);
               _loc10_ = this.§--§.x - §6&§ * 0.5 / this.§--§.scale;
               _loc11_ = this.§--§.y - §6Q§ * 0.5 / this.§--§.scale;
               _loc12_ = this.§--§.x + §6&§ * 0.5 / this.§--§.scale;
               _loc13_ = this.§--§.y + §6Q§ * 0.5 / this.§--§.scale;
               _loc14_ = 150 * § M§.§%v§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§2j§,_loc15_);
               _loc17_ = Math.min(this.§0K§,_loc17_);
               _loc19_ = Math.abs(§6&§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§6Q§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§--§.scale)
               {
                  _loc21_ = this.§--§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §6&§ * 0.5 / _loc21_ > this.§0K§)
               {
                  _loc15_ = (_loc17_ = this.§0K§) - §6&§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§2j§)
                  {
                     _loc15_ = this.§2j§;
                  }
               }
               if(_loc22_ - §6&§ * 0.5 / _loc21_ < this.§2j§)
               {
                  _loc17_ = (_loc15_ = this.§2j§) + §6&§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§0K§)
                  {
                     _loc17_ = this.§0K§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§6&§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §6&§ * 0.5 / _loc21_ < this.§]! §)
               {
                  _loc23_ = this.§]! § + §6&§ * 0.5 / _loc21_;
               }
               this.§<v§ -= (this.§<v§ - _loc22_) * _loc4_;
               this.§5!§ -= (this.§5!§ - _loc21_) * _loc4_;
               §8!#§ = this.§5!§;
               this.§6K§ -= (this.§6K§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§0K§ || _loc6_ <= this.§2j§)
               {
                  this.§--§.scale = §8!#§;
                  this.§--§.x = this.§<v§;
                  this.§--§.y = this.§6K§;
               }
            }
         }
         else
         {
            this.§"e§(param1,_loc4_);
         }
      }
      
      public function § V§(param1:Number, param2:Number) : void
      {
         this.§#^§ = param1;
         this.§@!1§ = param2;
      }
      
      private function §4!&§(param1:§5h§, param2:§7!2§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §[!&§ + (param2.scale - §[!&§) * this.§;9§ * §4!$§.§4!#§();
         if(§6&§ / param1.scale > this.§0K§ - this.§2j§)
         {
            _loc3_ = §6&§ / (this.§0K§ - this.§2j§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §`k§(param1:§5h§, param2:§7!2§) : Boolean
      {
         var _loc3_:Boolean = this.§4!&§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §6Q§ * 0.5 / param1.scale;
         var _loc5_:Number = §6Q§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §6&§ * 0.5 / param1.scale) < this.§2j§ && param1.§]!,§)
         {
            param1.x += this.§2j§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §6&§ * 0.5 / param1.scale) > this.§0K§ && !param1.§]!,§)
         {
            param1.x += this.§0K§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §]!3§(param1:§5h§, param2:§7!2§) : Number
      {
         return (param1.scale - §[!&§) / (§4!$§.§4!#§() * (param2.scale - §[!&§));
      }
      
      protected function §5]§() : void
      {
         this.§`k§(this.§<!'§,this.§"!=§);
         var _loc1_:Number = this.§]!3§(this.§<!'§,this.§"!=§);
         this.§`k§(this.§]`§,this.§9!6§);
         var _loc2_:Number = this.§]!3§(this.§]`§,this.§9!6§);
         this.§;9§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §4W§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§ 6§.sprite)
         {
            _loc1_ = §8[§.§'!F§() / §8[§.§=h§ - §8[§.§2G§ >> 1;
            §"u§ = this.§ 6§.sprite.x = § M§.§^!?§ * ((1 - §4!$§.§2y§) / 2);
            §0!G§ = this.§ 6§.sprite.y = _loc1_ + § M§.§+!C§ * (1 - §4!$§.§2y§) * §#U§.§[2§;
         }
      }
      
      public function §7<§() : void
      {
         if(this.§ 6§.sprite)
         {
            this.§ 6§.sprite.scaleX = §2y§;
            this.§ 6§.sprite.scaleY = §2y§;
         }
      }
      
      public function §]B§() : void
      {
         var _loc1_:Number = this.§<v§ / § M§.§%v§ + this.§#^§;
         var _loc2_:Number = this.§6K§ / § M§.§%v§ + this.§@!1§;
         this.§"!9§ = _loc1_ - § M§.§^!?§ / 2 * §8[§.§=h§ / §8[§.§%A§;
         this.§&!1§ = _loc2_ - § M§.§+!C§ / 2 + §#U§.§`S§;
         if(this.§ 6§.background)
         {
            this.§ 6§.background.§4!A§(this.§"!9§,this.§&!1§);
         }
         if(this.§ 6§.objects)
         {
            this.§ 6§.objects.§4!A§(this.§"!9§,this.§&!1§);
         }
         if(this.§ 6§.§'!?§)
         {
            this.§ 6§.§'!?§.§4!A§(this.§"!9§,this.§&!1§);
         }
         if(this.§ 6§.slingshot)
         {
            this.§ 6§.slingshot.§4!A§(this.§"!9§,this.§&!1§);
         }
         if(this.§ 6§.particles)
         {
            this.§ 6§.particles.§4!A§(this.§"!9§,this.§&!1§);
         }
      }
      
      protected function §,!#§() : void
      {
         this.§4!2§(§0!2§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7!#§ = -1;
         this.§,!#§();
         this.§6!0§ = this.§,[§ = this.§0!;§ = param1;
         this.§"!'§ = this.§]Q§ = this.§ P§ = param2;
         this.§ !C§ = 0;
         this.§--§.x = this.§<v§;
         this.§--§.y = this.§6K§;
         this.§--§.scale = §8!#§;
         this.§5!§ = §8!#§;
         if(Math.abs(this.§]`§.x - this.§<!'§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§<v§ - this.§<!'§.x) / (this.§]`§.x - this.§<!'§.x) * §]!0§;
         }
         this.mDragging = true;
      }
      
      public function §%!%§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§ !C§ += param1;
         var _loc3_:Number = this.§6!0§ - this.§,[§;
         if(this.§>!1§ > 0)
         {
            _loc2_ -= _loc3_ * § M§.§%v§ / §2y§ / this.§>!1§ * §]!0§;
            this.§ !B§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§ !B§ = true;
            }
            if(_loc2_ > §]!0§)
            {
               _loc2_ += (§]!0§ - _loc2_) * 0.3;
               this.§ !B§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§,[§ = this.§6!0§;
      }
      
      protected function §1t§() : Boolean
      {
         return this.mCurrentAction == §0!2§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§6!0§ = param1;
            this.§"!'§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §0!2§)
         {
            this.§4!2§(§+7§);
            if(param1 > 0)
            {
               this.§6!0§ = param1;
            }
            _loc3_ = Math.abs(this.§6!0§ - this.§0!;§);
            if(this.§ !C§ < §6!&§ && _loc3_ >= §#!=§ && _loc3_ >= §^X§ * this.§ !C§ / 1000)
            {
               if(this.§6!0§ < this.§0!;§)
               {
                  this.§4!2§(§,!1§);
               }
               else
               {
                  this.§4!2§(§@3§);
               }
               this.§,!D§ = _loc3_ / this.§ !C§ * 10;
               this.§ !B§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§ !B§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]!0§)
               {
                  this.§ !B§ = true;
               }
            }
            else if(this.§ !C§ < §@!9§)
            {
               this.§"U§();
               this.§,!D§ = §]!0§ / (§]!0§ / 500);
               this.§ !B§ = true;
            }
            else
            {
               this.§%!%§(0);
               this.§%"§(0);
               this.§,!D§ = §]!0§ / (§]!0§ / 500);
               this.§ !B§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"U§() : void
      {
         if(this.mCurrentAction == §,!1§)
         {
            this.§4!2§(§@3§);
         }
         else if(this.mCurrentAction == §@3§)
         {
            this.§4!2§(§,!1§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]!0§ / 2)
         {
            this.§4!2§(§@3§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]!0§ / 2)
         {
            this.§4!2§(§,!1§);
         }
      }
      
      public function §%"§(param1:int) : void
      {
         this.§7!#§ = param1;
         if(this.mCurrentCameraSliderLocation < §]!0§ / 2)
         {
            this.§4!2§(§@3§);
         }
         else
         {
            this.§4!2§(§,!1§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§4!2§(§@3§);
      }
      
      public function goToCastleView() : void
      {
         this.§4!2§(§,!1§);
      }
      
      public function §4!2§(param1:int) : void
      {
         this.§--§.x = this.§<v§;
         this.§--§.y = this.§6K§;
         this.§--§.scale = §8!#§;
         this.§5!§ = §8!#§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]!0§)
         {
            return true;
         }
         if(this.mCurrentAction == §,!1§)
         {
            return true;
         }
         return false;
      }
      
      public function §"!$§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §@3§)
         {
            return true;
         }
         return false;
      }
      
      public function §#E§(param1:§-!=§) : void
      {
         this.§+!0§ = param1;
         if(this.§+!0§ != null)
         {
            this.§^T§ = new §-!=§();
            this.§^T§.x = this.§<v§;
            this.§^T§.y = this.§6K§;
            this.§^T§.scale = §8!#§;
         }
         else
         {
            this.§<v§ = this.§^T§.x;
            this.§6K§ = this.§^T§.y;
            §8!#§ = this.§^T§.scale;
            this.§^T§ = null;
         }
      }
      
      protected function §'s§() : void
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
         var _loc3_:Number = this.§;9§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§=!"§,Math.min(this.§2J§,_loc3_));
         if(_loc3_ != this.§;9§)
         {
            this.§;9§ = _loc3_;
            this.§'s§();
         }
      }
      
      public function §^j§() : Number
      {
         return (this.§6!<§ - this.§=!"§) / (this.§2J§ - this.§=!"§);
      }
      
      public function §4y§(param1:Number) : void
      {
         this.§6!<§ = Math.min(Math.max(param1,0),1) * (this.§2J§ - this.§=!"§) + this.§=!"§;
      }
      
      public function §2u§() : void
      {
         this.§;9§ = Math.max(this.§;9§ - 0.5,0.5);
      }
      
      public function §=@§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§;9§;
         _loc1_ += " mXcenterB2: " + this.§<v§;
         _loc1_ += " mYcenterB2: " + this.§6K§;
         _loc1_ += " mXcenterB2target: " + this.§;9§;
         _loc1_ += "\n mYcenterB2target: " + this.§;9§;
         _loc1_ += " mXcenterB2previous: " + this.§;9§;
         _loc1_ += " mYcenterB2previous: " + this.§;9§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§;9§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§;9§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§;9§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§;9§;
         _loc1_ += " mTargetScale: " + this.§;9§;
         _loc1_ += " mTargetScalePrevious: " + this.§;9§;
         _loc1_ += " mCastleCameraX: " + this.§;9§;
         _loc1_ += "\n mCastleCameraY: " + this.§;9§;
         _loc1_ += " mCastleCameraScale: " + this.§;9§;
         _loc1_ += " mBirdCameraX: " + this.§;9§;
         _loc1_ += " mBirdCameraY: " + this.§;9§;
         _loc1_ += " mBirdCameraScale: " + this.§;9§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§;9§;
         _loc1_ += " mScreenTopScroll: " + this.§;9§;
         _loc1_ += " mDragging: " + this.§;9§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§;9§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§;9§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§;9§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§;9§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§;9§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§;9§;
         _loc1_ += " mDraggingTimer: " + this.§;9§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§;9§;
         _loc1_ += " mCameraBorderRight: " + this.§;9§;
         _loc1_ += " mCameraBorderSky: " + this.§;9§;
         _loc1_ += " mCameraBorderGround: " + this.§;9§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§;9§ + "\n ");
      }
   }
}
