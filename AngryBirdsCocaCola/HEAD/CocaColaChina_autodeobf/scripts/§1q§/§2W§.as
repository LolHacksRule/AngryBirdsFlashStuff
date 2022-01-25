package §1q§
{
   import §'!G§.§1C§;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §4A§.§0![§;
   import §86§.§9]§;
   import §86§.§<!X§;
   import §;+§.§[!3§;
   
   public class §2W§
   {
      
      public static const §[J§:Number = 1.25;
      
      public static const §=I§:Number = 0.15;
      
      public static const §;4§:Number = §,!1§.§ e§ * §&_§.§5-§;
      
      public static const §1f§:Number = §,!1§.§7e§ * §&_§.§5-§;
      
      public static const §=!J§:Number = 0.1;
      
      public static const §>2§:int = 1500;
      
      public static const §0o§:int = 10;
      
      public static const §1!Q§:int = 15;
      
      public static const §0!L§:int = 300;
      
      public static const §#!E§:int = 1000;
      
      public static const §7!S§:int = 10000;
      
      public static const §`h§:int = §7!S§ / 50;
      
      public static const §1L§:int = 0;
      
      public static const §@e§:int = 1;
      
      public static const §!&§:int = 2;
      
      public static const §0s§:int = 3;
      
      public static const §7!M§:int = 4;
      
      public static const §<k§:int = 5;
      
      public static const §&!4§:String = "CASTLE";
      
      public static const §#'§:String = "SLINGSHOT";
      
      protected static var §&!P§:Number;
      
      public static var §%!;§:Number;
      
      public static var §-b§:Number;
      
      public static const §9!?§:Number = 2000;
       
      
      private var §,!A§:Number = 1.0;
      
      private var §50§:Number = 0.2;
      
      protected var §+e§:Number;
      
      protected var §@!V§:Number;
      
      protected var §+!X§:Number;
      
      public var mLevelMain:§&_§;
      
      public var §@!P§:Number;
      
      public var §5!b§:Number;
      
      private var §`!3§:§"l§;
      
      private var §8!]§:§"l§;
      
      public var §^7§:Number;
      
      public var §=d§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §4^§:Number;
      
      public var §-!Y§:Number;
      
      public var §%!I§:Number;
      
      public var §"!!§:Number;
      
      private var §@!4§:Number;
      
      private var §[!^§:§-!^§;
      
      private var §=p§:§-!^§;
      
      protected var §2^§:Number = 0;
      
      protected var §-Q§:Number = 0;
      
      protected var §'!5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §<-§:Number = 0;
      
      public var §2!R§:Boolean = true;
      
      public var §'^§:Number = 0;
      
      public var §0P§:Number = 0;
      
      public var §`-§:Number = 0;
      
      public var §!r§:Number = 0;
      
      public var §+?§:Number = 0;
      
      public var §"c§:Number = 0;
      
      public var §"I§:Number = 0;
      
      public var §]!@§:Number = 0;
      
      public var §6!W§:Number = 0;
      
      private var §#o§:§-!^§;
      
      public var §>G§:Number = 0;
      
      private var §>!`§:Number = 0;
      
      private var §<?§:Number = 0;
      
      private var §'!&§:§<!X§ = null;
      
      private var §>!+§:§<!X§ = null;
      
      public function §2W§(param1:§&_§, param2:§9]§, param3:Number = 1.0)
      {
         this.§#o§ = new §-!^§(0,0,1,false);
         super();
         this.§@!V§ = 0;
         this.§+!X§ = 0;
         this.mLevelMain = param1;
         §2W§.§&!P§ = 1;
         this.§,!A§ = Math.max(1,Math.min(2,param3));
         this.§+e§ = this.§,!A§;
         this.§;!]§(param2);
         if(this.§`!3§ && this.§8!]§)
         {
            this.§4!@§();
            this.§2^§ = this.§`!3§.x - this.§8!]§.x;
            this.§-Q§ = this.§`!3§.y - this.§8!]§.y;
            this.§'!5§ = this.§`!3§.scale - this.§8!]§.scale;
            this.§@!V§ = this.§`!3§.x;
            this.§+!X§ = this.§`!3§.y;
            §&!P§ = this.§`!3§.scale * this.§+e§;
         }
         this.mCurrentCameraSliderLocation = §7!S§;
         this.§2!R§ = true;
         this.§<-§ = §7!S§ / 500;
      }
      
      private static function §[d§() : Number
      {
         var _loc1_:Number = §,!1§.§@!7§ / §,!1§.§"R§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §2!V§() : Number
      {
         return §&!P§ * §[d§();
      }
      
      public function get manualScale() : Number
      {
         return this.§+e§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§+e§ = param1;
      }
      
      public function get §9b§() : Number
      {
         return this.§@!4§;
      }
      
      public function §6!B§() : Number
      {
         return §;4§ / (this.§-!Y§ - this.§4^§);
      }
      
      public function get §6f§() : Number
      {
         return this.§,!A§;
      }
      
      public function get §<!=§() : Number
      {
         return this.§50§;
      }
      
      public function §if §(param1:Number) : void
      {
         this.§+e§ = param1;
         this.§?Z§();
         this.§@v§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §<k§)
         {
            return;
         }
         this.goToCastleView();
         this.§'^§ = 2000;
         this.§8<§();
         this.§3M§();
         this.§@! §();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§@!V§ = this.§8!]§.x;
         this.§+!X§ = this.§8!]§.y;
         this.§2!R§ = false;
         this.§<-§ = §7!S§ / 160000 * param1;
         this.§8D§(§<k§);
      }
      
      public function §4!@§() : void
      {
         this.§4^§ = this.§8!]§.x - §;4§ / this.§8!]§.scale / 2;
         this.§-!Y§ = this.§`!3§.x + §;4§ / this.§`!3§.scale / 2;
         this.§%!I§ = this.mLevelMain.§@I§.§>R§ - 20 * §&_§.§#u§ * §&_§.§5-§;
         this.§"!!§ = this.mLevelMain.§@I§.§>R§ + 4;
         var _loc1_:Number = §;4§ / (this.§-!Y§ - this.§4^§);
         this.§@!4§ = this.§"!!§ - §1f§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §;!]§(param1:§9]§) : void
      {
         var _loc3_:§<!X§ = null;
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
         while(_loc2_ < param1.§+a§)
         {
            _loc3_ = param1.§[!!§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§2G§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §1f§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §;4§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §#'§)
            {
               this.§8!]§ = new §"l§(_loc9_,_loc10_,_loc13_,true);
               this.§=p§ = new §-!^§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §&!4§)
            {
               this.§`!3§ = new §"l§(_loc9_,_loc10_,_loc13_,false);
               this.§[!^§ = new §-!^§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §1C§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §#!X§(param1:§9]§) : void
      {
         var _loc2_:§<!X§ = new §<!X§();
         _loc2_.id = §#'§;
         _loc2_.x = this.§8!]§.x;
         _loc2_.y = this.§8!]§.y;
         var _loc3_:Number = §;4§ / this.§8!]§.scale / 2;
         var _loc4_:Number = §1f§ / this.§8!]§.scale / 2;
         _loc2_.left = this.§8!]§.x - _loc3_;
         _loc2_.right = this.§8!]§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§<!X§;
         (_loc5_ = new §<!X§()).id = §&!4§;
         _loc5_.x = this.§`!3§.x;
         _loc5_.y = this.§`!3§.y;
         var _loc6_:Number = §;4§ / this.§`!3§.scale / 2;
         var _loc7_:Number = §1f§ / this.§`!3§.scale / 2;
         _loc5_.left = this.§`!3§.x - _loc6_;
         _loc5_.right = this.§`!3§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§6!N§();
         param1.§#H§(_loc2_);
         param1.§#H§(_loc5_);
      }
      
      public function §2G§(param1:§<!X§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §,!1§.§ e§ * 0.5 / _loc2_ * §&_§.§5-§;
         var _loc4_:Number = param1.y - §,!1§.§7e§ * 0.5 / _loc2_ * §&_§.§5-§;
         var _loc5_:Number = _loc3_ + §,!1§.§ e§ / _loc2_ * §&_§.§5-§;
         var _loc6_:Number = _loc4_ + §,!1§.§7e§ / _loc2_ * §&_§.§5-§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §'&§(param1:§"l§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§<-§;
         if(_loc3_ >= §7!S§)
         {
            _loc3_ = §7!S§;
            this.§8D§(§1L§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§8D§(§1L§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §3!4§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§<-§;
         var _loc4_:Number = -§7!S§ * 0.7;
         if(_loc2_ >= §7!S§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §7!S§;
            }
            this.§<-§ = -this.§<-§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §-p§(param1:Number) : void
      {
         if(this.mCurrentAction == §<k§)
         {
            this.§3!4§(param1);
         }
         else if(this.mCurrentAction == §@e§)
         {
            this.§'&§(this.§`!3§,param1);
         }
         else if(this.mCurrentAction == §!&§)
         {
            this.§'&§(this.§8!]§,-param1);
         }
         else if(this.mCurrentAction == §0s§)
         {
            this.§2!R§ = true;
         }
         else if(this.mCurrentAction == §7!M§)
         {
            this.§9a§(param1);
         }
      }
      
      public function §9!#§(param1:Number) : void
      {
         if(this.§'!&§)
         {
            this.§@!V§ = this.§'!&§.x;
            this.§+!X§ = this.§'!&§.y;
            §&!P§ = §;4§ / (this.§'!&§.right - this.§'!&§.left);
         }
         else
         {
            this.§?Z§();
            this.§-p§(param1);
            this.§1o§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§8<§();
         this.§3M§();
         this.§@! §();
      }
      
      private function §!9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§=p§.scale + (this.§[!^§.scale - this.§=p§.scale) * param1;
         var _loc4_:Number = this.§=p§.x + (this.§[!^§.x - this.§=p§.x) * param1;
         var _loc5_:Number = this.§=p§.y + (this.§[!^§.y - this.§=p§.y) * param1;
         this.§#o§.x -= (this.§#o§.x - _loc4_) * param2;
         this.§#o§.y -= (this.§#o§.y - _loc5_) * param2;
         this.§#o§.scale -= (this.§#o§.scale - _loc3_) * param2;
      }
      
      protected function §@v§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§2^§ != 0)
         {
            if(!this.§2!R§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §7!S§;
            this.§!9§(_loc3_,param2);
            this.§@!V§ = this.§#o§.x;
            this.§+!X§ = this.§#o§.y;
            §&!P§ = this.§#o§.scale;
         }
      }
      
      public function §1o§(param1:Number, param2:Number) : void
      {
         var _loc5_:§[!3§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §7!S§)
         {
            this.§2!R§ = true;
         }
         if(this.mCurrentAction == §0s§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.§8D§(§@e§);
               this.§6!W§ = §#!E§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).§1!d§().GetPosition().x + (!!_loc5_.§`t§ ? _loc5_.§`t§ * §&_§.§5-§ : 0);
               _loc7_ = _loc5_.§1!d§().GetPosition().y + (!!_loc5_.§+m§ ? _loc5_.§+m§ * §&_§.§5-§ : 0);
               if((_loc8_ = _loc5_.§1!d§().GetLinearVelocity().x) > 0 && this.§2^§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§2^§ * §7!S§;
               }
               if(param1 >= §7!S§)
               {
                  param1 = §7!S§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §7!S§;
               this.§!9§(_loc9_,_loc4_);
               _loc10_ = this.§#o§.x - §;4§ * 0.5 / this.§#o§.scale;
               _loc11_ = this.§#o§.y - §1f§ * 0.5 / this.§#o§.scale;
               _loc12_ = this.§#o§.x + §;4§ * 0.5 / this.§#o§.scale;
               _loc13_ = this.§#o§.y + §1f§ * 0.5 / this.§#o§.scale;
               _loc14_ = 150 * §&_§.§5-§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§4^§,_loc15_);
               _loc17_ = Math.min(this.§-!Y§,_loc17_);
               _loc19_ = Math.abs(§;4§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§1f§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§#o§.scale)
               {
                  _loc21_ = this.§#o§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §;4§ * 0.5 / _loc21_ > this.§-!Y§)
               {
                  _loc15_ = (_loc17_ = this.§-!Y§) - §;4§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§4^§)
                  {
                     _loc15_ = this.§4^§;
                  }
               }
               if(_loc22_ - §;4§ * 0.5 / _loc21_ < this.§4^§)
               {
                  _loc17_ = (_loc15_ = this.§4^§) + §;4§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§-!Y§)
                  {
                     _loc17_ = this.§-!Y§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§;4§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §;4§ * 0.5 / _loc21_ < this.§%!I§)
               {
                  _loc23_ = this.§%!I§ + §;4§ * 0.5 / _loc21_;
               }
               this.§@!V§ -= (this.§@!V§ - _loc22_) * _loc4_;
               this.§>G§ -= (this.§>G§ - _loc21_) * _loc4_;
               §&!P§ = this.§>G§;
               this.§+!X§ -= (this.§+!X§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§-!Y§ || _loc6_ <= this.§4^§)
               {
                  this.§#o§.scale = §&!P§;
                  this.§#o§.x = this.§@!V§;
                  this.§#o§.y = this.§+!X§;
               }
            }
         }
         else
         {
            this.§@v§(param1,_loc4_);
         }
      }
      
      public function §-`§(param1:Number, param2:Number) : void
      {
         this.§>!`§ = param1;
         this.§<?§ = param2;
      }
      
      private function §,r§(param1:§-!^§, param2:§"l§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §=I§ + (param2.scale - §=I§) * this.§+e§ * §2W§.§[d§();
         if(§;4§ / param1.scale > this.§-!Y§ - this.§4^§)
         {
            _loc3_ = §;4§ / (this.§-!Y§ - this.§4^§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §&!K§(param1:§-!^§, param2:§"l§) : Boolean
      {
         var _loc3_:Boolean = this.§,r§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §1f§ * 0.5 / param1.scale;
         var _loc5_:Number = §1f§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §;4§ * 0.5 / param1.scale) < this.§4^§ && param1.§@!X§)
         {
            param1.x += this.§4^§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §;4§ * 0.5 / param1.scale) > this.§-!Y§ && !param1.§@!X§)
         {
            param1.x += this.§-!Y§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §,!K§(param1:§-!^§, param2:§"l§) : Number
      {
         return (param1.scale - §=I§) / (§2W§.§[d§() * (param2.scale - §=I§));
      }
      
      protected function §?Z§() : void
      {
         this.§&!K§(this.§=p§,this.§8!]§);
         var _loc1_:Number = this.§,!K§(this.§=p§,this.§8!]§);
         this.§&!K§(this.§[!^§,this.§`!3§);
         var _loc2_:Number = this.§,!K§(this.§[!^§,this.§`!3§);
         this.§+e§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §8<§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §,!1§.§;!O§() / §,!1§.§@!7§ - §,!1§.§7e§ >> 1;
            §%!;§ = this.mLevelMain.sprite.x = §&_§.§ !>§ * ((1 - §2W§.§2!V§) / 2);
            §-b§ = this.mLevelMain.sprite.y = _loc1_ + §&_§.§#u§ * (1 - §2W§.§2!V§) * §0![§.§4@§;
         }
      }
      
      public function §@! §() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §2!V§;
            this.mLevelMain.sprite.scaleY = §2!V§;
         }
      }
      
      public function §3M§() : void
      {
         var _loc1_:Number = this.§@!V§ / §&_§.§5-§ + this.§>!`§;
         var _loc2_:Number = this.§+!X§ / §&_§.§5-§ + this.§<?§;
         this.§^7§ = _loc1_ - §&_§.§ !>§ / 2 * §,!1§.§@!7§ / §,!1§.§]!L§;
         this.§=d§ = _loc2_ - §&_§.§#u§ / 2 + §0![§.§@!8§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.§'Q§(this.§^7§,this.§=d§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.§'Q§(this.§^7§,this.§=d§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.mLevelMain.mLevelEngine.§'Q§(this.§^7§,this.§=d§);
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.§'Q§(this.§^7§,this.§=d§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.§'Q§(this.§^7§,this.§=d§);
         }
      }
      
      protected function §3!8§() : void
      {
         this.§8D§(§7!M§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§6!W§ = -1;
         this.§3!8§();
         this.§+?§ = this.§"I§ = this.§`-§ = param1;
         this.§"c§ = this.§]!@§ = this.§!r§ = param2;
         this.§0P§ = 0;
         this.§#o§.x = this.§@!V§;
         this.§#o§.y = this.§+!X§;
         this.§#o§.scale = §&!P§;
         this.§>G§ = §&!P§;
         if(Math.abs(this.§[!^§.x - this.§=p§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§@!V§ - this.§=p§.x) / (this.§[!^§.x - this.§=p§.x) * §7!S§;
         }
         this.mDragging = true;
      }
      
      public function §9a§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§0P§ += param1;
         var _loc3_:Number = this.§+?§ - this.§"I§;
         if(this.§2^§ > 0)
         {
            _loc2_ -= _loc3_ * §&_§.§5-§ / §2!V§ / this.§2^§ * §7!S§;
            this.§2!R§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§2!R§ = true;
            }
            if(_loc2_ > §7!S§)
            {
               _loc2_ += (§7!S§ - _loc2_) * 0.3;
               this.§2!R§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"I§ = this.§+?§;
      }
      
      protected function §<E§() : Boolean
      {
         return this.mCurrentAction == §7!M§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§+?§ = param1;
            this.§"c§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7!M§)
         {
            this.§8D§(§1L§);
            if(param1 > 0)
            {
               this.§+?§ = param1;
            }
            _loc3_ = Math.abs(this.§+?§ - this.§`-§);
            if(this.§0P§ < §>2§ && _loc3_ >= §0o§ && _loc3_ >= §1!Q§ * this.§0P§ / 1000)
            {
               if(this.§+?§ < this.§`-§)
               {
                  this.§8D§(§@e§);
               }
               else
               {
                  this.§8D§(§!&§);
               }
               this.§<-§ = _loc3_ / this.§0P§ * 10;
               this.§2!R§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§2!R§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §7!S§)
               {
                  this.§2!R§ = true;
               }
            }
            else if(this.§0P§ < §0!L§)
            {
               this.§"P§();
               this.§<-§ = §7!S§ / (§7!S§ / 500);
               this.§2!R§ = true;
            }
            else
            {
               this.§9a§(0);
               this.§4z§(0);
               this.§<-§ = §7!S§ / (§7!S§ / 500);
               this.§2!R§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"P§() : void
      {
         if(this.mCurrentAction == §@e§)
         {
            this.§8D§(§!&§);
         }
         else if(this.mCurrentAction == §!&§)
         {
            this.§8D§(§@e§);
         }
         else if(this.mCurrentCameraSliderLocation >= §7!S§ / 2)
         {
            this.§8D§(§!&§);
         }
         else if(this.mCurrentCameraSliderLocation <= §7!S§ / 2)
         {
            this.§8D§(§@e§);
         }
      }
      
      public function §4z§(param1:int) : void
      {
         this.§6!W§ = param1;
         if(this.mCurrentCameraSliderLocation < §7!S§ / 2)
         {
            this.§8D§(§!&§);
         }
         else
         {
            this.§8D§(§@e§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§8D§(§!&§);
      }
      
      public function goToCastleView() : void
      {
         this.§8D§(§@e§);
      }
      
      public function §8D§(param1:int) : void
      {
         this.§#o§.x = this.§@!V§;
         this.§#o§.y = this.§+!X§;
         this.§#o§.scale = §&!P§;
         this.§>G§ = §&!P§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §7!S§)
         {
            return true;
         }
         if(this.mCurrentAction == §@e§)
         {
            return true;
         }
         return false;
      }
      
      public function §&$§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §!&§)
         {
            return true;
         }
         return false;
      }
      
      public function §1!L§(param1:§<!X§) : void
      {
         this.§'!&§ = param1;
         if(this.§'!&§ != null)
         {
            this.§>!+§ = new §<!X§();
            this.§>!+§.x = this.§@!V§;
            this.§>!+§.y = this.§+!X§;
            this.§>!+§.scale = §&!P§;
         }
         else
         {
            this.§@!V§ = this.§>!+§.x;
            this.§+!X§ = this.§>!+§.y;
            §&!P§ = this.§>!+§.scale;
            this.§>!+§ = null;
         }
      }
      
      protected function §,>§() : void
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
         var _loc3_:Number = this.§+e§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§<!=§,Math.min(this.§6f§,_loc3_));
         if(_loc3_ != this.§+e§)
         {
            this.§+e§ = _loc3_;
            this.§,>§();
         }
      }
      
      public function §>L§() : Number
      {
         return (this.manualScale - this.§<!=§) / (this.§6f§ - this.§<!=§);
      }
      
      public function §]!8§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§6f§ - this.§<!=§) + this.§<!=§;
      }
      
      public function §&!`§() : void
      {
         this.§+e§ = Math.max(this.§+e§ - 0.5,0.5);
      }
      
      public function §&!$§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§+e§;
         _loc1_ += " mXcenterB2: " + this.§@!V§;
         _loc1_ += " mYcenterB2: " + this.§+!X§;
         _loc1_ += " mXcenterB2target: " + this.§+e§;
         _loc1_ += "\n mYcenterB2target: " + this.§+e§;
         _loc1_ += " mXcenterB2previous: " + this.§+e§;
         _loc1_ += " mYcenterB2previous: " + this.§+e§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§+e§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§+e§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§+e§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§+e§;
         _loc1_ += " mTargetScale: " + this.§+e§;
         _loc1_ += " mTargetScalePrevious: " + this.§+e§;
         _loc1_ += " mCastleCameraX: " + this.§+e§;
         _loc1_ += "\n mCastleCameraY: " + this.§+e§;
         _loc1_ += " mCastleCameraScale: " + this.§+e§;
         _loc1_ += " mBirdCameraX: " + this.§+e§;
         _loc1_ += " mBirdCameraY: " + this.§+e§;
         _loc1_ += " mBirdCameraScale: " + this.§+e§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§+e§;
         _loc1_ += " mScreenTopScroll: " + this.§+e§;
         _loc1_ += " mDragging: " + this.§+e§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§+e§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§+e§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§+e§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§+e§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§+e§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§+e§;
         _loc1_ += " mDraggingTimer: " + this.§+e§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§+e§;
         _loc1_ += " mCameraBorderRight: " + this.§+e§;
         _loc1_ += " mCameraBorderSky: " + this.§+e§;
         _loc1_ += " mCameraBorderGround: " + this.§+e§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§+e§ + "\n ");
      }
   }
}
