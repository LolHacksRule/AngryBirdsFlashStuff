package §`u§
{
   import §0!2§.§#!&§;
   import §0!2§.§5"L§;
   import §3!#§.§5"A§;
   import §5!G§.§&2§;
   import §[x§.§%3§;
   import §`!n§.§#!s§;
   import §`!n§.§2!z§;
   
   public class §5!-§
   {
      
      public static const §4"D§:Number = 1.25;
      
      public static const §&"%§:Number = 0.15;
      
      public static const §@!7§:Number = §&2§.§5!f§ * §5"L§.§@>§;
      
      public static const §[!r§:Number = §&2§.§#!h§ * §5"L§.§@>§;
      
      public static const §=!!§:Number = 0.1;
      
      public static const §4!m§:int = 1500;
      
      public static const §["-§:int = 10;
      
      public static const § " §:int = 15;
      
      public static const §-!0§:int = 300;
      
      public static const §@!_§:int = 1000;
      
      public static const §,""§:int = 10000;
      
      public static const §;U§:int = §,""§ / 50;
      
      public static const §;!v§:int = 0;
      
      public static const §-z§:int = 1;
      
      public static const §%!U§:int = 2;
      
      public static const §#"L§:int = 3;
      
      public static const §`"5§:int = 4;
      
      public static const §=!'§:int = 5;
      
      public static const §^!?§:String = "CASTLE";
      
      public static const §4!y§:String = "SLINGSHOT";
      
      protected static var §&>§:Number;
      
      public static var §!"$§:Number;
      
      public static var §]#§:Number;
      
      public static const §<Z§:Number = 2000;
       
      
      private var § !@§:Number = 1.0;
      
      private var §1!H§:Number = 0.2;
      
      protected var §7"!§:Number;
      
      protected var §]!t§:Number;
      
      protected var §6w§:Number;
      
      public var §^!"§:§5"L§;
      
      public var §?!%§:Number;
      
      public var §,Q§:Number;
      
      protected var §true§:§set §;
      
      protected var § "1§:§set §;
      
      public var §+!2§:Number;
      
      public var §"'§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §3!'§:Number;
      
      public var §4"F§:Number;
      
      public var §<"-§:Number;
      
      public var §&!-§:Number;
      
      private var §-!%§:Number;
      
      private var §`!E§:§-K§;
      
      private var §"!L§:§-K§;
      
      protected var §!!x§:Number = 0;
      
      protected var §[?§:Number = 0;
      
      protected var §"!"§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §<!S§:Number = 0;
      
      public var §8!K§:Boolean = true;
      
      public var §2" §:Number = 0;
      
      public var § !x§:Number = 0;
      
      public var §-"K§:Number = 0;
      
      public var §`L§:Number = 0;
      
      public var §@!E§:Number = 0;
      
      public var §'!;§:Number = 0;
      
      public var §7!]§:Number = 0;
      
      public var §,!Q§:Number = 0;
      
      public var §]d§:Number = 0;
      
      private var §#"H§:§-K§;
      
      public var §4!_§:Number = 0;
      
      private var §0N§:Number = 0;
      
      private var §0d§:Number = 0;
      
      private var §#!-§:§2!z§ = null;
      
      private var §>"K§:§2!z§ = null;
      
      public function §5!-§(param1:§5"L§, param2:§#!s§, param3:Number = 1.0)
      {
         this.§#"H§ = new §-K§(0,0,1,false);
         super();
         this.§]!t§ = 0;
         this.§6w§ = 0;
         this.§^!"§ = param1;
         §5!-§.§&>§ = 1;
         this.§ !@§ = Math.max(1,Math.min(2,param3));
         this.§7"!§ = this.§ !@§;
         this.§",§(param2);
         if(this.§true§ && this.§ "1§)
         {
            this.§9!c§();
            this.§!!x§ = this.§true§.x - this.§ "1§.x;
            this.§[?§ = this.§true§.y - this.§ "1§.y;
            this.§"!"§ = this.§true§.scale - this.§ "1§.scale;
            this.§]!t§ = this.§true§.x;
            this.§6w§ = this.§true§.y;
            §&>§ = this.§true§.scale * this.§7"!§;
         }
         this.mCurrentCameraSliderLocation = §,""§;
         this.§8!K§ = true;
         this.§<!S§ = §,""§ / 500;
      }
      
      private static function §6!+§() : Number
      {
         var _loc1_:Number = §&2§.§3"J§ / §&2§.§0"@§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get § m§() : Number
      {
         return §&>§ * §6!+§();
      }
      
      public function get §[!^§() : Number
      {
         return this.§7"!§;
      }
      
      public function set §[!^§(param1:Number) : void
      {
         this.§7"!§ = param1;
      }
      
      public function get §!n§() : Number
      {
         return this.§-!%§;
      }
      
      public function §%"<§() : Number
      {
         return §@!7§ / (this.§4"F§ - this.§3!'§);
      }
      
      public function get §7!I§() : Number
      {
         return this.§ !@§;
      }
      
      public function get §=H§() : Number
      {
         return this.§1!H§;
      }
      
      public function §!"<§(param1:Number) : void
      {
         this.§7"!§ = param1;
         this.§?!`§();
         this.§%2§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §=!'§)
         {
            return;
         }
         this.goToCastleView();
         this.§2" § = 2000;
         this.§?X§();
         this.§'!>§();
         this.§7q§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§]!t§ = this.§ "1§.x;
         this.§6w§ = this.§ "1§.y;
         this.§8!K§ = false;
         this.§<!S§ = §,""§ / 160000 * param1;
         this.§"e§(§=!'§);
      }
      
      public function §9!c§() : void
      {
         this.§3!'§ = this.§ "1§.x - §@!7§ / this.§ "1§.scale / 2;
         this.§4"F§ = this.§true§.x + §@!7§ / this.§true§.scale / 2;
         this.§<"-§ = this.§^!"§.§>9§.§"p§ - 20 * §5"L§.§&"E§ * §5"L§.§@>§;
         this.§&!-§ = this.§^!"§.§>9§.§"p§ + 4;
         var _loc1_:Number = §@!7§ / (this.§4"F§ - this.§3!'§);
         this.§-!%§ = this.§&!-§ - §[!r§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§^!"§ = null;
      }
      
      public function §",§(param1:§#!s§) : void
      {
         var _loc3_:§2!z§ = null;
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
         while(_loc2_ < param1.§>Q§)
         {
            _loc3_ = param1.§[!&§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§<s§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §[!r§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §@!7§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §4!y§)
            {
               this.§ "1§ = new §set §(_loc9_,_loc10_,_loc13_,true);
               this.§"!L§ = new §-K§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §^!?§)
            {
               this.§true§ = new §set §(_loc9_,_loc10_,_loc13_,false);
               this.§`!E§ = new §-K§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §%3§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §1!`§(param1:§#!s§) : void
      {
         var _loc2_:§2!z§ = new §2!z§();
         _loc2_.id = §4!y§;
         _loc2_.x = this.§ "1§.x;
         _loc2_.y = this.§ "1§.y;
         var _loc3_:Number = §@!7§ / this.§ "1§.scale / 2;
         var _loc4_:Number = §[!r§ / this.§ "1§.scale / 2;
         _loc2_.left = this.§ "1§.x - _loc3_;
         _loc2_.right = this.§ "1§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §[!r§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §@!7§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§2!z§;
         (_loc7_ = new §2!z§()).id = §^!?§;
         _loc7_.x = this.§true§.x;
         _loc7_.y = this.§true§.y;
         var _loc8_:Number = §@!7§ / this.§true§.scale / 2;
         var _loc9_:Number = §[!r§ / this.§true§.scale / 2;
         _loc7_.left = this.§true§.x - _loc8_;
         _loc7_.right = this.§true§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §[!r§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §@!7§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§^l§();
         param1.§`!L§(_loc2_);
         param1.§`!L§(_loc7_);
      }
      
      public function §<s§(param1:§2!z§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §&2§.§5!f§ * 0.5 / _loc2_ * §5"L§.§@>§;
         var _loc4_:Number = param1.y - §&2§.§#!h§ * 0.5 / _loc2_ * §5"L§.§@>§;
         var _loc5_:Number = _loc3_ + §&2§.§5!f§ / _loc2_ * §5"L§.§@>§;
         var _loc6_:Number = _loc4_ + §&2§.§#!h§ / _loc2_ * §5"L§.§@>§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function § !'§(param1:§set §, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§<!S§;
         if(_loc3_ >= §,""§)
         {
            _loc3_ = §,""§;
            this.§"e§(§;!v§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§"e§(§;!v§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function § !Q§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§<!S§;
         var _loc4_:Number = -§,""§ * 0.7;
         if(_loc2_ >= §,""§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §,""§;
            }
            this.§<!S§ = -this.§<!S§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §4q§(param1:Number) : void
      {
         if(this.mCurrentAction == §=!'§)
         {
            this.§ !Q§(param1);
         }
         else if(this.mCurrentAction == §-z§)
         {
            this.§ !'§(this.§true§,param1);
         }
         else if(this.mCurrentAction == §%!U§)
         {
            this.§ !'§(this.§ "1§,-param1);
         }
         else if(this.mCurrentAction == §#"L§)
         {
            this.§8!K§ = true;
         }
         else if(this.mCurrentAction == §`"5§)
         {
            this.§&!I§(param1);
         }
      }
      
      public function §,!^§(param1:Number) : void
      {
         if(this.§#!-§)
         {
            this.§]!t§ = this.§#!-§.x;
            this.§6w§ = this.§#!-§.y;
            §&>§ = §@!7§ / (this.§#!-§.right - this.§#!-§.left);
         }
         else
         {
            this.§?!`§();
            this.§4q§(param1);
            this.§+"K§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?X§();
         this.§'!>§();
         this.§7q§();
      }
      
      private function §?",§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§"!L§.scale + (this.§`!E§.scale - this.§"!L§.scale) * param1;
         var _loc4_:Number = this.§"!L§.x + (this.§`!E§.x - this.§"!L§.x) * param1;
         var _loc5_:Number = this.§"!L§.y + (this.§`!E§.y - this.§"!L§.y) * param1;
         this.§#"H§.x -= (this.§#"H§.x - _loc4_) * param2;
         this.§#"H§.y -= (this.§#"H§.y - _loc5_) * param2;
         this.§#"H§.scale -= (this.§#"H§.scale - _loc3_) * param2;
      }
      
      protected function §%2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!!x§ != 0)
         {
            if(!this.§8!K§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §,""§;
            this.§?",§(_loc3_,param2);
            this.§]!t§ = this.§#"H§.x;
            this.§6w§ = this.§#"H§.y;
            §&>§ = this.§#"H§.scale;
         }
      }
      
      public function §+"K§(param1:Number, param2:Number) : void
      {
         var _loc5_:§5"A§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §,""§)
         {
            this.§8!K§ = true;
         }
         if(this.mCurrentAction == §#"L§)
         {
            if(!this.§^!"§.activeObject)
            {
               this.§"e§(§-z§);
               this.§]d§ = §@!_§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§^!"§.activeObject).§`!y§().GetPosition().x + (!!_loc5_.§%"=§ ? _loc5_.§%"=§ * §5"L§.§@>§ : 0);
               _loc7_ = _loc5_.§`!y§().GetPosition().y + (!!_loc5_.§0!;§ ? _loc5_.§0!;§ * §5"L§.§@>§ : 0);
               if((_loc8_ = _loc5_.§`!y§().GetLinearVelocity().x) > 0 && this.§!!x§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§!!x§ * §,""§;
               }
               if(param1 >= §,""§)
               {
                  param1 = §,""§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §,""§;
               this.§?",§(_loc9_,_loc4_);
               _loc10_ = this.§#"H§.x - §@!7§ * 0.5 / this.§#"H§.scale;
               _loc11_ = this.§#"H§.y - §[!r§ * 0.5 / this.§#"H§.scale;
               _loc12_ = this.§#"H§.x + §@!7§ * 0.5 / this.§#"H§.scale;
               _loc13_ = this.§#"H§.y + §[!r§ * 0.5 / this.§#"H§.scale;
               _loc14_ = 150 * §5"L§.§@>§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§3!'§,_loc15_);
               _loc17_ = Math.min(this.§4"F§,_loc17_);
               _loc19_ = Math.abs(§@!7§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§[!r§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§#"H§.scale)
               {
                  _loc21_ = this.§#"H§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §@!7§ * 0.5 / _loc21_ > this.§4"F§)
               {
                  _loc15_ = (_loc17_ = this.§4"F§) - §@!7§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§3!'§)
                  {
                     _loc15_ = this.§3!'§;
                  }
               }
               if(_loc22_ - §@!7§ * 0.5 / _loc21_ < this.§3!'§)
               {
                  _loc17_ = (_loc15_ = this.§3!'§) + §@!7§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§4"F§)
                  {
                     _loc17_ = this.§4"F§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§@!7§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §@!7§ * 0.5 / _loc21_ < this.§<"-§)
               {
                  _loc23_ = this.§<"-§ + §@!7§ * 0.5 / _loc21_;
               }
               this.§]!t§ -= (this.§]!t§ - _loc22_) * _loc4_;
               this.§4!_§ -= (this.§4!_§ - _loc21_) * _loc4_;
               §&>§ = this.§4!_§;
               this.§6w§ -= (this.§6w§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§4"F§ || _loc6_ <= this.§3!'§)
               {
                  this.§#"H§.scale = §&>§;
                  this.§#"H§.x = this.§]!t§;
                  this.§#"H§.y = this.§6w§;
               }
            }
         }
         else
         {
            this.§%2§(param1,_loc4_);
         }
      }
      
      public function §9!q§(param1:Number, param2:Number) : void
      {
         this.§0N§ = param1;
         this.§0d§ = param2;
      }
      
      private function §`!0§(param1:§-K§, param2:§set §) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §&"%§ + (param2.scale - §&"%§) * this.§7"!§ * §5!-§.§6!+§();
         if(§@!7§ / param1.scale > this.§4"F§ - this.§3!'§)
         {
            _loc3_ = §@!7§ / (this.§4"F§ - this.§3!'§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §?!$§(param1:§-K§, param2:§set §) : Boolean
      {
         var _loc3_:Boolean = this.§`!0§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §[!r§ * 0.5 / param1.scale;
         var _loc5_:Number = §[!r§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §@!7§ * 0.5 / param1.scale) < this.§3!'§ && param1.§=!n§)
         {
            param1.x += this.§3!'§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §@!7§ * 0.5 / param1.scale) > this.§4"F§ && !param1.§=!n§)
         {
            param1.x += this.§4"F§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §8"-§(param1:§-K§, param2:§set §) : Number
      {
         return (param1.scale - §&"%§) / (§5!-§.§6!+§() * (param2.scale - §&"%§));
      }
      
      protected function §?!`§() : void
      {
         this.§?!$§(this.§"!L§,this.§ "1§);
         var _loc1_:Number = this.§8"-§(this.§"!L§,this.§ "1§);
         this.§?!$§(this.§`!E§,this.§true§);
         var _loc2_:Number = this.§8"-§(this.§`!E§,this.§true§);
         this.§7"!§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §?X§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§^!"§.sprite)
         {
            _loc1_ = §&2§.§&!F§() / §&2§.§3"J§ - §&2§.§#!h§ >> 1;
            §!"$§ = this.§^!"§.sprite.x = §5"L§.§9"D§ * ((1 - §5!-§.§ m§) / 2);
            §]#§ = this.§^!"§.sprite.y = _loc1_ + §5"L§.§&"E§ * (1 - §5!-§.§ m§) * §#!&§.§&@§;
         }
      }
      
      public function §7q§() : void
      {
         if(this.§^!"§.sprite)
         {
            this.§^!"§.sprite.scaleX = § m§;
            this.§^!"§.sprite.scaleY = § m§;
         }
      }
      
      public function §'!>§() : void
      {
         var _loc1_:Number = this.§]!t§ / §5"L§.§@>§ + this.§0N§;
         var _loc2_:Number = this.§6w§ / §5"L§.§@>§ + this.§0d§;
         this.§+!2§ = _loc1_ - §5"L§.§9"D§ / 2 * §&2§.§3"J§ / §&2§.§0!T§;
         this.§"'§ = _loc2_ - §5"L§.§&"E§ / 2 + §#!&§.§]"§;
         if(this.§^!"§.background)
         {
            this.§^!"§.background.updateScrollAndScale(this.§+!2§,this.§"'§);
         }
         if(this.§^!"§.objects)
         {
            this.§^!"§.objects.updateScrollAndScale(this.§+!2§,this.§"'§);
         }
         if(this.§^!"§.mLevelEngine)
         {
            this.drawEngineDebug();
         }
         if(this.§^!"§.slingshot)
         {
            this.§^!"§.slingshot.updateScrollAndScale(this.§+!2§,this.§"'§);
         }
         if(this.§^!"§.particles)
         {
            this.§^!"§.particles.updateScrollAndScale(this.§+!2§,this.§"'§);
         }
      }
      
      protected function drawEngineDebug() : void
      {
         this.§^!"§.mLevelEngine.updateScrollAndScale(this.§+!2§,this.§"'§,§&>§);
      }
      
      protected function §,!Y§() : void
      {
         this.§"e§(§`"5§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§]d§ = -1;
         this.§,!Y§();
         this.§@!E§ = this.§7!]§ = this.§-"K§ = param1;
         this.§'!;§ = this.§,!Q§ = this.§`L§ = param2;
         this.§ !x§ = 0;
         this.§#"H§.x = this.§]!t§;
         this.§#"H§.y = this.§6w§;
         this.§#"H§.scale = §&>§;
         this.§4!_§ = §&>§;
         if(Math.abs(this.§`!E§.x - this.§"!L§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§]!t§ - this.§"!L§.x) / (this.§`!E§.x - this.§"!L§.x) * §,""§;
         }
         this.mDragging = true;
      }
      
      public function §&!I§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§ !x§ += param1;
         var _loc3_:Number = this.§@!E§ - this.§7!]§;
         if(this.§!!x§ > 0)
         {
            _loc2_ -= _loc3_ * §5"L§.§@>§ / § m§ / this.§!!x§ * §,""§;
            this.§8!K§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§8!K§ = true;
            }
            if(_loc2_ > §,""§)
            {
               _loc2_ += (§,""§ - _loc2_) * 0.3;
               this.§8!K§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§7!]§ = this.§@!E§;
      }
      
      protected function §`o§() : Boolean
      {
         return this.mCurrentAction == §`"5§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§@!E§ = param1;
            this.§'!;§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §`"5§)
         {
            this.§"e§(§;!v§);
            if(param1 > 0)
            {
               this.§@!E§ = param1;
            }
            _loc3_ = Math.abs(this.§@!E§ - this.§-"K§);
            if(this.§ !x§ < §4!m§ && _loc3_ >= §["-§ && _loc3_ >= § " § * this.§ !x§ / 1000)
            {
               if(this.§@!E§ < this.§-"K§)
               {
                  this.§"e§(§-z§);
               }
               else
               {
                  this.§"e§(§%!U§);
               }
               this.§<!S§ = _loc3_ / this.§ !x§ * 10;
               this.§8!K§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§8!K§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §,""§)
               {
                  this.§8!K§ = true;
               }
            }
            else if(this.§ !x§ < §-!0§)
            {
               this.§;"F§();
               this.§<!S§ = §,""§ / (§,""§ / 500);
               this.§8!K§ = true;
            }
            else
            {
               this.§&!I§(0);
               this.§>!r§(0);
               this.§<!S§ = §,""§ / (§,""§ / 500);
               this.§8!K§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §;"F§() : void
      {
         if(this.mCurrentAction == §-z§)
         {
            this.§"e§(§%!U§);
         }
         else if(this.mCurrentAction == §%!U§)
         {
            this.§"e§(§-z§);
         }
         else if(this.mCurrentCameraSliderLocation >= §,""§ / 2)
         {
            this.§"e§(§%!U§);
         }
         else if(this.mCurrentCameraSliderLocation <= §,""§ / 2)
         {
            this.§"e§(§-z§);
         }
      }
      
      public function §>!r§(param1:int) : void
      {
         this.§]d§ = param1;
         if(this.mCurrentCameraSliderLocation < §,""§ / 2)
         {
            this.§"e§(§%!U§);
         }
         else
         {
            this.§"e§(§-z§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§"e§(§%!U§);
      }
      
      public function goToCastleView() : void
      {
         this.§"e§(§-z§);
      }
      
      public function §"e§(param1:int) : void
      {
         this.§#"H§.x = this.§]!t§;
         this.§#"H§.y = this.§6w§;
         this.§#"H§.scale = §&>§;
         this.§4!_§ = §&>§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §,""§)
         {
            return true;
         }
         if(this.mCurrentAction == §-z§)
         {
            return true;
         }
         return false;
      }
      
      public function §4"'§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §%!U§)
         {
            return true;
         }
         return false;
      }
      
      public function §2"D§(param1:§2!z§) : void
      {
         this.§#!-§ = param1;
         if(this.§#!-§ != null)
         {
            this.§>"K§ = new §2!z§();
            this.§>"K§.x = this.§]!t§;
            this.§>"K§.y = this.§6w§;
            this.§>"K§.scale = §&>§;
         }
         else
         {
            this.§]!t§ = this.§>"K§.x;
            this.§6w§ = this.§>"K§.y;
            §&>§ = this.§>"K§.scale;
            this.§>"K§ = null;
         }
      }
      
      protected function § "0§() : void
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
         var _loc3_:Number = this.§7"!§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§=H§,Math.min(this.§7!I§,_loc3_));
         if(_loc3_ != this.§7"!§)
         {
            this.§7"!§ = _loc3_;
            this.§ "0§();
         }
      }
      
      public function §3L§() : Number
      {
         return (this.§[!^§ - this.§=H§) / (this.§7!I§ - this.§=H§);
      }
      
      public function §>2§(param1:Number) : void
      {
         this.§[!^§ = Math.min(Math.max(param1,0),1) * (this.§7!I§ - this.§=H§) + this.§=H§;
      }
      
      public function §&u§() : void
      {
         this.§7"!§ = Math.max(this.§7"!§ - 0.5,0.5);
      }
      
      public function §;f§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7"!§;
         _loc1_ += " mXcenterB2: " + this.§]!t§;
         _loc1_ += " mYcenterB2: " + this.§6w§;
         _loc1_ += " mXcenterB2target: " + this.§7"!§;
         _loc1_ += "\n mYcenterB2target: " + this.§7"!§;
         _loc1_ += " mXcenterB2previous: " + this.§7"!§;
         _loc1_ += " mYcenterB2previous: " + this.§7"!§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7"!§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7"!§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7"!§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7"!§;
         _loc1_ += " mTargetScale: " + this.§7"!§;
         _loc1_ += " mTargetScalePrevious: " + this.§7"!§;
         _loc1_ += " mCastleCameraX: " + this.§7"!§;
         _loc1_ += "\n mCastleCameraY: " + this.§7"!§;
         _loc1_ += " mCastleCameraScale: " + this.§7"!§;
         _loc1_ += " mBirdCameraX: " + this.§7"!§;
         _loc1_ += " mBirdCameraY: " + this.§7"!§;
         _loc1_ += " mBirdCameraScale: " + this.§7"!§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7"!§;
         _loc1_ += " mScreenTopScroll: " + this.§7"!§;
         _loc1_ += " mDragging: " + this.§7"!§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7"!§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7"!§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7"!§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7"!§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7"!§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7"!§;
         _loc1_ += " mDraggingTimer: " + this.§7"!§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7"!§;
         _loc1_ += " mCameraBorderRight: " + this.§7"!§;
         _loc1_ += " mCameraBorderSky: " + this.§7"!§;
         _loc1_ += " mCameraBorderGround: " + this.§7"!§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7"!§ + "\n ");
      }
      
      public function §#I§() : Number
      {
         return this.§]!t§;
      }
      
      public function § "$§() : Number
      {
         return this.§6w§;
      }
   }
}
