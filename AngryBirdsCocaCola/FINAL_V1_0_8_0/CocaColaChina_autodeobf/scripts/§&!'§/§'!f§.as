package §&!'§
{
   import §%!^§.§"!7§;
   import §%!^§.§0!L§;
   import §&F§.§4]§;
   import §&F§.§>!2§;
   import §0!b§.§#!=§;
   import §^!$§.§?![§;
   import §^=§.§8!6§;
   
   public class §'!f§
   {
      
      public static const §9=§:Number = 1.25;
      
      public static const §5!I§:Number = 0.15;
      
      public static const §function§:Number = §#!=§.§[!]§ * §>!2§.§9d§;
      
      public static const §,I§:Number = §#!=§.§?!E§ * §>!2§.§9d§;
      
      public static const §0^§:Number = 0.1;
      
      public static const §3&§:int = 1500;
      
      public static const §%L§:int = 10;
      
      public static const §!D§:int = 15;
      
      public static const §+!Y§:int = 300;
      
      public static const §%h§:int = 1000;
      
      public static const §;!S§:int = 10000;
      
      public static const §+!1§:int = §;!S§ / 50;
      
      public static const §9n§:int = 0;
      
      public static const §<L§:int = 1;
      
      public static const §5a§:int = 2;
      
      public static const §+!#§:int = 3;
      
      public static const §8!D§:int = 4;
      
      public static const §8m§:int = 5;
      
      public static const §!!6§:String = "CASTLE";
      
      public static const §,!F§:String = "SLINGSHOT";
      
      protected static var §^!_§:Number;
      
      public static var §]<§:Number;
      
      public static var §8!C§:Number;
      
      public static const §6v§:Number = 2000;
       
      
      private var §+§:Number = 1.0;
      
      private var §1!2§:Number = 0.2;
      
      protected var §5!-§:Number;
      
      protected var §<2§:Number;
      
      protected var §3!M§:Number;
      
      public var mLevelMain:§>!2§;
      
      public var §[5§:Number;
      
      public var §`!b§:Number;
      
      private var §7&§:§ !Q§;
      
      private var §'!C§:§ !Q§;
      
      public var §+a§:Number;
      
      public var §6!>§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §=§:Number;
      
      public var §9!S§:Number;
      
      public var §%y§:Number;
      
      public var §7%§:Number;
      
      private var §0!N§:Number;
      
      private var §=i§:§@0§;
      
      private var §1!X§:§@0§;
      
      protected var §1y§:Number = 0;
      
      protected var §[j§:Number = 0;
      
      protected var §1!;§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §0N§:Number = 0;
      
      public var §<!^§:Boolean = true;
      
      public var § !2§:Number = 0;
      
      public var §;Z§:Number = 0;
      
      public var § t§:Number = 0;
      
      public var §=!V§:Number = 0;
      
      public var §=!P§:Number = 0;
      
      public var §!!3§:Number = 0;
      
      public var §?7§:Number = 0;
      
      public var §1!W§:Number = 0;
      
      public var §9!!§:Number = 0;
      
      private var §1!B§:§@0§;
      
      public var §^!+§:Number = 0;
      
      private var §5!C§:Number = 0;
      
      private var §6D§:Number = 0;
      
      private var §@r§:§0!L§ = null;
      
      private var §!H§:§0!L§ = null;
      
      public function §'!f§(param1:§>!2§, param2:§"!7§, param3:Number = 1.0)
      {
         this.§1!B§ = new §@0§(0,0,1,false);
         super();
         this.§<2§ = 0;
         this.§3!M§ = 0;
         this.mLevelMain = param1;
         §'!f§.§^!_§ = 1;
         this.§+§ = Math.max(1,Math.min(2,param3));
         this.§5!-§ = this.§+§;
         this.§6!a§(param2);
         if(this.§7&§ && this.§'!C§)
         {
            this.§]>§();
            this.§1y§ = this.§7&§.x - this.§'!C§.x;
            this.§[j§ = this.§7&§.y - this.§'!C§.y;
            this.§1!;§ = this.§7&§.scale - this.§'!C§.scale;
            this.§<2§ = this.§7&§.x;
            this.§3!M§ = this.§7&§.y;
            §^!_§ = this.§7&§.scale * this.§5!-§;
         }
         this.mCurrentCameraSliderLocation = §;!S§;
         this.§<!^§ = true;
         this.§0N§ = §;!S§ / 500;
      }
      
      private static function §6@§() : Number
      {
         var _loc1_:Number = §#!=§.§,@§ / §#!=§.§>0§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §,!`§() : Number
      {
         return §^!_§ * §6@§();
      }
      
      public function get manualScale() : Number
      {
         return this.§5!-§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§5!-§ = param1;
      }
      
      public function get §0?§() : Number
      {
         return this.§0!N§;
      }
      
      public function §<]§() : Number
      {
         return §function§ / (this.§9!S§ - this.§=§);
      }
      
      public function get §,!e§() : Number
      {
         return this.§+§;
      }
      
      public function get § x§() : Number
      {
         return this.§1!2§;
      }
      
      public function §;!U§(param1:Number) : void
      {
         this.§5!-§ = param1;
         this.§1!1§();
         this.§3!N§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §8m§)
         {
            return;
         }
         this.goToCastleView();
         this.§ !2§ = 2000;
         this.§`!d§();
         this.§=![§();
         this.§#!W§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§<2§ = this.§'!C§.x;
         this.§3!M§ = this.§'!C§.y;
         this.§<!^§ = false;
         this.§0N§ = §;!S§ / 160000 * param1;
         this.§[Y§(§8m§);
      }
      
      public function §]>§() : void
      {
         this.§=§ = this.§'!C§.x - §function§ / this.§'!C§.scale / 2;
         this.§9!S§ = this.§7&§.x + §function§ / this.§7&§.scale / 2;
         this.§%y§ = this.mLevelMain.§&!D§.§]![§ - 20 * §>!2§.§'n§ * §>!2§.§9d§;
         this.§7%§ = this.mLevelMain.§&!D§.§]![§ + 4;
         var _loc1_:Number = §function§ / (this.§9!S§ - this.§=§);
         this.§0!N§ = this.§7%§ - §,I§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §6!a§(param1:§"!7§) : void
      {
         var _loc3_:§0!L§ = null;
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
         while(_loc2_ < param1.§]!U§)
         {
            _loc3_ = param1.§=!]§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§`!O§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §,I§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §function§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §,!F§)
            {
               this.§'!C§ = new § !Q§(_loc9_,_loc10_,_loc13_,true);
               this.§1!X§ = new §@0§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §!!6§)
            {
               this.§7&§ = new § !Q§(_loc9_,_loc10_,_loc13_,false);
               this.§=i§ = new §@0§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §8!6§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §#Q§(param1:§"!7§) : void
      {
         var _loc2_:§0!L§ = new §0!L§();
         _loc2_.id = §,!F§;
         _loc2_.x = this.§'!C§.x;
         _loc2_.y = this.§'!C§.y;
         var _loc3_:Number = §function§ / this.§'!C§.scale / 2;
         var _loc4_:Number = §,I§ / this.§'!C§.scale / 2;
         _loc2_.left = this.§'!C§.x - _loc3_;
         _loc2_.right = this.§'!C§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§0!L§;
         (_loc5_ = new §0!L§()).id = §!!6§;
         _loc5_.x = this.§7&§.x;
         _loc5_.y = this.§7&§.y;
         var _loc6_:Number = §function§ / this.§7&§.scale / 2;
         var _loc7_:Number = §,I§ / this.§7&§.scale / 2;
         _loc5_.left = this.§7&§.x - _loc6_;
         _loc5_.right = this.§7&§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§implements§();
         param1.§%!<§(_loc2_);
         param1.§%!<§(_loc5_);
      }
      
      public function §`!O§(param1:§0!L§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §#!=§.§[!]§ * 0.5 / _loc2_ * §>!2§.§9d§;
         var _loc4_:Number = param1.y - §#!=§.§?!E§ * 0.5 / _loc2_ * §>!2§.§9d§;
         var _loc5_:Number = _loc3_ + §#!=§.§[!]§ / _loc2_ * §>!2§.§9d§;
         var _loc6_:Number = _loc4_ + §#!=§.§?!E§ / _loc2_ * §>!2§.§9d§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §7l§(param1:§ !Q§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§0N§;
         if(_loc3_ >= §;!S§)
         {
            _loc3_ = §;!S§;
            this.§[Y§(§9n§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§[Y§(§9n§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §9!1§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§0N§;
         var _loc4_:Number = -§;!S§ * 0.7;
         if(_loc2_ >= §;!S§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §;!S§;
            }
            this.§0N§ = -this.§0N§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §#!V§(param1:Number) : void
      {
         if(this.mCurrentAction == §8m§)
         {
            this.§9!1§(param1);
         }
         else if(this.mCurrentAction == §<L§)
         {
            this.§7l§(this.§7&§,param1);
         }
         else if(this.mCurrentAction == §5a§)
         {
            this.§7l§(this.§'!C§,-param1);
         }
         else if(this.mCurrentAction == §+!#§)
         {
            this.§<!^§ = true;
         }
         else if(this.mCurrentAction == §8!D§)
         {
            this.§@!]§(param1);
         }
      }
      
      public function §4!B§(param1:Number) : void
      {
         if(this.§@r§)
         {
            this.§<2§ = this.§@r§.x;
            this.§3!M§ = this.§@r§.y;
            §^!_§ = §function§ / (this.§@r§.right - this.§@r§.left);
         }
         else
         {
            this.§1!1§();
            this.§#!V§(param1);
            this.§<!S§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§`!d§();
         this.§=![§();
         this.§#!W§();
      }
      
      private function §#_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1!X§.scale + (this.§=i§.scale - this.§1!X§.scale) * param1;
         var _loc4_:Number = this.§1!X§.x + (this.§=i§.x - this.§1!X§.x) * param1;
         var _loc5_:Number = this.§1!X§.y + (this.§=i§.y - this.§1!X§.y) * param1;
         this.§1!B§.x -= (this.§1!B§.x - _loc4_) * param2;
         this.§1!B§.y -= (this.§1!B§.y - _loc5_) * param2;
         this.§1!B§.scale -= (this.§1!B§.scale - _loc3_) * param2;
      }
      
      protected function §3!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§1y§ != 0)
         {
            if(!this.§<!^§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §;!S§;
            this.§#_§(_loc3_,param2);
            this.§<2§ = this.§1!B§.x;
            this.§3!M§ = this.§1!B§.y;
            §^!_§ = this.§1!B§.scale;
         }
      }
      
      public function §<!S§(param1:Number, param2:Number) : void
      {
         var _loc5_:§?![§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §;!S§)
         {
            this.§<!^§ = true;
         }
         if(this.mCurrentAction == §+!#§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.§[Y§(§<L§);
               this.§9!!§ = §%h§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§#!!§().GetPosition().x + (!!_loc5_.§ ?§ ? _loc5_.§ ?§ * §>!2§.§9d§ : 0);
               _loc7_ = _loc5_.§#!!§().GetPosition().y + (!!_loc5_.§"!6§ ? _loc5_.§"!6§ * §>!2§.§9d§ : 0);
               if((_loc8_ = _loc5_.§#!!§().GetLinearVelocity().x) > 0 && this.§1y§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§1y§ * §;!S§;
               }
               if(param1 >= §;!S§)
               {
                  param1 = §;!S§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §;!S§;
               this.§#_§(_loc9_,_loc4_);
               _loc10_ = this.§1!B§.x - §function§ * 0.5 / this.§1!B§.scale;
               _loc11_ = this.§1!B§.y - §,I§ * 0.5 / this.§1!B§.scale;
               _loc12_ = this.§1!B§.x + §function§ * 0.5 / this.§1!B§.scale;
               _loc13_ = this.§1!B§.y + §,I§ * 0.5 / this.§1!B§.scale;
               _loc14_ = 150 * §>!2§.§9d§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§=§,_loc15_);
               _loc17_ = Math.min(this.§9!S§,_loc17_);
               _loc19_ = Math.abs(§function§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§,I§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§1!B§.scale)
               {
                  _loc21_ = this.§1!B§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §function§ * 0.5 / _loc21_ > this.§9!S§)
               {
                  _loc15_ = (_loc17_ = this.§9!S§) - §function§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§=§)
                  {
                     _loc15_ = this.§=§;
                  }
               }
               if(_loc22_ - §function§ * 0.5 / _loc21_ < this.§=§)
               {
                  _loc17_ = (_loc15_ = this.§=§) + §function§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§9!S§)
                  {
                     _loc17_ = this.§9!S§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§function§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §function§ * 0.5 / _loc21_ < this.§%y§)
               {
                  _loc23_ = this.§%y§ + §function§ * 0.5 / _loc21_;
               }
               this.§<2§ -= (this.§<2§ - _loc22_) * _loc4_;
               this.§^!+§ -= (this.§^!+§ - _loc21_) * _loc4_;
               §^!_§ = this.§^!+§;
               this.§3!M§ -= (this.§3!M§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§9!S§ || _loc6_ <= this.§=§)
               {
                  this.§1!B§.scale = §^!_§;
                  this.§1!B§.x = this.§<2§;
                  this.§1!B§.y = this.§3!M§;
               }
            }
         }
         else
         {
            this.§3!N§(param1,_loc4_);
         }
      }
      
      public function §@!!§(param1:Number, param2:Number) : void
      {
         this.§5!C§ = param1;
         this.§6D§ = param2;
      }
      
      private function §'1§(param1:§@0§, param2:§ !Q§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §5!I§ + (param2.scale - §5!I§) * this.§5!-§ * §'!f§.§6@§();
         if(§function§ / param1.scale > this.§9!S§ - this.§=§)
         {
            _loc3_ = §function§ / (this.§9!S§ - this.§=§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §%m§(param1:§@0§, param2:§ !Q§) : Boolean
      {
         var _loc3_:Boolean = this.§'1§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §,I§ * 0.5 / param1.scale;
         var _loc5_:Number = §,I§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §function§ * 0.5 / param1.scale) < this.§=§ && param1.§^_§)
         {
            param1.x += this.§=§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §function§ * 0.5 / param1.scale) > this.§9!S§ && !param1.§^_§)
         {
            param1.x += this.§9!S§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §^-§(param1:§@0§, param2:§ !Q§) : Number
      {
         return (param1.scale - §5!I§) / (§'!f§.§6@§() * (param2.scale - §5!I§));
      }
      
      protected function §1!1§() : void
      {
         this.§%m§(this.§1!X§,this.§'!C§);
         var _loc1_:Number = this.§^-§(this.§1!X§,this.§'!C§);
         this.§%m§(this.§=i§,this.§7&§);
         var _loc2_:Number = this.§^-§(this.§=i§,this.§7&§);
         this.§5!-§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §`!d§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §#!=§.§&§() / §#!=§.§,@§ - §#!=§.§?!E§ >> 1;
            §]<§ = this.mLevelMain.sprite.x = §>!2§.§1M§ * ((1 - §'!f§.§,!`§) / 2);
            §8!C§ = this.mLevelMain.sprite.y = _loc1_ + §>!2§.§'n§ * (1 - §'!f§.§,!`§) * §4]§.§2T§;
         }
      }
      
      public function §#!W§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §,!`§;
            this.mLevelMain.sprite.scaleY = §,!`§;
         }
      }
      
      public function §=![§() : void
      {
         var _loc1_:Number = this.§<2§ / §>!2§.§9d§ + this.§5!C§;
         var _loc2_:Number = this.§3!M§ / §>!2§.§9d§ + this.§6D§;
         this.§+a§ = _loc1_ - §>!2§.§1M§ / 2 * §#!=§.§,@§ / §#!=§.each;
         this.§6!>§ = _loc2_ - §>!2§.§'n§ / 2 + §4]§.§=>§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§,!Q§(this.§+a§,this.§6!>§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§,!Q§(this.§+a§,this.§6!>§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§,!Q§(this.§+a§,this.§6!>§,§,!`§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§,!Q§(this.§+a§,this.§6!>§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§,!Q§(this.§+a§,this.§6!>§);
         }
      }
      
      protected function § k§() : void
      {
         this.§[Y§(§8!D§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§9!!§ = -1;
         this.§ k§();
         this.§=!P§ = this.§?7§ = this.§ t§ = param1;
         this.§!!3§ = this.§1!W§ = this.§=!V§ = param2;
         this.§;Z§ = 0;
         this.§1!B§.x = this.§<2§;
         this.§1!B§.y = this.§3!M§;
         this.§1!B§.scale = §^!_§;
         this.§^!+§ = §^!_§;
         if(Math.abs(this.§=i§.x - this.§1!X§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§<2§ - this.§1!X§.x) / (this.§=i§.x - this.§1!X§.x) * §;!S§;
         }
         this.mDragging = true;
      }
      
      public function §@!]§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§;Z§ += param1;
         var _loc3_:Number = this.§=!P§ - this.§?7§;
         if(this.§1y§ > 0)
         {
            _loc2_ -= _loc3_ * §>!2§.§9d§ / §,!`§ / this.§1y§ * §;!S§;
            this.§<!^§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§<!^§ = true;
            }
            if(_loc2_ > §;!S§)
            {
               _loc2_ += (§;!S§ - _loc2_) * 0.3;
               this.§<!^§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§?7§ = this.§=!P§;
      }
      
      protected function §]6§() : Boolean
      {
         return this.mCurrentAction == §8!D§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§=!P§ = param1;
            this.§!!3§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §8!D§)
         {
            this.§[Y§(§9n§);
            if(param1 > 0)
            {
               this.§=!P§ = param1;
            }
            _loc3_ = Math.abs(this.§=!P§ - this.§ t§);
            if(this.§;Z§ < §3&§ && _loc3_ >= §%L§ && _loc3_ >= §!D§ * this.§;Z§ / 1000)
            {
               if(this.§=!P§ < this.§ t§)
               {
                  this.§[Y§(§<L§);
               }
               else
               {
                  this.§[Y§(§5a§);
               }
               this.§0N§ = _loc3_ / this.§;Z§ * 10;
               this.§<!^§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§<!^§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §;!S§)
               {
                  this.§<!^§ = true;
               }
            }
            else if(this.§;Z§ < §+!Y§)
            {
               this.§%^§();
               this.§0N§ = §;!S§ / (§;!S§ / 500);
               this.§<!^§ = true;
            }
            else
            {
               this.§@!]§(0);
               this.§2!-§(0);
               this.§0N§ = §;!S§ / (§;!S§ / 500);
               this.§<!^§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §%^§() : void
      {
         if(this.mCurrentAction == §<L§)
         {
            this.§[Y§(§5a§);
         }
         else if(this.mCurrentAction == §5a§)
         {
            this.§[Y§(§<L§);
         }
         else if(this.mCurrentCameraSliderLocation >= §;!S§ / 2)
         {
            this.§[Y§(§5a§);
         }
         else if(this.mCurrentCameraSliderLocation <= §;!S§ / 2)
         {
            this.§[Y§(§<L§);
         }
      }
      
      public function §2!-§(param1:int) : void
      {
         this.§9!!§ = param1;
         if(this.mCurrentCameraSliderLocation < §;!S§ / 2)
         {
            this.§[Y§(§5a§);
         }
         else
         {
            this.§[Y§(§<L§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§[Y§(§5a§);
      }
      
      public function goToCastleView() : void
      {
         this.§[Y§(§<L§);
      }
      
      public function §[Y§(param1:int) : void
      {
         this.§1!B§.x = this.§<2§;
         this.§1!B§.y = this.§3!M§;
         this.§1!B§.scale = §^!_§;
         this.§^!+§ = §^!_§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §;!S§)
         {
            return true;
         }
         if(this.mCurrentAction == §<L§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!d§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §5a§)
         {
            return true;
         }
         return false;
      }
      
      public function §=V§(param1:§0!L§) : void
      {
         this.§@r§ = param1;
         if(this.§@r§ != null)
         {
            this.§!H§ = new §0!L§();
            this.§!H§.x = this.§<2§;
            this.§!H§.y = this.§3!M§;
            this.§!H§.scale = §^!_§;
         }
         else
         {
            this.§<2§ = this.§!H§.x;
            this.§3!M§ = this.§!H§.y;
            §^!_§ = this.§!H§.scale;
            this.§!H§ = null;
         }
      }
      
      protected function §-9§() : void
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
         var _loc3_:Number = this.§5!-§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§ x§,Math.min(this.§,!e§,_loc3_));
         if(_loc3_ != this.§5!-§)
         {
            this.§5!-§ = _loc3_;
            this.§-9§();
         }
      }
      
      public function §,!7§() : Number
      {
         return (this.manualScale - this.§ x§) / (this.§,!e§ - this.§ x§);
      }
      
      public function §8!;§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§,!e§ - this.§ x§) + this.§ x§;
      }
      
      public function §&!,§() : void
      {
         this.§5!-§ = Math.max(this.§5!-§ - 0.5,0.5);
      }
      
      public function §7Z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§5!-§;
         _loc1_ += " mXcenterB2: " + this.§<2§;
         _loc1_ += " mYcenterB2: " + this.§3!M§;
         _loc1_ += " mXcenterB2target: " + this.§5!-§;
         _loc1_ += "\n mYcenterB2target: " + this.§5!-§;
         _loc1_ += " mXcenterB2previous: " + this.§5!-§;
         _loc1_ += " mYcenterB2previous: " + this.§5!-§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§5!-§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§5!-§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§5!-§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§5!-§;
         _loc1_ += " mTargetScale: " + this.§5!-§;
         _loc1_ += " mTargetScalePrevious: " + this.§5!-§;
         _loc1_ += " mCastleCameraX: " + this.§5!-§;
         _loc1_ += "\n mCastleCameraY: " + this.§5!-§;
         _loc1_ += " mCastleCameraScale: " + this.§5!-§;
         _loc1_ += " mBirdCameraX: " + this.§5!-§;
         _loc1_ += " mBirdCameraY: " + this.§5!-§;
         _loc1_ += " mBirdCameraScale: " + this.§5!-§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§5!-§;
         _loc1_ += " mScreenTopScroll: " + this.§5!-§;
         _loc1_ += " mDragging: " + this.§5!-§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§5!-§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§5!-§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§5!-§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§5!-§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§5!-§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§5!-§;
         _loc1_ += " mDraggingTimer: " + this.§5!-§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§5!-§;
         _loc1_ += " mCameraBorderRight: " + this.§5!-§;
         _loc1_ += " mCameraBorderSky: " + this.§5!-§;
         _loc1_ += " mCameraBorderGround: " + this.§5!-§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§5!-§ + "\n ");
      }
   }
}
