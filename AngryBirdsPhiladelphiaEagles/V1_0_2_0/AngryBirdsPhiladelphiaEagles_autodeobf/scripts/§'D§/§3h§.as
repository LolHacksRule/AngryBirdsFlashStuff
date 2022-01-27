package §'D§
{
   import §%"§.§ do§;
   import §%"§.§&h§;
   import §'R§.§&r§;
   import §<!F§.§5!+§;
   import §?!;§.§;!,§;
   import §?!;§.§>w§;
   import §@V§.§`!5§;
   
   public class §3h§
   {
      
      public static const §9!+§:Number = 1.25;
      
      public static const §56§:Number = 0.15;
      
      public static const §6!B§:Number = §5!+§.§[!0§ * § do§.§^!I§;
      
      public static const §`!'§:Number = §5!+§.§>!8§ * § do§.§^!I§;
      
      public static const §#!<§:Number = 0.1;
      
      public static const §]!-§:int = 1500;
      
      public static const §&,§:int = 10;
      
      public static const §2!C§:int = 15;
      
      public static const §^7§:int = 300;
      
      public static const §!!§:int = 1000;
      
      public static const §]t§:int = 10000;
      
      public static const §[b§:int = §]t§ / 50;
      
      public static const §1^§:int = 0;
      
      public static const §1!Q§:int = 1;
      
      public static const §""§:int = 2;
      
      public static const set:int = 3;
      
      public static const §;L§:int = 4;
      
      public static const §[c§:int = 5;
      
      public static const §?4§:String = "CASTLE";
      
      public static const §&!5§:String = "SLINGSHOT";
      
      protected static var §>!'§:Number;
      
      public static var §?!=§:Number;
      
      public static var §[T§:Number;
      
      public static const §6y§:Number = 2000;
       
      
      private var §'b§:Number = 1.0;
      
      private var §>@§:Number = 0.2;
      
      protected var §>!A§:Number;
      
      protected var §]^§:Number;
      
      protected var §#=§:Number;
      
      public var §-H§:§ do§;
      
      public var §7o§:Number;
      
      public var §3§:Number;
      
      private var §7q§:§-l§;
      
      private var §"#§:§-l§;
      
      public var §=?§:Number;
      
      public var §9!8§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §`O§:Number;
      
      public var §",§:Number;
      
      public var §`[§:Number;
      
      public var §4y§:Number;
      
      private var §4e§:Number;
      
      private var §=n§:§=m§;
      
      private var §=!<§:§=m§;
      
      protected var §%!O§:Number = 0;
      
      protected var §+!@§:Number = 0;
      
      protected var §&g§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §3$§:Number = 0;
      
      public var §0>§:Boolean = true;
      
      public var §]d§:Number = 0;
      
      public var §]E§:Number = 0;
      
      public var §&!P§:Number = 0;
      
      public var § case§:Number = 0;
      
      public var §3!;§:Number = 0;
      
      public var §5!!§:Number = 0;
      
      public var §6! §:Number = 0;
      
      public var §`M§:Number = 0;
      
      public var §@s§:Number = 0;
      
      private var § p§:§=m§;
      
      public var §7z§:Number = 0;
      
      private var §'P§:Number = 0;
      
      private var §%! §:Number = 0;
      
      private var §4!"§:§>w§ = null;
      
      private var §;!N§:§>w§ = null;
      
      public function §3h§(param1:§ do§, param2:§;!,§, param3:Number = 1.0)
      {
         this.§ p§ = new §=m§(0,0,1,false);
         super();
         this.§]^§ = 0;
         this.§#=§ = 0;
         this.§-H§ = param1;
         §3h§.§>!'§ = 1;
         this.§'b§ = Math.max(1,Math.min(2,param3));
         this.§>!A§ = this.§'b§;
         this.§4!O§(param2);
         if(this.§7q§ && this.§"#§)
         {
            this.§;b§();
            this.§%!O§ = this.§7q§.x - this.§"#§.x;
            this.§+!@§ = this.§7q§.y - this.§"#§.y;
            this.§&g§ = this.§7q§.scale - this.§"#§.scale;
            this.§]^§ = this.§7q§.x;
            this.§#=§ = this.§7q§.y;
            §>!'§ = this.§7q§.scale * this.§>!A§;
         }
         this.mCurrentCameraSliderLocation = §]t§;
         this.§0>§ = true;
         this.§3$§ = §]t§ / 500;
      }
      
      private static function §1!J§() : Number
      {
         var _loc1_:Number = §5!+§.§!M§ / §5!+§.§?!#§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get levelScale() : Number
      {
         return §>!'§ * §1!J§();
      }
      
      public function get §-Y§() : Number
      {
         return this.§>!A§;
      }
      
      public function set §-Y§(param1:Number) : void
      {
         this.§>!A§ = param1;
      }
      
      public function get §<,§() : Number
      {
         return this.§4e§;
      }
      
      public function §-!"§() : Number
      {
         return §6!B§ / (this.§",§ - this.§`O§);
      }
      
      public function get §=!6§() : Number
      {
         return this.§'b§;
      }
      
      public function get §#P§() : Number
      {
         return this.§>@§;
      }
      
      public function §#w§(param1:Number) : void
      {
         this.§>!A§ = param1;
         this.§@E§();
         this.§5!'§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §[c§)
         {
            return;
         }
         this.goToCastleView();
         this.§]d§ = 2000;
         this.adjustLevelMainViewAccordingToScale();
         this.§8[§();
         this.§`-§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§]^§ = this.§"#§.x;
         this.§#=§ = this.§"#§.y;
         this.§0>§ = false;
         this.§3$§ = §]t§ / 160000 * param1;
         this.§?!+§(§[c§);
      }
      
      public function §;b§() : void
      {
         this.§`O§ = this.§"#§.x - §6!B§ / this.§"#§.scale / 2;
         this.§",§ = this.§7q§.x + §6!B§ / this.§7q§.scale / 2;
         this.§`[§ = this.§-H§.§#z§.§=a§ - 20 * § do§.§0H§ * § do§.§^!I§;
         this.§4y§ = this.§-H§.§#z§.§=a§ + 4;
         var _loc1_:Number = §6!B§ / (this.§",§ - this.§`O§);
         this.§4e§ = this.§4y§ - §`!'§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§-H§ = null;
      }
      
      public function §4!O§(param1:§;!,§) : void
      {
         var _loc3_:§>w§ = null;
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
         while(_loc2_ < param1.§3D§)
         {
            _loc3_ = param1.§,f§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§]h§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §`!'§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §6!B§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §&!5§)
            {
               this.§"#§ = new §-l§(_loc9_,_loc10_,_loc13_,true);
               this.§=!<§ = new §=m§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §?4§)
            {
               this.§7q§ = new §-l§(_loc9_,_loc10_,_loc13_,false);
               this.§=n§ = new §=m§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §`!5§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function § !Q§(param1:§;!,§) : void
      {
         var _loc2_:§>w§ = new §>w§();
         _loc2_.id = §&!5§;
         _loc2_.x = this.§"#§.x;
         _loc2_.y = this.§"#§.y;
         var _loc3_:Number = §6!B§ / this.§"#§.scale / 2;
         var _loc4_:Number = §`!'§ / this.§"#§.scale / 2;
         _loc2_.left = this.§"#§.x - _loc3_;
         _loc2_.right = this.§"#§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§>w§;
         (_loc5_ = new §>w§()).id = §?4§;
         _loc5_.x = this.§7q§.x;
         _loc5_.y = this.§7q§.y;
         var _loc6_:Number = §6!B§ / this.§7q§.scale / 2;
         var _loc7_:Number = §`!'§ / this.§7q§.scale / 2;
         _loc5_.left = this.§7q§.x - _loc6_;
         _loc5_.right = this.§7q§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§-y§();
         param1.§-!M§(_loc2_);
         param1.§-!M§(_loc5_);
      }
      
      public function §]h§(param1:§>w§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §5!+§.§[!0§ * 0.5 / _loc2_ * § do§.§^!I§;
         var _loc4_:Number = param1.y - §5!+§.§>!8§ * 0.5 / _loc2_ * § do§.§^!I§;
         var _loc5_:Number = _loc3_ + §5!+§.§[!0§ / _loc2_ * § do§.§^!I§;
         var _loc6_:Number = _loc4_ + §5!+§.§>!8§ / _loc2_ * § do§.§^!I§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §2q§(param1:§-l§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§3$§;
         if(_loc3_ >= §]t§)
         {
            _loc3_ = §]t§;
            this.§?!+§(§1^§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§?!+§(§1^§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §@!,§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§3$§;
         var _loc4_:Number = -§]t§ * 0.7;
         if(_loc2_ >= §]t§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]t§;
            }
            this.§3$§ = -this.§3$§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §2A§(param1:Number) : void
      {
         if(this.mCurrentAction == §[c§)
         {
            this.§@!,§(param1);
         }
         else if(this.mCurrentAction == §1!Q§)
         {
            this.§2q§(this.§7q§,param1);
         }
         else if(this.mCurrentAction == §""§)
         {
            this.§2q§(this.§"#§,-param1);
         }
         else if(this.mCurrentAction == set)
         {
            this.§0>§ = true;
         }
         else if(this.mCurrentAction == §;L§)
         {
            this.§#B§(param1);
         }
      }
      
      public function §3#§(param1:Number) : void
      {
         if(this.§4!"§)
         {
            this.§]^§ = this.§4!"§.x;
            this.§#=§ = this.§4!"§.y;
            §>!'§ = §6!B§ / (this.§4!"§.right - this.§4!"§.left);
         }
         else
         {
            this.§@E§();
            this.§2A§(param1);
            this.§@G§(this.mCurrentCameraSliderLocation,param1);
         }
         this.adjustLevelMainViewAccordingToScale();
         this.§8[§();
         this.§`-§();
      }
      
      private function §?8§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§=!<§.scale + (this.§=n§.scale - this.§=!<§.scale) * param1;
         var _loc4_:Number = this.§=!<§.x + (this.§=n§.x - this.§=!<§.x) * param1;
         var _loc5_:Number = this.§=!<§.y + (this.§=n§.y - this.§=!<§.y) * param1;
         this.§ p§.x -= (this.§ p§.x - _loc4_) * param2;
         this.§ p§.y -= (this.§ p§.y - _loc5_) * param2;
         this.§ p§.scale -= (this.§ p§.scale - _loc3_) * param2;
      }
      
      protected function §5!'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%!O§ != 0)
         {
            if(!this.§0>§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]t§;
            this.§?8§(_loc3_,param2);
            this.§]^§ = this.§ p§.x;
            this.§#=§ = this.§ p§.y;
            §>!'§ = this.§ p§.scale;
         }
      }
      
      public function §@G§(param1:Number, param2:Number) : void
      {
         var _loc5_:§&r§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]t§)
         {
            this.§0>§ = true;
         }
         if(this.mCurrentAction == set)
         {
            if(!this.§-H§.activeObject)
            {
               this.§?!+§(§1!Q§);
               this.§@s§ = §!!§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§-H§.activeObject).§<!I§().GetPosition().x + (!!_loc5_.§%!J§ ? _loc5_.§%!J§ * § do§.§^!I§ : 0);
               _loc7_ = _loc5_.§<!I§().GetPosition().y + (!!_loc5_.§@#§ ? _loc5_.§@#§ * § do§.§^!I§ : 0);
               if((_loc8_ = _loc5_.§<!I§().GetLinearVelocity().x) > 0 && this.§%!O§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§%!O§ * §]t§;
               }
               if(param1 >= §]t§)
               {
                  param1 = §]t§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]t§;
               this.§?8§(_loc9_,_loc4_);
               _loc10_ = this.§ p§.x - §6!B§ * 0.5 / this.§ p§.scale;
               _loc11_ = this.§ p§.y - §`!'§ * 0.5 / this.§ p§.scale;
               _loc12_ = this.§ p§.x + §6!B§ * 0.5 / this.§ p§.scale;
               _loc13_ = this.§ p§.y + §`!'§ * 0.5 / this.§ p§.scale;
               _loc14_ = 150 * § do§.§^!I§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§`O§,_loc15_);
               _loc17_ = Math.min(this.§",§,_loc17_);
               _loc19_ = Math.abs(§6!B§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§`!'§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§ p§.scale)
               {
                  _loc21_ = this.§ p§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §6!B§ * 0.5 / _loc21_ > this.§",§)
               {
                  _loc15_ = (_loc17_ = this.§",§) - §6!B§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§`O§)
                  {
                     _loc15_ = this.§`O§;
                  }
               }
               if(_loc22_ - §6!B§ * 0.5 / _loc21_ < this.§`O§)
               {
                  _loc17_ = (_loc15_ = this.§`O§) + §6!B§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§",§)
                  {
                     _loc17_ = this.§",§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§6!B§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §6!B§ * 0.5 / _loc21_ < this.§`[§)
               {
                  _loc23_ = this.§`[§ + §6!B§ * 0.5 / _loc21_;
               }
               this.§]^§ -= (this.§]^§ - _loc22_) * _loc4_;
               this.§7z§ -= (this.§7z§ - _loc21_) * _loc4_;
               §>!'§ = this.§7z§;
               this.§#=§ -= (this.§#=§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§",§ || _loc6_ <= this.§`O§)
               {
                  this.§ p§.scale = §>!'§;
                  this.§ p§.x = this.§]^§;
                  this.§ p§.y = this.§#=§;
               }
            }
         }
         else
         {
            this.§5!'§(param1,_loc4_);
         }
      }
      
      public function §@!>§(param1:Number, param2:Number) : void
      {
         this.§'P§ = param1;
         this.§%! § = param2;
      }
      
      private function §5!4§(param1:§=m§, param2:§-l§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §56§ + (param2.scale - §56§) * this.§>!A§ * §3h§.§1!J§();
         if(§6!B§ / param1.scale > this.§",§ - this.§`O§)
         {
            _loc3_ = §6!B§ / (this.§",§ - this.§`O§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §5+§(param1:§=m§, param2:§-l§) : Boolean
      {
         var _loc3_:Boolean = this.§5!4§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §`!'§ * 0.5 / param1.scale;
         var _loc5_:Number = §`!'§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §6!B§ * 0.5 / param1.scale) < this.§`O§ && param1.§!Y§)
         {
            param1.x += this.§`O§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §6!B§ * 0.5 / param1.scale) > this.§",§ && !param1.§!Y§)
         {
            param1.x += this.§",§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §^!1§(param1:§=m§, param2:§-l§) : Number
      {
         return (param1.scale - §56§) / (§3h§.§1!J§() * (param2.scale - §56§));
      }
      
      protected function §@E§() : void
      {
         this.§5+§(this.§=!<§,this.§"#§);
         var _loc1_:Number = this.§^!1§(this.§=!<§,this.§"#§);
         this.§5+§(this.§=n§,this.§7q§);
         var _loc2_:Number = this.§^!1§(this.§=n§,this.§7q§);
         this.§>!A§ = Math.min(_loc1_,_loc2_);
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         if(this.§-H§.sprite)
         {
            _loc1_ = §5!+§.§-!&§() / §5!+§.§!M§ - §5!+§.§>!8§ >> 1;
            §?!=§ = this.§-H§.sprite.x = § do§.§39§ * ((1 - §3h§.levelScale) / 2);
            §[T§ = this.§-H§.sprite.y = _loc1_ + § do§.§0H§ * (1 - §3h§.levelScale) * §&h§.§8m§;
         }
      }
      
      public function §`-§() : void
      {
         if(this.§-H§.sprite)
         {
            this.§-H§.sprite.scaleX = levelScale;
            this.§-H§.sprite.scaleY = levelScale;
         }
      }
      
      public function §8[§() : void
      {
         var _loc1_:Number = this.§]^§ / § do§.§^!I§ + this.§'P§;
         var _loc2_:Number = this.§#=§ / § do§.§^!I§ + this.§%! §;
         this.§=?§ = _loc1_ - § do§.§39§ / 2 * §5!+§.§!M§ / §5!+§.§^?§;
         this.§9!8§ = _loc2_ - § do§.§0H§ / 2 + §&h§.§1J§;
         if(this.§-H§.background)
         {
            this.§-H§.background.§%!H§(this.§=?§,this.§9!8§);
         }
         if(this.§-H§.objects)
         {
            this.§-H§.objects.§%!H§(this.§=?§,this.§9!8§);
         }
         if(this.§-H§.§]u§)
         {
            this.§-H§.§]u§.§%!H§(this.§=?§,this.§9!8§,levelScale);
         }
         if(this.§-H§.slingshot)
         {
            this.§-H§.slingshot.§%!H§(this.§=?§,this.§9!8§);
         }
         if(this.§-H§.particles)
         {
            this.§-H§.particles.§%!H§(this.§=?§,this.§9!8§);
         }
      }
      
      protected function §`a§() : void
      {
         this.§?!+§(§;L§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§@s§ = -1;
         this.§`a§();
         this.§3!;§ = this.§6! § = this.§&!P§ = param1;
         this.§5!!§ = this.§`M§ = this.§ case§ = param2;
         this.§]E§ = 0;
         this.§ p§.x = this.§]^§;
         this.§ p§.y = this.§#=§;
         this.§ p§.scale = §>!'§;
         this.§7z§ = §>!'§;
         if(Math.abs(this.§=n§.x - this.§=!<§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§]^§ - this.§=!<§.x) / (this.§=n§.x - this.§=!<§.x) * §]t§;
         }
         this.mDragging = true;
      }
      
      public function §#B§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§]E§ += param1;
         var _loc3_:Number = this.§3!;§ - this.§6! §;
         if(this.§%!O§ > 0)
         {
            _loc2_ -= _loc3_ * § do§.§^!I§ / levelScale / this.§%!O§ * §]t§;
            this.§0>§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§0>§ = true;
            }
            if(_loc2_ > §]t§)
            {
               _loc2_ += (§]t§ - _loc2_) * 0.3;
               this.§0>§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§6! § = this.§3!;§;
      }
      
      protected function §]!4§() : Boolean
      {
         return this.mCurrentAction == §;L§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§3!;§ = param1;
            this.§5!!§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §;L§)
         {
            this.§?!+§(§1^§);
            if(param1 > 0)
            {
               this.§3!;§ = param1;
            }
            _loc3_ = Math.abs(this.§3!;§ - this.§&!P§);
            if(this.§]E§ < §]!-§ && _loc3_ >= §&,§ && _loc3_ >= §2!C§ * this.§]E§ / 1000)
            {
               if(this.§3!;§ < this.§&!P§)
               {
                  this.§?!+§(§1!Q§);
               }
               else
               {
                  this.§?!+§(§""§);
               }
               this.§3$§ = _loc3_ / this.§]E§ * 10;
               this.§0>§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§0>§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]t§)
               {
                  this.§0>§ = true;
               }
            }
            else if(this.§]E§ < §^7§)
            {
               this.§9!9§();
               this.§3$§ = §]t§ / (§]t§ / 500);
               this.§0>§ = true;
            }
            else
            {
               this.§#B§(0);
               this.§4S§(0);
               this.§3$§ = §]t§ / (§]t§ / 500);
               this.§0>§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §9!9§() : void
      {
         if(this.mCurrentAction == §1!Q§)
         {
            this.§?!+§(§""§);
         }
         else if(this.mCurrentAction == §""§)
         {
            this.§?!+§(§1!Q§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]t§ / 2)
         {
            this.§?!+§(§""§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]t§ / 2)
         {
            this.§?!+§(§1!Q§);
         }
      }
      
      public function §4S§(param1:int) : void
      {
         this.§@s§ = param1;
         if(this.mCurrentCameraSliderLocation < §]t§ / 2)
         {
            this.§?!+§(§""§);
         }
         else
         {
            this.§?!+§(§1!Q§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§?!+§(§""§);
      }
      
      public function goToCastleView() : void
      {
         this.§?!+§(§1!Q§);
      }
      
      public function §?!+§(param1:int) : void
      {
         this.§ p§.x = this.§]^§;
         this.§ p§.y = this.§#=§;
         this.§ p§.scale = §>!'§;
         this.§7z§ = §>!'§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]t§)
         {
            return true;
         }
         if(this.mCurrentAction == §1!Q§)
         {
            return true;
         }
         return false;
      }
      
      public function §3O§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §""§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!E§(param1:§>w§) : void
      {
         this.§4!"§ = param1;
         if(this.§4!"§ != null)
         {
            this.§;!N§ = new §>w§();
            this.§;!N§.x = this.§]^§;
            this.§;!N§.y = this.§#=§;
            this.§;!N§.scale = §>!'§;
         }
         else
         {
            this.§]^§ = this.§;!N§.x;
            this.§#=§ = this.§;!N§.y;
            §>!'§ = this.§;!N§.scale;
            this.§;!N§ = null;
         }
      }
      
      protected function §]P§() : void
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
         var _loc3_:Number = this.§>!A§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§#P§,Math.min(this.§=!6§,_loc3_));
         if(_loc3_ != this.§>!A§)
         {
            this.§>!A§ = _loc3_;
            this.§]P§();
         }
      }
      
      public function §+v§() : Number
      {
         return (this.§-Y§ - this.§#P§) / (this.§=!6§ - this.§#P§);
      }
      
      public function §<!>§(param1:Number) : void
      {
         this.§-Y§ = Math.min(Math.max(param1,0),1) * (this.§=!6§ - this.§#P§) + this.§#P§;
      }
      
      public function §^!0§() : void
      {
         this.§>!A§ = Math.max(this.§>!A§ - 0.5,0.5);
      }
      
      public function §"z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§>!A§;
         _loc1_ += " mXcenterB2: " + this.§]^§;
         _loc1_ += " mYcenterB2: " + this.§#=§;
         _loc1_ += " mXcenterB2target: " + this.§>!A§;
         _loc1_ += "\n mYcenterB2target: " + this.§>!A§;
         _loc1_ += " mXcenterB2previous: " + this.§>!A§;
         _loc1_ += " mYcenterB2previous: " + this.§>!A§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§>!A§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§>!A§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§>!A§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§>!A§;
         _loc1_ += " mTargetScale: " + this.§>!A§;
         _loc1_ += " mTargetScalePrevious: " + this.§>!A§;
         _loc1_ += " mCastleCameraX: " + this.§>!A§;
         _loc1_ += "\n mCastleCameraY: " + this.§>!A§;
         _loc1_ += " mCastleCameraScale: " + this.§>!A§;
         _loc1_ += " mBirdCameraX: " + this.§>!A§;
         _loc1_ += " mBirdCameraY: " + this.§>!A§;
         _loc1_ += " mBirdCameraScale: " + this.§>!A§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§>!A§;
         _loc1_ += " mScreenTopScroll: " + this.§>!A§;
         _loc1_ += " mDragging: " + this.§>!A§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§>!A§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§>!A§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§>!A§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§>!A§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§>!A§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§>!A§;
         _loc1_ += " mDraggingTimer: " + this.§>!A§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§>!A§;
         _loc1_ += " mCameraBorderRight: " + this.§>!A§;
         _loc1_ += " mCameraBorderSky: " + this.§>!A§;
         _loc1_ += " mCameraBorderGround: " + this.§>!A§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§>!A§ + "\n ");
      }
   }
}
