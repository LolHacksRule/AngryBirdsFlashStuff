package §#y§
{
   import §#!X§.§7!1§;
   import §#!X§.LevelModel;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §3Y§.LevelObject;
   import §?A§.§'K§;
   import §?A§.LevelMain;
   
   public class §0!D§
   {
      
      public static const §,Q§:Number = 1.25;
      
      public static const §1!F§:Number = 0.15;
      
      public static const §0j§:Number = §4!T§.SCREEN_WIDTH * LevelMain.§!5§;
      
      public static const §@k§:Number = §4!T§.SCREEN_HEIGHT * LevelMain.§!5§;
      
      public static const §"!3§:Number = 0.1;
      
      public static const §8f§:int = 1500;
      
      public static const §1!H§:int = 10;
      
      public static const §>!I§:int = 15;
      
      public static const §+!R§:int = 300;
      
      public static const §@!!§:int = 1000;
      
      public static const §7!?§:int = 10000;
      
      public static const §-!E§:int = §7!?§ / 50;
      
      public static const §+!=§:int = 0;
      
      public static const §5!H§:int = 1;
      
      public static const §`!-§:int = 2;
      
      public static const §'!-§:int = 3;
      
      public static const §&j§:int = 4;
      
      public static const §%!J§:int = 5;
      
      public static const §]w§:String = "CASTLE";
      
      public static const §'!Q§:String = "SLINGSHOT";
      
      protected static var §;!U§:Number;
      
      public static var §#`§:Number;
      
      public static var §'r§:Number;
      
      public static const §;d§:Number = 2000;
       
      
      private var §=!L§:Number = 1.0;
      
      private var §7h§:Number = 0.2;
      
      protected var §"y§:Number;
      
      protected var §=!f§:Number;
      
      protected var § !M§:Number;
      
      public var §6f§:LevelMain;
      
      public var §5x§:Number;
      
      public var §1R§:Number;
      
      private var §>!Q§:§&!b§;
      
      private var §%^§:§&!b§;
      
      public var §&8§:Number;
      
      public var §%c§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §=!d§:Number;
      
      public var § var§:Number;
      
      public var §]g§:Number;
      
      public var §'!W§:Number;
      
      private var §;!'§:Number;
      
      private var §7L§:§-+§;
      
      private var §#D§:§-+§;
      
      protected var § 7§:Number = 0;
      
      protected var §&!1§:Number = 0;
      
      protected var §!M§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §]=§:Number = 0;
      
      public var §%-§:Boolean = true;
      
      public var §"!<§:Number = 0;
      
      public var §-!7§:Number = 0;
      
      public var §3<§:Number = 0;
      
      public var §7!S§:Number = 0;
      
      public var §1!G§:Number = 0;
      
      public var §7!'§:Number = 0;
      
      public var §<A§:Number = 0;
      
      public var §^!-§:Number = 0;
      
      public var §0!%§:Number = 0;
      
      private var §&!E§:§-+§;
      
      public var §;'§:Number = 0;
      
      private var § !&§:Number = 0;
      
      private var §2!=§:Number = 0;
      
      private var §2g§:§7!1§ = null;
      
      private var §58§:§7!1§ = null;
      
      public function §0!D§(param1:LevelMain, param2:LevelModel, param3:Number = 1.0)
      {
         this.§&!E§ = new §-+§(0,0,1,false);
         super();
         this.§=!f§ = 0;
         this.§ !M§ = 0;
         this.§6f§ = param1;
         §0!D§.§;!U§ = 1;
         this.§=!L§ = Math.max(1,Math.min(2,param3));
         this.§"y§ = this.§=!L§;
         this.§ &§(param2);
         if(this.§>!Q§ && this.§%^§)
         {
            this.§<!]§();
            this.§ 7§ = this.§>!Q§.x - this.§%^§.x;
            this.§&!1§ = this.§>!Q§.y - this.§%^§.y;
            this.§!M§ = this.§>!Q§.scale - this.§%^§.scale;
            this.§=!f§ = this.§>!Q§.x;
            this.§ !M§ = this.§>!Q§.y;
            §;!U§ = this.§>!Q§.scale * this.§"y§;
         }
         this.mCurrentCameraSliderLocation = §7!?§;
         this.§%-§ = true;
         this.§]=§ = §7!?§ / 500;
      }
      
      private static function §?k§() : Number
      {
         var _loc1_:Number = §4!T§.§`!Y§ / §4!T§.§=!_§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §4M§() : Number
      {
         return §;!U§ * §?k§();
      }
      
      public function get §+!1§() : Number
      {
         return this.§"y§;
      }
      
      public function set §+!1§(param1:Number) : void
      {
         this.§"y§ = param1;
      }
      
      public function get §?8§() : Number
      {
         return this.§;!'§;
      }
      
      public function §7!7§() : Number
      {
         return §0j§ / (this.§ var§ - this.§=!d§);
      }
      
      public function get §0%§() : Number
      {
         return this.§=!L§;
      }
      
      public function get §<!T§() : Number
      {
         return this.§7h§;
      }
      
      public function §7!U§(param1:Number) : void
      {
         this.§"y§ = param1;
         this.§6!>§();
         this.§[!@§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §%!J§)
         {
            return;
         }
         this.goToCastleView();
         this.§"!<§ = 2000;
         this.§5!b§();
         this.§'n§();
         this.§?!9§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§=!f§ = this.§%^§.x;
         this.§ !M§ = this.§%^§.y;
         this.§%-§ = false;
         this.§]=§ = §7!?§ / 160000 * param1;
         this.§5!B§(§%!J§);
      }
      
      public function §<!]§() : void
      {
         this.§=!d§ = this.§%^§.x - §0j§ / this.§%^§.scale / 2;
         this.§ var§ = this.§>!Q§.x + §0j§ / this.§>!Q§.scale / 2;
         this.§]g§ = this.§6f§.§7!%§.§7!5§ - 20 * LevelMain.§=q§ * LevelMain.§!5§;
         this.§'!W§ = this.§6f§.§7!%§.§7!5§ + 4;
         var _loc1_:Number = §0j§ / (this.§ var§ - this.§=!d§);
         this.§;!'§ = this.§'!W§ - §@k§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§6f§ = null;
      }
      
      public function § &§(param1:LevelModel) : void
      {
         var _loc3_:§7!1§ = null;
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
         while(_loc2_ < param1.§^p§)
         {
            _loc3_ = param1.§4h§(_loc2_);
            _loc4_ = _loc3_.id;
            _loc4_ = _loc4_.toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§%!,§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §@k§ / (_loc8_ - _loc7_);
            _loc12_ = §0j§ / (_loc6_ - _loc5_);
            _loc13_ = _loc12_ < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §'!Q§)
            {
               this.§%^§ = new §&!b§(_loc9_,_loc10_,_loc13_,true);
               this.§#D§ = new §-+§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §]w§)
            {
               this.§>!Q§ = new §&!b§(_loc9_,_loc10_,_loc13_,false);
               this.§7L§ = new §-+§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §7K§(param1:LevelModel) : void
      {
         var _loc2_:§7!1§ = new §7!1§();
         _loc2_.id = §'!Q§;
         _loc2_.x = this.§%^§.x;
         _loc2_.y = this.§%^§.y;
         var _loc3_:Number = §0j§ / this.§%^§.scale / 2;
         var _loc4_:Number = §@k§ / this.§%^§.scale / 2;
         _loc2_.left = this.§%^§.x - _loc3_;
         _loc2_.right = this.§%^§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§7!1§ = new §7!1§();
         _loc5_.id = §]w§;
         _loc5_.x = this.§>!Q§.x;
         _loc5_.y = this.§>!Q§.y;
         var _loc6_:Number = §0j§ / this.§>!Q§.scale / 2;
         var _loc7_:Number = §@k§ / this.§>!Q§.scale / 2;
         _loc5_.left = this.§>!Q§.x - _loc6_;
         _loc5_.right = this.§>!Q§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§=!`§();
         param1.§ ![§(_loc2_);
         param1.§ ![§(_loc5_);
      }
      
      public function §%!,§(param1:§7!1§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §4!T§.SCREEN_WIDTH * 0.5 / _loc2_ * LevelMain.§!5§;
         var _loc4_:Number = param1.y - §4!T§.SCREEN_HEIGHT * 0.5 / _loc2_ * LevelMain.§!5§;
         var _loc5_:Number = _loc3_ + §4!T§.SCREEN_WIDTH / _loc2_ * LevelMain.§!5§;
         var _loc6_:Number = _loc4_ + §4!T§.SCREEN_HEIGHT / _loc2_ * LevelMain.§!5§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §<w§(param1:§&!b§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§]=§;
         if(_loc3_ >= §7!?§)
         {
            _loc3_ = §7!?§;
            this.§5!B§(§+!=§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§5!B§(§+!=§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §"l§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§]=§;
         var _loc4_:Number = -§7!?§ * 0.7;
         if(_loc2_ >= §7!?§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §7!?§;
            }
            this.§]=§ = -this.§]=§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §5!>§(param1:Number) : void
      {
         if(this.mCurrentAction == §%!J§)
         {
            this.§"l§(param1);
         }
         else if(this.mCurrentAction == §5!H§)
         {
            this.§<w§(this.§>!Q§,param1);
         }
         else if(this.mCurrentAction == §`!-§)
         {
            this.§<w§(this.§%^§,-param1);
         }
         else if(this.mCurrentAction == §'!-§)
         {
            this.§%-§ = true;
         }
         else if(this.mCurrentAction == §&j§)
         {
            this.§ !'§(param1);
         }
      }
      
      public function §?J§(param1:Number) : void
      {
         if(this.§2g§)
         {
            this.§=!f§ = this.§2g§.x;
            this.§ !M§ = this.§2g§.y;
            §;!U§ = §0j§ / (this.§2g§.right - this.§2g§.left);
         }
         else
         {
            this.§6!>§();
            this.§5!>§(param1);
            this.§>!Y§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§5!b§();
         this.§'n§();
         this.§?!9§();
      }
      
      private function §7!R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#D§.scale + (this.§7L§.scale - this.§#D§.scale) * param1;
         var _loc4_:Number = this.§#D§.x + (this.§7L§.x - this.§#D§.x) * param1;
         var _loc5_:Number = this.§#D§.y + (this.§7L§.y - this.§#D§.y) * param1;
         this.§&!E§.x -= (this.§&!E§.x - _loc4_) * param2;
         this.§&!E§.y -= (this.§&!E§.y - _loc5_) * param2;
         this.§&!E§.scale -= (this.§&!E§.scale - _loc3_) * param2;
      }
      
      protected function §[!@§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ 7§ != 0)
         {
            if(!this.§%-§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §7!?§;
            this.§7!R§(_loc3_,param2);
            this.§=!f§ = this.§&!E§.x;
            this.§ !M§ = this.§&!E§.y;
            §;!U§ = this.§&!E§.scale;
         }
      }
      
      public function §>!Y§(param1:Number, param2:Number) : void
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §7!?§)
         {
            this.§%-§ = true;
         }
         if(this.mCurrentAction == §'!-§)
         {
            if(!this.§6f§.activeObject)
            {
               this.§5!B§(§5!H§);
               this.§0!%§ = §@!!§;
            }
            else
            {
               _loc5_ = this.§6f§.activeObject;
               _loc6_ = _loc5_.§8!N§().GetPosition().x + (Boolean(_loc5_.§,h§) ? _loc5_.§,h§ * LevelMain.§!5§ : 0);
               _loc7_ = _loc5_.§8!N§().GetPosition().y + (Boolean(_loc5_.§?!W§) ? _loc5_.§?!W§ * LevelMain.§!5§ : 0);
               _loc8_ = _loc5_.§8!N§().GetLinearVelocity().x;
               if(_loc8_ > 0 && this.§ 7§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§ 7§ * §7!?§;
               }
               if(param1 >= §7!?§)
               {
                  param1 = §7!?§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §7!?§;
               this.§7!R§(_loc9_,_loc4_);
               _loc10_ = this.§&!E§.x - §0j§ * 0.5 / this.§&!E§.scale;
               _loc11_ = this.§&!E§.y - §@k§ * 0.5 / this.§&!E§.scale;
               _loc12_ = this.§&!E§.x + §0j§ * 0.5 / this.§&!E§.scale;
               _loc13_ = this.§&!E§.y + §@k§ * 0.5 / this.§&!E§.scale;
               _loc14_ = 150 * LevelMain.§!5§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§=!d§,_loc15_);
               _loc17_ = Math.min(this.§ var§,_loc17_);
               _loc19_ = Math.abs(§0j§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§@k§ / (_loc18_ - _loc16_));
               _loc21_ = Math.min(_loc19_,_loc20_);
               if(_loc21_ > this.§&!E§.scale)
               {
                  _loc21_ = this.§&!E§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §0j§ * 0.5 / _loc21_ > this.§ var§)
               {
                  _loc17_ = this.§ var§;
                  _loc15_ = _loc17_ - §0j§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§=!d§)
                  {
                     _loc15_ = this.§=!d§;
                  }
               }
               if(_loc22_ - §0j§ * 0.5 / _loc21_ < this.§=!d§)
               {
                  _loc15_ = this.§=!d§;
                  _loc17_ = _loc15_ + §0j§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§ var§)
                  {
                     _loc17_ = this.§ var§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§0j§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §0j§ * 0.5 / _loc21_ < this.§]g§)
               {
                  _loc23_ = this.§]g§ + §0j§ * 0.5 / _loc21_;
               }
               this.§=!f§ -= (this.§=!f§ - _loc22_) * _loc4_;
               this.§;'§ -= (this.§;'§ - _loc21_) * _loc4_;
               §;!U§ = this.§;'§;
               this.§ !M§ -= (this.§ !M§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§ var§ || _loc6_ <= this.§=!d§)
               {
                  this.§&!E§.scale = §;!U§;
                  this.§&!E§.x = this.§=!f§;
                  this.§&!E§.y = this.§ !M§;
               }
            }
         }
         else
         {
            this.§[!@§(param1,_loc4_);
         }
      }
      
      public function §4+§(param1:Number, param2:Number) : void
      {
         this.§ !&§ = param1;
         this.§2!=§ = param2;
      }
      
      private function §>!c§(param1:§-+§, param2:§&!b§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §1!F§ + (param2.scale - §1!F§) * this.§"y§ * §0!D§.§?k§();
         if(§0j§ / param1.scale > this.§ var§ - this.§=!d§)
         {
            _loc3_ = §0j§ / (this.§ var§ - this.§=!d§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §+O§(param1:§-+§, param2:§&!b§) : Boolean
      {
         var _loc3_:Boolean = this.§>!c§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §@k§ * 0.5 / param1.scale;
         var _loc5_:Number = §@k§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number = param1.x - §0j§ * 0.5 / param1.scale;
         if(_loc6_ < this.§=!d§ && param1.§<!`§)
         {
            param1.x += this.§=!d§ - _loc6_;
         }
         var _loc7_:Number = param1.x + §0j§ * 0.5 / param1.scale;
         if(_loc7_ > this.§ var§ && !param1.§<!`§)
         {
            param1.x += this.§ var§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §]!9§(param1:§-+§, param2:§&!b§) : Number
      {
         return (param1.scale - §1!F§) / (§0!D§.§?k§() * (param2.scale - §1!F§));
      }
      
      protected function §6!>§() : void
      {
         this.§+O§(this.§#D§,this.§%^§);
         var _loc1_:Number = this.§]!9§(this.§#D§,this.§%^§);
         this.§+O§(this.§7L§,this.§>!Q§);
         var _loc2_:Number = this.§]!9§(this.§7L§,this.§>!Q§);
         this.§"y§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §5!b§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§6f§.sprite)
         {
            _loc1_ = §4!T§.§8_§() / §4!T§.§`!Y§ - §4!T§.SCREEN_HEIGHT >> 1;
            §#`§ = this.§6f§.sprite.x = LevelMain.§>7§ * ((1 - §0!D§.§4M§) / 2);
            §'r§ = this.§6f§.sprite.y = _loc1_ + LevelMain.§=q§ * (1 - §0!D§.§4M§) * §'K§.§!S§;
         }
      }
      
      public function §?!9§() : void
      {
         if(this.§6f§.sprite)
         {
            this.§6f§.sprite.scaleX = §4M§;
            this.§6f§.sprite.scaleY = §4M§;
         }
      }
      
      public function §'n§() : void
      {
         var _loc1_:Number = this.§=!f§ / LevelMain.§!5§ + this.§ !&§;
         var _loc2_:Number = this.§ !M§ / LevelMain.§!5§ + this.§2!=§;
         this.§&8§ = _loc1_ - LevelMain.§>7§ / 2 * §4!T§.§`!Y§ / §4!T§.§-!#§;
         this.§%c§ = _loc2_ - LevelMain.§=q§ / 2 + §'K§.§,W§;
         if(this.§6f§.background)
         {
            this.§6f§.background.§6!7§(this.§&8§,this.§%c§);
         }
         if(this.§6f§.objects)
         {
            this.§6f§.objects.§6!7§(this.§&8§,this.§%c§);
         }
         if(this.§6f§.mLevelEngine)
         {
            this.§6f§.mLevelEngine.§6!7§(this.§&8§,this.§%c§,§4M§);
         }
         if(this.§6f§.slingshot)
         {
            this.§6f§.slingshot.§6!7§(this.§&8§,this.§%c§);
         }
         if(this.§6f§.particles)
         {
            this.§6f§.particles.§6!7§(this.§&8§,this.§%c§);
         }
      }
      
      protected function §9!C§() : void
      {
         this.§5!B§(§&j§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§0!%§ = -1;
         this.§9!C§();
         this.§1!G§ = this.§<A§ = this.§3<§ = param1;
         this.§7!'§ = this.§^!-§ = this.§7!S§ = param2;
         this.§-!7§ = 0;
         this.§&!E§.x = this.§=!f§;
         this.§&!E§.y = this.§ !M§;
         this.§&!E§.scale = §;!U§;
         this.§;'§ = §;!U§;
         if(Math.abs(this.§7L§.x - this.§#D§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§=!f§ - this.§#D§.x) / (this.§7L§.x - this.§#D§.x) * §7!?§;
         }
         this.mDragging = true;
      }
      
      public function § !'§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§-!7§ += param1;
         var _loc3_:Number = this.§1!G§ - this.§<A§;
         if(this.§ 7§ > 0)
         {
            _loc2_ -= _loc3_ * LevelMain.§!5§ / §4M§ / this.§ 7§ * §7!?§;
            this.§%-§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§%-§ = true;
            }
            if(_loc2_ > §7!?§)
            {
               _loc2_ += (§7!?§ - _loc2_) * 0.3;
               this.§%-§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§<A§ = this.§1!G§;
      }
      
      protected function §>!W§() : Boolean
      {
         return this.mCurrentAction == §&j§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§1!G§ = param1;
            this.§7!'§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §&j§)
         {
            this.§5!B§(§+!=§);
            if(param1 > 0)
            {
               this.§1!G§ = param1;
            }
            _loc3_ = Math.abs(this.§1!G§ - this.§3<§);
            if(this.§-!7§ < §8f§ && _loc3_ >= §1!H§ && _loc3_ >= §>!I§ * this.§-!7§ / 1000)
            {
               if(this.§1!G§ < this.§3<§)
               {
                  this.§5!B§(§5!H§);
               }
               else
               {
                  this.§5!B§(§`!-§);
               }
               this.§]=§ = _loc3_ / this.§-!7§ * 10;
               this.§%-§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§%-§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §7!?§)
               {
                  this.§%-§ = true;
               }
            }
            else if(this.§-!7§ < §+!R§)
            {
               this.§'S§();
               this.§]=§ = §7!?§ / (§7!?§ / 500);
               this.§%-§ = true;
            }
            else
            {
               this.§ !'§(0);
               this.§?=§(0);
               this.§]=§ = §7!?§ / (§7!?§ / 500);
               this.§%-§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'S§() : void
      {
         if(this.mCurrentAction == §5!H§)
         {
            this.§5!B§(§`!-§);
         }
         else if(this.mCurrentAction == §`!-§)
         {
            this.§5!B§(§5!H§);
         }
         else if(this.mCurrentCameraSliderLocation >= §7!?§ / 2)
         {
            this.§5!B§(§`!-§);
         }
         else if(this.mCurrentCameraSliderLocation <= §7!?§ / 2)
         {
            this.§5!B§(§5!H§);
         }
      }
      
      public function §?=§(param1:int) : void
      {
         this.§0!%§ = param1;
         if(this.mCurrentCameraSliderLocation < §7!?§ / 2)
         {
            this.§5!B§(§`!-§);
         }
         else
         {
            this.§5!B§(§5!H§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§5!B§(§`!-§);
      }
      
      public function goToCastleView() : void
      {
         this.§5!B§(§5!H§);
      }
      
      public function §5!B§(param1:int) : void
      {
         this.§&!E§.x = this.§=!f§;
         this.§&!E§.y = this.§ !M§;
         this.§&!E§.scale = §;!U§;
         this.§;'§ = §;!U§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §7!?§)
         {
            return true;
         }
         if(this.mCurrentAction == §5!H§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!O§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §`!-§)
         {
            return true;
         }
         return false;
      }
      
      public function §&!>§(param1:§7!1§) : void
      {
         this.§2g§ = param1;
         if(this.§2g§ != null)
         {
            this.§58§ = new §7!1§();
            this.§58§.x = this.§=!f§;
            this.§58§.y = this.§ !M§;
            this.§58§.scale = §;!U§;
         }
         else
         {
            this.§=!f§ = this.§58§.x;
            this.§ !M§ = this.§58§.y;
            §;!U§ = this.§58§.scale;
            this.§58§ = null;
         }
      }
      
      protected function §;!i§() : void
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
         var _loc3_:Number = this.§"y§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§<!T§,Math.min(this.§0%§,_loc3_));
         if(_loc3_ != this.§"y§)
         {
            this.§"y§ = _loc3_;
            this.§;!i§();
         }
      }
      
      public function §`!h§() : Number
      {
         return (this.§+!1§ - this.§<!T§) / (this.§0%§ - this.§<!T§);
      }
      
      public function §`w§(param1:Number) : void
      {
         this.§+!1§ = Math.min(Math.max(param1,0),1) * (this.§0%§ - this.§<!T§) + this.§<!T§;
      }
      
      public function §^?§() : void
      {
         this.§"y§ = Math.max(this.§"y§ - 0.5,0.5);
      }
      
      public function §7!O§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§"y§;
         _loc1_ += " mXcenterB2: " + this.§=!f§;
         _loc1_ += " mYcenterB2: " + this.§ !M§;
         _loc1_ += " mXcenterB2target: " + this.§"y§;
         _loc1_ += "\n mYcenterB2target: " + this.§"y§;
         _loc1_ += " mXcenterB2previous: " + this.§"y§;
         _loc1_ += " mYcenterB2previous: " + this.§"y§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§"y§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§"y§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§"y§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§"y§;
         _loc1_ += " mTargetScale: " + this.§"y§;
         _loc1_ += " mTargetScalePrevious: " + this.§"y§;
         _loc1_ += " mCastleCameraX: " + this.§"y§;
         _loc1_ += "\n mCastleCameraY: " + this.§"y§;
         _loc1_ += " mCastleCameraScale: " + this.§"y§;
         _loc1_ += " mBirdCameraX: " + this.§"y§;
         _loc1_ += " mBirdCameraY: " + this.§"y§;
         _loc1_ += " mBirdCameraScale: " + this.§"y§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§"y§;
         _loc1_ += " mScreenTopScroll: " + this.§"y§;
         _loc1_ += " mDragging: " + this.§"y§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§"y§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§"y§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§"y§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§"y§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§"y§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§"y§;
         _loc1_ += " mDraggingTimer: " + this.§"y§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§"y§;
         _loc1_ += " mCameraBorderRight: " + this.§"y§;
         _loc1_ += " mCameraBorderSky: " + this.§"y§;
         _loc1_ += " mCameraBorderGround: " + this.§"y§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§"y§ + "\n ");
      }
   }
}
