package §5p§
{
   import §!J§.§[&§;
   import §-!7§.§@m§;
   import §9N§.§'!Q§;
   import §9N§.§9!%§;
   import §<!+§.§!T§;
   import §<!+§.§with§;
   import §@,§.§4h§;
   
   public class §?M§
   {
      
      public static const §,S§:Number = 1.25;
      
      public static const §6! §:Number = 0.15;
      
      public static const §8u§:Number = §[&§.§"L§ * §9!%§.§catch§;
      
      public static const §9!U§:Number = §[&§.§#S§ * §9!%§.§catch§;
      
      public static const §5!X§:Number = 1;
      
      public static const §8d§:Number = 0.2;
      
      public static const §^!8§:Number = 0.1;
      
      public static const §&]§:int = 1500;
      
      public static const § +§:int = 10;
      
      public static const §+!+§:int = 15;
      
      public static const §"'§:int = 300;
      
      public static const §9!4§:int = 1000;
      
      public static const §#Q§:int = 10000;
      
      public static const §"a§:int = §#Q§ / 50;
      
      public static const §&!S§:int = 0;
      
      public static const §%"§:int = 1;
      
      public static const §!!§:int = 2;
      
      public static const §?q§:int = 3;
      
      public static const §4S§:int = 4;
      
      public static const § x§:int = 5;
      
      public static const §9!,§:String = "CASTLE";
      
      public static const §7!6§:String = "SLINGSHOT";
      
      protected static var §7n§:Number;
      
      public static var §&!N§:Number;
      
      public static var §]!Y§:Number;
      
      public static const §<!F§:Number = 2000;
       
      
      protected var §9!?§:Number;
      
      protected var §9!9§:Number;
      
      protected var §;e§:Number;
      
      public var §8@§:§9!%§;
      
      public var §6X§:Number;
      
      public var §6!5§:Number;
      
      private var §5!Q§:§ z§;
      
      private var §02§:§ z§;
      
      public var § !,§:Number;
      
      public var §^!9§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@!A§:Number;
      
      public var §'E§:Number;
      
      public var §4!?§:Number;
      
      public var §["§:Number;
      
      private var §>!<§:Number;
      
      private var §<s§:§4!H§;
      
      private var § !0§:§4!H§;
      
      protected var §>+§:Number = 0;
      
      protected var §1!M§:Number = 0;
      
      protected var §%!4§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §!c§:Number = 0;
      
      public var §5!9§:Boolean = true;
      
      public var §"!E§:Number = 0;
      
      public var §0z§:Number = 0;
      
      public var §1!I§:Number = 0;
      
      public var §'_§:Number = 0;
      
      public var § 9§:Number = 0;
      
      public var §"0§:Number = 0;
      
      public var native:Number = 0;
      
      public var §7!O§:Number = 0;
      
      public var §'F§:Number = 0;
      
      private var §]H§:§4!H§;
      
      public var §%7§:Number = 0;
      
      private var §+!L§:Number = 0;
      
      private var §4!4§:Number = 0;
      
      private var §function§:§!T§ = null;
      
      private var §>p§:§!T§ = null;
      
      public function §?M§(param1:§9!%§, param2:§with§)
      {
         this.§]H§ = new §4!H§(0,0,1,false);
         super();
         this.§9!9§ = 0;
         this.§;e§ = 0;
         this.§8@§ = param1;
         §?M§.§7n§ = 1;
         this.§9!?§ = 1;
         this.§=!H§(param2.§'I§);
         if(this.§5!Q§ && this.§02§)
         {
            this.§[r§();
            this.§>+§ = this.§5!Q§.x - this.§02§.x;
            this.§1!M§ = this.§5!Q§.y - this.§02§.y;
            this.§%!4§ = this.§5!Q§.scale - this.§02§.scale;
            this.§9!9§ = this.§5!Q§.x;
            this.§;e§ = this.§5!Q§.y;
            §7n§ = this.§5!Q§.scale;
         }
         this.mCurrentCameraSliderLocation = §#Q§;
         this.§5!9§ = true;
         this.§!c§ = §#Q§ / 500;
      }
      
      private static function § !T§() : Number
      {
         var _loc1_:Number = §[&§.§8n§ / §[&§.§6!H§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §]5§() : Number
      {
         return §7n§ * § !T§();
      }
      
      public function get manualScale() : Number
      {
         return this.§9!?§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§9!?§ = param1;
      }
      
      public function get §@j§() : Number
      {
         return this.§>!<§;
      }
      
      public function §9L§() : Number
      {
         return §8u§ / (this.§'E§ - this.§@!A§);
      }
      
      public function §?!R§(param1:Number) : void
      {
         this.§9!?§ = param1;
         this.§-!Q§();
         this.§=!N§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         this.goToCastleView();
         this.§"!E§ = 2000;
         this.§9O§();
         this.§!Q§();
         this.§3!Q§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§9!9§ = this.§02§.x;
         this.§;e§ = this.§02§.y;
         this.§5!9§ = false;
         this.§!c§ = §#Q§ / 160000 * param1;
         this.§99§(§ x§);
      }
      
      public function §[r§() : void
      {
         this.§@!A§ = this.§02§.x - §8u§ / this.§02§.scale / 2;
         this.§'E§ = this.§5!Q§.x + §8u§ / this.§5!Q§.scale / 2;
         this.§4!?§ = this.§8@§.§null §.§;U§ - 20 * §9!%§.§8!5§ * §9!%§.§catch§;
         this.§["§ = this.§8@§.§null §.§;U§ + 4;
         var _loc1_:Number = §8u§ / (this.§'E§ - this.§@!A§);
         this.§>!<§ = this.§["§ - §9!U§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§8@§ = null;
      }
      
      public function §=!H§(param1:Vector.<§!T§>) : void
      {
         var _loc2_:§!T§ = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.id;
            _loc3_ = _loc3_.toUpperCase();
            if(_loc2_.scale.toString() != "" && _loc2_.scale.toString() != "null" && _loc2_.scale.toString() != "0")
            {
               this.§1I§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §9!U§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = Number(§8u§ / (_loc5_ - _loc4_))) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §7!6§)
            {
               this.§02§ = new § z§(_loc8_,_loc9_,_loc12_,true);
               this.§ !0§ = new §4!H§(_loc8_,_loc9_,_loc12_,true);
            }
            else if(_loc3_ == §9!,§)
            {
               this.§5!Q§ = new § z§(_loc8_,_loc9_,_loc12_,false);
               this.§<s§ = new §4!H§(_loc8_,_loc9_,_loc12_,false);
            }
            else
            {
               §4h§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      public function §"4§(param1:§with§) : void
      {
         var _loc2_:§!T§ = new §!T§();
         _loc2_.id = §7!6§;
         _loc2_.x = this.§02§.x;
         _loc2_.y = this.§02§.y;
         var _loc3_:Number = §8u§ / this.§02§.scale / 2;
         var _loc4_:Number = §9!U§ / this.§02§.scale / 2;
         _loc2_.left = this.§02§.x - _loc3_;
         _loc2_.right = this.§02§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§!T§;
         (_loc5_ = new §!T§()).id = §9!,§;
         _loc5_.x = this.§5!Q§.x;
         _loc5_.y = this.§5!Q§.y;
         var _loc6_:Number = §8u§ / this.§5!Q§.scale / 2;
         var _loc7_:Number = §9!U§ / this.§5!Q§.scale / 2;
         _loc5_.left = this.§5!Q§.x - _loc6_;
         _loc5_.right = this.§5!Q§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§'I§.length > 0)
         {
            param1.§'I§.pop();
         }
         param1.§'I§.push(_loc2_);
         param1.§'I§.push(_loc5_);
      }
      
      public function §1I§(param1:§!T§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[&§.§"L§ * 0.5 / _loc2_ * §9!%§.§catch§;
         var _loc4_:Number = param1.y - §[&§.§#S§ * 0.5 / _loc2_ * §9!%§.§catch§;
         var _loc5_:Number = _loc3_ + §[&§.§"L§ / _loc2_ * §9!%§.§catch§;
         var _loc6_:Number = _loc4_ + §[&§.§#S§ / _loc2_ * §9!%§.§catch§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §'!&§(param1:§ z§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§!c§;
         if(_loc3_ >= §#Q§)
         {
            _loc3_ = §#Q§;
            this.§99§(§&!S§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§99§(§&!S§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §5K§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§!c§;
         var _loc4_:Number = -§#Q§ * 0.7;
         if(_loc2_ >= §#Q§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §#Q§;
            }
            this.§!c§ = -this.§!c§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §&G§(param1:Number) : void
      {
         if(this.mCurrentAction == § x§)
         {
            this.§5K§(param1);
         }
         else if(this.mCurrentAction == §%"§)
         {
            this.§'!&§(this.§5!Q§,param1);
         }
         else if(this.mCurrentAction == §!!§)
         {
            this.§'!&§(this.§02§,-param1);
         }
         else if(this.mCurrentAction == §?q§)
         {
            this.§5!9§ = true;
         }
         else if(this.mCurrentAction == §4S§)
         {
            this.§>L§(param1);
         }
      }
      
      public function §]b§(param1:Number) : void
      {
         if(this.§function§)
         {
            this.§9!9§ = this.§function§.x;
            this.§;e§ = this.§function§.y;
            §7n§ = §8u§ / (this.§function§.right - this.§function§.left);
         }
         else
         {
            this.§-!Q§();
            this.§&G§(param1);
            this.§&!B§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§9O§();
         this.§!Q§();
         this.§3!Q§();
      }
      
      private function §1!R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§ !0§.scale + (this.§<s§.scale - this.§ !0§.scale) * param1;
         var _loc4_:Number = this.§ !0§.x + (this.§<s§.x - this.§ !0§.x) * param1;
         var _loc5_:Number = this.§ !0§.y + (this.§<s§.y - this.§ !0§.y) * param1;
         this.§]H§.x -= (this.§]H§.x - _loc4_) * param2;
         this.§]H§.y -= (this.§]H§.y - _loc5_) * param2;
         this.§]H§.scale -= (this.§]H§.scale - _loc3_) * param2;
      }
      
      protected function §=!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§>+§ != 0)
         {
            if(!this.§5!9§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §#Q§;
            this.§1!R§(_loc3_,param2);
            this.§9!9§ = this.§]H§.x;
            this.§;e§ = this.§]H§.y;
            §7n§ = this.§]H§.scale;
         }
      }
      
      public function §&!B§(param1:Number, param2:Number) : void
      {
         var _loc5_:§@m§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §#Q§)
         {
            this.§5!9§ = true;
         }
         if(this.mCurrentAction == §?q§)
         {
            if(!this.§8@§.activeObject)
            {
               this.§99§(§%"§);
               this.§'F§ = §9!4§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§8@§.activeObject).§`!#§().GetPosition().x + (!!_loc5_.§?g§ ? _loc5_.§?g§ * §9!%§.§catch§ : 0);
               _loc7_ = _loc5_.§`!#§().GetPosition().y + (!!_loc5_.§9K§ ? _loc5_.§9K§ * §9!%§.§catch§ : 0);
               if((_loc8_ = _loc5_.§`!#§().GetLinearVelocity().x) > 0 && this.§>+§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§>+§ * §#Q§;
               }
               if(param1 >= §#Q§)
               {
                  param1 = §#Q§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §#Q§;
               this.§1!R§(_loc9_,_loc4_);
               _loc10_ = this.§]H§.x - §8u§ * 0.5 / this.§]H§.scale;
               _loc11_ = this.§]H§.y - §9!U§ * 0.5 / this.§]H§.scale;
               _loc12_ = this.§]H§.x + §8u§ * 0.5 / this.§]H§.scale;
               _loc13_ = this.§]H§.y + §9!U§ * 0.5 / this.§]H§.scale;
               _loc14_ = 150 * §9!%§.§catch§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§@!A§,_loc15_);
               _loc17_ = Math.min(this.§'E§,_loc17_);
               _loc19_ = Math.abs(§8u§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§9!U§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§]H§.scale)
               {
                  _loc21_ = this.§]H§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §8u§ * 0.5 / _loc21_ > this.§'E§)
               {
                  _loc15_ = (_loc17_ = this.§'E§) - §8u§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§@!A§)
                  {
                     _loc15_ = this.§@!A§;
                  }
               }
               if(_loc22_ - §8u§ * 0.5 / _loc21_ < this.§@!A§)
               {
                  _loc17_ = (_loc15_ = this.§@!A§) + §8u§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§'E§)
                  {
                     _loc17_ = this.§'E§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§8u§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §8u§ * 0.5 / _loc21_ < this.§4!?§)
               {
                  _loc23_ = this.§4!?§ + §8u§ * 0.5 / _loc21_;
               }
               this.§9!9§ -= (this.§9!9§ - _loc22_) * _loc4_;
               this.§%7§ -= (this.§%7§ - _loc21_) * _loc4_;
               §7n§ = this.§%7§;
               this.§;e§ -= (this.§;e§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§'E§ || _loc6_ <= this.§@!A§)
               {
                  this.§]H§.scale = §7n§;
                  this.§]H§.x = this.§9!9§;
                  this.§]H§.y = this.§;e§;
               }
            }
         }
         else
         {
            this.§=!N§(param1,_loc4_);
         }
      }
      
      public function §^!-§(param1:Number, param2:Number) : void
      {
         this.§+!L§ = param1;
         this.§4!4§ = param2;
      }
      
      private function § !'§(param1:§4!H§, param2:§ z§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §6! § + (param2.scale - §6! §) * this.§9!?§ * §?M§.§ !T§();
         if(§8u§ / param1.scale > this.§'E§ - this.§@!A§)
         {
            _loc3_ = §8u§ / (this.§'E§ - this.§@!A§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §8,§(param1:§4!H§, param2:§ z§) : Boolean
      {
         var _loc3_:Boolean = this.§ !'§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §9!U§ * 0.5 / param1.scale;
         var _loc5_:Number = §9!U§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §8u§ * 0.5 / param1.scale) < this.§@!A§ && param1.§`M§)
         {
            param1.x += this.§@!A§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §8u§ * 0.5 / param1.scale) > this.§'E§ && !param1.§`M§)
         {
            param1.x += this.§'E§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §5!7§(param1:§4!H§, param2:§ z§) : Number
      {
         return (param1.scale - §6! §) / (§?M§.§ !T§() * (param2.scale - §6! §));
      }
      
      protected function §-!Q§() : void
      {
         this.§8,§(this.§ !0§,this.§02§);
         var _loc1_:Number = this.§5!7§(this.§ !0§,this.§02§);
         this.§8,§(this.§<s§,this.§5!Q§);
         var _loc2_:Number = this.§5!7§(this.§<s§,this.§5!Q§);
         this.§9!?§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §9O§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§8@§.sprite)
         {
            _loc1_ = §[&§.§#0§() / §[&§.§8n§ - §[&§.§#S§ >> 1;
            §&!N§ = this.§8@§.sprite.x = §9!%§.§?!=§ * ((1 - §?M§.§]5§) / 2);
            §]!Y§ = this.§8@§.sprite.y = _loc1_ + §9!%§.§8!5§ * (1 - §?M§.§]5§) * §'!Q§.§!!0§;
         }
      }
      
      public function §3!Q§() : void
      {
         if(this.§8@§.sprite)
         {
            this.§8@§.sprite.scaleX = §]5§;
            this.§8@§.sprite.scaleY = §]5§;
         }
      }
      
      public function §!Q§() : void
      {
         var _loc1_:Number = this.§9!9§ / §9!%§.§catch§ + this.§+!L§;
         var _loc2_:Number = this.§;e§ / §9!%§.§catch§ + this.§4!4§;
         this.§ !,§ = _loc1_ - §9!%§.§?!=§ / 2 * §[&§.§8n§ / §[&§.§4'§;
         this.§^!9§ = _loc2_ - §9!%§.§8!5§ / 2 + §'!Q§.§"G§;
         if(this.§8@§.background)
         {
            this.§8@§.background.§<R§(this.§ !,§,this.§^!9§);
         }
         if(this.§8@§.objects)
         {
            this.§8@§.objects.§<R§(this.§ !,§,this.§^!9§);
         }
         if(this.§8@§.mLevelEngine)
         {
            this.§8@§.mLevelEngine.§<R§(this.§ !,§,this.§^!9§);
         }
         if(this.§8@§.slingshot)
         {
            this.§8@§.slingshot.§<R§(this.§ !,§,this.§^!9§);
         }
         if(this.§8@§.particles)
         {
            this.§8@§.particles.§<R§(this.§ !,§,this.§^!9§);
         }
      }
      
      protected function §9w§() : void
      {
         this.§99§(§4S§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§'F§ = -1;
         this.§9w§();
         this.§ 9§ = this.native = this.§1!I§ = param1;
         this.§"0§ = this.§7!O§ = this.§'_§ = param2;
         this.§0z§ = 0;
         this.§]H§.x = this.§9!9§;
         this.§]H§.y = this.§;e§;
         this.§]H§.scale = §7n§;
         this.§%7§ = §7n§;
         if(Math.abs(this.§<s§.x - this.§ !0§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§9!9§ - this.§ !0§.x) / (this.§<s§.x - this.§ !0§.x) * §#Q§;
         }
         this.mDragging = true;
      }
      
      public function §>L§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§0z§ += param1;
         var _loc3_:Number = this.§ 9§ - this.native;
         if(this.§>+§ > 0)
         {
            _loc2_ -= _loc3_ * §9!%§.§catch§ / §]5§ / this.§>+§ * §#Q§;
            this.§5!9§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§5!9§ = true;
            }
            if(_loc2_ > §#Q§)
            {
               _loc2_ += (§#Q§ - _loc2_) * 0.3;
               this.§5!9§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.native = this.§ 9§;
      }
      
      protected function §>5§() : Boolean
      {
         return this.mCurrentAction == §4S§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§ 9§ = param1;
            this.§"0§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §4S§)
         {
            this.§99§(§&!S§);
            if(param1 > 0)
            {
               this.§ 9§ = param1;
            }
            _loc3_ = Math.abs(this.§ 9§ - this.§1!I§);
            if(this.§0z§ < §&]§ && _loc3_ >= § +§ && _loc3_ >= §+!+§ * this.§0z§ / 1000)
            {
               if(this.§ 9§ < this.§1!I§)
               {
                  this.§99§(§%"§);
               }
               else
               {
                  this.§99§(§!!§);
               }
               this.§!c§ = _loc3_ / this.§0z§ * 10;
               this.§5!9§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§5!9§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §#Q§)
               {
                  this.§5!9§ = true;
               }
            }
            else if(this.§0z§ < §"'§)
            {
               this.§'1§();
               this.§!c§ = §#Q§ / (§#Q§ / 500);
               this.§5!9§ = true;
            }
            else
            {
               this.§>L§(0);
               this.§^!7§(0);
               this.§!c§ = §#Q§ / (§#Q§ / 500);
               this.§5!9§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'1§() : void
      {
         if(this.mCurrentAction == §%"§)
         {
            this.§99§(§!!§);
         }
         else if(this.mCurrentAction == §!!§)
         {
            this.§99§(§%"§);
         }
         else if(this.mCurrentCameraSliderLocation >= §#Q§ / 2)
         {
            this.§99§(§!!§);
         }
         else if(this.mCurrentCameraSliderLocation <= §#Q§ / 2)
         {
            this.§99§(§%"§);
         }
      }
      
      public function §^!7§(param1:int) : void
      {
         this.§'F§ = param1;
         if(this.mCurrentCameraSliderLocation < §#Q§ / 2)
         {
            this.§99§(§!!§);
         }
         else
         {
            this.§99§(§%"§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§99§(§!!§);
      }
      
      public function goToCastleView() : void
      {
         this.§99§(§%"§);
      }
      
      public function §99§(param1:int) : void
      {
         this.§]H§.x = this.§9!9§;
         this.§]H§.y = this.§;e§;
         this.§]H§.scale = §7n§;
         this.§%7§ = §7n§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §#Q§)
         {
            return true;
         }
         if(this.mCurrentAction == §%"§)
         {
            return true;
         }
         return false;
      }
      
      public function §;!9§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §!!§)
         {
            return true;
         }
         return false;
      }
      
      public function §^u§(param1:§!T§) : void
      {
         this.§function§ = param1;
         if(this.§function§ != null)
         {
            this.§>p§ = new §!T§();
            this.§>p§.x = this.§9!9§;
            this.§>p§.y = this.§;e§;
            this.§>p§.scale = §7n§;
         }
         else
         {
            this.§9!9§ = this.§>p§.x;
            this.§;e§ = this.§>p§.y;
            §7n§ = this.§>p§.scale;
            this.§>p§ = null;
         }
      }
      
      protected function §3!J§() : void
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
         var _loc3_:Number = this.§9!?§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(§8d§,Math.min(§5!X§,_loc3_));
         if(_loc3_ != this.§9!?§)
         {
            this.§9!?§ = _loc3_;
            this.§3!J§();
         }
      }
      
      public function §#!3§() : Number
      {
         return (this.manualScale - §8d§) / (§5!X§ - §8d§);
      }
      
      public function §;1§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (§5!X§ - §8d§) + §8d§;
      }
      
      public function §6k§() : void
      {
         this.§9!?§ = Math.max(this.§9!?§ - 0.5,0.5);
      }
      
      public function §8_§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§9!?§;
         _loc1_ += " mXcenterB2: " + this.§9!9§;
         _loc1_ += " mYcenterB2: " + this.§;e§;
         _loc1_ += " mXcenterB2target: " + this.§9!?§;
         _loc1_ += "\n mYcenterB2target: " + this.§9!?§;
         _loc1_ += " mXcenterB2previous: " + this.§9!?§;
         _loc1_ += " mYcenterB2previous: " + this.§9!?§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§9!?§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§9!?§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§9!?§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§9!?§;
         _loc1_ += " mTargetScale: " + this.§9!?§;
         _loc1_ += " mTargetScalePrevious: " + this.§9!?§;
         _loc1_ += " mCastleCameraX: " + this.§9!?§;
         _loc1_ += "\n mCastleCameraY: " + this.§9!?§;
         _loc1_ += " mCastleCameraScale: " + this.§9!?§;
         _loc1_ += " mBirdCameraX: " + this.§9!?§;
         _loc1_ += " mBirdCameraY: " + this.§9!?§;
         _loc1_ += " mBirdCameraScale: " + this.§9!?§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§9!?§;
         _loc1_ += " mScreenTopScroll: " + this.§9!?§;
         _loc1_ += " mDragging: " + this.§9!?§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§9!?§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§9!?§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§9!?§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§9!?§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§9!?§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§9!?§;
         _loc1_ += " mDraggingTimer: " + this.§9!?§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§9!?§;
         _loc1_ += " mCameraBorderRight: " + this.§9!?§;
         _loc1_ += " mCameraBorderSky: " + this.§9!?§;
         _loc1_ += " mCameraBorderGround: " + this.§9!?§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§9!?§ + "\n ");
      }
   }
}
