package §[!"§
{
   import §#!e§.§1"B§;
   import §#!e§.§2!L§;
   import §6o§.§+!k§;
   import §9"!§.§9!Z§;
   import §9"!§.§9"3§;
   import §9"%§.§&!r§;
   import §]!A§.;
   
   public class §&0§
   {
      
      public static const §;!,§:Number = 1.25;
      
      public static const §@t§:Number = 0.15;
      
      public static const §]C§:Number = §#6§.§;H§ * §9"3§.§'"F§;
      
      public static const §'v§:Number = §#6§.§+P§ * §9"3§.§'"F§;
      
      public static const §`l§:Number = 0.1;
      
      public static const §]!X§:int = 1500;
      
      public static const § !<§:int = 10;
      
      public static const §+<§:int = 15;
      
      public static const §'_§:int = 300;
      
      public static const §3z§:int = 1000;
      
      public static const §#P§:int = 10000;
      
      public static const §,F§:int = §#P§ / 50;
      
      public static const §6L§:int = 0;
      
      public static const §!!4§:int = 1;
      
      public static const §#!"§:int = 2;
      
      public static const §[!M§:int = 3;
      
      public static const §'j§:int = 4;
      
      public static const §]!B§:int = 5;
      
      public static const §#" §:String = "CASTLE";
      
      public static const §["%§:String = "SLINGSHOT";
      
      protected static var §=!t§:Number;
      
      public static var §0"&§:Number;
      
      public static var §7<§:Number;
      
      public static const §-x§:Number = 2000;
       
      
      private var §1!"§:Number = 1.0;
      
      private var § for§:Number = 0.2;
      
      protected var §'!j§:Number;
      
      protected var §>!9§:Number;
      
      protected var §+!`§:Number;
      
      public var §@O§:§9"3§;
      
      public var §>T§:Number;
      
      public var §#!§:Number;
      
      private var §5C§:§;?§;
      
      private var §=!=§:§;?§;
      
      public var §6!K§:Number;
      
      public var §4!E§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §%G§:Number;
      
      public var §+!Q§:Number;
      
      public var §"";§:Number;
      
      public var §;"2§:Number;
      
      private var §?b§:Number;
      
      private var §!d§:§%5§;
      
      private var §;!'§:§%5§;
      
      protected var §@!6§:Number = 0;
      
      protected var §=!A§:Number = 0;
      
      protected var §[!p§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&! §:Number = 0;
      
      public var §1" §:Boolean = true;
      
      public var §+!J§:Number = 0;
      
      public var §[i§:Number = 0;
      
      public var §'"7§:Number = 0;
      
      public var §<-§:Number = 0;
      
      public var §!!E§:Number = 0;
      
      public var §-C§:Number = 0;
      
      public var §9!k§:Number = 0;
      
      public var §2x§:Number = 0;
      
      public var §#T§:Number = 0;
      
      private var §3m§:§%5§;
      
      public var §1c§:Number = 0;
      
      private var §5S§:Number = 0;
      
      private var §,0§:Number = 0;
      
      private var §`i§:§2!L§ = null;
      
      private var §5&§:§2!L§ = null;
      
      public function §&0§(param1:§9"3§, param2:§1"B§, param3:Number = 1.0)
      {
         this.§3m§ = new §%5§(0,0,1,false);
         super();
         this.§>!9§ = 0;
         this.§+!`§ = 0;
         this.§@O§ = param1;
         §&0§.§=!t§ = 1;
         this.§1!"§ = Math.max(1,Math.min(2,param3));
         this.§'!j§ = this.§1!"§;
         this.§@!W§(param2);
         if(this.§5C§ && this.§=!=§)
         {
            this.§5!z§();
            this.§@!6§ = this.§5C§.x - this.§=!=§.x;
            this.§=!A§ = this.§5C§.y - this.§=!=§.y;
            this.§[!p§ = this.§5C§.scale - this.§=!=§.scale;
            this.§>!9§ = this.§5C§.x;
            this.§+!`§ = this.§5C§.y;
            §=!t§ = this.§5C§.scale * this.§'!j§;
         }
         this.mCurrentCameraSliderLocation = §#P§;
         this.§1" § = true;
         this.§&! § = §#P§ / 500;
      }
      
      private static function §2"#§() : Number
      {
         var _loc1_:Number = §#6§.§>!F§ / §#6§.§"e§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §8!F§() : Number
      {
         return §=!t§ * §2"#§();
      }
      
      public function get §+!Z§() : Number
      {
         return this.§'!j§;
      }
      
      public function set §+!Z§(param1:Number) : void
      {
         this.§'!j§ = param1;
      }
      
      public function get §<p§() : Number
      {
         return this.§?b§;
      }
      
      public function §;!O§() : Number
      {
         return §]C§ / (this.§+!Q§ - this.§%G§);
      }
      
      public function get §>E§() : Number
      {
         return this.§1!"§;
      }
      
      public function get §07§() : Number
      {
         return this.§ for§;
      }
      
      public function §&"&§(param1:Number) : void
      {
         this.§'!j§ = param1;
         this.§#!Z§();
         this.§?!q§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §]!B§)
         {
            return;
         }
         this.goToCastleView();
         this.§+!J§ = 2000;
         this.§^!^§();
         this.§`!-§();
         this.§+!F§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§>!9§ = this.§=!=§.x;
         this.§+!`§ = this.§=!=§.y;
         this.§1" § = false;
         this.§&! § = §#P§ / 160000 * param1;
         this.§4"2§(§]!B§);
      }
      
      public function §5!z§() : void
      {
         this.§%G§ = this.§=!=§.x - §]C§ / this.§=!=§.scale / 2;
         this.§+!Q§ = this.§5C§.x + §]C§ / this.§5C§.scale / 2;
         this.§"";§ = this.§@O§.§?l§.§'I§ - 20 * §9"3§.§]!+§ * §9"3§.§'"F§;
         this.§;"2§ = this.§@O§.§?l§.§'I§ + 4;
         var _loc1_:Number = §]C§ / (this.§+!Q§ - this.§%G§);
         this.§?b§ = this.§;"2§ - §'v§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§@O§ = null;
      }
      
      public function §@!W§(param1:§1"B§) : void
      {
         var _loc3_:§2!L§ = null;
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
         while(_loc2_ < param1.§6X§)
         {
            _loc3_ = param1.§[W§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§-!<§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §'v§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §]C§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §["%§)
            {
               this.§=!=§ = new §;?§(_loc9_,_loc10_,_loc13_,true);
               this.§;!'§ = new §%5§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §#" §)
            {
               this.§5C§ = new §;?§(_loc9_,_loc10_,_loc13_,false);
               this.§!d§ = new §%5§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §+!k§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §4!s§(param1:§1"B§) : void
      {
         var _loc2_:§2!L§ = new §2!L§();
         _loc2_.id = §["%§;
         _loc2_.x = this.§=!=§.x;
         _loc2_.y = this.§=!=§.y;
         var _loc3_:Number = §]C§ / this.§=!=§.scale / 2;
         var _loc4_:Number = §'v§ / this.§=!=§.scale / 2;
         _loc2_.left = this.§=!=§.x - _loc3_;
         _loc2_.right = this.§=!=§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§2!L§;
         (_loc5_ = new §2!L§()).id = §#" §;
         _loc5_.x = this.§5C§.x;
         _loc5_.y = this.§5C§.y;
         var _loc6_:Number = §]C§ / this.§5C§.scale / 2;
         var _loc7_:Number = §'v§ / this.§5C§.scale / 2;
         _loc5_.left = this.§5C§.x - _loc6_;
         _loc5_.right = this.§5C§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§]!m§();
         param1.§%!Y§(_loc2_);
         param1.§%!Y§(_loc5_);
      }
      
      public function §-!<§(param1:§2!L§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §#6§.§;H§ * 0.5 / _loc2_ * §9"3§.§'"F§;
         var _loc4_:Number = param1.y - §#6§.§+P§ * 0.5 / _loc2_ * §9"3§.§'"F§;
         var _loc5_:Number = _loc3_ + §#6§.§;H§ / _loc2_ * §9"3§.§'"F§;
         var _loc6_:Number = _loc4_ + §#6§.§+P§ / _loc2_ * §9"3§.§'"F§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §4?§(param1:§;?§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&! §;
         if(_loc3_ >= §#P§)
         {
            _loc3_ = §#P§;
            this.§4"2§(§6L§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§4"2§(§6L§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §8!-§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&! §;
         var _loc4_:Number = -§#P§ * 0.7;
         if(_loc2_ >= §#P§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §#P§;
            }
            this.§&! § = -this.§&! §;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §<@§(param1:Number) : void
      {
         if(this.mCurrentAction == §]!B§)
         {
            this.§8!-§(param1);
         }
         else if(this.mCurrentAction == §!!4§)
         {
            this.§4?§(this.§5C§,param1);
         }
         else if(this.mCurrentAction == §#!"§)
         {
            this.§4?§(this.§=!=§,-param1);
         }
         else if(this.mCurrentAction == §[!M§)
         {
            this.§1" § = true;
         }
         else if(this.mCurrentAction == §'j§)
         {
            this.§"F§(param1);
         }
      }
      
      public function §+E§(param1:Number) : void
      {
         if(this.§`i§)
         {
            this.§>!9§ = this.§`i§.x;
            this.§+!`§ = this.§`i§.y;
            §=!t§ = §]C§ / (this.§`i§.right - this.§`i§.left);
         }
         else
         {
            this.§#!Z§();
            this.§<@§(param1);
            this.§+"4§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§^!^§();
         this.§`!-§();
         this.§+!F§();
      }
      
      private function §,B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§;!'§.scale + (this.§!d§.scale - this.§;!'§.scale) * param1;
         var _loc4_:Number = this.§;!'§.x + (this.§!d§.x - this.§;!'§.x) * param1;
         var _loc5_:Number = this.§;!'§.y + (this.§!d§.y - this.§;!'§.y) * param1;
         this.§3m§.x -= (this.§3m§.x - _loc4_) * param2;
         this.§3m§.y -= (this.§3m§.y - _loc5_) * param2;
         this.§3m§.scale -= (this.§3m§.scale - _loc3_) * param2;
      }
      
      protected function §?!q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§@!6§ != 0)
         {
            if(!this.§1" §)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §#P§;
            this.§,B§(_loc3_,param2);
            this.§>!9§ = this.§3m§.x;
            this.§+!`§ = this.§3m§.y;
            §=!t§ = this.§3m§.scale;
         }
      }
      
      public function §+"4§(param1:Number, param2:Number) : void
      {
         var _loc5_:§&!r§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §#P§)
         {
            this.§1" § = true;
         }
         if(this.mCurrentAction == §[!M§)
         {
            if(!this.§@O§.activeObject)
            {
               this.§4"2§(§!!4§);
               this.§#T§ = §3z§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§@O§.activeObject).§=!y§().GetPosition().x + (!!_loc5_.§>!A§ ? _loc5_.§>!A§ * §9"3§.§'"F§ : 0);
               _loc7_ = _loc5_.§=!y§().GetPosition().y + (!!_loc5_.§ !1§ ? _loc5_.§ !1§ * §9"3§.§'"F§ : 0);
               if((_loc8_ = _loc5_.§=!y§().GetLinearVelocity().x) > 0 && this.§@!6§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§@!6§ * §#P§;
               }
               if(param1 >= §#P§)
               {
                  param1 = §#P§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §#P§;
               this.§,B§(_loc9_,_loc4_);
               _loc10_ = this.§3m§.x - §]C§ * 0.5 / this.§3m§.scale;
               _loc11_ = this.§3m§.y - §'v§ * 0.5 / this.§3m§.scale;
               _loc12_ = this.§3m§.x + §]C§ * 0.5 / this.§3m§.scale;
               _loc13_ = this.§3m§.y + §'v§ * 0.5 / this.§3m§.scale;
               _loc14_ = 150 * §9"3§.§'"F§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§%G§,_loc15_);
               _loc17_ = Math.min(this.§+!Q§,_loc17_);
               _loc19_ = Math.abs(§]C§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§'v§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§3m§.scale)
               {
                  _loc21_ = this.§3m§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §]C§ * 0.5 / _loc21_ > this.§+!Q§)
               {
                  _loc15_ = (_loc17_ = this.§+!Q§) - §]C§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§%G§)
                  {
                     _loc15_ = this.§%G§;
                  }
               }
               if(_loc22_ - §]C§ * 0.5 / _loc21_ < this.§%G§)
               {
                  _loc17_ = (_loc15_ = this.§%G§) + §]C§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§+!Q§)
                  {
                     _loc17_ = this.§+!Q§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§]C§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §]C§ * 0.5 / _loc21_ < this.§"";§)
               {
                  _loc23_ = this.§"";§ + §]C§ * 0.5 / _loc21_;
               }
               this.§>!9§ -= (this.§>!9§ - _loc22_) * _loc4_;
               this.§1c§ -= (this.§1c§ - _loc21_) * _loc4_;
               §=!t§ = this.§1c§;
               this.§+!`§ -= (this.§+!`§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§+!Q§ || _loc6_ <= this.§%G§)
               {
                  this.§3m§.scale = §=!t§;
                  this.§3m§.x = this.§>!9§;
                  this.§3m§.y = this.§+!`§;
               }
            }
         }
         else
         {
            this.§?!q§(param1,_loc4_);
         }
      }
      
      public function §else§(param1:Number, param2:Number) : void
      {
         this.§5S§ = param1;
         this.§,0§ = param2;
      }
      
      private function §!o§(param1:§%5§, param2:§;?§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §@t§ + (param2.scale - §@t§) * this.§'!j§ * §&0§.§2"#§();
         if(§]C§ / param1.scale > this.§+!Q§ - this.§%G§)
         {
            _loc3_ = §]C§ / (this.§+!Q§ - this.§%G§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §8?§(param1:§%5§, param2:§;?§) : Boolean
      {
         var _loc3_:Boolean = this.§!o§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §'v§ * 0.5 / param1.scale;
         var _loc5_:Number = §'v§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §]C§ * 0.5 / param1.scale) < this.§%G§ && param1.§['§)
         {
            param1.x += this.§%G§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §]C§ * 0.5 / param1.scale) > this.§+!Q§ && !param1.§['§)
         {
            param1.x += this.§+!Q§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §`"B§(param1:§%5§, param2:§;?§) : Number
      {
         return (param1.scale - §@t§) / (§&0§.§2"#§() * (param2.scale - §@t§));
      }
      
      protected function §#!Z§() : void
      {
         this.§8?§(this.§;!'§,this.§=!=§);
         var _loc1_:Number = this.§`"B§(this.§;!'§,this.§=!=§);
         this.§8?§(this.§!d§,this.§5C§);
         var _loc2_:Number = this.§`"B§(this.§!d§,this.§5C§);
         this.§'!j§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §^!^§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§@O§.sprite)
         {
            _loc1_ = §#6§.§8h§() / §#6§.§>!F§ - §#6§.§+P§ >> 1;
            §0"&§ = this.§@O§.sprite.x = §9"3§.§=k§ * ((1 - §&0§.§8!F§) / 2);
            §7<§ = this.§@O§.sprite.y = _loc1_ + §9"3§.§]!+§ * (1 - §&0§.§8!F§) * §9!Z§.§,"3§;
         }
      }
      
      public function §+!F§() : void
      {
         if(this.§@O§.sprite)
         {
            this.§@O§.sprite.scaleX = §8!F§;
            this.§@O§.sprite.scaleY = §8!F§;
         }
      }
      
      public function §`!-§() : void
      {
         var _loc1_:Number = this.§>!9§ / §9"3§.§'"F§ + this.§5S§;
         var _loc2_:Number = this.§+!`§ / §9"3§.§'"F§ + this.§,0§;
         this.§6!K§ = _loc1_ - §9"3§.§=k§ / 2 * §#6§.§>!F§ / §#6§.§!;§;
         this.§4!E§ = _loc2_ - §9"3§.§]!+§ / 2 + §9!Z§.§,"&§;
         if(this.§@O§.background)
         {
            this.§@O§.background.updateScrollAndScale(this.§6!K§,this.§4!E§);
         }
         if(this.§@O§.objects)
         {
            this.§@O§.objects.updateScrollAndScale(this.§6!K§,this.§4!E§);
         }
         if(this.§@O§.mLevelEngine)
         {
            this.§@O§.mLevelEngine.updateScrollAndScale(this.§6!K§,this.§4!E§,§8!F§);
         }
         if(this.§@O§.slingshot)
         {
            this.§@O§.slingshot.updateScrollAndScale(this.§6!K§,this.§4!E§);
         }
         if(this.§@O§.particles)
         {
            this.§@O§.particles.updateScrollAndScale(this.§6!K§,this.§4!E§);
         }
      }
      
      protected function §9n§() : void
      {
         this.§4"2§(§'j§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§#T§ = -1;
         this.§9n§();
         this.§!!E§ = this.§9!k§ = this.§'"7§ = param1;
         this.§-C§ = this.§2x§ = this.§<-§ = param2;
         this.§[i§ = 0;
         this.§3m§.x = this.§>!9§;
         this.§3m§.y = this.§+!`§;
         this.§3m§.scale = §=!t§;
         this.§1c§ = §=!t§;
         if(Math.abs(this.§!d§.x - this.§;!'§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§>!9§ - this.§;!'§.x) / (this.§!d§.x - this.§;!'§.x) * §#P§;
         }
         this.mDragging = true;
      }
      
      public function §"F§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[i§ += param1;
         var _loc3_:Number = this.§!!E§ - this.§9!k§;
         if(this.§@!6§ > 0)
         {
            _loc2_ -= _loc3_ * §9"3§.§'"F§ / §8!F§ / this.§@!6§ * §#P§;
            this.§1" § = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§1" § = true;
            }
            if(_loc2_ > §#P§)
            {
               _loc2_ += (§#P§ - _loc2_) * 0.3;
               this.§1" § = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§9!k§ = this.§!!E§;
      }
      
      protected function §!Z§() : Boolean
      {
         return this.mCurrentAction == §'j§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§!!E§ = param1;
            this.§-C§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §'j§)
         {
            this.§4"2§(§6L§);
            if(param1 > 0)
            {
               this.§!!E§ = param1;
            }
            _loc3_ = Math.abs(this.§!!E§ - this.§'"7§);
            if(this.§[i§ < §]!X§ && _loc3_ >= § !<§ && _loc3_ >= §+<§ * this.§[i§ / 1000)
            {
               if(this.§!!E§ < this.§'"7§)
               {
                  this.§4"2§(§!!4§);
               }
               else
               {
                  this.§4"2§(§#!"§);
               }
               this.§&! § = _loc3_ / this.§[i§ * 10;
               this.§1" § = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§1" § = true;
               }
               if(this.mCurrentCameraSliderLocation > §#P§)
               {
                  this.§1" § = true;
               }
            }
            else if(this.§[i§ < §'_§)
            {
               this.§5]§();
               this.§&! § = §#P§ / (§#P§ / 500);
               this.§1" § = true;
            }
            else
            {
               this.§"F§(0);
               this.§]v§(0);
               this.§&! § = §#P§ / (§#P§ / 500);
               this.§1" § = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §5]§() : void
      {
         if(this.mCurrentAction == §!!4§)
         {
            this.§4"2§(§#!"§);
         }
         else if(this.mCurrentAction == §#!"§)
         {
            this.§4"2§(§!!4§);
         }
         else if(this.mCurrentCameraSliderLocation >= §#P§ / 2)
         {
            this.§4"2§(§#!"§);
         }
         else if(this.mCurrentCameraSliderLocation <= §#P§ / 2)
         {
            this.§4"2§(§!!4§);
         }
      }
      
      public function §]v§(param1:int) : void
      {
         this.§#T§ = param1;
         if(this.mCurrentCameraSliderLocation < §#P§ / 2)
         {
            this.§4"2§(§#!"§);
         }
         else
         {
            this.§4"2§(§!!4§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§4"2§(§#!"§);
      }
      
      public function goToCastleView() : void
      {
         this.§4"2§(§!!4§);
      }
      
      public function §4"2§(param1:int) : void
      {
         this.§3m§.x = this.§>!9§;
         this.§3m§.y = this.§+!`§;
         this.§3m§.scale = §=!t§;
         this.§1c§ = §=!t§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §#P§)
         {
            return true;
         }
         if(this.mCurrentAction == §!!4§)
         {
            return true;
         }
         return false;
      }
      
      public function §-h§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §#!"§)
         {
            return true;
         }
         return false;
      }
      
      public function §0!D§(param1:§2!L§) : void
      {
         this.§`i§ = param1;
         if(this.§`i§ != null)
         {
            this.§5&§ = new §2!L§();
            this.§5&§.x = this.§>!9§;
            this.§5&§.y = this.§+!`§;
            this.§5&§.scale = §=!t§;
         }
         else
         {
            this.§>!9§ = this.§5&§.x;
            this.§+!`§ = this.§5&§.y;
            §=!t§ = this.§5&§.scale;
            this.§5&§ = null;
         }
      }
      
      protected function §[!m§() : void
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
         var _loc3_:Number = this.§'!j§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§07§,Math.min(this.§>E§,_loc3_));
         if(_loc3_ != this.§'!j§)
         {
            this.§'!j§ = _loc3_;
            this.§[!m§();
         }
      }
      
      public function §"!o§() : Number
      {
         return (this.§+!Z§ - this.§07§) / (this.§>E§ - this.§07§);
      }
      
      public function §03§(param1:Number) : void
      {
         this.§+!Z§ = Math.min(Math.max(param1,0),1) * (this.§>E§ - this.§07§) + this.§07§;
      }
      
      public function §%!W§() : void
      {
         this.§'!j§ = Math.max(this.§'!j§ - 0.5,0.5);
      }
      
      public function §,o§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§'!j§;
         _loc1_ += " mXcenterB2: " + this.§>!9§;
         _loc1_ += " mYcenterB2: " + this.§+!`§;
         _loc1_ += " mXcenterB2target: " + this.§'!j§;
         _loc1_ += "\n mYcenterB2target: " + this.§'!j§;
         _loc1_ += " mXcenterB2previous: " + this.§'!j§;
         _loc1_ += " mYcenterB2previous: " + this.§'!j§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§'!j§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§'!j§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§'!j§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§'!j§;
         _loc1_ += " mTargetScale: " + this.§'!j§;
         _loc1_ += " mTargetScalePrevious: " + this.§'!j§;
         _loc1_ += " mCastleCameraX: " + this.§'!j§;
         _loc1_ += "\n mCastleCameraY: " + this.§'!j§;
         _loc1_ += " mCastleCameraScale: " + this.§'!j§;
         _loc1_ += " mBirdCameraX: " + this.§'!j§;
         _loc1_ += " mBirdCameraY: " + this.§'!j§;
         _loc1_ += " mBirdCameraScale: " + this.§'!j§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§'!j§;
         _loc1_ += " mScreenTopScroll: " + this.§'!j§;
         _loc1_ += " mDragging: " + this.§'!j§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§'!j§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§'!j§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§'!j§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§'!j§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§'!j§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§'!j§;
         _loc1_ += " mDraggingTimer: " + this.§'!j§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§'!j§;
         _loc1_ += " mCameraBorderRight: " + this.§'!j§;
         _loc1_ += " mCameraBorderSky: " + this.§'!j§;
         _loc1_ += " mCameraBorderGround: " + this.§'!j§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§'!j§ + "\n ");
      }
   }
}
