package §5u§
{
   import §6!!§.LevelObject;
   import §<u§.Log;
   import §>!_§.§5!"§;
   import §>!_§.LevelModel;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import §]!@§.§[6§;
   
   public class §[!,§
   {
      
      public static const §4u§:Number = 1.25;
      
      public static const §if§:Number = 0.15;
      
      public static const §5d§:Number = §`S§.SCREEN_WIDTH * LevelMain.§@!d§;
      
      public static const §4!@§:Number = §`S§.SCREEN_HEIGHT * LevelMain.§@!d§;
      
      public static const §1!8§:Number = 0.1;
      
      public static const §!!7§:int = 1500;
      
      public static const §1!6§:int = 10;
      
      public static const §;n§:int = 15;
      
      public static const §<!Z§:int = 300;
      
      public static const §7!g§:int = 1000;
      
      public static const § !>§:int = 10000;
      
      public static const §6l§:int = § !>§ / 50;
      
      public static const §@!X§:int = 0;
      
      public static const §,_§:int = 1;
      
      public static const §[t§:int = 2;
      
      public static const §2f§:int = 3;
      
      public static const §>!9§:int = 4;
      
      public static const §[e§:int = 5;
      
      public static const §5r§:String = "CASTLE";
      
      public static const §-!W§:String = "SLINGSHOT";
      
      protected static var §7!J§:Number;
      
      public static var §[!^§:Number;
      
      public static var §^j§:Number;
      
      public static const §6Z§:Number = 2000;
       
      
      private var §'!6§:Number = 1.0;
      
      private var §?!V§:Number = 0.2;
      
      protected var §"!Z§:Number;
      
      protected var §7?§:Number;
      
      protected var §&f§:Number;
      
      public var §`s§:LevelMain;
      
      public var §-l§:Number;
      
      public var §3w§:Number;
      
      private var §,!;§:§@!j§;
      
      private var § !X§:§@!j§;
      
      public var §!!P§:Number;
      
      public var §+x§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §"!&§:Number;
      
      public var §-!+§:Number;
      
      public var §9Z§:Number;
      
      public var §'X§:Number;
      
      private var §4!S§:Number;
      
      private var §2k§:§9!k§;
      
      private var §>Q§:§9!k§;
      
      protected var § 1§:Number = 0;
      
      protected var §'!W§:Number = 0;
      
      protected var §5!J§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1!'§:Number = 0;
      
      public var §,%§:Boolean = true;
      
      public var §1w§:Number = 0;
      
      public var §2l§:Number = 0;
      
      public var §3r§:Number = 0;
      
      public var §5!=§:Number = 0;
      
      public var §@!E§:Number = 0;
      
      public var §'_§:Number = 0;
      
      public var §<8§:Number = 0;
      
      public var §0!<§:Number = 0;
      
      public var §3+§:Number = 0;
      
      private var §?!h§:§9!k§;
      
      public var §&!S§:Number = 0;
      
      private var §0!1§:Number = 0;
      
      private var §]!O§:Number = 0;
      
      private var §#e§:§5!"§ = null;
      
      private var §"!"§:§5!"§ = null;
      
      public function §[!,§(param1:LevelMain, param2:LevelModel, param3:Number = 1.0)
      {
         this.§?!h§ = new §9!k§(0,0,1,false);
         super();
         this.§7?§ = 0;
         this.§&f§ = 0;
         this.§`s§ = param1;
         §[!,§.§7!J§ = 1;
         this.§'!6§ = Math.max(1,Math.min(2,param3));
         this.§"!Z§ = this.§'!6§;
         this.§3C§(param2);
         if(this.§,!;§ && this.§ !X§)
         {
            this.§?!!§();
            this.§ 1§ = this.§,!;§.x - this.§ !X§.x;
            this.§'!W§ = this.§,!;§.y - this.§ !X§.y;
            this.§5!J§ = this.§,!;§.scale - this.§ !X§.scale;
            this.§7?§ = this.§,!;§.x;
            this.§&f§ = this.§,!;§.y;
            §7!J§ = this.§,!;§.scale * this.§"!Z§;
         }
         this.mCurrentCameraSliderLocation = § !>§;
         this.§,%§ = true;
         this.§1!'§ = § !>§ / 500;
      }
      
      private static function §+!4§() : Number
      {
         var _loc1_:Number = §`S§.§`!A§ / §`S§.§4+§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get § !7§() : Number
      {
         return §7!J§ * §+!4§();
      }
      
      public function get §"R§() : Number
      {
         return this.§"!Z§;
      }
      
      public function set §"R§(param1:Number) : void
      {
         this.§"!Z§ = param1;
      }
      
      public function get §^!^§() : Number
      {
         return this.§4!S§;
      }
      
      public function §-b§() : Number
      {
         return §5d§ / (this.§-!+§ - this.§"!&§);
      }
      
      public function get §+D§() : Number
      {
         return this.§'!6§;
      }
      
      public function get §#!'§() : Number
      {
         return this.§?!V§;
      }
      
      public function §]&§(param1:Number) : void
      {
         this.§"!Z§ = param1;
         this.§<!Q§();
         this.§?!;§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §[e§)
         {
            return;
         }
         this.goToCastleView();
         this.§1w§ = 2000;
         this.§,Y§();
         this.§%N§();
         this.§6!5§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7?§ = this.§ !X§.x;
         this.§&f§ = this.§ !X§.y;
         this.§,%§ = false;
         this.§1!'§ = § !>§ / 160000 * param1;
         this.§5!<§(§[e§);
      }
      
      public function §?!!§() : void
      {
         this.§"!&§ = this.§ !X§.x - §5d§ / this.§ !X§.scale / 2;
         this.§-!+§ = this.§,!;§.x + §5d§ / this.§,!;§.scale / 2;
         this.§9Z§ = this.§`s§.§!![§.§-!J§ - 20 * LevelMain.§@K§ * LevelMain.§@!d§;
         this.§'X§ = this.§`s§.§!![§.§-!J§ + 4;
         var _loc1_:Number = §5d§ / (this.§-!+§ - this.§"!&§);
         this.§4!S§ = this.§'X§ - §4!@§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§`s§ = null;
      }
      
      public function §3C§(param1:LevelModel) : void
      {
         var _loc3_:§5!"§ = null;
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
         while(_loc2_ < param1.override)
         {
            _loc3_ = param1.§%O§(_loc2_);
            _loc4_ = _loc3_.id;
            _loc4_ = _loc4_.toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§3I§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §4!@§ / (_loc8_ - _loc7_);
            _loc12_ = §5d§ / (_loc6_ - _loc5_);
            _loc13_ = _loc12_ < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §-!W§)
            {
               this.§ !X§ = new §@!j§(_loc9_,_loc10_,_loc13_,true);
               this.§>Q§ = new §9!k§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §5r§)
            {
               this.§,!;§ = new §@!j§(_loc9_,_loc10_,_loc13_,false);
               this.§2k§ = new §9!k§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §,#§(param1:LevelModel) : void
      {
         var _loc2_:§5!"§ = new §5!"§();
         _loc2_.id = §-!W§;
         _loc2_.x = this.§ !X§.x;
         _loc2_.y = this.§ !X§.y;
         var _loc3_:Number = §5d§ / this.§ !X§.scale / 2;
         var _loc4_:Number = §4!@§ / this.§ !X§.scale / 2;
         _loc2_.left = this.§ !X§.x - _loc3_;
         _loc2_.right = this.§ !X§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§5!"§ = new §5!"§();
         _loc5_.id = §5r§;
         _loc5_.x = this.§,!;§.x;
         _loc5_.y = this.§,!;§.y;
         var _loc6_:Number = §5d§ / this.§,!;§.scale / 2;
         var _loc7_:Number = §4!@§ / this.§,!;§.scale / 2;
         _loc5_.left = this.§,!;§.x - _loc6_;
         _loc5_.right = this.§,!;§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§%!=§();
         param1.§=!J§(_loc2_);
         param1.§=!J§(_loc5_);
      }
      
      public function §3I§(param1:§5!"§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §`S§.SCREEN_WIDTH * 0.5 / _loc2_ * LevelMain.§@!d§;
         var _loc4_:Number = param1.y - §`S§.SCREEN_HEIGHT * 0.5 / _loc2_ * LevelMain.§@!d§;
         var _loc5_:Number = _loc3_ + §`S§.SCREEN_WIDTH / _loc2_ * LevelMain.§@!d§;
         var _loc6_:Number = _loc4_ + §`S§.SCREEN_HEIGHT / _loc2_ * LevelMain.§@!d§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §!g§(param1:§@!j§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§1!'§;
         if(_loc3_ >= § !>§)
         {
            _loc3_ = § !>§;
            this.§5!<§(§@!X§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§5!<§(§@!X§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §#4§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§1!'§;
         var _loc4_:Number = -§ !>§ * 0.7;
         if(_loc2_ >= § !>§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = § !>§;
            }
            this.§1!'§ = -this.§1!'§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §,j§(param1:Number) : void
      {
         if(this.mCurrentAction == §[e§)
         {
            this.§#4§(param1);
         }
         else if(this.mCurrentAction == §,_§)
         {
            this.§!g§(this.§,!;§,param1);
         }
         else if(this.mCurrentAction == §[t§)
         {
            this.§!g§(this.§ !X§,-param1);
         }
         else if(this.mCurrentAction == §2f§)
         {
            this.§,%§ = true;
         }
         else if(this.mCurrentAction == §>!9§)
         {
            this.§0"§(param1);
         }
      }
      
      public function §'!C§(param1:Number) : void
      {
         if(this.§#e§)
         {
            this.§7?§ = this.§#e§.x;
            this.§&f§ = this.§#e§.y;
            §7!J§ = §5d§ / (this.§#e§.right - this.§#e§.left);
         }
         else
         {
            this.§<!Q§();
            this.§,j§(param1);
            this.§[!'§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§,Y§();
         this.§%N§();
         this.§6!5§();
      }
      
      private function §-a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>Q§.scale + (this.§2k§.scale - this.§>Q§.scale) * param1;
         var _loc4_:Number = this.§>Q§.x + (this.§2k§.x - this.§>Q§.x) * param1;
         var _loc5_:Number = this.§>Q§.y + (this.§2k§.y - this.§>Q§.y) * param1;
         this.§?!h§.x -= (this.§?!h§.x - _loc4_) * param2;
         this.§?!h§.y -= (this.§?!h§.y - _loc5_) * param2;
         this.§?!h§.scale -= (this.§?!h§.scale - _loc3_) * param2;
      }
      
      protected function §?!;§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ 1§ != 0)
         {
            if(!this.§,%§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / § !>§;
            this.§-a§(_loc3_,param2);
            this.§7?§ = this.§?!h§.x;
            this.§&f§ = this.§?!h§.y;
            §7!J§ = this.§?!h§.scale;
         }
      }
      
      public function §[!'§(param1:Number, param2:Number) : void
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= § !>§)
         {
            this.§,%§ = true;
         }
         if(this.mCurrentAction == §2f§)
         {
            if(!this.§`s§.activeObject)
            {
               this.§5!<§(§,_§);
               this.§3+§ = §7!g§;
            }
            else
            {
               _loc5_ = this.§`s§.activeObject;
               _loc6_ = _loc5_.§@!'§().GetPosition().x + (Boolean(_loc5_.§0#§) ? _loc5_.§0#§ * LevelMain.§@!d§ : 0);
               _loc7_ = _loc5_.§@!'§().GetPosition().y + (Boolean(_loc5_.§-!I§) ? _loc5_.§-!I§ * LevelMain.§@!d§ : 0);
               _loc8_ = _loc5_.§@!'§().GetLinearVelocity().x;
               if(_loc8_ > 0 && this.§ 1§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§ 1§ * § !>§;
               }
               if(param1 >= § !>§)
               {
                  param1 = § !>§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / § !>§;
               this.§-a§(_loc9_,_loc4_);
               _loc10_ = this.§?!h§.x - §5d§ * 0.5 / this.§?!h§.scale;
               _loc11_ = this.§?!h§.y - §4!@§ * 0.5 / this.§?!h§.scale;
               _loc12_ = this.§?!h§.x + §5d§ * 0.5 / this.§?!h§.scale;
               _loc13_ = this.§?!h§.y + §4!@§ * 0.5 / this.§?!h§.scale;
               _loc14_ = 150 * LevelMain.§@!d§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§"!&§,_loc15_);
               _loc17_ = Math.min(this.§-!+§,_loc17_);
               _loc19_ = Math.abs(§5d§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§4!@§ / (_loc18_ - _loc16_));
               _loc21_ = Math.min(_loc19_,_loc20_);
               if(_loc21_ > this.§?!h§.scale)
               {
                  _loc21_ = this.§?!h§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §5d§ * 0.5 / _loc21_ > this.§-!+§)
               {
                  _loc17_ = this.§-!+§;
                  _loc15_ = _loc17_ - §5d§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§"!&§)
                  {
                     _loc15_ = this.§"!&§;
                  }
               }
               if(_loc22_ - §5d§ * 0.5 / _loc21_ < this.§"!&§)
               {
                  _loc15_ = this.§"!&§;
                  _loc17_ = _loc15_ + §5d§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§-!+§)
                  {
                     _loc17_ = this.§-!+§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§5d§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §5d§ * 0.5 / _loc21_ < this.§9Z§)
               {
                  _loc23_ = this.§9Z§ + §5d§ * 0.5 / _loc21_;
               }
               this.§7?§ -= (this.§7?§ - _loc22_) * _loc4_;
               this.§&!S§ -= (this.§&!S§ - _loc21_) * _loc4_;
               §7!J§ = this.§&!S§;
               this.§&f§ -= (this.§&f§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§-!+§ || _loc6_ <= this.§"!&§)
               {
                  this.§?!h§.scale = §7!J§;
                  this.§?!h§.x = this.§7?§;
                  this.§?!h§.y = this.§&f§;
               }
            }
         }
         else
         {
            this.§?!;§(param1,_loc4_);
         }
      }
      
      public function §"!U§(param1:Number, param2:Number) : void
      {
         this.§0!1§ = param1;
         this.§]!O§ = param2;
      }
      
      private function §;U§(param1:§9!k§, param2:§@!j§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §if§ + (param2.scale - §if§) * this.§"!Z§ * §[!,§.§+!4§();
         if(§5d§ / param1.scale > this.§-!+§ - this.§"!&§)
         {
            _loc3_ = §5d§ / (this.§-!+§ - this.§"!&§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@q§(param1:§9!k§, param2:§@!j§) : Boolean
      {
         var _loc3_:Boolean = this.§;U§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §4!@§ * 0.5 / param1.scale;
         var _loc5_:Number = §4!@§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number = param1.x - §5d§ * 0.5 / param1.scale;
         if(_loc6_ < this.§"!&§ && param1.§"!j§)
         {
            param1.x += this.§"!&§ - _loc6_;
         }
         var _loc7_:Number = param1.x + §5d§ * 0.5 / param1.scale;
         if(_loc7_ > this.§-!+§ && !param1.§"!j§)
         {
            param1.x += this.§-!+§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §%!]§(param1:§9!k§, param2:§@!j§) : Number
      {
         return (param1.scale - §if§) / (§[!,§.§+!4§() * (param2.scale - §if§));
      }
      
      protected function §<!Q§() : void
      {
         this.§@q§(this.§>Q§,this.§ !X§);
         var _loc1_:Number = this.§%!]§(this.§>Q§,this.§ !X§);
         this.§@q§(this.§2k§,this.§,!;§);
         var _loc2_:Number = this.§%!]§(this.§2k§,this.§,!;§);
         this.§"!Z§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §,Y§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§`s§.sprite)
         {
            _loc1_ = §`S§.§4v§() / §`S§.§`!A§ - §`S§.SCREEN_HEIGHT >> 1;
            §[!^§ = this.§`s§.sprite.x = LevelMain.§;y§ * ((1 - §[!,§.§ !7§) / 2);
            §^j§ = this.§`s§.sprite.y = _loc1_ + LevelMain.§@K§ * (1 - §[!,§.§ !7§) * §[6§.§;!d§;
         }
      }
      
      public function §6!5§() : void
      {
         if(this.§`s§.sprite)
         {
            this.§`s§.sprite.scaleX = § !7§;
            this.§`s§.sprite.scaleY = § !7§;
         }
      }
      
      public function §%N§() : void
      {
         var _loc1_:Number = this.§7?§ / LevelMain.§@!d§ + this.§0!1§;
         var _loc2_:Number = this.§&f§ / LevelMain.§@!d§ + this.§]!O§;
         this.§!!P§ = _loc1_ - LevelMain.§;y§ / 2 * §`S§.§`!A§ / §`S§.§3! §;
         this.§+x§ = _loc2_ - LevelMain.§@K§ / 2 + §[6§.§^!W§;
         if(this.§`s§.background)
         {
            this.§`s§.background.§6!H§(this.§!!P§,this.§+x§);
         }
         if(this.§`s§.objects)
         {
            this.§`s§.objects.§6!H§(this.§!!P§,this.§+x§);
         }
         if(this.§`s§.mLevelEngine)
         {
            this.§`s§.mLevelEngine.§6!H§(this.§!!P§,this.§+x§,§ !7§);
         }
         if(this.§`s§.slingshot)
         {
            this.§`s§.slingshot.§6!H§(this.§!!P§,this.§+x§);
         }
         if(this.§`s§.particles)
         {
            this.§`s§.particles.§6!H§(this.§!!P§,this.§+x§);
         }
      }
      
      protected function §;!+§() : void
      {
         this.§5!<§(§>!9§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§3+§ = -1;
         this.§;!+§();
         this.§@!E§ = this.§<8§ = this.§3r§ = param1;
         this.§'_§ = this.§0!<§ = this.§5!=§ = param2;
         this.§2l§ = 0;
         this.§?!h§.x = this.§7?§;
         this.§?!h§.y = this.§&f§;
         this.§?!h§.scale = §7!J§;
         this.§&!S§ = §7!J§;
         if(Math.abs(this.§2k§.x - this.§>Q§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7?§ - this.§>Q§.x) / (this.§2k§.x - this.§>Q§.x) * § !>§;
         }
         this.mDragging = true;
      }
      
      public function §0"§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§2l§ += param1;
         var _loc3_:Number = this.§@!E§ - this.§<8§;
         if(this.§ 1§ > 0)
         {
            _loc2_ -= _loc3_ * LevelMain.§@!d§ / § !7§ / this.§ 1§ * § !>§;
            this.§,%§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§,%§ = true;
            }
            if(_loc2_ > § !>§)
            {
               _loc2_ += (§ !>§ - _loc2_) * 0.3;
               this.§,%§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§<8§ = this.§@!E§;
      }
      
      protected function §'!Z§() : Boolean
      {
         return this.mCurrentAction == §>!9§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§@!E§ = param1;
            this.§'_§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §>!9§)
         {
            this.§5!<§(§@!X§);
            if(param1 > 0)
            {
               this.§@!E§ = param1;
            }
            _loc3_ = Math.abs(this.§@!E§ - this.§3r§);
            if(this.§2l§ < §!!7§ && _loc3_ >= §1!6§ && _loc3_ >= §;n§ * this.§2l§ / 1000)
            {
               if(this.§@!E§ < this.§3r§)
               {
                  this.§5!<§(§,_§);
               }
               else
               {
                  this.§5!<§(§[t§);
               }
               this.§1!'§ = _loc3_ / this.§2l§ * 10;
               this.§,%§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§,%§ = true;
               }
               if(this.mCurrentCameraSliderLocation > § !>§)
               {
                  this.§,%§ = true;
               }
            }
            else if(this.§2l§ < §<!Z§)
            {
               this.§%'§();
               this.§1!'§ = § !>§ / (§ !>§ / 500);
               this.§,%§ = true;
            }
            else
            {
               this.§0"§(0);
               this.§%!P§(0);
               this.§1!'§ = § !>§ / (§ !>§ / 500);
               this.§,%§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §%'§() : void
      {
         if(this.mCurrentAction == §,_§)
         {
            this.§5!<§(§[t§);
         }
         else if(this.mCurrentAction == §[t§)
         {
            this.§5!<§(§,_§);
         }
         else if(this.mCurrentCameraSliderLocation >= § !>§ / 2)
         {
            this.§5!<§(§[t§);
         }
         else if(this.mCurrentCameraSliderLocation <= § !>§ / 2)
         {
            this.§5!<§(§,_§);
         }
      }
      
      public function §%!P§(param1:int) : void
      {
         this.§3+§ = param1;
         if(this.mCurrentCameraSliderLocation < § !>§ / 2)
         {
            this.§5!<§(§[t§);
         }
         else
         {
            this.§5!<§(§,_§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§5!<§(§[t§);
      }
      
      public function goToCastleView() : void
      {
         this.§5!<§(§,_§);
      }
      
      public function §5!<§(param1:int) : void
      {
         this.§?!h§.x = this.§7?§;
         this.§?!h§.y = this.§&f§;
         this.§?!h§.scale = §7!J§;
         this.§&!S§ = §7!J§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == § !>§)
         {
            return true;
         }
         if(this.mCurrentAction == §,_§)
         {
            return true;
         }
         return false;
      }
      
      public function §;!,§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §[t§)
         {
            return true;
         }
         return false;
      }
      
      public function §]i§(param1:§5!"§) : void
      {
         this.§#e§ = param1;
         if(this.§#e§ != null)
         {
            this.§"!"§ = new §5!"§();
            this.§"!"§.x = this.§7?§;
            this.§"!"§.y = this.§&f§;
            this.§"!"§.scale = §7!J§;
         }
         else
         {
            this.§7?§ = this.§"!"§.x;
            this.§&f§ = this.§"!"§.y;
            §7!J§ = this.§"!"§.scale;
            this.§"!"§ = null;
         }
      }
      
      protected function §'!g§() : void
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
         var _loc3_:Number = this.§"!Z§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§#!'§,Math.min(this.§+D§,_loc3_));
         if(_loc3_ != this.§"!Z§)
         {
            this.§"!Z§ = _loc3_;
            this.§'!g§();
         }
      }
      
      public function §#W§() : Number
      {
         return (this.§"R§ - this.§#!'§) / (this.§+D§ - this.§#!'§);
      }
      
      public function § <§(param1:Number) : void
      {
         this.§"R§ = Math.min(Math.max(param1,0),1) * (this.§+D§ - this.§#!'§) + this.§#!'§;
      }
      
      public function § !R§() : void
      {
         this.§"!Z§ = Math.max(this.§"!Z§ - 0.5,0.5);
      }
      
      public function §"l§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§"!Z§;
         _loc1_ += " mXcenterB2: " + this.§7?§;
         _loc1_ += " mYcenterB2: " + this.§&f§;
         _loc1_ += " mXcenterB2target: " + this.§"!Z§;
         _loc1_ += "\n mYcenterB2target: " + this.§"!Z§;
         _loc1_ += " mXcenterB2previous: " + this.§"!Z§;
         _loc1_ += " mYcenterB2previous: " + this.§"!Z§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§"!Z§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§"!Z§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§"!Z§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§"!Z§;
         _loc1_ += " mTargetScale: " + this.§"!Z§;
         _loc1_ += " mTargetScalePrevious: " + this.§"!Z§;
         _loc1_ += " mCastleCameraX: " + this.§"!Z§;
         _loc1_ += "\n mCastleCameraY: " + this.§"!Z§;
         _loc1_ += " mCastleCameraScale: " + this.§"!Z§;
         _loc1_ += " mBirdCameraX: " + this.§"!Z§;
         _loc1_ += " mBirdCameraY: " + this.§"!Z§;
         _loc1_ += " mBirdCameraScale: " + this.§"!Z§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§"!Z§;
         _loc1_ += " mScreenTopScroll: " + this.§"!Z§;
         _loc1_ += " mDragging: " + this.§"!Z§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§"!Z§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§"!Z§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§"!Z§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§"!Z§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§"!Z§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§"!Z§;
         _loc1_ += " mDraggingTimer: " + this.§"!Z§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§"!Z§;
         _loc1_ += " mCameraBorderRight: " + this.§"!Z§;
         _loc1_ += " mCameraBorderSky: " + this.§"!Z§;
         _loc1_ += " mCameraBorderGround: " + this.§"!Z§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§"!Z§ + "\n ");
      }
   }
}
