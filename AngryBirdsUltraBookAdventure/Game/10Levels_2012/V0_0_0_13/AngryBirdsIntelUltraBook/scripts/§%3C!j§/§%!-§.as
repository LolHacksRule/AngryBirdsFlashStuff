package §<!j§
{
   import § D§.§]!B§;
   import §"L§.§;c§;
   import §"L§.LevelModel;
   import §2!H§.§1H§;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §6b§.Log;
   
   public class §%!-§
   {
      
      public static const §4R§:Number = 1.25;
      
      public static const §[!+§:Number = 0.15;
      
      public static const §^!9§:Number = §]!B§.SCREEN_WIDTH * LevelMain.§8N§;
      
      public static const §#!>§:Number = §]!B§.SCREEN_HEIGHT * LevelMain.§8N§;
      
      public static const §`s§:Number = 0.1;
      
      public static const §&!T§:int = 1500;
      
      public static const §0!C§:int = 10;
      
      public static const §'!H§:int = 15;
      
      public static const §try §:int = 300;
      
      public static const §,G§:int = 1000;
      
      public static const §[!a§:int = 10000;
      
      public static const §1O§:int = §[!a§ / 50;
      
      public static const §0=§:int = 0;
      
      public static const §"!H§:int = 1;
      
      public static const §`z§:int = 2;
      
      public static const §]3§:int = 3;
      
      public static const § d§:int = 4;
      
      public static const §^8§:int = 5;
      
      public static const §"!?§:String = "CASTLE";
      
      public static const §&!$§:String = "SLINGSHOT";
      
      protected static var §,!J§:Number;
      
      public static var §^6§:Number;
      
      public static var §<!!§:Number;
      
      public static const §]!h§:Number = 2000;
       
      
      private var §&!4§:Number = 1.0;
      
      private var §<j§:Number = 0.2;
      
      protected var §5!6§:Number;
      
      protected var §var §:Number;
      
      protected var §]"§:Number;
      
      public var §"!>§:LevelMain;
      
      public var §,Z§:Number;
      
      public var §%!i§:Number;
      
      private var §3P§:§5S§;
      
      private var §!!H§:§5S§;
      
      public var §@!N§:Number;
      
      public var §2O§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §'Q§:Number;
      
      public var §0!d§:Number;
      
      public var §^!S§:Number;
      
      public var § !1§:Number;
      
      private var §6j§:Number;
      
      private var §5!d§:§5!Y§;
      
      private var §!V§:§5!Y§;
      
      protected var §;$§:Number = 0;
      
      protected var §>f§:Number = 0;
      
      protected var §!M§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §@!J§:Number = 0;
      
      public var §%!d§:Boolean = true;
      
      public var §>%§:Number = 0;
      
      public var §@q§:Number = 0;
      
      public var § !+§:Number = 0;
      
      public var §#7§:Number = 0;
      
      public var §`!S§:Number = 0;
      
      public var §-J§:Number = 0;
      
      public var §8!a§:Number = 0;
      
      public var §`!X§:Number = 0;
      
      public var §8o§:Number = 0;
      
      private var §3!R§:§5!Y§;
      
      public var §!s§:Number = 0;
      
      private var §;f§:Number = 0;
      
      private var §22§:Number = 0;
      
      private var §+r§:§;c§ = null;
      
      private var §%![§:§;c§ = null;
      
      public function §%!-§(param1:LevelMain, param2:LevelModel, param3:Number = 1.0)
      {
         this.§3!R§ = new §5!Y§(0,0,1,false);
         super();
         this.§var § = 0;
         this.§]"§ = 0;
         this.§"!>§ = param1;
         §%!-§.§,!J§ = 1;
         this.§&!4§ = Math.max(1,Math.min(2,param3));
         this.§5!6§ = this.§&!4§;
         this.§<L§(param2);
         if(this.§3P§ && this.§!!H§)
         {
            this.§[!E§();
            this.§;$§ = this.§3P§.x - this.§!!H§.x;
            this.§>f§ = this.§3P§.y - this.§!!H§.y;
            this.§!M§ = this.§3P§.scale - this.§!!H§.scale;
            this.§var § = this.§3P§.x;
            this.§]"§ = this.§3P§.y;
            §,!J§ = this.§3P§.scale * this.§5!6§;
         }
         this.mCurrentCameraSliderLocation = §[!a§;
         this.§%!d§ = true;
         this.§@!J§ = §[!a§ / 500;
      }
      
      private static function §<I§() : Number
      {
         var _loc1_:Number = §]!B§.§^F§ / §]!B§.§9$§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §?!I§() : Number
      {
         return §,!J§ * §<I§();
      }
      
      public function get §^!3§() : Number
      {
         return this.§5!6§;
      }
      
      public function set §^!3§(param1:Number) : void
      {
         this.§5!6§ = param1;
      }
      
      public function get §;!&§() : Number
      {
         return this.§6j§;
      }
      
      public function §5r§() : Number
      {
         return §^!9§ / (this.§0!d§ - this.§'Q§);
      }
      
      public function get §5!T§() : Number
      {
         return this.§&!4§;
      }
      
      public function get §`,§() : Number
      {
         return this.§<j§;
      }
      
      public function §]!`§(param1:Number) : void
      {
         this.§5!6§ = param1;
         this.§3`§();
         this.§4!Z§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §^8§)
         {
            return;
         }
         this.goToCastleView();
         this.§>%§ = 2000;
         this.§ R§();
         this.§7!%§();
         this.§<!F§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§var § = this.§!!H§.x;
         this.§]"§ = this.§!!H§.y;
         this.§%!d§ = false;
         this.§@!J§ = §[!a§ / 160000 * param1;
         this.§>7§(§^8§);
      }
      
      public function §[!E§() : void
      {
         this.§'Q§ = this.§!!H§.x - §^!9§ / this.§!!H§.scale / 2;
         this.§0!d§ = this.§3P§.x + §^!9§ / this.§3P§.scale / 2;
         this.§^!S§ = this.§"!>§.§'g§.§ !c§ - 20 * LevelMain.§0O§ * LevelMain.§8N§;
         this.§ !1§ = this.§"!>§.§'g§.§ !c§ + 4;
         var _loc1_:Number = §^!9§ / (this.§0!d§ - this.§'Q§);
         this.§6j§ = this.§ !1§ - §#!>§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§"!>§ = null;
      }
      
      public function §<L§(param1:LevelModel) : void
      {
         var _loc3_:§;c§ = null;
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
         while(_loc2_ < param1.§8L§)
         {
            _loc3_ = param1.§]t§(_loc2_);
            _loc4_ = _loc3_.id;
            _loc4_ = _loc4_.toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§8!%§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §#!>§ / (_loc8_ - _loc7_);
            _loc12_ = §^!9§ / (_loc6_ - _loc5_);
            _loc13_ = _loc12_ < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §&!$§)
            {
               this.§!!H§ = new §5S§(_loc9_,_loc10_,_loc13_,true);
               this.§!V§ = new §5!Y§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §"!?§)
            {
               this.§3P§ = new §5S§(_loc9_,_loc10_,_loc13_,false);
               this.§5!d§ = new §5!Y§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §"^§(param1:LevelModel) : void
      {
         var _loc2_:§;c§ = new §;c§();
         _loc2_.id = §&!$§;
         _loc2_.x = this.§!!H§.x;
         _loc2_.y = this.§!!H§.y;
         var _loc3_:Number = §^!9§ / this.§!!H§.scale / 2;
         var _loc4_:Number = §#!>§ / this.§!!H§.scale / 2;
         _loc2_.left = this.§!!H§.x - _loc3_;
         _loc2_.right = this.§!!H§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§;c§ = new §;c§();
         _loc5_.id = §"!?§;
         _loc5_.x = this.§3P§.x;
         _loc5_.y = this.§3P§.y;
         var _loc6_:Number = §^!9§ / this.§3P§.scale / 2;
         var _loc7_:Number = §#!>§ / this.§3P§.scale / 2;
         _loc5_.left = this.§3P§.x - _loc6_;
         _loc5_.right = this.§3P§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§^!4§();
         param1.§>!j§(_loc2_);
         param1.§>!j§(_loc5_);
      }
      
      public function §8!%§(param1:§;c§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §]!B§.SCREEN_WIDTH * 0.5 / _loc2_ * LevelMain.§8N§;
         var _loc4_:Number = param1.y - §]!B§.SCREEN_HEIGHT * 0.5 / _loc2_ * LevelMain.§8N§;
         var _loc5_:Number = _loc3_ + §]!B§.SCREEN_WIDTH / _loc2_ * LevelMain.§8N§;
         var _loc6_:Number = _loc4_ + §]!B§.SCREEN_HEIGHT / _loc2_ * LevelMain.§8N§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §?;§(param1:§5S§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§@!J§;
         if(_loc3_ >= §[!a§)
         {
            _loc3_ = §[!a§;
            this.§>7§(§0=§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§>7§(§0=§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §"Z§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§@!J§;
         var _loc4_:Number = -§[!a§ * 0.7;
         if(_loc2_ >= §[!a§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §[!a§;
            }
            this.§@!J§ = -this.§@!J§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §"S§(param1:Number) : void
      {
         if(this.mCurrentAction == §^8§)
         {
            this.§"Z§(param1);
         }
         else if(this.mCurrentAction == §"!H§)
         {
            this.§?;§(this.§3P§,param1);
         }
         else if(this.mCurrentAction == §`z§)
         {
            this.§?;§(this.§!!H§,-param1);
         }
         else if(this.mCurrentAction == §]3§)
         {
            this.§%!d§ = true;
         }
         else if(this.mCurrentAction == § d§)
         {
            this.§0!P§(param1);
         }
      }
      
      public function §7l§(param1:Number) : void
      {
         if(this.§+r§)
         {
            this.§var § = this.§+r§.x;
            this.§]"§ = this.§+r§.y;
            §,!J§ = §^!9§ / (this.§+r§.right - this.§+r§.left);
         }
         else
         {
            this.§3`§();
            this.§"S§(param1);
            this.§2u§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§ R§();
         this.§7!%§();
         this.§<!F§();
      }
      
      private function §6!X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!V§.scale + (this.§5!d§.scale - this.§!V§.scale) * param1;
         var _loc4_:Number = this.§!V§.x + (this.§5!d§.x - this.§!V§.x) * param1;
         var _loc5_:Number = this.§!V§.y + (this.§5!d§.y - this.§!V§.y) * param1;
         this.§3!R§.x -= (this.§3!R§.x - _loc4_) * param2;
         this.§3!R§.y -= (this.§3!R§.y - _loc5_) * param2;
         this.§3!R§.scale -= (this.§3!R§.scale - _loc3_) * param2;
      }
      
      protected function §4!Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;$§ != 0)
         {
            if(!this.§%!d§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §[!a§;
            this.§6!X§(_loc3_,param2);
            this.§var § = this.§3!R§.x;
            this.§]"§ = this.§3!R§.y;
            §,!J§ = this.§3!R§.scale;
         }
      }
      
      public function §2u§(param1:Number, param2:Number) : void
      {
         var _loc5_:LevelObject = null;
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
         var _loc4_:Number = _loc3_ * 3.5;
         if(_loc4_ > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §[!a§)
         {
            this.§%!d§ = true;
         }
         if(this.mCurrentAction == §]3§)
         {
            if(!this.§"!>§.activeObject)
            {
               this.§>7§(§"!H§);
               this.§8o§ = §,G§;
            }
            else
            {
               _loc5_ = this.§"!>§.activeObject;
               _loc6_ = _loc5_.§9f§().GetPosition().x + (Boolean(_loc5_.§&!<§) ? _loc5_.§&!<§ * LevelMain.§8N§ : 0);
               _loc7_ = _loc5_.§9f§().GetPosition().y + (Boolean(_loc5_.§2! §) ? _loc5_.§2! § * LevelMain.§8N§ : 0);
               _loc8_ = _loc5_.§9f§().GetLinearVelocity().x;
               if(_loc8_ > 0 && this.§;$§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§;$§ * §[!a§;
               }
               if(param1 >= §[!a§)
               {
                  param1 = §[!a§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §[!a§;
               this.§6!X§(_loc9_,_loc4_);
               _loc10_ = this.§3!R§.x - §^!9§ * 0.5 / this.§3!R§.scale;
               _loc11_ = this.§3!R§.y - §#!>§ * 0.5 / this.§3!R§.scale;
               _loc12_ = this.§3!R§.x + §^!9§ * 0.5 / this.§3!R§.scale;
               _loc13_ = this.§3!R§.y + §#!>§ * 0.5 / this.§3!R§.scale;
               _loc14_ = 150 * LevelMain.§8N§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§'Q§,_loc15_);
               _loc17_ = Math.min(this.§0!d§,_loc17_);
               _loc19_ = Math.abs(§^!9§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§#!>§ / (_loc18_ - _loc16_));
               _loc21_ = Math.min(_loc19_,_loc20_);
               if(_loc21_ > this.§3!R§.scale)
               {
                  _loc21_ = this.§3!R§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §^!9§ * 0.5 / _loc21_ > this.§0!d§)
               {
                  _loc17_ = this.§0!d§;
                  _loc15_ = _loc17_ - §^!9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§'Q§)
                  {
                     _loc15_ = this.§'Q§;
                  }
               }
               if(_loc22_ - §^!9§ * 0.5 / _loc21_ < this.§'Q§)
               {
                  _loc15_ = this.§'Q§;
                  _loc17_ = _loc15_ + §^!9§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§0!d§)
                  {
                     _loc17_ = this.§0!d§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§^!9§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §^!9§ * 0.5 / _loc21_ < this.§^!S§)
               {
                  _loc23_ = this.§^!S§ + §^!9§ * 0.5 / _loc21_;
               }
               this.§var § -= (this.§var § - _loc22_) * _loc4_;
               this.§!s§ -= (this.§!s§ - _loc21_) * _loc4_;
               §,!J§ = this.§!s§;
               this.§]"§ -= (this.§]"§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§0!d§ || _loc6_ <= this.§'Q§)
               {
                  this.§3!R§.scale = §,!J§;
                  this.§3!R§.x = this.§var §;
                  this.§3!R§.y = this.§]"§;
               }
            }
         }
         else
         {
            this.§4!Z§(param1,_loc4_);
         }
      }
      
      public function §=^§(param1:Number, param2:Number) : void
      {
         this.§;f§ = param1;
         this.§22§ = param2;
      }
      
      private function §;!N§(param1:§5!Y§, param2:§5S§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §[!+§ + (param2.scale - §[!+§) * this.§5!6§ * §%!-§.§<I§();
         if(§^!9§ / param1.scale > this.§0!d§ - this.§'Q§)
         {
            _loc3_ = §^!9§ / (this.§0!d§ - this.§'Q§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §;d§(param1:§5!Y§, param2:§5S§) : Boolean
      {
         var _loc3_:Boolean = this.§;!N§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §#!>§ * 0.5 / param1.scale;
         var _loc5_:Number = §#!>§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number = param1.x - §^!9§ * 0.5 / param1.scale;
         if(_loc6_ < this.§'Q§ && param1.§>H§)
         {
            param1.x += this.§'Q§ - _loc6_;
         }
         var _loc7_:Number = param1.x + §^!9§ * 0.5 / param1.scale;
         if(_loc7_ > this.§0!d§ && !param1.§>H§)
         {
            param1.x += this.§0!d§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §1j§(param1:§5!Y§, param2:§5S§) : Number
      {
         return (param1.scale - §[!+§) / (§%!-§.§<I§() * (param2.scale - §[!+§));
      }
      
      protected function §3`§() : void
      {
         this.§;d§(this.§!V§,this.§!!H§);
         var _loc1_:Number = this.§1j§(this.§!V§,this.§!!H§);
         this.§;d§(this.§5!d§,this.§3P§);
         var _loc2_:Number = this.§1j§(this.§5!d§,this.§3P§);
         this.§5!6§ = Math.min(_loc1_,_loc2_);
      }
      
      public function § R§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§"!>§.sprite)
         {
            _loc1_ = §]!B§.§=w§() / §]!B§.§^F§ - §]!B§.SCREEN_HEIGHT >> 1;
            §^6§ = this.§"!>§.sprite.x = LevelMain.§6v§ * ((1 - §%!-§.§?!I§) / 2);
            §<!!§ = this.§"!>§.sprite.y = _loc1_ + LevelMain.§0O§ * (1 - §%!-§.§?!I§) * §1H§.§>;§;
         }
      }
      
      public function §<!F§() : void
      {
         if(this.§"!>§.sprite)
         {
            this.§"!>§.sprite.scaleX = §?!I§;
            this.§"!>§.sprite.scaleY = §?!I§;
         }
      }
      
      public function §7!%§() : void
      {
         var _loc1_:Number = this.§var § / LevelMain.§8N§ + this.§;f§;
         var _loc2_:Number = this.§]"§ / LevelMain.§8N§ + this.§22§;
         this.§@!N§ = _loc1_ - LevelMain.§6v§ / 2 * §]!B§.§^F§ / §]!B§.§<!3§;
         this.§2O§ = _loc2_ - LevelMain.§0O§ / 2 + §1H§.§!Z§;
         if(this.§"!>§.background)
         {
            this.§"!>§.background.§+F§(this.§@!N§,this.§2O§);
         }
         if(this.§"!>§.objects)
         {
            this.§"!>§.objects.§+F§(this.§@!N§,this.§2O§);
         }
         if(this.§"!>§.mLevelEngine)
         {
            this.§"!>§.mLevelEngine.§+F§(this.§@!N§,this.§2O§,§?!I§);
         }
         if(this.§"!>§.slingshot)
         {
            this.§"!>§.slingshot.§+F§(this.§@!N§,this.§2O§);
         }
         if(this.§"!>§.particles)
         {
            this.§"!>§.particles.§+F§(this.§@!N§,this.§2O§);
         }
      }
      
      protected function §0!E§() : void
      {
         this.§>7§(§ d§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§8o§ = -1;
         this.§0!E§();
         this.§`!S§ = this.§8!a§ = this.§ !+§ = param1;
         this.§-J§ = this.§`!X§ = this.§#7§ = param2;
         this.§@q§ = 0;
         this.§3!R§.x = this.§var §;
         this.§3!R§.y = this.§]"§;
         this.§3!R§.scale = §,!J§;
         this.§!s§ = §,!J§;
         if(Math.abs(this.§5!d§.x - this.§!V§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§var § - this.§!V§.x) / (this.§5!d§.x - this.§!V§.x) * §[!a§;
         }
         this.mDragging = true;
      }
      
      public function §0!P§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§@q§ += param1;
         var _loc3_:Number = this.§`!S§ - this.§8!a§;
         if(this.§;$§ > 0)
         {
            _loc2_ -= _loc3_ * LevelMain.§8N§ / §?!I§ / this.§;$§ * §[!a§;
            this.§%!d§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§%!d§ = true;
            }
            if(_loc2_ > §[!a§)
            {
               _loc2_ += (§[!a§ - _loc2_) * 0.3;
               this.§%!d§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§8!a§ = this.§`!S§;
      }
      
      protected function §@!@§() : Boolean
      {
         return this.mCurrentAction == § d§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§`!S§ = param1;
            this.§-J§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == § d§)
         {
            this.§>7§(§0=§);
            if(param1 > 0)
            {
               this.§`!S§ = param1;
            }
            _loc3_ = Math.abs(this.§`!S§ - this.§ !+§);
            if(this.§@q§ < §&!T§ && _loc3_ >= §0!C§ && _loc3_ >= §'!H§ * this.§@q§ / 1000)
            {
               if(this.§`!S§ < this.§ !+§)
               {
                  this.§>7§(§"!H§);
               }
               else
               {
                  this.§>7§(§`z§);
               }
               this.§@!J§ = _loc3_ / this.§@q§ * 10;
               this.§%!d§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§%!d§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §[!a§)
               {
                  this.§%!d§ = true;
               }
            }
            else if(this.§@q§ < §try §)
            {
               this.§6!W§();
               this.§@!J§ = §[!a§ / (§[!a§ / 500);
               this.§%!d§ = true;
            }
            else
            {
               this.§0!P§(0);
               this.§1G§(0);
               this.§@!J§ = §[!a§ / (§[!a§ / 500);
               this.§%!d§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §6!W§() : void
      {
         if(this.mCurrentAction == §"!H§)
         {
            this.§>7§(§`z§);
         }
         else if(this.mCurrentAction == §`z§)
         {
            this.§>7§(§"!H§);
         }
         else if(this.mCurrentCameraSliderLocation >= §[!a§ / 2)
         {
            this.§>7§(§`z§);
         }
         else if(this.mCurrentCameraSliderLocation <= §[!a§ / 2)
         {
            this.§>7§(§"!H§);
         }
      }
      
      public function §1G§(param1:int) : void
      {
         this.§8o§ = param1;
         if(this.mCurrentCameraSliderLocation < §[!a§ / 2)
         {
            this.§>7§(§`z§);
         }
         else
         {
            this.§>7§(§"!H§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§>7§(§`z§);
      }
      
      public function goToCastleView() : void
      {
         this.§>7§(§"!H§);
      }
      
      public function §>7§(param1:int) : void
      {
         this.§3!R§.x = this.§var §;
         this.§3!R§.y = this.§]"§;
         this.§3!R§.scale = §,!J§;
         this.§!s§ = §,!J§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §[!a§)
         {
            return true;
         }
         if(this.mCurrentAction == §"!H§)
         {
            return true;
         }
         return false;
      }
      
      public function §"i§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §`z§)
         {
            return true;
         }
         return false;
      }
      
      public function §#!F§(param1:§;c§) : void
      {
         this.§+r§ = param1;
         if(this.§+r§ != null)
         {
            this.§%![§ = new §;c§();
            this.§%![§.x = this.§var §;
            this.§%![§.y = this.§]"§;
            this.§%![§.scale = §,!J§;
         }
         else
         {
            this.§var § = this.§%![§.x;
            this.§]"§ = this.§%![§.y;
            §,!J§ = this.§%![§.scale;
            this.§%![§ = null;
         }
      }
      
      protected function §4!e§() : void
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
         var _loc3_:Number = this.§5!6§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§`,§,Math.min(this.§5!T§,_loc3_));
         if(_loc3_ != this.§5!6§)
         {
            this.§5!6§ = _loc3_;
            this.§4!e§();
         }
      }
      
      public function §-n§() : Number
      {
         return (this.§^!3§ - this.§`,§) / (this.§5!T§ - this.§`,§);
      }
      
      public function §implements§(param1:Number) : void
      {
         this.§^!3§ = Math.min(Math.max(param1,0),1) * (this.§5!T§ - this.§`,§) + this.§`,§;
      }
      
      public function §-!a§() : void
      {
         this.§5!6§ = Math.max(this.§5!6§ - 0.5,0.5);
      }
      
      public function §!!0§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§5!6§;
         _loc1_ += " mXcenterB2: " + this.§var §;
         _loc1_ += " mYcenterB2: " + this.§]"§;
         _loc1_ += " mXcenterB2target: " + this.§5!6§;
         _loc1_ += "\n mYcenterB2target: " + this.§5!6§;
         _loc1_ += " mXcenterB2previous: " + this.§5!6§;
         _loc1_ += " mYcenterB2previous: " + this.§5!6§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§5!6§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§5!6§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§5!6§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§5!6§;
         _loc1_ += " mTargetScale: " + this.§5!6§;
         _loc1_ += " mTargetScalePrevious: " + this.§5!6§;
         _loc1_ += " mCastleCameraX: " + this.§5!6§;
         _loc1_ += "\n mCastleCameraY: " + this.§5!6§;
         _loc1_ += " mCastleCameraScale: " + this.§5!6§;
         _loc1_ += " mBirdCameraX: " + this.§5!6§;
         _loc1_ += " mBirdCameraY: " + this.§5!6§;
         _loc1_ += " mBirdCameraScale: " + this.§5!6§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§5!6§;
         _loc1_ += " mScreenTopScroll: " + this.§5!6§;
         _loc1_ += " mDragging: " + this.§5!6§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§5!6§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§5!6§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§5!6§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§5!6§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§5!6§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§5!6§;
         _loc1_ += " mDraggingTimer: " + this.§5!6§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§5!6§;
         _loc1_ += " mCameraBorderRight: " + this.§5!6§;
         _loc1_ += " mCameraBorderSky: " + this.§5!6§;
         _loc1_ += " mCameraBorderGround: " + this.§5!6§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§5!6§ + "\n ");
      }
   }
}
