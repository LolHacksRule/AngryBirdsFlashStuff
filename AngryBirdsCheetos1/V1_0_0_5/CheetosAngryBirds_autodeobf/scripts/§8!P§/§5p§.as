package §8!P§
{
   import §!J§.§[&§;
   import §#K§.§?I§;
   import §#K§.§^b§;
   import §#v§.;
   import §&N§.§@,§;
   import §?'§.§9N§;
   import §?'§.§`!7§;
   
   public class §5p§
   {
      
      public static const §8_§:Number = 1.25;
      
      public static const §,S§:Number = 0.15;
      
      public static const §6! §:Number = §[&§.§"L§ * §9N§.§8!5§;
      
      public static const §8u§:Number = §[&§.§#S§ * §9N§.§8!5§;
      
      public static const §9!U§:Number = 1;
      
      public static const §5!X§:Number = 0.2;
      
      public static const §8d§:Number = 0.1;
      
      public static const §^!8§:int = 1500;
      
      public static const §&]§:int = 10;
      
      public static const § +§:int = 15;
      
      public static const §+!+§:int = 300;
      
      public static const §"'§:int = 1000;
      
      public static const §9!4§:int = 10000;
      
      public static const §#Q§:int = §9!4§ / 50;
      
      public static const §"a§:int = 0;
      
      public static const §&!S§:int = 1;
      
      public static const §%"§:int = 2;
      
      public static const §!!§:int = 3;
      
      public static const §?q§:int = 4;
      
      public static const §4S§:int = 5;
      
      public static const § x§:String = "CASTLE";
      
      public static const §9!,§:String = "SLINGSHOT";
      
      protected static var §7!6§:Number;
      
      public static var §7n§:Number;
      
      public static var §&!N§:Number;
      
      public static const §]!Y§:Number = 2000;
       
      
      protected var §?M§:Number;
      
      protected var §9!?§:Number;
      
      protected var §9!9§:Number;
      
      public var §;c§:§9N§;
      
      public var §;e§:Number;
      
      public var §6X§:Number;
      
      private var §6!5§:§]5§;
      
      private var §5!Q§:§]5§;
      
      public var §02§:Number;
      
      public var § !,§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §^!9§:Number;
      
      public var §@!A§:Number;
      
      public var §'E§:Number;
      
      public var §4!?§:Number;
      
      private var §["§:Number;
      
      private var §>!<§:§`M§;
      
      private var §<s§:§`M§;
      
      protected var § !0§:Number = 0;
      
      protected var §>+§:Number = 0;
      
      protected var §1!M§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §%!4§:Number = 0;
      
      public var §!c§:Boolean = true;
      
      public var §5!9§:Number = 0;
      
      public var §"!E§:Number = 0;
      
      public var §0z§:Number = 0;
      
      public var §1!I§:Number = 0;
      
      public var §'_§:Number = 0;
      
      public var § 9§:Number = 0;
      
      public var §"0§:Number = 0;
      
      public var native:Number = 0;
      
      public var §7!O§:Number = 0;
      
      private var §'F§:§`M§;
      
      public var §]H§:Number = 0;
      
      private var §%7§:Number = 0;
      
      private var §+!L§:Number = 0;
      
      private var §4!4§:§^b§ = null;
      
      private var §function§:§^b§ = null;
      
      public function §5p§(param1:§9N§, param2:§?I§)
      {
         this.§'F§ = new §`M§(0,0,1,false);
         super();
         this.§9!?§ = 0;
         this.§9!9§ = 0;
         this.§;c§ = param1;
         §5p§.§7!6§ = 1;
         this.§?M§ = 1;
         this.§[r§(param2.§2j§);
         if(this.§6!5§ && this.§5!Q§)
         {
            this.§?!R§();
            this.§ !0§ = this.§6!5§.x - this.§5!Q§.x;
            this.§>+§ = this.§6!5§.y - this.§5!Q§.y;
            this.§1!M§ = this.§6!5§.scale - this.§5!Q§.scale;
            this.§9!?§ = this.§6!5§.x;
            this.§9!9§ = this.§6!5§.y;
            §7!6§ = this.§6!5§.scale;
         }
         this.mCurrentCameraSliderLocation = §9!4§;
         this.§!c§ = true;
         this.§%!4§ = §9!4§ / 500;
      }
      
      private static function §<!F§() : Number
      {
         var _loc1_:Number = §[&§.§8n§ / §[&§.§6!H§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get § !T§() : Number
      {
         return §7!6§ * §<!F§();
      }
      
      public function get manualScale() : Number
      {
         return this.§?M§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§?M§ = param1;
      }
      
      public function get §>p§() : Number
      {
         return this.§["§;
      }
      
      public function §@j§() : Number
      {
         return §6! § / (this.§@!A§ - this.§^!9§);
      }
      
      public function §9L§(param1:Number) : void
      {
         this.§?M§ = param1;
         this.§5!7§();
         this.§1!R§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         this.goToCastleView();
         this.§5!9§ = 2000;
         this.§-!Q§();
         this.§3!Q§();
         this.§9O§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§9!?§ = this.§5!Q§.x;
         this.§9!9§ = this.§5!Q§.y;
         this.§!c§ = false;
         this.§%!4§ = §9!4§ / 160000 * param1;
         this.§^!7§(§4S§);
      }
      
      public function §?!R§() : void
      {
         this.§^!9§ = this.§5!Q§.x - §6! § / this.§5!Q§.scale / 2;
         this.§@!A§ = this.§6!5§.x + §6! § / this.§6!5§.scale / 2;
         this.§'E§ = this.§;c§.§#G§.§@y§ - 20 * §9N§.§?!=§ * §9N§.§8!5§;
         this.§4!?§ = this.§;c§.§#G§.§@y§ + 4;
         var _loc1_:Number = §6! § / (this.§@!A§ - this.§^!9§);
         this.§["§ = this.§4!?§ - §8u§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§;c§ = null;
      }
      
      public function §[r§(param1:Vector.<§^b§>) : void
      {
         var _loc2_:§^b§ = null;
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
               this.§"4§(_loc2_);
            }
            _loc4_ = _loc2_.left;
            _loc5_ = _loc2_.right;
            _loc6_ = _loc2_.top;
            _loc7_ = _loc2_.bottom;
            _loc8_ = _loc2_.x;
            _loc9_ = _loc2_.y;
            _loc10_ = §8u§ / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = §6! § / (_loc5_ - _loc4_)) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == §9!,§)
            {
               this.§5!Q§ = new §]5§(_loc8_,_loc9_,_loc12_,true);
               this.§<s§ = new §`M§(_loc8_,_loc9_,_loc12_,true);
            }
            else if(_loc3_ == § x§)
            {
               this.§6!5§ = new §]5§(_loc8_,_loc9_,_loc12_,false);
               this.§>!<§ = new §`M§(_loc8_,_loc9_,_loc12_,false);
            }
            else
            {
               §@,§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      public function §=!H§(param1:§?I§) : void
      {
         var _loc2_:§^b§ = new §^b§();
         _loc2_.id = §9!,§;
         _loc2_.x = this.§5!Q§.x;
         _loc2_.y = this.§5!Q§.y;
         var _loc3_:Number = §6! § / this.§5!Q§.scale / 2;
         var _loc4_:Number = §8u§ / this.§5!Q§.scale / 2;
         _loc2_.left = this.§5!Q§.x - _loc3_;
         _loc2_.right = this.§5!Q§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§^b§;
         (_loc5_ = new §^b§()).id = § x§;
         _loc5_.x = this.§6!5§.x;
         _loc5_.y = this.§6!5§.y;
         var _loc6_:Number = §6! § / this.§6!5§.scale / 2;
         var _loc7_:Number = §8u§ / this.§6!5§.scale / 2;
         _loc5_.left = this.§6!5§.x - _loc6_;
         _loc5_.right = this.§6!5§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         while(param1.§2j§.length > 0)
         {
            param1.§2j§.pop();
         }
         param1.§2j§.push(_loc2_);
         param1.§2j§.push(_loc5_);
      }
      
      public function §"4§(param1:§^b§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[&§.§"L§ * 0.5 / _loc2_ * §9N§.§8!5§;
         var _loc4_:Number = param1.y - §[&§.§#S§ * 0.5 / _loc2_ * §9N§.§8!5§;
         var _loc5_:Number = _loc3_ + §[&§.§"L§ / _loc2_ * §9N§.§8!5§;
         var _loc6_:Number = _loc4_ + §[&§.§#S§ / _loc2_ * §9N§.§8!5§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §1I§(param1:§]5§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§%!4§;
         if(_loc3_ >= §9!4§)
         {
            _loc3_ = §9!4§;
            this.§^!7§(§"a§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§^!7§(§"a§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §'!&§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§%!4§;
         var _loc4_:Number = -§9!4§ * 0.7;
         if(_loc2_ >= §9!4§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §9!4§;
            }
            this.§%!4§ = -this.§%!4§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §5K§(param1:Number) : void
      {
         if(this.mCurrentAction == §4S§)
         {
            this.§'!&§(param1);
         }
         else if(this.mCurrentAction == §&!S§)
         {
            this.§1I§(this.§6!5§,param1);
         }
         else if(this.mCurrentAction == §%"§)
         {
            this.§1I§(this.§5!Q§,-param1);
         }
         else if(this.mCurrentAction == §!!§)
         {
            this.§!c§ = true;
         }
         else if(this.mCurrentAction == §?q§)
         {
            this.§9w§(param1);
         }
      }
      
      public function §&G§(param1:Number) : void
      {
         if(this.§4!4§)
         {
            this.§9!?§ = this.§4!4§.x;
            this.§9!9§ = this.§4!4§.y;
            §7!6§ = §6! § / (this.§4!4§.right - this.§4!4§.left);
         }
         else
         {
            this.§5!7§();
            this.§5K§(param1);
            this.§=!N§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§-!Q§();
         this.§3!Q§();
         this.§9O§();
      }
      
      private function §]b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<s§.scale + (this.§>!<§.scale - this.§<s§.scale) * param1;
         var _loc4_:Number = this.§<s§.x + (this.§>!<§.x - this.§<s§.x) * param1;
         var _loc5_:Number = this.§<s§.y + (this.§>!<§.y - this.§<s§.y) * param1;
         this.§'F§.x -= (this.§'F§.x - _loc4_) * param2;
         this.§'F§.y -= (this.§'F§.y - _loc5_) * param2;
         this.§'F§.scale -= (this.§'F§.scale - _loc3_) * param2;
      }
      
      protected function §1!R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ !0§ != 0)
         {
            if(!this.§!c§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §9!4§;
            this.§]b§(_loc3_,param2);
            this.§9!?§ = this.§'F§.x;
            this.§9!9§ = this.§'F§.y;
            §7!6§ = this.§'F§.scale;
         }
      }
      
      public function §=!N§(param1:Number, param2:Number) : void
      {
         var _loc5_:§#3§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §9!4§)
         {
            this.§!c§ = true;
         }
         if(this.mCurrentAction == §!!§)
         {
            if(!this.§;c§.activeObject)
            {
               this.§^!7§(§&!S§);
               this.§7!O§ = §"'§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§;c§.activeObject).§#a§().GetPosition().x + (!!_loc5_.§;v§ ? _loc5_.§;v§ * §9N§.§8!5§ : 0);
               _loc7_ = _loc5_.§#a§().GetPosition().y + (!!_loc5_.§?g§ ? _loc5_.§?g§ * §9N§.§8!5§ : 0);
               if((_loc8_ = _loc5_.§#a§().GetLinearVelocity().x) > 0 && this.§ !0§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§ !0§ * §9!4§;
               }
               if(param1 >= §9!4§)
               {
                  param1 = §9!4§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §9!4§;
               this.§]b§(_loc9_,_loc4_);
               _loc10_ = this.§'F§.x - §6! § * 0.5 / this.§'F§.scale;
               _loc11_ = this.§'F§.y - §8u§ * 0.5 / this.§'F§.scale;
               _loc12_ = this.§'F§.x + §6! § * 0.5 / this.§'F§.scale;
               _loc13_ = this.§'F§.y + §8u§ * 0.5 / this.§'F§.scale;
               _loc14_ = 150 * §9N§.§8!5§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§^!9§,_loc15_);
               _loc17_ = Math.min(this.§@!A§,_loc17_);
               _loc19_ = Math.abs(§6! § / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§8u§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§'F§.scale)
               {
                  _loc21_ = this.§'F§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §6! § * 0.5 / _loc21_ > this.§@!A§)
               {
                  _loc15_ = (_loc17_ = this.§@!A§) - §6! § / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§^!9§)
                  {
                     _loc15_ = this.§^!9§;
                  }
               }
               if(_loc22_ - §6! § * 0.5 / _loc21_ < this.§^!9§)
               {
                  _loc17_ = (_loc15_ = this.§^!9§) + §6! § / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§@!A§)
                  {
                     _loc17_ = this.§@!A§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§6! § / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §6! § * 0.5 / _loc21_ < this.§'E§)
               {
                  _loc23_ = this.§'E§ + §6! § * 0.5 / _loc21_;
               }
               this.§9!?§ -= (this.§9!?§ - _loc22_) * _loc4_;
               this.§]H§ -= (this.§]H§ - _loc21_) * _loc4_;
               §7!6§ = this.§]H§;
               this.§9!9§ -= (this.§9!9§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§@!A§ || _loc6_ <= this.§^!9§)
               {
                  this.§'F§.scale = §7!6§;
                  this.§'F§.x = this.§9!?§;
                  this.§'F§.y = this.§9!9§;
               }
            }
         }
         else
         {
            this.§1!R§(param1,_loc4_);
         }
      }
      
      public function §&!B§(param1:Number, param2:Number) : void
      {
         this.§%7§ = param1;
         this.§+!L§ = param2;
      }
      
      private function §^!-§(param1:§`M§, param2:§]5§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §,S§ + (param2.scale - §,S§) * this.§?M§ * §5p§.§<!F§();
         if(§6! § / param1.scale > this.§@!A§ - this.§^!9§)
         {
            _loc3_ = §6! § / (this.§@!A§ - this.§^!9§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function § !'§(param1:§`M§, param2:§]5§) : Boolean
      {
         var _loc3_:Boolean = this.§^!-§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §8u§ * 0.5 / param1.scale;
         var _loc5_:Number = §8u§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §6! § * 0.5 / param1.scale) < this.§^!9§ && param1.§0! §)
         {
            param1.x += this.§^!9§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §6! § * 0.5 / param1.scale) > this.§@!A§ && !param1.§0! §)
         {
            param1.x += this.§@!A§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §8,§(param1:§`M§, param2:§]5§) : Number
      {
         return (param1.scale - §,S§) / (§5p§.§<!F§() * (param2.scale - §,S§));
      }
      
      protected function §5!7§() : void
      {
         this.§ !'§(this.§<s§,this.§5!Q§);
         var _loc1_:Number = this.§8,§(this.§<s§,this.§5!Q§);
         this.§ !'§(this.§>!<§,this.§6!5§);
         var _loc2_:Number = this.§8,§(this.§>!<§,this.§6!5§);
         this.§?M§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §-!Q§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§;c§.sprite)
         {
            _loc1_ = §[&§.§#0§() / §[&§.§8n§ - §[&§.§#S§ >> 1;
            §7n§ = this.§;c§.sprite.x = §9N§.§ !4§ * ((1 - §5p§.§ !T§) / 2);
            §&!N§ = this.§;c§.sprite.y = _loc1_ + §9N§.§?!=§ * (1 - §5p§.§ !T§) * §`!7§.§"G§;
         }
      }
      
      public function §9O§() : void
      {
         if(this.§;c§.sprite)
         {
            this.§;c§.sprite.scaleX = § !T§;
            this.§;c§.sprite.scaleY = § !T§;
         }
      }
      
      public function §3!Q§() : void
      {
         var _loc1_:Number = this.§9!?§ / §9N§.§8!5§ + this.§%7§;
         var _loc2_:Number = this.§9!9§ / §9N§.§8!5§ + this.§+!L§;
         this.§02§ = _loc1_ - §9N§.§ !4§ / 2 * §[&§.§8n§ / §[&§.§4'§;
         this.§ !,§ = _loc2_ - §9N§.§?!=§ / 2 + §`!7§.§5r§;
         if(this.§;c§.background)
         {
            this.§;c§.background.§;f§(this.§02§,this.§ !,§);
         }
         if(this.§;c§.objects)
         {
            this.§;c§.objects.§;f§(this.§02§,this.§ !,§);
         }
         if(this.§;c§.mLevelEngine)
         {
            this.§;c§.mLevelEngine.§;f§(this.§02§,this.§ !,§);
         }
         if(this.§;c§.slingshot)
         {
            this.§;c§.slingshot.§;f§(this.§02§,this.§ !,§);
         }
         if(this.§;c§.particles)
         {
            this.§;c§.particles.§;f§(this.§02§,this.§ !,§);
         }
      }
      
      protected function §!Q§() : void
      {
         this.§^!7§(§?q§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7!O§ = -1;
         this.§!Q§();
         this.§'_§ = this.§"0§ = this.§0z§ = param1;
         this.§ 9§ = this.native = this.§1!I§ = param2;
         this.§"!E§ = 0;
         this.§'F§.x = this.§9!?§;
         this.§'F§.y = this.§9!9§;
         this.§'F§.scale = §7!6§;
         this.§]H§ = §7!6§;
         if(Math.abs(this.§>!<§.x - this.§<s§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§9!?§ - this.§<s§.x) / (this.§>!<§.x - this.§<s§.x) * §9!4§;
         }
         this.mDragging = true;
      }
      
      public function §9w§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§"!E§ += param1;
         var _loc3_:Number = this.§'_§ - this.§"0§;
         if(this.§ !0§ > 0)
         {
            _loc2_ -= _loc3_ * §9N§.§8!5§ / § !T§ / this.§ !0§ * §9!4§;
            this.§!c§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§!c§ = true;
            }
            if(_loc2_ > §9!4§)
            {
               _loc2_ += (§9!4§ - _loc2_) * 0.3;
               this.§!c§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§"0§ = this.§'_§;
      }
      
      protected function §>L§() : Boolean
      {
         return this.mCurrentAction == §?q§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§'_§ = param1;
            this.§ 9§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §?q§)
         {
            this.§^!7§(§"a§);
            if(param1 > 0)
            {
               this.§'_§ = param1;
            }
            _loc3_ = Math.abs(this.§'_§ - this.§0z§);
            if(this.§"!E§ < §^!8§ && _loc3_ >= §&]§ && _loc3_ >= § +§ * this.§"!E§ / 1000)
            {
               if(this.§'_§ < this.§0z§)
               {
                  this.§^!7§(§&!S§);
               }
               else
               {
                  this.§^!7§(§%"§);
               }
               this.§%!4§ = _loc3_ / this.§"!E§ * 10;
               this.§!c§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§!c§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §9!4§)
               {
                  this.§!c§ = true;
               }
            }
            else if(this.§"!E§ < §+!+§)
            {
               this.§>5§();
               this.§%!4§ = §9!4§ / (§9!4§ / 500);
               this.§!c§ = true;
            }
            else
            {
               this.§9w§(0);
               this.§'1§(0);
               this.§%!4§ = §9!4§ / (§9!4§ / 500);
               this.§!c§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>5§() : void
      {
         if(this.mCurrentAction == §&!S§)
         {
            this.§^!7§(§%"§);
         }
         else if(this.mCurrentAction == §%"§)
         {
            this.§^!7§(§&!S§);
         }
         else if(this.mCurrentCameraSliderLocation >= §9!4§ / 2)
         {
            this.§^!7§(§%"§);
         }
         else if(this.mCurrentCameraSliderLocation <= §9!4§ / 2)
         {
            this.§^!7§(§&!S§);
         }
      }
      
      public function §'1§(param1:int) : void
      {
         this.§7!O§ = param1;
         if(this.mCurrentCameraSliderLocation < §9!4§ / 2)
         {
            this.§^!7§(§%"§);
         }
         else
         {
            this.§^!7§(§&!S§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§^!7§(§%"§);
      }
      
      public function goToCastleView() : void
      {
         this.§^!7§(§&!S§);
      }
      
      public function §^!7§(param1:int) : void
      {
         this.§'F§.x = this.§9!?§;
         this.§'F§.y = this.§9!9§;
         this.§'F§.scale = §7!6§;
         this.§]H§ = §7!6§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §9!4§)
         {
            return true;
         }
         if(this.mCurrentAction == §&!S§)
         {
            return true;
         }
         return false;
      }
      
      public function §99§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §%"§)
         {
            return true;
         }
         return false;
      }
      
      public function §;!9§(param1:§^b§) : void
      {
         this.§4!4§ = param1;
         if(this.§4!4§ != null)
         {
            this.§function§ = new §^b§();
            this.§function§.x = this.§9!?§;
            this.§function§.y = this.§9!9§;
            this.§function§.scale = §7!6§;
         }
         else
         {
            this.§9!?§ = this.§function§.x;
            this.§9!9§ = this.§function§.y;
            §7!6§ = this.§function§.scale;
            this.§function§ = null;
         }
      }
      
      protected function §^u§() : void
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
         var _loc3_:Number = this.§?M§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(§5!X§,Math.min(§9!U§,_loc3_));
         if(_loc3_ != this.§?M§)
         {
            this.§?M§ = _loc3_;
            this.§^u§();
         }
      }
      
      public function §3!J§() : Number
      {
         return (this.manualScale - §5!X§) / (§9!U§ - §5!X§);
      }
      
      public function §#!3§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (§9!U§ - §5!X§) + §5!X§;
      }
      
      public function §;1§() : void
      {
         this.§?M§ = Math.max(this.§?M§ - 0.5,0.5);
      }
      
      public function §6k§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§?M§;
         _loc1_ += " mXcenterB2: " + this.§9!?§;
         _loc1_ += " mYcenterB2: " + this.§9!9§;
         _loc1_ += " mXcenterB2target: " + this.§?M§;
         _loc1_ += "\n mYcenterB2target: " + this.§?M§;
         _loc1_ += " mXcenterB2previous: " + this.§?M§;
         _loc1_ += " mYcenterB2previous: " + this.§?M§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§?M§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§?M§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§?M§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§?M§;
         _loc1_ += " mTargetScale: " + this.§?M§;
         _loc1_ += " mTargetScalePrevious: " + this.§?M§;
         _loc1_ += " mCastleCameraX: " + this.§?M§;
         _loc1_ += "\n mCastleCameraY: " + this.§?M§;
         _loc1_ += " mCastleCameraScale: " + this.§?M§;
         _loc1_ += " mBirdCameraX: " + this.§?M§;
         _loc1_ += " mBirdCameraY: " + this.§?M§;
         _loc1_ += " mBirdCameraScale: " + this.§?M§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§?M§;
         _loc1_ += " mScreenTopScroll: " + this.§?M§;
         _loc1_ += " mDragging: " + this.§?M§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§?M§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§?M§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§?M§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§?M§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§?M§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§?M§;
         _loc1_ += " mDraggingTimer: " + this.§?M§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§?M§;
         _loc1_ += " mCameraBorderRight: " + this.§?M§;
         _loc1_ += " mCameraBorderSky: " + this.§?M§;
         _loc1_ += " mCameraBorderGround: " + this.§?M§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§?M§ + "\n ");
      }
   }
}
