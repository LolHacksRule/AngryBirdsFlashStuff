package §@!?§
{
   import §'D§.§8e§;
   import §0H§.§0!&§;
   import §0H§.§1+§;
   import §1!§.§@!Q§;
   import §8!`§.§4J§;
   import §8!`§.§5!C§;
   import §]!D§.§@!]§;
   
   public class §9Z§
   {
      
      public static const §3_§:Number = 1.25;
      
      public static const §7!K§:Number = 0.15;
      
      public static const §&W§:Number = §@!Q§.§`!N§ * §4J§.§<W§;
      
      public static const §+!8§:Number = §@!Q§.§1!9§ * §4J§.§<W§;
      
      public static const §#s§:Number = 0.1;
      
      public static const §^w§:int = 1500;
      
      public static const §%<§:int = 10;
      
      public static const §&!0§:int = 15;
      
      public static const §],§:int = 300;
      
      public static const §-d§:int = 1000;
      
      public static const §`!'§:int = 10000;
      
      public static const §3!Y§:int = §`!'§ / 50;
      
      public static const §&A§:int = 0;
      
      public static const §?3§:int = 1;
      
      public static const §-a§:int = 2;
      
      public static const §8Q§:int = 3;
      
      public static const §>6§:int = 4;
      
      public static const §-!=§:int = 5;
      
      public static const §`!M§:String = "CASTLE";
      
      public static const §`!I§:String = "SLINGSHOT";
      
      protected static var §5!Y§:Number;
      
      public static var §3!`§:Number;
      
      public static var §^!<§:Number;
      
      public static const §4X§:Number = 2000;
       
      
      private var §&&§:Number = 1.0;
      
      private var §%$§:Number = 0.2;
      
      protected var §try §:Number;
      
      protected var §@d§:Number;
      
      protected var §=!L§:Number;
      
      public var §'N§:§4J§;
      
      public var §[s§:Number;
      
      public var §`!-§:Number;
      
      private var §1!E§:§8!=§;
      
      private var §>!I§:§8!=§;
      
      public var §`a§:Number;
      
      public var §^!Z§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §%q§:Number;
      
      public var §8!M§:Number;
      
      public var §4r§:Number;
      
      public var §'q§:Number;
      
      private var §1D§:Number;
      
      private var §"!C§:§ use§;
      
      private var §@!A§:§ use§;
      
      protected var §#!-§:Number = 0;
      
      protected var §-C§:Number = 0;
      
      protected var §;m§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §!!&§:Number = 0;
      
      public var §=#§:Boolean = true;
      
      public var §?]§:Number = 0;
      
      public var §=-§:Number = 0;
      
      public var §@2§:Number = 0;
      
      public var §7P§:Number = 0;
      
      public var §85§:Number = 0;
      
      public var § !P§:Number = 0;
      
      public var §=u§:Number = 0;
      
      public var §!Y§:Number = 0;
      
      public var §[]§:Number = 0;
      
      private var §''§:§ use§;
      
      public var §?[§:Number = 0;
      
      private var §90§:Number = 0;
      
      private var §8!&§:Number = 0;
      
      private var §<u§:§1+§ = null;
      
      private var § 1§:§1+§ = null;
      
      public function §9Z§(param1:§4J§, param2:§0!&§, param3:Number = 1.0)
      {
         this.§''§ = new § use§(0,0,1,false);
         super();
         this.§@d§ = 0;
         this.§=!L§ = 0;
         this.§'N§ = param1;
         §9Z§.§5!Y§ = 1;
         this.§&&§ = Math.max(1,Math.min(2,param3));
         this.§try § = this.§&&§;
         this.§-s§(param2);
         if(this.§1!E§ && this.§>!I§)
         {
            this.§-!Z§();
            this.§#!-§ = this.§1!E§.x - this.§>!I§.x;
            this.§-C§ = this.§1!E§.y - this.§>!I§.y;
            this.§;m§ = this.§1!E§.scale - this.§>!I§.scale;
            this.§@d§ = this.§1!E§.x;
            this.§=!L§ = this.§1!E§.y;
            §5!Y§ = this.§1!E§.scale * this.§try §;
         }
         this.mCurrentCameraSliderLocation = §`!'§;
         this.§=#§ = true;
         this.§!!&§ = §`!'§ / 500;
      }
      
      private static function §[_§() : Number
      {
         var _loc1_:Number = §@!Q§.§'!§ / §@!Q§.§2!M§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §9t§() : Number
      {
         return §5!Y§ * §[_§();
      }
      
      public function get manualScale() : Number
      {
         return this.§try §;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§try § = param1;
      }
      
      public function get §<T§() : Number
      {
         return this.§1D§;
      }
      
      public function §+m§() : Number
      {
         return §&W§ / (this.§8!M§ - this.§%q§);
      }
      
      public function get §]!L§() : Number
      {
         return this.§&&§;
      }
      
      public function get §7[§() : Number
      {
         return this.§%$§;
      }
      
      public function §-!H§(param1:Number) : void
      {
         this.§try § = param1;
         this.§8!1§();
         this.§+U§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §-!=§)
         {
            return;
         }
         this.goToCastleView();
         this.§?]§ = 2000;
         this.§"!0§();
         this.§6!G§();
         this.§6!^§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§@d§ = this.§>!I§.x;
         this.§=!L§ = this.§>!I§.y;
         this.§=#§ = false;
         this.§!!&§ = §`!'§ / 160000 * param1;
         this.§,'§(§-!=§);
      }
      
      public function §-!Z§() : void
      {
         this.§%q§ = this.§>!I§.x - §&W§ / this.§>!I§.scale / 2;
         this.§8!M§ = this.§1!E§.x + §&W§ / this.§1!E§.scale / 2;
         this.§4r§ = this.§'N§.§[!_§.§,!3§ - 20 * §4J§.§;!4§ * §4J§.§<W§;
         this.§'q§ = this.§'N§.§[!_§.§,!3§ + 4;
         var _loc1_:Number = §&W§ / (this.§8!M§ - this.§%q§);
         this.§1D§ = this.§'q§ - §+!8§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§'N§ = null;
      }
      
      public function §-s§(param1:§0!&§) : void
      {
         var _loc3_:§1+§ = null;
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
         while(_loc2_ < param1.§0c§)
         {
            _loc3_ = param1.§=A§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§@!#§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §+!8§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §&W§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §`!I§)
            {
               this.§>!I§ = new §8!=§(_loc9_,_loc10_,_loc13_,true);
               this.§@!A§ = new § use§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §`!M§)
            {
               this.§1!E§ = new §8!=§(_loc9_,_loc10_,_loc13_,false);
               this.§"!C§ = new § use§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §8e§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §6n§(param1:§0!&§) : void
      {
         var _loc2_:§1+§ = new §1+§();
         _loc2_.id = §`!I§;
         _loc2_.x = this.§>!I§.x;
         _loc2_.y = this.§>!I§.y;
         var _loc3_:Number = §&W§ / this.§>!I§.scale / 2;
         var _loc4_:Number = §+!8§ / this.§>!I§.scale / 2;
         _loc2_.left = this.§>!I§.x - _loc3_;
         _loc2_.right = this.§>!I§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§1+§;
         (_loc5_ = new §1+§()).id = §`!M§;
         _loc5_.x = this.§1!E§.x;
         _loc5_.y = this.§1!E§.y;
         var _loc6_:Number = §&W§ / this.§1!E§.scale / 2;
         var _loc7_:Number = §+!8§ / this.§1!E§.scale / 2;
         _loc5_.left = this.§1!E§.x - _loc6_;
         _loc5_.right = this.§1!E§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§]Z§();
         param1.§!!H§(_loc2_);
         param1.§!!H§(_loc5_);
      }
      
      public function §@!#§(param1:§1+§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §@!Q§.§`!N§ * 0.5 / _loc2_ * §4J§.§<W§;
         var _loc4_:Number = param1.y - §@!Q§.§1!9§ * 0.5 / _loc2_ * §4J§.§<W§;
         var _loc5_:Number = _loc3_ + §@!Q§.§`!N§ / _loc2_ * §4J§.§<W§;
         var _loc6_:Number = _loc4_ + §@!Q§.§1!9§ / _loc2_ * §4J§.§<W§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §-!V§(param1:§8!=§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§!!&§;
         if(_loc3_ >= §`!'§)
         {
            _loc3_ = §`!'§;
            this.§,'§(§&A§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§,'§(§&A§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §9>§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§!!&§;
         var _loc4_:Number = -§`!'§ * 0.7;
         if(_loc2_ >= §`!'§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §`!'§;
            }
            this.§!!&§ = -this.§!!&§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §7c§(param1:Number) : void
      {
         if(this.mCurrentAction == §-!=§)
         {
            this.§9>§(param1);
         }
         else if(this.mCurrentAction == §?3§)
         {
            this.§-!V§(this.§1!E§,param1);
         }
         else if(this.mCurrentAction == §-a§)
         {
            this.§-!V§(this.§>!I§,-param1);
         }
         else if(this.mCurrentAction == §8Q§)
         {
            this.§=#§ = true;
         }
         else if(this.mCurrentAction == §>6§)
         {
            this.§?!&§(param1);
         }
      }
      
      public function §#K§(param1:Number) : void
      {
         if(this.§<u§)
         {
            this.§@d§ = this.§<u§.x;
            this.§=!L§ = this.§<u§.y;
            §5!Y§ = §&W§ / (this.§<u§.right - this.§<u§.left);
         }
         else
         {
            this.§8!1§();
            this.§7c§(param1);
            this.§[b§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§"!0§();
         this.§6!G§();
         this.§6!^§();
      }
      
      private function §+k§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@!A§.scale + (this.§"!C§.scale - this.§@!A§.scale) * param1;
         var _loc4_:Number = this.§@!A§.x + (this.§"!C§.x - this.§@!A§.x) * param1;
         var _loc5_:Number = this.§@!A§.y + (this.§"!C§.y - this.§@!A§.y) * param1;
         this.§''§.x -= (this.§''§.x - _loc4_) * param2;
         this.§''§.y -= (this.§''§.y - _loc5_) * param2;
         this.§''§.scale -= (this.§''§.scale - _loc3_) * param2;
      }
      
      protected function §+U§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#!-§ != 0)
         {
            if(!this.§=#§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §`!'§;
            this.§+k§(_loc3_,param2);
            this.§@d§ = this.§''§.x;
            this.§=!L§ = this.§''§.y;
            §5!Y§ = this.§''§.scale;
         }
      }
      
      public function §[b§(param1:Number, param2:Number) : void
      {
         var _loc5_:§@!]§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §`!'§)
         {
            this.§=#§ = true;
         }
         if(this.mCurrentAction == §8Q§)
         {
            if(!this.§'N§.activeObject)
            {
               this.§,'§(§?3§);
               this.§[]§ = §-d§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§'N§.activeObject).§^!_§().GetPosition().x + (!!_loc5_.§1!Q§ ? _loc5_.§1!Q§ * §4J§.§<W§ : 0);
               _loc7_ = _loc5_.§^!_§().GetPosition().y + (!!_loc5_.§<!M§ ? _loc5_.§<!M§ * §4J§.§<W§ : 0);
               if((_loc8_ = _loc5_.§^!_§().GetLinearVelocity().x) > 0 && this.§#!-§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§#!-§ * §`!'§;
               }
               if(param1 >= §`!'§)
               {
                  param1 = §`!'§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §`!'§;
               this.§+k§(_loc9_,_loc4_);
               _loc10_ = this.§''§.x - §&W§ * 0.5 / this.§''§.scale;
               _loc11_ = this.§''§.y - §+!8§ * 0.5 / this.§''§.scale;
               _loc12_ = this.§''§.x + §&W§ * 0.5 / this.§''§.scale;
               _loc13_ = this.§''§.y + §+!8§ * 0.5 / this.§''§.scale;
               _loc14_ = 150 * §4J§.§<W§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§%q§,_loc15_);
               _loc17_ = Math.min(this.§8!M§,_loc17_);
               _loc19_ = Math.abs(§&W§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§+!8§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§''§.scale)
               {
                  _loc21_ = this.§''§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §&W§ * 0.5 / _loc21_ > this.§8!M§)
               {
                  _loc15_ = (_loc17_ = this.§8!M§) - §&W§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§%q§)
                  {
                     _loc15_ = this.§%q§;
                  }
               }
               if(_loc22_ - §&W§ * 0.5 / _loc21_ < this.§%q§)
               {
                  _loc17_ = (_loc15_ = this.§%q§) + §&W§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§8!M§)
                  {
                     _loc17_ = this.§8!M§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§&W§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §&W§ * 0.5 / _loc21_ < this.§4r§)
               {
                  _loc23_ = this.§4r§ + §&W§ * 0.5 / _loc21_;
               }
               this.§@d§ -= (this.§@d§ - _loc22_) * _loc4_;
               this.§?[§ -= (this.§?[§ - _loc21_) * _loc4_;
               §5!Y§ = this.§?[§;
               this.§=!L§ -= (this.§=!L§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§8!M§ || _loc6_ <= this.§%q§)
               {
                  this.§''§.scale = §5!Y§;
                  this.§''§.x = this.§@d§;
                  this.§''§.y = this.§=!L§;
               }
            }
         }
         else
         {
            this.§+U§(param1,_loc4_);
         }
      }
      
      public function §&!6§(param1:Number, param2:Number) : void
      {
         this.§90§ = param1;
         this.§8!&§ = param2;
      }
      
      private function §^3§(param1:§ use§, param2:§8!=§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §7!K§ + (param2.scale - §7!K§) * this.§try § * §9Z§.§[_§();
         if(§&W§ / param1.scale > this.§8!M§ - this.§%q§)
         {
            _loc3_ = §&W§ / (this.§8!M§ - this.§%q§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@7§(param1:§ use§, param2:§8!=§) : Boolean
      {
         var _loc3_:Boolean = this.§^3§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §+!8§ * 0.5 / param1.scale;
         var _loc5_:Number = §+!8§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §&W§ * 0.5 / param1.scale) < this.§%q§ && param1.§,;§)
         {
            param1.x += this.§%q§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §&W§ * 0.5 / param1.scale) > this.§8!M§ && !param1.§,;§)
         {
            param1.x += this.§8!M§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §1[§(param1:§ use§, param2:§8!=§) : Number
      {
         return (param1.scale - §7!K§) / (§9Z§.§[_§() * (param2.scale - §7!K§));
      }
      
      protected function §8!1§() : void
      {
         this.§@7§(this.§@!A§,this.§>!I§);
         var _loc1_:Number = this.§1[§(this.§@!A§,this.§>!I§);
         this.§@7§(this.§"!C§,this.§1!E§);
         var _loc2_:Number = this.§1[§(this.§"!C§,this.§1!E§);
         this.§try § = Math.min(_loc1_,_loc2_);
      }
      
      public function §"!0§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§'N§.sprite)
         {
            _loc1_ = §@!Q§.§%!_§() / §@!Q§.§'!§ - §@!Q§.§1!9§ >> 1;
            §3!`§ = this.§'N§.sprite.x = §4J§.§7G§ * ((1 - §9Z§.§9t§) / 2);
            §^!<§ = this.§'N§.sprite.y = _loc1_ + §4J§.§;!4§ * (1 - §9Z§.§9t§) * §5!C§.§5N§;
         }
      }
      
      public function §6!^§() : void
      {
         if(this.§'N§.sprite)
         {
            this.§'N§.sprite.scaleX = §9t§;
            this.§'N§.sprite.scaleY = §9t§;
         }
      }
      
      public function §6!G§() : void
      {
         var _loc1_:Number = this.§@d§ / §4J§.§<W§ + this.§90§;
         var _loc2_:Number = this.§=!L§ / §4J§.§<W§ + this.§8!&§;
         this.§`a§ = _loc1_ - §4J§.§7G§ / 2 * §@!Q§.§'!§ / §@!Q§.§%!>§;
         this.§^!Z§ = _loc2_ - §4J§.§;!4§ / 2 + §5!C§.§!"§;
         if(this.§'N§.background)
         {
            this.§'N§.background.§<0§(this.§`a§,this.§^!Z§);
         }
         if(this.§'N§.objects)
         {
            this.§'N§.objects.§<0§(this.§`a§,this.§^!Z§);
         }
         if(this.§'N§.mLevelEngine)
         {
            this.§'N§.mLevelEngine.§<0§(this.§`a§,this.§^!Z§,§9t§);
         }
         if(this.§'N§.slingshot)
         {
            this.§'N§.slingshot.§<0§(this.§`a§,this.§^!Z§);
         }
         if(this.§'N§.particles)
         {
            this.§'N§.particles.§<0§(this.§`a§,this.§^!Z§);
         }
      }
      
      protected function §6D§() : void
      {
         this.§,'§(§>6§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§[]§ = -1;
         this.§6D§();
         this.§85§ = this.§=u§ = this.§@2§ = param1;
         this.§ !P§ = this.§!Y§ = this.§7P§ = param2;
         this.§=-§ = 0;
         this.§''§.x = this.§@d§;
         this.§''§.y = this.§=!L§;
         this.§''§.scale = §5!Y§;
         this.§?[§ = §5!Y§;
         if(Math.abs(this.§"!C§.x - this.§@!A§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§@d§ - this.§@!A§.x) / (this.§"!C§.x - this.§@!A§.x) * §`!'§;
         }
         this.mDragging = true;
      }
      
      public function §?!&§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§=-§ += param1;
         var _loc3_:Number = this.§85§ - this.§=u§;
         if(this.§#!-§ > 0)
         {
            _loc2_ -= _loc3_ * §4J§.§<W§ / §9t§ / this.§#!-§ * §`!'§;
            this.§=#§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§=#§ = true;
            }
            if(_loc2_ > §`!'§)
            {
               _loc2_ += (§`!'§ - _loc2_) * 0.3;
               this.§=#§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§=u§ = this.§85§;
      }
      
      protected function §^!@§() : Boolean
      {
         return this.mCurrentAction == §>6§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§85§ = param1;
            this.§ !P§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §>6§)
         {
            this.§,'§(§&A§);
            if(param1 > 0)
            {
               this.§85§ = param1;
            }
            _loc3_ = Math.abs(this.§85§ - this.§@2§);
            if(this.§=-§ < §^w§ && _loc3_ >= §%<§ && _loc3_ >= §&!0§ * this.§=-§ / 1000)
            {
               if(this.§85§ < this.§@2§)
               {
                  this.§,'§(§?3§);
               }
               else
               {
                  this.§,'§(§-a§);
               }
               this.§!!&§ = _loc3_ / this.§=-§ * 10;
               this.§=#§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§=#§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §`!'§)
               {
                  this.§=#§ = true;
               }
            }
            else if(this.§=-§ < §],§)
            {
               this.§=E§();
               this.§!!&§ = §`!'§ / (§`!'§ / 500);
               this.§=#§ = true;
            }
            else
            {
               this.§?!&§(0);
               this.§4%§(0);
               this.§!!&§ = §`!'§ / (§`!'§ / 500);
               this.§=#§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §=E§() : void
      {
         if(this.mCurrentAction == §?3§)
         {
            this.§,'§(§-a§);
         }
         else if(this.mCurrentAction == §-a§)
         {
            this.§,'§(§?3§);
         }
         else if(this.mCurrentCameraSliderLocation >= §`!'§ / 2)
         {
            this.§,'§(§-a§);
         }
         else if(this.mCurrentCameraSliderLocation <= §`!'§ / 2)
         {
            this.§,'§(§?3§);
         }
      }
      
      public function §4%§(param1:int) : void
      {
         this.§[]§ = param1;
         if(this.mCurrentCameraSliderLocation < §`!'§ / 2)
         {
            this.§,'§(§-a§);
         }
         else
         {
            this.§,'§(§?3§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§,'§(§-a§);
      }
      
      public function goToCastleView() : void
      {
         this.§,'§(§?3§);
      }
      
      public function §,'§(param1:int) : void
      {
         this.§''§.x = this.§@d§;
         this.§''§.y = this.§=!L§;
         this.§''§.scale = §5!Y§;
         this.§?[§ = §5!Y§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §`!'§)
         {
            return true;
         }
         if(this.mCurrentAction == §?3§)
         {
            return true;
         }
         return false;
      }
      
      public function §]!Z§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §-a§)
         {
            return true;
         }
         return false;
      }
      
      public function §[!5§(param1:§1+§) : void
      {
         this.§<u§ = param1;
         if(this.§<u§ != null)
         {
            this.§ 1§ = new §1+§();
            this.§ 1§.x = this.§@d§;
            this.§ 1§.y = this.§=!L§;
            this.§ 1§.scale = §5!Y§;
         }
         else
         {
            this.§@d§ = this.§ 1§.x;
            this.§=!L§ = this.§ 1§.y;
            §5!Y§ = this.§ 1§.scale;
            this.§ 1§ = null;
         }
      }
      
      protected function §1!R§() : void
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
         var _loc3_:Number = this.§try §;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§7[§,Math.min(this.§]!L§,_loc3_));
         if(_loc3_ != this.§try §)
         {
            this.§try § = _loc3_;
            this.§1!R§();
         }
      }
      
      public function §5!R§() : Number
      {
         return (this.manualScale - this.§7[§) / (this.§]!L§ - this.§7[§);
      }
      
      public function §8c§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§]!L§ - this.§7[§) + this.§7[§;
      }
      
      public function §2!2§() : void
      {
         this.§try § = Math.max(this.§try § - 0.5,0.5);
      }
      
      public function § M§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§try §;
         _loc1_ += " mXcenterB2: " + this.§@d§;
         _loc1_ += " mYcenterB2: " + this.§=!L§;
         _loc1_ += " mXcenterB2target: " + this.§try §;
         _loc1_ += "\n mYcenterB2target: " + this.§try §;
         _loc1_ += " mXcenterB2previous: " + this.§try §;
         _loc1_ += " mYcenterB2previous: " + this.§try §;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§try §;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§try §;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§try §;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§try §;
         _loc1_ += " mTargetScale: " + this.§try §;
         _loc1_ += " mTargetScalePrevious: " + this.§try §;
         _loc1_ += " mCastleCameraX: " + this.§try §;
         _loc1_ += "\n mCastleCameraY: " + this.§try §;
         _loc1_ += " mCastleCameraScale: " + this.§try §;
         _loc1_ += " mBirdCameraX: " + this.§try §;
         _loc1_ += " mBirdCameraY: " + this.§try §;
         _loc1_ += " mBirdCameraScale: " + this.§try §;
         _loc1_ += "\n mScreenLeftScroll: " + this.§try §;
         _loc1_ += " mScreenTopScroll: " + this.§try §;
         _loc1_ += " mDragging: " + this.§try §;
         _loc1_ += " mDraggingPointPreviousX: " + this.§try §;
         _loc1_ += " mDraggingPointPreviousY: " + this.§try §;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§try §;
         _loc1_ += " mDraggingPointCurrentY: " + this.§try §;
         _loc1_ += " mDraggingPointOriginalX: " + this.§try §;
         _loc1_ += " mDraggingPointOriginalY: " + this.§try §;
         _loc1_ += " mDraggingTimer: " + this.§try §;
         _loc1_ += "\n mCameraBorderLeft: " + this.§try §;
         _loc1_ += " mCameraBorderRight: " + this.§try §;
         _loc1_ += " mCameraBorderSky: " + this.§try §;
         _loc1_ += " mCameraBorderGround: " + this.§try §;
         return _loc1_ + (" mPigsAreOnRight: " + this.§try § + "\n ");
      }
   }
}
