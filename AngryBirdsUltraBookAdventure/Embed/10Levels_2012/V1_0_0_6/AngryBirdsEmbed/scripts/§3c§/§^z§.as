package §3c§
{
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §3G§.§-s§;
   import §8u§.§0r§;
   import §=!B§.§<!-§;
   import §=!B§.§^!9§;
   import §>K§.§9X§;
   
   public class §^z§
   {
      
      public static const §6!$§:Number = 1.25;
      
      public static const §5?§:Number = 0.15;
      
      public static const §=u§:Number = §"h§.§4T§ * §!E§.§#N§;
      
      public static const §'f§:Number = §"h§.§0!$§ * §!E§.§#N§;
      
      public static const §,!2§:Number = 0.1;
      
      public static const §`!3§:int = 1500;
      
      public static const §%0§:int = 10;
      
      public static const §81§:int = 15;
      
      public static const §<d§:int = 300;
      
      public static const §switch§:int = 1000;
      
      public static const §>!I§:int = 10000;
      
      public static const §3@§:int = §>!I§ / 50;
      
      public static const §,s§:int = 0;
      
      public static const §;!%§:int = 1;
      
      public static const §`A§:int = 2;
      
      public static const §6!G§:int = 3;
      
      public static const §7!F§:int = 4;
      
      public static const §@h§:int = 5;
      
      public static const §,z§:String = "CASTLE";
      
      public static const §,!4§:String = "SLINGSHOT";
      
      protected static var §+!-§:Number;
      
      public static var §<H§:Number;
      
      public static var §#&§:Number;
      
      public static const §6t§:Number = 2000;
       
      
      private var §%p§:Number = 1.0;
      
      private var §<x§:Number = 0.2;
      
      protected var §]!=§:Number;
      
      protected var §4!5§:Number;
      
      protected var §&L§:Number;
      
      public var §33§:§!E§;
      
      public var §2]§:Number;
      
      public var §8f§:Number;
      
      private var §!t§:§@!8§;
      
      private var §^4§:§@!8§;
      
      public var §,!&§:Number;
      
      public var §',§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §,!E§:Number;
      
      public var §,!I§:Number;
      
      public var §break§:Number;
      
      public var §'w§:Number;
      
      private var §-m§:Number;
      
      private var §`d§:§1s§;
      
      private var §0[§:§1s§;
      
      protected var § !J§:Number = 0;
      
      protected var §1!@§:Number = 0;
      
      protected var §^!5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §'_§:Number = 0;
      
      public var §6!B§:Boolean = true;
      
      public var §=a§:Number = 0;
      
      public var §54§:Number = 0;
      
      public var §,a§:Number = 0;
      
      public var §#!8§:Number = 0;
      
      public var §2s§:Number = 0;
      
      public var § V§:Number = 0;
      
      public var §?Y§:Number = 0;
      
      public var §;,§:Number = 0;
      
      public var §'v§:Number = 0;
      
      private var §-2§:§1s§;
      
      public var §<!$§:Number = 0;
      
      private var §^c§:Number = 0;
      
      private var §64§:Number = 0;
      
      private var §^Q§:§<!-§ = null;
      
      private var §]Y§:§<!-§ = null;
      
      public function §^z§(param1:§!E§, param2:§^!9§, param3:Number = 1.0)
      {
         this.§-2§ = new §1s§(0,0,1,false);
         super();
         this.§4!5§ = 0;
         this.§&L§ = 0;
         this.§33§ = param1;
         §^z§.§+!-§ = 1;
         this.§%p§ = Math.max(1,Math.min(2,param3));
         this.§]!=§ = this.§%p§;
         this.§;!E§(param2);
         if(this.§!t§ && this.§^4§)
         {
            this.§;!&§();
            this.§ !J§ = this.§!t§.x - this.§^4§.x;
            this.§1!@§ = this.§!t§.y - this.§^4§.y;
            this.§^!5§ = this.§!t§.scale - this.§^4§.scale;
            this.§4!5§ = this.§!t§.x;
            this.§&L§ = this.§!t§.y;
            §+!-§ = this.§!t§.scale * this.§]!=§;
         }
         this.mCurrentCameraSliderLocation = §>!I§;
         this.§6!B§ = true;
         this.§'_§ = §>!I§ / 500;
      }
      
      private static function §7$§() : Number
      {
         var _loc1_:Number = §"h§.§'!I§ / §"h§.§for§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §%!8§() : Number
      {
         return §+!-§ * §7$§();
      }
      
      public function get §"Q§() : Number
      {
         return this.§]!=§;
      }
      
      public function set §"Q§(param1:Number) : void
      {
         this.§]!=§ = param1;
      }
      
      public function get §6Y§() : Number
      {
         return this.§-m§;
      }
      
      public function §'e§() : Number
      {
         return §=u§ / (this.§,!I§ - this.§,!E§);
      }
      
      public function get §7y§() : Number
      {
         return this.§%p§;
      }
      
      public function get §2!#§() : Number
      {
         return this.§<x§;
      }
      
      public function §25§(param1:Number) : void
      {
         this.§]!=§ = param1;
         this.§`J§();
         this.§"`§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@h§)
         {
            return;
         }
         this.goToCastleView();
         this.§=a§ = 2000;
         this.§5[§();
         this.§]8§();
         this.§9H§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§4!5§ = this.§^4§.x;
         this.§&L§ = this.§^4§.y;
         this.§6!B§ = false;
         this.§'_§ = §>!I§ / 160000 * param1;
         this.§&k§(§@h§);
      }
      
      public function §;!&§() : void
      {
         this.§,!E§ = this.§^4§.x - §=u§ / this.§^4§.scale / 2;
         this.§,!I§ = this.§!t§.x + §=u§ / this.§!t§.scale / 2;
         this.§break§ = this.§33§.§0>§.§-F§ - 20 * §!E§.§ &§ * §!E§.§#N§;
         this.§'w§ = this.§33§.§0>§.§-F§ + 4;
         var _loc1_:Number = §=u§ / (this.§,!I§ - this.§,!E§);
         this.§-m§ = this.§'w§ - §'f§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§33§ = null;
      }
      
      public function §;!E§(param1:§^!9§) : void
      {
         var _loc3_:§<!-§ = null;
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
         while(_loc2_ < param1.§9u§)
         {
            _loc3_ = param1.§&W§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§';§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §'f§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §=u§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §,!4§)
            {
               this.§^4§ = new §@!8§(_loc9_,_loc10_,_loc13_,true);
               this.§0[§ = new §1s§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §,z§)
            {
               this.§!t§ = new §@!8§(_loc9_,_loc10_,_loc13_,false);
               this.§`d§ = new §1s§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §9X§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §,!-§(param1:§^!9§) : void
      {
         var _loc2_:§<!-§ = new §<!-§();
         _loc2_.id = §,!4§;
         _loc2_.x = this.§^4§.x;
         _loc2_.y = this.§^4§.y;
         var _loc3_:Number = §=u§ / this.§^4§.scale / 2;
         var _loc4_:Number = §'f§ / this.§^4§.scale / 2;
         _loc2_.left = this.§^4§.x - _loc3_;
         _loc2_.right = this.§^4§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§<!-§;
         (_loc5_ = new §<!-§()).id = §,z§;
         _loc5_.x = this.§!t§.x;
         _loc5_.y = this.§!t§.y;
         var _loc6_:Number = §=u§ / this.§!t§.scale / 2;
         var _loc7_:Number = §'f§ / this.§!t§.scale / 2;
         _loc5_.left = this.§!t§.x - _loc6_;
         _loc5_.right = this.§!t§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§7c§();
         param1.§<!B§(_loc2_);
         param1.§<!B§(_loc5_);
      }
      
      public function §';§(param1:§<!-§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §"h§.§4T§ * 0.5 / _loc2_ * §!E§.§#N§;
         var _loc4_:Number = param1.y - §"h§.§0!$§ * 0.5 / _loc2_ * §!E§.§#N§;
         var _loc5_:Number = _loc3_ + §"h§.§4T§ / _loc2_ * §!E§.§#N§;
         var _loc6_:Number = _loc4_ + §"h§.§0!$§ / _loc2_ * §!E§.§#N§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §>!+§(param1:§@!8§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§'_§;
         if(_loc3_ >= §>!I§)
         {
            _loc3_ = §>!I§;
            this.§&k§(§,s§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§&k§(§,s§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §'B§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§'_§;
         var _loc4_:Number = -§>!I§ * 0.7;
         if(_loc2_ >= §>!I§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §>!I§;
            }
            this.§'_§ = -this.§'_§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §#!&§(param1:Number) : void
      {
         if(this.mCurrentAction == §@h§)
         {
            this.§'B§(param1);
         }
         else if(this.mCurrentAction == §;!%§)
         {
            this.§>!+§(this.§!t§,param1);
         }
         else if(this.mCurrentAction == §`A§)
         {
            this.§>!+§(this.§^4§,-param1);
         }
         else if(this.mCurrentAction == §6!G§)
         {
            this.§6!B§ = true;
         }
         else if(this.mCurrentAction == §7!F§)
         {
            this.§,N§(param1);
         }
      }
      
      public function §,d§(param1:Number) : void
      {
         if(this.§^Q§)
         {
            this.§4!5§ = this.§^Q§.x;
            this.§&L§ = this.§^Q§.y;
            §+!-§ = §=u§ / (this.§^Q§.right - this.§^Q§.left);
         }
         else
         {
            this.§`J§();
            this.§#!&§(param1);
            this.§<!0§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§5[§();
         this.§]8§();
         this.§9H§();
      }
      
      private function §!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§0[§.scale + (this.§`d§.scale - this.§0[§.scale) * param1;
         var _loc4_:Number = this.§0[§.x + (this.§`d§.x - this.§0[§.x) * param1;
         var _loc5_:Number = this.§0[§.y + (this.§`d§.y - this.§0[§.y) * param1;
         this.§-2§.x -= (this.§-2§.x - _loc4_) * param2;
         this.§-2§.y -= (this.§-2§.y - _loc5_) * param2;
         this.§-2§.scale -= (this.§-2§.scale - _loc3_) * param2;
      }
      
      protected function §"`§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ !J§ != 0)
         {
            if(!this.§6!B§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §>!I§;
            this.§!<§(_loc3_,param2);
            this.§4!5§ = this.§-2§.x;
            this.§&L§ = this.§-2§.y;
            §+!-§ = this.§-2§.scale;
         }
      }
      
      public function §<!0§(param1:Number, param2:Number) : void
      {
         var _loc5_:§0r§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §>!I§)
         {
            this.§6!B§ = true;
         }
         if(this.mCurrentAction == §6!G§)
         {
            if(!this.§33§.activeObject)
            {
               this.§&k§(§;!%§);
               this.§'v§ = §switch§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§33§.activeObject).§?n§().GetPosition().x + (!!_loc5_.§+!A§ ? _loc5_.§+!A§ * §!E§.§#N§ : 0);
               _loc7_ = _loc5_.§?n§().GetPosition().y + (!!_loc5_.§[=§ ? _loc5_.§[=§ * §!E§.§#N§ : 0);
               if((_loc8_ = _loc5_.§?n§().GetLinearVelocity().x) > 0 && this.§ !J§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§ !J§ * §>!I§;
               }
               if(param1 >= §>!I§)
               {
                  param1 = §>!I§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §>!I§;
               this.§!<§(_loc9_,_loc4_);
               _loc10_ = this.§-2§.x - §=u§ * 0.5 / this.§-2§.scale;
               _loc11_ = this.§-2§.y - §'f§ * 0.5 / this.§-2§.scale;
               _loc12_ = this.§-2§.x + §=u§ * 0.5 / this.§-2§.scale;
               _loc13_ = this.§-2§.y + §'f§ * 0.5 / this.§-2§.scale;
               _loc14_ = 150 * §!E§.§#N§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§,!E§,_loc15_);
               _loc17_ = Math.min(this.§,!I§,_loc17_);
               _loc19_ = Math.abs(§=u§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§'f§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§-2§.scale)
               {
                  _loc21_ = this.§-2§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §=u§ * 0.5 / _loc21_ > this.§,!I§)
               {
                  _loc15_ = (_loc17_ = this.§,!I§) - §=u§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§,!E§)
                  {
                     _loc15_ = this.§,!E§;
                  }
               }
               if(_loc22_ - §=u§ * 0.5 / _loc21_ < this.§,!E§)
               {
                  _loc17_ = (_loc15_ = this.§,!E§) + §=u§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§,!I§)
                  {
                     _loc17_ = this.§,!I§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§=u§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §=u§ * 0.5 / _loc21_ < this.§break§)
               {
                  _loc23_ = this.§break§ + §=u§ * 0.5 / _loc21_;
               }
               this.§4!5§ -= (this.§4!5§ - _loc22_) * _loc4_;
               this.§<!$§ -= (this.§<!$§ - _loc21_) * _loc4_;
               §+!-§ = this.§<!$§;
               this.§&L§ -= (this.§&L§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§,!I§ || _loc6_ <= this.§,!E§)
               {
                  this.§-2§.scale = §+!-§;
                  this.§-2§.x = this.§4!5§;
                  this.§-2§.y = this.§&L§;
               }
            }
         }
         else
         {
            this.§"`§(param1,_loc4_);
         }
      }
      
      public function §2B§(param1:Number, param2:Number) : void
      {
         this.§^c§ = param1;
         this.§64§ = param2;
      }
      
      private function §4!,§(param1:§1s§, param2:§@!8§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §5?§ + (param2.scale - §5?§) * this.§]!=§ * §^z§.§7$§();
         if(§=u§ / param1.scale > this.§,!I§ - this.§,!E§)
         {
            _loc3_ = §=u§ / (this.§,!I§ - this.§,!E§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §9S§(param1:§1s§, param2:§@!8§) : Boolean
      {
         var _loc3_:Boolean = this.§4!,§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §'f§ * 0.5 / param1.scale;
         var _loc5_:Number = §'f§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §=u§ * 0.5 / param1.scale) < this.§,!E§ && param1.§3!&§)
         {
            param1.x += this.§,!E§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §=u§ * 0.5 / param1.scale) > this.§,!I§ && !param1.§3!&§)
         {
            param1.x += this.§,!I§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §%M§(param1:§1s§, param2:§@!8§) : Number
      {
         return (param1.scale - §5?§) / (§^z§.§7$§() * (param2.scale - §5?§));
      }
      
      protected function §`J§() : void
      {
         this.§9S§(this.§0[§,this.§^4§);
         var _loc1_:Number = this.§%M§(this.§0[§,this.§^4§);
         this.§9S§(this.§`d§,this.§!t§);
         var _loc2_:Number = this.§%M§(this.§`d§,this.§!t§);
         this.§]!=§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §5[§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§33§.sprite)
         {
            _loc1_ = §"h§.§+_§() / §"h§.§'!I§ - §"h§.§0!$§ >> 1;
            §<H§ = this.§33§.sprite.x = §!E§.§2C§ * ((1 - §^z§.§%!8§) / 2);
            §#&§ = this.§33§.sprite.y = _loc1_ + §!E§.§ &§ * (1 - §^z§.§%!8§) * §-s§.§?!9§;
         }
      }
      
      public function §9H§() : void
      {
         if(this.§33§.sprite)
         {
            this.§33§.sprite.scaleX = §%!8§;
            this.§33§.sprite.scaleY = §%!8§;
         }
      }
      
      public function §]8§() : void
      {
         var _loc1_:Number = this.§4!5§ / §!E§.§#N§ + this.§^c§;
         var _loc2_:Number = this.§&L§ / §!E§.§#N§ + this.§64§;
         this.§,!&§ = _loc1_ - §!E§.§2C§ / 2 * §"h§.§'!I§ / §"h§.§],§;
         this.§',§ = _loc2_ - §!E§.§ &§ / 2 + §-s§.§3s§;
         if(this.§33§.background)
         {
            this.§33§.background.§+C§(this.§,!&§,this.§',§);
         }
         if(this.§33§.objects)
         {
            this.§33§.objects.§+C§(this.§,!&§,this.§',§);
         }
         if(this.§33§.§=!D§)
         {
            this.§33§.§=!D§.§+C§(this.§,!&§,this.§',§,§%!8§);
         }
         if(this.§33§.slingshot)
         {
            this.§33§.slingshot.§+C§(this.§,!&§,this.§',§);
         }
         if(this.§33§.particles)
         {
            this.§33§.particles.§+C§(this.§,!&§,this.§',§);
         }
      }
      
      protected function §^@§() : void
      {
         this.§&k§(§7!F§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§'v§ = -1;
         this.§^@§();
         this.§2s§ = this.§?Y§ = this.§,a§ = param1;
         this.§ V§ = this.§;,§ = this.§#!8§ = param2;
         this.§54§ = 0;
         this.§-2§.x = this.§4!5§;
         this.§-2§.y = this.§&L§;
         this.§-2§.scale = §+!-§;
         this.§<!$§ = §+!-§;
         if(Math.abs(this.§`d§.x - this.§0[§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§4!5§ - this.§0[§.x) / (this.§`d§.x - this.§0[§.x) * §>!I§;
         }
         this.mDragging = true;
      }
      
      public function §,N§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§54§ += param1;
         var _loc3_:Number = this.§2s§ - this.§?Y§;
         if(this.§ !J§ > 0)
         {
            _loc2_ -= _loc3_ * §!E§.§#N§ / §%!8§ / this.§ !J§ * §>!I§;
            this.§6!B§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§6!B§ = true;
            }
            if(_loc2_ > §>!I§)
            {
               _loc2_ += (§>!I§ - _loc2_) * 0.3;
               this.§6!B§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§?Y§ = this.§2s§;
      }
      
      protected function §?o§() : Boolean
      {
         return this.mCurrentAction == §7!F§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§2s§ = param1;
            this.§ V§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §7!F§)
         {
            this.§&k§(§,s§);
            if(param1 > 0)
            {
               this.§2s§ = param1;
            }
            _loc3_ = Math.abs(this.§2s§ - this.§,a§);
            if(this.§54§ < §`!3§ && _loc3_ >= §%0§ && _loc3_ >= §81§ * this.§54§ / 1000)
            {
               if(this.§2s§ < this.§,a§)
               {
                  this.§&k§(§;!%§);
               }
               else
               {
                  this.§&k§(§`A§);
               }
               this.§'_§ = _loc3_ / this.§54§ * 10;
               this.§6!B§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§6!B§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §>!I§)
               {
                  this.§6!B§ = true;
               }
            }
            else if(this.§54§ < §<d§)
            {
               this.§42§();
               this.§'_§ = §>!I§ / (§>!I§ / 500);
               this.§6!B§ = true;
            }
            else
            {
               this.§,N§(0);
               this.§4!6§(0);
               this.§'_§ = §>!I§ / (§>!I§ / 500);
               this.§6!B§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §42§() : void
      {
         if(this.mCurrentAction == §;!%§)
         {
            this.§&k§(§`A§);
         }
         else if(this.mCurrentAction == §`A§)
         {
            this.§&k§(§;!%§);
         }
         else if(this.mCurrentCameraSliderLocation >= §>!I§ / 2)
         {
            this.§&k§(§`A§);
         }
         else if(this.mCurrentCameraSliderLocation <= §>!I§ / 2)
         {
            this.§&k§(§;!%§);
         }
      }
      
      public function §4!6§(param1:int) : void
      {
         this.§'v§ = param1;
         if(this.mCurrentCameraSliderLocation < §>!I§ / 2)
         {
            this.§&k§(§`A§);
         }
         else
         {
            this.§&k§(§;!%§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§&k§(§`A§);
      }
      
      public function goToCastleView() : void
      {
         this.§&k§(§;!%§);
      }
      
      public function §&k§(param1:int) : void
      {
         this.§-2§.x = this.§4!5§;
         this.§-2§.y = this.§&L§;
         this.§-2§.scale = §+!-§;
         this.§<!$§ = §+!-§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §>!I§)
         {
            return true;
         }
         if(this.mCurrentAction == §;!%§)
         {
            return true;
         }
         return false;
      }
      
      public function §8S§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §`A§)
         {
            return true;
         }
         return false;
      }
      
      public function §`!9§(param1:§<!-§) : void
      {
         this.§^Q§ = param1;
         if(this.§^Q§ != null)
         {
            this.§]Y§ = new §<!-§();
            this.§]Y§.x = this.§4!5§;
            this.§]Y§.y = this.§&L§;
            this.§]Y§.scale = §+!-§;
         }
         else
         {
            this.§4!5§ = this.§]Y§.x;
            this.§&L§ = this.§]Y§.y;
            §+!-§ = this.§]Y§.scale;
            this.§]Y§ = null;
         }
      }
      
      protected function §4^§() : void
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
         var _loc3_:Number = this.§]!=§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§2!#§,Math.min(this.§7y§,_loc3_));
         if(_loc3_ != this.§]!=§)
         {
            this.§]!=§ = _loc3_;
            this.§4^§();
         }
      }
      
      public function §1r§() : Number
      {
         return (this.§"Q§ - this.§2!#§) / (this.§7y§ - this.§2!#§);
      }
      
      public function §>2§(param1:Number) : void
      {
         this.§"Q§ = Math.min(Math.max(param1,0),1) * (this.§7y§ - this.§2!#§) + this.§2!#§;
      }
      
      public function §1!2§() : void
      {
         this.§]!=§ = Math.max(this.§]!=§ - 0.5,0.5);
      }
      
      public function § ;§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§]!=§;
         _loc1_ += " mXcenterB2: " + this.§4!5§;
         _loc1_ += " mYcenterB2: " + this.§&L§;
         _loc1_ += " mXcenterB2target: " + this.§]!=§;
         _loc1_ += "\n mYcenterB2target: " + this.§]!=§;
         _loc1_ += " mXcenterB2previous: " + this.§]!=§;
         _loc1_ += " mYcenterB2previous: " + this.§]!=§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§]!=§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§]!=§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§]!=§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§]!=§;
         _loc1_ += " mTargetScale: " + this.§]!=§;
         _loc1_ += " mTargetScalePrevious: " + this.§]!=§;
         _loc1_ += " mCastleCameraX: " + this.§]!=§;
         _loc1_ += "\n mCastleCameraY: " + this.§]!=§;
         _loc1_ += " mCastleCameraScale: " + this.§]!=§;
         _loc1_ += " mBirdCameraX: " + this.§]!=§;
         _loc1_ += " mBirdCameraY: " + this.§]!=§;
         _loc1_ += " mBirdCameraScale: " + this.§]!=§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§]!=§;
         _loc1_ += " mScreenTopScroll: " + this.§]!=§;
         _loc1_ += " mDragging: " + this.§]!=§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§]!=§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§]!=§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§]!=§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§]!=§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§]!=§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§]!=§;
         _loc1_ += " mDraggingTimer: " + this.§]!=§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§]!=§;
         _loc1_ += " mCameraBorderRight: " + this.§]!=§;
         _loc1_ += " mCameraBorderSky: " + this.§]!=§;
         _loc1_ += " mCameraBorderGround: " + this.§]!=§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§]!=§ + "\n ");
      }
   }
}
