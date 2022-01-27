package §5!6§
{
   import §"1§.§3'§;
   import §,T§.§9g§;
   import §,T§.§[-§;
   import §0=§.§2p§;
   import §6!L§.§#!M§;
   import §6!L§.§4!5§;
   import §=z§.§0!E§;
   
   public class §&!!§
   {
      
      public static const §@$§:Number = 1.25;
      
      public static const §#7§:Number = 0.15;
      
      public static const §0T§:Number = §0!E§.§6!I§ * §[-§.§;5§;
      
      public static const §+!P§:Number = §0!E§.§4U§ * §[-§.§;5§;
      
      public static const §"K§:Number = 0.1;
      
      public static const §@=§:int = 1500;
      
      public static const § try§:int = 10;
      
      public static const §5C§:int = 15;
      
      public static const §&A§:int = 300;
      
      public static const §=j§:int = 1000;
      
      public static const §0x§:int = 10000;
      
      public static const §,!3§:int = §0x§ / 50;
      
      public static const §-§:int = 0;
      
      public static const §,!O§:int = 1;
      
      public static const §"<§:int = 2;
      
      public static const §[d§:int = 3;
      
      public static const §2V§:int = 4;
      
      public static const §%!"§:int = 5;
      
      public static const §&a§:String = "CASTLE";
      
      public static const §@K§:String = "SLINGSHOT";
      
      protected static var §%=§:Number;
      
      public static var §1!7§:Number;
      
      public static var §&p§:Number;
      
      public static const §+2§:Number = 2000;
       
      
      private var §4!E§:Number = 1.0;
      
      private var §+q§:Number = 0.2;
      
      protected var §1!&§:Number;
      
      protected var §7!C§:Number;
      
      protected var §-8§:Number;
      
      public var §34§:§[-§;
      
      public var §'t§:Number;
      
      public var §5!-§:Number;
      
      private var §<`§:§9T§;
      
      private var §&f§:§9T§;
      
      public var §<!6§:Number;
      
      public var §7H§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §5!"§:Number;
      
      public var §5!1§:Number;
      
      public var §>!F§:Number;
      
      public var §-E§:Number;
      
      private var §`!L§:Number;
      
      private var §0^§:§0!=§;
      
      private var §17§:§0!=§;
      
      protected var §`'§:Number = 0;
      
      protected var §6!+§:Number = 0;
      
      protected var § !=§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §,!D§:Number = 0;
      
      public var §+H§:Boolean = true;
      
      public var §=!P§:Number = 0;
      
      public var §!Z§:Number = 0;
      
      public var §0!5§:Number = 0;
      
      public var §2-§:Number = 0;
      
      public var §8+§:Number = 0;
      
      public var §"]§:Number = 0;
      
      public var §;h§:Number = 0;
      
      public var §@^§:Number = 0;
      
      public var §8!%§:Number = 0;
      
      private var §2"§:§0!=§;
      
      public var §>!6§:Number = 0;
      
      private var §8!$§:Number = 0;
      
      private var §>!8§:Number = 0;
      
      private var §?U§:§4!5§ = null;
      
      private var §^"§:§4!5§ = null;
      
      public function §&!!§(param1:§[-§, param2:§#!M§, param3:Number = 1.0)
      {
         this.§2"§ = new §0!=§(0,0,1,false);
         super();
         this.§7!C§ = 0;
         this.§-8§ = 0;
         this.§34§ = param1;
         §&!!§.§%=§ = 1;
         this.§4!E§ = Math.max(1,Math.min(2,param3));
         this.§1!&§ = this.§4!E§;
         this.§+!J§(param2);
         if(this.§<`§ && this.§&f§)
         {
            this.§;%§();
            this.§`'§ = this.§<`§.x - this.§&f§.x;
            this.§6!+§ = this.§<`§.y - this.§&f§.y;
            this.§ !=§ = this.§<`§.scale - this.§&f§.scale;
            this.§7!C§ = this.§<`§.x;
            this.§-8§ = this.§<`§.y;
            §%=§ = this.§<`§.scale * this.§1!&§;
         }
         this.mCurrentCameraSliderLocation = §0x§;
         this.§+H§ = true;
         this.§,!D§ = §0x§ / 500;
      }
      
      private static function §-6§() : Number
      {
         var _loc1_:Number = §0!E§.§@!,§ / §0!E§.§2!A§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get levelScale() : Number
      {
         return §%=§ * §-6§();
      }
      
      public function get §=q§() : Number
      {
         return this.§1!&§;
      }
      
      public function set §=q§(param1:Number) : void
      {
         this.§1!&§ = param1;
      }
      
      public function get §^W§() : Number
      {
         return this.§`!L§;
      }
      
      public function §@q§() : Number
      {
         return §0T§ / (this.§5!1§ - this.§5!"§);
      }
      
      public function get §8O§() : Number
      {
         return this.§4!E§;
      }
      
      public function get §#h§() : Number
      {
         return this.§+q§;
      }
      
      public function §%]§(param1:Number) : void
      {
         this.§1!&§ = param1;
         this.§3o§();
         this.§8`§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §%!"§)
         {
            return;
         }
         this.goToCastleView();
         this.§=!P§ = 2000;
         this.adjustLevelMainViewAccordingToScale();
         this.§%2§();
         this.§@!B§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7!C§ = this.§&f§.x;
         this.§-8§ = this.§&f§.y;
         this.§+H§ = false;
         this.§,!D§ = §0x§ / 160000 * param1;
         this.§6!0§(§%!"§);
      }
      
      public function §;%§() : void
      {
         this.§5!"§ = this.§&f§.x - §0T§ / this.§&f§.scale / 2;
         this.§5!1§ = this.§<`§.x + §0T§ / this.§<`§.scale / 2;
         this.§>!F§ = this.§34§.§,y§.§+D§ - 20 * §[-§.§`=§ * §[-§.§;5§;
         this.§-E§ = this.§34§.§,y§.§+D§ + 4;
         var _loc1_:Number = §0T§ / (this.§5!1§ - this.§5!"§);
         this.§`!L§ = this.§-E§ - §+!P§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§34§ = null;
      }
      
      public function §+!J§(param1:§#!M§) : void
      {
         var _loc3_:§4!5§ = null;
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
         while(_loc2_ < param1.§<!+§)
         {
            _loc3_ = param1.§7!3§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§?-§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §+!P§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §0T§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §@K§)
            {
               this.§&f§ = new §9T§(_loc9_,_loc10_,_loc13_,true);
               this.§17§ = new §0!=§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §&a§)
            {
               this.§<`§ = new §9T§(_loc9_,_loc10_,_loc13_,false);
               this.§0^§ = new §0!=§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §3'§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §-!@§(param1:§#!M§) : void
      {
         var _loc2_:§4!5§ = new §4!5§();
         _loc2_.id = §@K§;
         _loc2_.x = this.§&f§.x;
         _loc2_.y = this.§&f§.y;
         var _loc3_:Number = §0T§ / this.§&f§.scale / 2;
         var _loc4_:Number = §+!P§ / this.§&f§.scale / 2;
         _loc2_.left = this.§&f§.x - _loc3_;
         _loc2_.right = this.§&f§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§4!5§;
         (_loc5_ = new §4!5§()).id = §&a§;
         _loc5_.x = this.§<`§.x;
         _loc5_.y = this.§<`§.y;
         var _loc6_:Number = §0T§ / this.§<`§.scale / 2;
         var _loc7_:Number = §+!P§ / this.§<`§.scale / 2;
         _loc5_.left = this.§<`§.x - _loc6_;
         _loc5_.right = this.§<`§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§@7§();
         param1.§9d§(_loc2_);
         param1.§9d§(_loc5_);
      }
      
      public function §?-§(param1:§4!5§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §0!E§.§6!I§ * 0.5 / _loc2_ * §[-§.§;5§;
         var _loc4_:Number = param1.y - §0!E§.§4U§ * 0.5 / _loc2_ * §[-§.§;5§;
         var _loc5_:Number = _loc3_ + §0!E§.§6!I§ / _loc2_ * §[-§.§;5§;
         var _loc6_:Number = _loc4_ + §0!E§.§4U§ / _loc2_ * §[-§.§;5§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §4Q§(param1:§9T§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§,!D§;
         if(_loc3_ >= §0x§)
         {
            _loc3_ = §0x§;
            this.§6!0§(§-§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§6!0§(§-§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §0j§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§,!D§;
         var _loc4_:Number = -§0x§ * 0.7;
         if(_loc2_ >= §0x§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §0x§;
            }
            this.§,!D§ = -this.§,!D§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function § !-§(param1:Number) : void
      {
         if(this.mCurrentAction == §%!"§)
         {
            this.§0j§(param1);
         }
         else if(this.mCurrentAction == §,!O§)
         {
            this.§4Q§(this.§<`§,param1);
         }
         else if(this.mCurrentAction == §"<§)
         {
            this.§4Q§(this.§&f§,-param1);
         }
         else if(this.mCurrentAction == §[d§)
         {
            this.§+H§ = true;
         }
         else if(this.mCurrentAction == §2V§)
         {
            this.§`!!§(param1);
         }
      }
      
      public function §8!C§(param1:Number) : void
      {
         if(this.§?U§)
         {
            this.§7!C§ = this.§?U§.x;
            this.§-8§ = this.§?U§.y;
            §%=§ = §0T§ / (this.§?U§.right - this.§?U§.left);
         }
         else
         {
            this.§3o§();
            this.§ !-§(param1);
            this.§[!?§(this.mCurrentCameraSliderLocation,param1);
         }
         this.adjustLevelMainViewAccordingToScale();
         this.§%2§();
         this.§@!B§();
      }
      
      private function §+s§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§17§.scale + (this.§0^§.scale - this.§17§.scale) * param1;
         var _loc4_:Number = this.§17§.x + (this.§0^§.x - this.§17§.x) * param1;
         var _loc5_:Number = this.§17§.y + (this.§0^§.y - this.§17§.y) * param1;
         this.§2"§.x -= (this.§2"§.x - _loc4_) * param2;
         this.§2"§.y -= (this.§2"§.y - _loc5_) * param2;
         this.§2"§.scale -= (this.§2"§.scale - _loc3_) * param2;
      }
      
      protected function §8`§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`'§ != 0)
         {
            if(!this.§+H§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §0x§;
            this.§+s§(_loc3_,param2);
            this.§7!C§ = this.§2"§.x;
            this.§-8§ = this.§2"§.y;
            §%=§ = this.§2"§.scale;
         }
      }
      
      public function §[!?§(param1:Number, param2:Number) : void
      {
         var _loc5_:§2p§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §0x§)
         {
            this.§+H§ = true;
         }
         if(this.mCurrentAction == §[d§)
         {
            if(!this.§34§.activeObject)
            {
               this.§6!0§(§,!O§);
               this.§8!%§ = §=j§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§34§.activeObject).§;!M§().GetPosition().x + (!!_loc5_.§ !K§ ? _loc5_.§ !K§ * §[-§.§;5§ : 0);
               _loc7_ = _loc5_.§;!M§().GetPosition().y + (!!_loc5_.§]z§ ? _loc5_.§]z§ * §[-§.§;5§ : 0);
               if((_loc8_ = _loc5_.§;!M§().GetLinearVelocity().x) > 0 && this.§`'§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§`'§ * §0x§;
               }
               if(param1 >= §0x§)
               {
                  param1 = §0x§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §0x§;
               this.§+s§(_loc9_,_loc4_);
               _loc10_ = this.§2"§.x - §0T§ * 0.5 / this.§2"§.scale;
               _loc11_ = this.§2"§.y - §+!P§ * 0.5 / this.§2"§.scale;
               _loc12_ = this.§2"§.x + §0T§ * 0.5 / this.§2"§.scale;
               _loc13_ = this.§2"§.y + §+!P§ * 0.5 / this.§2"§.scale;
               _loc14_ = 150 * §[-§.§;5§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§5!"§,_loc15_);
               _loc17_ = Math.min(this.§5!1§,_loc17_);
               _loc19_ = Math.abs(§0T§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§+!P§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§2"§.scale)
               {
                  _loc21_ = this.§2"§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §0T§ * 0.5 / _loc21_ > this.§5!1§)
               {
                  _loc15_ = (_loc17_ = this.§5!1§) - §0T§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§5!"§)
                  {
                     _loc15_ = this.§5!"§;
                  }
               }
               if(_loc22_ - §0T§ * 0.5 / _loc21_ < this.§5!"§)
               {
                  _loc17_ = (_loc15_ = this.§5!"§) + §0T§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§5!1§)
                  {
                     _loc17_ = this.§5!1§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§0T§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §0T§ * 0.5 / _loc21_ < this.§>!F§)
               {
                  _loc23_ = this.§>!F§ + §0T§ * 0.5 / _loc21_;
               }
               this.§7!C§ -= (this.§7!C§ - _loc22_) * _loc4_;
               this.§>!6§ -= (this.§>!6§ - _loc21_) * _loc4_;
               §%=§ = this.§>!6§;
               this.§-8§ -= (this.§-8§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§5!1§ || _loc6_ <= this.§5!"§)
               {
                  this.§2"§.scale = §%=§;
                  this.§2"§.x = this.§7!C§;
                  this.§2"§.y = this.§-8§;
               }
            }
         }
         else
         {
            this.§8`§(param1,_loc4_);
         }
      }
      
      public function §#!;§(param1:Number, param2:Number) : void
      {
         this.§8!$§ = param1;
         this.§>!8§ = param2;
      }
      
      private function §08§(param1:§0!=§, param2:§9T§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §#7§ + (param2.scale - §#7§) * this.§1!&§ * §&!!§.§-6§();
         if(§0T§ / param1.scale > this.§5!1§ - this.§5!"§)
         {
            _loc3_ = §0T§ / (this.§5!1§ - this.§5!"§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §;-§(param1:§0!=§, param2:§9T§) : Boolean
      {
         var _loc3_:Boolean = this.§08§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §+!P§ * 0.5 / param1.scale;
         var _loc5_:Number = §+!P§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §0T§ * 0.5 / param1.scale) < this.§5!"§ && param1.§`C§)
         {
            param1.x += this.§5!"§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §0T§ * 0.5 / param1.scale) > this.§5!1§ && !param1.§`C§)
         {
            param1.x += this.§5!1§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §=7§(param1:§0!=§, param2:§9T§) : Number
      {
         return (param1.scale - §#7§) / (§&!!§.§-6§() * (param2.scale - §#7§));
      }
      
      protected function §3o§() : void
      {
         this.§;-§(this.§17§,this.§&f§);
         var _loc1_:Number = this.§=7§(this.§17§,this.§&f§);
         this.§;-§(this.§0^§,this.§<`§);
         var _loc2_:Number = this.§=7§(this.§0^§,this.§<`§);
         this.§1!&§ = Math.min(_loc1_,_loc2_);
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         if(this.§34§.sprite)
         {
            _loc1_ = §0!E§.§^k§() / §0!E§.§@!,§ - §0!E§.§4U§ >> 1;
            §1!7§ = this.§34§.sprite.x = §[-§.§?q§ * ((1 - §&!!§.levelScale) / 2);
            §&p§ = this.§34§.sprite.y = _loc1_ + §[-§.§`=§ * (1 - §&!!§.levelScale) * §9g§.§=8§;
         }
      }
      
      public function §@!B§() : void
      {
         if(this.§34§.sprite)
         {
            this.§34§.sprite.scaleX = levelScale;
            this.§34§.sprite.scaleY = levelScale;
         }
      }
      
      public function §%2§() : void
      {
         var _loc1_:Number = this.§7!C§ / §[-§.§;5§ + this.§8!$§;
         var _loc2_:Number = this.§-8§ / §[-§.§;5§ + this.§>!8§;
         this.§<!6§ = _loc1_ - §[-§.§?q§ / 2 * §0!E§.§@!,§ / §0!E§.§8!F§;
         this.§7H§ = _loc2_ - §[-§.§`=§ / 2 + §9g§.§6X§;
         if(this.§34§.background)
         {
            this.§34§.background.§>>§(this.§<!6§,this.§7H§);
         }
         if(this.§34§.objects)
         {
            this.§34§.objects.§>>§(this.§<!6§,this.§7H§);
         }
         if(this.§34§.§[o§)
         {
            this.§34§.§[o§.§>>§(this.§<!6§,this.§7H§,levelScale);
         }
         if(this.§34§.slingshot)
         {
            this.§34§.slingshot.§>>§(this.§<!6§,this.§7H§);
         }
         if(this.§34§.particles)
         {
            this.§34§.particles.§>>§(this.§<!6§,this.§7H§);
         }
      }
      
      protected function §<J§() : void
      {
         this.§6!0§(§2V§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§8!%§ = -1;
         this.§<J§();
         this.§8+§ = this.§;h§ = this.§0!5§ = param1;
         this.§"]§ = this.§@^§ = this.§2-§ = param2;
         this.§!Z§ = 0;
         this.§2"§.x = this.§7!C§;
         this.§2"§.y = this.§-8§;
         this.§2"§.scale = §%=§;
         this.§>!6§ = §%=§;
         if(Math.abs(this.§0^§.x - this.§17§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7!C§ - this.§17§.x) / (this.§0^§.x - this.§17§.x) * §0x§;
         }
         this.mDragging = true;
      }
      
      public function §`!!§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§!Z§ += param1;
         var _loc3_:Number = this.§8+§ - this.§;h§;
         if(this.§`'§ > 0)
         {
            _loc2_ -= _loc3_ * §[-§.§;5§ / levelScale / this.§`'§ * §0x§;
            this.§+H§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§+H§ = true;
            }
            if(_loc2_ > §0x§)
            {
               _loc2_ += (§0x§ - _loc2_) * 0.3;
               this.§+H§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§;h§ = this.§8+§;
      }
      
      protected function §3!3§() : Boolean
      {
         return this.mCurrentAction == §2V§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§8+§ = param1;
            this.§"]§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §2V§)
         {
            this.§6!0§(§-§);
            if(param1 > 0)
            {
               this.§8+§ = param1;
            }
            _loc3_ = Math.abs(this.§8+§ - this.§0!5§);
            if(this.§!Z§ < §@=§ && _loc3_ >= § try§ && _loc3_ >= §5C§ * this.§!Z§ / 1000)
            {
               if(this.§8+§ < this.§0!5§)
               {
                  this.§6!0§(§,!O§);
               }
               else
               {
                  this.§6!0§(§"<§);
               }
               this.§,!D§ = _loc3_ / this.§!Z§ * 10;
               this.§+H§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§+H§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §0x§)
               {
                  this.§+H§ = true;
               }
            }
            else if(this.§!Z§ < §&A§)
            {
               this.§^Y§();
               this.§,!D§ = §0x§ / (§0x§ / 500);
               this.§+H§ = true;
            }
            else
            {
               this.§`!!§(0);
               this.§-!<§(0);
               this.§,!D§ = §0x§ / (§0x§ / 500);
               this.§+H§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §^Y§() : void
      {
         if(this.mCurrentAction == §,!O§)
         {
            this.§6!0§(§"<§);
         }
         else if(this.mCurrentAction == §"<§)
         {
            this.§6!0§(§,!O§);
         }
         else if(this.mCurrentCameraSliderLocation >= §0x§ / 2)
         {
            this.§6!0§(§"<§);
         }
         else if(this.mCurrentCameraSliderLocation <= §0x§ / 2)
         {
            this.§6!0§(§,!O§);
         }
      }
      
      public function §-!<§(param1:int) : void
      {
         this.§8!%§ = param1;
         if(this.mCurrentCameraSliderLocation < §0x§ / 2)
         {
            this.§6!0§(§"<§);
         }
         else
         {
            this.§6!0§(§,!O§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§6!0§(§"<§);
      }
      
      public function goToCastleView() : void
      {
         this.§6!0§(§,!O§);
      }
      
      public function §6!0§(param1:int) : void
      {
         this.§2"§.x = this.§7!C§;
         this.§2"§.y = this.§-8§;
         this.§2"§.scale = §%=§;
         this.§>!6§ = §%=§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §0x§)
         {
            return true;
         }
         if(this.mCurrentAction == §,!O§)
         {
            return true;
         }
         return false;
      }
      
      public function §4!2§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"<§)
         {
            return true;
         }
         return false;
      }
      
      public function §8C§(param1:§4!5§) : void
      {
         this.§?U§ = param1;
         if(this.§?U§ != null)
         {
            this.§^"§ = new §4!5§();
            this.§^"§.x = this.§7!C§;
            this.§^"§.y = this.§-8§;
            this.§^"§.scale = §%=§;
         }
         else
         {
            this.§7!C§ = this.§^"§.x;
            this.§-8§ = this.§^"§.y;
            §%=§ = this.§^"§.scale;
            this.§^"§ = null;
         }
      }
      
      protected function § U§() : void
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
         var _loc3_:Number = this.§1!&§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§#h§,Math.min(this.§8O§,_loc3_));
         if(_loc3_ != this.§1!&§)
         {
            this.§1!&§ = _loc3_;
            this.§ U§();
         }
      }
      
      public function §!H§() : Number
      {
         return (this.§=q§ - this.§#h§) / (this.§8O§ - this.§#h§);
      }
      
      public function §?!?§(param1:Number) : void
      {
         this.§=q§ = Math.min(Math.max(param1,0),1) * (this.§8O§ - this.§#h§) + this.§#h§;
      }
      
      public function §@!+§() : void
      {
         this.§1!&§ = Math.max(this.§1!&§ - 0.5,0.5);
      }
      
      public function § !0§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§1!&§;
         _loc1_ += " mXcenterB2: " + this.§7!C§;
         _loc1_ += " mYcenterB2: " + this.§-8§;
         _loc1_ += " mXcenterB2target: " + this.§1!&§;
         _loc1_ += "\n mYcenterB2target: " + this.§1!&§;
         _loc1_ += " mXcenterB2previous: " + this.§1!&§;
         _loc1_ += " mYcenterB2previous: " + this.§1!&§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§1!&§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§1!&§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§1!&§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§1!&§;
         _loc1_ += " mTargetScale: " + this.§1!&§;
         _loc1_ += " mTargetScalePrevious: " + this.§1!&§;
         _loc1_ += " mCastleCameraX: " + this.§1!&§;
         _loc1_ += "\n mCastleCameraY: " + this.§1!&§;
         _loc1_ += " mCastleCameraScale: " + this.§1!&§;
         _loc1_ += " mBirdCameraX: " + this.§1!&§;
         _loc1_ += " mBirdCameraY: " + this.§1!&§;
         _loc1_ += " mBirdCameraScale: " + this.§1!&§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§1!&§;
         _loc1_ += " mScreenTopScroll: " + this.§1!&§;
         _loc1_ += " mDragging: " + this.§1!&§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§1!&§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§1!&§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§1!&§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§1!&§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§1!&§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§1!&§;
         _loc1_ += " mDraggingTimer: " + this.§1!&§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§1!&§;
         _loc1_ += " mCameraBorderRight: " + this.§1!&§;
         _loc1_ += " mCameraBorderSky: " + this.§1!&§;
         _loc1_ += " mCameraBorderGround: " + this.§1!&§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§1!&§ + "\n ");
      }
   }
}
