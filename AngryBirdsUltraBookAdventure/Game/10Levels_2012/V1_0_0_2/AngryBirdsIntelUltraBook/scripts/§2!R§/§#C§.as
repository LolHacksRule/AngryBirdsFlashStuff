package §2!R§
{
   import §%Q§.§`!<§;
   import §,!5§.§[$§;
   import §,!5§.§^g§;
   import §0!N§.§4!=§;
   import §0!N§.§=+§;
   import §^_§.§!>§;
   import §true§.§ _§;
   
   public class §#C§
   {
      
      public static const §4!1§:Number = 1.25;
      
      public static const §7$§:Number = 0.15;
      
      public static const §!!v§:Number = § _§.§[o§ * §^g§.§^!S§;
      
      public static const §&R§:Number = § _§.§-S§ * §^g§.§^!S§;
      
      public static const § M§:Number = 0.1;
      
      public static const §8Y§:int = 1500;
      
      public static const §8e§:int = 10;
      
      public static const §0!Y§:int = 15;
      
      public static const §<R§:int = 300;
      
      public static const §7d§:int = 1000;
      
      public static const §]!q§:int = 10000;
      
      public static const §;!6§:int = §]!q§ / 50;
      
      public static const §`![§:int = 0;
      
      public static const §2!,§:int = 1;
      
      public static const §-!7§:int = 2;
      
      public static const §]S§:int = 3;
      
      public static const §%Y§:int = 4;
      
      public static const §^!i§:int = 5;
      
      public static const §#P§:String = "CASTLE";
      
      public static const §^a§:String = "SLINGSHOT";
      
      protected static var §&M§:Number;
      
      public static var §]!J§:Number;
      
      public static var §#v§:Number;
      
      public static const §,g§:Number = 2000;
       
      
      private var §,!A§:Number = 1.0;
      
      private var §+f§:Number = 0.2;
      
      protected var §;q§:Number;
      
      protected var §5I§:Number;
      
      protected var §=e§:Number;
      
      public var §?l§:§^g§;
      
      public var §`!3§:Number;
      
      public var §01§:Number;
      
      private var §@?§:§;! §;
      
      private var §]!'§:§;! §;
      
      public var §9!^§:Number;
      
      public var §[q§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §=!a§:Number;
      
      public var §#^§:Number;
      
      public var §?!j§:Number;
      
      public var §[[§:Number;
      
      private var §&r§:Number;
      
      private var §;!b§:§#Y§;
      
      private var §0N§:§#Y§;
      
      protected var §;!d§:Number = 0;
      
      protected var §;!h§:Number = 0;
      
      protected var §6C§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §^!`§:Number = 0;
      
      public var §#!Z§:Boolean = true;
      
      public var §^!q§:Number = 0;
      
      public var §>!L§:Number = 0;
      
      public var §6!9§:Number = 0;
      
      public var §%w§:Number = 0;
      
      public var §=A§:Number = 0;
      
      public var §3!#§:Number = 0;
      
      public var §<!X§:Number = 0;
      
      public var §[y§:Number = 0;
      
      public var §7!3§:Number = 0;
      
      private var §0!U§:§#Y§;
      
      public var §65§:Number = 0;
      
      private var §-a§:Number = 0;
      
      private var §?!#§:Number = 0;
      
      private var §`!e§:§4!=§ = null;
      
      private var §9!B§:§4!=§ = null;
      
      public function §#C§(param1:§^g§, param2:§=+§, param3:Number = 1.0)
      {
         this.§0!U§ = new §#Y§(0,0,1,false);
         super();
         this.§5I§ = 0;
         this.§=e§ = 0;
         this.§?l§ = param1;
         §#C§.§&M§ = 1;
         this.§,!A§ = Math.max(1,Math.min(2,param3));
         this.§;q§ = this.§,!A§;
         this.§]! §(param2);
         if(this.§@?§ && this.§]!'§)
         {
            this.§5J§();
            this.§;!d§ = this.§@?§.x - this.§]!'§.x;
            this.§;!h§ = this.§@?§.y - this.§]!'§.y;
            this.§6C§ = this.§@?§.scale - this.§]!'§.scale;
            this.§5I§ = this.§@?§.x;
            this.§=e§ = this.§@?§.y;
            §&M§ = this.§@?§.scale * this.§;q§;
         }
         this.mCurrentCameraSliderLocation = §]!q§;
         this.§#!Z§ = true;
         this.§^!`§ = §]!q§ / 500;
      }
      
      private static function §1M§() : Number
      {
         var _loc1_:Number = § _§.§0!2§ / § _§.§[!Y§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §-!k§() : Number
      {
         return §&M§ * §1M§();
      }
      
      public function get §=!I§() : Number
      {
         return this.§;q§;
      }
      
      public function set §=!I§(param1:Number) : void
      {
         this.§;q§ = param1;
      }
      
      public function get §,!I§() : Number
      {
         return this.§&r§;
      }
      
      public function §0!1§() : Number
      {
         return §!!v§ / (this.§#^§ - this.§=!a§);
      }
      
      public function get §8V§() : Number
      {
         return this.§,!A§;
      }
      
      public function get §#!4§() : Number
      {
         return this.§+f§;
      }
      
      public function §7!<§(param1:Number) : void
      {
         this.§;q§ = param1;
         this.§;g§();
         this.§4! §(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §^!i§)
         {
            return;
         }
         this.goToCastleView();
         this.§^!q§ = 2000;
         this.§@`§();
         this.§'!B§();
         this.§"!4§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§5I§ = this.§]!'§.x;
         this.§=e§ = this.§]!'§.y;
         this.§#!Z§ = false;
         this.§^!`§ = §]!q§ / 160000 * param1;
         this.§>!E§(§^!i§);
      }
      
      public function §5J§() : void
      {
         this.§=!a§ = this.§]!'§.x - §!!v§ / this.§]!'§.scale / 2;
         this.§#^§ = this.§@?§.x + §!!v§ / this.§@?§.scale / 2;
         this.§?!j§ = this.§?l§.§ !p§.§>6§ - 20 * §^g§.§9-§ * §^g§.§^!S§;
         this.§[[§ = this.§?l§.§ !p§.§>6§ + 4;
         var _loc1_:Number = §!!v§ / (this.§#^§ - this.§=!a§);
         this.§&r§ = this.§[[§ - §&R§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§?l§ = null;
      }
      
      public function §]! §(param1:§=+§) : void
      {
         var _loc3_:§4!=§ = null;
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
         while(_loc2_ < param1.§-!"§)
         {
            _loc3_ = param1.§6!L§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§`R§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §&R§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §!!v§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §^a§)
            {
               this.§]!'§ = new §;! §(_loc9_,_loc10_,_loc13_,true);
               this.§0N§ = new §#Y§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §#P§)
            {
               this.§@?§ = new §;! §(_loc9_,_loc10_,_loc13_,false);
               this.§;!b§ = new §#Y§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §!>§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function § +§(param1:§=+§) : void
      {
         var _loc2_:§4!=§ = new §4!=§();
         _loc2_.id = §^a§;
         _loc2_.x = this.§]!'§.x;
         _loc2_.y = this.§]!'§.y;
         var _loc3_:Number = §!!v§ / this.§]!'§.scale / 2;
         var _loc4_:Number = §&R§ / this.§]!'§.scale / 2;
         _loc2_.left = this.§]!'§.x - _loc3_;
         _loc2_.right = this.§]!'§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§4!=§;
         (_loc5_ = new §4!=§()).id = §#P§;
         _loc5_.x = this.§@?§.x;
         _loc5_.y = this.§@?§.y;
         var _loc6_:Number = §!!v§ / this.§@?§.scale / 2;
         var _loc7_:Number = §&R§ / this.§@?§.scale / 2;
         _loc5_.left = this.§@?§.x - _loc6_;
         _loc5_.right = this.§@?§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§4!"§();
         param1.§&!=§(_loc2_);
         param1.§&!=§(_loc5_);
      }
      
      public function §`R§(param1:§4!=§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - § _§.§[o§ * 0.5 / _loc2_ * §^g§.§^!S§;
         var _loc4_:Number = param1.y - § _§.§-S§ * 0.5 / _loc2_ * §^g§.§^!S§;
         var _loc5_:Number = _loc3_ + § _§.§[o§ / _loc2_ * §^g§.§^!S§;
         var _loc6_:Number = _loc4_ + § _§.§-S§ / _loc2_ * §^g§.§^!S§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §^M§(param1:§;! §, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§^!`§;
         if(_loc3_ >= §]!q§)
         {
            _loc3_ = §]!q§;
            this.§>!E§(§`![§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§>!E§(§`![§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §>!#§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§^!`§;
         var _loc4_:Number = -§]!q§ * 0.7;
         if(_loc2_ >= §]!q§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §]!q§;
            }
            this.§^!`§ = -this.§^!`§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §4!A§(param1:Number) : void
      {
         if(this.mCurrentAction == §^!i§)
         {
            this.§>!#§(param1);
         }
         else if(this.mCurrentAction == §2!,§)
         {
            this.§^M§(this.§@?§,param1);
         }
         else if(this.mCurrentAction == §-!7§)
         {
            this.§^M§(this.§]!'§,-param1);
         }
         else if(this.mCurrentAction == §]S§)
         {
            this.§#!Z§ = true;
         }
         else if(this.mCurrentAction == §%Y§)
         {
            this.§&]§(param1);
         }
      }
      
      public function §5!u§(param1:Number) : void
      {
         if(this.§`!e§)
         {
            this.§5I§ = this.§`!e§.x;
            this.§=e§ = this.§`!e§.y;
            §&M§ = §!!v§ / (this.§`!e§.right - this.§`!e§.left);
         }
         else
         {
            this.§;g§();
            this.§4!A§(param1);
            this.§`!l§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§@`§();
         this.§'!B§();
         this.§"!4§();
      }
      
      private function §9A§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§0N§.scale + (this.§;!b§.scale - this.§0N§.scale) * param1;
         var _loc4_:Number = this.§0N§.x + (this.§;!b§.x - this.§0N§.x) * param1;
         var _loc5_:Number = this.§0N§.y + (this.§;!b§.y - this.§0N§.y) * param1;
         this.§0!U§.x -= (this.§0!U§.x - _loc4_) * param2;
         this.§0!U§.y -= (this.§0!U§.y - _loc5_) * param2;
         this.§0!U§.scale -= (this.§0!U§.scale - _loc3_) * param2;
      }
      
      protected function §4! §(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;!d§ != 0)
         {
            if(!this.§#!Z§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §]!q§;
            this.§9A§(_loc3_,param2);
            this.§5I§ = this.§0!U§.x;
            this.§=e§ = this.§0!U§.y;
            §&M§ = this.§0!U§.scale;
         }
      }
      
      public function §`!l§(param1:Number, param2:Number) : void
      {
         var _loc5_:§`!<§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §]!q§)
         {
            this.§#!Z§ = true;
         }
         if(this.mCurrentAction == §]S§)
         {
            if(!this.§?l§.activeObject)
            {
               this.§>!E§(§2!,§);
               this.§7!3§ = §7d§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§?l§.activeObject).§5b§().GetPosition().x + (!!_loc5_.§7^§ ? _loc5_.§7^§ * §^g§.§^!S§ : 0);
               _loc7_ = _loc5_.§5b§().GetPosition().y + (!!_loc5_.§4!w§ ? _loc5_.§4!w§ * §^g§.§^!S§ : 0);
               if((_loc8_ = _loc5_.§5b§().GetLinearVelocity().x) > 0 && this.§;!d§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§;!d§ * §]!q§;
               }
               if(param1 >= §]!q§)
               {
                  param1 = §]!q§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §]!q§;
               this.§9A§(_loc9_,_loc4_);
               _loc10_ = this.§0!U§.x - §!!v§ * 0.5 / this.§0!U§.scale;
               _loc11_ = this.§0!U§.y - §&R§ * 0.5 / this.§0!U§.scale;
               _loc12_ = this.§0!U§.x + §!!v§ * 0.5 / this.§0!U§.scale;
               _loc13_ = this.§0!U§.y + §&R§ * 0.5 / this.§0!U§.scale;
               _loc14_ = 150 * §^g§.§^!S§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§=!a§,_loc15_);
               _loc17_ = Math.min(this.§#^§,_loc17_);
               _loc19_ = Math.abs(§!!v§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§&R§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§0!U§.scale)
               {
                  _loc21_ = this.§0!U§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §!!v§ * 0.5 / _loc21_ > this.§#^§)
               {
                  _loc15_ = (_loc17_ = this.§#^§) - §!!v§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§=!a§)
                  {
                     _loc15_ = this.§=!a§;
                  }
               }
               if(_loc22_ - §!!v§ * 0.5 / _loc21_ < this.§=!a§)
               {
                  _loc17_ = (_loc15_ = this.§=!a§) + §!!v§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§#^§)
                  {
                     _loc17_ = this.§#^§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§!!v§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §!!v§ * 0.5 / _loc21_ < this.§?!j§)
               {
                  _loc23_ = this.§?!j§ + §!!v§ * 0.5 / _loc21_;
               }
               this.§5I§ -= (this.§5I§ - _loc22_) * _loc4_;
               this.§65§ -= (this.§65§ - _loc21_) * _loc4_;
               §&M§ = this.§65§;
               this.§=e§ -= (this.§=e§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§#^§ || _loc6_ <= this.§=!a§)
               {
                  this.§0!U§.scale = §&M§;
                  this.§0!U§.x = this.§5I§;
                  this.§0!U§.y = this.§=e§;
               }
            }
         }
         else
         {
            this.§4! §(param1,_loc4_);
         }
      }
      
      public function §%R§(param1:Number, param2:Number) : void
      {
         this.§-a§ = param1;
         this.§?!#§ = param2;
      }
      
      private function §[!C§(param1:§#Y§, param2:§;! §) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §7$§ + (param2.scale - §7$§) * this.§;q§ * §#C§.§1M§();
         if(§!!v§ / param1.scale > this.§#^§ - this.§=!a§)
         {
            _loc3_ = §!!v§ / (this.§#^§ - this.§=!a§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §+C§(param1:§#Y§, param2:§;! §) : Boolean
      {
         var _loc3_:Boolean = this.§[!C§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §&R§ * 0.5 / param1.scale;
         var _loc5_:Number = §&R§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §!!v§ * 0.5 / param1.scale) < this.§=!a§ && param1.§'i§)
         {
            param1.x += this.§=!a§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §!!v§ * 0.5 / param1.scale) > this.§#^§ && !param1.§'i§)
         {
            param1.x += this.§#^§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §'>§(param1:§#Y§, param2:§;! §) : Number
      {
         return (param1.scale - §7$§) / (§#C§.§1M§() * (param2.scale - §7$§));
      }
      
      protected function §;g§() : void
      {
         this.§+C§(this.§0N§,this.§]!'§);
         var _loc1_:Number = this.§'>§(this.§0N§,this.§]!'§);
         this.§+C§(this.§;!b§,this.§@?§);
         var _loc2_:Number = this.§'>§(this.§;!b§,this.§@?§);
         this.§;q§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §@`§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§?l§.sprite)
         {
            _loc1_ = § _§.§?!6§() / § _§.§0!2§ - § _§.§-S§ >> 1;
            §]!J§ = this.§?l§.sprite.x = §^g§.§<!"§ * ((1 - §#C§.§-!k§) / 2);
            §#v§ = this.§?l§.sprite.y = _loc1_ + §^g§.§9-§ * (1 - §#C§.§-!k§) * §[$§.§^K§;
         }
      }
      
      public function §"!4§() : void
      {
         if(this.§?l§.sprite)
         {
            this.§?l§.sprite.scaleX = §-!k§;
            this.§?l§.sprite.scaleY = §-!k§;
         }
      }
      
      public function §'!B§() : void
      {
         var _loc1_:Number = this.§5I§ / §^g§.§^!S§ + this.§-a§;
         var _loc2_:Number = this.§=e§ / §^g§.§^!S§ + this.§?!#§;
         this.§9!^§ = _loc1_ - §^g§.§<!"§ / 2 * § _§.§0!2§ / § _§.§9§;
         this.§[q§ = _loc2_ - §^g§.§9-§ / 2 + §[$§.§,!s§;
         if(this.§?l§.background)
         {
            this.§?l§.background.§9!=§(this.§9!^§,this.§[q§);
         }
         if(this.§?l§.objects)
         {
            this.§?l§.objects.§9!=§(this.§9!^§,this.§[q§);
         }
         if(this.§?l§.mLevelEngine)
         {
            this.§?l§.mLevelEngine.§9!=§(this.§9!^§,this.§[q§,§-!k§);
         }
         if(this.§?l§.slingshot)
         {
            this.§?l§.slingshot.§9!=§(this.§9!^§,this.§[q§);
         }
         if(this.§?l§.particles)
         {
            this.§?l§.particles.§9!=§(this.§9!^§,this.§[q§);
         }
      }
      
      protected function §7!&§() : void
      {
         this.§>!E§(§%Y§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7!3§ = -1;
         this.§7!&§();
         this.§=A§ = this.§<!X§ = this.§6!9§ = param1;
         this.§3!#§ = this.§[y§ = this.§%w§ = param2;
         this.§>!L§ = 0;
         this.§0!U§.x = this.§5I§;
         this.§0!U§.y = this.§=e§;
         this.§0!U§.scale = §&M§;
         this.§65§ = §&M§;
         if(Math.abs(this.§;!b§.x - this.§0N§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§5I§ - this.§0N§.x) / (this.§;!b§.x - this.§0N§.x) * §]!q§;
         }
         this.mDragging = true;
      }
      
      public function §&]§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§>!L§ += param1;
         var _loc3_:Number = this.§=A§ - this.§<!X§;
         if(this.§;!d§ > 0)
         {
            _loc2_ -= _loc3_ * §^g§.§^!S§ / §-!k§ / this.§;!d§ * §]!q§;
            this.§#!Z§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§#!Z§ = true;
            }
            if(_loc2_ > §]!q§)
            {
               _loc2_ += (§]!q§ - _loc2_) * 0.3;
               this.§#!Z§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§<!X§ = this.§=A§;
      }
      
      protected function §]!f§() : Boolean
      {
         return this.mCurrentAction == §%Y§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§=A§ = param1;
            this.§3!#§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §%Y§)
         {
            this.§>!E§(§`![§);
            if(param1 > 0)
            {
               this.§=A§ = param1;
            }
            _loc3_ = Math.abs(this.§=A§ - this.§6!9§);
            if(this.§>!L§ < §8Y§ && _loc3_ >= §8e§ && _loc3_ >= §0!Y§ * this.§>!L§ / 1000)
            {
               if(this.§=A§ < this.§6!9§)
               {
                  this.§>!E§(§2!,§);
               }
               else
               {
                  this.§>!E§(§-!7§);
               }
               this.§^!`§ = _loc3_ / this.§>!L§ * 10;
               this.§#!Z§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§#!Z§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §]!q§)
               {
                  this.§#!Z§ = true;
               }
            }
            else if(this.§>!L§ < §<R§)
            {
               this.§"!2§();
               this.§^!`§ = §]!q§ / (§]!q§ / 500);
               this.§#!Z§ = true;
            }
            else
            {
               this.§&]§(0);
               this.§4!@§(0);
               this.§^!`§ = §]!q§ / (§]!q§ / 500);
               this.§#!Z§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §"!2§() : void
      {
         if(this.mCurrentAction == §2!,§)
         {
            this.§>!E§(§-!7§);
         }
         else if(this.mCurrentAction == §-!7§)
         {
            this.§>!E§(§2!,§);
         }
         else if(this.mCurrentCameraSliderLocation >= §]!q§ / 2)
         {
            this.§>!E§(§-!7§);
         }
         else if(this.mCurrentCameraSliderLocation <= §]!q§ / 2)
         {
            this.§>!E§(§2!,§);
         }
      }
      
      public function §4!@§(param1:int) : void
      {
         this.§7!3§ = param1;
         if(this.mCurrentCameraSliderLocation < §]!q§ / 2)
         {
            this.§>!E§(§-!7§);
         }
         else
         {
            this.§>!E§(§2!,§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§>!E§(§-!7§);
      }
      
      public function goToCastleView() : void
      {
         this.§>!E§(§2!,§);
      }
      
      public function §>!E§(param1:int) : void
      {
         this.§0!U§.x = this.§5I§;
         this.§0!U§.y = this.§=e§;
         this.§0!U§.scale = §&M§;
         this.§65§ = §&M§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §]!q§)
         {
            return true;
         }
         if(this.mCurrentAction == §2!,§)
         {
            return true;
         }
         return false;
      }
      
      public function §4!T§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §-!7§)
         {
            return true;
         }
         return false;
      }
      
      public function §8a§(param1:§4!=§) : void
      {
         this.§`!e§ = param1;
         if(this.§`!e§ != null)
         {
            this.§9!B§ = new §4!=§();
            this.§9!B§.x = this.§5I§;
            this.§9!B§.y = this.§=e§;
            this.§9!B§.scale = §&M§;
         }
         else
         {
            this.§5I§ = this.§9!B§.x;
            this.§=e§ = this.§9!B§.y;
            §&M§ = this.§9!B§.scale;
            this.§9!B§ = null;
         }
      }
      
      protected function §0K§() : void
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
         var _loc3_:Number = this.§;q§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§#!4§,Math.min(this.§8V§,_loc3_));
         if(_loc3_ != this.§;q§)
         {
            this.§;q§ = _loc3_;
            this.§0K§();
         }
      }
      
      public function §,!c§() : Number
      {
         return (this.§=!I§ - this.§#!4§) / (this.§8V§ - this.§#!4§);
      }
      
      public function §#!Q§(param1:Number) : void
      {
         this.§=!I§ = Math.min(Math.max(param1,0),1) * (this.§8V§ - this.§#!4§) + this.§#!4§;
      }
      
      public function §+!H§() : void
      {
         this.§;q§ = Math.max(this.§;q§ - 0.5,0.5);
      }
      
      public function §?!u§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§;q§;
         _loc1_ += " mXcenterB2: " + this.§5I§;
         _loc1_ += " mYcenterB2: " + this.§=e§;
         _loc1_ += " mXcenterB2target: " + this.§;q§;
         _loc1_ += "\n mYcenterB2target: " + this.§;q§;
         _loc1_ += " mXcenterB2previous: " + this.§;q§;
         _loc1_ += " mYcenterB2previous: " + this.§;q§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§;q§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§;q§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§;q§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§;q§;
         _loc1_ += " mTargetScale: " + this.§;q§;
         _loc1_ += " mTargetScalePrevious: " + this.§;q§;
         _loc1_ += " mCastleCameraX: " + this.§;q§;
         _loc1_ += "\n mCastleCameraY: " + this.§;q§;
         _loc1_ += " mCastleCameraScale: " + this.§;q§;
         _loc1_ += " mBirdCameraX: " + this.§;q§;
         _loc1_ += " mBirdCameraY: " + this.§;q§;
         _loc1_ += " mBirdCameraScale: " + this.§;q§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§;q§;
         _loc1_ += " mScreenTopScroll: " + this.§;q§;
         _loc1_ += " mDragging: " + this.§;q§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§;q§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§;q§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§;q§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§;q§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§;q§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§;q§;
         _loc1_ += " mDraggingTimer: " + this.§;q§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§;q§;
         _loc1_ += " mCameraBorderRight: " + this.§;q§;
         _loc1_ += " mCameraBorderSky: " + this.§;q§;
         _loc1_ += " mCameraBorderGround: " + this.§;q§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§;q§ + "\n ");
      }
   }
}
