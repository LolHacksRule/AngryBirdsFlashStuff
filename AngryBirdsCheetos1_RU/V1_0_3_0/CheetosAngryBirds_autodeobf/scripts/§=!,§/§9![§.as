package §=!,§
{
   import §+!^§.§'Y§;
   import §7!P§.§-3§;
   import §9T§.§,S§;
   import §9T§.§=!^§;
   import §[>§.§`,§;
   import §^9§.§!K§;
   import §^9§.§3A§;
   
   public class §9![§
   {
      
      public static const §-T§:Number = 1.25;
      
      public static const §8Q§:Number = 0.15;
      
      public static const §4a§:Number = §'Y§.§8o§ * §=!^§.§4#§;
      
      public static const §>0§:Number = §'Y§.§&I§ * §=!^§.§4#§;
      
      public static const §<!0§:Number = 0.1;
      
      public static const §5R§:int = 1500;
      
      public static const §!!P§:int = 10;
      
      public static const §1z§:int = 15;
      
      public static const §^s§:int = 300;
      
      public static const §<j§:int = 1000;
      
      public static const § k§:int = 10000;
      
      public static const §%A§:int = § k§ / 50;
      
      public static const §;!L§:int = 0;
      
      public static const §0!?§:int = 1;
      
      public static const §-[§:int = 2;
      
      public static const §7!A§:int = 3;
      
      public static const §<c§:int = 4;
      
      public static const §]t§:int = 5;
      
      public static const §5H§:String = "CASTLE";
      
      public static const §2!^§:String = "SLINGSHOT";
      
      protected static var §8n§:Number;
      
      public static var §1`§:Number;
      
      public static var §!!5§:Number;
      
      public static const §"s§:Number = 2000;
       
      
      private var §3>§:Number = 1.0;
      
      private var §3!4§:Number = 0.2;
      
      protected var §5! §:Number;
      
      protected var §^!&§:Number;
      
      protected var §[!B§:Number;
      
      public var §&?§:§=!^§;
      
      public var §#D§:Number;
      
      public var §>Y§:Number;
      
      private var §`;§:§<[§;
      
      private var §?!0§:§<[§;
      
      public var §;g§:Number;
      
      public var §]]§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §7!C§:Number;
      
      public var §4!<§:Number;
      
      public var §#!$§:Number;
      
      public var §<#§:Number;
      
      private var §7t§:Number;
      
      private var § J§:§,!Z§;
      
      private var §13§:§,!Z§;
      
      protected var §;k§:Number = 0;
      
      protected var §6+§:Number = 0;
      
      protected var §,j§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §#m§:Number = 0;
      
      public var §1U§:Boolean = true;
      
      public var §2!-§:Number = 0;
      
      public var §<P§:Number = 0;
      
      public var §4!M§:Number = 0;
      
      public var §-n§:Number = 0;
      
      public var §"!F§:Number = 0;
      
      public var §7a§:Number = 0;
      
      public var §,!O§:Number = 0;
      
      public var §=e§:Number = 0;
      
      public var § <§:Number = 0;
      
      private var §?!1§:§,!Z§;
      
      public var §<!Q§:Number = 0;
      
      private var §1t§:Number = 0;
      
      private var §8!J§:Number = 0;
      
      private var §9J§:§!K§ = null;
      
      private var §^!"§:§!K§ = null;
      
      public function §9![§(param1:§=!^§, param2:§3A§, param3:Number = 1.0)
      {
         this.§?!1§ = new §,!Z§(0,0,1,false);
         super();
         this.§^!&§ = 0;
         this.§[!B§ = 0;
         this.§&?§ = param1;
         §9![§.§8n§ = 1;
         this.§3>§ = Math.max(1,Math.min(2,param3));
         this.§5! § = this.§3>§;
         this.§^!R§(param2);
         if(this.§`;§ && this.§?!0§)
         {
            this.§ b§();
            this.§;k§ = this.§`;§.x - this.§?!0§.x;
            this.§6+§ = this.§`;§.y - this.§?!0§.y;
            this.§,j§ = this.§`;§.scale - this.§?!0§.scale;
            this.§^!&§ = this.§`;§.x;
            this.§[!B§ = this.§`;§.y;
            §8n§ = this.§`;§.scale * this.§5! §;
         }
         this.mCurrentCameraSliderLocation = § k§;
         this.§1U§ = true;
         this.§#m§ = § k§ / 500;
      }
      
      private static function §0!J§() : Number
      {
         var _loc1_:Number = §'Y§.§;x§ / §'Y§.§=!a§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §+g§() : Number
      {
         return §8n§ * §0!J§();
      }
      
      public function get manualScale() : Number
      {
         return this.§5! §;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§5! § = param1;
      }
      
      public function get §==§() : Number
      {
         return this.§7t§;
      }
      
      public function §9!#§() : Number
      {
         return §4a§ / (this.§4!<§ - this.§7!C§);
      }
      
      public function get §7!R§() : Number
      {
         return this.§3>§;
      }
      
      public function get §&!T§() : Number
      {
         return this.§3!4§;
      }
      
      public function §5!9§(param1:Number) : void
      {
         this.§5! § = param1;
         this.§^!F§();
         this.§14§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §]t§)
         {
            return;
         }
         this.goToCastleView();
         this.§2!-§ = 2000;
         this.§?+§();
         this.§24§();
         this.§9I§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§^!&§ = this.§?!0§.x;
         this.§[!B§ = this.§?!0§.y;
         this.§1U§ = false;
         this.§#m§ = § k§ / 160000 * param1;
         this.§8W§(§]t§);
      }
      
      public function § b§() : void
      {
         this.§7!C§ = this.§?!0§.x - §4a§ / this.§?!0§.scale / 2;
         this.§4!<§ = this.§`;§.x + §4a§ / this.§`;§.scale / 2;
         this.§#!$§ = this.§&?§.§5!V§.§?!$§ - 20 * §=!^§.§4!1§ * §=!^§.§4#§;
         this.§<#§ = this.§&?§.§5!V§.§?!$§ + 4;
         var _loc1_:Number = §4a§ / (this.§4!<§ - this.§7!C§);
         this.§7t§ = this.§<#§ - §>0§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§&?§ = null;
      }
      
      public function §^!R§(param1:§3A§) : void
      {
         var _loc3_:§!K§ = null;
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
         while(_loc2_ < param1.§7!W§)
         {
            _loc3_ = param1.§<L§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§#!'§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §>0§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §4a§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §2!^§)
            {
               this.§?!0§ = new §<[§(_loc9_,_loc10_,_loc13_,true);
               this.§13§ = new §,!Z§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §5H§)
            {
               this.§`;§ = new §<[§(_loc9_,_loc10_,_loc13_,false);
               this.§ J§ = new §,!Z§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §-3§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function get(param1:§3A§) : void
      {
         var _loc2_:§!K§ = new §!K§();
         _loc2_.id = §2!^§;
         _loc2_.x = this.§?!0§.x;
         _loc2_.y = this.§?!0§.y;
         var _loc3_:Number = §4a§ / this.§?!0§.scale / 2;
         var _loc4_:Number = §>0§ / this.§?!0§.scale / 2;
         _loc2_.left = this.§?!0§.x - _loc3_;
         _loc2_.right = this.§?!0§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§!K§;
         (_loc5_ = new §!K§()).id = §5H§;
         _loc5_.x = this.§`;§.x;
         _loc5_.y = this.§`;§.y;
         var _loc6_:Number = §4a§ / this.§`;§.scale / 2;
         var _loc7_:Number = §>0§ / this.§`;§.scale / 2;
         _loc5_.left = this.§`;§.x - _loc6_;
         _loc5_.right = this.§`;§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§8L§();
         param1.§01§(_loc2_);
         param1.§01§(_loc5_);
      }
      
      public function §#!'§(param1:§!K§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §'Y§.§8o§ * 0.5 / _loc2_ * §=!^§.§4#§;
         var _loc4_:Number = param1.y - §'Y§.§&I§ * 0.5 / _loc2_ * §=!^§.§4#§;
         var _loc5_:Number = _loc3_ + §'Y§.§8o§ / _loc2_ * §=!^§.§4#§;
         var _loc6_:Number = _loc4_ + §'Y§.§&I§ / _loc2_ * §=!^§.§4#§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §^^§(param1:§<[§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§#m§;
         if(_loc3_ >= § k§)
         {
            _loc3_ = § k§;
            this.§8W§(§;!L§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§8W§(§;!L§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §^c§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§#m§;
         var _loc4_:Number = -§ k§ * 0.7;
         if(_loc2_ >= § k§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = § k§;
            }
            this.§#m§ = -this.§#m§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §`!N§(param1:Number) : void
      {
         if(this.mCurrentAction == §]t§)
         {
            this.§^c§(param1);
         }
         else if(this.mCurrentAction == §0!?§)
         {
            this.§^^§(this.§`;§,param1);
         }
         else if(this.mCurrentAction == §-[§)
         {
            this.§^^§(this.§?!0§,-param1);
         }
         else if(this.mCurrentAction == §7!A§)
         {
            this.§1U§ = true;
         }
         else if(this.mCurrentAction == §<c§)
         {
            this.§]!S§(param1);
         }
      }
      
      public function §1!2§(param1:Number) : void
      {
         if(this.§9J§)
         {
            this.§^!&§ = this.§9J§.x;
            this.§[!B§ = this.§9J§.y;
            §8n§ = §4a§ / (this.§9J§.right - this.§9J§.left);
         }
         else
         {
            this.§^!F§();
            this.§`!N§(param1);
            this.§#N§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?+§();
         this.§24§();
         this.§9I§();
      }
      
      private function §=W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§13§.scale + (this.§ J§.scale - this.§13§.scale) * param1;
         var _loc4_:Number = this.§13§.x + (this.§ J§.x - this.§13§.x) * param1;
         var _loc5_:Number = this.§13§.y + (this.§ J§.y - this.§13§.y) * param1;
         this.§?!1§.x -= (this.§?!1§.x - _loc4_) * param2;
         this.§?!1§.y -= (this.§?!1§.y - _loc5_) * param2;
         this.§?!1§.scale -= (this.§?!1§.scale - _loc3_) * param2;
      }
      
      protected function §14§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;k§ != 0)
         {
            if(!this.§1U§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / § k§;
            this.§=W§(_loc3_,param2);
            this.§^!&§ = this.§?!1§.x;
            this.§[!B§ = this.§?!1§.y;
            §8n§ = this.§?!1§.scale;
         }
      }
      
      public function §#N§(param1:Number, param2:Number) : void
      {
         var _loc5_:§`,§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= § k§)
         {
            this.§1U§ = true;
         }
         if(this.mCurrentAction == §7!A§)
         {
            if(!this.§&?§.activeObject)
            {
               this.§8W§(§0!?§);
               this.§ <§ = §<j§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§&?§.activeObject).§7!<§().GetPosition().x + (!!_loc5_.§4H§ ? _loc5_.§4H§ * §=!^§.§4#§ : 0);
               _loc7_ = _loc5_.§7!<§().GetPosition().y + (!!_loc5_.§3!Y§ ? _loc5_.§3!Y§ * §=!^§.§4#§ : 0);
               if((_loc8_ = _loc5_.§7!<§().GetLinearVelocity().x) > 0 && this.§;k§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§;k§ * § k§;
               }
               if(param1 >= § k§)
               {
                  param1 = § k§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / § k§;
               this.§=W§(_loc9_,_loc4_);
               _loc10_ = this.§?!1§.x - §4a§ * 0.5 / this.§?!1§.scale;
               _loc11_ = this.§?!1§.y - §>0§ * 0.5 / this.§?!1§.scale;
               _loc12_ = this.§?!1§.x + §4a§ * 0.5 / this.§?!1§.scale;
               _loc13_ = this.§?!1§.y + §>0§ * 0.5 / this.§?!1§.scale;
               _loc14_ = 150 * §=!^§.§4#§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§7!C§,_loc15_);
               _loc17_ = Math.min(this.§4!<§,_loc17_);
               _loc19_ = Math.abs(§4a§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§>0§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§?!1§.scale)
               {
                  _loc21_ = this.§?!1§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §4a§ * 0.5 / _loc21_ > this.§4!<§)
               {
                  _loc15_ = (_loc17_ = this.§4!<§) - §4a§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§7!C§)
                  {
                     _loc15_ = this.§7!C§;
                  }
               }
               if(_loc22_ - §4a§ * 0.5 / _loc21_ < this.§7!C§)
               {
                  _loc17_ = (_loc15_ = this.§7!C§) + §4a§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§4!<§)
                  {
                     _loc17_ = this.§4!<§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§4a§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §4a§ * 0.5 / _loc21_ < this.§#!$§)
               {
                  _loc23_ = this.§#!$§ + §4a§ * 0.5 / _loc21_;
               }
               this.§^!&§ -= (this.§^!&§ - _loc22_) * _loc4_;
               this.§<!Q§ -= (this.§<!Q§ - _loc21_) * _loc4_;
               §8n§ = this.§<!Q§;
               this.§[!B§ -= (this.§[!B§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§4!<§ || _loc6_ <= this.§7!C§)
               {
                  this.§?!1§.scale = §8n§;
                  this.§?!1§.x = this.§^!&§;
                  this.§?!1§.y = this.§[!B§;
               }
            }
         }
         else
         {
            this.§14§(param1,_loc4_);
         }
      }
      
      public function §5K§(param1:Number, param2:Number) : void
      {
         this.§1t§ = param1;
         this.§8!J§ = param2;
      }
      
      private function §`!P§(param1:§,!Z§, param2:§<[§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §8Q§ + (param2.scale - §8Q§) * this.§5! § * §9![§.§0!J§();
         if(§4a§ / param1.scale > this.§4!<§ - this.§7!C§)
         {
            _loc3_ = §4a§ / (this.§4!<§ - this.§7!C§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §8!+§(param1:§,!Z§, param2:§<[§) : Boolean
      {
         var _loc3_:Boolean = this.§`!P§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §>0§ * 0.5 / param1.scale;
         var _loc5_:Number = §>0§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §4a§ * 0.5 / param1.scale) < this.§7!C§ && param1.§>!P§)
         {
            param1.x += this.§7!C§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §4a§ * 0.5 / param1.scale) > this.§4!<§ && !param1.§>!P§)
         {
            param1.x += this.§4!<§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §^g§(param1:§,!Z§, param2:§<[§) : Number
      {
         return (param1.scale - §8Q§) / (§9![§.§0!J§() * (param2.scale - §8Q§));
      }
      
      protected function §^!F§() : void
      {
         this.§8!+§(this.§13§,this.§?!0§);
         var _loc1_:Number = this.§^g§(this.§13§,this.§?!0§);
         this.§8!+§(this.§ J§,this.§`;§);
         var _loc2_:Number = this.§^g§(this.§ J§,this.§`;§);
         this.§5! § = Math.min(_loc1_,_loc2_);
      }
      
      public function §?+§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§&?§.sprite)
         {
            _loc1_ = §'Y§.§'!3§() / §'Y§.§;x§ - §'Y§.§&I§ >> 1;
            §1`§ = this.§&?§.sprite.x = §=!^§.§@3§ * ((1 - §9![§.§+g§) / 2);
            §!!5§ = this.§&?§.sprite.y = _loc1_ + §=!^§.§4!1§ * (1 - §9![§.§+g§) * §,S§.§@!D§;
         }
      }
      
      public function §9I§() : void
      {
         if(this.§&?§.sprite)
         {
            this.§&?§.sprite.scaleX = §+g§;
            this.§&?§.sprite.scaleY = §+g§;
         }
      }
      
      public function §24§() : void
      {
         var _loc1_:Number = this.§^!&§ / §=!^§.§4#§ + this.§1t§;
         var _loc2_:Number = this.§[!B§ / §=!^§.§4#§ + this.§8!J§;
         this.§;g§ = _loc1_ - §=!^§.§@3§ / 2 * §'Y§.§;x§ / §'Y§.§0!§;
         this.§]]§ = _loc2_ - §=!^§.§4!1§ / 2 + §,S§.§>2§;
         if(this.§&?§.background)
         {
            this.§&?§.background.§^!E§(this.§;g§,this.§]]§);
         }
         if(this.§&?§.objects)
         {
            this.§&?§.objects.§^!E§(this.§;g§,this.§]]§);
         }
         if(this.§&?§.mLevelEngine)
         {
            this.§&?§.mLevelEngine.§^!E§(this.§;g§,this.§]]§,§+g§);
         }
         if(this.§&?§.slingshot)
         {
            this.§&?§.slingshot.§^!E§(this.§;g§,this.§]]§);
         }
         if(this.§&?§.particles)
         {
            this.§&?§.particles.§^!E§(this.§;g§,this.§]]§);
         }
      }
      
      protected function §@h§() : void
      {
         this.§8W§(§<c§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§ <§ = -1;
         this.§@h§();
         this.§"!F§ = this.§,!O§ = this.§4!M§ = param1;
         this.§7a§ = this.§=e§ = this.§-n§ = param2;
         this.§<P§ = 0;
         this.§?!1§.x = this.§^!&§;
         this.§?!1§.y = this.§[!B§;
         this.§?!1§.scale = §8n§;
         this.§<!Q§ = §8n§;
         if(Math.abs(this.§ J§.x - this.§13§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§^!&§ - this.§13§.x) / (this.§ J§.x - this.§13§.x) * § k§;
         }
         this.mDragging = true;
      }
      
      public function §]!S§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§<P§ += param1;
         var _loc3_:Number = this.§"!F§ - this.§,!O§;
         if(this.§;k§ > 0)
         {
            _loc2_ -= _loc3_ * §=!^§.§4#§ / §+g§ / this.§;k§ * § k§;
            this.§1U§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§1U§ = true;
            }
            if(_loc2_ > § k§)
            {
               _loc2_ += (§ k§ - _loc2_) * 0.3;
               this.§1U§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§,!O§ = this.§"!F§;
      }
      
      protected function §]!B§() : Boolean
      {
         return this.mCurrentAction == §<c§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§"!F§ = param1;
            this.§7a§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §<c§)
         {
            this.§8W§(§;!L§);
            if(param1 > 0)
            {
               this.§"!F§ = param1;
            }
            _loc3_ = Math.abs(this.§"!F§ - this.§4!M§);
            if(this.§<P§ < §5R§ && _loc3_ >= §!!P§ && _loc3_ >= §1z§ * this.§<P§ / 1000)
            {
               if(this.§"!F§ < this.§4!M§)
               {
                  this.§8W§(§0!?§);
               }
               else
               {
                  this.§8W§(§-[§);
               }
               this.§#m§ = _loc3_ / this.§<P§ * 10;
               this.§1U§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§1U§ = true;
               }
               if(this.mCurrentCameraSliderLocation > § k§)
               {
                  this.§1U§ = true;
               }
            }
            else if(this.§<P§ < §^s§)
            {
               this.§0!$§();
               this.§#m§ = § k§ / (§ k§ / 500);
               this.§1U§ = true;
            }
            else
            {
               this.§]!S§(0);
               this.§ !I§(0);
               this.§#m§ = § k§ / (§ k§ / 500);
               this.§1U§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §0!$§() : void
      {
         if(this.mCurrentAction == §0!?§)
         {
            this.§8W§(§-[§);
         }
         else if(this.mCurrentAction == §-[§)
         {
            this.§8W§(§0!?§);
         }
         else if(this.mCurrentCameraSliderLocation >= § k§ / 2)
         {
            this.§8W§(§-[§);
         }
         else if(this.mCurrentCameraSliderLocation <= § k§ / 2)
         {
            this.§8W§(§0!?§);
         }
      }
      
      public function § !I§(param1:int) : void
      {
         this.§ <§ = param1;
         if(this.mCurrentCameraSliderLocation < § k§ / 2)
         {
            this.§8W§(§-[§);
         }
         else
         {
            this.§8W§(§0!?§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§8W§(§-[§);
      }
      
      public function goToCastleView() : void
      {
         this.§8W§(§0!?§);
      }
      
      public function §8W§(param1:int) : void
      {
         this.§?!1§.x = this.§^!&§;
         this.§?!1§.y = this.§[!B§;
         this.§?!1§.scale = §8n§;
         this.§<!Q§ = §8n§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == § k§)
         {
            return true;
         }
         if(this.mCurrentAction == §0!?§)
         {
            return true;
         }
         return false;
      }
      
      public function §41§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §-[§)
         {
            return true;
         }
         return false;
      }
      
      public function §0!,§(param1:§!K§) : void
      {
         this.§9J§ = param1;
         if(this.§9J§ != null)
         {
            this.§^!"§ = new §!K§();
            this.§^!"§.x = this.§^!&§;
            this.§^!"§.y = this.§[!B§;
            this.§^!"§.scale = §8n§;
         }
         else
         {
            this.§^!&§ = this.§^!"§.x;
            this.§[!B§ = this.§^!"§.y;
            §8n§ = this.§^!"§.scale;
            this.§^!"§ = null;
         }
      }
      
      protected function §?!K§() : void
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
         var _loc3_:Number = this.§5! §;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§&!T§,Math.min(this.§7!R§,_loc3_));
         if(_loc3_ != this.§5! §)
         {
            this.§5! § = _loc3_;
            this.§?!K§();
         }
      }
      
      public function §5s§() : Number
      {
         return (this.manualScale - this.§&!T§) / (this.§7!R§ - this.§&!T§);
      }
      
      public function §+G§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§7!R§ - this.§&!T§) + this.§&!T§;
      }
      
      public function §5!P§() : void
      {
         this.§5! § = Math.max(this.§5! § - 0.5,0.5);
      }
      
      public function §0D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§5! §;
         _loc1_ += " mXcenterB2: " + this.§^!&§;
         _loc1_ += " mYcenterB2: " + this.§[!B§;
         _loc1_ += " mXcenterB2target: " + this.§5! §;
         _loc1_ += "\n mYcenterB2target: " + this.§5! §;
         _loc1_ += " mXcenterB2previous: " + this.§5! §;
         _loc1_ += " mYcenterB2previous: " + this.§5! §;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§5! §;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§5! §;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§5! §;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§5! §;
         _loc1_ += " mTargetScale: " + this.§5! §;
         _loc1_ += " mTargetScalePrevious: " + this.§5! §;
         _loc1_ += " mCastleCameraX: " + this.§5! §;
         _loc1_ += "\n mCastleCameraY: " + this.§5! §;
         _loc1_ += " mCastleCameraScale: " + this.§5! §;
         _loc1_ += " mBirdCameraX: " + this.§5! §;
         _loc1_ += " mBirdCameraY: " + this.§5! §;
         _loc1_ += " mBirdCameraScale: " + this.§5! §;
         _loc1_ += "\n mScreenLeftScroll: " + this.§5! §;
         _loc1_ += " mScreenTopScroll: " + this.§5! §;
         _loc1_ += " mDragging: " + this.§5! §;
         _loc1_ += " mDraggingPointPreviousX: " + this.§5! §;
         _loc1_ += " mDraggingPointPreviousY: " + this.§5! §;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§5! §;
         _loc1_ += " mDraggingPointCurrentY: " + this.§5! §;
         _loc1_ += " mDraggingPointOriginalX: " + this.§5! §;
         _loc1_ += " mDraggingPointOriginalY: " + this.§5! §;
         _loc1_ += " mDraggingTimer: " + this.§5! §;
         _loc1_ += "\n mCameraBorderLeft: " + this.§5! §;
         _loc1_ += " mCameraBorderRight: " + this.§5! §;
         _loc1_ += " mCameraBorderSky: " + this.§5! §;
         _loc1_ += " mCameraBorderGround: " + this.§5! §;
         return _loc1_ + (" mPigsAreOnRight: " + this.§5! § + "\n ");
      }
   }
}
