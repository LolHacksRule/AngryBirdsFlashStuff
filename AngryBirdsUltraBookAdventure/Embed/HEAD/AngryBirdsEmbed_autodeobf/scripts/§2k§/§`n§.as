package §2k§
{
   import §1!-§.§5>§;
   import §1!-§.§@Z§;
   import §3a§.§7!+§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§"6§;
   import §^!A§.§;!%§;
   
   public class §`n§
   {
      
      public static const §"P§:Number = 1.25;
      
      public static const §[c§:Number = 0.15;
      
      public static const §"b§:Number = §=w§.§9!#§ * § !§.§`J§;
      
      public static const §]$§:Number = §=w§.§0i§ * § !§.§`J§;
      
      public static const §,!J§:Number = 0.1;
      
      public static const §5O§:int = 1500;
      
      public static const §'t§:int = 10;
      
      public static const §#2§:int = 15;
      
      public static const §%=§:int = 300;
      
      public static const §%b§:int = 1000;
      
      public static const §1%§:int = 10000;
      
      public static const §[t§:int = §1%§ / 50;
      
      public static const §3!J§:int = 0;
      
      public static const §2Z§:int = 1;
      
      public static const §2M§:int = 2;
      
      public static const §4!I§:int = 3;
      
      public static const §4q§:int = 4;
      
      public static const §^!9§:int = 5;
      
      public static const §7,§:String = "CASTLE";
      
      public static const §>d§:String = "SLINGSHOT";
      
      protected static var §55§:Number;
      
      public static var §!!7§:Number;
      
      public static var §-!N§:Number;
      
      public static const § D§:Number = 2000;
       
      
      private var § f§:Number = 1.0;
      
      private var §[u§:Number = 0.2;
      
      protected var §5I§:Number;
      
      protected var §>?§:Number;
      
      protected var §+]§:Number;
      
      public var §?V§:§ !§;
      
      public var § !&§:Number;
      
      public var §5!!§:Number;
      
      protected var §8c§:§for§;
      
      protected var §9!K§:§for§;
      
      public var §?!A§:Number;
      
      public var §@h§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §?i§:Number;
      
      public var §>!>§:Number;
      
      public var §2!D§:Number;
      
      public var §8I§:Number;
      
      private var §;n§:Number;
      
      private var §3>§:§=!J§;
      
      private var §!!<§:§=!J§;
      
      protected var §4x§:Number = 0;
      
      protected var §5v§:Number = 0;
      
      protected var § !?§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §break§:Number = 0;
      
      public var §5!C§:Boolean = true;
      
      public var §0q§:Number = 0;
      
      public var §0r§:Number = 0;
      
      public var §7"§:Number = 0;
      
      public var § !M§:Number = 0;
      
      public var §;B§:Number = 0;
      
      public var §@!I§:Number = 0;
      
      public var §8G§:Number = 0;
      
      public var §6i§:Number = 0;
      
      public var §[#§:Number = 0;
      
      private var §1!!§:§=!J§;
      
      public var §<f§:Number = 0;
      
      private var §&! §:Number = 0;
      
      private var §>p§:Number = 0;
      
      private var §1B§:§5>§ = null;
      
      private var §1H§:§5>§ = null;
      
      public function §`n§(param1:§ !§, param2:§@Z§, param3:Number = 1.0)
      {
         this.§1!!§ = new §=!J§(0,0,1,false);
         super();
         this.§>?§ = 0;
         this.§+]§ = 0;
         this.§?V§ = param1;
         §`n§.§55§ = 1;
         this.§ f§ = Math.max(1,Math.min(2,param3));
         this.§5I§ = this.§ f§;
         this.§0!E§(param2);
         if(this.§8c§ && this.§9!K§)
         {
            this.§]p§();
            this.§4x§ = this.§8c§.x - this.§9!K§.x;
            this.§5v§ = this.§8c§.y - this.§9!K§.y;
            this.§ !?§ = this.§8c§.scale - this.§9!K§.scale;
            this.§>?§ = this.§8c§.x;
            this.§+]§ = this.§8c§.y;
            §55§ = this.§8c§.scale * this.§5I§;
         }
         this.mCurrentCameraSliderLocation = §1%§;
         this.§5!C§ = true;
         this.§break§ = §1%§ / 500;
      }
      
      private static function §^c§() : Number
      {
         var _loc1_:Number = §=w§.§continue§ / §=w§.§'c§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §&"§() : Number
      {
         return §55§ * §^c§();
      }
      
      public function get §^!4§() : Number
      {
         return this.§5I§;
      }
      
      public function set §^!4§(param1:Number) : void
      {
         this.§5I§ = param1;
      }
      
      public function get §]!C§() : Number
      {
         return this.§;n§;
      }
      
      public function §9D§() : Number
      {
         return §"b§ / (this.§>!>§ - this.§?i§);
      }
      
      public function get §'!D§() : Number
      {
         return this.§ f§;
      }
      
      public function get §0g§() : Number
      {
         return this.§[u§;
      }
      
      public function §"!6§(param1:Number) : void
      {
         this.§5I§ = param1;
         this.§4r§();
         this.§16§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §^!9§)
         {
            return;
         }
         this.goToCastleView();
         this.§0q§ = 2000;
         this.§'S§();
         this.§5!K§();
         this.§^a§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§>?§ = this.§9!K§.x;
         this.§+]§ = this.§9!K§.y;
         this.§5!C§ = false;
         this.§break§ = §1%§ / 160000 * param1;
         this.§]V§(§^!9§);
      }
      
      public function §]p§() : void
      {
         this.§?i§ = this.§9!K§.x - §"b§ / this.§9!K§.scale / 2;
         this.§>!>§ = this.§8c§.x + §"b§ / this.§8c§.scale / 2;
         this.§2!D§ = this.§?V§.§%>§.§,j§ - 20 * § !§.§+;§ * § !§.§`J§;
         this.§8I§ = this.§?V§.§%>§.§,j§ + 4;
         var _loc1_:Number = §"b§ / (this.§>!>§ - this.§?i§);
         this.§;n§ = this.§8I§ - §]$§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§?V§ = null;
      }
      
      public function §0!E§(param1:§@Z§) : void
      {
         var _loc3_:§5>§ = null;
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
         while(_loc2_ < param1.§8e§)
         {
            _loc3_ = param1.§8=§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§!1§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §]$§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §"b§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §>d§)
            {
               this.§9!K§ = new §for§(_loc9_,_loc10_,_loc13_,true);
               this.§!!<§ = new §=!J§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §7,§)
            {
               this.§8c§ = new §for§(_loc9_,_loc10_,_loc13_,false);
               this.§3>§ = new §=!J§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §7!+§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §5T§(param1:§@Z§) : void
      {
         var _loc2_:§5>§ = new §5>§();
         _loc2_.id = §>d§;
         _loc2_.x = this.§9!K§.x;
         _loc2_.y = this.§9!K§.y;
         var _loc3_:Number = §"b§ / this.§9!K§.scale / 2;
         var _loc4_:Number = §]$§ / this.§9!K§.scale / 2;
         _loc2_.left = this.§9!K§.x - _loc3_;
         _loc2_.right = this.§9!K§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §]$§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §"b§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§5>§;
         (_loc7_ = new §5>§()).id = §7,§;
         _loc7_.x = this.§8c§.x;
         _loc7_.y = this.§8c§.y;
         var _loc8_:Number = §"b§ / this.§8c§.scale / 2;
         var _loc9_:Number = §]$§ / this.§8c§.scale / 2;
         _loc7_.left = this.§8c§.x - _loc8_;
         _loc7_.right = this.§8c§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §]$§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §"b§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§5j§();
         param1.§'_§(_loc2_);
         param1.§'_§(_loc7_);
      }
      
      public function §!1§(param1:§5>§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §=w§.§9!#§ * 0.5 / _loc2_ * § !§.§`J§;
         var _loc4_:Number = param1.y - §=w§.§0i§ * 0.5 / _loc2_ * § !§.§`J§;
         var _loc5_:Number = _loc3_ + §=w§.§9!#§ / _loc2_ * § !§.§`J§;
         var _loc6_:Number = _loc4_ + §=w§.§0i§ / _loc2_ * § !§.§`J§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §<h§(param1:§for§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§break§;
         if(_loc3_ >= §1%§)
         {
            _loc3_ = §1%§;
            this.§]V§(§3!J§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§]V§(§3!J§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §0f§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§break§;
         var _loc4_:Number = -§1%§ * 0.7;
         if(_loc2_ >= §1%§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §1%§;
            }
            this.§break§ = -this.§break§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §>S§(param1:Number) : void
      {
         if(this.mCurrentAction == §^!9§)
         {
            this.§0f§(param1);
         }
         else if(this.mCurrentAction == §2Z§)
         {
            this.§<h§(this.§8c§,param1);
         }
         else if(this.mCurrentAction == §2M§)
         {
            this.§<h§(this.§9!K§,-param1);
         }
         else if(this.mCurrentAction == §4!I§)
         {
            this.§5!C§ = true;
         }
         else if(this.mCurrentAction == §4q§)
         {
            this.§'i§(param1);
         }
      }
      
      public function §&!$§(param1:Number) : void
      {
         if(this.§1B§)
         {
            this.§>?§ = this.§1B§.x;
            this.§+]§ = this.§1B§.y;
            §55§ = §"b§ / (this.§1B§.right - this.§1B§.left);
         }
         else
         {
            this.§4r§();
            this.§>S§(param1);
            this.§@D§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§'S§();
         this.§5!K§();
         this.§^a§();
      }
      
      private function §39§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!<§.scale + (this.§3>§.scale - this.§!!<§.scale) * param1;
         var _loc4_:Number = this.§!!<§.x + (this.§3>§.x - this.§!!<§.x) * param1;
         var _loc5_:Number = this.§!!<§.y + (this.§3>§.y - this.§!!<§.y) * param1;
         this.§1!!§.x -= (this.§1!!§.x - _loc4_) * param2;
         this.§1!!§.y -= (this.§1!!§.y - _loc5_) * param2;
         this.§1!!§.scale -= (this.§1!!§.scale - _loc3_) * param2;
      }
      
      protected function §16§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4x§ != 0)
         {
            if(!this.§5!C§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §1%§;
            this.§39§(_loc3_,param2);
            this.§>?§ = this.§1!!§.x;
            this.§+]§ = this.§1!!§.y;
            §55§ = this.§1!!§.scale;
         }
      }
      
      public function §@D§(param1:Number, param2:Number) : void
      {
         var _loc5_:§;!%§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §1%§)
         {
            this.§5!C§ = true;
         }
         if(this.mCurrentAction == §4!I§)
         {
            if(!this.§?V§.activeObject)
            {
               this.§]V§(§2Z§);
               this.§[#§ = §%b§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§?V§.activeObject).§'[§().GetPosition().x + (!!_loc5_.§@A§ ? _loc5_.§@A§ * § !§.§`J§ : 0);
               _loc7_ = _loc5_.§'[§().GetPosition().y + (!!_loc5_.§1!3§ ? _loc5_.§1!3§ * § !§.§`J§ : 0);
               if((_loc8_ = _loc5_.§'[§().GetLinearVelocity().x) > 0 && this.§4x§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§4x§ * §1%§;
               }
               if(param1 >= §1%§)
               {
                  param1 = §1%§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §1%§;
               this.§39§(_loc9_,_loc4_);
               _loc10_ = this.§1!!§.x - §"b§ * 0.5 / this.§1!!§.scale;
               _loc11_ = this.§1!!§.y - §]$§ * 0.5 / this.§1!!§.scale;
               _loc12_ = this.§1!!§.x + §"b§ * 0.5 / this.§1!!§.scale;
               _loc13_ = this.§1!!§.y + §]$§ * 0.5 / this.§1!!§.scale;
               _loc14_ = 150 * § !§.§`J§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§?i§,_loc15_);
               _loc17_ = Math.min(this.§>!>§,_loc17_);
               _loc19_ = Math.abs(§"b§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§]$§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§1!!§.scale)
               {
                  _loc21_ = this.§1!!§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §"b§ * 0.5 / _loc21_ > this.§>!>§)
               {
                  _loc15_ = (_loc17_ = this.§>!>§) - §"b§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§?i§)
                  {
                     _loc15_ = this.§?i§;
                  }
               }
               if(_loc22_ - §"b§ * 0.5 / _loc21_ < this.§?i§)
               {
                  _loc17_ = (_loc15_ = this.§?i§) + §"b§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§>!>§)
                  {
                     _loc17_ = this.§>!>§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§"b§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §"b§ * 0.5 / _loc21_ < this.§2!D§)
               {
                  _loc23_ = this.§2!D§ + §"b§ * 0.5 / _loc21_;
               }
               this.§>?§ -= (this.§>?§ - _loc22_) * _loc4_;
               this.§<f§ -= (this.§<f§ - _loc21_) * _loc4_;
               §55§ = this.§<f§;
               this.§+]§ -= (this.§+]§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§>!>§ || _loc6_ <= this.§?i§)
               {
                  this.§1!!§.scale = §55§;
                  this.§1!!§.x = this.§>?§;
                  this.§1!!§.y = this.§+]§;
               }
            }
         }
         else
         {
            this.§16§(param1,_loc4_);
         }
      }
      
      public function §,!%§(param1:Number, param2:Number) : void
      {
         this.§&! § = param1;
         this.§>p§ = param2;
      }
      
      private function §=h§(param1:§=!J§, param2:§for§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §[c§ + (param2.scale - §[c§) * this.§5I§ * §`n§.§^c§();
         if(§"b§ / param1.scale > this.§>!>§ - this.§?i§)
         {
            _loc3_ = §"b§ / (this.§>!>§ - this.§?i§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §1`§(param1:§=!J§, param2:§for§) : Boolean
      {
         var _loc3_:Boolean = this.§=h§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §]$§ * 0.5 / param1.scale;
         var _loc5_:Number = §]$§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §"b§ * 0.5 / param1.scale) < this.§?i§ && param1.§^s§)
         {
            param1.x += this.§?i§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §"b§ * 0.5 / param1.scale) > this.§>!>§ && !param1.§^s§)
         {
            param1.x += this.§>!>§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §[1§(param1:§=!J§, param2:§for§) : Number
      {
         return (param1.scale - §[c§) / (§`n§.§^c§() * (param2.scale - §[c§));
      }
      
      protected function §4r§() : void
      {
         this.§1`§(this.§!!<§,this.§9!K§);
         var _loc1_:Number = this.§[1§(this.§!!<§,this.§9!K§);
         this.§1`§(this.§3>§,this.§8c§);
         var _loc2_:Number = this.§[1§(this.§3>§,this.§8c§);
         this.§5I§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §'S§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§?V§.sprite)
         {
            _loc1_ = §=w§.§0E§() / §=w§.§continue§ - §=w§.§0i§ >> 1;
            §!!7§ = this.§?V§.sprite.x = § !§.§,!=§ * ((1 - §`n§.§&"§) / 2);
            §-!N§ = this.§?V§.sprite.y = _loc1_ + § !§.§+;§ * (1 - §`n§.§&"§) * §"6§.§ E§;
         }
      }
      
      public function §^a§() : void
      {
         if(this.§?V§.sprite)
         {
            this.§?V§.sprite.scaleX = §&"§;
            this.§?V§.sprite.scaleY = §&"§;
         }
      }
      
      public function §5!K§() : void
      {
         var _loc1_:Number = this.§>?§ / § !§.§`J§ + this.§&! §;
         var _loc2_:Number = this.§+]§ / § !§.§`J§ + this.§>p§;
         this.§?!A§ = _loc1_ - § !§.§,!=§ / 2 * §=w§.§continue§ / §=w§.§44§;
         this.§@h§ = _loc2_ - § !§.§+;§ / 2 + §"6§.§6!?§;
         if(this.§?V§.background)
         {
            this.§?V§.background.§?!<§(this.§?!A§,this.§@h§);
         }
         if(this.§?V§.objects)
         {
            this.§?V§.objects.§?!<§(this.§?!A§,this.§@h§);
         }
         if(this.§?V§.§'O§)
         {
            this.§",§();
         }
         if(this.§?V§.slingshot)
         {
            this.§?V§.slingshot.§?!<§(this.§?!A§,this.§@h§);
         }
         if(this.§?V§.particles)
         {
            this.§?V§.particles.§?!<§(this.§?!A§,this.§@h§);
         }
      }
      
      protected function §",§() : void
      {
         this.§?V§.§'O§.§?!<§(this.§?!A§,this.§@h§,§55§);
      }
      
      protected function §6;§() : void
      {
         this.§]V§(§4q§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§[#§ = -1;
         this.§6;§();
         this.§;B§ = this.§8G§ = this.§7"§ = param1;
         this.§@!I§ = this.§6i§ = this.§ !M§ = param2;
         this.§0r§ = 0;
         this.§1!!§.x = this.§>?§;
         this.§1!!§.y = this.§+]§;
         this.§1!!§.scale = §55§;
         this.§<f§ = §55§;
         if(Math.abs(this.§3>§.x - this.§!!<§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§>?§ - this.§!!<§.x) / (this.§3>§.x - this.§!!<§.x) * §1%§;
         }
         this.mDragging = true;
      }
      
      public function §'i§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§0r§ += param1;
         var _loc3_:Number = this.§;B§ - this.§8G§;
         if(this.§4x§ > 0)
         {
            _loc2_ -= _loc3_ * § !§.§`J§ / §&"§ / this.§4x§ * §1%§;
            this.§5!C§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§5!C§ = true;
            }
            if(_loc2_ > §1%§)
            {
               _loc2_ += (§1%§ - _loc2_) * 0.3;
               this.§5!C§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§8G§ = this.§;B§;
      }
      
      protected function §&9§() : Boolean
      {
         return this.mCurrentAction == §4q§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§;B§ = param1;
            this.§@!I§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §4q§)
         {
            this.§]V§(§3!J§);
            if(param1 > 0)
            {
               this.§;B§ = param1;
            }
            _loc3_ = Math.abs(this.§;B§ - this.§7"§);
            if(this.§0r§ < §5O§ && _loc3_ >= §'t§ && _loc3_ >= §#2§ * this.§0r§ / 1000)
            {
               if(this.§;B§ < this.§7"§)
               {
                  this.§]V§(§2Z§);
               }
               else
               {
                  this.§]V§(§2M§);
               }
               this.§break§ = _loc3_ / this.§0r§ * 10;
               this.§5!C§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§5!C§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §1%§)
               {
                  this.§5!C§ = true;
               }
            }
            else if(this.§0r§ < §%=§)
            {
               this.§1!,§();
               this.§break§ = §1%§ / (§1%§ / 500);
               this.§5!C§ = true;
            }
            else
            {
               this.§'i§(0);
               this.§%§(0);
               this.§break§ = §1%§ / (§1%§ / 500);
               this.§5!C§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §1!,§() : void
      {
         if(this.mCurrentAction == §2Z§)
         {
            this.§]V§(§2M§);
         }
         else if(this.mCurrentAction == §2M§)
         {
            this.§]V§(§2Z§);
         }
         else if(this.mCurrentCameraSliderLocation >= §1%§ / 2)
         {
            this.§]V§(§2M§);
         }
         else if(this.mCurrentCameraSliderLocation <= §1%§ / 2)
         {
            this.§]V§(§2Z§);
         }
      }
      
      public function §%§(param1:int) : void
      {
         this.§[#§ = param1;
         if(this.mCurrentCameraSliderLocation < §1%§ / 2)
         {
            this.§]V§(§2M§);
         }
         else
         {
            this.§]V§(§2Z§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§]V§(§2M§);
      }
      
      public function goToCastleView() : void
      {
         this.§]V§(§2Z§);
      }
      
      public function §]V§(param1:int) : void
      {
         this.§1!!§.x = this.§>?§;
         this.§1!!§.y = this.§+]§;
         this.§1!!§.scale = §55§;
         this.§<f§ = §55§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §1%§)
         {
            return true;
         }
         if(this.mCurrentAction == §2Z§)
         {
            return true;
         }
         return false;
      }
      
      public function §9_§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §2M§)
         {
            return true;
         }
         return false;
      }
      
      public function §`x§(param1:§5>§) : void
      {
         this.§1B§ = param1;
         if(this.§1B§ != null)
         {
            this.§1H§ = new §5>§();
            this.§1H§.x = this.§>?§;
            this.§1H§.y = this.§+]§;
            this.§1H§.scale = §55§;
         }
         else
         {
            this.§>?§ = this.§1H§.x;
            this.§+]§ = this.§1H§.y;
            §55§ = this.§1H§.scale;
            this.§1H§ = null;
         }
      }
      
      protected function §=>§() : void
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
         var _loc3_:Number = this.§5I§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§0g§,Math.min(this.§'!D§,_loc3_));
         if(_loc3_ != this.§5I§)
         {
            this.§5I§ = _loc3_;
            this.§=>§();
         }
      }
      
      public function §[$§() : Number
      {
         return (this.§^!4§ - this.§0g§) / (this.§'!D§ - this.§0g§);
      }
      
      public function §]!K§(param1:Number) : void
      {
         this.§^!4§ = Math.min(Math.max(param1,0),1) * (this.§'!D§ - this.§0g§) + this.§0g§;
      }
      
      public function §"!;§() : void
      {
         this.§5I§ = Math.max(this.§5I§ - 0.5,0.5);
      }
      
      public function §?!$§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§5I§;
         _loc1_ += " mXcenterB2: " + this.§>?§;
         _loc1_ += " mYcenterB2: " + this.§+]§;
         _loc1_ += " mXcenterB2target: " + this.§5I§;
         _loc1_ += "\n mYcenterB2target: " + this.§5I§;
         _loc1_ += " mXcenterB2previous: " + this.§5I§;
         _loc1_ += " mYcenterB2previous: " + this.§5I§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§5I§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§5I§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§5I§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§5I§;
         _loc1_ += " mTargetScale: " + this.§5I§;
         _loc1_ += " mTargetScalePrevious: " + this.§5I§;
         _loc1_ += " mCastleCameraX: " + this.§5I§;
         _loc1_ += "\n mCastleCameraY: " + this.§5I§;
         _loc1_ += " mCastleCameraScale: " + this.§5I§;
         _loc1_ += " mBirdCameraX: " + this.§5I§;
         _loc1_ += " mBirdCameraY: " + this.§5I§;
         _loc1_ += " mBirdCameraScale: " + this.§5I§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§5I§;
         _loc1_ += " mScreenTopScroll: " + this.§5I§;
         _loc1_ += " mDragging: " + this.§5I§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§5I§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§5I§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§5I§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§5I§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§5I§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§5I§;
         _loc1_ += " mDraggingTimer: " + this.§5I§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§5I§;
         _loc1_ += " mCameraBorderRight: " + this.§5I§;
         _loc1_ += " mCameraBorderSky: " + this.§5I§;
         _loc1_ += " mCameraBorderGround: " + this.§5I§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§5I§ + "\n ");
      }
      
      public function §#r§() : Number
      {
         return this.§>?§;
      }
      
      public function §!!,§() : Number
      {
         return this.§+]§;
      }
   }
}
